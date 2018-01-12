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
    mb_times = defaultdict(list)
    # ref_times = defaultdict(list)
    sizes = set()
    for item in data:
        size = int(item["DATA_SIZE"])
        mb_time = float(item["DURATION"])
        # ref_time = float(item["ARM_TIME"])
        mb_times[size].append(mb_time)
        # ref_times[size].append(ref_time)
        sizes.add(size)
    mb_avgs = []
    mb_stds = []
    # ref_avgs = []
    # ref_stds = []
    ordered_sizes = sorted(list(sizes))
    for size in ordered_sizes:
        mb_avgs.append(numpy.average(mb_times[size]))
        mb_stds.append(numpy.std(mb_times[size]))
        # ref_avgs.append(numpy.average(ref_times[size]))
        # ref_stds.append(numpy.std(ref_times[size]))
    # print(mb_stds)
    # print(ref_stds)
    # yerr=mb_stds,
    pylab.errorbar(
        ordered_sizes, mb_avgs, fmt="*-", label="Enclave Loading Time"
    )
    # yerr=ref_stds,
    # pylab.errorbar(
    #     ordered_sizes, ref_avgs, fmt="x-", label="Reference Memory Access"
    # )
    # pylab.yscale("log")
    # pylab.xscale("log")
    pylab.ylabel("Execution Time (s)")
    pylab.xlabel("Data size (bytes)")
    pylab.legend(loc=4)
    pylab.savefig("enclave_loading_experiment.pdf")
    pylab.savefig("enclave_loading_experiment.png")
    pylab.show()
