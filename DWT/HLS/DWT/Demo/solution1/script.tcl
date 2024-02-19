############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Demo
set_top DWT
add_files Demo/source/DWT.cpp
add_files Demo/source/DWT.h
add_files Demo/source/DWT_test.txt
add_files -tb Demo/source/tb_DWT.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-2} -tool vivado
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_schedule -effort medium -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose=0
config_bind -effort medium
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog
set_clock_uncertainty 12.5%
source "./Demo/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
