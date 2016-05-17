############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project Timer
set_top Timer
add_files Timer.c
add_files Timer.h
add_files -tb Timer.h
add_files -tb Timer/.settings/Timer_test.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./Timer/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O -reduce_diskspace -trace_level all
export_design -format ip_catalog
