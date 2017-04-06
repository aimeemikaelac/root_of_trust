#!/usr/bin/python

import pylab
import matplotlib
matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42
import numpy
import csv
import os
import sys


# TIMESTAMPS = ["2017-03-30T06:35:54.726002", "2017-03-30T09:45:20.551204"]
TIMESTAMPS = ["2017-04-02T03:35:32.431002"]
# TIMESTAMP_LABELS = {"2017-03-30T06:35:54.726002":"SDCARD",
#                     "2017-03-30T09:45:20.551204":"TMPFS"}
TIMESTAMP_LABELS = {"2017-04-02T03:35:32.431002":"TMPFS"}
SUB_EXPERIMENTS = ["python", "fpga"]
EXPERIMENT_LABELS = {"python":"Python FS",
                     "fpga":"FPGA FS"}
EXPERIMENT_MARKER = {"python":"o-",
                     "fpga":"D-"}
# TRIALS = range(1000, 30000, 1000)
TRIALS = [(1024*2**x) for x in range(1,13)]

def get_sub_experiment_data(sub_experiment, timestamp):
    data = {}
    averages = []
    times_averages = []
    stdevs = []
    data_bytes = []
    throughputs_averages = []
    for trial in TRIALS:
        filename = "data/{1}/{0}/{0}_{1}_{2}.csv".format(sub_experiment, timestamp, trial)
        if not os.path.exists(filename):
            print "Skipping file {}".format(filename)
            continue
        data[trial] = {}
        with open(filename) as data_file:
            reader = csv.DictReader(data_file)
            data[trial]['data'] = list(reader)
        throughputs = numpy.array([])
        times = numpy.array([])
        data_sum = 0
        data_total = 0
        for item in data[trial]['data']:
            num_bytes = int(item["Bytes"])#/1024.0
            num_time = float(item["Time"])
            print "Num bytes: {}".format(num_bytes)
            throughputs = numpy.append(throughputs, (num_bytes/num_time)/1024.0)
            # print "{},{}".format(int(item["Bytes"]), float(item["Time"]))
            data_sum = data_sum + num_bytes
            data_total = data_total + 1
            times = numpy.append(times, num_time)
        data_average = data_sum/data_total
        if data_average not in TRIALS:
            print "Data average {} not in trials".format(data_average)
            continue
        data[trial]['average'] = numpy.average(throughputs)
        data[trial]['std'] = numpy.std(throughputs)#numpy.std(times_averages)
        data[trial]['time_average'] = numpy.average(times)
        averages.append(data[trial]['average'])
        stdevs.append(data[trial]['std'])
        times_averages.append(data[trial]['time_average'])
        throughput_average = numpy.average(throughputs)
        throughputs_averages.append(throughput_average)
        data_bytes.append(data_average)
        data[trial]['throughputs'] = throughputs
        print "Throughputs average for {} {},{}:  {}".format(TIMESTAMP_LABELS[timestamp], sub_experiment, trial, throughput_average)
        # print "Throughputs mean for {} {},{}: {}".format(TIMESTAMP_LABELS[timestamp], sub_experiment, trial, numpy.mean(throughputs))
        # print "Throughputs stdev for {} {},{}: {}".format(TIMESTAMP_LABELS[timestamp], sub_experiment, trial, numpy.std(throughputs))
    # pylab.figure()
    # pylab.plot(TRIALS, averages)
    # pylab.show()

    # print "\n\n\n\n\n"
    return times_averages, stdevs, data_bytes, throughputs_averages

def plot_experiment():
    for timestamp in TIMESTAMPS:
        throughputs = {}
        # all_averages = []
        # lengend = []
        # if TIMESTAMP_LABELS[timestamp] != "TMPFS":
        #     continue
        for sub_experiment in SUB_EXPERIMENTS:
            # legend.append(sub_experiment)
            time_averages, std, data, throughputs_averages = get_sub_experiment_data(sub_experiment, timestamp)
            pylab.errorbar(data, throughputs_averages, yerr=std, fmt=EXPERIMENT_MARKER[sub_experiment], label=EXPERIMENT_LABELS[sub_experiment])
            throughputs[sub_experiment] = list(throughputs_averages)
            # pylab.bar(data, throughputs_averages, 1000, yerr=std)

        overheads = []
        for i in range(len(throughputs["python"])):
            overheads.append(float(throughputs["fpga"][i])/float(throughputs["python"][i]))

        overhead_sum = 0
        for overhead in overheads:
            overhead_sum = overhead_sum + overhead
        overhead_average = overhead_sum/len(overheads)
        print "Overhead average: {}".format((1-overhead_average)*100.0)

        pylab.xscale("log", nonposx='clip')
        pylab.xlabel("Data Processed (bytes)")
        # pylab.ylabel("Time (s)")
        pylab.ylabel("Throughput (KB/s)")
        pylab.legend(loc=4)
        pylab.savefig("{}.png".format(TIMESTAMP_LABELS[timestamp]))
        pylab.savefig("{}.pdf".format(TIMESTAMP_LABELS[timestamp]))
        pylab.show()

if __name__ == "__main__":
    plot_experiment()
