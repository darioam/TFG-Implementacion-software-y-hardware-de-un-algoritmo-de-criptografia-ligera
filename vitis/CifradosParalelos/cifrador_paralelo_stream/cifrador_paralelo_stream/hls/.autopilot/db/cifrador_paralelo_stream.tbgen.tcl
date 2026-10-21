set moduleName cifrador_paralelo_stream
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type dataflow
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
set C_modelName {cifrador_paralelo_stream}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ plaintext0 int 32 regular {axi_slave 0}  }
	{ plaintext1 int 32 regular {axi_slave 0}  }
	{ plaintext2 int 32 regular {axi_slave 0}  }
	{ plaintext3 int 32 regular {axi_slave 0}  }
	{ key int 64 regular {axi_slave 0}  }
	{ ciphertext0 int 32 regular {axi_slave 1}  }
	{ ciphertext1 int 32 regular {axi_slave 1}  }
	{ ciphertext2 int 32 regular {axi_slave 1}  }
	{ ciphertext3 int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "plaintext1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "plaintext2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "plaintext3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "key", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":59}} , 
 	{ "Name" : "ciphertext0", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":60}, "offset_end" : {"out":67}} , 
 	{ "Name" : "ciphertext1", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":76}, "offset_end" : {"out":83}} , 
 	{ "Name" : "ciphertext2", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":92}, "offset_end" : {"out":99}} , 
 	{ "Name" : "ciphertext3", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":108}, "offset_end" : {"out":115}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cifrador_paralelo_stream","role":"start","value":"0","valid_bit":"0"},{"name":"cifrador_paralelo_stream","role":"continue","value":"0","valid_bit":"4"},{"name":"cifrador_paralelo_stream","role":"auto_start","value":"0","valid_bit":"7"},{"name":"plaintext0","role":"data","value":"16"},{"name":"plaintext1","role":"data","value":"24"},{"name":"plaintext2","role":"data","value":"32"},{"name":"plaintext3","role":"data","value":"40"},{"name":"key","role":"data","value":"48"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cifrador_paralelo_stream","role":"start","value":"0","valid_bit":"0"},{"name":"cifrador_paralelo_stream","role":"done","value":"0","valid_bit":"1"},{"name":"cifrador_paralelo_stream","role":"idle","value":"0","valid_bit":"2"},{"name":"cifrador_paralelo_stream","role":"ready","value":"0","valid_bit":"3"},{"name":"cifrador_paralelo_stream","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ciphertext0","role":"data","value":"60"}, {"name":"ciphertext0","role":"valid","value":"64","valid_bit":"0"},{"name":"ciphertext1","role":"data","value":"76"}, {"name":"ciphertext1","role":"valid","value":"80","valid_bit":"0"},{"name":"ciphertext2","role":"data","value":"92"}, {"name":"ciphertext2","role":"valid","value":"96","valid_bit":"0"},{"name":"ciphertext3","role":"data","value":"108"}, {"name":"ciphertext3","role":"valid","value":"112","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	cifrador_paralelo_stream {
		plaintext0 {Type I LastRead 0 FirstWrite -1}
		plaintext1 {Type I LastRead 0 FirstWrite -1}
		plaintext2 {Type I LastRead 0 FirstWrite -1}
		plaintext3 {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		ciphertext0 {Type O LastRead -1 FirstWrite 0}
		ciphertext1 {Type O LastRead -1 FirstWrite 0}
		ciphertext2 {Type O LastRead -1 FirstWrite 0}
		ciphertext3 {Type O LastRead -1 FirstWrite 0}}
	entry_proc {
		plaintext0 {Type I LastRead 0 FirstWrite -1}
		plaintext0_c {Type O LastRead -1 FirstWrite 0}
		plaintext1 {Type I LastRead 0 FirstWrite -1}
		plaintext1_c {Type O LastRead -1 FirstWrite 0}
		plaintext2 {Type I LastRead 0 FirstWrite -1}
		plaintext2_c {Type O LastRead -1 FirstWrite 0}
		plaintext3 {Type I LastRead 0 FirstWrite -1}
		plaintext3_c {Type O LastRead -1 FirstWrite 0}}
	key_schedule {
		key {Type I LastRead 0 FirstWrite -1}
		k0 {Type O LastRead -1 FirstWrite 0}
		k1 {Type O LastRead -1 FirstWrite 0}
		k2 {Type O LastRead -1 FirstWrite 0}
		k3 {Type O LastRead -1 FirstWrite 0}}
	cifrador_1 {
		plaintext {Type I LastRead 0 FirstWrite -1}
		k0 {Type I LastRead 2 FirstWrite -1}}
	cifrador_1_Pipeline_VITIS_LOOP_115_1 {
		plaintext_3 {Type I LastRead 0 FirstWrite -1}
		k0 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	cifrador_2 {
		plaintext {Type I LastRead 0 FirstWrite -1}
		k1 {Type I LastRead 2 FirstWrite -1}}
	cifrador_2_Pipeline_VITIS_LOOP_115_1 {
		plaintext_2 {Type I LastRead 0 FirstWrite -1}
		k1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	cifrador_3 {
		plaintext {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 2 FirstWrite -1}}
	cifrador_3_Pipeline_VITIS_LOOP_115_1 {
		plaintext_1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 2 FirstWrite -1}}
	cifrador_Pipeline_VITIS_LOOP_115_1 {
		plaintext_4 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	Block_entry_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ciphertext0 {Type O LastRead -1 FirstWrite 0}
		ciphertext1 {Type O LastRead -1 FirstWrite 0}
		ciphertext2 {Type O LastRead -1 FirstWrite 0}
		ciphertext3 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "37", "Max" : "37"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

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
