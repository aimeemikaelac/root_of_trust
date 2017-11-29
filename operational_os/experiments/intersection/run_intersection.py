#!/usr/bin/python3
import sys
import os
SCRIPT_PATH = os.path.dirname(os.path.realpath(sys.argv[0]))
sys.path.append("{}/../../sdk/".format(SCRIPT_PATH))
import sdk_client
import client as intersection_client
import argparse
import time

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--program_file",
        help="Arm program file to upload",
        required=True
    )
    parser.add_argument(
        "--enclave_file",
        help="Enclave program file to upload",
        required=True
    )
    parser.add_argument(
        "--server",
        help="Server IP",
        required=True
    )
    parser.add_argument(
        "--port",
        help="Server port",
        required=True
    )
    parser.add_argument(
        "--local_public_key_file",
        help="Public key to use for shared secret establishment",
        required=True
    )
    parser.add_argument(
        "--local_private_key_file",
        help="private key to use for shared secret establishment",
        required=True
    )
    parser.add_argument(
        "--key_exchange_binary",
        help="Path to key exchange binary",
        required=True
    )
    args = parser.parse_args()
    base_url = "http://{}:{}".format(args.server, args.port)
    success = sdk_client.upload(base_url, args.program_file, args.enclave_file)
    if not success:
        print("Error uploading. Try again later?")
        sys.exit(-1)
    time.sleep(5)
    ticket = sdk_client.start_attestation(base_url, args.local_public_key_file)
    if ticket is None:
        print("Error getting ticket. Try again?")
        sys.exit(-1)
    attestation_data = None
    while attestation_data is None:
        attestation_data, no_error = sdk_client.check_attestation_ticket(
            base_url, ticket
        )
        if not no_error:
            print("Error checking ticket status")
            sys.exit(-1)
        time.sleep(1)
    verification_passed, hashed_correct, shared_secret = (
        sdk_client.verify_attestation(
            base_url,
            attestation_data,
            verify_file=args.enclave_file,
            secret_key_file=args.local_private_key_file,
            key_exchange_binary=args.key_exchange_binary
        )
    )
    if not verification_passed:
        print("Attestation verification failed")
        sys.exit(-1)
    if not hashed_correct:
        print("Hash check failed")
        sys.exit(-1)
    print("Intersection result:\n{}".format(
        intersection_client.go(bytes(shared_secret), args.server, 1234)
    ))
