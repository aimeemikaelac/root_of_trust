#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
git submodule init
git submodule sync
git submodule update --recursive
mkdir openssl_out
cd openssl
./config --prefix=$SCRIPTPATH/openssl_out/
make clean
make
make install
