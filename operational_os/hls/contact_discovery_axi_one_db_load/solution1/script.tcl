############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project contact_discovery_axi_one_db_load
set_top contact_discovery
add_files contact_discovery_axi_one_db_load/src/sha512.h
add_files contact_discovery_axi_one_db_load/src/sha512.c
add_files contact_discovery_axi_one_db_load/src/fixedint.h
add_files contact_discovery_axi_one_db_load/src/contact_discovery.cpp
add_files -tb contact_discovery_axi_one_db_load/src/contact_discovery_tb.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i} -tool vivado
create_clock -period 10 -name default
#source "./contact_discovery_axi_one_db_load/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
