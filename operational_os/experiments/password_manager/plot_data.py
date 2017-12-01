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
        "--file_mb",
        required=True
    )
    parser.add_argument(
        "--file_arm",
        required=True
    )
    args = parser.parse_args()
    with open(args.file_mb) as data_file:
        reader = csv.DictReader(data_file)
        data_mb = list(reader)
    with open(args.file_arm) as data_file:
        reader = csv.DictReader(data_file)
        data_arm = list(reader)
    mb_times_write = defaultdict(list)
    mb_times_read = defaultdict(list)
    ref_times_write = defaultdict(list)
    ref_times_read = defaultdict(list)
    sizes_mb = set()
    sizes_ref = set()
    for item in data_mb:
        size = int(item["DATA_LENGTH"])
        mb_time_write = float(item["WRITE_TIME"])
        mb_time_read = float(item["READ_TIME"])
        # ref_time = float(item["ARM_TIME"])
        mb_times_read[size].append(mb_time_read)
        mb_times_write[size].append(mb_time_write)
        # ref_times[size].append(ref_time)
        sizes_mb.add(size)
    for item in data_arm:
        size = int(item["DATA_LENGTH"])
        ref_time_write = float(item["WRITE_TIME"])
        ref_time_read = float(item["READ_TIME"])
        # ref_time = float(item["ARM_TIME"])
        ref_times_read[size].append(ref_time_read)
        ref_times_write[size].append(ref_time_write)
        # ref_times[size].append(ref_time)
        sizes_ref.add(size)
    mb_avgs_read = []
    mb_avgs_write = []
    mb_stds_read = []
    mb_stds_write = []
    ref_avgs_read = []
    ref_avgs_write = []
    ref_stds_read = []
    ref_stds_write = []
    # ref_avgs = []
    # ref_stds = []
    ordered_sizes_mb = sorted(list(sizes_mb))
    ordered_sizes_ref = sorted(list(sizes_ref))
    for size in ordered_sizes_mb:
        mb_avgs_read.append(numpy.average(mb_times_read[size]))
        mb_avgs_write.append(numpy.average(mb_times_write[size]))
        mb_stds_read.append(numpy.std(mb_times_read[size]))
        mb_stds_write.append(numpy.std(mb_times_write[size]))
    for size in ordered_sizes_ref:
        ref_avgs_read.append(numpy.average(ref_times_read[size]))
        ref_avgs_write.append(numpy.average(ref_times_write[size]))
        ref_stds_read.append(numpy.std(ref_times_read[size]))
        ref_stds_write.append(numpy.std(ref_times_write[size]))
        # ref_avgs.append(numpy.average(ref_times[size]))
        # ref_stds.append(numpy.std(ref_times[size]))
    # print(mb_stds)
    # print(ref_stds)
    # yerr=mb_stds,
    pylab.errorbar(
        ordered_sizes_mb, mb_avgs_read,yerr=mb_stds_read, fmt="*-", label="Enclave Password Read"
    )
    # yerr=ref_stds,
    pylab.errorbar(
        ordered_sizes_ref, ref_avgs_read,yerr=ref_stds_read, fmt="x-", label="Reference Password Read"
    )
    # pylab.yscale("log")
    # pylab.xscale("log")
    pylab.ylabel("Execution Time (s)")
    pylab.xlabel("Data size (bytes)")
    pylab.legend(loc=1)
    pylab.savefig("password_manager_read.pdf")
    pylab.savefig("password_manager_read.png")
    # pylab.show()

    pylab.figure()
    # pylab.yscale("log")
    pylab.errorbar(
        ordered_sizes_mb, mb_avgs_write, yerr=mb_stds_write, fmt="*-", label="Enclave Password Write"
    )
    pylab.legend(loc=4)
    pylab.savefig("password_manager_write_mb.pdf")
    pylab.savefig("password_manager_write_mb.png")
    pylab.figure()
    # yerr=ref_stds,
    pylab.errorbar(
        ordered_sizes_ref, ref_avgs_write, yerr=ref_stds_write, fmt="x-", label="Reference Password Write"
    )
    pylab.legend(loc=4)
    pylab.savefig("password_manager_write_ref.pdf")
    pylab.savefig("password_manager_write_ref.png")
    pylab.show()
