#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("data_out", 32, hls_out, 0, "ap_vld", "out_data", 1),
	Port_Property("data_out_ap_vld", 1, hls_out, 0, "ap_vld", "out_vld", 1),
	Port_Property("data", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("read_valid", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("read_ready", 32, hls_out, 3, "ap_ovld", "out_data", 1),
	Port_Property("read_ready_ap_vld", 1, hls_out, 3, "ap_ovld", "out_vld", 1),
	Port_Property("read_over", 32, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("read_over_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("write_valid", 32, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("write_valid_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "DWT";
