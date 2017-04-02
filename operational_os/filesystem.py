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


class EncryptedFS(Operations):
    def __init__(self, encrypted_storage_dir, encryption_key, metadata_file):
        self.encrypted_storage_dir = encrypted_storage_dir
        self.encryption_key = encryption_key
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
        # print "Deleting {}".format(path)
        return os.unlink(self._full_path(path))

    def symlink(self, name, target):
        return os.symlink(name, self._full_path(target))

    def rename(self, old, new):
        if old in self.metadata_dict["file_last_block"]:
            self.metadata_dict[new] = self.metadata_dict[old]
            del self.metadata_dict[old]
        else:
            print "When renaming {} to {}, {} was not in metadata".format(old, new, old)
        # print "Renaming {} to {}".format(old, new)
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
        self.metadata_dict[path]["file_last_block"] = binascii.hexlify('\0'*16)
        rand_iv = random.getrandbits(64)
        self.metadata_dict[path]["iv"] = rand_iv
        self._write_metadata(self.metadata_file)

    def create(self, path, mode, fi=None):
        full_path = self._full_path(path)
        self._init_file_metadata(path)
        # print "Creating file {}".format(path)
        return os.open(full_path, os.O_WRONLY | os.O_CREAT, mode)

    def _decrypt(self, ct, iv_int, offset_int):
        nonce = iv_int + offset_int % 2**64
        nonce_str = binascii.a2b_hex("{0:0{1}x}".format(nonce, 20))
        # print "nonce:\n{0:016x}\n len of str:{1}".format(nonce, len(nonce_str))
        # cipher = AES.new(self.encryption_key, AES.MODE_CTR, nonce=nonce_str)
        cipher = AES.new(self.encryption_key, AES.MODE_ECB)
        return cipher.decrypt(ct)

    def _decrypt_file(self, full_path, path, begin, end):
        # print "\n\n\n"
        print "Attempting to read from {} to {}".format(begin, end)
        file_size = os.path.getsize(full_path)
        # print "Reading file with size: {}".format(file_size)

        #corner case: if the file is empty, return nothing
        if file_size == 0:
            return ""

        if end > file_size:
            actual_end = file_size
        else:
            actual_end = end

        block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(begin, actual_end-begin)



        # if end > file_size:
        #     print "Error: attempting to read past file end"
        #     print "File length: {}".format(file_size)
        #     print "Begin: {}".format(begin)
        #     print "End: {}".format(end)

        with open(full_path) as file_handle:
            file_handle.seek(block_begin)
            if block_begin + block_length > file_size:
                read_length = file_size - block_begin
            else:
                read_length = block_length
            encrypted_file_data = file_handle.read(read_length)

            # print "Read encrypted file data:\n{}".format(binascii.hexlify(encrypted_file_data))
            # print "Block begin: {}, block end: {}, data begin: {}, data end: {}".format(block_begin, block_end, data_begin, data_end)

            #assume this only occurs when the last block of the file is not 16 bytes in size
            if block_end > file_size:
                replace_last_block = True
            else:
                replace_last_block = False

            if path in self.metadata_dict:
                last_block = binascii.unhexlify(self.metadata_dict[path]["file_last_block"])
                iv = self.metadata_dict[path]["iv"]
            else:
                print "Last encrypted block for file {} not in metadata. Unrecoverable error. Exiting.".format(path)
                sys.exit(-1)
            if replace_last_block:
                # print "Replacing last block"

                # print "Last block:\n{}".format(binascii.hexlify(last_block))
                # print "Last block end: {}".format(last_block_end)
                last_block_start = len(encrypted_file_data) - len(encrypted_file_data) % 16

                # print "Last block start: {}".format(last_block_start)

                encrypted_file_data = encrypted_file_data[0:last_block_start] + last_block
            iv_offset = int(block_begin/16)
            # print "Iv offset: {}".format(iv_offset)
            decrypted_file_data = self._decrypt(encrypted_file_data, iv, iv_offset)
            # print "Decryted data: {}".format(binascii.hexlify(decrypted_file_data))
            # print "Decrypted: {}".format(binascii.hexlify(decrypted_file_data))
            return decrypted_file_data[data_begin-block_begin:data_end-block_end]

    # def _decrypt_file_segment(self, full_path, path, begin, end):


    def read(self, path, length, offset, fh):
        full_path = self._full_path(path)
        file_size = os.path.getsize(full_path)
        # if offset + length > file_size:
        #     print "Error: attempting to read past file end"
        #     print "File length: {}".format(file_size)
        #     print "Offset: {}".format(offset)
        #     print "End: {}".format(length)
        # print "Attempting to read from {} to {}".format(offset, offset+length)
        pt = self._decrypt_file(full_path, path, offset, offset + length)
        # print "Reading {}".format(path)
        return pt[offset:offset+length]

    def _encrypt(self, pt, iv_int, offset_int):
        nonce = iv_int + offset_int % 2**56
        nonce_str = "{0:0{1}x}".format(nonce, 20)
        # print "Nonce str: {}".format(nonce_str)
        nonce_str = binascii.a2b_hex(nonce_str)
        # cipher = AES.new(self.encryption_key, AES.MODE_CTR, nonce=nonce_str)
        cipher = AES.new(self.encryption_key, AES.MODE_ECB)
        return cipher.encrypt(pt)

    def write(self, path, buf, offset, fh):
        # print "\n\n\n"
        full_path = self._full_path(path)
        file_length = os.path.getsize(full_path)
        # new_file_length = offset + len(buf)
        # print "Old file len: {}".format(file_length)
        # print "New file len: {}".format(new_file_length)
        # print "Pt: {}".format(binascii.hexlify(buf))

        # print "File length: {}".format(file_length)

        block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(offset, len(buf))

        last_block_start = file_length - file_length % 16
        last_block_end = last_block_start + 16

        if block_end > file_length:
            #if the block end is outside of the file length
            file_pt = self._decrypt_file(full_path, path, block_begin, file_length)
        else:
            file_pt = self._decrypt_file(full_path, path, block_begin, block_end)

        # print "PT: {}".format(file_pt)

        starting_padding = len(file_pt) - file_length
        original_padding_start = len(file_pt) - starting_padding
        original_length = file_length
        index = 0
        offset_into_block = data_begin
        padding_added = 0
        original_padding_overwritten = 0
        #TODO: assume that are always adding to the end of the file or part of the existing file. Do not have to pad between the start of the data that is being placed and the end of the file
        starting_pt_len = len(file_pt)
        file_pt_list = list(file_pt)
        # print "here"
        # for i in range(block_begin, block_end):
        #     if i < starting_pt_len:
        #         if i >= data_begin and i < data_end:
        #             buf_cur = buf[index]
        #             file_pt_list[i] = buf_cur
        #             index = index + 1
        #             if i >= original_length:
        #                 original_padding_overwritten = original_padding_overwritten + 1
        #     else:
        #         if i >= data_begin and i < data_end:
        #             file_pt_list.append(buf[index])
        #             index = index + 1
        #         elif i >= data_end:
        #             file_pt_list.append('\0')
        #             padding_added = padding_added + 1
        index = 0
        original_pt_len = len(file_pt_list)
        file_index = data_begin
        # bytes_written = 0
        # print "Index: {}".format(index)
        # print "Original length: {}".format(original_pt_len)
        # print "Block begin: {}, block end: {}, data begin: {}, data end: {}".format(block_begin, block_end, data_begin, data_end)
        # need_to_append = True
        for i in range(data_begin - block_begin, data_end - block_begin):
            # print "i: {}, index: {}, file_index: {}".format(i, index, file_index)
            if i >= original_pt_len:
                file_pt_list.append(buf[index])
            else:
                file_pt_list[i] = buf[index]
            index = index + 1
            file_index = file_index + 1
        # print "i: {}, index: {}, file_index: {}".format(i, index, file_index)
        # if file_index > original_pt_len:
        #     print "Appending padding to file"
        #     while file_index < block_end:
        #         file_pt_list.append('\0')
        #         file_index = file_index + 1
        while len(file_pt_list) < block_length:
            file_pt_list.append('\0')



        file_pt = ''.join(file_pt_list)
        # print "New pt:\n{}".format(binascii.hexlify(file_pt))
        # print "New pt len: {}".format(len(file_pt))

        iv = self.metadata_dict[path]["iv"]
        # print "pt before encrypt: {}".format(binascii.hexlify(file_pt))
        iv_offset = int(block_begin/16)
        # print "Iv offset encryption: {}".format(iv_offset)
        file_ct = self._encrypt(file_pt, iv, iv_offset)
        # print "ct:\n{}".format(binascii.hexlify(file_ct))

        last_block = ''
        # print "CT len: {}".format(len(file_ct))
        if len(file_ct)%16 == 0:
            last_block_start = len(file_ct) - 16
        else:
            # print "CT len % 16: {}".format(len(file_ct) % 16)
            # print "CT len % 16 *16: {}".format((len(file_ct)%16)*16)
            last_block_start = int(len(file_ct)/16)*16
        # print "CT last block start: {}".format(last_block_start)
        for i in range(last_block_start, last_block_start + 16):
            last_block = last_block + file_ct[i]

        # print "New last block:\n{}".format(binascii.hexlify(last_block))

        self.metadata_dict[path]["file_last_block"] = binascii.hexlify(last_block)
        self._write_metadata(self.metadata_file)
        #if padding was added, then we only need to subtract that from the length of the string and write the string without padding to the file_pt

        #else, we need to figure out how much padding we overwrote

        # if padding_added > 0:
        #     str_to_write = file_ct[0:(len(file_ct) - padding_added)]
        #     # print "Updating file, padding added: {}".format(path)
        #     # print "writing: {}".format(binascii.hexlify(str_to_write))
        #     with open(full_path, 'w') as backing_file:
        #         backing_file.write(str_to_write)
        #     return len(buf)
        # else:
        #     padding_remaining = starting_padding - original_padding_overwritten
        #     str_to_write = file_ct[0:(len(file_ct) - padding_remaining)]
        #     # print "writing: {}".format(binascii.hexlify(str_to_write))
        #     # print "Updating file, no padding added: {}".format(path)
        #     with open(full_path, 'w') as backing_file:
        #         backing_file.write(str_to_write)
        #     return len(buf)
        with open(full_path, 'r+') as backing_file:
            backing_file.seek(block_begin)
            # current_begin = 0
            current_end = data_end - block_begin
            data_to_write = file_ct[0:current_end]
            # print "Writing data: {}".format(binascii.hexlify(data_to_write))
            backing_file.write(data_to_write)
        return len(buf)


    def truncate(self, path, length, fh=None):
        full_path = self._full_path(path)
        file_length = os.path.getsize(full_path)
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
        data_begin = offset# - block_begin
        # data_end = block_end - (offset + length)
        data_end = data_begin + length
        return block_begin, block_end, block_length, data_begin, data_end


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--mount_point", help="Path to mount to", required=True)
    parser.add_argument("--storage_dir", help="Path to directory to store encrypted data", required=True)
    encryption_group = parser.add_mutually_exclusive_group(required=True)
    encryption_group.add_argument("--encryption_key", help="128-bit encryption key specified as a hex string starting with 0x")
    encryption_group.add_argument("--passphrase", help="Pssphrase as an ASCII string to use to generate an encryption key")
    parser.add_argument("--salt", help="Salt to use with KDF for generating a key from a passphrase. Must be a 128-bit hex string beginning with 0x")
    parser.add_argument("--metadata_file", help="File to hold metadata",
    required=True)
    args = parser.parse_args()
    encryption_key = ''
    print "Starting key"
    if args.encryption_key is not None:
        encryption_key = binascii.unhexlify(args.encryption_key)
    else:
        if args.salt is None:
            print "A salt is required when using a passphrase"
            sys.exit(-1)
        encryption_key = KDF.scrypt(args.passphrase, args.salt, 16, 16384, 8, 1)
    print "Finished with Key"
    FUSE(EncryptedFS(args.storage_dir, encryption_key, args.metadata_file), args.mount_point, nothreads=True, foreground=True, big_writes=True, max_read=1000000000, max_write=1000000000)
