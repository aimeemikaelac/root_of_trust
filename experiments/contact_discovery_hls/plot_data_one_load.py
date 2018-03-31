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
    sw_avgs = []
    sw_stds = []
    hw_avgs = []
    hw_stds = []
    db_sizes = []
    sw_elapsed = []
    hw_elapsed = []
    running_db_size = None
    counter = 0
    with open(args.file) as data_file:
        reader = csv.DictReader(data_file)
        # data = list(reader)
        for line in reader:
            current_db_size = line["DB_SIZE"]
            # if current_db_size not in db_sizes:
            #     db_sizes.append(int(current_db_size))
            if counter > 0 and counter % 100 == 0:
                sw_avgs.append(numpy.average(sw_elapsed))
                sw_stds.append(numpy.std(sw_elapsed))
                hw_avgs.append(numpy.average(hw_elapsed))
                hw_stds.append(numpy.std(hw_elapsed))
                sw_elapsed = []
                hw_elapsed = []
                running_db_size = current_db_size
                db_sizes.append(int(current_db_size))
            sw_elapsed.append(float(line["SW_ELAPSED"]))
            hw_elapsed.append(float(line["HW_ELAPSED"]))
            counter += 1
    # print(len(db_sizes))
    # print(len(sw_))
    # pylab.semilogy(sw_elapsed)
    # pylab.semilogy(hw_elapsed)
    # sorted_sw_elapsed = numpy.sort(sw_elapsed)
    # sorted_hw_elapsed = numpy.sort(hw_elapsed)
    # p1 = 1. * numpy.arange(len(sorted_sw_elapsed))/(len(sorted_sw_elapsed) - 1)
    # p2  = 1. * numpy.arange(len(sorted_hw_elapsed))/(len(sorted_hw_elapsed) - 1)
    pylab.semilogy(db_sizes, sw_avgs, '+')
    pylab.semilogy(db_sizes, hw_avgs, '*')
    # pylab.errorbar(db_sizes, sw_avgs, fmt='+', yerr=sw_stds)
    # pylab.errorbar(db_sizes, hw_avgs, fmt='*', yerr=hw_stds)
    pylab.xlabel("Database Size (bytes)")
    pylab.ylabel("Total Matching Time (s)")
    pylab.legend(["ARM Results", "FPGA Results"])
    pylab.savefig("contact_discovery_one_load.pdf", bbox_inches="tight")
    # pylab.tick_params(
    # axis='x',          # changes apply to the x-axis
    # which='both',      # both major and minor ticks are affected
    # bottom='off',      # ticks along the bottom edge are off
    # top='off',         # ticks along the top edge are off
    # labelbottom='off')
    # # ax = pylab.axes()
    # pylab.xlabel("Test")
    pylab.show()
