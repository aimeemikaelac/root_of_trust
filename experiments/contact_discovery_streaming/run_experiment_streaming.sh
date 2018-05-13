#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

ITERATIONS=50
MAX=1000000

DATA_DIR=$SCRIPTPATH/data/streaming

mkdir -p $DATA_DIR
OUTPUT_FILE="$DATA_DIR/streaming_exp_$(date +"%Y%m%d%H%M").csv"

make contact_discovery_experiment

echo "ITERATIONS,DB_SIZE,SW_ELAPSED,HW_ELAPSED" | tee $OUTPUT_FILE

for (( size=800; size<$MAX; size*=2 ))
do
  sudo $SCRIPTPATH/contact_discovery_experiment $size $ITERATIONS | tee -a $OUTPUT_FILE
done
