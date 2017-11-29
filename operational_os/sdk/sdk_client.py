#!/usr/bin/python3

import argparse
import requests
import time
import binascii
import base64
import ed25519
import hashlib
import subprocess
import shlex
import os
import sys

#using Python bindings for ed25519 from:
#https://github.com/warner/python-ed25519

SCRIPT_PATH = os.path.dirname(os.path.realpath(sys.argv[0]))

def check_attestation_ticket(base_url, ticket):
    url = "{}/{}".format(base_url, "attestation/result/{}".format(ticket))
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()["attestation"], True
    elif response.status_code == 204:
        return None, True
    else:
        return None, False


def start_attestation(base_url, message_file):
    url = "{}/{}".format(base_url, "attestation/request")
    with open(message_file, "rb") as file_handle:
        attestation_data = file_handle.read(32)
    response = requests.post(url, data={
        "attestation_data": str(binascii.hexlify(attestation_data), "ascii")
    })
    print("Message data: {}".format(binascii.hexlify(attestation_data)))
    if response.status_code == 201:
        return response.json()["ticket"]
    else:
        return None

def get_public_key(base_url):
    url = "{}/{}".format(base_url, "public_key")
    response = requests.get(url)
    return response.json()["public_key"]


def get_shared_secret(secret_key_file, enclave_public_key, key_exchange_binary):
    # a file with the secret key in the first 64 bytes
    # 1. write the enclave public key to a fule
    # 2. call a c program that reads from these files and writes the shared
    # secret to another file
    # 3. read from this file and return the shared secret
    secret_file = "secret_out.bin"
    enclave_public_key_file = "enclave_public_key"
    with open(enclave_public_key_file, "wb") as public_handle:
        public_handle.write(enclave_public_key)
    key_return_code = subprocess.call(
        shlex.split("{} {} {} {}".format(
            key_exchange_binary,
            os.path.abspath(enclave_public_key_file),
            os.path.abspath(secret_key_file),
            os.path.abspath(secret_file)
        ))
    )
    if key_return_code != 0:
        return None
    with open(secret_file, "rb") as secret_handle:
        shared_secret = bytes(secret_handle.read())
    print("Shared secret is available in file: {}".format(secret_file))
    print("Shared secret is: {}".format(binascii.hexlify(shared_secret)))
    return shared_secret


def verify_attestation(
    base_url,
    attestation_data,
    verify_file=None,
    secret_key_file=None,
    key_exchange_binary=None
):
    server_public_key = bytearray(
        binascii.unhexlify(get_public_key(base_url))
    )
    print("Attestation data:\n{}".format(attestation_data))
    print("Attestation length: {}".format(len(attestation_data)))
    attestation_binary = binascii.unhexlify(attestation_data)
    signature = bytearray()
    enclave_hash = bytearray()
    public_key = bytearray()
    enclave_message = bytearray()
    signed_message = bytearray()
    for i in range(0x40):
        signature.append(attestation_binary[i])
    # print("Signature:\n0x{}")
    for i in range(0x40):
        enclave_hash.append(attestation_binary[0x40 + i])
    for i in range(0x20):
        public_key.append(attestation_binary[0x80 + i])
    for i in range(0xA0):
        enclave_message.append(attestation_binary[0xA0 + i])
    for i in range(0x100):
        signed_message.append(attestation_binary[0x40 + i])
    print("Public key:\n{}".format(binascii.hexlify(public_key)))
    print("Server Public key len:\n{}".format(
        binascii.hexlify(server_public_key)
    ))
    print("Signed message:\n{}".format(
        len(str(binascii.hexlify(signed_message), 'ascii'))
    ))
    print("Signature:\n{}".format(
        str(binascii.hexlify(signature), 'ascii')
    ))
    vk = ed25519.VerifyingKey(
        bytes(server_public_key)
    )
    print(vk.to_ascii(encoding="hex"))
    try:
        vk.verify(
            bytes(signature),
            bytes(signed_message)
        )
        print("Verification passed")
        if verify_file:
            sha512 = hashlib.sha512()
            with open(verify_file, "rb") as verify_file_handle:
                sha512.update(verify_file_handle.read())
            verify_hash = sha512.digest()
            if verify_hash == enclave_hash:
                print(
                    "Remote hash matches hash of {}. Attstation "
                    "success.".format(verify_file))
                if secret_key_file:
                    if key_exchange_binary is None:
                        key_exchange_binary = (
                            "{}/key_exchange/key_exchange".format(SCRIPT_PATH)
                        )
                    shared_secret = get_shared_secret(
                        secret_key_file, public_key, key_exchange_binary
                    )
                    return True, True, shared_secret
                else:
                    return True, True, None
            else:
                return True, False, None
                print("Remote hash does not match. Attestation failed.")
    except ed25519.BadSignatureError:
        print("Verification failed")
        # sk,vk = ed25519.create_keypair()
        # print(vk.to_ascii(encoding="hex"))
        return False, False, None


def upload(base_url, program_file, enclave_file):
    url = "{}/{}".format(base_url, "upload")
    files = {
        "binary": open(enclave_file, 'rb'),
        "program": open(program_file, 'rb')
    }
    data = {
        "binary_file_name":enclave_file
    }
    response = requests.post(url, files=files, data=data)
    response_json = response.json()
    if response.status_code != 202:
        print(
            "Error uploading file.\nStatus code: {}\nResponse: {}\n"
            .format(response.status_code, response.text)
        )
        return False
    return True

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--server",
        help="Server IP address or hostname",
        required=True
    )
    parser.add_argument(
        "--port",
        help="Server TCP port",
        type=int,
        default=80,
    )
    subparsers = parser.add_subparsers(dest="command")
    upload_parser = subparsers.add_parser('upload')
    attestation_parser = subparsers.add_parser('attestation')
    upload_parser.add_argument(
        "--program_file",
        help="ARM elf binary to run as the untrusted code",
        required=True
    )
    upload_parser.add_argument(
        "--enclave_file",
        help="Binary memory programming file generated by mb-objcopy that "
        "is the memory image for the microblaze program",
        required=True
    )
    attestation_parser.add_argument(
        "--message_file",
        help="Path to file containing message data"
    )
    attestation_group = attestation_parser.add_mutually_exclusive_group(
        required=True
    )
    attestation_group.add_argument(
        "--attestation_wait",
        help="Start an attestation with the input message and wait for a "
        "response, polling at the specified interval",
        type=int
    )
    attestation_group.add_argument(
        "--send_begin_attestation",
        help="Send the attestation data from the file and return the received "
        "ticket",
        action="store_true"
    )
    attestation_group.add_argument(
        "--check_ticket",
        help="Check the status of the attestation ticket",
        type=int
    )
    attestation_parser.add_argument(
        "--verification_file",
        help="File to verify in the remote attestation"
    )
    attestation_parser.add_argument(
        "--secret_key_file",
        help="File containing the ed25519 private key for use in key exchange"
    )
    args = parser.parse_args()
    hostname = args.server
    port = args.port
    protocol = "http://"
    base_url = "{}{}:{}".format(protocol, hostname, port)
    if args.command == "upload":
        upload(base_url, args.program_file, args.enclave_file)
    if args.command == "attestation":
        if args.attestation_wait is not None:
            if args.message_file is None:
                print("Message data required to start attestation")
                sys.exit(-1)
            ticket = start_attestation(base_url, args.message_file)
            attestation_data = None
            while attestation_data is None:
                #TODO: keep alive here
                time.sleep(1)
                attestation_data, ticket_exists = check_attestation_ticket(
                    base_url, ticket
                )
                if not ticket_exists:
                    print("Ticket not found. Error in attestation\n");
                    sys.exit(0)
            verify_attestation(
                base_url,
                attestation_data,
                verify_file=args.verification_file,
                secret_key_file=args.secret_key_file
            )
        elif args.send_begin_attestation:
            print("Ticket:\n{}".format(
                start_attestation(base_url, args.message_file)
            ))
        elif args.check_ticket is not None:
            attestation_data, ticket_exists = check_attestation_ticket(
                base_url, args.check_ticket
            )
            if attestation_data:
                verify_attestation(
                    attestation_data,
                    verify_file=args.verification_file,
                    secret_key_file=args.secret_key_file
                )
            elif ticket_exists:
                print("Attestation pending")
            else:
                print("Ticket not found")
