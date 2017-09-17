############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project secure_enclave_simple_ecdsa
set_top secure_enclave_simple_ecdsa
add_files secure_enclave_simple_ecdsa/src/secure_enclave_simple_ecdsa.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i-es1} -tool vivado
create_clock -period 10 -name default
#source "./secure_enclave_simple_ecdsa/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
