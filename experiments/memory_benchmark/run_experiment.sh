#!/bin/bash

mkdir -p data/
OUTPUT_FILE="data/memory_test_$(date +"%Y%m%d%H%M").csv"

sudo ./memory_test | tee $OUTPUT_FILE
