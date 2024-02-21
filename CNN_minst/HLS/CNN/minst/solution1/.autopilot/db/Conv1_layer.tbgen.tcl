set moduleName Conv1_layer
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
set C_modelName {Conv1_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv1_input float 32 regular {array 784 { 1 1 } 1 1 } {global 0}  }
	{ conv1_output float 32 regular {array 1728 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv1_input", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv1_input","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "conv1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 23,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv1_input_address0 sc_out sc_lv 10 signal 0 } 
	{ conv1_input_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv1_input_q0 sc_in sc_lv 32 signal 0 } 
	{ conv1_input_address1 sc_out sc_lv 10 signal 0 } 
	{ conv1_input_ce1 sc_out sc_logic 1 signal 0 } 
	{ conv1_input_q1 sc_in sc_lv 32 signal 0 } 
	{ conv1_output_address0 sc_out sc_lv 11 signal 1 } 
	{ conv1_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv1_output_we0 sc_out sc_logic 1 signal 1 } 
	{ conv1_output_d0 sc_out sc_lv 32 signal 1 } 
	{ conv1_output_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv1_input_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_input", "role": "address0" }} , 
 	{ "name": "conv1_input_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_input", "role": "ce0" }} , 
 	{ "name": "conv1_input_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_input", "role": "q0" }} , 
 	{ "name": "conv1_input_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_input", "role": "address1" }} , 
 	{ "name": "conv1_input_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_input", "role": "ce1" }} , 
 	{ "name": "conv1_input_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_input", "role": "q1" }} , 
 	{ "name": "conv1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "conv1_output", "role": "address0" }} , 
 	{ "name": "conv1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_output", "role": "ce0" }} , 
 	{ "name": "conv1_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_output", "role": "we0" }} , 
 	{ "name": "conv1_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_output", "role": "d0" }} , 
 	{ "name": "conv1_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_output", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "Conv1_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22558", "EstimateLatencyMax" : "22558",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1_input", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fadd_32ns_32nbkb_U10", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fadd_32ns_32nbkb_U11", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fmul_32ns_32ncud_U12", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fmul_32ns_32ncud_U13", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U14", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U15", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U16", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U17", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U18", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U19", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U20", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U21", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U22", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U23", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U24", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U25", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U26", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U27", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U28", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U29", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U30", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U31", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U32", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U33", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U34", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U35", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U36", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U37", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U38", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_mux_32_32_1_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv1_layer {
		conv1_input {Type I LastRead 15 FirstWrite -1}
		conv1_output {Type IO LastRead 2 FirstWrite 43}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22558", "Max" : "22558"}
	, {"Name" : "Interval", "Min" : "22558", "Max" : "22558"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv1_input { ap_memory {  { conv1_input_address0 mem_address 1 10 }  { conv1_input_ce0 mem_ce 1 1 }  { conv1_input_q0 mem_dout 0 32 }  { conv1_input_address1 MemPortADDR2 1 10 }  { conv1_input_ce1 MemPortCE2 1 1 }  { conv1_input_q1 MemPortDOUT2 0 32 } } }
	conv1_output { ap_memory {  { conv1_output_address0 mem_address 1 11 }  { conv1_output_ce0 mem_ce 1 1 }  { conv1_output_we0 mem_we 1 1 }  { conv1_output_d0 mem_din 1 32 }  { conv1_output_q0 mem_dout 0 32 } } }
}
