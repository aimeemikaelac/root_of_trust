#!/usr/bin/python
import os
import subprocess
import shlex
import shutil
import time
import datetime


ITERATIONS = 100
DATA_REPEAT = 30000
STORAGE_DIR = "test_storage/"
MOUNT_DIR = "test_mount/"
METADATA_FILE = "test_metadata.json"

TIMESTAMP = datetime.datetime.now().isoformat()
LOG_FILE = "experiment-{}.log".format(TIMESTAMP)

def kill_fs(experiment):
    experiment_mount = "{}_{}".format(experiment, MOUNT_DIR)
    kill_mount = "fusermount -u {}".format(experiment_mount)
    subprocess.call(shlex.split(kill_mount))


def cleanup(experiment):
    experiment_storage = "/tmp/{}_{}".format(experiment, STORAGE_DIR)
    experiment_mount = "{}_{}".format(experiment, MOUNT_DIR)
    experiment_meta = "{}_{}".format(experiment, METADATA_FILE)
    kill_fs(experiment)

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
    experiment_storage = "/tmp/{}_{}".format(experiment, STORAGE_DIR)
    experiment_mount = "{}_{}".format(experiment, MOUNT_DIR)
    experiment_meta = "{}_{}".format(experiment, METADATA_FILE)
    os.mkdir(experiment_mount)
    os.mkdir(experiment_storage)
    # os.mknod("{}_{}".format(experiment, METADATA_FILE))


def experiment(args, log_file_handle, experiment, data_file, repeat=DATA_REPEAT):
    cleanup(experiment)
    init(experiment)

    arg_tokens = shlex.split(args)
    process = subprocess.Popen(
        arg_tokens)#, stdout=log_file_handle, stderr=log_file_handle)

    print "Waiting",
    for i in range(2):
        time.sleep(1)
        print ".",
    print ""

    file_data = []
    file_names = []
    for i in range(ITERATIONS):
        # data = "test{}".format(i) * DATA_REPEAT
        data = ""
        for k in range(repeat):
            data = data + "test{}".format(k + i)
        file_name = "{}_{}test{}.txt".format(experiment, MOUNT_DIR, i)
        file_data.append(data)
        file_names.append(file_name)

    data = []

    start_time = time.time()
    for i in range(ITERATIONS):
        current_file_start = time.time()
        # current_call = "echo {2} >> {1}test{0}.txt".format(i, MOUNT_DIR, data)
        # current_call_args = shlex.split(current_call)
        # subprocess.call(current_call_args)
        with open(file_names[i], 'w+') as test_file:
            test_file.write(file_data[i])
        current_file_end = time.time()
        current_elapsed = current_file_end - current_file_start
        print "Elapsed time for {}: {}s".format(file_names[i], current_elapsed)
        data.append((len(file_data[i]), current_elapsed))
    end_time = time.time()
    elapsed_time = end_time - start_time
    process.kill()
    process.wait()
    kill_fs(experiment)

    with open(data_file, 'w+') as data_file_handle:
        data_file_handle.write("Time,Bytes")
        for i in range(len(data)):
            data_bytes = data[i][0]
            data_time = data[i][1]
            data_file_handle.write("{},{}\n".format(data_time, data_bytes))
    # cleanup()
    return elapsed_time

if __name__ == "__main__":
    # log_file_handle = open(LOG_FILE, 'w+')

    if not os.path.exists("data/"):
        os.mkdir("data/")

    for i in range(0, 30000, 1000):
        print "Experiment {}, repeat value: {}".format(i/1000, i)
        print "============================================================"

        python_data_file = "data/python_{}_{}.csv".format(TIMESTAMP, i)
        fpga_data_file = "data/fpga_{}_{}.csv".format(TIMESTAMP, i)

        python_fs_call = "/usr/bin/python filesystem.py --mount_point python_{} --storage_dir /tmp/python_{} --passphrase test --salt test --metadata_file python_{}".format(
            MOUNT_DIR, STORAGE_DIR, METADATA_FILE)

        elapsed_time_python = experiment(python_fs_call, None, "python", python_data_file, repeat=i)

        print "Python elapsed time: {}s".format(elapsed_time_python)

        fpga_fs_call = "/usr/bin/python filesystem_fpga_naive.py --mount_point fpga_{} --storage_dir /tmp/fpga_{} --metadata_file fpga_{}".format(
            MOUNT_DIR, STORAGE_DIR, METADATA_FILE)

        elapsed_time_fpga = experiment(fpga_fs_call, None, "fpga", fpga_data_file, repeat=i)

        print "FPGA elapsed time: {}s".format(elapsed_time_python)

        print "============================================================\n\n"

    # log_file_handle.close()
