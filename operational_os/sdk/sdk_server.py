#!/usr/bin/python3

# Accept requests for attestations
# Accept uploaded binaries to run
#

import os
import shlex
import subprocess
import stat
import asyncio
import json
import threading
import binascii
import base64
from threading import Thread
from program_memory import write_bin_file_data, trigger_reset
# from microblaze_utils import write_shared_buffer
# from ecdsa_utils import generate_ecdsa_attestation
from flask import Flask, request
# from flask.ext.api import status
import gen_py.communication_to_program.CommunicationToProgram as comm
from thrift import Thrift
from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol


##########################################
# Config and Globals
##########################################

#TODO: very much need config file for this
MICROBLAZE_BASE_ADDRESS = 0xB0000000
MICROBLAZE_RESET_ADDRESS = 0xA0000000
CPU_MICROBLAZE_SHARED_BUFFER = 0xB00010000
ATTESTATION_SYSTEM_ADDRESS = 0xA0010000
ECDSA_BUFFER = 0xA0020000

ticket_lock = threading.Lock()
attestation_ticket = 0

#TODO: support multiple enclaves
current_enclave = None

# Run event loop in separate thread
def start_loop(loop):
    asyncio.set_event_loop(loop)
    print("starting event loop")
    loop.run_forever()

##########################################
# Initialize app and loop
##########################################

app = Flask(__name__)

# Event loop for async
event_loop = asyncio.new_event_loop()
# Event loop in separate thread
t = Thread(target=start_loop, args=(event_loop,))
t.start()

# initialize workers
#enclave_queue = asyncio.Queue(loop=event_loop)
#attestation_data_queue = asyncio.Queue(loop=event_loop)
attestation_outputs = {}
tickets_issued = []

untrusted_program = "enclave_untrusted_program.elf"

###########################################
# Coroutines
###########################################



def get_increment_ticket():
    with ticket_lock:
        global attestation_ticket
        current_ticket = attestation_ticket
        attestation_ticket += 1
        return current_ticket



def program_enclave():
    # Program the enclave memory using the binary in the Queue
    # TODO: switch to streaming data through the ECDSA programming
    # hardware
    # Have an HLS peripheral to do this:
    # 1. program DMA to copy data into microblaze memory somehow
    # 2. Store a hash of the original microblaze memory in an FPGA-side
    #    buffer
    #######################
    global current_enclave
    # 1. Program bin file to microblaze memory
#    program_file, binary_file = await queue.get()
    print("got item off enclave queue")
    if current_enclave is not None:
        current_enclave.terminate()
#    program_file_data = bytearray(program_file.read())
#    binary_file_data = bytearray(binary_file.read())
    # TODO: write files securely with secure file names and directories
#    with open(program_file.name, 'w') as program_file_handle:
#        program_file_handle.write(program_file_data)
#    with open(binary_file.name, 'w') as binary_file_handle:
#        binary_file_handle.write(binary_file_data)
    st = os.stat(untrusted_program)
    os.chmod(
        untrusted_program,
        st.st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH
    )
    current_enclave = subprocess.Popen(shlex.split("{}/{}".format(os.getcwd(), untrusted_program)))
 #   queue.task_done()


def perform_attestation(attestation_data, ticket):
    # Receive attestation data and wait for result
    # TODO: interface with FPGA-side IP to handle triggering attestation
    # For now, assume signing a message buffer
    # 1. When request received, copy message into CPU message buffer
    #    and signal the microblaze CPU (using control addresses of this
    #    buffer that the microblaze will be watching)
    # 2. IP will copy original program hash and any message from the
    #    microblaze into ECDSA's buffer (ARM CPU can also access this).
    #    IP will read control signals from microblaze and wait for a
    #    message to be generated if the microblaze signals one to be
    #    coming
    # 3. ECDSA will sign the buffer, and IP will return result to CPU
    # 4. transmit the data in the buffer and the signature to requester
#    work_item = await queue.get()
#    message_data_raw = work_item["attestation_data"]
#    ticket = work_item["ticket"]
    socket = TSocket.TSocket("localhost", 9090)
    transport = TTransport.TBufferedTransport(socket)
    protocol = TBinaryProtocol.TBinaryProtocol(transport)
    client = comm.Client(protocol)
    transport.open()
    message_data = attestation_data
    print("Beggining attestation")
    message = client.begin_attestation(bytearray(message_data, 'utf8'))
    print("Thrift attestation call finished")
    print("Attestation message: {}".format(
        str(binascii.hexlify(message))
    ))
    attestation_outputs[ticket] = {
        "message": message
    }
    transport.close()
#    queue.task_done()


#################################################
# route handlers
#################################################


@app.route("/upload", methods=['GET', 'POST'])
def upload():
    if request.method == 'POST':
        binary_file = request.files['binary']
        program_file = request.files['program']
        if binary_file.filename == '' or program_file.name == '':
            return (
                json.dumps({"status": "No file"}),
                400
            )
        #TODO: check length of file against memory size of the enclave cpu
        if binary_file and program_file:
            #enclave_queue.put((program_file, binary_file))
            binary_file_name = request.form["binary_file_name"]
            binary_file.save(binary_file_name)
            program_file.save(untrusted_program)
            event_loop.call_soon_threadsafe(program_enclave)
            print("Put program and bianry file")
            #TODO: create async task for this?
            return (
                json.dumps({"status": "ok"}),
                202
            )
    return '''
    <!doctype html>
    <title>Upload Enclave Program</title>
    <h1>Upload enclave binary (.bin) and program</h1>
    <form method=post enctype=multipart/form-data>
      <p><input type=file name=binary></p>
      <p><input type=file name=program></p>
      <p><input type=text name=binary_name></p>
         <input type=submit value=Upload>
    </form>
    '''

#TODO: support multiple enclaves in future
@app.route("/attestation/request", methods=["POST"])
def attestation_request():
    # Get attestation data
    if request.method == 'POST':
        attestation_data = request.form['attestation_data']
        # Program to memory
        ticket = get_increment_ticket()
        tickets_issued.append(ticket)
#        attestation_data_queue.put(
#            {"ticket": ticket, "attestation_data": attestation_data}
#        )
        event_loop.call_soon_threadsafe(perform_attestation, attestation_data, ticket)
        return json.dumps({"ticket": ticket}), 201

@app.route("/attestation/result/<ticket>")
def attestation_result(ticket):
    print("ticket: {}".format(ticket))
    print(tickets_issued)
    ticket_in = int(ticket)
    if ticket_in in tickets_issued:
        if ticket_in in attestation_outputs:
            attestation = attestation_outputs[ticket_in]
            # TODO: message, attestation is binary, so there may be an encoding
            # issue
            return json.dumps(
                {
                    "status": "complete",
                    "attestation": str(base64.b64encode(attestation["message"]))
                }
            ), 200
        else:
            return json.dumps({"status": "pending"}), 204
    else:
        return json.dumps({"status": "not_found"}), 404
