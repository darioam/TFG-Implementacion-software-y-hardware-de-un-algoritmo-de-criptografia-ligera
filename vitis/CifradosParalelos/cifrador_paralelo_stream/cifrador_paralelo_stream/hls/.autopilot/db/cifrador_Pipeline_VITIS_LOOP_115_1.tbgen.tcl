set moduleName cifrador_Pipeline_VITIS_LOOP_115_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {cifrador_Pipeline_VITIS_LOOP_115_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ plaintext_4 int 32 regular  }
	{ k3 int 32 regular {fifo 0 volatile }  }
	{ out_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ k3_dout sc_in sc_lv 32 signal 1 } 
	{ k3_empty_n sc_in sc_logic 1 signal 1 } 
	{ k3_read sc_out sc_logic 1 signal 1 } 
	{ k3_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ k3_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ plaintext_4 sc_in sc_lv 32 signal 0 } 
	{ out_out sc_out sc_lv 32 signal 2 } 
	{ out_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "k3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k3", "role": "dout" }} , 
 	{ "name": "k3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3", "role": "empty_n" }} , 
 	{ "name": "k3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3", "role": "read" }} , 
 	{ "name": "k3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3", "role": "num_data_valid" }} , 
 	{ "name": "k3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3", "role": "fifo_cap" }} , 
 	{ "name": "plaintext_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext_4", "role": "default" }} , 
 	{ "name": "out_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_out", "role": "default" }} , 
 	{ "name": "out_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	cifrador_Pipeline_VITIS_LOOP_115_1 {
		plaintext_4 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "31"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	plaintext_4 { ap_none {  { plaintext_4 in_data 0 32 } } }
	k3 { ap_fifo {  { k3_dout fifo_data_out 0 32 }  { k3_empty_n fifo_status_empty 0 1 }  { k3_read fifo_data_in 1 1 }  { k3_num_data_valid fifo_update 0 6 }  { k3_fifo_cap fifo_data 0 6 } } }
	out_out { ap_vld {  { out_out out_data 1 32 }  { out_out_ap_vld out_vld 1 1 } } }
}
