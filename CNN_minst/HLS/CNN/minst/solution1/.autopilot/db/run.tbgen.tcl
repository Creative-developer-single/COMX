set moduleName run
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
set C_modelName {run}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in float 32 regular {pointer 0}  }
	{ predict int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "predict", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "predict","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in sc_in sc_lv 32 signal 0 } 
	{ predict sc_out sc_lv 32 signal 1 } 
	{ predict_ap_vld sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "default" }} , 
 	{ "name": "predict", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "predict", "role": "default" }} , 
 	{ "name": "predict_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "predict", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "93", "124", "130", "132", "134", "135", "136", "137", "138"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "78763",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Conv2_layer_fu_382"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Conv1_layer_fu_542"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FC2_layer_fu_550"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MaxPooling1_layer_fu_563"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MaxPooling2_layer_fu_571"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Init_fu_579"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Flatten_layer_fu_601"}],
		"Port" : [
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "predict", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "column", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "data"}]},
			{"Name" : "conv1_input", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_Conv1_layer_fu_542", "Port" : "conv1_input"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "conv1_input"}]},
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_MaxPooling1_layer_fu_563", "Port" : "conv1_output"},
					{"ID" : "93", "SubInstance" : "grp_Conv1_layer_fu_542", "Port" : "conv1_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "conv1_output"}]},
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_MaxPooling1_layer_fu_563", "Port" : "pool1_output"},
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "pool1_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "pool1_output"}]},
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_MaxPooling2_layer_fu_571", "Port" : "conv2_output"},
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "conv2_output"}]},
			{"Name" : "pool2_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_MaxPooling2_layer_fu_571", "Port" : "pool2_output"},
					{"ID" : "135", "SubInstance" : "grp_Flatten_layer_fu_601", "Port" : "pool2_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "pool2_output"}]},
			{"Name" : "flatten_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_Flatten_layer_fu_601", "Port" : "flatten_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "flatten_output"}]},
			{"Name" : "fc1_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_FC2_layer_fu_550", "Port" : "fc1_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "fc1_output"}]},
			{"Name" : "fc2_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_FC2_layer_fu_550", "Port" : "fc2_output"},
					{"ID" : "134", "SubInstance" : "grp_Init_fu_579", "Port" : "fc2_output"}]},
			{"Name" : "conv2_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_bias"}]},
			{"Name" : "conv2_core_0_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_0_0"}]},
			{"Name" : "conv2_core_1_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_0_0"}]},
			{"Name" : "conv2_core_2_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_0_0"}]},
			{"Name" : "conv2_core_0_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_0_1"}]},
			{"Name" : "conv2_core_1_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_0_1"}]},
			{"Name" : "conv2_core_2_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_0_1"}]},
			{"Name" : "conv2_core_0_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_0_2"}]},
			{"Name" : "conv2_core_1_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_0_2"}]},
			{"Name" : "conv2_core_2_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_0_2"}]},
			{"Name" : "conv2_core_0_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_0_3"}]},
			{"Name" : "conv2_core_1_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_0_3"}]},
			{"Name" : "conv2_core_2_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_0_3"}]},
			{"Name" : "conv2_core_0_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_0_4"}]},
			{"Name" : "conv2_core_1_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_0_4"}]},
			{"Name" : "conv2_core_2_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_0_4"}]},
			{"Name" : "conv2_core_0_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_1_0"}]},
			{"Name" : "conv2_core_1_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_1_0"}]},
			{"Name" : "conv2_core_2_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_1_0"}]},
			{"Name" : "conv2_core_0_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_1_1"}]},
			{"Name" : "conv2_core_1_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_1_1"}]},
			{"Name" : "conv2_core_2_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_1_1"}]},
			{"Name" : "conv2_core_0_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_1_2"}]},
			{"Name" : "conv2_core_1_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_1_2"}]},
			{"Name" : "conv2_core_2_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_1_2"}]},
			{"Name" : "conv2_core_0_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_1_3"}]},
			{"Name" : "conv2_core_1_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_1_3"}]},
			{"Name" : "conv2_core_2_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_1_3"}]},
			{"Name" : "conv2_core_0_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_1_4"}]},
			{"Name" : "conv2_core_1_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_1_4"}]},
			{"Name" : "conv2_core_2_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_1_4"}]},
			{"Name" : "conv2_core_0_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_2_0"}]},
			{"Name" : "conv2_core_1_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_2_0"}]},
			{"Name" : "conv2_core_2_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_2_0"}]},
			{"Name" : "conv2_core_0_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_2_1"}]},
			{"Name" : "conv2_core_1_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_2_1"}]},
			{"Name" : "conv2_core_2_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_2_1"}]},
			{"Name" : "conv2_core_0_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_2_2"}]},
			{"Name" : "conv2_core_1_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_2_2"}]},
			{"Name" : "conv2_core_2_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_2_2"}]},
			{"Name" : "conv2_core_0_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_2_3"}]},
			{"Name" : "conv2_core_1_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_2_3"}]},
			{"Name" : "conv2_core_2_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_2_3"}]},
			{"Name" : "conv2_core_0_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_2_4"}]},
			{"Name" : "conv2_core_1_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_2_4"}]},
			{"Name" : "conv2_core_2_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_2_4"}]},
			{"Name" : "conv2_core_0_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_3_0"}]},
			{"Name" : "conv2_core_1_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_3_0"}]},
			{"Name" : "conv2_core_2_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_3_0"}]},
			{"Name" : "conv2_core_0_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_3_1"}]},
			{"Name" : "conv2_core_1_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_3_1"}]},
			{"Name" : "conv2_core_2_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_3_1"}]},
			{"Name" : "conv2_core_0_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_3_2"}]},
			{"Name" : "conv2_core_1_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_3_2"}]},
			{"Name" : "conv2_core_2_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_3_2"}]},
			{"Name" : "conv2_core_0_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_3_3"}]},
			{"Name" : "conv2_core_1_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_3_3"}]},
			{"Name" : "conv2_core_2_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_3_3"}]},
			{"Name" : "conv2_core_0_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_3_4"}]},
			{"Name" : "conv2_core_1_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_3_4"}]},
			{"Name" : "conv2_core_2_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_3_4"}]},
			{"Name" : "conv2_core_0_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_4_0"}]},
			{"Name" : "conv2_core_1_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_4_0"}]},
			{"Name" : "conv2_core_2_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_4_0"}]},
			{"Name" : "conv2_core_0_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_4_1"}]},
			{"Name" : "conv2_core_1_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_4_1"}]},
			{"Name" : "conv2_core_2_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_4_1"}]},
			{"Name" : "conv2_core_0_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_4_2"}]},
			{"Name" : "conv2_core_1_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_4_2"}]},
			{"Name" : "conv2_core_2_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_4_2"}]},
			{"Name" : "conv2_core_0_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_4_3"}]},
			{"Name" : "conv2_core_1_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_4_3"}]},
			{"Name" : "conv2_core_2_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_4_3"}]},
			{"Name" : "conv2_core_0_4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_0_4_4"}]},
			{"Name" : "conv2_core_1_4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_1_4_4"}]},
			{"Name" : "conv2_core_2_4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Conv2_layer_fu_382", "Port" : "conv2_core_2_4_4"}]},
			{"Name" : "fc1_wei", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_wei", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_FC2_layer_fu_550", "Port" : "fc2_wei"}]},
			{"Name" : "fc2_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_FC2_layer_fu_550", "Port" : "fc2_bias"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_input_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_output_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool1_output_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_output_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool2_output_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flatten_output_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_output_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc2_output_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_wei_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_bias_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_bias_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_0_0_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_0_0_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_0_0_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_0_1_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_0_1_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_0_1_U", "Parent" : "12"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_0_2_U", "Parent" : "12"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_0_2_U", "Parent" : "12"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_0_2_U", "Parent" : "12"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_0_3_U", "Parent" : "12"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_0_3_U", "Parent" : "12"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_0_3_U", "Parent" : "12"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_0_4_U", "Parent" : "12"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_0_4_U", "Parent" : "12"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_0_4_U", "Parent" : "12"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_1_0_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_1_0_U", "Parent" : "12"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_1_0_U", "Parent" : "12"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_1_1_U", "Parent" : "12"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_1_1_U", "Parent" : "12"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_1_1_U", "Parent" : "12"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_1_2_U", "Parent" : "12"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_1_2_U", "Parent" : "12"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_1_2_U", "Parent" : "12"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_1_3_U", "Parent" : "12"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_1_3_U", "Parent" : "12"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_1_3_U", "Parent" : "12"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_1_4_U", "Parent" : "12"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_1_4_U", "Parent" : "12"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_1_4_U", "Parent" : "12"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_2_0_U", "Parent" : "12"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_2_0_U", "Parent" : "12"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_2_0_U", "Parent" : "12"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_2_1_U", "Parent" : "12"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_2_1_U", "Parent" : "12"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_2_1_U", "Parent" : "12"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_2_2_U", "Parent" : "12"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_2_2_U", "Parent" : "12"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_2_2_U", "Parent" : "12"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_2_3_U", "Parent" : "12"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_2_3_U", "Parent" : "12"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_2_3_U", "Parent" : "12"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_2_4_U", "Parent" : "12"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_2_4_U", "Parent" : "12"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_2_4_U", "Parent" : "12"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_3_0_U", "Parent" : "12"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_3_0_U", "Parent" : "12"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_3_0_U", "Parent" : "12"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_3_1_U", "Parent" : "12"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_3_1_U", "Parent" : "12"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_3_1_U", "Parent" : "12"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_3_2_U", "Parent" : "12"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_3_2_U", "Parent" : "12"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_3_2_U", "Parent" : "12"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_3_3_U", "Parent" : "12"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_3_3_U", "Parent" : "12"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_3_3_U", "Parent" : "12"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_3_4_U", "Parent" : "12"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_3_4_U", "Parent" : "12"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_3_4_U", "Parent" : "12"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_4_0_U", "Parent" : "12"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_4_0_U", "Parent" : "12"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_4_0_U", "Parent" : "12"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_4_1_U", "Parent" : "12"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_4_1_U", "Parent" : "12"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_4_1_U", "Parent" : "12"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_4_2_U", "Parent" : "12"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_4_2_U", "Parent" : "12"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_4_2_U", "Parent" : "12"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_4_3_U", "Parent" : "12"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_4_3_U", "Parent" : "12"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_4_3_U", "Parent" : "12"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_0_4_4_U", "Parent" : "12"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_1_4_4_U", "Parent" : "12"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.conv2_core_2_4_4_U", "Parent" : "12"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.run_fadd_32ns_32nbkb_U49", "Parent" : "12"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.run_fadd_32ns_32nbkb_U50", "Parent" : "12"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.run_fmul_32ns_32ncud_U51", "Parent" : "12"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv2_layer_fu_382.run_fmul_32ns_32ncud_U52", "Parent" : "12"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542", "Parent" : "0", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
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
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_fadd_32ns_32nbkb_U10", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_fadd_32ns_32nbkb_U11", "Parent" : "93"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_fmul_32ns_32ncud_U12", "Parent" : "93"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_fmul_32ns_32ncud_U13", "Parent" : "93"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U14", "Parent" : "93"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U15", "Parent" : "93"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U16", "Parent" : "93"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U17", "Parent" : "93"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U18", "Parent" : "93"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U19", "Parent" : "93"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U20", "Parent" : "93"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U21", "Parent" : "93"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U22", "Parent" : "93"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U23", "Parent" : "93"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U24", "Parent" : "93"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U25", "Parent" : "93"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U26", "Parent" : "93"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U27", "Parent" : "93"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U28", "Parent" : "93"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U29", "Parent" : "93"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U30", "Parent" : "93"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U31", "Parent" : "93"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U32", "Parent" : "93"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U33", "Parent" : "93"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U34", "Parent" : "93"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U35", "Parent" : "93"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U36", "Parent" : "93"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U37", "Parent" : "93"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U38", "Parent" : "93"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Conv1_layer_fu_542.run_mux_32_32_1_1_U39", "Parent" : "93"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FC2_layer_fu_550", "Parent" : "0", "Child" : ["125", "126", "127", "128", "129"],
		"CDFG" : "FC2_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3582", "EstimateLatencyMax" : "3582",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fc1_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_wei", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_output", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fc2_bias", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FC2_layer_fu_550.fc2_wei_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FC2_layer_fu_550.fc2_bias_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FC2_layer_fu_550.run_fadd_32ns_32nbkb_U136", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FC2_layer_fu_550.run_fmul_32ns_32ncud_U137", "Parent" : "124"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FC2_layer_fu_550.run_fcmp_32ns_32ndEe_U138", "Parent" : "124"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MaxPooling1_layer_fu_563", "Parent" : "0", "Child" : ["131"],
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
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MaxPooling1_layer_fu_563.run_fcmp_32ns_32ndEe_U45", "Parent" : "130"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MaxPooling2_layer_fu_571", "Parent" : "0", "Child" : ["133"],
		"CDFG" : "MaxPooling2_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1171", "EstimateLatencyMax" : "1171",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool2_output", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MaxPooling2_layer_fu_571.run_fcmp_32ns_32ndEe_U131", "Parent" : "132"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Init_fu_579", "Parent" : "0",
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
			{"Name" : "fc2_output", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Flatten_layer_fu_601", "Parent" : "0",
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
			{"Name" : "flatten_output", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fadd_32ns_32nbkb_U143", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fmul_32ns_32ncud_U144", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_fcmp_32ns_32ndEe_U145", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		data_in {Type I LastRead 0 FirstWrite -1}
		predict {Type O LastRead -1 FirstWrite 13}
		row {Type IO LastRead -1 FirstWrite -1}
		column {Type IO LastRead -1 FirstWrite -1}
		data {Type IO LastRead -1 FirstWrite -1}
		conv1_input {Type IO LastRead -1 FirstWrite -1}
		conv1_output {Type IO LastRead -1 FirstWrite -1}
		pool1_output {Type IO LastRead -1 FirstWrite -1}
		conv2_output {Type IO LastRead -1 FirstWrite -1}
		pool2_output {Type IO LastRead -1 FirstWrite -1}
		flatten_output {Type IO LastRead -1 FirstWrite -1}
		fc1_output {Type IO LastRead -1 FirstWrite -1}
		fc2_output {Type IO LastRead -1 FirstWrite -1}
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
		fc1_wei {Type I LastRead -1 FirstWrite -1}
		fc1_bias {Type I LastRead -1 FirstWrite -1}
		fc2_wei {Type I LastRead -1 FirstWrite -1}
		fc2_bias {Type I LastRead -1 FirstWrite -1}}
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
		conv2_output {Type IO LastRead 1 FirstWrite 97}}
	Conv1_layer {
		conv1_input {Type I LastRead 15 FirstWrite -1}
		conv1_output {Type IO LastRead 2 FirstWrite 43}}
	FC2_layer {
		fc1_output {Type I LastRead 2 FirstWrite -1}
		fc2_wei {Type I LastRead -1 FirstWrite -1}
		fc2_output {Type IO LastRead 4 FirstWrite 6}
		fc2_bias {Type I LastRead -1 FirstWrite -1}}
	MaxPooling1_layer {
		conv1_output {Type I LastRead 5 FirstWrite -1}
		pool1_output {Type O LastRead -1 FirstWrite 4}}
	MaxPooling2_layer {
		conv2_output {Type I LastRead 5 FirstWrite -1}
		pool2_output {Type O LastRead -1 FirstWrite 4}}
	Init {
		data {Type I LastRead 2 FirstWrite -1}
		conv1_input {Type O LastRead -1 FirstWrite 3}
		conv1_output {Type O LastRead -1 FirstWrite 4}
		pool1_output {Type O LastRead -1 FirstWrite 5}
		conv2_output {Type O LastRead -1 FirstWrite 6}
		pool2_output {Type O LastRead -1 FirstWrite 7}
		flatten_output {Type O LastRead -1 FirstWrite 6}
		fc1_output {Type O LastRead -1 FirstWrite 7}
		fc2_output {Type O LastRead -1 FirstWrite 8}}
	Flatten_layer {
		pool2_output {Type I LastRead 9 FirstWrite -1}
		flatten_output {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "78763"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "78764"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in { ap_none {  { data_in in_data 0 32 } } }
	predict { ap_vld {  { predict out_data 1 32 }  { predict_ap_vld out_vld 1 1 } } }
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
