// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FC2_layer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fc1_output_address0,
        fc1_output_ce0,
        fc1_output_q0,
        fc2_output_address0,
        fc2_output_ce0,
        fc2_output_we0,
        fc2_output_d0,
        fc2_output_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] fc1_output_address0;
output   fc1_output_ce0;
input  [31:0] fc1_output_q0;
output  [3:0] fc2_output_address0;
output   fc2_output_ce0;
output   fc2_output_we0;
output  [31:0] fc2_output_d0;
input  [31:0] fc2_output_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fc1_output_ce0;
reg[3:0] fc2_output_address0;
reg fc2_output_ce0;
reg fc2_output_we0;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] fc2_wei_address0;
reg    fc2_wei_ce0;
wire   [31:0] fc2_wei_q0;
wire   [3:0] fc2_bias_address0;
reg    fc2_bias_ce0;
wire   [31:0] fc2_bias_q0;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state10;
wire   [3:0] i_12_fu_194_p2;
reg   [3:0] i_12_reg_305;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_200_p1;
reg   [63:0] tmp_reg_310;
wire   [0:0] exitcond3_fu_188_p2;
wire   [9:0] tmp_cast_fu_205_p1;
reg   [9:0] tmp_cast_reg_315;
reg   [3:0] fc2_output_addr_reg_320;
wire   [5:0] k_1_fu_215_p2;
reg   [5:0] k_1_reg_328;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond2_fu_209_p2;
reg   [31:0] fc1_output_load_reg_348;
wire    ap_CS_fsm_state4;
reg   [31:0] fc2_wei_load_reg_353;
wire   [31:0] tmp_35_fu_173_p2;
reg   [31:0] tmp_35_reg_358;
wire    ap_CS_fsm_state5;
wire   [31:0] index_cast1_fu_266_p1;
reg   [31:0] index_cast1_reg_368;
wire    ap_CS_fsm_state14;
wire   [3:0] i_1_fu_276_p2;
reg   [3:0] i_1_reg_376;
wire   [0:0] exitcond_fu_270_p2;
wire   [31:0] index_1_fu_287_p3;
wire    ap_CS_fsm_state15;
wire   [31:0] maxn_1_fu_294_p3;
reg   [3:0] i_reg_109;
wire    ap_CS_fsm_state13;
reg   [5:0] k_reg_120;
wire    ap_CS_fsm_state9;
reg   [31:0] predict_write_assign_reg_131;
reg   [31:0] maxn_reg_143;
reg   [3:0] index_reg_155;
wire   [63:0] tmp_102_cast_fu_261_p1;
wire   [63:0] tmp_34_fu_221_p1;
wire   [63:0] tmp_32_fu_282_p1;
wire   [31:0] grp_fu_166_p2;
reg   [31:0] grp_fu_166_p1;
wire   [8:0] tmp_82_fu_226_p3;
wire   [6:0] tmp_83_fu_238_p3;
wire   [9:0] p_shl1_cast_fu_246_p1;
wire   [9:0] p_shl_cast_fu_234_p1;
wire   [9:0] tmp_84_fu_250_p2;
wire   [9:0] tmp_85_fu_256_p2;
wire   [0:0] tmp_33_fu_177_p2;
reg   [31:0] ap_return_preg;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_return_preg = 32'd0;
end

FC2_layer_fc2_wei #(
    .DataWidth( 32 ),
    .AddressRange( 500 ),
    .AddressWidth( 9 ))
fc2_wei_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fc2_wei_address0),
    .ce0(fc2_wei_ce0),
    .q0(fc2_wei_q0)
);

FC2_layer_fc2_bias #(
    .DataWidth( 32 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
fc2_bias_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fc2_bias_address0),
    .ce0(fc2_bias_ce0),
    .q0(fc2_bias_q0)
);

run_fadd_32ns_32nbkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
run_fadd_32ns_32nbkb_U136(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(fc2_output_q0),
    .din1(grp_fu_166_p1),
    .ce(1'b1),
    .dout(grp_fu_166_p2)
);

run_fmul_32ns_32ncud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
run_fmul_32ns_32ncud_U137(
    .din0(fc1_output_load_reg_348),
    .din1(fc2_wei_load_reg_353),
    .dout(tmp_35_fu_173_p2)
);

run_fcmp_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
run_fcmp_32ns_32ndEe_U138(
    .din0(maxn_reg_143),
    .din1(fc2_output_q0),
    .opcode(5'd4),
    .dout(tmp_33_fu_177_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state14) & (exitcond_fu_270_p2 == 1'd1))) begin
            ap_return_preg <= predict_write_assign_reg_131;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_reg_109 <= i_12_reg_305;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_109 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        index_reg_155 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        index_reg_155 <= i_1_reg_376;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        k_reg_120 <= k_1_reg_328;
    end else if (((exitcond3_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_reg_120 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        maxn_reg_143 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        maxn_reg_143 <= maxn_1_fu_294_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        predict_write_assign_reg_131 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        predict_write_assign_reg_131 <= index_1_fu_287_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        fc1_output_load_reg_348 <= fc1_output_q0;
        fc2_wei_load_reg_353 <= fc2_wei_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        fc2_output_addr_reg_320 <= tmp_fu_200_p1;
        tmp_cast_reg_315[3 : 0] <= tmp_cast_fu_205_p1[3 : 0];
        tmp_reg_310[3 : 0] <= tmp_fu_200_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_12_reg_305 <= i_12_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i_1_reg_376 <= i_1_fu_276_p2;
        index_cast1_reg_368[3 : 0] <= index_cast1_fu_266_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_1_reg_328 <= k_1_fu_215_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_35_reg_358 <= tmp_35_fu_173_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state14) & (exitcond_fu_270_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state14) & (exitcond_fu_270_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (exitcond_fu_270_p2 == 1'd1))) begin
        ap_return = predict_write_assign_reg_131;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fc1_output_ce0 = 1'b1;
    end else begin
        fc1_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fc2_bias_ce0 = 1'b1;
    end else begin
        fc2_bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        fc2_output_address0 = tmp_32_fu_282_p1;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state5))) begin
        fc2_output_address0 = fc2_output_addr_reg_320;
    end else begin
        fc2_output_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        fc2_output_ce0 = 1'b1;
    end else begin
        fc2_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13))) begin
        fc2_output_we0 = 1'b1;
    end else begin
        fc2_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fc2_wei_ce0 = 1'b1;
    end else begin
        fc2_wei_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_166_p1 = fc2_bias_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_166_p1 = tmp_35_reg_358;
    end else begin
        grp_fu_166_p1 = 'bx;
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
            if (((exitcond3_fu_188_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_209_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (exitcond_fu_270_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond2_fu_209_p2 = ((k_reg_120 == 6'd50) ? 1'b1 : 1'b0);

assign exitcond3_fu_188_p2 = ((i_reg_109 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond_fu_270_p2 = ((index_reg_155 == 4'd10) ? 1'b1 : 1'b0);

assign fc1_output_address0 = tmp_34_fu_221_p1;

assign fc2_bias_address0 = tmp_reg_310;

assign fc2_output_d0 = grp_fu_166_p2;

assign fc2_wei_address0 = tmp_102_cast_fu_261_p1;

assign i_12_fu_194_p2 = (i_reg_109 + 4'd1);

assign i_1_fu_276_p2 = (index_reg_155 + 4'd1);

assign index_1_fu_287_p3 = ((tmp_33_fu_177_p2[0:0] === 1'b1) ? index_cast1_reg_368 : predict_write_assign_reg_131);

assign index_cast1_fu_266_p1 = index_reg_155;

assign k_1_fu_215_p2 = (k_reg_120 + 6'd1);

assign maxn_1_fu_294_p3 = ((tmp_33_fu_177_p2[0:0] === 1'b1) ? fc2_output_q0 : maxn_reg_143);

assign p_shl1_cast_fu_246_p1 = tmp_83_fu_238_p3;

assign p_shl_cast_fu_234_p1 = tmp_82_fu_226_p3;

assign tmp_102_cast_fu_261_p1 = tmp_85_fu_256_p2;

assign tmp_32_fu_282_p1 = index_reg_155;

assign tmp_34_fu_221_p1 = k_reg_120;

assign tmp_82_fu_226_p3 = {{k_reg_120}, {3'd0}};

assign tmp_83_fu_238_p3 = {{k_reg_120}, {1'd0}};

assign tmp_84_fu_250_p2 = (p_shl1_cast_fu_246_p1 + p_shl_cast_fu_234_p1);

assign tmp_85_fu_256_p2 = (tmp_84_fu_250_p2 + tmp_cast_reg_315);

assign tmp_cast_fu_205_p1 = i_reg_109;

assign tmp_fu_200_p1 = i_reg_109;

always @ (posedge ap_clk) begin
    tmp_reg_310[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    tmp_cast_reg_315[9:4] <= 6'b000000;
    index_cast1_reg_368[31:4] <= 28'b0000000000000000000000000000;
end

endmodule //FC2_layer
