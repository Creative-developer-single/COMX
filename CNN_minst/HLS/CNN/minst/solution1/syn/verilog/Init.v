// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Init (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_address0,
        data_ce0,
        data_q0,
        conv1_input_address0,
        conv1_input_ce0,
        conv1_input_we0,
        conv1_input_d0,
        conv1_output_address0,
        conv1_output_ce0,
        conv1_output_we0,
        conv1_output_d0,
        pool1_output_address0,
        pool1_output_ce0,
        pool1_output_we0,
        pool1_output_d0,
        conv2_output_address0,
        conv2_output_ce0,
        conv2_output_we0,
        conv2_output_d0,
        pool2_output_address0,
        pool2_output_ce0,
        pool2_output_we0,
        pool2_output_d0,
        flatten_output_address0,
        flatten_output_ce0,
        flatten_output_we0,
        flatten_output_d0,
        fc1_output_address0,
        fc1_output_ce0,
        fc1_output_we0,
        fc1_output_d0,
        fc2_output_address0,
        fc2_output_ce0,
        fc2_output_we0,
        fc2_output_d0
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] data_address0;
output   data_ce0;
input  [31:0] data_q0;
output  [9:0] conv1_input_address0;
output   conv1_input_ce0;
output   conv1_input_we0;
output  [31:0] conv1_input_d0;
output  [10:0] conv1_output_address0;
output   conv1_output_ce0;
output   conv1_output_we0;
output  [31:0] conv1_output_d0;
output  [8:0] pool1_output_address0;
output   pool1_output_ce0;
output   pool1_output_we0;
output  [31:0] pool1_output_d0;
output  [8:0] conv2_output_address0;
output   conv2_output_ce0;
output   conv2_output_we0;
output  [31:0] conv2_output_d0;
output  [6:0] pool2_output_address0;
output   pool2_output_ce0;
output   pool2_output_we0;
output  [31:0] pool2_output_d0;
output  [6:0] flatten_output_address0;
output   flatten_output_ce0;
output   flatten_output_we0;
output  [31:0] flatten_output_d0;
output  [5:0] fc1_output_address0;
output   fc1_output_ce0;
output   fc1_output_we0;
output  [31:0] fc1_output_d0;
output  [3:0] fc2_output_address0;
output   fc2_output_ce0;
output   fc2_output_we0;
output  [31:0] fc2_output_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_ce0;
reg conv1_input_ce0;
reg conv1_input_we0;
reg conv1_output_ce0;
reg conv1_output_we0;
reg pool1_output_ce0;
reg pool1_output_we0;
reg conv2_output_ce0;
reg conv2_output_we0;
reg pool2_output_ce0;
reg pool2_output_we0;
reg flatten_output_ce0;
reg flatten_output_we0;
reg fc1_output_ce0;
reg fc1_output_we0;
reg fc2_output_ce0;
reg fc2_output_we0;

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_3_fu_434_p2;
reg   [4:0] i_3_reg_946;
wire    ap_CS_fsm_state2;
wire   [10:0] tmp_30_fu_464_p2;
reg   [10:0] tmp_30_reg_951;
wire   [0:0] exitcond16_fu_428_p2;
wire   [4:0] j_3_fu_476_p2;
reg   [4:0] j_3_reg_959;
wire    ap_CS_fsm_state3;
wire  signed [63:0] tmp_42_cast_fu_491_p1;
reg  signed [63:0] tmp_42_cast_reg_964;
wire   [0:0] exitcond15_fu_470_p2;
wire   [1:0] channels_3_fu_502_p2;
reg   [1:0] channels_3_reg_977;
wire    ap_CS_fsm_state5;
wire  signed [8:0] tmp_41_cast_fu_538_p1;
reg  signed [8:0] tmp_41_cast_reg_982;
wire   [0:0] exitcond14_fu_496_p2;
wire   [4:0] i_4_fu_548_p2;
reg   [4:0] i_4_reg_990;
wire    ap_CS_fsm_state6;
wire   [11:0] tmp_40_fu_583_p2;
reg   [11:0] tmp_40_reg_995;
wire   [0:0] exitcond13_fu_542_p2;
wire   [4:0] j_4_fu_595_p2;
wire    ap_CS_fsm_state7;
wire   [1:0] channels_4_fu_621_p2;
reg   [1:0] channels_4_reg_1011;
wire    ap_CS_fsm_state8;
wire  signed [7:0] tmp_45_cast_fu_657_p1;
reg  signed [7:0] tmp_45_cast_reg_1016;
wire   [0:0] exitcond11_fu_615_p2;
wire   [3:0] i_5_fu_667_p2;
reg   [3:0] i_5_reg_1024;
wire    ap_CS_fsm_state9;
wire   [9:0] tmp_43_fu_702_p2;
reg   [9:0] tmp_43_reg_1029;
wire   [0:0] exitcond10_fu_661_p2;
wire   [3:0] j_5_fu_714_p2;
wire    ap_CS_fsm_state10;
wire   [2:0] channels_5_fu_740_p2;
reg   [2:0] channels_5_reg_1045;
wire    ap_CS_fsm_state11;
wire   [6:0] tmp_51_cast_fu_754_p1;
reg   [6:0] tmp_51_cast_reg_1050;
wire   [0:0] exitcond8_fu_734_p2;
wire   [3:0] i_7_fu_764_p2;
reg   [3:0] i_7_reg_1058;
wire    ap_CS_fsm_state12;
wire   [9:0] tmp_61_cast_fu_779_p3;
reg   [9:0] tmp_61_cast_reg_1063;
wire   [0:0] exitcond7_fu_758_p2;
wire   [3:0] j_6_fu_793_p2;
wire    ap_CS_fsm_state13;
wire   [2:0] channels_6_fu_819_p2;
reg   [2:0] channels_6_reg_1079;
wire    ap_CS_fsm_state14;
wire   [5:0] tmp_58_cast_fu_833_p1;
reg   [5:0] tmp_58_cast_reg_1084;
wire   [0:0] exitcond5_fu_813_p2;
wire   [2:0] i_9_fu_843_p2;
reg   [2:0] i_9_reg_1092;
wire    ap_CS_fsm_state15;
wire   [7:0] tmp_65_cast_fu_858_p3;
reg   [7:0] tmp_65_cast_reg_1097;
wire   [0:0] exitcond4_fu_837_p2;
wire   [2:0] j_7_fu_872_p2;
wire    ap_CS_fsm_state16;
wire   [6:0] i_6_fu_898_p2;
wire    ap_CS_fsm_state17;
wire   [5:0] i_8_fu_915_p2;
wire    ap_CS_fsm_state18;
wire   [3:0] i_11_fu_932_p2;
wire    ap_CS_fsm_state19;
reg   [4:0] i_reg_241;
reg   [4:0] j_reg_252;
wire    ap_CS_fsm_state4;
reg   [1:0] channels_reg_263;
reg   [4:0] i1_reg_274;
wire   [0:0] exitcond12_fu_589_p2;
reg   [4:0] j2_reg_285;
reg   [1:0] channels3_reg_296;
reg   [3:0] i4_reg_307;
wire   [0:0] exitcond9_fu_708_p2;
reg   [3:0] j5_reg_318;
reg   [2:0] channels6_reg_329;
reg   [3:0] i7_reg_340;
wire   [0:0] exitcond6_fu_787_p2;
reg   [3:0] j8_reg_351;
reg   [2:0] channels9_reg_362;
reg   [2:0] i8_reg_373;
wire   [0:0] exitcond3_fu_866_p2;
reg   [2:0] j7_reg_384;
reg   [6:0] i6_reg_395;
wire   [0:0] exitcond2_fu_892_p2;
reg   [5:0] i9_reg_406;
wire   [0:0] exitcond1_fu_909_p2;
reg   [3:0] i10_reg_417;
wire   [0:0] exitcond_fu_926_p2;
wire   [63:0] tmp_56_cast_fu_610_p1;
wire   [63:0] tmp_62_cast_fu_729_p1;
wire   [63:0] tmp_66_cast_fu_808_p1;
wire   [63:0] tmp_67_cast_fu_887_p1;
wire   [63:0] tmp_26_fu_904_p1;
wire   [63:0] tmp_29_fu_921_p1;
wire   [63:0] tmp_31_fu_938_p1;
wire   [9:0] tmp_fu_440_p3;
wire   [6:0] tmp_s_fu_452_p3;
wire   [10:0] p_shl_cast_fu_448_p1;
wire   [10:0] p_shl1_cast_fu_460_p1;
wire   [10:0] tmp_cast_fu_482_p1;
wire   [10:0] tmp_35_fu_486_p2;
wire   [6:0] tmp_32_fu_508_p3;
wire   [4:0] tmp_33_fu_520_p3;
wire   [7:0] p_shl2_cast_fu_516_p1;
wire   [7:0] p_shl3_cast_fu_528_p1;
wire   [7:0] tmp_34_fu_532_p2;
wire   [8:0] tmp_21_cast_fu_554_p1;
wire   [8:0] tmp_39_fu_558_p2;
wire   [6:0] tmp_11_fu_563_p1;
wire   [11:0] p_shl4_cast_fu_567_p3;
wire   [11:0] p_shl5_cast_fu_575_p3;
wire   [11:0] tmp_23_cast_fu_601_p1;
wire   [11:0] tmp_44_fu_605_p2;
wire   [5:0] tmp_36_fu_627_p3;
wire   [3:0] tmp_37_fu_639_p3;
wire   [6:0] p_shl6_cast_fu_635_p1;
wire   [6:0] p_shl7_cast_fu_647_p1;
wire   [6:0] tmp_38_fu_651_p2;
wire   [7:0] tmp_22_cast_fu_673_p1;
wire   [7:0] tmp_42_fu_677_p2;
wire   [5:0] tmp_12_fu_682_p1;
wire   [9:0] p_shl8_cast_fu_686_p3;
wire   [9:0] p_shl9_cast_fu_694_p3;
wire   [9:0] tmp_25_cast_fu_720_p1;
wire   [9:0] tmp_47_fu_724_p2;
wire   [5:0] tmp_41_fu_746_p3;
wire   [6:0] tmp_24_cast_fu_770_p1;
wire   [6:0] tmp_46_fu_774_p2;
wire   [9:0] tmp_28_cast_fu_799_p1;
wire   [9:0] tmp_49_fu_803_p2;
wire   [4:0] tmp_45_fu_825_p3;
wire   [5:0] tmp_27_cast_fu_849_p1;
wire   [5:0] tmp_48_fu_853_p2;
wire   [7:0] tmp_30_cast_fu_878_p1;
wire   [7:0] tmp_50_fu_882_p2;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond14_fu_496_p2 == 1'd1))) begin
        channels3_reg_296 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (exitcond10_fu_661_p2 == 1'd1))) begin
        channels3_reg_296 <= channels_4_reg_1011;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (exitcond11_fu_615_p2 == 1'd1))) begin
        channels6_reg_329 <= 3'd0;
    end else if (((exitcond7_fu_758_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        channels6_reg_329 <= channels_5_reg_1045;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond8_fu_734_p2 == 1'd1))) begin
        channels9_reg_362 <= 3'd0;
    end else if (((exitcond4_fu_837_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        channels9_reg_362 <= channels_6_reg_1079;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond16_fu_428_p2 == 1'd1))) begin
        channels_reg_263 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (exitcond13_fu_542_p2 == 1'd1))) begin
        channels_reg_263 <= channels_3_reg_977;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_909_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        i10_reg_417 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state19) & (exitcond_fu_926_p2 == 1'd0))) begin
        i10_reg_417 <= i_11_fu_932_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond12_fu_589_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        i1_reg_274 <= i_4_reg_990;
    end else if (((1'b1 == ap_CS_fsm_state5) & (exitcond14_fu_496_p2 == 1'd0))) begin
        i1_reg_274 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond9_fu_708_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        i4_reg_307 <= i_5_reg_1024;
    end else if (((1'b1 == ap_CS_fsm_state8) & (exitcond11_fu_615_p2 == 1'd0))) begin
        i4_reg_307 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_813_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        i6_reg_395 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state17) & (exitcond2_fu_892_p2 == 1'd0))) begin
        i6_reg_395 <= i_6_fu_898_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_787_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        i7_reg_340 <= i_7_reg_1058;
    end else if (((1'b1 == ap_CS_fsm_state11) & (exitcond8_fu_734_p2 == 1'd0))) begin
        i7_reg_340 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_866_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        i8_reg_373 <= i_9_reg_1092;
    end else if (((1'b1 == ap_CS_fsm_state14) & (exitcond5_fu_813_p2 == 1'd0))) begin
        i8_reg_373 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_892_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
        i9_reg_406 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state18) & (exitcond1_fu_909_p2 == 1'd0))) begin
        i9_reg_406 <= i_8_fu_915_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond15_fu_470_p2 == 1'd1))) begin
        i_reg_241 <= i_3_reg_946;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_241 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (exitcond13_fu_542_p2 == 1'd0))) begin
        j2_reg_285 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (exitcond12_fu_589_p2 == 1'd0))) begin
        j2_reg_285 <= j_4_fu_595_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond10_fu_661_p2 == 1'd0))) begin
        j5_reg_318 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state10) & (exitcond9_fu_708_p2 == 1'd0))) begin
        j5_reg_318 <= j_5_fu_714_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (exitcond4_fu_837_p2 == 1'd0))) begin
        j7_reg_384 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state16) & (exitcond3_fu_866_p2 == 1'd0))) begin
        j7_reg_384 <= j_7_fu_872_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (exitcond7_fu_758_p2 == 1'd0))) begin
        j8_reg_351 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (exitcond6_fu_787_p2 == 1'd0))) begin
        j8_reg_351 <= j_6_fu_793_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond16_fu_428_p2 == 1'd0))) begin
        j_reg_252 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_252 <= j_3_reg_959;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        channels_3_reg_977 <= channels_3_fu_502_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        channels_4_reg_1011 <= channels_4_fu_621_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        channels_5_reg_1045 <= channels_5_fu_740_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        channels_6_reg_1079 <= channels_6_fu_819_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_3_reg_946 <= i_3_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_4_reg_990 <= i_4_fu_548_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_5_reg_1024 <= i_5_fu_667_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_7_reg_1058 <= i_7_fu_764_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i_9_reg_1092 <= i_9_fu_843_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_3_reg_959 <= j_3_fu_476_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond16_fu_428_p2 == 1'd0))) begin
        tmp_30_reg_951[10 : 2] <= tmp_30_fu_464_p2[10 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (exitcond13_fu_542_p2 == 1'd0))) begin
        tmp_40_reg_995[11 : 3] <= tmp_40_fu_583_p2[11 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond14_fu_496_p2 == 1'd0))) begin
        tmp_41_cast_reg_982[8 : 3] <= tmp_41_cast_fu_538_p1[8 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond15_fu_470_p2 == 1'd0))) begin
        tmp_42_cast_reg_964 <= tmp_42_cast_fu_491_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond10_fu_661_p2 == 1'd0))) begin
        tmp_43_reg_1029[9 : 2] <= tmp_43_fu_702_p2[9 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (exitcond11_fu_615_p2 == 1'd0))) begin
        tmp_45_cast_reg_1016[7 : 2] <= tmp_45_cast_fu_657_p1[7 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond8_fu_734_p2 == 1'd0))) begin
        tmp_51_cast_reg_1050[5 : 3] <= tmp_51_cast_fu_754_p1[5 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (exitcond5_fu_813_p2 == 1'd0))) begin
        tmp_58_cast_reg_1084[4 : 2] <= tmp_58_cast_fu_833_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (exitcond7_fu_758_p2 == 1'd0))) begin
        tmp_61_cast_reg_1063[9 : 3] <= tmp_61_cast_fu_779_p3[9 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (exitcond4_fu_837_p2 == 1'd0))) begin
        tmp_65_cast_reg_1097[7 : 2] <= tmp_65_cast_fu_858_p3[7 : 2];
    end
end

always @ (*) begin
    if ((((exitcond_fu_926_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_926_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        conv1_input_ce0 = 1'b1;
    end else begin
        conv1_input_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        conv1_input_we0 = 1'b1;
    end else begin
        conv1_input_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        conv1_output_ce0 = 1'b1;
    end else begin
        conv1_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (exitcond12_fu_589_p2 == 1'd0))) begin
        conv1_output_we0 = 1'b1;
    end else begin
        conv1_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        conv2_output_ce0 = 1'b1;
    end else begin
        conv2_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (exitcond6_fu_787_p2 == 1'd0))) begin
        conv2_output_we0 = 1'b1;
    end else begin
        conv2_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        fc1_output_ce0 = 1'b1;
    end else begin
        fc1_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (exitcond1_fu_909_p2 == 1'd0))) begin
        fc1_output_we0 = 1'b1;
    end else begin
        fc1_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        fc2_output_ce0 = 1'b1;
    end else begin
        fc2_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) & (exitcond_fu_926_p2 == 1'd0))) begin
        fc2_output_we0 = 1'b1;
    end else begin
        fc2_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        flatten_output_ce0 = 1'b1;
    end else begin
        flatten_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (exitcond2_fu_892_p2 == 1'd0))) begin
        flatten_output_we0 = 1'b1;
    end else begin
        flatten_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pool1_output_ce0 = 1'b1;
    end else begin
        pool1_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (exitcond9_fu_708_p2 == 1'd0))) begin
        pool1_output_we0 = 1'b1;
    end else begin
        pool1_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        pool2_output_ce0 = 1'b1;
    end else begin
        pool2_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (exitcond3_fu_866_p2 == 1'd0))) begin
        pool2_output_we0 = 1'b1;
    end else begin
        pool2_output_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond16_fu_428_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond15_fu_470_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond14_fu_496_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (exitcond13_fu_542_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond12_fu_589_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (exitcond11_fu_615_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (exitcond10_fu_661_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((exitcond9_fu_708_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond8_fu_734_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((exitcond7_fu_758_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((exitcond6_fu_787_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((exitcond5_fu_813_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((exitcond4_fu_837_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((exitcond3_fu_866_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((exitcond2_fu_892_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((exitcond1_fu_909_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            if (((exitcond_fu_926_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign channels_3_fu_502_p2 = (channels_reg_263 + 2'd1);

assign channels_4_fu_621_p2 = (channels3_reg_296 + 2'd1);

assign channels_5_fu_740_p2 = (channels6_reg_329 + 3'd1);

assign channels_6_fu_819_p2 = (channels9_reg_362 + 3'd1);

assign conv1_input_address0 = tmp_42_cast_reg_964;

assign conv1_input_d0 = data_q0;

assign conv1_output_address0 = tmp_56_cast_fu_610_p1;

assign conv1_output_d0 = 32'd0;

assign conv2_output_address0 = tmp_66_cast_fu_808_p1;

assign conv2_output_d0 = 32'd0;

assign data_address0 = tmp_42_cast_fu_491_p1;

assign exitcond10_fu_661_p2 = ((i4_reg_307 == 4'd12) ? 1'b1 : 1'b0);

assign exitcond11_fu_615_p2 = ((channels3_reg_296 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond12_fu_589_p2 = ((j2_reg_285 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond13_fu_542_p2 = ((i1_reg_274 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond14_fu_496_p2 = ((channels_reg_263 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond15_fu_470_p2 = ((j_reg_252 == 5'd28) ? 1'b1 : 1'b0);

assign exitcond16_fu_428_p2 = ((i_reg_241 == 5'd28) ? 1'b1 : 1'b0);

assign exitcond1_fu_909_p2 = ((i9_reg_406 == 6'd50) ? 1'b1 : 1'b0);

assign exitcond2_fu_892_p2 = ((i6_reg_395 == 7'd80) ? 1'b1 : 1'b0);

assign exitcond3_fu_866_p2 = ((j7_reg_384 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond4_fu_837_p2 = ((i8_reg_373 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond5_fu_813_p2 = ((channels9_reg_362 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond6_fu_787_p2 = ((j8_reg_351 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond7_fu_758_p2 = ((i7_reg_340 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond8_fu_734_p2 = ((channels6_reg_329 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond9_fu_708_p2 = ((j5_reg_318 == 4'd12) ? 1'b1 : 1'b0);

assign exitcond_fu_926_p2 = ((i10_reg_417 == 4'd10) ? 1'b1 : 1'b0);

assign fc1_output_address0 = tmp_29_fu_921_p1;

assign fc1_output_d0 = 32'd0;

assign fc2_output_address0 = tmp_31_fu_938_p1;

assign fc2_output_d0 = 32'd0;

assign flatten_output_address0 = tmp_26_fu_904_p1;

assign flatten_output_d0 = 32'd0;

assign i_11_fu_932_p2 = (i10_reg_417 + 4'd1);

assign i_3_fu_434_p2 = (i_reg_241 + 5'd1);

assign i_4_fu_548_p2 = (i1_reg_274 + 5'd1);

assign i_5_fu_667_p2 = (i4_reg_307 + 4'd1);

assign i_6_fu_898_p2 = (i6_reg_395 + 7'd1);

assign i_7_fu_764_p2 = (i7_reg_340 + 4'd1);

assign i_8_fu_915_p2 = (i9_reg_406 + 6'd1);

assign i_9_fu_843_p2 = (i8_reg_373 + 3'd1);

assign j_3_fu_476_p2 = (j_reg_252 + 5'd1);

assign j_4_fu_595_p2 = (j2_reg_285 + 5'd1);

assign j_5_fu_714_p2 = (j5_reg_318 + 4'd1);

assign j_6_fu_793_p2 = (j8_reg_351 + 4'd1);

assign j_7_fu_872_p2 = (j7_reg_384 + 3'd1);

assign p_shl1_cast_fu_460_p1 = tmp_s_fu_452_p3;

assign p_shl2_cast_fu_516_p1 = tmp_32_fu_508_p3;

assign p_shl3_cast_fu_528_p1 = tmp_33_fu_520_p3;

assign p_shl4_cast_fu_567_p3 = {{tmp_11_fu_563_p1}, {5'd0}};

assign p_shl5_cast_fu_575_p3 = {{tmp_39_fu_558_p2}, {3'd0}};

assign p_shl6_cast_fu_635_p1 = tmp_36_fu_627_p3;

assign p_shl7_cast_fu_647_p1 = tmp_37_fu_639_p3;

assign p_shl8_cast_fu_686_p3 = {{tmp_12_fu_682_p1}, {4'd0}};

assign p_shl9_cast_fu_694_p3 = {{tmp_42_fu_677_p2}, {2'd0}};

assign p_shl_cast_fu_448_p1 = tmp_fu_440_p3;

assign pool1_output_address0 = tmp_62_cast_fu_729_p1;

assign pool1_output_d0 = 32'd0;

assign pool2_output_address0 = tmp_67_cast_fu_887_p1;

assign pool2_output_d0 = 32'd0;

assign tmp_11_fu_563_p1 = tmp_39_fu_558_p2[6:0];

assign tmp_12_fu_682_p1 = tmp_42_fu_677_p2[5:0];

assign tmp_21_cast_fu_554_p1 = i1_reg_274;

assign tmp_22_cast_fu_673_p1 = i4_reg_307;

assign tmp_23_cast_fu_601_p1 = j2_reg_285;

assign tmp_24_cast_fu_770_p1 = i7_reg_340;

assign tmp_25_cast_fu_720_p1 = j5_reg_318;

assign tmp_26_fu_904_p1 = i6_reg_395;

assign tmp_27_cast_fu_849_p1 = i8_reg_373;

assign tmp_28_cast_fu_799_p1 = j8_reg_351;

assign tmp_29_fu_921_p1 = i9_reg_406;

assign tmp_30_cast_fu_878_p1 = j7_reg_384;

assign tmp_30_fu_464_p2 = (p_shl_cast_fu_448_p1 - p_shl1_cast_fu_460_p1);

assign tmp_31_fu_938_p1 = i10_reg_417;

assign tmp_32_fu_508_p3 = {{channels_reg_263}, {5'd0}};

assign tmp_33_fu_520_p3 = {{channels_reg_263}, {3'd0}};

assign tmp_34_fu_532_p2 = (p_shl2_cast_fu_516_p1 - p_shl3_cast_fu_528_p1);

assign tmp_35_fu_486_p2 = (tmp_30_reg_951 + tmp_cast_fu_482_p1);

assign tmp_36_fu_627_p3 = {{channels3_reg_296}, {4'd0}};

assign tmp_37_fu_639_p3 = {{channels3_reg_296}, {2'd0}};

assign tmp_38_fu_651_p2 = (p_shl6_cast_fu_635_p1 - p_shl7_cast_fu_647_p1);

assign tmp_39_fu_558_p2 = ($signed(tmp_21_cast_fu_554_p1) + $signed(tmp_41_cast_reg_982));

assign tmp_40_fu_583_p2 = (p_shl4_cast_fu_567_p3 - p_shl5_cast_fu_575_p3);

assign tmp_41_cast_fu_538_p1 = $signed(tmp_34_fu_532_p2);

assign tmp_41_fu_746_p3 = {{channels6_reg_329}, {3'd0}};

assign tmp_42_cast_fu_491_p1 = $signed(tmp_35_fu_486_p2);

assign tmp_42_fu_677_p2 = ($signed(tmp_22_cast_fu_673_p1) + $signed(tmp_45_cast_reg_1016));

assign tmp_43_fu_702_p2 = (p_shl8_cast_fu_686_p3 - p_shl9_cast_fu_694_p3);

assign tmp_44_fu_605_p2 = (tmp_40_reg_995 + tmp_23_cast_fu_601_p1);

assign tmp_45_cast_fu_657_p1 = $signed(tmp_38_fu_651_p2);

assign tmp_45_fu_825_p3 = {{channels9_reg_362}, {2'd0}};

assign tmp_46_fu_774_p2 = (tmp_24_cast_fu_770_p1 + tmp_51_cast_reg_1050);

assign tmp_47_fu_724_p2 = (tmp_43_reg_1029 + tmp_25_cast_fu_720_p1);

assign tmp_48_fu_853_p2 = (tmp_27_cast_fu_849_p1 + tmp_58_cast_reg_1084);

assign tmp_49_fu_803_p2 = (tmp_61_cast_reg_1063 + tmp_28_cast_fu_799_p1);

assign tmp_50_fu_882_p2 = (tmp_65_cast_reg_1097 + tmp_30_cast_fu_878_p1);

assign tmp_51_cast_fu_754_p1 = tmp_41_fu_746_p3;

assign tmp_56_cast_fu_610_p1 = tmp_44_fu_605_p2;

assign tmp_58_cast_fu_833_p1 = tmp_45_fu_825_p3;

assign tmp_61_cast_fu_779_p3 = {{tmp_46_fu_774_p2}, {3'd0}};

assign tmp_62_cast_fu_729_p1 = tmp_47_fu_724_p2;

assign tmp_65_cast_fu_858_p3 = {{tmp_48_fu_853_p2}, {2'd0}};

assign tmp_66_cast_fu_808_p1 = tmp_49_fu_803_p2;

assign tmp_67_cast_fu_887_p1 = tmp_50_fu_882_p2;

assign tmp_cast_fu_482_p1 = j_reg_252;

assign tmp_fu_440_p3 = {{i_reg_241}, {5'd0}};

assign tmp_s_fu_452_p3 = {{i_reg_241}, {2'd0}};

always @ (posedge ap_clk) begin
    tmp_30_reg_951[1:0] <= 2'b00;
    tmp_41_cast_reg_982[2:0] <= 3'b000;
    tmp_40_reg_995[2:0] <= 3'b000;
    tmp_45_cast_reg_1016[1:0] <= 2'b00;
    tmp_43_reg_1029[1:0] <= 2'b00;
    tmp_51_cast_reg_1050[2:0] <= 3'b000;
    tmp_51_cast_reg_1050[6] <= 1'b0;
    tmp_61_cast_reg_1063[2:0] <= 3'b000;
    tmp_58_cast_reg_1084[1:0] <= 2'b00;
    tmp_58_cast_reg_1084[5] <= 1'b0;
    tmp_65_cast_reg_1097[1:0] <= 2'b00;
end

endmodule //Init