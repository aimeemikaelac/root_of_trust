#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

THRIFTPATH=$SCRIPTPATH/thrift
THRIFTOUT=$SCRIPTPATH/thrift_out
mkdir -p $THRIFTOUT

cd $THRIFTPATH
./bootstrap.sh
./configure --prefix=$THRIFTOUT --exec-prefix=$THRIFTOUT --with-cpp --without-qt4 --without-qt5 --without-c_glib --without-csharp --without-java --without-erlang --without-nodejs --without-lua --without-python --without-perl --without-php --without-php_extension --without-dart --without-dart --without-ruby --without-haskell --without-go --without-rs --without-haxe --without-dotnetcode --without-d --without-py3 --without-libevent --without-zlib
# --with-boost=no
make
make install
