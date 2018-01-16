#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
git submodule update --init --recursive
./build.sh
#thrift --gen cpp enclave_program_to_server.thrift
#thrift --gen py enclave_program_to_server.thrift
#mv gen-py gen_py
sudo apt-get install -y python3-pip
pip3 install -r requirements.txt
