#!/bin/bash

EXPERIMENT_ITERATIONS=10

./run_intersection.py --program_file intersection --enclave_file \
intersection.bin --server 192.168.1.122 --port 5000 \
--key_exchange_binary ../../sdk/key_exchange/key_exchange \
--iterations $EXPERIMENT_ITERATIONS
