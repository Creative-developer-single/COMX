// ==============================================================
// File generated on Thu Feb 22 01:26:31 +0800 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "data_in"
#define AUTOTB_TVIN_data_in  "../tv/cdatafile/c.run.autotvin_data_in.dat"
// wrapc file define: "predict"
#define AUTOTB_TVOUT_predict  "../tv/cdatafile/c.run.autotvout_predict.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "predict"
#define AUTOTB_TVOUT_PC_predict  "../tv/rtldatafile/rtl.run.autotvout_predict.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_in_depth = 0;
			predict_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{data_in " << data_in_depth << "}\n";
			total_list << "{predict " << predict_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_in_depth;
		int predict_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void run (
float* data_in,
int* predict);

void AESL_WRAP_run (
float* data_in,
int* predict)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "predict"
		aesl_fh.read(AUTOTB_TVOUT_PC_predict, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_predict, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_predict, AESL_token); // data

			sc_bv<32> *predict_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'predict', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'predict', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					predict_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_predict, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_predict))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: predict
				{
					// bitslice(31, 0)
					// {
						// celement: predict(31, 0)
						// {
							sc_lv<32>* predict_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: predict(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(predict[0]) != NULL) // check the null address if the c port is array or others
								{
									predict_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(predict_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: predict(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : predict[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : predict[0]
								// output_left_conversion : predict[i_0]
								// output_type_conversion : (predict_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(predict[0]) != NULL) // check the null address if the c port is array or others
								{
									predict[i_0] = (predict_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] predict_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data_in"
		char* tvin_data_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_in);

		// "predict"
		char* tvout_predict = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_predict);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		sc_bv<32>* data_in_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: data_in
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_in(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_in[0]
						// regulate_c_name       : data_in
						// input_type_conversion : *(int*)&data_in[i_0]
						if (&(data_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_in_tmp_mem;
							data_in_tmp_mem = *(int*)&data_in[i_0];
							data_in_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_in_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_data_in, "%s\n", (data_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);
		}

		tcl_file.set_num(1, &tcl_file.data_in_depth);
		sprintf(tvin_data_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		// release memory allocation
		delete [] data_in_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		run(data_in, predict);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_predict, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_predict, tvout_predict);

		sc_bv<32>* predict_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: predict
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: predict(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : predict[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : predict[0]
						// regulate_c_name       : predict
						// input_type_conversion : predict[i_0]
						if (&(predict[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> predict_tmp_mem;
							predict_tmp_mem = predict[i_0];
							predict_tvout_wrapc_buffer[hls_map_index].range(31, 0) = predict_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_predict, "%s\n", (predict_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_predict, tvout_predict);
		}

		tcl_file.set_num(1, &tcl_file.predict_depth);
		sprintf(tvout_predict, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_predict, tvout_predict);

		// release memory allocation
		delete [] predict_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data_in"
		delete [] tvin_data_in;
		// release memory allocation: "predict"
		delete [] tvout_predict;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

