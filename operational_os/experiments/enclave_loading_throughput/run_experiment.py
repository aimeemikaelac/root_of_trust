#!/usr/bin/python3.6

import pexpect
import argparse
import shlex
import sys
import time

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
    parser.add_argument(
        "--data_size",
        required=True,
        type=int
    )
    success = False
    while not success:
        try:
            start = time.time()
            child = pexpect.spawn(
                shlex.split(
                    "{} {}".format(
                        args.arm_binary,
                        args.mb_binary
                    )
                )
            )
            child.expect("Program hash and load finished", timeout=args.timeout)
            child.interact()
            end = time.time()
            success = True
        except pexpect.TIMEOUT:
            success=False
    duration = end-start
    with open(args.out_file, "a") as out_file:
        out_file.write("{},{}\n".format(args.data_size, duration))
