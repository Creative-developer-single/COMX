set moduleName Flatten_layer
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
set C_modelName {Flatten_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ pool2_output float 32 regular {array 80 { 1 1 } 1 1 } {global 0}  }
	{ flatten_output float 32 regular {array 80 { 0 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pool2_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool2_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "flatten_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "flatten_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 79,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool2_output_address0 sc_out sc_lv 7 signal 0 } 
	{ pool2_output_ce0 sc_out sc_logic 1 signal 0 } 
	{ pool2_output_q0 sc_in sc_lv 32 signal 0 } 
	{ pool2_output_address1 sc_out sc_lv 7 signal 0 } 
	{ pool2_output_ce1 sc_out sc_logic 1 signal 0 } 
	{ pool2_output_q1 sc_in sc_lv 32 signal 0 } 
	{ flatten_output_address0 sc_out sc_lv 7 signal 1 } 
	{ flatten_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ flatten_output_we0 sc_out sc_logic 1 signal 1 } 
	{ flatten_output_d0 sc_out sc_lv 32 signal 1 } 
	{ flatten_output_address1 sc_out sc_lv 7 signal 1 } 
	{ flatten_output_ce1 sc_out sc_logic 1 signal 1 } 
	{ flatten_output_we1 sc_out sc_logic 1 signal 1 } 
	{ flatten_output_d1 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool2_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool2_output", "role": "address0" }} , 
 	{ "name": "pool2_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool2_output", "role": "ce0" }} , 
 	{ "name": "pool2_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool2_output", "role": "q0" }} , 
 	{ "name": "pool2_output_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool2_output", "role": "address1" }} , 
 	{ "name": "pool2_output_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool2_output", "role": "ce1" }} , 
 	{ "name": "pool2_output_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool2_output", "role": "q1" }} , 
 	{ "name": "flatten_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "flatten_output", "role": "address0" }} , 
 	{ "name": "flatten_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten_output", "role": "ce0" }} , 
 	{ "name": "flatten_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten_output", "role": "we0" }} , 
 	{ "name": "flatten_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output", "role": "d0" }} , 
 	{ "name": "flatten_output_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "flatten_output", "role": "address1" }} , 
 	{ "name": "flatten_output_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten_output", "role": "ce1" }} , 
 	{ "name": "flatten_output_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten_output", "role": "we1" }} , 
 	{ "name": "flatten_output_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Flatten_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pool2_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "flatten_output", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Flatten_layer {
		pool2_output {Type I LastRead 9 FirstWrite -1}
		flatten_output {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "42", "Max" : "42"}
	, {"Name" : "Interval", "Min" : "42", "Max" : "42"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pool2_output { ap_memory {  { pool2_output_address0 mem_address 1 7 }  { pool2_output_ce0 mem_ce 1 1 }  { pool2_output_q0 mem_dout 0 32 }  { pool2_output_address1 MemPortADDR2 1 7 }  { pool2_output_ce1 MemPortCE2 1 1 }  { pool2_output_q1 MemPortDOUT2 0 32 } } }
	flatten_output { ap_memory {  { flatten_output_address0 mem_address 1 7 }  { flatten_output_ce0 mem_ce 1 1 }  { flatten_output_we0 mem_we 1 1 }  { flatten_output_d0 mem_din 1 32 }  { flatten_output_address1 MemPortADDR2 1 7 }  { flatten_output_ce1 MemPortCE2 1 1 }  { flatten_output_we1 MemPortWE2 1 1 }  { flatten_output_d1 MemPortDIN2 1 32 } } }
}