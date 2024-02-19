vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/axi_utils_v2_0_5
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_dsp48_multadd_v3_0_5
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/floating_point_v7_1_7
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 activehdl/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 activehdl/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap floating_point_v7_1_7 activehdl/floating_point_v7_1_7
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_9 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_7 -93 \
"../../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/DWT_data_in.v" \
"../../../ipstatic/hdl/verilog/DWT_data_input.v" \
"../../../ipstatic/hdl/verilog/DWT_data_output.v" \
"../../../ipstatic/hdl/verilog/DWT_fadd_32ns_32nbkb.v" \
"../../../ipstatic/hdl/verilog/DWT_filter_g.v" \
"../../../ipstatic/hdl/verilog/DWT_filter_h.v" \
"../../../ipstatic/hdl/verilog/DWT_fmul_32ns_32ncud.v" \
"../../../ipstatic/hdl/verilog/DWT.v" \

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/ip/DWT_ap_fadd_2_full_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/DWT_ap_fmul_1_max_dsp_32.vhd" \
"../../../../project_1.srcs/sources_1/ip/DWT_0/sim/DWT_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

