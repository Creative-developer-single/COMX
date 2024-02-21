set moduleName MaxPooling1_layer
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
set C_modelName {MaxPooling1_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv1_output float 32 regular {array 1728 { 1 3 } 1 1 } {global 0}  }
	{ pool1_output float 32 regular {array 432 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 23,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "pool1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 11,"step" : 1},{"low" : 0,"up" : 11,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv1_output_address0 sc_out sc_lv 11 signal 0 } 
	{ conv1_output_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv1_output_q0 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address0 sc_out sc_lv 9 signal 1 } 
	{ pool1_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ pool1_output_we0 sc_out sc_logic 1 signal 1 } 
	{ pool1_output_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "conv1_output", "role": "address0" }} , 
 	{ "name": "conv1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_output", "role": "ce0" }} , 
 	{ "name": "conv1_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_output", "role": "q0" }} , 
 	{ "name": "pool1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool1_output", "role": "address0" }} , 
 	{ "name": "pool1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce0" }} , 
 	{ "name": "pool1_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "we0" }} , 
 	{ "name": "pool1_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MaxPooling1_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6127", "EstimateLatencyMax" : "6127",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fcmp_32ns_32ndEe_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MaxPooling1_layer {
		conv1_output {Type I LastRead 5 FirstWrite -1}
		pool1_output {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6127", "Max" : "6127"}
	, {"Name" : "Interval", "Min" : "6127", "Max" : "6127"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv1_output { ap_memory {  { conv1_output_address0 mem_address 1 11 }  { conv1_output_ce0 mem_ce 1 1 }  { conv1_output_q0 mem_dout 0 32 } } }
	pool1_output { ap_memory {  { pool1_output_address0 mem_address 1 9 }  { pool1_output_ce0 mem_ce 1 1 }  { pool1_output_we0 mem_we 1 1 }  { pool1_output_d0 mem_din 1 32 } } }
}
