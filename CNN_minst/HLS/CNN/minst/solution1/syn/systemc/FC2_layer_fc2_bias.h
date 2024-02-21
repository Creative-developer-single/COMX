// ==============================================================
// File generated on Thu Feb 22 01:24:21 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __FC2_layer_fc2_bias_H__
#define __FC2_layer_fc2_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct FC2_layer_fc2_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(FC2_layer_fc2_bias_ram) {
        ram[0] = "0b00111101100100001111011001101110";
        ram[1] = "0b00111110110010111101000110100010";
        ram[2] = "0b10111110101111110000111010101101";
        ram[3] = "0b10111101111110101001111010000000";
        ram[4] = "0b00111101010111000111011100000001";
        ram[5] = "0b10111101100111000100011110011001";
        ram[6] = "0b00111101101110110101110111010011";
        ram[7] = "0b00111011001110101110111001110011";
        ram[8] = "0b00111110100110110110100010111110";
        ram[9] = "0b00111110000000010101010101001110";


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


SC_MODULE(FC2_layer_fc2_bias) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


FC2_layer_fc2_bias_ram* meminst;


SC_CTOR(FC2_layer_fc2_bias) {
meminst = new FC2_layer_fc2_bias_ram("FC2_layer_fc2_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~FC2_layer_fc2_bias() {
    delete meminst;
}


};//endmodule
#endif
