#!/bin/bash

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

ITERATIONS=100

mkdir -p $SCRIPTPATH/data/db_loading_exp
OUTPUT_FILE="data/db_loading_exp/db_loading_exp_$(date +"%Y%m%d%H%M").csv"

make db_exp

echo "SW_MATCHED,SW_ELAPSED,HW_MATCHED,HW_ELAPSED" | tee $OUTPUT_FILE

for (( size=300; size<3000; size+=50 ))
do
  for (( i=0; i<$ITERATIONS; i++ ))
  do
    sudo $SCRIPTPATH/contact_discovery_experiment_db_loading $size | tee -a $OUTPUT_FILE
  done
done
