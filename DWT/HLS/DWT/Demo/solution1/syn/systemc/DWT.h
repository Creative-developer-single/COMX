// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _DWT_HH_
#define _DWT_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "DWT_fadd_32ns_32nbkb.h"
#include "DWT_fmul_32ns_32ncud.h"
#include "DWT_data_in.h"
#include "DWT_filter_g.h"
#include "DWT_filter_h.h"
#include "DWT_data_input.h"
#include "DWT_data_output.h"

namespace ap_rtl {

struct DWT : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > data_out;
    sc_out< sc_logic > data_out_ap_vld;
    sc_in< sc_lv<32> > data;
    sc_in< sc_lv<32> > read_valid;
    sc_out< sc_lv<32> > read_ready;
    sc_out< sc_logic > read_ready_ap_vld;
    sc_out< sc_lv<32> > read_over;
    sc_out< sc_logic > read_over_ap_vld;
    sc_out< sc_lv<32> > write_valid;
    sc_out< sc_logic > write_valid_ap_vld;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    DWT(sc_module_name name);
    SC_HAS_PROCESS(DWT);

    ~DWT();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    DWT_data_in* data_in_U;
    DWT_filter_g* filter_g_U;
    DWT_filter_h* filter_h_U;
    DWT_data_input* data_input_U;
    DWT_data_input* data_store_U;
    DWT_data_output* data_output_U;
    DWT_fadd_32ns_32nbkb<1,4,32,32,32>* DWT_fadd_32ns_32nbkb_U1;
    DWT_fadd_32ns_32nbkb<1,4,32,32,32>* DWT_fadd_32ns_32nbkb_U2;
    DWT_fmul_32ns_32ncud<1,3,32,32,32>* DWT_fmul_32ns_32ncud_U3;
    DWT_fmul_32ns_32ncud<1,3,32,32,32>* DWT_fmul_32ns_32ncud_U4;
    sc_signal< sc_lv<28> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > cal_flag;
    sc_signal< sc_lv<32> > cnt;
    sc_signal< sc_lv<12> > data_in_address0;
    sc_signal< sc_logic > data_in_ce0;
    sc_signal< sc_logic > data_in_we0;
    sc_signal< sc_lv<32> > data_in_q0;
    sc_signal< sc_lv<6> > filter_g_address0;
    sc_signal< sc_logic > filter_g_ce0;
    sc_signal< sc_lv<32> > filter_g_q0;
    sc_signal< sc_lv<6> > filter_h_address0;
    sc_signal< sc_logic > filter_h_ce0;
    sc_signal< sc_lv<32> > filter_h_q0;
    sc_signal< sc_lv<32> > i;
    sc_signal< sc_lv<32> > j;
    sc_signal< sc_lv<1> > cal_flag_load_load_fu_587_p1;
    sc_signal< sc_lv<1> > cal_flag_load_reg_1170;
    sc_signal< sc_lv<1> > tmp_3_i_fu_620_p2;
    sc_signal< sc_lv<1> > tmp_3_i_reg_1177;
    sc_signal< sc_lv<11> > indvarinc_fu_642_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > indvarinc1_fu_659_p2;
    sc_signal< sc_lv<3> > indvarinc1_reg_1189;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<11> > indvarinc2_fu_665_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<11> > indvarinc3_fu_696_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<11> > i_1_fu_719_p2;
    sc_signal< sc_lv<11> > i_1_reg_1216;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_3_fu_725_p1;
    sc_signal< sc_lv<64> > tmp_3_reg_1221;
    sc_signal< sc_lv<1> > exitcond5_fu_713_p2;
    sc_signal< sc_lv<3> > level_1_fu_736_p2;
    sc_signal< sc_lv<3> > level_1_reg_1234;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > tmp_4_fu_742_p2;
    sc_signal< sc_lv<32> > tmp_4_reg_1239;
    sc_signal< sc_lv<1> > exitcond4_fu_730_p2;
    sc_signal< sc_lv<7> > tmp_16_fu_772_p2;
    sc_signal< sc_lv<7> > tmp_16_reg_1244;
    sc_signal< sc_lv<15> > tmp_50_cast_fu_786_p1;
    sc_signal< sc_lv<15> > tmp_50_cast_reg_1249;
    sc_signal< sc_lv<1> > tmp_11_fu_800_p2;
    sc_signal< sc_lv<1> > tmp_11_reg_1262;
    sc_signal< sc_lv<32> > tmp_18_fu_816_p2;
    sc_signal< sc_lv<1> > tmp_13_fu_810_p2;
    sc_signal< sc_lv<32> > n_1_fu_833_p2;
    sc_signal< sc_lv<32> > n_1_reg_1282;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > tmp_42_fu_839_p2;
    sc_signal< sc_lv<32> > tmp_42_reg_1287;
    sc_signal< sc_lv<1> > tmp_12_fu_828_p2;
    sc_signal< sc_lv<14> > data_output_addr_1_reg_1293;
    sc_signal< sc_lv<11> > data_store_addr_1_reg_1298;
    sc_signal< sc_lv<32> > i_7_fu_912_p3;
    sc_signal< sc_lv<32> > i_7_reg_1303;
    sc_signal< sc_lv<32> > tmp_14_fu_920_p2;
    sc_signal< sc_lv<32> > tmp_14_reg_1310;
    sc_signal< sc_lv<32> > k_1_fu_931_p2;
    sc_signal< sc_lv<32> > k_1_reg_1319;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_23_fu_926_p2;
    sc_signal< sc_lv<1> > tmp_29_fu_937_p2;
    sc_signal< sc_lv<32> > data_input_q0;
    sc_signal< sc_lv<32> > data_input_load_reg_1342;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > filter_g_load_reg_1348;
    sc_signal< sc_lv<32> > filter_h_load_reg_1353;
    sc_signal< sc_lv<32> > grp_fu_579_p2;
    sc_signal< sc_lv<32> > tmp_34_reg_1358;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > data_store_q0;
    sc_signal< sc_lv<32> > data_store_load_1_reg_1363;
    sc_signal< sc_lv<32> > grp_fu_583_p2;
    sc_signal< sc_lv<32> > tmp_37_reg_1368;
    sc_signal< sc_lv<32> > data_output_q0;
    sc_signal< sc_lv<32> > data_output_load_1_reg_1373;
    sc_signal< sc_lv<32> > grp_fu_571_p2;
    sc_signal< sc_lv<32> > tmp_35_reg_1378;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<32> > grp_fu_575_p2;
    sc_signal< sc_lv<32> > tmp_38_reg_1383;
    sc_signal< sc_lv<31> > i_2_fu_977_p2;
    sc_signal< sc_lv<31> > i_2_reg_1391;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > tmp_22_fu_972_p2;
    sc_signal< sc_lv<32> > i_3_fu_1022_p2;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<1> > icmp_fu_1011_p2;
    sc_signal< sc_lv<31> > i_4_fu_1037_p2;
    sc_signal< sc_lv<31> > i_4_reg_1412;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<1> > tmp_40_fu_1032_p2;
    sc_signal< sc_lv<15> > tmp_55_fu_1065_p1;
    sc_signal< sc_lv<15> > tmp_55_reg_1422;
    sc_signal< sc_lv<32> > i_5_fu_1108_p2;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<1> > icmp5_fu_1088_p2;
    sc_signal< sc_lv<11> > i_6_fu_1120_p2;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<11> > data_input_address0;
    sc_signal< sc_logic > data_input_ce0;
    sc_signal< sc_logic > data_input_we0;
    sc_signal< sc_lv<32> > data_input_d0;
    sc_signal< sc_lv<11> > data_store_address0;
    sc_signal< sc_logic > data_store_ce0;
    sc_signal< sc_logic > data_store_we0;
    sc_signal< sc_lv<32> > data_store_d0;
    sc_signal< sc_lv<14> > data_output_address0;
    sc_signal< sc_logic > data_output_ce0;
    sc_signal< sc_logic > data_output_we0;
    sc_signal< sc_lv<32> > data_output_d0;
    sc_signal< sc_lv<32> > tmp_1_i_fu_602_p2;
    sc_signal< sc_lv<32> > ap_phi_mux_cnt_loc_i_phi_fu_381_p4;
    sc_signal< sc_lv<1> > tmp_i_fu_591_p2;
    sc_signal< sc_lv<1> > ap_phi_mux_read_ready_i_phi_fu_390_p4;
    sc_signal< sc_lv<11> > invdar_reg_398;
    sc_signal< sc_lv<1> > tmp_6_fu_653_p2;
    sc_signal< sc_lv<3> > invdar1_reg_409;
    sc_signal< sc_lv<1> > tmp_9_fu_684_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_690_p2;
    sc_signal< sc_lv<11> > invdar2_reg_421;
    sc_signal< sc_lv<11> > invdar3_reg_432;
    sc_signal< sc_lv<1> > tmp_2_fu_707_p2;
    sc_signal< sc_lv<11> > i1_reg_443;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > level_reg_454;
    sc_signal< sc_lv<1> > exitcond3_fu_1114_p2;
    sc_signal< sc_lv<32> > cal_length_reg_465;
    sc_signal< sc_lv<32> > n_reg_477;
    sc_signal< sc_lv<32> > k_reg_488;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<31> > i2_reg_499;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<32> > i3_reg_511;
    sc_signal< sc_lv<31> > i4_reg_520;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<32> > i5_reg_531;
    sc_signal< sc_lv<11> > i6_reg_540;
    sc_signal< sc_lv<32> > i_load_1_reg_551;
    sc_signal< sc_lv<32> > j_load_2_reg_560;
    sc_signal< sc_lv<64> > tmp_2_i_fu_615_p1;
    sc_signal< sc_lv<64> > tmp_5_fu_648_p1;
    sc_signal< sc_lv<64> > tmp_7_fu_679_p1;
    sc_signal< sc_lv<64> > tmp_1_fu_702_p1;
    sc_signal< sc_lv<64> > tmp_54_cast_fu_859_p1;
    sc_signal< sc_lv<64> > tmp_17_fu_845_p1;
    sc_signal< sc_lv<64> > tmp_32_fu_948_p1;
    sc_signal< sc_lv<64> > tmp_58_cast_fu_962_p1;
    sc_signal< sc_lv<64> > tmp_26_fu_991_p1;
    sc_signal< sc_lv<64> > tmp_27_fu_996_p1;
    sc_signal< sc_lv<64> > tmp_36_fu_1017_p1;
    sc_signal< sc_lv<64> > tmp_59_cast_fu_1060_p1;
    sc_signal< sc_lv<64> > tmp_60_cast_fu_1073_p1;
    sc_signal< sc_lv<64> > tmp_61_cast_fu_1103_p1;
    sc_signal< sc_lv<64> > tmp_48_fu_1126_p1;
    sc_signal< sc_lv<64> > tmp_57_cast_fu_1153_p1;
    sc_signal< sc_lv<32> > tmp_21_fu_1158_p2;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > tmp_1_i_fu_602_p0;
    sc_signal< sc_lv<32> > tmp_2_i_fu_615_p0;
    sc_signal< sc_lv<1> > read_ready_write_ass_fu_626_p2;
    sc_signal< sc_lv<14> > tmp_fu_671_p3;
    sc_signal< sc_lv<6> > tmp_8_fu_748_p3;
    sc_signal< sc_lv<4> > tmp_10_fu_760_p3;
    sc_signal< sc_lv<7> > p_shl1_cast_fu_768_p1;
    sc_signal< sc_lv<7> > p_shl_cast_fu_756_p1;
    sc_signal< sc_lv<14> > tmp_19_fu_778_p3;
    sc_signal< sc_lv<15> > tmp_43_fu_850_p1;
    sc_signal< sc_lv<15> > tmp_44_fu_854_p2;
    sc_signal< sc_lv<32> > p_neg_fu_872_p2;
    sc_signal< sc_lv<31> > p_lshr_fu_878_p4;
    sc_signal< sc_lv<32> > tmp_30_fu_888_p1;
    sc_signal< sc_lv<31> > p_lshr_f_fu_898_p4;
    sc_signal< sc_lv<1> > tmp_20_fu_864_p3;
    sc_signal< sc_lv<32> > p_neg_t_fu_892_p2;
    sc_signal< sc_lv<32> > tmp_33_fu_908_p1;
    sc_signal< sc_lv<32> > tmp_31_fu_943_p2;
    sc_signal< sc_lv<7> > tmp_51_fu_953_p1;
    sc_signal< sc_lv<7> > tmp_52_fu_957_p2;
    sc_signal< sc_lv<32> > i2_cast_fu_968_p1;
    sc_signal< sc_lv<32> > tmp_25_fu_983_p3;
    sc_signal< sc_lv<22> > tmp_50_fu_1001_p4;
    sc_signal< sc_lv<32> > i4_cast_fu_1028_p1;
    sc_signal< sc_lv<14> > tmp_53_fu_1043_p1;
    sc_signal< sc_lv<15> > tmp_43_cast_fu_1047_p3;
    sc_signal< sc_lv<15> > tmp_54_fu_1055_p2;
    sc_signal< sc_lv<15> > tmp_56_fu_1069_p2;
    sc_signal< sc_lv<22> > tmp_57_fu_1078_p4;
    sc_signal< sc_lv<15> > tmp_58_fu_1094_p1;
    sc_signal< sc_lv<15> > tmp_59_fu_1098_p2;
    sc_signal< sc_lv<4> > tmp_47_fu_1135_p1;
    sc_signal< sc_lv<15> > tmp_56_cast_fu_1139_p3;
    sc_signal< sc_lv<15> > tmp_45_fu_1131_p1;
    sc_signal< sc_lv<15> > tmp_49_fu_1147_p2;
    sc_signal< sc_lv<28> > ap_NS_fsm;
    sc_signal< bool > ap_condition_178;
    sc_signal< bool > ap_condition_453;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<28> ap_ST_fsm_state1;
    static const sc_lv<28> ap_ST_fsm_state2;
    static const sc_lv<28> ap_ST_fsm_state3;
    static const sc_lv<28> ap_ST_fsm_state4;
    static const sc_lv<28> ap_ST_fsm_state5;
    static const sc_lv<28> ap_ST_fsm_state6;
    static const sc_lv<28> ap_ST_fsm_state7;
    static const sc_lv<28> ap_ST_fsm_state8;
    static const sc_lv<28> ap_ST_fsm_state9;
    static const sc_lv<28> ap_ST_fsm_state10;
    static const sc_lv<28> ap_ST_fsm_state11;
    static const sc_lv<28> ap_ST_fsm_state12;
    static const sc_lv<28> ap_ST_fsm_state13;
    static const sc_lv<28> ap_ST_fsm_state14;
    static const sc_lv<28> ap_ST_fsm_state15;
    static const sc_lv<28> ap_ST_fsm_state16;
    static const sc_lv<28> ap_ST_fsm_state17;
    static const sc_lv<28> ap_ST_fsm_state18;
    static const sc_lv<28> ap_ST_fsm_state19;
    static const sc_lv<28> ap_ST_fsm_state20;
    static const sc_lv<28> ap_ST_fsm_state21;
    static const sc_lv<28> ap_ST_fsm_state22;
    static const sc_lv<28> ap_ST_fsm_state23;
    static const sc_lv<28> ap_ST_fsm_state24;
    static const sc_lv<28> ap_ST_fsm_state25;
    static const sc_lv<28> ap_ST_fsm_state26;
    static const sc_lv<28> ap_ST_fsm_state27;
    static const sc_lv<28> ap_ST_fsm_state28;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_400;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_7FF;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<22> ap_const_lv22_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_condition_178();
    void thread_ap_condition_453();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_cnt_loc_i_phi_fu_381_p4();
    void thread_ap_phi_mux_read_ready_i_phi_fu_390_p4();
    void thread_ap_ready();
    void thread_cal_flag_load_load_fu_587_p1();
    void thread_data_in_address0();
    void thread_data_in_ce0();
    void thread_data_in_we0();
    void thread_data_input_address0();
    void thread_data_input_ce0();
    void thread_data_input_d0();
    void thread_data_input_we0();
    void thread_data_out();
    void thread_data_out_ap_vld();
    void thread_data_output_address0();
    void thread_data_output_ce0();
    void thread_data_output_d0();
    void thread_data_output_we0();
    void thread_data_store_address0();
    void thread_data_store_ce0();
    void thread_data_store_d0();
    void thread_data_store_we0();
    void thread_exitcond3_fu_1114_p2();
    void thread_exitcond4_fu_730_p2();
    void thread_exitcond5_fu_713_p2();
    void thread_filter_g_address0();
    void thread_filter_g_ce0();
    void thread_filter_h_address0();
    void thread_filter_h_ce0();
    void thread_i2_cast_fu_968_p1();
    void thread_i4_cast_fu_1028_p1();
    void thread_i_1_fu_719_p2();
    void thread_i_2_fu_977_p2();
    void thread_i_3_fu_1022_p2();
    void thread_i_4_fu_1037_p2();
    void thread_i_5_fu_1108_p2();
    void thread_i_6_fu_1120_p2();
    void thread_i_7_fu_912_p3();
    void thread_icmp5_fu_1088_p2();
    void thread_icmp_fu_1011_p2();
    void thread_indvarinc1_fu_659_p2();
    void thread_indvarinc2_fu_665_p2();
    void thread_indvarinc3_fu_696_p2();
    void thread_indvarinc_fu_642_p2();
    void thread_k_1_fu_931_p2();
    void thread_level_1_fu_736_p2();
    void thread_n_1_fu_833_p2();
    void thread_p_lshr_f_fu_898_p4();
    void thread_p_lshr_fu_878_p4();
    void thread_p_neg_fu_872_p2();
    void thread_p_neg_t_fu_892_p2();
    void thread_p_shl1_cast_fu_768_p1();
    void thread_p_shl_cast_fu_756_p1();
    void thread_read_over();
    void thread_read_over_ap_vld();
    void thread_read_ready();
    void thread_read_ready_ap_vld();
    void thread_read_ready_write_ass_fu_626_p2();
    void thread_tmp_10_fu_760_p3();
    void thread_tmp_11_fu_800_p2();
    void thread_tmp_12_fu_828_p2();
    void thread_tmp_13_fu_810_p2();
    void thread_tmp_14_fu_920_p2();
    void thread_tmp_16_fu_772_p2();
    void thread_tmp_17_fu_845_p1();
    void thread_tmp_18_fu_816_p2();
    void thread_tmp_19_fu_778_p3();
    void thread_tmp_1_fu_702_p1();
    void thread_tmp_1_i_fu_602_p0();
    void thread_tmp_1_i_fu_602_p2();
    void thread_tmp_20_fu_864_p3();
    void thread_tmp_21_fu_1158_p2();
    void thread_tmp_22_fu_972_p2();
    void thread_tmp_23_fu_926_p2();
    void thread_tmp_25_fu_983_p3();
    void thread_tmp_26_fu_991_p1();
    void thread_tmp_27_fu_996_p1();
    void thread_tmp_29_fu_937_p2();
    void thread_tmp_2_fu_707_p2();
    void thread_tmp_2_i_fu_615_p0();
    void thread_tmp_2_i_fu_615_p1();
    void thread_tmp_30_fu_888_p1();
    void thread_tmp_31_fu_943_p2();
    void thread_tmp_32_fu_948_p1();
    void thread_tmp_33_fu_908_p1();
    void thread_tmp_36_fu_1017_p1();
    void thread_tmp_3_fu_725_p1();
    void thread_tmp_3_i_fu_620_p2();
    void thread_tmp_40_fu_1032_p2();
    void thread_tmp_42_fu_839_p2();
    void thread_tmp_43_cast_fu_1047_p3();
    void thread_tmp_43_fu_850_p1();
    void thread_tmp_44_fu_854_p2();
    void thread_tmp_45_fu_1131_p1();
    void thread_tmp_47_fu_1135_p1();
    void thread_tmp_48_fu_1126_p1();
    void thread_tmp_49_fu_1147_p2();
    void thread_tmp_4_fu_742_p2();
    void thread_tmp_50_cast_fu_786_p1();
    void thread_tmp_50_fu_1001_p4();
    void thread_tmp_51_fu_953_p1();
    void thread_tmp_52_fu_957_p2();
    void thread_tmp_53_fu_1043_p1();
    void thread_tmp_54_cast_fu_859_p1();
    void thread_tmp_54_fu_1055_p2();
    void thread_tmp_55_fu_1065_p1();
    void thread_tmp_56_cast_fu_1139_p3();
    void thread_tmp_56_fu_1069_p2();
    void thread_tmp_57_cast_fu_1153_p1();
    void thread_tmp_57_fu_1078_p4();
    void thread_tmp_58_cast_fu_962_p1();
    void thread_tmp_58_fu_1094_p1();
    void thread_tmp_59_cast_fu_1060_p1();
    void thread_tmp_59_fu_1098_p2();
    void thread_tmp_5_fu_648_p1();
    void thread_tmp_60_cast_fu_1073_p1();
    void thread_tmp_61_cast_fu_1103_p1();
    void thread_tmp_6_fu_653_p2();
    void thread_tmp_7_fu_679_p1();
    void thread_tmp_8_fu_748_p3();
    void thread_tmp_9_fu_684_p2();
    void thread_tmp_fu_671_p3();
    void thread_tmp_i_fu_591_p2();
    void thread_tmp_s_fu_690_p2();
    void thread_write_valid();
    void thread_write_valid_ap_vld();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif