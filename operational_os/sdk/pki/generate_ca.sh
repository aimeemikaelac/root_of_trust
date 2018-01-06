#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH

## Create Dirs ##
mkdir -p ca/intermediate/
cp openssl.cnf ca/
cp openssl_intermediate.cnf ca/intermediate/openssl.cnf
cp openssl_intermediate_setup.cnf ca/intermediate/

## Create Root CA ##
cd ca
mkdir certs crl newcerts private
chmod 700 private
touch index.txt
echo 1000 > serial

## Create Root Key ##
openssl genrsa -out private/ca.key.pem 4096
chmod 400 private/ca.key.pem

## Sign Root Cert ##
openssl req -config openssl.cnf \
      -key private/ca.key.pem \
      -new -x509 -days 7300 -sha256 -extensions v3_ca \
      -out certs/ca.cert.pem
chmod 444 certs/ca.cert.pem


openssl x509 -noout -text -in certs/ca.cert.pem
## Create Intermediate CA ##
cd intermediate/
mkdir certs crl csr newcerts private
chmod 700 private
touch index.txt
echo 1000 > serial
echo 1000 > crlnumber

## Create Intermediate Key ##
openssl genrsa \
      -out private/intermediate.key.pem 4096
chmod 400 private/intermediate.key.pem

## Create Intermediate CSR ##
cd ..
openssl req -config intermediate/openssl_intermediate_setup.cnf -new -sha256 \
      -key intermediate/private/intermediate.key.pem \
      -out intermediate/csr/intermediate.csr.pem

## Sign Intermediate CSR ##
openssl ca -config openssl.cnf -extensions v3_intermediate_ca \
      -days 3650 -notext -md sha256 \
      -in intermediate/csr/intermediate.csr.pem \
      -out intermediate/certs/intermediate.cert.pem
chmod 444 intermediate/certs/intermediate.cert.pem
openssl x509 -noout -text \
      -in intermediate/certs/intermediate.cert.pem
openssl verify -CAfile certs/ca.cert.pem \
      intermediate/certs/intermediate.cert.pem

## Create CA Bundle ##
cat intermediate/certs/intermediate.cert.pem \
      certs/ca.cert.pem > intermediate/certs/ca-chain.cert.pem
chmod 444 intermediate/certs/ca-chain.cert.pem

cd $SCRIPTPATH
cp ca/intermediate/certs/intermediate.cert.pem ca_cert.pem
cp ca/intermediate/private/intermediate.key.pem ca_key.pem
