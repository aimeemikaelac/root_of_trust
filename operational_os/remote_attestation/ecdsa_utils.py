#!/usr/bin/python3

import asyncio
from devmem import *

# TODO: update these based on register map
AP_START_OFFSET = 0
AP_DONE_OFFSET = 4

DELAY = 1

async def generate_ecdsa_attestation(
    attestation_address,
    ecdsa_address,
    attestation_length=0x1000,
    ecdsa_length=0x1000,
    signature_length=256
):
    # TODO: implement attestation IP in HLS and use its control registers.
    # may need to used bitmasking
    # attestation_registers = DevMem(attestation_address, attestation_length)
    # # toggle ap_start:
    # attestation_registers.write(AP_START_OFFSET, 1)
    # while True:
    #     ap_done = attestation_registers.read(AP_DONE_OFFSET, 1)
    #     if ap_done == 1:
    #         break
    #     else:
    #         await asyncio.sleep(DELAY)
    ecdsa_buffer = DevMem(ecdsa_address, ecdsa_length)
    signature = ecdsa_buffer.read(0, signature_length)
    return signature
