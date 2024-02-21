// ==============================================================
// File generated on Thu Feb 22 01:24:22 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __run_fc1_bias_H__
#define __run_fc1_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct run_fc1_bias_ram : public sc_core::sc_module {

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


   SC_CTOR(run_fc1_bias_ram) {
        ram[0] = "0b00111101101111001110111110101110";
        ram[1] = "0b10111101001001110010011000100010";
        ram[2] = "0b00111101111001001101000110001111";
        ram[3] = "0b00111101110110001000100111111011";
        ram[4] = "0b10111101101100111110110101010001";
        ram[5] = "0b10111101010101001101000011111110";
        ram[6] = "0b10111001111010101011111010011100";
        ram[7] = "0b00111011111100111111101011100001";
        ram[8] = "0b00111110000000010111100001100101";
        ram[9] = "0b00111101100111010011110101111101";
        ram[10] = "0b00111101100101010011011010011100";
        ram[11] = "0b00111101100011010010111010111111";
        ram[12] = "0b00111110001100111100010110100011";
        ram[13] = "0b00111100100111001111110000001000";
        ram[14] = "0b00111100101000001010100101000110";
        ram[15] = "0b00111100111111100101010000010111";
        ram[16] = "0b10111100011011110100000011111010";
        ram[17] = "0b00111101001100001100011000101100";
        ram[18] = "0b00111101010110101110010010110001";
        ram[19] = "0b10111101001001111100110010110100";
        ram[20] = "0b00111101101101000001110000101000";
        ram[21] = "0b10111100001110110001010110010110";
        ram[22] = "0b00111101000101100110110100001111";
        ram[23] = "0b00111101100001000010010111110001";
        ram[24] = "0b00111101100100111110011110011101";
        ram[25] = "0b00111101100011001101000011010000";
        ram[26] = "0b10111101001000001000110101101011";
        ram[27] = "0b00111101111110100111110011111110";
        ram[28] = "0b10111101101010010101010110011001";
        ram[29] = "0b10111100101100111010000000111110";
        ram[30] = "0b00111101100001100011001010100110";
        ram[31] = "0b00111101100001000100110001001101";
        ram[32] = "0b00111110001111011001111110010110";
        ram[33] = "0b00111100111011110011110011010000";
        ram[34] = "0b00111101100011100101011110101010";
        ram[35] = "0b10111100011110011011001000011001";
        ram[36] = "0b10111100110011111110000100011011";
        ram[37] = "0b00111101100101100011000010011111";
        ram[38] = "0b10111101100110100011100100111010";
        ram[39] = "0b00111100111110001101110011100010";
        ram[40] = "0b00111101111001101011001101110111";
        ram[41] = "0b10111100100100001011010011110100";
        ram[42] = "0b00111110000101000001100101000100";
        ram[43] = "0b00111001101100011100100111001000";
        ram[44] = "0b10111101101101011101110001000000";
        ram[45] = "0b00111101110101111100000101000001";
        ram[46] = "0b00111101110001110001001000011110";
        ram[47] = "0b00111101101010001011111100010011";
        ram[48] = "0b00111110001000011000100011100111";
        ram[49] = "0b00111101110100110101011001111110";


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


SC_MODULE(run_fc1_bias) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 50;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


run_fc1_bias_ram* meminst;


SC_CTOR(run_fc1_bias) {
meminst = new run_fc1_bias_ram("run_fc1_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~run_fc1_bias() {
    delete meminst;
}


};//endmodule
#endif
