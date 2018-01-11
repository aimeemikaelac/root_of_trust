#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
./cleanup.sh
./build_openssl.sh
./ed25519_key_to_pem.py --private_key_file ../server_private_key_dev.bin --out_file server_private_key.pem
./generate_ca.sh
make clean
make
./run_ca_test.sh
