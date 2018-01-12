#!/usr/bin/python3

import pexpect
import os
import time
import hashlib
import random
import string
import datetime

ITERATIONS=25

def get_random_password(length):
    characters = string.ascii_lowercase + string.ascii_uppercase + string.digits
    password = "".join(random.SystemRandom().choice(characters) for _ in range(length))
    return password

if __name__ == "__main__":
    if os.path.exists("test.dat"):
        os.remove("test.dat")
    child = pexpect.spawn("./password_manager")
    child.expect("Program hash and load finished", timeout=5)
    print(child.before)
    child.expect("Create account or login\? \(C/L\): ")
    child.sendline("c")
    child.expect("Enter Master Password: ", timeout=2)
    master_password = get_random_password(255)
    child.sendline(master_password)
    child.expect("Create account or login\? \(C/L\): ", timeout=2)
    child.sendline("l")
    child.expect("Enter master password: ", timeout=2)
#    child.sendline("test")
    child.sendline(master_password)
    print(child.before)
    passwords = {}
    add_results = []
    get_results = []
    for length in range(4, 256, 4):
        for iteration in range(ITERATIONS):
            child.expect("Add web account credentials or get web account credentials \(a/g\): ")
            print(child.before)
            current_name = "test{}_{}".format(iteration, length)
            current_user = "user{}_{}".format(iteration, length)
            random_password = get_random_password(length)
            passwords[current_name] = random_password

            #test adding password
            add_start = time.time()
            child.sendline("a")
            child.expect("Enter website name: ")
            child.sendline(current_name)
            child.expect("Enter website username: ")
            child.sendline(current_user)
            child.expect("Enter website password: ")
            child.sendline(random_password)
            add_end = time.time()
            add_results.append((length, add_end - add_start))
#            print(child.before)

            # test getting password
            child.expect("Add web account credentials or get web account credentials \(a/g\): ")
            get_start = time.time()
            child.sendline("g")
            child.expect("Enter website name to get credentials: ")
            child.sendline(current_name)
            child.expect(random_password)
#            print(child.after)
            get_end = time.time()
            get_results.append((length, get_end - get_start))
            print("Fetched creds:\b")
            print(child.before)
            print(child.after)
#    child.expect("Add web account credentials or get web account credentials \(a/g\): ", timeout=2)
#    child.sendline("g")
#    child.expect("Enter website name to get credentials: ")
#    child.sendline("test")
#    print(child.before)
#    child.interact()
    try:
        os.makedirs("data/")
    except FileExistsError:
        pass
    datafile = "data/password_manager_microblaze_test_{}.csv".format(datetime.datetime.now().isoformat())
    with open(datafile, 'w+') as data_out:
        data_out.write("DATA_LENGTH,WRITE_TIME,READ_TIME\n")
        for i in range(len(add_results)):
            add_length, add_time = add_results[i]
            get_length, get_time = get_results[i]
            data_out.write("{},{},{}\n".format(add_length, add_time, get_time))
