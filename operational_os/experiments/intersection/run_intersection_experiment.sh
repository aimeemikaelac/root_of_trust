#!/bin/bash

./run_intersection.py --program_file intersection --enclave_file \
intersection.bin --server 192.168.1.122 --port 5000 --local_public_key_file \
../public_key.bin --local_private_key_file ../private_key.bin \
--key_exchange_binary ../../sdk/key_exchange/key_exchange
