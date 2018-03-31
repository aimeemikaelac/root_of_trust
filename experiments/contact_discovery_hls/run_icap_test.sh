#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

ITERATIONS=100

mkdir -p $SCRIPTPATH/data/icap
OUTPUT_FILE="data/icap/icap_$(date +"%Y%m%d%H%M").csv"

make icap

echo "ICAP_ELAPSED,FILE_SIZE" | tee $OUTPUT_FILE

for (( i=0; i<$ITERATIONS; i++ ))
do
  sudo ./icap_program -f no_load_pblock_1_partial.bit.bin | tee -a $OUTPUT_FILE
  sudo ./icap_program -f db_load_pblock_1_partial.bit.bin | tee -a $OUTPUT_FILE
done
