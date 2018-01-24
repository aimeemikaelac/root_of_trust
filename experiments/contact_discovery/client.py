#!/usr/bin/python

# generate a db of random phone #s
def generate_database(size):
    pass

# load/save db with a file
def save_database(filename, database):
    pass

def load_database(filename):
    pass

# send db to the remote app
def upload_database(database):
    pass

# generate a list of numbers and hash them, using some from the database
# and some new ones
def generate_contacts(size):
    pass

# send the hashed numbers to the enclave after verifying a remote attestation
def perform_remote_matching(contacts):
    pass

if __name__ == "__main__":
    if not database_exists():
        database = generate_database(size)
        save_database(filename, database)
    else:
        database = load_database(filename)
    if remote_database_needed():
        upload_database(database)
    contacts = generate_contacts(size)
    # begin timing
    perform_remote_matching(contacts)
    #end timing
