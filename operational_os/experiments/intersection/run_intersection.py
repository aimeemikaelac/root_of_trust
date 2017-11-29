#!/usr/bin/python3
import sys
import os
SCRIPT_PATH = os.path.dirname(os.path.realpath(sys.argv[0]))
sys.path.append("{}/../../sdk/".format(SCRIPT_PATH))
import sdk_client
import client as intersection_client
import argparse
import time
import ed25519
import numpy

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
    # parser.add_argument(
    #     "--local_public_key_file",
    #     help="Public key to use for shared secret establishment",
    #     required=True
    # )
    # parser.add_argument(
    #     "--local_private_key_file",
    #     help="private key to use for shared secret establishment",
    #     required=True
    # )
    parser.add_argument(
        "--key_exchange_binary",
        help="Path to key exchange binary",
        required=True
    )
    parser.add_argument(
        "--iterations",
        help="Number of experiment iterations",
        default=1,
        type=int
    )
    args = parser.parse_args()
    base_url = "http://{}:{}".format(args.server, args.port)
    success = sdk_client.upload(base_url, args.program_file, args.enclave_file)
    if not success:
        print("Error uploading. Try again later?", file=sys.stderr)
        sys.exit(-1)
    time.sleep(5)
    attestation_times = []
    for _i in range(args.iterations):
        priv_key, pub_key = ed25519.create_keypair()
        with open("private_key.bin", "wb") as private_key_file:
            private_key_file.write(priv_key.to_bytes())
        with open("public_key.bin", "wb") as public_key_file:
            public_key_file.write(pub_key.to_bytes())
        attestation_start = time.time()
        ticket = sdk_client.start_attestation(base_url, "public_key.bin")
        if ticket is None:
            print("Error getting ticket. Try again?", file=sys.stderr)
            sys.exit(-1)
        attestation_data = None
        while attestation_data is None:
            attestation_data, no_error = sdk_client.check_attestation_ticket(
                base_url, ticket
            )
            if not no_error:
                print("Error checking ticket status", file=sys.stderr)
                sys.exit(-1)
            time.sleep(1)
        verification_passed, hashed_correct, shared_secret = (
            sdk_client.verify_attestation(
                base_url,
                attestation_data,
                verify_file=args.enclave_file,
                secret_key_file="private_key.bin",
                key_exchange_binary=args.key_exchange_binary
            )
        )
        attestation_finished = time.time()
        attestation_finished.append(attestation_finished - attestation_start)
        if not verification_passed:
            print("Attestation verification failed", file=sys.stderr)
            sys.exit(-1)
        if not hashed_correct:
            print("Hash check failed", file=sys.stderr)
            sys.exit(-1)

        intersection_results = intersection_client.go(
            (bytes(shared_secret)), args.server, 1234)
        )
        print("Intersection result:\n{}".format(
            intersection_results,
            file=sys.stderr
        ))
    print("Attestation average: {}".format(numpy.average(attestation_times)))
    print("Attestation STD: {}".format(numpy.std(attestation_times)))
