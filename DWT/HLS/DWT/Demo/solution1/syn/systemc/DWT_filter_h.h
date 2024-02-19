// ==============================================================
// File generated on Sun Feb 18 10:30:08 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DWT_filter_h_H__
#define __DWT_filter_h_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DWT_filter_h_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 50;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(DWT_filter_h_ram) {
        ram[0] = "0b10111111001101010000010011100110";
        ram[1] = "0b00111111001101010000010011100110";
        for (unsigned i = 2; i < 10 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[10] = "0b00111110111101110100011011101010";
        ram[11] = "0b00111111010101100010010111101111";
        ram[12] = "0b00111110011001011000010111111000";
        ram[13] = "0b10111110000001001000001111101110";
        for (unsigned i = 14; i < 20 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[20] = "0b00111110101010100101001111001011";
        ram[21] = "0b00111111010011101001000001110001";
        ram[22] = "0b00111110111010110111010100010000";
        ram[23] = "0b10111110000010100100000001010100";
        ram[24] = "0b10111101101011101111101111010101";
        ram[25] = "0b00111101000100000100100101110001";
        ram[26] = "0b00000000000000000000000000000000";
        ram[27] = "0b00000000000000000000000000000000";
        ram[28] = "0b00000000000000000000000000000000";
        ram[29] = "0b00000000000000000000000000000000";
        ram[30] = "0b00111110011010111110100000101001";
        ram[31] = "0b00111111001101110000000000101111";
        ram[32] = "0b00111111001000011000000101100111";
        ram[33] = "0b10111100111001010011111000111000";
        ram[34] = "0b10111110001111111000011000001110";
        ram[35] = "0b00111100111111001010011100010000";
        ram[36] = "0b00111101000001101011000001010110";
        ram[37] = "0b10111100001011011010000010111001";
        ram[38] = "0b00000000000000000000000000000000";
        ram[39] = "0b00000000000000000000000000000000";
        ram[40] = "0b00111110001000111111000111100010";
        ram[41] = "0b00111111000110101001010010001110";
        ram[42] = "0b00111111001110010110110001001000";
        ram[43] = "0b00111110000011011100000000011100";
        ram[44] = "0b10111110011110000001110000100111";
        ram[45] = "0b10111101000001000001001100110010";
        ram[46] = "0b00111101100111101101110111001110";
        ram[47] = "0b10111011110011001000010101101010";
        ram[48] = "0b10111100010011100001111101111111";
        ram[49] = "0b00111011010110101001110000101110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(DWT_filter_h) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 50;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DWT_filter_h_ram* meminst;


SC_CTOR(DWT_filter_h) {
meminst = new DWT_filter_h_ram("DWT_filter_h_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DWT_filter_h() {
    delete meminst;
}


};//endmodule
#endif
