############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project secure_enclave_decryptor
set_top secure_enclave_aes_cipher
add_files secure_enclave_decryptor/src/aes.cpp
add_files secure_enclave_decryptor/src/secure_enclave_decryptor_main.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./secure_enclave_decryptor/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
