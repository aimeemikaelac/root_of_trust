#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
rm -rf openssl_out/ ca/ ca_cert.pem ca_key.pem ca_test.o test.crt.pem
