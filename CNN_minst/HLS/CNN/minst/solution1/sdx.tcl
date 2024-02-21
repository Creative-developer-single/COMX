# ==============================================================
# File generated on Thu Feb 22 01:24:27 +0800 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../source/tb_CNN.cpp -cflags { -Wno-unknown-pragmas}
add_files minst/source/DataLoader.cpp
add_files minst/source/DataLoader.h
add_files minst/source/net_params.h
add_files minst/source/test.cpp
add_files minst/source/test.h
add_files minst/source/test_png1.txt
set_part xc7z020clg400-2
create_clock -name default -period 15
set_clock_uncertainty 12.5% default
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_sdx -optimization_level=none
config_sdx -target=none
config_schedule -effort=medium
config_schedule -relax_ii_for_timing=0
config_bind -effort=medium
set_directive_pipeline Conv1_layer/Conv1_layer_label0 
set_directive_pipeline Conv2_layer/Conv2_layer_label12 
set_directive_pipeline Flatten_layer/Flatten_layer_label4 
