#!/usr/bin/env python

# https://www.stavros.io/posts/python-fuse-filesystem/

from __future__ import with_statement

import os
import sys
import errno
import array
import math
import argparse
import binascii
import json

from fuse import FUSE, FuseOSError, Operations

from Cryptodome.Cipher import AES
from Cryptodome.Protocol import KDF
from Cryptodome.Random import random

import fpga

import numpy as np


class EncryptedFS(Operations):
    def __init__(self, encrypted_storage_dir, metadata_file):
        self.encrypted_storage_dir = encrypted_storage_dir
        # self.encryption_key = encryption_key
        self.metadata_file = metadata_file
        self._parse_metadata(self.metadata_file)

    # Helpers
    # =======

    def _full_path(self, partial):
        if partial.startswith("/"):
            partial = partial[1:]
        path = os.path.join(self.encrypted_storage_dir, partial)
        return path

    def _init_metadata(self, metadata_file):
        self.metadata_dict = {}
        self._write_metadata(metadata_file)

    def _parse_metadata(self, metadata_file):
        if not os.path.exists(metadata_file):
            self._init_metadata(metadata_file)
        with open(metadata_file, 'r+') as metadata:
            file_data = metadata.read()
            try:
                self.metadata_dict = json.loads(file_data)
            except ValueError:
                print "Could not decode metadata. Reinitializing"
                self._init_metadata(metadata_file)

    def _write_metadata(self, metadata_file):
        with open(metadata_file, 'w') as metadata:
            metadata.write(json.dumps(self.metadata_dict))
            metadata.flush()

    # Filesystem methods
    # ==================

    def access(self, path, mode):
        full_path = self._full_path(path)
        if not os.access(full_path, mode):
            raise FuseOSError(errno.EACCES)

    def chmod(self, path, mode):
        full_path = self._full_path(path)
        return os.chmod(full_path, mode)

    def chown(self, path, uid, gid):
        full_path = self._full_path(path)
        return os.chown(full_path, uid, gid)

    def getattr(self, path, fh=None):
        full_path = self._full_path(path)
        st = os.lstat(full_path)
        return dict((key, getattr(st, key)) for key in ('st_atime', 'st_ctime',
                     'st_gid', 'st_mode', 'st_mtime', 'st_nlink', 'st_size', 'st_uid'))

    def readdir(self, path, fh):
        full_path = self._full_path(path)

        dirents = ['.', '..']
        if os.path.isdir(full_path):
            dirents.extend(os.listdir(full_path))
        for r in dirents:
            yield r

    def readlink(self, path):
        pathname = os.readlink(self._full_path(path))
        if pathname.startswith("/"):
            # Path name is absolute, sanitize it.
            return os.path.relpath(pathname, self.root)
        else:
            return pathname

    def mknod(self, path, mode, dev):
        return os.mknod(self._full_path(path), mode, dev)

    def rmdir(self, path):
        full_path = self._full_path(path)
        return os.rmdir(full_path)

    def mkdir(self, path, mode):
        return os.mkdir(self._full_path(path), mode)

    def statfs(self, path):
        full_path = self._full_path(path)
        stv = os.statvfs(full_path)
        return dict((key, getattr(stv, key)) for key in ('f_bavail', 'f_bfree',
            'f_blocks', 'f_bsize', 'f_favail', 'f_ffree', 'f_files', 'f_flag',
            'f_frsize', 'f_namemax'))

    def unlink(self, path):
        if path in self.metadata_dict:
            del self.metadata_dict[path]
            self._write_metadata(self.metadata_file)
        else:
            print "{} not in metadata when deleting".format(path)
        print "Deleting {}".format(path)
        return os.unlink(self._full_path(path))

    def symlink(self, name, target):
        return os.symlink(name, self._full_path(target))

    def rename(self, old, new):
        if old in self.metadata_dict:
            self.metadata_dict[new] = self.metadata_dict[old]
            del self.metadata_dict[old]
        else:
            print "When renaming {} to {}, {} was not in metadata".format(old, new, old)
        print "Renaming {} to {}".format(old, new)
        return os.rename(self._full_path(old), self._full_path(new))

    def link(self, target, name):
        return os.link(self._full_path(target), self._full_path(name))

    def utimens(self, path, times=None):
        return os.utime(self._full_path(path), times)

    # File methods
    # ============

    def open(self, path, flags):
        full_path = self._full_path(path)
        return os.open(full_path, flags)

    def _init_file_metadata(self, path):
        self.metadata_dict[path] = {}
        self.metadata_dict[path]["file_last_block"] = '' #binascii.hexlify('\0'*16)
        rand_iv = random.getrandbits(64)
        self.metadata_dict[path]["iv"] = rand_iv
        self._write_metadata(self.metadata_file)

    def create(self, path, mode, fi=None):
        full_path = self._full_path(path)
        self._init_file_metadata(path)
        print "Creating file {}".format(path)
        return os.open(full_path, os.O_WRONLY | os.O_CREAT, mode)

    def _decrypt(self, ct, iv_int, offset_int):
        # nonce = iv_int + offset_int % 2**64
        # nonce_str = binascii.a2b_hex("{0:016x}".format(nonce))
        # print "nonce:\n{0:016x}\n len of str:{1}".format(nonce, len(nonce_str))
        # cipher = AES.new(self.encryption_key, AES.MODE_CTR, nonce=nonce_str)
        # return cipher.decrypt(ct)
        # iv_current = iv_int
        # pt = ''
        # for i in range(0, len(ct), 16):
        #     ct_current = ct[i:i+16]
        #     pt_current = fpga.encrypt(ct_current, iv_current)
        #     pt = pt + pt_current
        #     iv_current = iv_current + 1
        # return pt
        return self._encrypt(ct, iv_int, offset_int)

    def _decrypt_file(self, full_path, path):
        # encrypted_file_data = np.array('b')
        # encrypted_file_data.fromfile(full_path)
        encrypted_file_data = np.fromfile(full_path, dtype=np.uint8)
        # print "Raw data len: {}".format(len(encrypted_file_data))
        # with open(full_path) as file_handle:
        #     encrypted_file_data = file_handle.read()
        if path in self.metadata_dict:
            last_block = binascii.unhexlify(self.metadata_dict[path]["file_last_block"])
            iv = self.metadata_dict[path]["iv"]
        else:
            print "Last encrypted block for file {} not in metadata. Unrecoverable error. Exiting.".format(path)
            sys.exit(-1)
        # print "Raw data len 2: {}".format(encrypted_file_data.shape)
        last_block_start = encrypted_file_data.size - encrypted_file_data.size % 16
        #len(encrypted_file_data) - len(encrypted_file_data) % 16
        # print "Raw data len 2 2: {}".format(encrypted_file_data.shape)
        encrypted_file_data = encrypted_file_data[0:last_block_start]# + last_block
        # print "Raw data len 3: {}".format(encrypted_file_data.size)
        # encrypted_file_data.append(last_block)
        encrypted_file_data = np.append(encrypted_file_data, [ord(item) for item in list(last_block)])
        # print "Last block: {}".format(binascii.hexlify(last_block))
        # print "Raw data len 4: {}".format(encrypted_file_data.shape)
        # print type(encrypted_file_data.tolist()[0])
        # print "Raw data len 4 2: {}".format(len(encrypted_file_data.tolist()))
        # print "Raw data: {}".format(binascii.hexlify(''.join([chr(item) for item in encrypted_file_data.tolist()])))
        # print "Raw data print 1:"
        # for item in encrypted_file_data.tolist():
        #     print type(item)
        #     print hex(item)

        encrypted_file_data = np.array(encrypted_file_data, np.uint8)
        self._decrypt(encrypted_file_data, iv, 0)

        encrypted_file_data = np.array(encrypted_file_data, np.uint8)
        # print type(encrypted_file_data.tolist()[0])
        # print "Raw data len 5: {}".format(len(encrypted_file_data.tolist()))
        # print "Raw data: {}".format(binascii.hexlify(binascii.hexlify(''.join([chr(item) for item in encrypted_file_data.tolist()]))))
        # print "Raw data print 2:"
        # for item in encrypted_file_data.tolist():
        #     print type(item)
        #     print str(item)
        return encrypted_file_data


    def read(self, path, length, offset, fh):
        # os.lseek(fh, offset, os.SEEK_SET)
        # return os.read(fh, length)
        # return self._decrypt_file_at_offset(fh, offset, length)[0]
        full_path = self._full_path(path)

        pt = self._decrypt_file(full_path, path)
        # print "pt len:\n{}".format(len(pt))
        # print "Reading {}".format(path)

        data = pt[offset:offset+length]
        data_read = ''.join(chr(item) for item in (pt[offset:offset+length]).tolist())
        # print "Data read: {}".format(data_read)
        return data_read

    #this will encrypt th pt in-place now
    def _encrypt(self, pt, iv_int, offset_int):
        nonce = iv_int + offset_int % 2**56
        # nonce_str = binascii.a2b_hex("{0:014x}".format(nonce))
        # cipher = AES.new(self.encryption_key, AES.MODE_CTR, nonce=nonce_str)
        # return cipher.encrypt(pt)
        # iv_current = iv_int + offset_int
        # ct = ''
        # print len(pt)
        # for i in range(0, len(ct), 16):
        #     pt_current = pt[i:i+16]
        #     ct_current = fpga.encrypt(pt_current, iv_current)
        #     ct = ct + ct_current
        #     iv_current = iv_current + 1
        # print len(ct)
        # return ct
        fpga.encrypt(pt, nonce)
        return pt

    def write(self, path, buf, offset, fh):
        # os.lseek(fh, offset, os.SEEK_SET)
        # return os.write(fh, buf)
        # data_ct, block_begin, block_length = self._get_ct_at_offset(fh, offset, length)
        full_path = self._full_path(path)
        file_length = os.path.getsize(full_path)
        # ct = self._encrypt_file_data_at_offset(fh, offset, len(buf), buf, file_length)

        # os.lseek(fh, block_begin, os.SEEK_SET)
        # return os.write(fh, data_ct
        block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(offset, len(buf))
        # print "Data begin: {}".format(data_begin)
        # print "Data end: {}".format(data_end)
        # print "Buf: {}".format(buf)
        # print "Offset: {}".format(offset)
        file_pt_np = self._decrypt_file(full_path, path)
        file_pt = ''.join(chr(item) for item in file_pt_np.tolist())
        starting_padding = len(file_pt) - file_length
        original_padding_start = len(file_pt) - starting_padding
        original_length = file_length
        index = 0
        offset_into_block = data_begin
        padding_added = 0
        original_padding_overwritten = 0
        # for i in range(data_begin, min(data_end, file_length)):
        #     file_pt[i] = buf[index]
        #     index = index + 1
        #     offset_into_block = offset_into_block + 1
        # for i in range(index, len(buf)):
        #     file_pt = file_pt + buf[i]
        #     offset_into_block = offset_into_block + 1
        # for i in range(offset_into_block, block_length):
        #     if i >
        #     file_pt = file_pt + '\0'
        #     padding_added = padding_added + 1
        #TODO: assume that are always adding to the end of the file or part of the existing file. Do not have to pad between the start of the data that is being placed and the end of the file
        starting_pt_len = len(file_pt)
        file_pt_list = list(file_pt)
        # print "here"
        for i in range(block_begin, block_end):
            if i < starting_pt_len:
                if i >= data_begin and i < data_end:
                    # file_pt = file_pt[0:i] + buf[index]
                    # if i+1 < starting_pt_len:
                        # file_pt = file_pt[0:i] + buf[index] + file_pt[i+1:len(file_pt)]
                    # else:
                    # print "Buf len: {}".format(len(buf))
                    # print "index: {}".format(index)
                    buf_cur = buf[index]
                    file_pt_list[i] = buf_cur
                    index = index + 1
                    if i >= original_length:
                        original_padding_overwritten = original_padding_overwritten + 1
            else:
                if i >= data_begin and i < data_end:
                    # file_pt = file_pt + buf[index]
                    file_pt_list.append(buf[index])
                    index = index + 1
                elif i >= data_end:
                    # file_pt = file_pt + '\0'
                    file_pt_list.append('\0')
                    padding_added = padding_added + 1
        # print "here2"
        file_pt = np.fromstring(''.join(file_pt_list), np.uint8)
        iv = self.metadata_dict[path]["iv"]
        # print binascii.hexlify(file_pt)
        self._encrypt(file_pt, iv, 0)
        file_ct = file_pt

        # file_ct = self._encrypt(file_pt)
        last_block = np.array([], dtype=np.uint8)
        last_block_start = len(file_ct) - 16
        # print "Ct len: {}".format(len(file_ct))
        # print "Last block start: {}".format(last_block_start)
        for i in range(last_block_start, last_block_start + 16):
            last_block = np.append(last_block, file_ct[i])

        self.metadata_dict[path]["file_last_block"] = binascii.hexlify(last_block.tobytes())
        self._write_metadata(self.metadata_file)
        #if padding was added, then we only need to subtract that from the length of the string and write the string without padding to the file_pt

        #else, we need to figure out how much padding we overwrote

        # print "here4"
        if padding_added > 0:
            # print "here5"
            str_to_write = ''.join(chr(item) for item in (file_ct[0:(len(file_ct) - padding_added)]).tolist())
            # print "Str written:\n{}".format(str_to_write)
            # os.write(fh, str_to_write)
            print "Updating file, padding added: {}".format(path)
            # print "Str written:\n{}".format(binascii.hexlify(str_to_write))
            with open(full_path, 'w') as backing_file:
                backing_file.write(str_to_write)
            return len(buf)
        else:
            # print "here6"
            padding_remaining = starting_padding - original_padding_overwritten
            str_to_write = ''.join(chr(item) for item in (file_ct[0:(len(file_ct) - padding_remaining)]).tolist())
            print "Updating file, no padding added: {}".format(path)
            # print "Str written:\n{}".format(binascii.hexlify(str_to_write))
            with open(full_path, 'w') as backing_file:
                backing_file.write(str_to_write)
            # os.write(fh, str_to_write)
            return len(buf)




    def truncate(self, path, length, fh=None):
        full_path = self._full_path(path)
        # # with open(full_path, 'r+') as f:
        # f = os.open(full_path, os.O_RDWR)
        file_length = os.path.getsize(full_path)
        # last_block_data = array.array('B')
        # if length < file_length:
        #     if length % 16 != 0:
        #         # last_block_data, block_start = self._get_block_at_offset(f, length - 1, file_length)
        #         # decrypted_last_block = self._decrypt_block(last_block_data)
        #         # data_end = length - block_start
        #         #generate encrypted last block
        #         # for i in range(length % 16):
        #         #     last_block_data.append(decrypted_last_block[i])
        #         # for i in range(data_end, len(last_block_data)):
        #             # decrypted_last_block[i] = '\0'
        #         # encrypted_last_block = self._encrypt_partial_block(last_block_data)
        #         # os.lseek(f, block_start, os.SEEK_SET)
        #         # os.write(f, encrypted_last_block)
        #         new_last_block_begin = length - length % 16
        #         new_last_block_data = self._decrypt_file_at_offset(f, new_last_block_begin, length - new_last_block_begin, file_length)
        #         for i in range(length - new_last_block_begin, 16):
        #             new_last_block_data[i] = ('\0')
        #         self._encrypt_file_data_at_offset(f, new_last_block_begin, 16, new_last_block_data, file_length)
        #     # return f.truncate(length)
        # elif length > file_length:
        #     # if length == file_length:
        #         # return f.truncate(length)
        #     # else:
        #         # f.truncate(length)
        #     # last_block_s = length - (length % 16)
        #     # old_last_block = file_length - (file_length % 16)
        #     # if file_length % 16
        #     # if length % 16 != 0:
        #     orig_last_block_begin = file_length - file_length % 16
        #     # orig_block_after_last_begin = orig_last_block_begin + 16
        #     # new_last_block_begin = length - length % 16
        #     # num_full_blocks = (new_last_block_begin - orig_block_after_last_begin) / 16
        #     # os.lseek(f, length-1, os.SEEK_SET)
        #     # os.write(f, '\0'*(length - file_length))
        #     last_block = self._decrypt_file_at_offset(f, orig_last_block_begin, file_length - orig_last_block_begin, file_length)
        #     last_block_data.fromstring(last_block)[0]
        #     for i in range(length - file_length):
        #         last_block_data.append('\0')
        #     self._encrypt_file_data_at_offset(f, orig_last_block_begin, length - orig_last_block_begin, last_block_data, file_length)
        # return os.ftruncate(f, length)
        fh = os.open(full_path, os.O_RDWR)
        if length > 0:
            pt = self.read(path, file_length, 0, fh)
            if length > file_length:
                for i in range(file_length, length):
                    pt = pt + '\0'
            elif length < file_length:
                pt = pt[0:length]
            self._write(path, pt, 0, fh)
        else:
            # self.metadata_dict[path] = {}
            # self.metadata_dict[path]["file_last_block"] = binascii.hexlify('\0'*16)
            # self._write_metadata(self.metadata_file)
            self._init_file_metadata(path)
        return os.ftruncate(fh, length)



    def flush(self, path, fh):
        return os.fsync(fh)

    def release(self, path, fh):
        return os.close(fh)

    def fsync(self, path, fdatasync, fh):
        return self.flush(path, fh)

    def _get_encryption_offsets(self, offset, length):
        block_begin = int(math.floor(offset/16) * 16)
        block_end = int((math.floor((offset + length)/16) + 1) * 16)
        block_length = block_end - block_begin
        data_begin = offset - block_begin
        # data_end = block_end - (offset + length)
        data_end = data_begin + length
        return block_begin, block_end, block_length, data_begin, data_end

    #assume we are reading in the bounds of the file length
    # def _get_ct_at_offset(self, file_handle, offset, length, file_length, path):
    #     block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(offset, length)
    #
    #     #are we in the last block of the file?
    #     replace_last_block = False
    #     last_block = ''
    #     if block_end == (int(file_length/16)*16 + 16):
    #         if path in self.metadata_dict["file_last_block"]:
    #             last_block = self.metadata_dict["file_last_block"][path]
    #         else:
    #             print "Last encrypted block for file {} not in metadata. Unrecoverable error. Exiting.".format(path)
    #             sys.exit(-1)
    #         replace_last_block = True
    #     # if block_begin >= file_length:
    #         # return '\0'*block_length
    #
    #     os.lseek(file_handle, block_begin, os.SEEK_SET)
    #     # if block_end >= file_length:
    #         # ct = os.read(file_handle, file_length - block_begin)
    #         # for i in range(block_end - file_length):
    #             # ct = ct + '\0'
    #     # else:
    #     data_read_length = length
    #     if offset % 16 != 0:
    #         data_read_length = data_read_length + (data_begin - block_begin)
    #     ct = os.read(file_handle, data_read_length)
    #     if replace_last_block:
    #         last_block_begin = (length - length % 16
    #         ct_new = ct[0:last_block_begin] + last_block
    #         return ct_new
    #     else:
    #         return ct

    # def _encrypt_file_data_at_offset(self, file_handle, offset, length, data, file_length):
    #     #TODO: handle when data is too much to store in memory
    #     block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(offset, length)
    #
    #     if block_end > file_length:
    #         existing_data_length = file_length - block_begin
    #     else:
    #         existing_data_length = block_length
    #     pt = self._decrypt_file_at_offset(file_handle, block_begin, existing_data_length, file_length)[1]
    #
    #     # pt[data_begin, data_end] = data
    #     if block_end > file_length:
    #         if data_end > file_length:
    #             pt_new = pt[0:data_begin] + data
    #             for i in range(data_end, block_end):
    #                 pt_new = pt_new + '\0'
    #         else:
    #             pt_new = pt[0:data_begin] + data
    #     else:
    #         pt_new = pt[0:data_begin] + data + pt[data_end:len(pt)]
    #
    #     cipher = AES.new(self.encryption_key, AES.MODE_ECB)
    #     ct = cipher.encrypt(pt_new)
    #
    #     return ct, block_begin, block_length


    # def _decrypt_file_at_offset(self, file_handle, offset, length, file_length):
    #     block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(offset, length)
    #
    #     ct = self._get_ct_at_offset(file_handle, offset, length, file_length)
    #
    #     cipher = AES.new(self.encryption_key, AES.MODE_ECB)
    #     pt = cipher.decrypt(ct)
    #
    #     return pt[data_begin:data_end], pt
    #
    # def _pad_partial_block(self, partial_block):
    #     padded_block_data = array.array('B')
    #     padded_block_data.extend(partial_block)
    #     for i in range(16 - len(partial_block)):
    #         padded_block_data.append('\0')
    #     return padded_block_data
    #
    # def _encrypt_decrypt_partial_block(self, partial_block, encrypt=False):
    #     padded_block_data = self._pad_partial_block(partial_block)
    #     return self._encrypt_decrypt_block(padded_block_data, encrypt=encrypt)
    #
    # def _encrypt_decrypt_block(self, block, encrypt=False):
    #     cipher = AES.new(self.encryption_key, AES.MODE_ECB)
    #     cipher_data = array.array('B')
    #     if encrypt:
    #         ct = cipher.encrypt(padded_block_data.tostring())
    #         cipher_data.fromstring(ct)
    #     else:
    #         pt = cipher.decrypt(padded_block_data.tostring())
    #         cipher_data.fromstring(pt)
    #
    #     return cipher_data
    #
    # def _decrypt_block(self, block):
    #     return self._encrypt_decrypt_block(block)
    #
    # def _decrypt_partial_block(self, partial_block):
    #     return self._encrypt_decrypt_partial_block(partial_block)
    #
    # def _encrypt_block(self, block):
    #     return self._encrypt_decrypt_block(block, encrypt=True)
    #
    # def _encrypt_partial_block(self, partial_block):
    #     return self._encrypt_decrypt_partial_block(partial_block, encrypt=True)
    #
    # def _get_block_at_offset(self, fd, offset, file_length):
    #     if offset >= file_length:
    #         return None, None
    #     block_begin = offset - offset%16
    #     read_length = 16
    #     os.lseek(fd, block_begin, os.SEEK_SET)
    #     if block_begin + 16 >= file_length:
    #         read_length = file_length - offset
    #     block_data_str = os.read(fd, read_length)
    #     block_data = array.array('B')
    #     block_data.fromstring(block_data_str)
    #     return block_data, block_begin


# def main(mountpoint, root):

    # FUSE(Passthrough(root), mountpoint, nothreads=True, foreground=True)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--mount_point", help="Path to mount to", required=True)
    parser.add_argument("--storage_dir", help="Path to directory to store encrypted data", required=True)
    # encryption_group = parser.add_mutually_exclusive_group(required=True)
    # encryption_group.add_argument("--encryption_key", help="128-bit encryption key specified as a hex string starting with 0x")
    # encryption_group.add_argument("--passphrase", help="Pssphrase as an ASCII string to use to generate an encryption key")
    # parser.add_argument("--salt", help="Salt to use with KDF for generating a key from a passphrase. Must be a 128-bit hex string beginning with 0x")
    parser.add_argument("--metadata_file", help="File to hold metadata",
    required=True)
    args = parser.parse_args()
    # encryption_key = ''
    # print "Starting key"
    # if args.encryption_key is not None:
    #     encryption_key = binascii.unhexlify(args.encryption_key)
    # else:
    #     if args.salt is None:
    #         print "A salt is required when using a passphrase"
    #         sys.exit(-1)
    #     encryption_key = KDF.scrypt(args.passphrase, args.salt, 16, 16384, 8, 1)
    # print "Finished with Key"
    FUSE(EncryptedFS(args.storage_dir, args.metadata_file), args.mount_point, nothreads=True, foreground=True)
