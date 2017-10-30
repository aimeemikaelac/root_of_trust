#!/usr/bin/python3

from devmem import *
import asyncio

async def write_shared_buffer(
    base_address,
    data,
    buffer_length=0x1000,
    data_offset=0x100,
    data_length=None,
    control_offset=0x0,
    control_length=None
):
    '''Write to shared microblaze-cpu buffer

    Writes to the shared buffer between the ARM CPU and the microblaze. Sets the
    message ready bits in the control section of the buffer, which by default
    the first 0x100 bytes. Assumes data is a bytearray.

    Specifying a non-default data and control offset can change these locations.
    Assumes that each offset goes until the next offset, or the end of the
    memory, e.g. control region goes to the beginning of the data offset, or
    end of memory, if control offset comes after the data offset, and
    vice-versa. Specify a length for either memory region to change this.
    '''
    # TODO: calculate non-default memory regions. For now, assume control region
    # comes first.
    control_length = data_offset - control_offset
    data_length = buffer_length - data_offset
    # TODO: check if a message is coming from the microblaze
    control_registers = DevMem(base_address + control_offset, control_length)
    data_buffer = DevMem(base_address + data, data_length)
    # 1. write message coming from CPU signals
    # TODO: extract control signals into configuration
    control_registers.write(0, 1)
    # 2. copy data to data reion
    data_buffer.write(0, data)
    # 3. signal data write finished
    control_registers(0x10, 1)

async def read_shared_buffer(
    base_address,
    buffer_length=0x1000,
    data_offset=0x100,
    data_length=None,
    control_offset=0x0,
    control_length=None
):
    '''Read from shared buffer
    '''
    # TODO: calculate non-default memory regions. For now, assume control region
    # comes first.
    control_length = data_offset - control_offset
    data_length = buffer_length - data_offset
    # TODO: check if a message is coming from the microblaze
    control_registers = DevMem(base_address + control_offset, control_length)
    data_buffer = DevMem(base_address + data, data_length)
    # 1. Write CPU reading buffer signal
    control_registers(0x40, 1)
    # 2. read data from buffer
    # TODO: have a length for the microblaze message
    message = data_buffer.read(0, data_length)
    # 3. pass message to caller
    return message
