#!/bin/bash

#note: need to run as root to make fpga version work

ITERATIONS=100
STORAGE_DIR=test_storage/
MOUNT_DIR=test_mount/
METADATA_FILE=test_metadata.json

# pure-python experiment =================================================

#TODO: make location of filesystem program a variable, as well as args

#cleanup and re-init
rm -rf $MOUNT_DIR
rm -rf $STORAGE_DIR
rm $METADATA_FILE

mkdir -p $MOUNT_DIR
mkdir -p $STORAGE_DIR

#start the filesystem
./filesystem.py --mount_point $MOUNT_DIR \
                --storage_dir $STORAGE_DIR \
                --passphrase "test" \
                --salt "test" \
                --metadata_file $METADATA_FILE

START=$(date +%s.%N)

for ((i=0;i<$ITERATIONS;i++));
do
  echo "test$i" > $MOUNT_DIR/test_$i.txt
done

END=$(date +%s.%N)

DIFF=$(echo "$END - $START" | bc)

echo "Elapsed time for pure python: $DIFF"

# fpga experiment =================================================

#cleanup and re-init
rm -rf $MOUNT_DIR
rm -rf $STORAGE_DIR
rm $METADATA_FILE

mkdir -p $MOUNT_DIR
mkdir -p $STORAGE_DIR

./filesystem_fpga_naive.py --mount_point $MOUNT_DIR \
                           --storage_dir $STORAGE_DIR \
                           --metadata_file $METADATA_FILE
$START=$(date +%s.%N)

for ((i=0;i<$ITERATIONS;i++));
do
 echo "test$i" > $MOUNT_DIR/test_$i.txt
done

$END=$(date +%s.%N)

$DIFF=$(echo "$END - $START" | bc)

echo "Elapsed time for fpga: $DIFF"
