#!/bin/bash

ITERATIONS=10
MAX_SIZE=1048576
OUTPUT_FILE="data/enclave_loading_throughput_$(date +"%Y%m%d%H%M").csv"

mkdir -p data/

echo "DATA_SIZE,DURATION" >> $OUTPUT_FILE

for (( i=512; i<$MAX_SIZE; i+=10240 ))
do
  filename=microblaze_binaries/mb_$i
  if [ ! -f $filename ]; then
    continue
  fi
#  data_size=$(stat --printf="%s" $filename)
  for (( iteration=0; iteration<$ITERATIONS; iteration++ ))
  do
    python3.6 run_experiment.py --arm_binary enclave_loading_throughput --mb_binary $filename --timeout 20 --out_file $OUTPUT_FILE
  done
done
