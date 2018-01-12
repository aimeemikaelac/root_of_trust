#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

THRIFTPATH=$SCRIPTPATH/thrift
THRIFTOUT=$SCRIPTPATH/thrift_out

mkdir -p $THRIFTPATH
wget https://archive.apache.org/dist/thrift/0.10.0/thrift-0.10.0.tar.gz
tar -xzvf /tmp/thrift-0.10.0.tar.gz -C $THRIFTPATH --strip-components=1
mkdir -p $THRIFTOUT

cd $THRIFTPATH
./bootstrap.sh
./configure
make
sudo make install
