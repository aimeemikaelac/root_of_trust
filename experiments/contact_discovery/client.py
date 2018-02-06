#!/usr/bin/python

import random
import string
import hashlib
import pickle
import socket
import os
import argparse
import binascii
import struct

DATABASE_FILE = "phone_number_database.pkl"
CONTACTS_FILE = "contacts.pkl"

def generate_random_phone_number():
    return ''.join(
        random.SystemRandom().choice(string.digits) for x in range(10)
    )

# generate a db of random phone #s
def generate_database(size, comparison_database=None):
    database = set()
    if comparison_database is None:
        comparison_database = set()
    for _number in range(size):
        while True:
            random_number = generate_random_phone_number()
            sha512 = hashlib.sha512()
            sha512.update(random_number)
            digest = sha512.digest()
            if digest in comparison_database:
                continue
            if digest not in database:
                database.add(digest)
                break
    return database

# load/save db with a file
def save_database(filename, database):
    with open(filename, 'wb') as out:
        pickle.dump(database, out)

def load_database(filename):
    with open(filename, 'rb') as infile:
        return pickle.load(infile)

# send db to the remote app
def upload_database(database, server, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect((server, port))
    sock.send("h")
    sock.send(struct.pack("!i", len(database)))
    print("Chunks to send: {}".format(len(database)))
    for hashed in database:
        sock.send(hashed)
        print("Sent chunk: {}".format(binascii.hexlify(hashed)))
        # sock.send("\n")
    sock.send("f")
    sock.close()


# generate a list of numbers and hash them, using some from the database
# and some new ones
def generate_contacts(size, database, percentage_database=None):
    if not percentage_database:
        percentage_database = random.SystemRandom().uniform(.1, .9)
    number_database = int(size*percentage_database)
    number_new = size - number_database
    contacts = set()
    contacts.update(
        generate_database(number_new, comparison_database=database)
    )
    print("Number new: {}".format(number_new))
    for _number in range(number_database):
        while True:
            random_choice = random.SystemRandom().choice(list(database))
            if random_choice not in contacts:
                contacts.add(random_choice)
                break
    return contacts

# send the hashed numbers to the enclave after verifying a remote attestation
def perform_remote_matching(contacts, server, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect((server, port))
    sock.send("c")
    sock.send(struct.pack("!i", len(contacts)))
    print("Chunks to send: {}".format(len(contacts)))
    for contact in contacts:
        sock.send(contact)
        print("Sent chunk: {}".format(binascii.hexlify(contact)))
        # sock.send("\n")
    sock.send("f")
    received = 0
    results = ''
    # while received != '\n':
    operation = sock.recv(1)
    matched_contacts = list()
    if operation == 'm':
        # current_result = ''
        length = struct.unpack("!i", sock.recv(struct.calcsize("!i")))[0]
        print("Expecting to receive {}".format(length))
        while received < length:
            current_result = sock.recv(64)
            # current_result = struct.unpack("B"*64, current_result)
            matched_contacts.append(current_result)
            print("Received chunk: {}".format(binascii.hexlify(current_result)))
            received += 1
    sock.close()
    matched_contacts_num = 0
    unknown_contacts_num = 0
    for contact in matched_contacts:
        if contact in contacts:
            matched_contacts_num += 1
        else:
            unknown_contacts_num += 1
    return matched_contacts, matched_contacts_num, unknown_contacts_num

def database_exists(filename):
    return os.path.exists(filename) and os.path.isfile(filename)

if __name__ == "__main__":
    argparser = argparse.ArgumentParser()
    argparser.add_argument("--db_file", required=False, default=DATABASE_FILE)
    argparser.add_argument("--db_size", required=False, type=int, default=200)
    argparser.add_argument(
        "--regenerate_db", required=False, action="store_true"
    )
    argparser.add_argument(
        "--contacts_file", required=False, default=CONTACTS_FILE
    )
    argparser.add_argument(
        "--contacts_size", required=False, type=int, default=50
    )
    argparser.add_argument(
        "--regenerate_contacts", required=False, action="store_true"
    )
    argparser.add_argument(
        "--contacts_percentage", required=False, type=float, default=.5
    )
    argparser.add_argument(
        "--server", required=True
    )
    argparser.add_argument(
        "--port", type=int, required=False, default=9000
    )
    args = argparser.parse_args()
    if not database_exists(args.db_file) or args.regenerate_db:
        print("Regenerating database")
        database = generate_database(args.db_size)
        save_database(args.db_file, database)
    else:
        print("Loading database")
        database = load_database(args.db_file)
    if not database_exists(args.contacts_file) or args.regenerate_contacts:
        print("Generating contacts list")
        contacts = generate_contacts(
            args.contacts_size,
            database,
            percentage_database=args.contacts_percentage
        )
        save_database(args.contacts_file, contacts)
    else:
        print("Loading contacts list")
        contacts = load_database(args.contacts_file)
    print("Uploading database")
    upload_database(database, args.server, args.port)
    # begin timing
    print("Performing remote matching")
    matched_contacts, matched_contacts_num, unknown_contacts_num = (
        perform_remote_matching(contacts, args.server, args.port)
    )
    #end timing
    print("Number of contacts expected to match: {}".format(
        int(args.contacts_size * args.contacts_percentage)
    ))
    print("Number of contacts matched: {}".format(matched_contacts_num))
    print("Number of unknown contacts returned: {}".format(
        unknown_contacts_num
    ))
