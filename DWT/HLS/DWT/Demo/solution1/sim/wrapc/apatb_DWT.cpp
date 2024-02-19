// ==============================================================
// File generated on Sun Feb 18 10:31:02 +0800 2024
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


// wrapc file define: "data_out"
#define AUTOTB_TVOUT_data_out  "../tv/cdatafile/c.DWT.autotvout_data_out.dat"
// wrapc file define: "data"
#define AUTOTB_TVIN_data  "../tv/cdatafile/c.DWT.autotvin_data.dat"
// wrapc file define: "read_valid"
#define AUTOTB_TVIN_read_valid  "../tv/cdatafile/c.DWT.autotvin_read_valid.dat"
// wrapc file define: "read_ready"
#define AUTOTB_TVOUT_read_ready  "../tv/cdatafile/c.DWT.autotvout_read_ready.dat"
// wrapc file define: "read_over"
#define AUTOTB_TVOUT_read_over  "../tv/cdatafile/c.DWT.autotvout_read_over.dat"
// wrapc file define: "write_valid"
#define AUTOTB_TVOUT_write_valid  "../tv/cdatafile/c.DWT.autotvout_write_valid.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data_out"
#define AUTOTB_TVOUT_PC_data_out  "../tv/rtldatafile/rtl.DWT.autotvout_data_out.dat"
// tvout file define: "read_ready"
#define AUTOTB_TVOUT_PC_read_ready  "../tv/rtldatafile/rtl.DWT.autotvout_read_ready.dat"
// tvout file define: "read_over"
#define AUTOTB_TVOUT_PC_read_over  "../tv/rtldatafile/rtl.DWT.autotvout_read_over.dat"
// tvout file define: "write_valid"
#define AUTOTB_TVOUT_PC_write_valid  "../tv/rtldatafile/rtl.DWT.autotvout_write_valid.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_out_depth = 0;
			data_depth = 0;
			read_valid_depth = 0;
			read_ready_depth = 0;
			read_over_depth = 0;
			write_valid_depth = 0;
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
			total_list << "{data_out " << data_out_depth << "}\n";
			total_list << "{data " << data_depth << "}\n";
			total_list << "{read_valid " << read_valid_depth << "}\n";
			total_list << "{read_ready " << read_ready_depth << "}\n";
			total_list << "{read_over " << read_over_depth << "}\n";
			total_list << "{write_valid " << write_valid_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_out_depth;
		int data_depth;
		int read_valid_depth;
		int read_ready_depth;
		int read_over_depth;
		int write_valid_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void DWT (
float* data_out,
float* data,
int* read_valid,
int* read_ready,
int* read_over,
int* write_valid);

void AESL_WRAP_DWT (
float* data_out,
float* data,
int* read_valid,
int* read_ready,
int* read_over,
int* write_valid)
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


		// output port post check: "data_out"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data

			sc_bv<32> *data_out_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
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
					data_out_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_out))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_out
				{
					// bitslice(31, 0)
					// {
						// celement: data_out(31, 0)
						// {
							sc_lv<32>* data_out_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(data_out_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_out[0]
								// output_left_conversion : *(int*)&data_out[i_0]
								// output_type_conversion : (data_out_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&data_out[i_0] = (data_out_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] data_out_pc_buffer;
		}

		// output port post check: "read_ready"
		aesl_fh.read(AUTOTB_TVOUT_PC_read_ready, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_read_ready, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_read_ready, AESL_token); // data

			sc_bv<32> *read_ready_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'read_ready', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'read_ready', possible cause: There are uninitialized variables in the C design." << endl;
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
					read_ready_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_read_ready, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_read_ready))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: read_ready
				{
					// bitslice(31, 0)
					// {
						// celement: read_ready(31, 0)
						// {
							sc_lv<32>* read_ready_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: read_ready(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(read_ready[0]) != NULL) // check the null address if the c port is array or others
								{
									read_ready_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(read_ready_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: read_ready(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : read_ready[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : read_ready[0]
								// output_left_conversion : read_ready[i_0]
								// output_type_conversion : (read_ready_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(read_ready[0]) != NULL) // check the null address if the c port is array or others
								{
									read_ready[i_0] = (read_ready_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] read_ready_pc_buffer;
		}

		// output port post check: "read_over"
		aesl_fh.read(AUTOTB_TVOUT_PC_read_over, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_read_over, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_read_over, AESL_token); // data

			sc_bv<32> *read_over_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'read_over', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'read_over', possible cause: There are uninitialized variables in the C design." << endl;
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
					read_over_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_read_over, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_read_over))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: read_over
				{
					// bitslice(31, 0)
					// {
						// celement: read_over(31, 0)
						// {
							sc_lv<32>* read_over_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: read_over(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(read_over[0]) != NULL) // check the null address if the c port is array or others
								{
									read_over_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(read_over_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: read_over(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : read_over[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : read_over[0]
								// output_left_conversion : read_over[i_0]
								// output_type_conversion : (read_over_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(read_over[0]) != NULL) // check the null address if the c port is array or others
								{
									read_over[i_0] = (read_over_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] read_over_pc_buffer;
		}

		// output port post check: "write_valid"
		aesl_fh.read(AUTOTB_TVOUT_PC_write_valid, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_write_valid, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_write_valid, AESL_token); // data

			sc_bv<32> *write_valid_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'write_valid', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'write_valid', possible cause: There are uninitialized variables in the C design." << endl;
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
					write_valid_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_write_valid, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_write_valid))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: write_valid
				{
					// bitslice(31, 0)
					// {
						// celement: write_valid(31, 0)
						// {
							sc_lv<32>* write_valid_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: write_valid(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(write_valid[0]) != NULL) // check the null address if the c port is array or others
								{
									write_valid_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(write_valid_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: write_valid(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : write_valid[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : write_valid[0]
								// output_left_conversion : write_valid[i_0]
								// output_type_conversion : (write_valid_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(write_valid[0]) != NULL) // check the null address if the c port is array or others
								{
									write_valid[i_0] = (write_valid_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] write_valid_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data_out"
		char* tvout_data_out = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_out);

		// "data"
		char* tvin_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data);

		// "read_valid"
		char* tvin_read_valid = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_read_valid);

		// "read_ready"
		char* tvout_read_ready = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_read_ready);

		// "read_over"
		char* tvout_read_over = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_read_over);

		// "write_valid"
		char* tvout_write_valid = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_write_valid);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data, tvin_data);

		sc_bv<32>* data_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data[0]
						// regulate_c_name       : data
						// input_type_conversion : *(int*)&data[i_0]
						if (&(data[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_tmp_mem;
							data_tmp_mem = *(int*)&data[i_0];
							data_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_data, "%s\n", (data_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data, tvin_data);
		}

		tcl_file.set_num(1, &tcl_file.data_depth);
		sprintf(tvin_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data, tvin_data);

		// release memory allocation
		delete [] data_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_read_valid, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_read_valid, tvin_read_valid);

		sc_bv<32>* read_valid_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: read_valid
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: read_valid(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : read_valid[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : read_valid[0]
						// regulate_c_name       : read_valid
						// input_type_conversion : read_valid[i_0]
						if (&(read_valid[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> read_valid_tmp_mem;
							read_valid_tmp_mem = read_valid[i_0];
							read_valid_tvin_wrapc_buffer[hls_map_index].range(31, 0) = read_valid_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_read_valid, "%s\n", (read_valid_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_read_valid, tvin_read_valid);
		}

		tcl_file.set_num(1, &tcl_file.read_valid_depth);
		sprintf(tvin_read_valid, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_read_valid, tvin_read_valid);

		// release memory allocation
		delete [] read_valid_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		DWT(data_out, data, read_valid, read_ready, read_over, write_valid);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		sc_bv<32>* data_out_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: data_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_out(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_out[0]
						// regulate_c_name       : data_out
						// input_type_conversion : *(int*)&data_out[i_0]
						if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_out_tmp_mem;
							data_out_tmp_mem = *(int*)&data_out[i_0];
							data_out_tvout_wrapc_buffer[hls_map_index].range(31, 0) = data_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_data_out, "%s\n", (data_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);
		}

		tcl_file.set_num(1, &tcl_file.data_out_depth);
		sprintf(tvout_data_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		// release memory allocation
		delete [] data_out_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_read_ready, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_read_ready, tvout_read_ready);

		sc_bv<32>* read_ready_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: read_ready
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: read_ready(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : read_ready[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : read_ready[0]
						// regulate_c_name       : read_ready
						// input_type_conversion : read_ready[i_0]
						if (&(read_ready[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> read_ready_tmp_mem;
							read_ready_tmp_mem = read_ready[i_0];
							read_ready_tvout_wrapc_buffer[hls_map_index].range(31, 0) = read_ready_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_read_ready, "%s\n", (read_ready_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_read_ready, tvout_read_ready);
		}

		tcl_file.set_num(1, &tcl_file.read_ready_depth);
		sprintf(tvout_read_ready, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_read_ready, tvout_read_ready);

		// release memory allocation
		delete [] read_ready_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_read_over, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_read_over, tvout_read_over);

		sc_bv<32>* read_over_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: read_over
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: read_over(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : read_over[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : read_over[0]
						// regulate_c_name       : read_over
						// input_type_conversion : read_over[i_0]
						if (&(read_over[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> read_over_tmp_mem;
							read_over_tmp_mem = read_over[i_0];
							read_over_tvout_wrapc_buffer[hls_map_index].range(31, 0) = read_over_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_read_over, "%s\n", (read_over_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_read_over, tvout_read_over);
		}

		tcl_file.set_num(1, &tcl_file.read_over_depth);
		sprintf(tvout_read_over, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_read_over, tvout_read_over);

		// release memory allocation
		delete [] read_over_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_write_valid, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_write_valid, tvout_write_valid);

		sc_bv<32>* write_valid_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: write_valid
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: write_valid(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : write_valid[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : write_valid[0]
						// regulate_c_name       : write_valid
						// input_type_conversion : write_valid[i_0]
						if (&(write_valid[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> write_valid_tmp_mem;
							write_valid_tmp_mem = write_valid[i_0];
							write_valid_tvout_wrapc_buffer[hls_map_index].range(31, 0) = write_valid_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_write_valid, "%s\n", (write_valid_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_write_valid, tvout_write_valid);
		}

		tcl_file.set_num(1, &tcl_file.write_valid_depth);
		sprintf(tvout_write_valid, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_write_valid, tvout_write_valid);

		// release memory allocation
		delete [] write_valid_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data_out"
		delete [] tvout_data_out;
		// release memory allocation: "data"
		delete [] tvin_data;
		// release memory allocation: "read_valid"
		delete [] tvin_read_valid;
		// release memory allocation: "read_ready"
		delete [] tvout_read_ready;
		// release memory allocation: "read_over"
		delete [] tvout_read_over;
		// release memory allocation: "write_valid"
		delete [] tvout_write_valid;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

