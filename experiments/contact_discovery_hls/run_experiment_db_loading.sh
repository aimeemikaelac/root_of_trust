#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

ITERATIONS=100
MAX=15000

mkdir -p $SCRIPTPATH/data/db_one_load_exp
OUTPUT_FILE="data/db_loading_exp/db_one_load_exp_$(date +"%Y%m%d%H%M").csv"

make db_exp

echo "DB_SIZE,SW_MATCHED,SW_ELAPSED,SW_MATCH_TIME,HW_MATCHED,HW_ELAPSED,HW_MATCH_TIME" | tee $OUTPUT_FILE

for (( size=500; size<$MAX; size+=500 ))
do
  for (( i=0; i<$ITERATIONS; i++ ))
  do
    sudo $SCRIPTPATH/contact_discovery_experiment_db_loading $size | tee -a $OUTPUT_FILE
  done
done
