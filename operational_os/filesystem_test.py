#!/usr/bin/python
import os
import subprocess
import shlex
import shutil
import time
import datetime
import numpy
import sys


ITERATIONS = 25
DATA_MAX = 512*1024*1024
STORAGE_DIR = "/tmp/test_storage/"
MOUNT_DIR = "test_mount/"
METADATA_FILE = "test_metadata.json"

TIMESTAMP = datetime.datetime.now().isoformat()
LOG_FILE = "experiment-{}.log".format(TIMESTAMP)

def kill_fs(experiment, log_file):
    experiment_mount = MOUNT_DIR#"{}_{}".format(experiment, MOUNT_DIR)
    kill_mount = "fusermount -u {}".format(experiment_mount)
    subprocess.call(shlex.split(kill_mount), stdout=log_file, stderr=log_file)


def cleanup(experiment, log_file_handle):
    experiment_storage = STORAGE_DIR#"/tmp/{}_{}".format(experiment, STORAGE_DIR)
    experiment_mount = MOUNT_DIR#"{}_{}".format(experiment, MOUNT_DIR)
    experiment_meta = "{}_{}".format(experiment, METADATA_FILE)
    kill_fs(experiment, log_file_handle)

    if os.path.exists(experiment_storage):
        shutil.rmtree(experiment_storage)
        # print "exists {}".format(experiment_storage)

    if os.path.exists(experiment_mount):
        shutil.rmtree(experiment_mount)
        # print "exists {}".format(experiment_mount)

    if os.path.exists(experiment_meta):
        os.remove(experiment_meta)
        # print "exists {}".format(experiment_meta)


def init(experiment):
    experiment_storage = STORAGE_DIR#"/tmp/{}_{}".format(experiment, STORAGE_DIR)
    experiment_mount = MOUNT_DIR#"{}_{}".format(experiment, MOUNT_DIR)
    experiment_meta = "{}_{}".format(experiment, METADATA_FILE)
    os.mkdir(experiment_mount)
    os.mkdir(experiment_storage)
    # os.mknod("{}_{}".format(experiment, METADATA_FILE))


def experiment(args, log_file_handle, experiment, data_file, data_size):
    cleanup(experiment, log_file_handle)
    init(experiment)

    arg_tokens = shlex.split(args)
    process = subprocess.Popen(
        arg_tokens)#, stdout=log_file_handle, stderr=log_file_handle)

    test_file = "{}test.txt".format(MOUNT_DIR)

    # print "Waiting",
    for i in range(2):
        time.sleep(1)
        # print ".",
    # print ""

    file_data = []
    # file_names = []
    for i in range(ITERATIONS):
        # data = "test{}".format(i) * DATA_REPEAT
        # data = ""
        # for k in range(repeat):
        #     data = data + "test{}".format(k + i)
        # file_name = "{}_{}test{}.txt".format(experiment, MOUNT_DIR, i)
        # file_data.append(data)
        # file_names.append(file_name)
        file_data.append(os.urandom(data_size))

    data = []
    times = numpy.array([])

    start_time = time.time()
    print "\nIn experiment {}, data size {}\n".format(experiment, data_size),
    for i in range(ITERATIONS):
        print ".",
        sys.stdout.write(".")
        sys.stdout.flush()
        current_file_start = time.time()
        # current_call = "echo {2} >> {1}test{0}.txt".format(i, MOUNT_DIR, data)
        # current_call_args = shlex.split(current_call)
        # subprocess.call(current_call_args)
        with open(test_file, 'w+') as test_handle:
            test_handle.write(file_data[i])
        current_file_end = time.time()
        current_elapsed = current_file_end - current_file_start
        # print "Elapsed time for {}: {}s".format(file_names[i], current_elapsed)
        data.append((len(file_data[i]), current_elapsed))
        times = numpy.append(times, current_elapsed)
        os.remove(test_file)
    print ""
    end_time = time.time()
    elapsed_time = end_time - start_time
    process.kill()
    process.wait()
    kill_fs(experiment, log_file_handle)

    print "Experiment {}, Data size {}. Avg time: {}, Stdev: {}, Avg Thrpt: {}\n".format(experiment, data_size, numpy.average(times), numpy.std(times), data_size/numpy.average(times))

    with open(data_file, 'w+') as data_file_handle:
        data_file_handle.write("Time,Bytes\n")
        for i in range(len(data)):
            data_bytes = data[i][0]
            data_time = data[i][1]
            data_file_handle.write("{},{}\n".format(data_time, data_bytes))
    # cleanup()
    return elapsed_time

if __name__ == "__main__":
    experiment_dir = "data/{}/".format(TIMESTAMP)
    if not os.path.exists(experiment_dir):
        os.makedirs(experiment_dir)
        os.makedirs("{}/python".format(experiment_dir))
        os.makedirs("{}/fpga".format(experiment_dir))

    experiment_log = "{}/{}".format(experiment_dir, LOG_FILE)
    log_file_handle = open(LOG_FILE, 'w+')

    data_size = 1024
    iteration = 0

    while data_size < DATA_MAX:
        print "Experiment {}, data value: {} kb".format(iteration, data_size/1024)
        print "============================================================"

        python_data_file = "{}/python/python_{}_{}.csv".format(experiment_dir, TIMESTAMP, data_size)
        fpga_data_file = "{}/fpga/fpga_{}_{}.csv".format(experiment_dir, TIMESTAMP, data_size)

        python_fs_call = "/usr/bin/python filesystem.py --mount_point {} --storage_dir {} --passphrase test --salt test --metadata_file python_{}".format(
            MOUNT_DIR, STORAGE_DIR, METADATA_FILE)

        elapsed_time_python = experiment(python_fs_call, log_file_handle, "python", python_data_file, data_size)

        print "Python elapsed time: {}s".format(elapsed_time_python)

        fpga_fs_call = "/usr/bin/python filesystem_fpga_naive.py --mount_point {} --storage_dir {} --metadata_file fpga_{}".format(
            MOUNT_DIR, STORAGE_DIR, METADATA_FILE)

        elapsed_time_fpga = experiment(fpga_fs_call, log_file_handle, "fpga", fpga_data_file, data_size)

        print "FPGA elapsed time: {}s".format(elapsed_time_python)

        print "============================================================\n\n"
        data_size = data_size*2
        iteration = iteration + 1

    # log_file_handle.close()
