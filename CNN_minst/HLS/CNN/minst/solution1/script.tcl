############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project minst
set_top run
add_files minst/source/test_png1.txt
add_files minst/source/test.h
add_files minst/source/test.cpp
add_files minst/source/net_params.h
add_files minst/source/DataLoader.h
add_files minst/source/DataLoader.cpp
add_files -tb minst/source/tb_CNN.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-2} -tool vivado
create_clock -period 15 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
source "./minst/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog
