set moduleName cifrador_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 14
set C_modelName {cifrador.2}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ plaintext int 32 regular {fifo 0}  }
	{ k1 int 32 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ plaintext_dout sc_in sc_lv 32 signal 0 } 
	{ plaintext_empty_n sc_in sc_logic 1 signal 0 } 
	{ plaintext_read sc_out sc_logic 1 signal 0 } 
	{ plaintext_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ plaintext_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ k1_dout sc_in sc_lv 32 signal 1 } 
	{ k1_empty_n sc_in sc_logic 1 signal 1 } 
	{ k1_read sc_out sc_logic 1 signal 1 } 
	{ k1_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ k1_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "plaintext_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "dout" }} , 
 	{ "name": "plaintext_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "empty_n" }} , 
 	{ "name": "plaintext_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "read" }} , 
 	{ "name": "plaintext_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "num_data_valid" }} , 
 	{ "name": "plaintext_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "fifo_cap" }} , 
 	{ "name": "k1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k1", "role": "dout" }} , 
 	{ "name": "k1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "empty_n" }} , 
 	{ "name": "k1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "read" }} , 
 	{ "name": "k1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k1", "role": "num_data_valid" }} , 
 	{ "name": "k1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k1", "role": "fifo_cap" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	cifrador_2 {
		plaintext {Type I LastRead 0 FirstWrite -1}
		k1 {Type I LastRead 2 FirstWrite -1}}
	cifrador_2_Pipeline_VITIS_LOOP_115_1 {
		plaintext_2 {Type I LastRead 0 FirstWrite -1}
		k1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	plaintext { ap_fifo {  { plaintext_dout fifo_data_out 0 32 }  { plaintext_empty_n fifo_status_empty 0 1 }  { plaintext_read fifo_data_in 1 1 }  { plaintext_num_data_valid fifo_update 0 3 }  { plaintext_fifo_cap fifo_data 0 3 } } }
	k1 { ap_fifo {  { k1_dout fifo_data_out 0 32 }  { k1_empty_n fifo_status_empty 0 1 }  { k1_read fifo_data_in 1 1 }  { k1_num_data_valid fifo_update 0 6 }  { k1_fifo_cap fifo_data 0 6 } } }
}
