set moduleName DWT
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
set C_modelName {DWT}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_out float 32 regular {pointer 1}  }
	{ data float 32 regular {pointer 0}  }
	{ read_valid int 32 regular {pointer 0}  }
	{ read_ready int 32 regular {pointer 1}  }
	{ read_over int 32 regular {pointer 1}  }
	{ write_valid int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "read_valid", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "read_valid","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "read_ready", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "read_ready","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "read_over", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "read_over","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "write_valid", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "write_valid","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out sc_out sc_lv 32 signal 0 } 
	{ data_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ data sc_in sc_lv 32 signal 1 } 
	{ read_valid sc_in sc_lv 32 signal 2 } 
	{ read_ready sc_out sc_lv 32 signal 3 } 
	{ read_ready_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ read_over sc_out sc_lv 32 signal 4 } 
	{ read_over_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ write_valid sc_out sc_lv 32 signal 5 } 
	{ write_valid_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "default" }} , 
 	{ "name": "data_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out", "role": "ap_vld" }} , 
 	{ "name": "data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "default" }} , 
 	{ "name": "read_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "read_valid", "role": "default" }} , 
 	{ "name": "read_ready", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "read_ready", "role": "default" }} , 
 	{ "name": "read_ready_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_ready", "role": "ap_vld" }} , 
 	{ "name": "read_over", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "read_over", "role": "default" }} , 
 	{ "name": "read_over_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_over", "role": "ap_vld" }} , 
 	{ "name": "write_valid", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "write_valid", "role": "default" }} , 
 	{ "name": "write_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_valid", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "DWT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "676908",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "read_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "read_ready", "Type" : "OVld", "Direction" : "O"},
			{"Name" : "read_over", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cal_flag", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "filter_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "filter_h", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_in_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_g_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_h_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_input_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_store_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_output_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_fadd_32ns_32nbkb_U1", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_fadd_32ns_32nbkb_U2", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_fmul_32ns_32ncud_U3", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DWT_fmul_32ns_32ncud_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DWT {
		data_out {Type O LastRead -1 FirstWrite 8}
		data {Type I LastRead 0 FirstWrite -1}
		read_valid {Type I LastRead 0 FirstWrite -1}
		read_ready {Type O LastRead -1 FirstWrite 0}
		read_over {Type O LastRead -1 FirstWrite 0}
		write_valid {Type O LastRead -1 FirstWrite 8}
		cal_flag {Type IO LastRead -1 FirstWrite -1}
		cnt {Type IO LastRead -1 FirstWrite -1}
		data_in {Type IO LastRead -1 FirstWrite -1}
		filter_g {Type I LastRead -1 FirstWrite -1}
		filter_h {Type I LastRead -1 FirstWrite -1}
		i {Type IO LastRead -1 FirstWrite -1}
		j {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "676908"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "676909"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_out { ap_vld {  { data_out out_data 1 32 }  { data_out_ap_vld out_vld 1 1 } } }
	data { ap_none {  { data in_data 0 32 } } }
	read_valid { ap_none {  { read_valid in_data 0 32 } } }
	read_ready { ap_ovld {  { read_ready out_data 1 32 }  { read_ready_ap_vld out_vld 1 1 } } }
	read_over { ap_vld {  { read_over out_data 1 32 }  { read_over_ap_vld out_vld 1 1 } } }
	write_valid { ap_vld {  { write_valid out_data 1 32 }  { write_valid_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
