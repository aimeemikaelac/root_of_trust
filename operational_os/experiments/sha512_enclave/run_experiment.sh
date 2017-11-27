#!/bin/bash

mkdir -p data/
TIMESTAMP=$(date +"%Y%m%d%H%M")
echo "Timestamp: $TIMESTAMP"
./sha512_enclave | tee data/sha512_enclave_$TIMESTAMP.csv
