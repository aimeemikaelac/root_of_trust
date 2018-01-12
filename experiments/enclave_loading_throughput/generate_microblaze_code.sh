#!/bin/bash
set -e
MAX_SIZE=1048576
mkdir -p microblaze_binaries/
for (( i=512; i<$MAX_SIZE; i+=10240 ))
do
  if [ -f microblaze_binaries/mb_$i ]; then
    continue
  fi
  ./generate_microblaze_code.py --size $i --output_file mb.h --template_file mb_static_data.h.jinja
  ../../sdk/sdk.py --function_definitions \
  function_definitions.json --system_configuration \
  ../../sdk/default_system_config.json --program_name mb_$i \
  --compilation_config compilation_config.json --build_microblaze
  mv enclave_loading_throughput.bin microblaze_binaries/mb_$i
done
