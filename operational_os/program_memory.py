#!/usr/bin/python

import argparse
import shlex
import subprocess
import struct
import os
import tempfile
from devmem import *

def get_program_headers(elf_file):
    program_headers = []

    readelf_str = "readelf --segments {}".format(elf_file)
    readelf_str_tokens = shlex.split(readelf_str)
    pipe = subprocess.Popen(readelf_str_tokens, stdout=subprocess.PIPE)
    stdout_data = pipe.communicate()[0]
    # print "Received data:\n{}".format(stdout_data)
    lines = stdout_data.split("\n")
    last_offset = 0
    last_length = 0
    for line in lines:
        line_tokens = line.split()
        if len(line_tokens) > 0 and line_tokens[0] == "LOAD":
            current_offset = int(line_tokens[1], 16)
            current_virt_address = int(line_tokens[2], 16)
            current_phys_address = int(line_tokens[3], 16)
            current_file_size = int(line_tokens[4], 16)
            current_mem_size = int(line_tokens[5], 16)
            program_headers.append((current_offset,
                                    current_virt_address,
                                    current_phys_address,
                                    current_file_size,
                                    current_mem_size))
            print (current_offset,
                                    current_virt_address,
                                    current_phys_address,
                                    current_file_size,
                                    current_mem_size)
            if current_phys_address > last_offset:
                last_offset = current_phys_address
                last_length = current_mem_size
    return program_headers, current_phys_address, current_mem_size

def get_program_segments(program_headers, elf_file):
    elf_segments = []
    elf_data = bytearray()
    with open(elf_file, 'rb') as elf_file_handle:
        file_size = os.path.getsize(elf_file)
        # elf_data_host_endian = elf_file_handle.read()
        # elf_data_big_endian = []
        for i in range(file_size/4):
            current_word = bytearray(elf_file_handle.read(4))
            # reversed_word = bytearray("{}{}{}{}".format(current_word[3],
            #                                             current_word[2],
            #                                             current_word[1],
            #                                             current_word[0]))
            elf_data.append(current_word[0])
            elf_data.append(current_word[1])
            elf_data.append(current_word[2])
            elf_data.append(current_word[3])
        # elf_data = bytearray(elf_file_handle.read())
        for segment in program_headers:
            offset = segment[0]
            print "Offset: {:08x}".format(offset)
            length = segment[3]
            print "Length: {:08x}".format(length)
            current_data = bytearray(elf_data[offset:offset+length])
            elf_segments.append(current_data)
    # for i in range(len(elf_segments[0])):
    #     if i%4 == 0:
    #         print ""
    #     print "{:02x}".format(elf_segments[0][i]),
    return elf_segments

def write_segments_to_memory(program_headers, elf_segments, base_address):
    # end_memory = 0
    for header_index in range(len(program_headers)):
        header = program_headers[header_index]
        phys_offset = header[1]
        print "Physical address: {:08x}".format(phys_offset)
        mem_length = header[4]
        print "Memory length: {:08x}".format(mem_length)
        memory_handle = DevMem(base_address + phys_offset, length=mem_length)
        print "Mapping address {:08x} for length {:08x}".format(base_address + phys_offset, mem_length)
        memory_handle.write(0, elf_segments[header_index])
        # current_end = virt_offset + mem_length
        # if current_end > end_memory:
            # end_memory = current_end
    # memory_handle = DevMem(base_address, length=current_end)
    # for i in range(len(program_headers)):
    #     virt_offset = program_headers[i][1]
    #     phys_offset = program_headers[i][2]
    #     mem_length = program_headers[i][4]
    #     memory_handle.write(phys_offset, elf_segments[i])

def zero_memory(length, base_address):
    memory_handle = DevMem(base_addr, length=length)
    memory_handle.write(0, bytearray("0"*length))

def write_bin_file(bin_file, base_address):
    with open(bin_file) as bin_file_handle:
        file_size = os.path.getsize(bin_file)
        bin_file_data = bytearray(bin_file_handle.read())
        memory_handle = DevMem(base_address, length=file_size)
        memory_handle.write(0, bin_file_data)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    group1 = parser.add_mutually_exclusive_group(required=True)
    group1.add_argument("--elf", help="Path to .elf to use")
    group1.add_argument("--bin", help="Path to .bin to use")
    parser.add_argument(
        "--base_address",
        help="Base address to program as a hes string", required=True
    )
    args = parser.parse_args()
    if args.elf:
        program_headers, last_offset, last_length = (
            get_program_headers(args.elf)
        )
        elf_segments = get_program_segments(program_headers, args.elf)
        base_address = int(args.base_address, 16)
        zero_memory(last_offset + last_length, base_address)
        write_segments_to_memory(program_headers, elf_segments, base_address)
    else:
        write_bin_file(args.bin)
