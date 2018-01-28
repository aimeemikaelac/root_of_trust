#!/usr/bin/python

import random
import string
import hashlib
import pickle
import socket
import os
import argparse

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
    sock.send("h\n")
    for hashed in database:
        sock.send(hashed)
        sock.send("\n")
    sock.send("f\n")
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
    for _number in range(number_database):
        while True:
            random_choice = random.SystemRandom.choice(database)
            if random_choice not in contacts:
                contacts.add(random_choice)
                break

# send the hashed numbers to the enclave after verifying a remote attestation
def perform_remote_matching(contacts, server, port):
    # perform_remote_attestation()
    sock.connect((server, port))
    sock.send("c\n")
    for contact in contacts:
        sock.send(hashed)
        sock.send("\n")
    sock.send("f\n")
    received = ''
    results = ''
    while received != '\n':
        received = sock.recv(1)
        results += received
    matched_contacts = list()
    if results == "m":
        current_result = ''
        while True:
            received = ''
            while received != '\n':
                received = sock.recv(1)
                current_result += received
            if current_result == "f":
                break
            matched_contacts.append(current_result)
    matched_contacts_num = 0
    unknown_contacts_num = 0
    for contact in matched_contacts:
        if contact in contacts:
            matched_contacts += 1
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
        "--contacts_percentage", required=False, type=float
    )
    args = argparser.parse_args()
    if not database_exists(args.db_file) or args.regenerate_db:
        database = generate_database(args.db_size)
        save_database(args.db_file, database)
    else:
        database = load_database(args.db_file)
    if not database_exists(args.contacts_file):
        contacts = generate_contacts(
            args.contacts_size,
            database,
            percentage_database=args.contacts_percentage
        )
        save_database(args.contacts_file, contacts)
    else:
        contacts = load_database(args.contacts_file)
    upload_database(database)
    # begin timing
    matched_contacts, matched_contacts_num, unknown_contacts_num = (
        perform_remote_matching(contacts)
    )
    #end timing
    print("Number of contacts expected to match: {}".format(
        args.contacts_size * args.contacts_percentage
    ))
    print("Number of contacts matched: {}".format(matched_contacts_num))
    print("Number of unknown contacts returned: {}".format(
        unknown_contacts_num
    ))
