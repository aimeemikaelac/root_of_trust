#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/openssl_out/lib/
./ca_test.o
openssl_out/bin/openssl x509 -in test.crt.pem -text
