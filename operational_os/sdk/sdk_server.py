#!/usr/bin/python3

# Accept requests for attestations
# Accept uploaded binaries to run
#

import asyncio
import json
import threading
from threading import Thread
from program_memory import write_bin_file_data, trigger_reset
# from microblaze_utils import write_shared_buffer
# from ecdsa_utils import generate_ecdsa_attestation
from flask import Flask
# from flask.ext.api import status
import gen_py.communication_to_program.CommunicationToProgram as comm

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

# Run event loop in separate thread
def start_loop(loop):
    asyncio.set_event_loop(loop)
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
enclave_queue = asyncio.Queue(loop=event_loop)
attestation_data_queue = asyncio.Queue(loop=event_loop)
attestation_outputs = {}
tickets_issued = []

###########################################
# Coroutines
###########################################



def get_increment_ticket():
    with ticket_lock:
        current_ticket = attestation_ticket
        attestation_ticket += 1
        return current_ticket

#TODO: support multiple enclaves
current_enclave = None


async def program_enclave(queue):
    # Program the enclave memory using the binary in the Queue
    # TODO: switch to streaming data through the ECDSA programming
    # hardware
    # Have an HLS peripheral to do this:
    # 1. program DMA to copy data into microblaze memory somehow
    # 2. Store a hash of the original microblaze memory in an FPGA-side
    #    buffer
    #######################
    # 1. Program bin file to microblaze memory
    program_file, binary_file = await queue.get()
    if current_enclave:
        current_enclave.terminate()
    program_file_data = bytearray(program_file.read())
    binary_file_data = bytearray(binary_file.read())
    # TODO: write files securely with secure file names and directories
    with open(program_file.name, 'w') as program_file_handle:
        program_file_handle.write(program_file_data)
    with open(binary_file.name, 'w') as binary_file_handle:
        binary_file_handle.write(binary_file_data)
    st = os.stat(program_file.name)
    os.chmod(
        program_file.name,
        st.st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH
    )
    current_enclave = subprocess.Popen(program_file.name)
    queue.task_done()


async def perform_attestation(queue):
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
    work_item = await queue.get()
    message_data_raw = work_item["attestation_data"]
    ticket = work_item["ticket"]
    message_data = bytearray(message_data_raw)
    client = comm.Client()
    message = client.begin_attestation(message_data)
    attestation_outputs[ticket] = {
        "signature": signature,
        "message": message
    }
    queue.task_done()


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
        if binary_file:
            enclave_queue.put((program_file, binary_file))
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
        attestation_data_queue.put(
            {"ticket": ticket, "attestation_data": attestation_data}
        )
        return json.dumps({"ticket": ticket}), 201

@app.route("/attestation/result/<ticket>")
def attestation_result(ticket):
    if ticket in tickets_issued:
        if ticket in attestation_outputs:
            attestation = attestation_outputs[ticket]
            # TODO: message, attestation is binary, so there may be an encoding
            # issue
            return json.dumps(
                {
                    "status": "complete",
                    "attestation": attestation
                }
            ), 200
        else:
            return json.dumps({"status": "pending"}), 204
    else:
        return json.dumps({"status": "not_found"}), 404
