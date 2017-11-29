#!/usr/bin/python

import socket
import struct
from Crypto.Cipher import AES
import os

HOST = '127.0.0.1'
PORT = 1234

def pad(data):
    to_pad = 16 - (len(data) % 16)
    return data + bytes([to_pad]*to_pad)

def unpad(data):
    # padded = ord(data[-1])
    padded = data[-1]
    return data[:-padded]


def go(shared_secret, host, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
    s.connect((host, port))


    #client_data = '000102030405060708090a0b0c0d0e0fbceb740cb72e8485e7311d52145e3c5a1eeceb12a53b8552a21f856f103f191191d68241009474bf7296b4b3da98af6b8af8aadb76c10bb2e2fef2cd9f4dbedd0718bc85286da17cec0dc10ed384680d'.decode('hex')

    client_nums = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 999]

    # Serialize the client numbers
    client_buf = bytes()
    for n in client_nums:
        temp = struct.pack('<L', n)
        # print(temp)
        client_buf += temp

    # Encrypt the client numbers
    iv = os.urandom(16)
    cipher = AES.new(shared_secret[:16], AES.MODE_CBC, iv)
    client_data = iv + cipher.encrypt(pad(client_buf))


    # Prepare send buffer (length-prepended) and send
    buf = struct.pack('!H', len(client_data))
    buf += client_data
    s.send(buf)


    # Receive response
    r = s.recv(2)
    rlen, = struct.unpack('!H', r)
    rbuf = s.recv(rlen)

    # Decrypt response
    cipher = AES.new(shared_secret[:16], AES.MODE_CBC, rbuf[:16])
    out = unpad(cipher.decrypt(rbuf[16:]))
    #print 'got %d bytes back' % len(out)
    #print rbuf.encode('hex')
    #print out.encode('hex')
    # print(len(out)/4)
    out_nums = struct.unpack('<' + 'L'*int((len(out)/4)), out)
    return out_nums


if __name__ == "__main__":
    print(go('A'*32, HOST, PORT))
