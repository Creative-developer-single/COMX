// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 18 10:42:51 2024
// Host        : DESKTOP-COQS8KP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA/Xilinx/tests/DWT_test/project_1/project_1.srcs/sources_1/ip/DWT_0/DWT_0_stub.v
// Design      : DWT_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DWT,Vivado 2018.3" *)
module DWT_0(data_out_ap_vld, read_ready_ap_vld, 
  read_over_ap_vld, write_valid_ap_vld, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, 
  data_out, data, read_valid, read_ready, read_over, write_valid)
/* synthesis syn_black_box black_box_pad_pin="data_out_ap_vld,read_ready_ap_vld,read_over_ap_vld,write_valid_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,data_out[31:0],data[31:0],read_valid[31:0],read_ready[31:0],read_over[31:0],write_valid[31:0]" */;
  output data_out_ap_vld;
  output read_ready_ap_vld;
  output read_over_ap_vld;
  output write_valid_ap_vld;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]data_out;
  input [31:0]data;
  input [31:0]read_valid;
  output [31:0]read_ready;
  output [31:0]read_over;
  output [31:0]write_valid;
endmodule
