#!/usr/bin/python3

# Accept requests for attestations
# Accept uploaded binaries to run
#

import asyncio
import json
import threading
from program_memory import write_bin_file_data, trigger_reset
from microblaze_utils import write_shared_buffer
from ecdsa_utils import generate_ecdsa_attestation
from flask import Flask
from flask.ext.api import status

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

# Run event loop in separate thread
def start_loop(loop):
    asyncio.set_event_loop(loop)
    loop.run_forever()

def get_increment_ticket():
    with ticket_lock:
        current_ticket = attestation_ticket
        attestation_ticket += 1
        return current_ticket


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
    binary_file = await queue.get()
    binary_file_data = bytearray(binary_file.read())
    binary_file_size = len(binary_file_data)
    write_bin_file_data(
        binary_file_data, MICROBLAZE_BASE_ADDRESS, binary_file_size
    )
    # 2. Reset microblaze to start execution
    def trigger_reset(MICROBLAZE_RESET_ADDRESS)
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
    await write_shared_buffer(CPU_MICROBLAZE_SHARED_BUFFER, message_data)
    signature = await generate_ecdsa_attestation(
        ATTESTATION_SYSTEM_ADDRESS, ECDSA_BUFFER
    )
    message = await read_shared_buffer(CPU_MICROBLAZE_SHARED_BUFFER)
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
        if binary_file.filename == '':
            return (
                json.dumps({"status": "No file"}),
                status.HTTP_400_BAD_REQUEST
            )
        #TODO: check length of file against memory size of the enclave cpu
        if binary_file:
            enclave_queue.put(binary_file)
            #TODO: create async task for this?
            return (
                json.dumps({"status": "ok"}),
                status.HTTP_202_ACCEPTED
            )
    return '''
    <!doctype html>
    <title>Upload Enclave Program</title>
    <h1>Upload enclave binary (.bin)</h1>
    <form method=post enctype=multipart/form-data>
      <p><input type=file name=binary>
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
        return json.dumps({"ticket": ticket}), status.HTTP_201_CREATED

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
            ), status.HTTP_200_OK
        else:
            return json.dumps({"status": "pending"}), status.HTTP_204_NO_CONTENT
    else:
        return json.dumps("status": "not_found"), status.HTTP_404_NOT_FOUND
