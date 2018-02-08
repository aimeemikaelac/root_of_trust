#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
git submodule update --init --recursive
sudo apt-get install -y cmake autoconf automake build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar xzvf Python-3.6.3.tgz
cd Python-3.6.3
./configure
make
sudo make install
cd ..
./build.sh
#thrift --gen cpp enclave_program_to_server.thrift
#thrift --gen py enclave_program_to_server.thrift
#mv gen-py gen_py
sudo apt-get install -y python3-pip
pip3 install -r requirements.txt
