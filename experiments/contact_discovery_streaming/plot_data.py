#!/usr/bin/python

import matplotlib
matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42
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
    parser.add_argument(
        "--iterations",
        required=True,
        type=int
    )
    args  = parser.parse_args()
    db_sizes = []
    sw_elapsed = []
    hw_elapsed = []
    sw_avgs = []
    hw_avgs = []
    sw_stds = []
    hw_stds = []
    counter = 0
    with open(args.file) as data_file:
        reader = csv.DictReader(data_file)
        for line in reader:
            current_db_size = int(line["DB_SIZE"])
            if current_db_size not in db_sizes:
                db_sizes.append(current_db_size)
            if (counter + 1) == args.iterations:
                sw_avgs.append(numpy.average(sw_elapsed))
                hw_avgs.append(numpy.average(hw_elapsed))
                sw_stds.append(numpy.std(sw_elapsed))
                hw_stds.append(numpy.std(hw_elapsed))
                sw_elapsed = []
                hw_elapsed = []
                counter = 0
            sw_elapsed.append(float(line["SW_ELAPSED"]))
            hw_elapsed.append(float(line["HW_ELAPSED"]))
            counter += 1
    # pylab.semilogy(db_sizes, sw_avgs, '+')
    # pylab.semilogy(db_sizes, hw_avgs, '*')
    pylab.errorbar(
        db_sizes, sw_avgs, sw_stds, fmt="+-", label="SW Reference Contact Match", ms=8
    )
    pylab.errorbar(
        db_sizes, hw_avgs, hw_stds, fmt="*-", label="HW Contact Match", ms=8
    )
    # pylab.yscale("log")
    pylab.ylabel("Contact Match Elapsed Time (s)")
    pylab.xlabel("Number of Contacts in Database")
    pylab.legend()
    pylab.savefig("contact_matcher_hls.pdf")
    pylab.savefig("contact_matcher_hls.png")
    # pylab.xscale("log")
    pylab.show()
