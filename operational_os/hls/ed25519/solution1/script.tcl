############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ed25519
set_top ed25519_sign
add_files ed25519/src/add_scalar.cpp
add_files ed25519/src/ed25519.h
add_files ed25519/src/fe.cpp
add_files ed25519/src/fe.h
add_files ed25519/src/fixedint.h
add_files ed25519/src/ge.cpp
add_files ed25519/src/ge.h
add_files ed25519/src/key_exchange.cpp
add_files ed25519/src/keypair.cpp
add_files ed25519/src/precomp_data.h
add_files ed25519/src/sc.cpp
add_files ed25519/src/sc.h
add_files ed25519/src/seed.cpp
add_files ed25519/src/sha512.cpp
add_files ed25519/src/sha512.h
add_files ed25519/src/sign.cpp
add_files ed25519/src/verify.cpp
add_files -tb ed25519/src/ed25519_tb.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
#source "./ed25519/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
