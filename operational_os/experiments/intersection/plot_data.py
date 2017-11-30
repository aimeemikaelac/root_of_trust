#!/usr/bin/python3

import matplotlib
import pylab
import argparse
import csv
from collections import defaultdict
import numpy

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--file",
        required=True
    )
    args = parser.parse_args()
    with open(args.file) as data_file:
        reader = csv.DictReader(data_file)
        data = list(reader)
    attestation_times = []
    for item in data:
        attestation_times.append(float(item["ATTESTATION_TIME"]))
    print("Average remote attestation time: {}".format(
        numpy.average(attestation_times)
    ))
    print("Remote attestation time standard deviation: {}".format(
        numpy.std(attestation_times)
    ))
    print("Remote attestation trials: {}".format(len(attestation_times)))
