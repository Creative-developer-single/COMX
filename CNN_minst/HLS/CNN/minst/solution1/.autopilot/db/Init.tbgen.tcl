set moduleName Init
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
set C_modelName {Init}
set C_modelType { void 0 }
set C_modelArgList {
	{ data float 32 regular {array 784 { 1 3 } 1 1 } {global 0}  }
	{ conv1_input float 32 regular {array 784 { 0 3 } 0 1 } {global 1}  }
	{ conv1_output float 32 regular {array 1728 { 0 3 } 0 1 } {global 1}  }
	{ pool1_output float 32 regular {array 432 { 0 3 } 0 1 } {global 1}  }
	{ conv2_output float 32 regular {array 320 { 0 3 } 0 1 } {global 1}  }
	{ pool2_output float 32 regular {array 80 { 0 3 } 0 1 } {global 1}  }
	{ flatten_output float 32 regular {array 80 { 0 3 } 0 1 } {global 1}  }
	{ fc1_output float 32 regular {array 50 { 0 3 } 0 1 } {global 1}  }
	{ fc2_output float 32 regular {array 10 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "conv1_input", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv1_input","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "conv1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 23,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "pool1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 11,"step" : 1},{"low" : 0,"up" : 11,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "conv2_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv2_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "pool2_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool2_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "flatten_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "flatten_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 79,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fc1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc1_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fc2_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc2_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_address0 sc_out sc_lv 10 signal 0 } 
	{ data_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_q0 sc_in sc_lv 32 signal 0 } 
	{ conv1_input_address0 sc_out sc_lv 10 signal 1 } 
	{ conv1_input_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv1_input_we0 sc_out sc_logic 1 signal 1 } 
	{ conv1_input_d0 sc_out sc_lv 32 signal 1 } 
	{ conv1_output_address0 sc_out sc_lv 11 signal 2 } 
	{ conv1_output_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv1_output_we0 sc_out sc_logic 1 signal 2 } 
	{ conv1_output_d0 sc_out sc_lv 32 signal 2 } 
	{ pool1_output_address0 sc_out sc_lv 9 signal 3 } 
	{ pool1_output_ce0 sc_out sc_logic 1 signal 3 } 
	{ pool1_output_we0 sc_out sc_logic 1 signal 3 } 
	{ pool1_output_d0 sc_out sc_lv 32 signal 3 } 
	{ conv2_output_address0 sc_out sc_lv 9 signal 4 } 
	{ conv2_output_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv2_output_we0 sc_out sc_logic 1 signal 4 } 
	{ conv2_output_d0 sc_out sc_lv 32 signal 4 } 
	{ pool2_output_address0 sc_out sc_lv 7 signal 5 } 
	{ pool2_output_ce0 sc_out sc_logic 1 signal 5 } 
	{ pool2_output_we0 sc_out sc_logic 1 signal 5 } 
	{ pool2_output_d0 sc_out sc_lv 32 signal 5 } 
	{ flatten_output_address0 sc_out sc_lv 7 signal 6 } 
	{ flatten_output_ce0 sc_out sc_logic 1 signal 6 } 
	{ flatten_output_we0 sc_out sc_logic 1 signal 6 } 
	{ flatten_output_d0 sc_out sc_lv 32 signal 6 } 
	{ fc1_output_address0 sc_out sc_lv 6 signal 7 } 
	{ fc1_output_ce0 sc_out sc_logic 1 signal 7 } 
	{ fc1_output_we0 sc_out sc_logic 1 signal 7 } 
	{ fc1_output_d0 sc_out sc_lv 32 signal 7 } 
	{ fc2_output_address0 sc_out sc_lv 4 signal 8 } 
	{ fc2_output_ce0 sc_out sc_logic 1 signal 8 } 
	{ fc2_output_we0 sc_out sc_logic 1 signal 8 } 
	{ fc2_output_d0 sc_out sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "conv1_input_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_input", "role": "address0" }} , 
 	{ "name": "conv1_input_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_input", "role": "ce0" }} , 
 	{ "name": "conv1_input_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_input", "role": "we0" }} , 
 	{ "name": "conv1_input_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_input", "role": "d0" }} , 
 	{ "name": "conv1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "conv1_output", "role": "address0" }} , 
 	{ "name": "conv1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_output", "role": "ce0" }} , 
 	{ "name": "conv1_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_output", "role": "we0" }} , 
 	{ "name": "conv1_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_output", "role": "d0" }} , 
 	{ "name": "pool1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool1_output", "role": "address0" }} , 
 	{ "name": "pool1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce0" }} , 
 	{ "name": "pool1_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "we0" }} , 
 	{ "name": "pool1_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "d0" }} , 
 	{ "name": "conv2_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "conv2_output", "role": "address0" }} , 
 	{ "name": "conv2_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_output", "role": "ce0" }} , 
 	{ "name": "conv2_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_output", "role": "we0" }} , 
 	{ "name": "conv2_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2_output", "role": "d0" }} , 
 	{ "name": "pool2_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool2_output", "role": "address0" }} , 
 	{ "name": "pool2_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool2_output", "role": "ce0" }} , 
 	{ "name": "pool2_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool2_output", "role": "we0" }} , 
 	{ "name": "pool2_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool2_output", "role": "d0" }} , 
 	{ "name": "flatten_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "flatten_output", "role": "address0" }} , 
 	{ "name": "flatten_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten_output", "role": "ce0" }} , 
 	{ "name": "flatten_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flatten_output", "role": "we0" }} , 
 	{ "name": "flatten_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output", "role": "d0" }} , 
 	{ "name": "fc1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "fc1_output", "role": "address0" }} , 
 	{ "name": "fc1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_output", "role": "ce0" }} , 
 	{ "name": "fc1_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_output", "role": "we0" }} , 
 	{ "name": "fc1_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_output", "role": "d0" }} , 
 	{ "name": "fc2_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fc2_output", "role": "address0" }} , 
 	{ "name": "fc2_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc2_output", "role": "ce0" }} , 
 	{ "name": "fc2_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc2_output", "role": "we0" }} , 
 	{ "name": "fc2_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_output", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4700", "EstimateLatencyMax" : "4700",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1_input", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pool2_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "flatten_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fc1_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fc2_output", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Init {
		data {Type I LastRead 2 FirstWrite -1}
		conv1_input {Type O LastRead -1 FirstWrite 3}
		conv1_output {Type O LastRead -1 FirstWrite 4}
		pool1_output {Type O LastRead -1 FirstWrite 5}
		conv2_output {Type O LastRead -1 FirstWrite 6}
		pool2_output {Type O LastRead -1 FirstWrite 7}
		flatten_output {Type O LastRead -1 FirstWrite 6}
		fc1_output {Type O LastRead -1 FirstWrite 7}
		fc2_output {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4700", "Max" : "4700"}
	, {"Name" : "Interval", "Min" : "4700", "Max" : "4700"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data { ap_memory {  { data_address0 mem_address 1 10 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 32 } } }
	conv1_input { ap_memory {  { conv1_input_address0 mem_address 1 10 }  { conv1_input_ce0 mem_ce 1 1 }  { conv1_input_we0 mem_we 1 1 }  { conv1_input_d0 mem_din 1 32 } } }
	conv1_output { ap_memory {  { conv1_output_address0 mem_address 1 11 }  { conv1_output_ce0 mem_ce 1 1 }  { conv1_output_we0 mem_we 1 1 }  { conv1_output_d0 mem_din 1 32 } } }
	pool1_output { ap_memory {  { pool1_output_address0 mem_address 1 9 }  { pool1_output_ce0 mem_ce 1 1 }  { pool1_output_we0 mem_we 1 1 }  { pool1_output_d0 mem_din 1 32 } } }
	conv2_output { ap_memory {  { conv2_output_address0 mem_address 1 9 }  { conv2_output_ce0 mem_ce 1 1 }  { conv2_output_we0 mem_we 1 1 }  { conv2_output_d0 mem_din 1 32 } } }
	pool2_output { ap_memory {  { pool2_output_address0 mem_address 1 7 }  { pool2_output_ce0 mem_ce 1 1 }  { pool2_output_we0 mem_we 1 1 }  { pool2_output_d0 mem_din 1 32 } } }
	flatten_output { ap_memory {  { flatten_output_address0 mem_address 1 7 }  { flatten_output_ce0 mem_ce 1 1 }  { flatten_output_we0 mem_we 1 1 }  { flatten_output_d0 mem_din 1 32 } } }
	fc1_output { ap_memory {  { fc1_output_address0 mem_address 1 6 }  { fc1_output_ce0 mem_ce 1 1 }  { fc1_output_we0 mem_we 1 1 }  { fc1_output_d0 mem_din 1 32 } } }
	fc2_output { ap_memory {  { fc2_output_address0 mem_address 1 4 }  { fc2_output_ce0 mem_ce 1 1 }  { fc2_output_we0 mem_we 1 1 }  { fc2_output_d0 mem_din 1 32 } } }
}
