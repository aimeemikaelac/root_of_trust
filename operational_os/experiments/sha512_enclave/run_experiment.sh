#!/bin/bash

mkdir -p data/
./sha512_enclave | tee data/sha512_enclave_$(date +"%Y%m%d%H%M").csv
