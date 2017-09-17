############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ed25519_ref
set_top crypto_sign
add_files ed25519_ref/src/sign.c
add_files ed25519_ref/src/sha512.h
add_files ed25519_ref/src/sha512.c
add_files ed25519_ref/src/sc25519.h
add_files ed25519_ref/src/sc25519.c
add_files ed25519_ref/src/md_helper.i
add_files ed25519_ref/src/ge25519_base.data
add_files ed25519_ref/src/ge25519.h
add_files ed25519_ref/src/ge25519.c
add_files ed25519_ref/src/fixedint.h
add_files ed25519_ref/src/fe25519.h
add_files ed25519_ref/src/fe25519.c
add_files ed25519_ref/src/crypto_uint32.h
add_files ed25519_ref/src/crypto_sign.h
add_files ed25519_ref/src/crypto_int32.h
add_files ed25519_ref/src/crypto_hash_sha512.h
add_files ed25519_ref/src/api.h
add_files -tb ed25519_ref/src/ed25519_ref_tb.c
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
#source "./ed25519_ref/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
