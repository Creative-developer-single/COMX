// ==============================================================
// File generated on Thu Feb 22 01:24:20 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Conv2_layer_conv2tde_H__
#define __Conv2_layer_conv2tde_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Conv2_layer_conv2tde_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 5;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Conv2_layer_conv2tde_ram) {
        ram[0] = "0b00111101100000010100101001100010";
        ram[1] = "0b10111110001011110000000000110011";
        ram[2] = "0b00111110000101001111011011101111";
        ram[3] = "0b00111101111111000110100110100001";
        ram[4] = "0b10111011111111000001011101110000";


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


SC_MODULE(Conv2_layer_conv2tde) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 5;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Conv2_layer_conv2tde_ram* meminst;


SC_CTOR(Conv2_layer_conv2tde) {
meminst = new Conv2_layer_conv2tde_ram("Conv2_layer_conv2tde_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Conv2_layer_conv2tde() {
    delete meminst;
}


};//endmodule
#endif
