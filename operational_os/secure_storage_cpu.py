#!/usr/bin/python

import argparse
import os
import time
from devmem import *


def check_write_signal(signal_address, signal_mask=0x1, signal_length=1):
    memory_handle = DevMem(signal_address, length=signal_length)
    signal_register = int(memory_handle.read(0, 1))
    if signal_register & signal_mask == 1:
        return True
    else:
        return False


def move_old_storage(original_storage_file, backup_storage_file):
    os.remove(backup_storage_file)
    os.rename(original_storage_file, backup_storage_file)


def generate_random_key():
    # TODO: generate reandom number. prefereably using an FPGA accelerator
    return 0


def program_bbram(new_key):
    # TODO: write to BBRAM here
    pass


def clear_write_signal(signal_address, signal_mask=0x1, signal_length=1):
    memory_handle = DevMem(signal_address, length=signal_length)
    signal_register = int(memory_handle.read(0, 1))
    signal_register = signal_register & (~signal_mask)
    memory_handle.write(0, signal_register)


def write_storage(storage_file, storage_data):
    with open(storage_file, "w") as file_handle:
        file_handle.write(storage_data)


def read_storage(storage_address, storage_length):
    memory_handle = DevMem(storage_address, storage_length)
    return bytearray(memory_handle.read(0, storage_length))


def encrypt_data(pt_data):
    # TODO: interface with AES accelerator. For now, leave unencrypted
    return pt_data

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--signal_address",
                        help="Address to watch for write signal", type=int)
    parser.add_argument("--signal_length",
                        help="Length of signal register to watch",
                        type=int, default=0x1, required=False)
    parser.add_argument("--signal_mask",
                        help="Bitmask to use for watching write signal",
                        type=int, default=1, required=False)
    parser.add_argument("--storage_address",
                        help="Address of shared storage buffer")
    parser.add_argument("--storage_length",
                        help="Length of shared storage buffer to read")
    parser.add_argument("--original_file",
                        help="Original storage file path",
                        default="secure_storage.bin.A", required=False)
    parser.add_argument("--backup_file",
                        help="Backup storage file path",
                        default="secure_storage.bin.B", required=False)
    parser.add_argument("--poll_delay",
                        help="Time to delay between polling write signal, in seconds",
                        default=1, required=False)
    args = parser.parse_args()

    # 1. Poll signal
    # 2. If write requested, read storage into memory
    # 3. Copy old storage into storage file B
    # 4. Generate new key and program BBRAM
    # 5. Encrypt new storage under new key
    # 6. Write storage to file A
    # 7. Clear write signal

    while True:
        if check_write_signal(
            args.signal_address,
            signal_mask=args.signal_mask=0x1,
            signal_length=args.signal_length
        ):
            storage_data = read_storage(
                args.storage_address,
                args.storage_length
            )
            move_old_storage(args.original_file, args.backup_file)
            program_bbram(generate_random_key())
            encrypted_storage = encrypt_data(storage_data)
            write_storage(args.original_file,  encrypted_storage)
            clear_write_signal(
                args.signal_address, signal_mask=args.signal_mask, signal_length=args.signal_length)
        time.sleep(args.poll_delay)
