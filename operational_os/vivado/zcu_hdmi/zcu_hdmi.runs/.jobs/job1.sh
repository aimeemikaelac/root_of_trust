#!/bin/sh

# 
# Vivado(TM)
# launch.sh: a Vivado-generated ExploreAhead Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

HD_LDIR=`dirname "$0"`

# *** Create Queue Clues
HD_RUNDIR="$HD_LDIR/../synth_1"
if [ -d "$HD_RUNDIR" ]
then
/bin/touch "$HD_RUNDIR/.Vivado_Synthesis.queue.rst"
fi


# *** Launch Runs (one at a time)
HD_RUNSH="$HD_LDIR/../synth_1/runme.sh"
if [ -f "$HD_RUNSH" ]
then
"$HD_RUNSH"
fi


