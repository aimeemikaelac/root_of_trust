############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ed25519_sign
set_top ed25519_sign
add_files ed25519_sign/src/curve25519-donna-32bit.h
add_files ed25519_sign/src/curve25519-donna-64bit.h
add_files ed25519_sign/src/curve25519-donna-helpers.h
add_files ed25519_sign/src/curve25519-donna-sse2.h
add_files ed25519_sign/src/ed25519-donna-32bit-sse2.h
add_files ed25519_sign/src/ed25519-donna-32bit-tables.h
add_files ed25519_sign/src/ed25519-donna-64bit-sse2.h
add_files ed25519_sign/src/ed25519-donna-64bit-tables.h
add_files ed25519_sign/src/ed25519-donna-64bit-x86-32bit.h
add_files ed25519_sign/src/ed25519-donna-64bit-x86.h
add_files ed25519_sign/src/ed25519-donna-basepoint-table.h
add_files ed25519_sign/src/ed25519-donna-batchverify.h
add_files ed25519_sign/src/ed25519-donna-impl-base.h
add_files ed25519_sign/src/ed25519-donna-impl-sse2.h
add_files ed25519_sign/src/ed25519-donna-portable-identify.h
add_files ed25519_sign/src/ed25519-donna-portable.h
add_files ed25519_sign/src/ed25519-donna.h
add_files ed25519_sign/src/ed25519-hash-custom.h
add_files ed25519_sign/src/ed25519-hash.h
add_files ed25519_sign/src/ed25519-randombytes-custom.h
add_files ed25519_sign/src/ed25519-randombytes.h
add_files ed25519_sign/src/ed25519.c
add_files ed25519_sign/src/ed25519.h
add_files ed25519_sign/src/modm-donna-32bit.h
add_files ed25519_sign/src/modm-donna-64bit.h
add_files ed25519_sign/src/regression.h
add_files ed25519_sign/src/test-internals.c
add_files ed25519_sign/src/test-ticks.h
add_files ed25519_sign/src/test.c
add_files -tb ed25519_sign/src/curve25519_tb.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i-es1} -tool vivado
create_clock -period 10 -name default
#source "./ed25519_sign/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
