`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/18 21:07:48
// Design Name: 
// Module Name: tb_DWT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_DWT();

localparam DATA_CNT = 1024;

reg ap_clk;
reg ap_rst;
reg ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;

reg ap_done_dl;
reg ap_idle_dl;
reg ap_ready_dl;

wire data_out_ap_vld;
wire read_ready_ap_vld;
wire read_over_ap_vld;
wire write_valid_ap_vld;

always@(posedge ap_clk or posedge ap_rst)
    if(ap_rst == 1)
        begin
            ap_done_dl <= 0;
            ap_idle_dl <= 0;
            ap_ready_dl <= 0;
        end
    else
        begin
            ap_done_dl <= ap_done;
            ap_idle_dl <= ap_idle;
            ap_ready_dl <= ap_ready;
        end

//input data
reg [31:0] data_in[1023:0];
reg [31:0] data;

reg [31:0] read_valid;
wire [31:0] read_ready;
wire [31:0] read_over;
wire [31:0] write_valid;

wire [31:0] data_out;

initial
    begin
        ap_rst = 1;
        ap_clk = 0;
        ap_start = 0;
        read_valid = 1;
        $readmemb("E:/FPGA/Xilinx/tests/DWT_test/project_1/sim/output_binary.txt",data_in);
        #200
        ap_rst = 0;
    end
    
always #5 ap_clk = ~ap_clk;

reg [15:0] cnt;

localparam STATE_BOOT = 3'b001;
localparam STATE_READ = 3'b010;
localparam STATE_WRITE = 3'b100;

reg [2:0] current_state;
reg [7:0] work_cnt;


always@(posedge ap_clk or posedge ap_rst)
    if(ap_rst == 1)
        begin
            cnt <= 0;
            work_cnt <= 0;
            current_state <= STATE_BOOT;
        end
    else
        begin
            case(current_state)
                STATE_BOOT:
                    begin
                        if(work_cnt == 30)
                            begin
                                current_state <= STATE_READ;
                                ap_start <= 1;
                                data <= data_in[cnt];
                            end
                        else
                            work_cnt <= work_cnt + 1;
                    end
                STATE_READ:
                    begin
                        if(cnt == DATA_CNT)
                            current_state <= STATE_WRITE;
                        else
                            begin
                                data = data_in[cnt];
                                if(ap_ready_dl == 0 && ap_ready == 1)
                                    cnt <= cnt + 1;
                            end
                    end
                STATE_WRITE:
                    begin
                        cnt <= 0;
                    end
            endcase
        end

DWT_0 dwt_inst(
    .data_out_ap_vld(data_out_ap_vld),
    .read_ready_ap_vld(read_ready_ap_vld),
    .read_over_ap_vld(read_over_ap_vld),
    .write_valid_ap_vld(write_valid_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .data_out(data_out),
    .data(data),
    .read_valid(read_valid),
    .read_ready(read_ready),
    .read_over(read_over),
    .write_valid(write_valid)
);

endmodule
