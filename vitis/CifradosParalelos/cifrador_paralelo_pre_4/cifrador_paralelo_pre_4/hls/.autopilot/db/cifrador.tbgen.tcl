set moduleName cifrador
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
set cdfgNum 4
set C_modelName {cifrador}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ plaintext int 32 regular  }
	{ round_keys_0_val int 32 regular  }
	{ round_keys_1_val int 32 regular  }
	{ round_keys_2_val int 32 regular  }
	{ round_keys_3_val int 32 regular  }
	{ round_keys_4_val int 32 regular  }
	{ round_keys_5_val int 32 regular  }
	{ round_keys_6_val int 32 regular  }
	{ round_keys_7_val int 32 regular  }
	{ round_keys_8_val int 32 regular  }
	{ round_keys_9_val int 32 regular  }
	{ round_keys_10_val int 32 regular  }
	{ round_keys_11_val int 32 regular  }
	{ round_keys_12_val int 32 regular  }
	{ round_keys_13_val int 32 regular  }
	{ round_keys_14_val int 32 regular  }
	{ round_keys_15_val int 32 regular  }
	{ round_keys_16_val int 32 regular  }
	{ round_keys_17_val int 32 regular  }
	{ round_keys_18_val int 32 regular  }
	{ round_keys_19_val int 32 regular  }
	{ round_keys_20_val int 32 regular  }
	{ round_keys_21_val int 32 regular  }
	{ round_keys_22_val int 32 regular  }
	{ round_keys_23_val int 32 regular  }
	{ round_keys_24_val int 32 regular  }
	{ round_keys_25_val int 32 regular  }
	{ round_keys_26_val int 32 regular  }
	{ round_keys_27_val int 32 regular  }
	{ round_keys_28_val int 32 regular  }
	{ round_keys_29_val int 32 regular  }
	{ round_keys_30_val int 32 regular  }
	{ round_keys_31_val int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_0_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_1_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_2_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_3_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_4_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_5_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_6_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_7_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_8_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_9_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_10_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_11_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_12_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_13_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_14_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_15_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_16_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_17_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_18_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_19_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_20_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_21_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_22_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_23_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_24_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_25_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_26_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_27_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_28_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_29_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_30_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "round_keys_31_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ plaintext sc_in sc_lv 32 signal 0 } 
	{ round_keys_0_val sc_in sc_lv 32 signal 1 } 
	{ round_keys_1_val sc_in sc_lv 32 signal 2 } 
	{ round_keys_2_val sc_in sc_lv 32 signal 3 } 
	{ round_keys_3_val sc_in sc_lv 32 signal 4 } 
	{ round_keys_4_val sc_in sc_lv 32 signal 5 } 
	{ round_keys_5_val sc_in sc_lv 32 signal 6 } 
	{ round_keys_6_val sc_in sc_lv 32 signal 7 } 
	{ round_keys_7_val sc_in sc_lv 32 signal 8 } 
	{ round_keys_8_val sc_in sc_lv 32 signal 9 } 
	{ round_keys_9_val sc_in sc_lv 32 signal 10 } 
	{ round_keys_10_val sc_in sc_lv 32 signal 11 } 
	{ round_keys_11_val sc_in sc_lv 32 signal 12 } 
	{ round_keys_12_val sc_in sc_lv 32 signal 13 } 
	{ round_keys_13_val sc_in sc_lv 32 signal 14 } 
	{ round_keys_14_val sc_in sc_lv 32 signal 15 } 
	{ round_keys_15_val sc_in sc_lv 32 signal 16 } 
	{ round_keys_16_val sc_in sc_lv 32 signal 17 } 
	{ round_keys_17_val sc_in sc_lv 32 signal 18 } 
	{ round_keys_18_val sc_in sc_lv 32 signal 19 } 
	{ round_keys_19_val sc_in sc_lv 32 signal 20 } 
	{ round_keys_20_val sc_in sc_lv 32 signal 21 } 
	{ round_keys_21_val sc_in sc_lv 32 signal 22 } 
	{ round_keys_22_val sc_in sc_lv 32 signal 23 } 
	{ round_keys_23_val sc_in sc_lv 32 signal 24 } 
	{ round_keys_24_val sc_in sc_lv 32 signal 25 } 
	{ round_keys_25_val sc_in sc_lv 32 signal 26 } 
	{ round_keys_26_val sc_in sc_lv 32 signal 27 } 
	{ round_keys_27_val sc_in sc_lv 32 signal 28 } 
	{ round_keys_28_val sc_in sc_lv 32 signal 29 } 
	{ round_keys_29_val sc_in sc_lv 32 signal 30 } 
	{ round_keys_30_val sc_in sc_lv 32 signal 31 } 
	{ round_keys_31_val sc_in sc_lv 32 signal 32 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "plaintext", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "default" }} , 
 	{ "name": "round_keys_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_0_val", "role": "default" }} , 
 	{ "name": "round_keys_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_1_val", "role": "default" }} , 
 	{ "name": "round_keys_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_2_val", "role": "default" }} , 
 	{ "name": "round_keys_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_3_val", "role": "default" }} , 
 	{ "name": "round_keys_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_4_val", "role": "default" }} , 
 	{ "name": "round_keys_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_5_val", "role": "default" }} , 
 	{ "name": "round_keys_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_6_val", "role": "default" }} , 
 	{ "name": "round_keys_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_7_val", "role": "default" }} , 
 	{ "name": "round_keys_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_8_val", "role": "default" }} , 
 	{ "name": "round_keys_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_9_val", "role": "default" }} , 
 	{ "name": "round_keys_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_10_val", "role": "default" }} , 
 	{ "name": "round_keys_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_11_val", "role": "default" }} , 
 	{ "name": "round_keys_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_12_val", "role": "default" }} , 
 	{ "name": "round_keys_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_13_val", "role": "default" }} , 
 	{ "name": "round_keys_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_14_val", "role": "default" }} , 
 	{ "name": "round_keys_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_15_val", "role": "default" }} , 
 	{ "name": "round_keys_16_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_16_val", "role": "default" }} , 
 	{ "name": "round_keys_17_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_17_val", "role": "default" }} , 
 	{ "name": "round_keys_18_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_18_val", "role": "default" }} , 
 	{ "name": "round_keys_19_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_19_val", "role": "default" }} , 
 	{ "name": "round_keys_20_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_20_val", "role": "default" }} , 
 	{ "name": "round_keys_21_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_21_val", "role": "default" }} , 
 	{ "name": "round_keys_22_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_22_val", "role": "default" }} , 
 	{ "name": "round_keys_23_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_23_val", "role": "default" }} , 
 	{ "name": "round_keys_24_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_24_val", "role": "default" }} , 
 	{ "name": "round_keys_25_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_25_val", "role": "default" }} , 
 	{ "name": "round_keys_26_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_26_val", "role": "default" }} , 
 	{ "name": "round_keys_27_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_27_val", "role": "default" }} , 
 	{ "name": "round_keys_28_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_28_val", "role": "default" }} , 
 	{ "name": "round_keys_29_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_29_val", "role": "default" }} , 
 	{ "name": "round_keys_30_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_30_val", "role": "default" }} , 
 	{ "name": "round_keys_31_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round_keys_31_val", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		round_keys_0_val {Type I LastRead 0 FirstWrite -1}
		round_keys_1_val {Type I LastRead 0 FirstWrite -1}
		round_keys_2_val {Type I LastRead 0 FirstWrite -1}
		round_keys_3_val {Type I LastRead 0 FirstWrite -1}
		round_keys_4_val {Type I LastRead 0 FirstWrite -1}
		round_keys_5_val {Type I LastRead 0 FirstWrite -1}
		round_keys_6_val {Type I LastRead 0 FirstWrite -1}
		round_keys_7_val {Type I LastRead 0 FirstWrite -1}
		round_keys_8_val {Type I LastRead 0 FirstWrite -1}
		round_keys_9_val {Type I LastRead 0 FirstWrite -1}
		round_keys_10_val {Type I LastRead 0 FirstWrite -1}
		round_keys_11_val {Type I LastRead 0 FirstWrite -1}
		round_keys_12_val {Type I LastRead 0 FirstWrite -1}
		round_keys_13_val {Type I LastRead 0 FirstWrite -1}
		round_keys_14_val {Type I LastRead 0 FirstWrite -1}
		round_keys_15_val {Type I LastRead 0 FirstWrite -1}
		round_keys_16_val {Type I LastRead 0 FirstWrite -1}
		round_keys_17_val {Type I LastRead 0 FirstWrite -1}
		round_keys_18_val {Type I LastRead 0 FirstWrite -1}
		round_keys_19_val {Type I LastRead 0 FirstWrite -1}
		round_keys_20_val {Type I LastRead 0 FirstWrite -1}
		round_keys_21_val {Type I LastRead 0 FirstWrite -1}
		round_keys_22_val {Type I LastRead 0 FirstWrite -1}
		round_keys_23_val {Type I LastRead 0 FirstWrite -1}
		round_keys_24_val {Type I LastRead 0 FirstWrite -1}
		round_keys_25_val {Type I LastRead 0 FirstWrite -1}
		round_keys_26_val {Type I LastRead 0 FirstWrite -1}
		round_keys_27_val {Type I LastRead 0 FirstWrite -1}
		round_keys_28_val {Type I LastRead 0 FirstWrite -1}
		round_keys_29_val {Type I LastRead 0 FirstWrite -1}
		round_keys_30_val {Type I LastRead 0 FirstWrite -1}
		round_keys_31_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	plaintext { ap_none {  { plaintext in_data 0 32 } } }
	round_keys_0_val { ap_none {  { round_keys_0_val in_data 0 32 } } }
	round_keys_1_val { ap_none {  { round_keys_1_val in_data 0 32 } } }
	round_keys_2_val { ap_none {  { round_keys_2_val in_data 0 32 } } }
	round_keys_3_val { ap_none {  { round_keys_3_val in_data 0 32 } } }
	round_keys_4_val { ap_none {  { round_keys_4_val in_data 0 32 } } }
	round_keys_5_val { ap_none {  { round_keys_5_val in_data 0 32 } } }
	round_keys_6_val { ap_none {  { round_keys_6_val in_data 0 32 } } }
	round_keys_7_val { ap_none {  { round_keys_7_val in_data 0 32 } } }
	round_keys_8_val { ap_none {  { round_keys_8_val in_data 0 32 } } }
	round_keys_9_val { ap_none {  { round_keys_9_val in_data 0 32 } } }
	round_keys_10_val { ap_none {  { round_keys_10_val in_data 0 32 } } }
	round_keys_11_val { ap_none {  { round_keys_11_val in_data 0 32 } } }
	round_keys_12_val { ap_none {  { round_keys_12_val in_data 0 32 } } }
	round_keys_13_val { ap_none {  { round_keys_13_val in_data 0 32 } } }
	round_keys_14_val { ap_none {  { round_keys_14_val in_data 0 32 } } }
	round_keys_15_val { ap_none {  { round_keys_15_val in_data 0 32 } } }
	round_keys_16_val { ap_none {  { round_keys_16_val in_data 0 32 } } }
	round_keys_17_val { ap_none {  { round_keys_17_val in_data 0 32 } } }
	round_keys_18_val { ap_none {  { round_keys_18_val in_data 0 32 } } }
	round_keys_19_val { ap_none {  { round_keys_19_val in_data 0 32 } } }
	round_keys_20_val { ap_none {  { round_keys_20_val in_data 0 32 } } }
	round_keys_21_val { ap_none {  { round_keys_21_val in_data 0 32 } } }
	round_keys_22_val { ap_none {  { round_keys_22_val in_data 0 32 } } }
	round_keys_23_val { ap_none {  { round_keys_23_val in_data 0 32 } } }
	round_keys_24_val { ap_none {  { round_keys_24_val in_data 0 32 } } }
	round_keys_25_val { ap_none {  { round_keys_25_val in_data 0 32 } } }
	round_keys_26_val { ap_none {  { round_keys_26_val in_data 0 32 } } }
	round_keys_27_val { ap_none {  { round_keys_27_val in_data 0 32 } } }
	round_keys_28_val { ap_none {  { round_keys_28_val in_data 0 32 } } }
	round_keys_29_val { ap_none {  { round_keys_29_val in_data 0 32 } } }
	round_keys_30_val { ap_none {  { round_keys_30_val in_data 0 32 } } }
	round_keys_31_val { ap_none {  { round_keys_31_val in_data 0 32 } } }
}
