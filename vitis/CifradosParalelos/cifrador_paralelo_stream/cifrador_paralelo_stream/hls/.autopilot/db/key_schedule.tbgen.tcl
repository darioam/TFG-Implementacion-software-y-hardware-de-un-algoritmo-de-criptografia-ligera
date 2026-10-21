set moduleName key_schedule
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
set C_modelName {key_schedule}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ key int 64 regular  }
	{ k0 int 32 regular {fifo 1 volatile }  }
	{ k1 int 32 regular {fifo 1 volatile }  }
	{ k2 int 32 regular {fifo 1 volatile }  }
	{ k3 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "key", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ k0_din sc_out sc_lv 32 signal 1 } 
	{ k0_full_n sc_in sc_logic 1 signal 1 } 
	{ k0_write sc_out sc_logic 1 signal 1 } 
	{ k0_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ k0_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ k1_din sc_out sc_lv 32 signal 2 } 
	{ k1_full_n sc_in sc_logic 1 signal 2 } 
	{ k1_write sc_out sc_logic 1 signal 2 } 
	{ k1_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ k1_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ k2_din sc_out sc_lv 32 signal 3 } 
	{ k2_full_n sc_in sc_logic 1 signal 3 } 
	{ k2_write sc_out sc_logic 1 signal 3 } 
	{ k2_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ k2_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ k3_din sc_out sc_lv 32 signal 4 } 
	{ k3_full_n sc_in sc_logic 1 signal 4 } 
	{ k3_write sc_out sc_logic 1 signal 4 } 
	{ k3_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ k3_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ key sc_in sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "k0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k0", "role": "din" }} , 
 	{ "name": "k0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0", "role": "full_n" }} , 
 	{ "name": "k0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0", "role": "write" }} , 
 	{ "name": "k0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k0", "role": "num_data_valid" }} , 
 	{ "name": "k0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k0", "role": "fifo_cap" }} , 
 	{ "name": "k1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k1", "role": "din" }} , 
 	{ "name": "k1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "full_n" }} , 
 	{ "name": "k1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "write" }} , 
 	{ "name": "k1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k1", "role": "num_data_valid" }} , 
 	{ "name": "k1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k1", "role": "fifo_cap" }} , 
 	{ "name": "k2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k2", "role": "din" }} , 
 	{ "name": "k2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k2", "role": "full_n" }} , 
 	{ "name": "k2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k2", "role": "write" }} , 
 	{ "name": "k2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k2", "role": "num_data_valid" }} , 
 	{ "name": "k2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k2", "role": "fifo_cap" }} , 
 	{ "name": "k3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k3", "role": "din" }} , 
 	{ "name": "k3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3", "role": "full_n" }} , 
 	{ "name": "k3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3", "role": "write" }} , 
 	{ "name": "k3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3", "role": "num_data_valid" }} , 
 	{ "name": "k3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3", "role": "fifo_cap" }} , 
 	{ "name": "key", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "key", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	key_schedule {
		key {Type I LastRead 0 FirstWrite -1}
		k0 {Type O LastRead -1 FirstWrite 0}
		k1 {Type O LastRead -1 FirstWrite 0}
		k2 {Type O LastRead -1 FirstWrite 0}
		k3 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	key { ap_none {  { key in_data 0 64 } } }
	k0 { ap_fifo {  { k0_din fifo_data_out 1 32 }  { k0_full_n fifo_status_empty 0 1 }  { k0_write fifo_data_in 1 1 }  { k0_num_data_valid fifo_update 0 6 }  { k0_fifo_cap fifo_data 0 6 } } }
	k1 { ap_fifo {  { k1_din fifo_data_out 1 32 }  { k1_full_n fifo_status_empty 0 1 }  { k1_write fifo_data_in 1 1 }  { k1_num_data_valid fifo_update 0 6 }  { k1_fifo_cap fifo_data 0 6 } } }
	k2 { ap_fifo {  { k2_din fifo_data_out 1 32 }  { k2_full_n fifo_status_empty 0 1 }  { k2_write fifo_data_in 1 1 }  { k2_num_data_valid fifo_update 0 6 }  { k2_fifo_cap fifo_data 0 6 } } }
	k3 { ap_fifo {  { k3_din fifo_data_out 1 32 }  { k3_full_n fifo_status_empty 0 1 }  { k3_write fifo_data_in 1 1 }  { k3_num_data_valid fifo_update 0 6 }  { k3_fifo_cap fifo_data 0 6 } } }
}
