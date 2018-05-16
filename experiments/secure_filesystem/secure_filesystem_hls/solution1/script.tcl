############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project secure_filesystem_hls
set_top filesystem_encrypt
add_files secure_filesystem_hls/solution1/src/aes.cpp
add_files secure_filesystem_hls/solution1/src/filesystem.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i-es1} -tool vivado
create_clock -period 10 -name default
#source "./secure_filesystem_hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
