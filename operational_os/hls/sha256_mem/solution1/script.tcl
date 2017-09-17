############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sha256_mem
set_top sha256_mem
add_files sha256_mem/src/sha256_mem.cpp
add_files sha256_mem/src/sha256_mem.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i-es1} -tool vivado
create_clock -period 10 -name default
#source "./sha256_mem/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
