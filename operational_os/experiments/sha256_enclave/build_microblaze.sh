#!/bin/bash

../../sdk/sdk.py --function_definitions function_definitions.json --system_configuration ../../sdk/default_system_config.json --program_name sha512_enclave --compilation_config compilation_config.json --build_microblaze
