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
    args  = parser.parse_args()
    icap_throughputs = []
    icap_times = []
    with open(args.file) as data_file:
        reader = csv.DictReader(data_file)
        # data = list(reader)
        for line in reader:
            icap_times.append(float(line["ICAP_ELAPSED"]))
            icap_throughputs.append(
                float(float(line["FILE_SIZE"])/float(line["ICAP_ELAPSED"])
            ))
    throughput_average = numpy.average(icap_throughputs)
    throughput_std = numpy.std(icap_throughputs)
    times_average = numpy.average(icap_times)
    print(
        "ICAP average throughput: {} KB/s, STD: {} KB/s. Average Time: {}s"
        .format(
            throughput_average/1024.0, throughput_std/1024.0, times_average
        )
    )
    pylab.show()
