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
        # binascii.hexlify('\0'*16)
        self.metadata_dict[path]["file_last_block"] = ''
        rand_iv = random.getrandbits(64)
        self.metadata_dict[path]["iv"] = rand_iv
        self._write_metadata(self.metadata_file)

    def create(self, path, mode, fi=None):
        full_path = self._full_path(path)
        self._init_file_metadata(path)
        print "Creating file {}".format(path)
        return os.open(full_path, os.O_WRONLY | os.O_CREAT, mode)

    def _decrypt(self, ct, iv_int, offset_int):
        return self._encrypt(ct, iv_int, offset_int)

    def _decrypt_file(self, full_path, path):
        encrypted_file_data = np.fromfile(full_path, dtype=np.uint8)
        if path in self.metadata_dict:
            last_block = binascii.unhexlify(
                self.metadata_dict[path]["file_last_block"])
            iv = self.metadata_dict[path]["iv"]
        else:
            print "Last encrypted block for file {} not in metadata. Unrecoverable error. Exiting.".format(path)
            sys.exit(-1)
        last_block_start = encrypted_file_data.size - encrypted_file_data.size % 16
        encrypted_file_data = encrypted_file_data[0:last_block_start]
        encrypted_file_data = np.append(
            encrypted_file_data, [ord(item) for item in list(last_block)])

        encrypted_file_data = np.array(encrypted_file_data, np.uint8)
        self._decrypt(encrypted_file_data, iv, 0)

        encrypted_file_data = np.array(encrypted_file_data, np.uint8)
        return encrypted_file_data

    def read(self, path, length, offset, fh):
        full_path = self._full_path(path)

        pt = self._decrypt_file(full_path, path)
        data = pt[offset:offset + length]
        data_read = ''.join(chr(item)
                            for item in (pt[offset:offset + length]).tolist())
        return data_read

    # this will encrypt th pt in-place now
    def _encrypt(self, pt, iv_int, offset_int):
        nonce = iv_int + offset_int % 2**56
        fpga.encrypt(pt, nonce)
        return pt

    def write(self, path, buf, offset, fh):
        full_path = self._full_path(path)
        file_length = os.path.getsize(full_path)
        block_begin, block_end, block_length, data_begin, data_end = self._get_encryption_offsets(
            offset, len(buf))
        file_pt_np = self._decrypt_file(full_path, path)
        file_pt = ''.join(chr(item) for item in file_pt_np.tolist())
        starting_padding = len(file_pt) - file_length
        original_padding_start = len(file_pt) - starting_padding
        original_length = file_length
        index = 0
        offset_into_block = data_begin
        padding_added = 0
        original_padding_overwritten = 0
        # TODO: assume that are always adding to the end of the file or part of
        # the existing file. Do not have to pad between the start of the data
        # that is being placed and the end of the file
        starting_pt_len = len(file_pt)
        file_pt_list = list(file_pt)
        for i in range(block_begin, block_end):
            if i < starting_pt_len:
                if i >= data_begin and i < data_end:
                    buf_cur = buf[index]
                    file_pt_list[i] = buf_cur
                    index = index + 1
                    if i >= original_length:
                        original_padding_overwritten = original_padding_overwritten + 1
            else:
                if i >= data_begin and i < data_end:
                    file_pt_list.append(buf[index])
                    index = index + 1
                elif i >= data_end:
                    file_pt_list.append('\0')
                    padding_added = padding_added + 1
        file_pt = np.fromstring(''.join(file_pt_list), np.uint8)
        iv = self.metadata_dict[path]["iv"]
        self._encrypt(file_pt, iv, 0)
        file_ct = file_pt

        last_block = np.array([], dtype=np.uint8)
        last_block_start = len(file_ct) - 16
        for i in range(last_block_start, last_block_start + 16):
            last_block = np.append(last_block, file_ct[i])

        self.metadata_dict[path][
            "file_last_block"] = binascii.hexlify(last_block.tobytes())
        self._write_metadata(self.metadata_file)
        # if padding was added, then we only need to subtract that from the
        # length of the string and write the string without padding to the
        # file_pt

        # else, we need to figure out how much padding we overwrote

        if padding_added > 0:
            str_to_write = ''.join(chr(item) for item in (
                file_ct[0:(len(file_ct) - padding_added)]).tolist())
            print "Updating file, padding added: {}".format(path)
            with open(full_path, 'w') as backing_file:
                backing_file.write(str_to_write)
            return len(buf)
        else:
            padding_remaining = starting_padding - original_padding_overwritten
            str_to_write = ''.join(chr(item) for item in (
                file_ct[0:(len(file_ct) - padding_remaining)]).tolist())
            print "Updating file, no padding added: {}".format(path)
            with open(full_path, 'w') as backing_file:
                backing_file.write(str_to_write)
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
        block_begin = int(math.floor(offset / 16) * 16)
        block_end = int((math.floor((offset + length) / 16) + 1) * 16)
        block_length = block_end - block_begin
        data_begin = offset - block_begin
        data_end = data_begin + length
        return block_begin, block_end, block_length, data_begin, data_end

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--mount_point", help="Path to mount to", required=True)
    parser.add_argument(
        "--storage_dir", help="Path to directory to store encrypted data", required=True)
    parser.add_argument("--metadata_file", help="File to hold metadata",
                        required=True)
    args = parser.parse_args()
    FUSE(EncryptedFS(args.storage_dir, args.metadata_file),
         args.mount_point, nothreads=True, foreground=True)
