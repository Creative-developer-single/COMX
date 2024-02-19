-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 18 10:42:51 2024
-- Host        : DESKTOP-COQS8KP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA/Xilinx/tests/DWT_test/project_1/project_1.srcs/sources_1/ip/DWT_0/DWT_0_stub.vhdl
-- Design      : DWT_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DWT_0 is
  Port ( 
    data_out_ap_vld : out STD_LOGIC;
    read_ready_ap_vld : out STD_LOGIC;
    read_over_ap_vld : out STD_LOGIC;
    write_valid_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_valid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_ready : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_over : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_valid : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end DWT_0;

architecture stub of DWT_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_out_ap_vld,read_ready_ap_vld,read_over_ap_vld,write_valid_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,data_out[31:0],data[31:0],read_valid[31:0],read_ready[31:0],read_over[31:0],write_valid[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DWT,Vivado 2018.3";
begin
end;
