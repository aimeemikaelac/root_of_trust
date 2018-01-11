#!/usr/bin/python3

import argparse
import binascii

PRIVATE_KEY_OID_HEX = "302e020100300506032b657004220420"

def private_key_to_pem(private_key_hex):
    out_str_hex = PRIVATE_KEY_OID_HEX
    out_str_hex += private_key_hex
    out_str_bin = binascii.unhexlify(out_str_hex)
    out_str = str(binascii.b2a_base64(out_str_bin), 'ascii')
    header = "-----BEGIN PRIVATE KEY-----"
    footer = "-----END PRIVATE KEY-----"
    return header + "\n" + out_str + footer


if __name__ == "__main__":
    argparser = argparse.ArgumentParser()
    argparser.add_argument("--private_key_file", required=True)
    argparser.add_argument("--out_file", required=True)
    args = argparser.parse_args()
    with open(args.private_key_file, "rb") as key_file:
        key_file_data = key_file.read(32)
    pem_file = private_key_to_pem(str(binascii.hexlify(key_file_data), 'ascii'))
    with open(args.out_file, "w") as out_file:
        out_file.write(pem_file)
