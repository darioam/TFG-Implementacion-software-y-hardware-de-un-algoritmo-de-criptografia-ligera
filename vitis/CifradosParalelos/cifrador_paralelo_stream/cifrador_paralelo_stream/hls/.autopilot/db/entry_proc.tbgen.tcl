set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 14
set C_modelName {entry_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ plaintext0 int 32 regular  }
	{ plaintext0_c int 32 regular {fifo 1}  }
	{ plaintext1 int 32 regular  }
	{ plaintext1_c int 32 regular {fifo 1}  }
	{ plaintext2 int 32 regular  }
	{ plaintext2_c int 32 regular {fifo 1}  }
	{ plaintext3 int 32 regular  }
	{ plaintext3_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext0_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "plaintext1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext1_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "plaintext2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "plaintext3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext3_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ plaintext0 sc_in sc_lv 32 signal 0 } 
	{ plaintext0_c_din sc_out sc_lv 32 signal 1 } 
	{ plaintext0_c_full_n sc_in sc_logic 1 signal 1 } 
	{ plaintext0_c_write sc_out sc_logic 1 signal 1 } 
	{ plaintext0_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ plaintext0_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ plaintext1 sc_in sc_lv 32 signal 2 } 
	{ plaintext1_c_din sc_out sc_lv 32 signal 3 } 
	{ plaintext1_c_full_n sc_in sc_logic 1 signal 3 } 
	{ plaintext1_c_write sc_out sc_logic 1 signal 3 } 
	{ plaintext1_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ plaintext1_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ plaintext2 sc_in sc_lv 32 signal 4 } 
	{ plaintext2_c_din sc_out sc_lv 32 signal 5 } 
	{ plaintext2_c_full_n sc_in sc_logic 1 signal 5 } 
	{ plaintext2_c_write sc_out sc_logic 1 signal 5 } 
	{ plaintext2_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ plaintext2_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ plaintext3 sc_in sc_lv 32 signal 6 } 
	{ plaintext3_c_din sc_out sc_lv 32 signal 7 } 
	{ plaintext3_c_full_n sc_in sc_logic 1 signal 7 } 
	{ plaintext3_c_write sc_out sc_logic 1 signal 7 } 
	{ plaintext3_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ plaintext3_c_fifo_cap sc_in sc_lv 3 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "plaintext0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext0", "role": "default" }} , 
 	{ "name": "plaintext0_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext0_c", "role": "din" }} , 
 	{ "name": "plaintext0_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext0_c", "role": "full_n" }} , 
 	{ "name": "plaintext0_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext0_c", "role": "write" }} , 
 	{ "name": "plaintext0_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext0_c", "role": "num_data_valid" }} , 
 	{ "name": "plaintext0_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext0_c", "role": "fifo_cap" }} , 
 	{ "name": "plaintext1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext1", "role": "default" }} , 
 	{ "name": "plaintext1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext1_c", "role": "din" }} , 
 	{ "name": "plaintext1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext1_c", "role": "full_n" }} , 
 	{ "name": "plaintext1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext1_c", "role": "write" }} , 
 	{ "name": "plaintext1_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext1_c", "role": "num_data_valid" }} , 
 	{ "name": "plaintext1_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext1_c", "role": "fifo_cap" }} , 
 	{ "name": "plaintext2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext2", "role": "default" }} , 
 	{ "name": "plaintext2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext2_c", "role": "din" }} , 
 	{ "name": "plaintext2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext2_c", "role": "full_n" }} , 
 	{ "name": "plaintext2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext2_c", "role": "write" }} , 
 	{ "name": "plaintext2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext2_c", "role": "num_data_valid" }} , 
 	{ "name": "plaintext2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext2_c", "role": "fifo_cap" }} , 
 	{ "name": "plaintext3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext3", "role": "default" }} , 
 	{ "name": "plaintext3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext3_c", "role": "din" }} , 
 	{ "name": "plaintext3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext3_c", "role": "full_n" }} , 
 	{ "name": "plaintext3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext3_c", "role": "write" }} , 
 	{ "name": "plaintext3_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext3_c", "role": "num_data_valid" }} , 
 	{ "name": "plaintext3_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext3_c", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	entry_proc {
		plaintext0 {Type I LastRead 0 FirstWrite -1}
		plaintext0_c {Type O LastRead -1 FirstWrite 0}
		plaintext1 {Type I LastRead 0 FirstWrite -1}
		plaintext1_c {Type O LastRead -1 FirstWrite 0}
		plaintext2 {Type I LastRead 0 FirstWrite -1}
		plaintext2_c {Type O LastRead -1 FirstWrite 0}
		plaintext3 {Type I LastRead 0 FirstWrite -1}
		plaintext3_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	plaintext0 { ap_none {  { plaintext0 in_data 0 32 } } }
	plaintext0_c { ap_fifo {  { plaintext0_c_din fifo_data_out 1 32 }  { plaintext0_c_full_n fifo_status_empty 0 1 }  { plaintext0_c_write fifo_data_in 1 1 }  { plaintext0_c_num_data_valid fifo_update 0 3 }  { plaintext0_c_fifo_cap fifo_data 0 3 } } }
	plaintext1 { ap_none {  { plaintext1 in_data 0 32 } } }
	plaintext1_c { ap_fifo {  { plaintext1_c_din fifo_data_out 1 32 }  { plaintext1_c_full_n fifo_status_empty 0 1 }  { plaintext1_c_write fifo_data_in 1 1 }  { plaintext1_c_num_data_valid fifo_update 0 3 }  { plaintext1_c_fifo_cap fifo_data 0 3 } } }
	plaintext2 { ap_none {  { plaintext2 in_data 0 32 } } }
	plaintext2_c { ap_fifo {  { plaintext2_c_din fifo_data_out 1 32 }  { plaintext2_c_full_n fifo_status_empty 0 1 }  { plaintext2_c_write fifo_data_in 1 1 }  { plaintext2_c_num_data_valid fifo_update 0 3 }  { plaintext2_c_fifo_cap fifo_data 0 3 } } }
	plaintext3 { ap_none {  { plaintext3 in_data 0 32 } } }
	plaintext3_c { ap_fifo {  { plaintext3_c_din fifo_data_out 1 32 }  { plaintext3_c_full_n fifo_status_empty 0 1 }  { plaintext3_c_write fifo_data_in 1 1 }  { plaintext3_c_num_data_valid fifo_update 0 3 }  { plaintext3_c_fifo_cap fifo_data 0 3 } } }
}
