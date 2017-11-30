#!/usr/bin/python3.6

import pexpect
import argparse
import shlex
import sys
import time
import os

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--arm_binary",
        required=True
    ),
    parser.add_argument(
        "--mb_binary",
        required=True
    )
    parser.add_argument(
        "--timeout",
        required=True,
        type=int
    )
    parser.add_argument(
        "--out_file",
        required=True
    )
    args = parser.parse_args()
    success = False
    while not success:
        try:
            start = time.time()
            child = pexpect.spawn(
                "./{} {}".format(args.arm_binary, args.mb_binary)
            )
            child.expect("Program hash and load finished", timeout=args.timeout)
            child.interact()
            end = time.time()
            success = True
        except pexpect.TIMEOUT:
            print("Retrying", file=sys.stderr)
            time.sleep(.5)
            success=False
    duration = end-start
    data_size = os.path.getsize(args.mb_binary)
    data = "{},{}\n".format(data_size, duration)
    with open(args.out_file, "a") as out_file:
        out_file.write(data)
    print(data)
