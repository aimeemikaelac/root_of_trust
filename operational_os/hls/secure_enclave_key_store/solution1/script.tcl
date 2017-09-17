############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project secure_enclave_key_store
set_top secure_enclave_key_store
add_files secure_enclave_key_store/src/secure_enclave_key_store_main.h -cflags "-Isecure_enclave_key_store/src"
add_files secure_enclave_key_store/src/secure_enclave_key_store_main.cpp -cflags "-Isecure_enclave_key_store/src"
add_files secure_enclave_key_store/Debug/aes.cpp -cflags "-Isecure_enclave_key_store/src"
add_files -tb secure_enclave_key_store/src/secure_enclave_key_store_tb.cpp -cflags "-Isecure_enclave_key_store/src -I../../../usr/local/ssl/include -ldl -lcrypto -lssl -L/usr/local/ssl/lib/."
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./secure_enclave_key_store/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design
export_design -format ip_catalog
