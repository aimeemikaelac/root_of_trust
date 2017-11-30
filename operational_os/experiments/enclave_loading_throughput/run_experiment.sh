#!/bin/bash

ITERATIONS=10
MAX_SIZE=1048576
OUTPUT_FILE="data/enclave_loading_throughput_$(date +"%Y%m%d%H%M").csv"

mkdir -p data/

echo "DATA_SIZE,DURATION" >> $OUTPUT_FILE

for (( i=512; i<$MAX_SIZE; i+=1024 ))
do
  filename=microblaze_binaries/mb_$i
  data_size=$(stat --printf="%s" $filename)
  for (( iteration=0; iteration<$ITERATIONS; iteration++ ))
  do
    $(python3.6 run_experiment.py \
    --arm_binary enclave_loading_throughput \
    --mb_binary $filename --timeout 5 --out_file $OUTPUT_FILE \
    --data_size $data_size)
  done
done
