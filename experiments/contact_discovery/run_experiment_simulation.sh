#!/bin/bash

./client.py \
  --server localhost \
  --generate_keypair_binary ../../sdk/ecdsa_runner_test/generate_keypair \
  --key_exchange_binary ../../sdk/key_exchange/key_exchange \
  --regenerate_db \
  --regenerate_contacts \
  --enclave_file contact_discovery.bin
