#!/bin/bash

../../sdk/sdk.py --simulation_mode --function_definitions function_definitions.json --system_configuration ../../sdk/default_system_config.json --program_name sha512_enclave_simulation --compilation_config compilation_config.json --build_arm
