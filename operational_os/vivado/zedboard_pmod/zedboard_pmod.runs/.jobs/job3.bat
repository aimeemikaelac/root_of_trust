@echo off

rem  Vivado(TM)
rem  launch.bat: a Vivado-generated ExploreAhead Script
rem  Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.


setlocal

set HD_LDIR=%~dp0

rem *** Create Queue Clues
set HD_RUNDIR=%HD_LDIR%\../synth_1
if exist "%HD_RUNDIR%" echo. > "%HD_RUNDIR%/.Vivado_Synthesis.queue.rst"


rem *** Launch Runs (one at a time)
set HD_RUNBAT=%HD_LDIR%\../synth_1\runme.bat
if exist "%HD_RUNBAT%" call "%HD_RUNBAT%" %*


