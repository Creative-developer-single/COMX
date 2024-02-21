// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Init_HH_
#define _Init_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Init : public sc_module {
    // Port declarations 41
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_in< sc_lv<32> > data_q0;
    sc_out< sc_lv<10> > conv1_input_address0;
    sc_out< sc_logic > conv1_input_ce0;
    sc_out< sc_logic > conv1_input_we0;
    sc_out< sc_lv<32> > conv1_input_d0;
    sc_out< sc_lv<11> > conv1_output_address0;
    sc_out< sc_logic > conv1_output_ce0;
    sc_out< sc_logic > conv1_output_we0;
    sc_out< sc_lv<32> > conv1_output_d0;
    sc_out< sc_lv<9> > pool1_output_address0;
    sc_out< sc_logic > pool1_output_ce0;
    sc_out< sc_logic > pool1_output_we0;
    sc_out< sc_lv<32> > pool1_output_d0;
    sc_out< sc_lv<9> > conv2_output_address0;
    sc_out< sc_logic > conv2_output_ce0;
    sc_out< sc_logic > conv2_output_we0;
    sc_out< sc_lv<32> > conv2_output_d0;
    sc_out< sc_lv<7> > pool2_output_address0;
    sc_out< sc_logic > pool2_output_ce0;
    sc_out< sc_logic > pool2_output_we0;
    sc_out< sc_lv<32> > pool2_output_d0;
    sc_out< sc_lv<7> > flatten_output_address0;
    sc_out< sc_logic > flatten_output_ce0;
    sc_out< sc_logic > flatten_output_we0;
    sc_out< sc_lv<32> > flatten_output_d0;
    sc_out< sc_lv<6> > fc1_output_address0;
    sc_out< sc_logic > fc1_output_ce0;
    sc_out< sc_logic > fc1_output_we0;
    sc_out< sc_lv<32> > fc1_output_d0;
    sc_out< sc_lv<4> > fc2_output_address0;
    sc_out< sc_logic > fc2_output_ce0;
    sc_out< sc_logic > fc2_output_we0;
    sc_out< sc_lv<32> > fc2_output_d0;


    // Module declarations
    Init(sc_module_name name);
    SC_HAS_PROCESS(Init);

    ~Init();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<19> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_3_fu_434_p2;
    sc_signal< sc_lv<5> > i_3_reg_946;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_30_fu_464_p2;
    sc_signal< sc_lv<11> > tmp_30_reg_951;
    sc_signal< sc_lv<1> > exitcond16_fu_428_p2;
    sc_signal< sc_lv<5> > j_3_fu_476_p2;
    sc_signal< sc_lv<5> > j_3_reg_959;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_42_cast_fu_491_p1;
    sc_signal< sc_lv<64> > tmp_42_cast_reg_964;
    sc_signal< sc_lv<1> > exitcond15_fu_470_p2;
    sc_signal< sc_lv<2> > channels_3_fu_502_p2;
    sc_signal< sc_lv<2> > channels_3_reg_977;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<9> > tmp_41_cast_fu_538_p1;
    sc_signal< sc_lv<9> > tmp_41_cast_reg_982;
    sc_signal< sc_lv<1> > exitcond14_fu_496_p2;
    sc_signal< sc_lv<5> > i_4_fu_548_p2;
    sc_signal< sc_lv<5> > i_4_reg_990;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<12> > tmp_40_fu_583_p2;
    sc_signal< sc_lv<12> > tmp_40_reg_995;
    sc_signal< sc_lv<1> > exitcond13_fu_542_p2;
    sc_signal< sc_lv<5> > j_4_fu_595_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<2> > channels_4_fu_621_p2;
    sc_signal< sc_lv<2> > channels_4_reg_1011;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > tmp_45_cast_fu_657_p1;
    sc_signal< sc_lv<8> > tmp_45_cast_reg_1016;
    sc_signal< sc_lv<1> > exitcond11_fu_615_p2;
    sc_signal< sc_lv<4> > i_5_fu_667_p2;
    sc_signal< sc_lv<4> > i_5_reg_1024;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<10> > tmp_43_fu_702_p2;
    sc_signal< sc_lv<10> > tmp_43_reg_1029;
    sc_signal< sc_lv<1> > exitcond10_fu_661_p2;
    sc_signal< sc_lv<4> > j_5_fu_714_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<3> > channels_5_fu_740_p2;
    sc_signal< sc_lv<3> > channels_5_reg_1045;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<7> > tmp_51_cast_fu_754_p1;
    sc_signal< sc_lv<7> > tmp_51_cast_reg_1050;
    sc_signal< sc_lv<1> > exitcond8_fu_734_p2;
    sc_signal< sc_lv<4> > i_7_fu_764_p2;
    sc_signal< sc_lv<4> > i_7_reg_1058;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<10> > tmp_61_cast_fu_779_p3;
    sc_signal< sc_lv<10> > tmp_61_cast_reg_1063;
    sc_signal< sc_lv<1> > exitcond7_fu_758_p2;
    sc_signal< sc_lv<4> > j_6_fu_793_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<3> > channels_6_fu_819_p2;
    sc_signal< sc_lv<3> > channels_6_reg_1079;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<6> > tmp_58_cast_fu_833_p1;
    sc_signal< sc_lv<6> > tmp_58_cast_reg_1084;
    sc_signal< sc_lv<1> > exitcond5_fu_813_p2;
    sc_signal< sc_lv<3> > i_9_fu_843_p2;
    sc_signal< sc_lv<3> > i_9_reg_1092;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > tmp_65_cast_fu_858_p3;
    sc_signal< sc_lv<8> > tmp_65_cast_reg_1097;
    sc_signal< sc_lv<1> > exitcond4_fu_837_p2;
    sc_signal< sc_lv<3> > j_7_fu_872_p2;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<7> > i_6_fu_898_p2;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<6> > i_8_fu_915_p2;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<4> > i_11_fu_932_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<5> > i_reg_241;
    sc_signal< sc_lv<5> > j_reg_252;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<2> > channels_reg_263;
    sc_signal< sc_lv<5> > i1_reg_274;
    sc_signal< sc_lv<1> > exitcond12_fu_589_p2;
    sc_signal< sc_lv<5> > j2_reg_285;
    sc_signal< sc_lv<2> > channels3_reg_296;
    sc_signal< sc_lv<4> > i4_reg_307;
    sc_signal< sc_lv<1> > exitcond9_fu_708_p2;
    sc_signal< sc_lv<4> > j5_reg_318;
    sc_signal< sc_lv<3> > channels6_reg_329;
    sc_signal< sc_lv<4> > i7_reg_340;
    sc_signal< sc_lv<1> > exitcond6_fu_787_p2;
    sc_signal< sc_lv<4> > j8_reg_351;
    sc_signal< sc_lv<3> > channels9_reg_362;
    sc_signal< sc_lv<3> > i8_reg_373;
    sc_signal< sc_lv<1> > exitcond3_fu_866_p2;
    sc_signal< sc_lv<3> > j7_reg_384;
    sc_signal< sc_lv<7> > i6_reg_395;
    sc_signal< sc_lv<1> > exitcond2_fu_892_p2;
    sc_signal< sc_lv<6> > i9_reg_406;
    sc_signal< sc_lv<1> > exitcond1_fu_909_p2;
    sc_signal< sc_lv<4> > i10_reg_417;
    sc_signal< sc_lv<1> > exitcond_fu_926_p2;
    sc_signal< sc_lv<64> > tmp_56_cast_fu_610_p1;
    sc_signal< sc_lv<64> > tmp_62_cast_fu_729_p1;
    sc_signal< sc_lv<64> > tmp_66_cast_fu_808_p1;
    sc_signal< sc_lv<64> > tmp_67_cast_fu_887_p1;
    sc_signal< sc_lv<64> > tmp_26_fu_904_p1;
    sc_signal< sc_lv<64> > tmp_29_fu_921_p1;
    sc_signal< sc_lv<64> > tmp_31_fu_938_p1;
    sc_signal< sc_lv<10> > tmp_fu_440_p3;
    sc_signal< sc_lv<7> > tmp_s_fu_452_p3;
    sc_signal< sc_lv<11> > p_shl_cast_fu_448_p1;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_460_p1;
    sc_signal< sc_lv<11> > tmp_cast_fu_482_p1;
    sc_signal< sc_lv<11> > tmp_35_fu_486_p2;
    sc_signal< sc_lv<7> > tmp_32_fu_508_p3;
    sc_signal< sc_lv<5> > tmp_33_fu_520_p3;
    sc_signal< sc_lv<8> > p_shl2_cast_fu_516_p1;
    sc_signal< sc_lv<8> > p_shl3_cast_fu_528_p1;
    sc_signal< sc_lv<8> > tmp_34_fu_532_p2;
    sc_signal< sc_lv<9> > tmp_21_cast_fu_554_p1;
    sc_signal< sc_lv<9> > tmp_39_fu_558_p2;
    sc_signal< sc_lv<7> > tmp_11_fu_563_p1;
    sc_signal< sc_lv<12> > p_shl4_cast_fu_567_p3;
    sc_signal< sc_lv<12> > p_shl5_cast_fu_575_p3;
    sc_signal< sc_lv<12> > tmp_23_cast_fu_601_p1;
    sc_signal< sc_lv<12> > tmp_44_fu_605_p2;
    sc_signal< sc_lv<6> > tmp_36_fu_627_p3;
    sc_signal< sc_lv<4> > tmp_37_fu_639_p3;
    sc_signal< sc_lv<7> > p_shl6_cast_fu_635_p1;
    sc_signal< sc_lv<7> > p_shl7_cast_fu_647_p1;
    sc_signal< sc_lv<7> > tmp_38_fu_651_p2;
    sc_signal< sc_lv<8> > tmp_22_cast_fu_673_p1;
    sc_signal< sc_lv<8> > tmp_42_fu_677_p2;
    sc_signal< sc_lv<6> > tmp_12_fu_682_p1;
    sc_signal< sc_lv<10> > p_shl8_cast_fu_686_p3;
    sc_signal< sc_lv<10> > p_shl9_cast_fu_694_p3;
    sc_signal< sc_lv<10> > tmp_25_cast_fu_720_p1;
    sc_signal< sc_lv<10> > tmp_47_fu_724_p2;
    sc_signal< sc_lv<6> > tmp_41_fu_746_p3;
    sc_signal< sc_lv<7> > tmp_24_cast_fu_770_p1;
    sc_signal< sc_lv<7> > tmp_46_fu_774_p2;
    sc_signal< sc_lv<10> > tmp_28_cast_fu_799_p1;
    sc_signal< sc_lv<10> > tmp_49_fu_803_p2;
    sc_signal< sc_lv<5> > tmp_45_fu_825_p3;
    sc_signal< sc_lv<6> > tmp_27_cast_fu_849_p1;
    sc_signal< sc_lv<6> > tmp_48_fu_853_p2;
    sc_signal< sc_lv<8> > tmp_30_cast_fu_878_p1;
    sc_signal< sc_lv<8> > tmp_50_fu_882_p2;
    sc_signal< sc_lv<19> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<19> ap_ST_fsm_state1;
    static const sc_lv<19> ap_ST_fsm_state2;
    static const sc_lv<19> ap_ST_fsm_state3;
    static const sc_lv<19> ap_ST_fsm_state4;
    static const sc_lv<19> ap_ST_fsm_state5;
    static const sc_lv<19> ap_ST_fsm_state6;
    static const sc_lv<19> ap_ST_fsm_state7;
    static const sc_lv<19> ap_ST_fsm_state8;
    static const sc_lv<19> ap_ST_fsm_state9;
    static const sc_lv<19> ap_ST_fsm_state10;
    static const sc_lv<19> ap_ST_fsm_state11;
    static const sc_lv<19> ap_ST_fsm_state12;
    static const sc_lv<19> ap_ST_fsm_state13;
    static const sc_lv<19> ap_ST_fsm_state14;
    static const sc_lv<19> ap_ST_fsm_state15;
    static const sc_lv<19> ap_ST_fsm_state16;
    static const sc_lv<19> ap_ST_fsm_state17;
    static const sc_lv<19> ap_ST_fsm_state18;
    static const sc_lv<19> ap_ST_fsm_state19;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<5> ap_const_lv5_1C;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<7> ap_const_lv7_50;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_channels_3_fu_502_p2();
    void thread_channels_4_fu_621_p2();
    void thread_channels_5_fu_740_p2();
    void thread_channels_6_fu_819_p2();
    void thread_conv1_input_address0();
    void thread_conv1_input_ce0();
    void thread_conv1_input_d0();
    void thread_conv1_input_we0();
    void thread_conv1_output_address0();
    void thread_conv1_output_ce0();
    void thread_conv1_output_d0();
    void thread_conv1_output_we0();
    void thread_conv2_output_address0();
    void thread_conv2_output_ce0();
    void thread_conv2_output_d0();
    void thread_conv2_output_we0();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_exitcond10_fu_661_p2();
    void thread_exitcond11_fu_615_p2();
    void thread_exitcond12_fu_589_p2();
    void thread_exitcond13_fu_542_p2();
    void thread_exitcond14_fu_496_p2();
    void thread_exitcond15_fu_470_p2();
    void thread_exitcond16_fu_428_p2();
    void thread_exitcond1_fu_909_p2();
    void thread_exitcond2_fu_892_p2();
    void thread_exitcond3_fu_866_p2();
    void thread_exitcond4_fu_837_p2();
    void thread_exitcond5_fu_813_p2();
    void thread_exitcond6_fu_787_p2();
    void thread_exitcond7_fu_758_p2();
    void thread_exitcond8_fu_734_p2();
    void thread_exitcond9_fu_708_p2();
    void thread_exitcond_fu_926_p2();
    void thread_fc1_output_address0();
    void thread_fc1_output_ce0();
    void thread_fc1_output_d0();
    void thread_fc1_output_we0();
    void thread_fc2_output_address0();
    void thread_fc2_output_ce0();
    void thread_fc2_output_d0();
    void thread_fc2_output_we0();
    void thread_flatten_output_address0();
    void thread_flatten_output_ce0();
    void thread_flatten_output_d0();
    void thread_flatten_output_we0();
    void thread_i_11_fu_932_p2();
    void thread_i_3_fu_434_p2();
    void thread_i_4_fu_548_p2();
    void thread_i_5_fu_667_p2();
    void thread_i_6_fu_898_p2();
    void thread_i_7_fu_764_p2();
    void thread_i_8_fu_915_p2();
    void thread_i_9_fu_843_p2();
    void thread_j_3_fu_476_p2();
    void thread_j_4_fu_595_p2();
    void thread_j_5_fu_714_p2();
    void thread_j_6_fu_793_p2();
    void thread_j_7_fu_872_p2();
    void thread_p_shl1_cast_fu_460_p1();
    void thread_p_shl2_cast_fu_516_p1();
    void thread_p_shl3_cast_fu_528_p1();
    void thread_p_shl4_cast_fu_567_p3();
    void thread_p_shl5_cast_fu_575_p3();
    void thread_p_shl6_cast_fu_635_p1();
    void thread_p_shl7_cast_fu_647_p1();
    void thread_p_shl8_cast_fu_686_p3();
    void thread_p_shl9_cast_fu_694_p3();
    void thread_p_shl_cast_fu_448_p1();
    void thread_pool1_output_address0();
    void thread_pool1_output_ce0();
    void thread_pool1_output_d0();
    void thread_pool1_output_we0();
    void thread_pool2_output_address0();
    void thread_pool2_output_ce0();
    void thread_pool2_output_d0();
    void thread_pool2_output_we0();
    void thread_tmp_11_fu_563_p1();
    void thread_tmp_12_fu_682_p1();
    void thread_tmp_21_cast_fu_554_p1();
    void thread_tmp_22_cast_fu_673_p1();
    void thread_tmp_23_cast_fu_601_p1();
    void thread_tmp_24_cast_fu_770_p1();
    void thread_tmp_25_cast_fu_720_p1();
    void thread_tmp_26_fu_904_p1();
    void thread_tmp_27_cast_fu_849_p1();
    void thread_tmp_28_cast_fu_799_p1();
    void thread_tmp_29_fu_921_p1();
    void thread_tmp_30_cast_fu_878_p1();
    void thread_tmp_30_fu_464_p2();
    void thread_tmp_31_fu_938_p1();
    void thread_tmp_32_fu_508_p3();
    void thread_tmp_33_fu_520_p3();
    void thread_tmp_34_fu_532_p2();
    void thread_tmp_35_fu_486_p2();
    void thread_tmp_36_fu_627_p3();
    void thread_tmp_37_fu_639_p3();
    void thread_tmp_38_fu_651_p2();
    void thread_tmp_39_fu_558_p2();
    void thread_tmp_40_fu_583_p2();
    void thread_tmp_41_cast_fu_538_p1();
    void thread_tmp_41_fu_746_p3();
    void thread_tmp_42_cast_fu_491_p1();
    void thread_tmp_42_fu_677_p2();
    void thread_tmp_43_fu_702_p2();
    void thread_tmp_44_fu_605_p2();
    void thread_tmp_45_cast_fu_657_p1();
    void thread_tmp_45_fu_825_p3();
    void thread_tmp_46_fu_774_p2();
    void thread_tmp_47_fu_724_p2();
    void thread_tmp_48_fu_853_p2();
    void thread_tmp_49_fu_803_p2();
    void thread_tmp_50_fu_882_p2();
    void thread_tmp_51_cast_fu_754_p1();
    void thread_tmp_56_cast_fu_610_p1();
    void thread_tmp_58_cast_fu_833_p1();
    void thread_tmp_61_cast_fu_779_p3();
    void thread_tmp_62_cast_fu_729_p1();
    void thread_tmp_65_cast_fu_858_p3();
    void thread_tmp_66_cast_fu_808_p1();
    void thread_tmp_67_cast_fu_887_p1();
    void thread_tmp_cast_fu_482_p1();
    void thread_tmp_fu_440_p3();
    void thread_tmp_s_fu_452_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
