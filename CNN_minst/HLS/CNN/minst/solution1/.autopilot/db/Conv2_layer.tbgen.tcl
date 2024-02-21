set moduleName Conv2_layer
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Conv2_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ pool1_output float 32 regular {array 432 { 1 1 } 1 1 } {global 0}  }
	{ conv2_output float 32 regular {array 320 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pool1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 11,"step" : 1},{"low" : 0,"up" : 11,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "conv2_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv2_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool1_output_address0 sc_out sc_lv 9 signal 0 } 
	{ pool1_output_ce0 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q0 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address1 sc_out sc_lv 9 signal 0 } 
	{ pool1_output_ce1 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q1 sc_in sc_lv 32 signal 0 } 
	{ conv2_output_address0 sc_out sc_lv 9 signal 1 } 
	{ conv2_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv2_output_we0 sc_out sc_logic 1 signal 1 } 
	{ conv2_output_d0 sc_out sc_lv 32 signal 1 } 
	{ conv2_output_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool1_output", "role": "address0" }} , 
 	{ "name": "pool1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce0" }} , 
 	{ "name": "pool1_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q0" }} , 
 	{ "name": "pool1_output_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool1_output", "role": "address1" }} , 
 	{ "name": "pool1_output_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce1" }} , 
 	{ "name": "pool1_output_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q1" }} , 
 	{ "name": "conv2_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "conv2_output", "role": "address0" }} , 
 	{ "name": "conv2_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_output", "role": "ce0" }} , 
 	{ "name": "conv2_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_output", "role": "we0" }} , 
 	{ "name": "conv2_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2_output", "role": "d0" }} , 
 	{ "name": "conv2_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2_output", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "Conv2_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12220", "EstimateLatencyMax" : "12220",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv2_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_0_4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_1_4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_core_2_4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_bias_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_0_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_0_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_0_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_0_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_0_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_0_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_0_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_0_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_0_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_0_3_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_0_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_0_3_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_0_4_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_0_4_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_0_4_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_1_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_1_0_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_1_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_1_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_1_1_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_1_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_1_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_1_2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_1_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_1_3_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_1_3_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_1_3_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_1_4_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_1_4_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_1_4_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_2_0_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_2_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_2_0_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_2_1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_2_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_2_1_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_2_2_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_2_2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_2_2_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_2_3_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_2_3_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_2_3_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_2_4_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_2_4_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_2_4_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_3_0_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_3_0_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_3_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_3_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_3_1_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_3_1_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_3_2_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_3_2_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_3_2_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_3_3_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_3_3_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_3_3_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_3_4_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_3_4_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_3_4_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_4_0_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_4_0_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_4_0_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_4_1_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_4_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_4_1_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_4_2_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_4_2_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_4_2_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_4_3_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_4_3_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_4_3_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_0_4_4_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_1_4_4_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_core_2_4_4_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fadd_32ns_32nbkb_U49", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fadd_32ns_32nbkb_U50", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fmul_32ns_32ncud_U51", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fmul_32ns_32ncud_U52", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv2_layer {
		conv2_bias {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_0_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_0_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_0_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_0_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_0_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_0_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_0_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_0_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_0_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_0_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_0_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_0_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_0_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_0_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_0_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_1_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_1_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_1_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_1_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_1_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_1_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_1_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_1_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_1_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_1_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_1_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_1_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_1_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_1_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_1_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_2_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_2_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_2_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_2_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_2_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_2_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_2_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_2_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_2_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_2_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_2_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_2_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_2_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_2_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_2_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_3_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_3_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_3_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_3_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_3_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_3_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_3_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_3_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_3_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_3_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_3_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_3_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_3_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_3_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_3_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_4_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_4_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_4_0 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_4_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_4_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_4_1 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_4_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_4_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_4_2 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_4_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_4_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_4_3 {Type I LastRead -1 FirstWrite -1}
		conv2_core_0_4_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_1_4_4 {Type I LastRead -1 FirstWrite -1}
		conv2_core_2_4_4 {Type I LastRead -1 FirstWrite -1}
		pool1_output {Type I LastRead 39 FirstWrite -1}
		conv2_output {Type IO LastRead 1 FirstWrite 97}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12220", "Max" : "12220"}
	, {"Name" : "Interval", "Min" : "12220", "Max" : "12220"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pool1_output { ap_memory {  { pool1_output_address0 mem_address 1 9 }  { pool1_output_ce0 mem_ce 1 1 }  { pool1_output_q0 mem_dout 0 32 }  { pool1_output_address1 MemPortADDR2 1 9 }  { pool1_output_ce1 MemPortCE2 1 1 }  { pool1_output_q1 MemPortDOUT2 0 32 } } }
	conv2_output { ap_memory {  { conv2_output_address0 mem_address 1 9 }  { conv2_output_ce0 mem_ce 1 1 }  { conv2_output_we0 mem_we 1 1 }  { conv2_output_d0 mem_din 1 32 }  { conv2_output_q0 mem_dout 0 32 } } }
}
