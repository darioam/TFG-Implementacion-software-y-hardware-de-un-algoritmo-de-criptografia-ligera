set moduleName cifrador_paralelo_32
set isTopModule 1
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
set cdfgNum 4
set C_modelName {cifrador_paralelo_32}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ plaintext_0 int 32 regular {axi_slave 0}  }
	{ plaintext_1 int 32 regular {axi_slave 0}  }
	{ plaintext_2 int 32 regular {axi_slave 0}  }
	{ plaintext_3 int 32 regular {axi_slave 0}  }
	{ plaintext_4 int 32 regular {axi_slave 0}  }
	{ plaintext_5 int 32 regular {axi_slave 0}  }
	{ plaintext_6 int 32 regular {axi_slave 0}  }
	{ plaintext_7 int 32 regular {axi_slave 0}  }
	{ plaintext_8 int 32 regular {axi_slave 0}  }
	{ plaintext_9 int 32 regular {axi_slave 0}  }
	{ plaintext_10 int 32 regular {axi_slave 0}  }
	{ plaintext_11 int 32 regular {axi_slave 0}  }
	{ plaintext_12 int 32 regular {axi_slave 0}  }
	{ plaintext_13 int 32 regular {axi_slave 0}  }
	{ plaintext_14 int 32 regular {axi_slave 0}  }
	{ plaintext_15 int 32 regular {axi_slave 0}  }
	{ plaintext_16 int 32 regular {axi_slave 0}  }
	{ plaintext_17 int 32 regular {axi_slave 0}  }
	{ plaintext_18 int 32 regular {axi_slave 0}  }
	{ plaintext_19 int 32 regular {axi_slave 0}  }
	{ plaintext_20 int 32 regular {axi_slave 0}  }
	{ plaintext_21 int 32 regular {axi_slave 0}  }
	{ plaintext_22 int 32 regular {axi_slave 0}  }
	{ plaintext_23 int 32 regular {axi_slave 0}  }
	{ plaintext_24 int 32 regular {axi_slave 0}  }
	{ plaintext_25 int 32 regular {axi_slave 0}  }
	{ plaintext_26 int 32 regular {axi_slave 0}  }
	{ plaintext_27 int 32 regular {axi_slave 0}  }
	{ plaintext_28 int 32 regular {axi_slave 0}  }
	{ plaintext_29 int 32 regular {axi_slave 0}  }
	{ plaintext_30 int 32 regular {axi_slave 0}  }
	{ plaintext_31 int 32 regular {axi_slave 0}  }
	{ key int 64 regular {axi_slave 0}  }
	{ ciphertext_0 int 32 regular {axi_slave 1}  }
	{ ciphertext_1 int 32 regular {axi_slave 1}  }
	{ ciphertext_2 int 32 regular {axi_slave 1}  }
	{ ciphertext_3 int 32 regular {axi_slave 1}  }
	{ ciphertext_4 int 32 regular {axi_slave 1}  }
	{ ciphertext_5 int 32 regular {axi_slave 1}  }
	{ ciphertext_6 int 32 regular {axi_slave 1}  }
	{ ciphertext_7 int 32 regular {axi_slave 1}  }
	{ ciphertext_8 int 32 regular {axi_slave 1}  }
	{ ciphertext_9 int 32 regular {axi_slave 1}  }
	{ ciphertext_10 int 32 regular {axi_slave 1}  }
	{ ciphertext_11 int 32 regular {axi_slave 1}  }
	{ ciphertext_12 int 32 regular {axi_slave 1}  }
	{ ciphertext_13 int 32 regular {axi_slave 1}  }
	{ ciphertext_14 int 32 regular {axi_slave 1}  }
	{ ciphertext_15 int 32 regular {axi_slave 1}  }
	{ ciphertext_16 int 32 regular {axi_slave 1}  }
	{ ciphertext_17 int 32 regular {axi_slave 1}  }
	{ ciphertext_18 int 32 regular {axi_slave 1}  }
	{ ciphertext_19 int 32 regular {axi_slave 1}  }
	{ ciphertext_20 int 32 regular {axi_slave 1}  }
	{ ciphertext_21 int 32 regular {axi_slave 1}  }
	{ ciphertext_22 int 32 regular {axi_slave 1}  }
	{ ciphertext_23 int 32 regular {axi_slave 1}  }
	{ ciphertext_24 int 32 regular {axi_slave 1}  }
	{ ciphertext_25 int 32 regular {axi_slave 1}  }
	{ ciphertext_26 int 32 regular {axi_slave 1}  }
	{ ciphertext_27 int 32 regular {axi_slave 1}  }
	{ ciphertext_28 int 32 regular {axi_slave 1}  }
	{ ciphertext_29 int 32 regular {axi_slave 1}  }
	{ ciphertext_30 int 32 regular {axi_slave 1}  }
	{ ciphertext_31 int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "plaintext_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "plaintext_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "plaintext_3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "plaintext_4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "plaintext_5", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "plaintext_6", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "plaintext_7", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "plaintext_8", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "plaintext_9", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "plaintext_10", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "plaintext_11", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "plaintext_12", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "plaintext_13", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "plaintext_14", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "plaintext_15", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "plaintext_16", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "plaintext_17", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "plaintext_18", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "plaintext_19", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "plaintext_20", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "plaintext_21", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "plaintext_22", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "plaintext_23", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "plaintext_24", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "plaintext_25", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "plaintext_26", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "plaintext_27", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "plaintext_28", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "plaintext_29", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "plaintext_30", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "plaintext_31", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "key", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":283}} , 
 	{ "Name" : "ciphertext_0", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":284}, "offset_end" : {"out":291}} , 
 	{ "Name" : "ciphertext_1", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":300}, "offset_end" : {"out":307}} , 
 	{ "Name" : "ciphertext_2", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":316}, "offset_end" : {"out":323}} , 
 	{ "Name" : "ciphertext_3", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":332}, "offset_end" : {"out":339}} , 
 	{ "Name" : "ciphertext_4", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":348}, "offset_end" : {"out":355}} , 
 	{ "Name" : "ciphertext_5", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":364}, "offset_end" : {"out":371}} , 
 	{ "Name" : "ciphertext_6", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":380}, "offset_end" : {"out":387}} , 
 	{ "Name" : "ciphertext_7", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":396}, "offset_end" : {"out":403}} , 
 	{ "Name" : "ciphertext_8", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":412}, "offset_end" : {"out":419}} , 
 	{ "Name" : "ciphertext_9", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":428}, "offset_end" : {"out":435}} , 
 	{ "Name" : "ciphertext_10", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":444}, "offset_end" : {"out":451}} , 
 	{ "Name" : "ciphertext_11", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":460}, "offset_end" : {"out":467}} , 
 	{ "Name" : "ciphertext_12", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":476}, "offset_end" : {"out":483}} , 
 	{ "Name" : "ciphertext_13", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":492}, "offset_end" : {"out":499}} , 
 	{ "Name" : "ciphertext_14", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":508}, "offset_end" : {"out":515}} , 
 	{ "Name" : "ciphertext_15", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":524}, "offset_end" : {"out":531}} , 
 	{ "Name" : "ciphertext_16", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":540}, "offset_end" : {"out":547}} , 
 	{ "Name" : "ciphertext_17", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":556}, "offset_end" : {"out":563}} , 
 	{ "Name" : "ciphertext_18", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":572}, "offset_end" : {"out":579}} , 
 	{ "Name" : "ciphertext_19", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":588}, "offset_end" : {"out":595}} , 
 	{ "Name" : "ciphertext_20", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":604}, "offset_end" : {"out":611}} , 
 	{ "Name" : "ciphertext_21", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":620}, "offset_end" : {"out":627}} , 
 	{ "Name" : "ciphertext_22", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":636}, "offset_end" : {"out":643}} , 
 	{ "Name" : "ciphertext_23", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":652}, "offset_end" : {"out":659}} , 
 	{ "Name" : "ciphertext_24", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":668}, "offset_end" : {"out":675}} , 
 	{ "Name" : "ciphertext_25", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":684}, "offset_end" : {"out":691}} , 
 	{ "Name" : "ciphertext_26", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":700}, "offset_end" : {"out":707}} , 
 	{ "Name" : "ciphertext_27", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":716}, "offset_end" : {"out":723}} , 
 	{ "Name" : "ciphertext_28", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":732}, "offset_end" : {"out":739}} , 
 	{ "Name" : "ciphertext_29", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":748}, "offset_end" : {"out":755}} , 
 	{ "Name" : "ciphertext_30", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":764}, "offset_end" : {"out":771}} , 
 	{ "Name" : "ciphertext_31", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":780}, "offset_end" : {"out":787}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cifrador_paralelo_32","role":"start","value":"0","valid_bit":"0"},{"name":"cifrador_paralelo_32","role":"continue","value":"0","valid_bit":"4"},{"name":"cifrador_paralelo_32","role":"auto_start","value":"0","valid_bit":"7"},{"name":"plaintext_0","role":"data","value":"16"},{"name":"plaintext_1","role":"data","value":"24"},{"name":"plaintext_2","role":"data","value":"32"},{"name":"plaintext_3","role":"data","value":"40"},{"name":"plaintext_4","role":"data","value":"48"},{"name":"plaintext_5","role":"data","value":"56"},{"name":"plaintext_6","role":"data","value":"64"},{"name":"plaintext_7","role":"data","value":"72"},{"name":"plaintext_8","role":"data","value":"80"},{"name":"plaintext_9","role":"data","value":"88"},{"name":"plaintext_10","role":"data","value":"96"},{"name":"plaintext_11","role":"data","value":"104"},{"name":"plaintext_12","role":"data","value":"112"},{"name":"plaintext_13","role":"data","value":"120"},{"name":"plaintext_14","role":"data","value":"128"},{"name":"plaintext_15","role":"data","value":"136"},{"name":"plaintext_16","role":"data","value":"144"},{"name":"plaintext_17","role":"data","value":"152"},{"name":"plaintext_18","role":"data","value":"160"},{"name":"plaintext_19","role":"data","value":"168"},{"name":"plaintext_20","role":"data","value":"176"},{"name":"plaintext_21","role":"data","value":"184"},{"name":"plaintext_22","role":"data","value":"192"},{"name":"plaintext_23","role":"data","value":"200"},{"name":"plaintext_24","role":"data","value":"208"},{"name":"plaintext_25","role":"data","value":"216"},{"name":"plaintext_26","role":"data","value":"224"},{"name":"plaintext_27","role":"data","value":"232"},{"name":"plaintext_28","role":"data","value":"240"},{"name":"plaintext_29","role":"data","value":"248"},{"name":"plaintext_30","role":"data","value":"256"},{"name":"plaintext_31","role":"data","value":"264"},{"name":"key","role":"data","value":"272"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cifrador_paralelo_32","role":"start","value":"0","valid_bit":"0"},{"name":"cifrador_paralelo_32","role":"done","value":"0","valid_bit":"1"},{"name":"cifrador_paralelo_32","role":"idle","value":"0","valid_bit":"2"},{"name":"cifrador_paralelo_32","role":"ready","value":"0","valid_bit":"3"},{"name":"cifrador_paralelo_32","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ciphertext_0","role":"data","value":"284"}, {"name":"ciphertext_0","role":"valid","value":"288","valid_bit":"0"},{"name":"ciphertext_1","role":"data","value":"300"}, {"name":"ciphertext_1","role":"valid","value":"304","valid_bit":"0"},{"name":"ciphertext_2","role":"data","value":"316"}, {"name":"ciphertext_2","role":"valid","value":"320","valid_bit":"0"},{"name":"ciphertext_3","role":"data","value":"332"}, {"name":"ciphertext_3","role":"valid","value":"336","valid_bit":"0"},{"name":"ciphertext_4","role":"data","value":"348"}, {"name":"ciphertext_4","role":"valid","value":"352","valid_bit":"0"},{"name":"ciphertext_5","role":"data","value":"364"}, {"name":"ciphertext_5","role":"valid","value":"368","valid_bit":"0"},{"name":"ciphertext_6","role":"data","value":"380"}, {"name":"ciphertext_6","role":"valid","value":"384","valid_bit":"0"},{"name":"ciphertext_7","role":"data","value":"396"}, {"name":"ciphertext_7","role":"valid","value":"400","valid_bit":"0"},{"name":"ciphertext_8","role":"data","value":"412"}, {"name":"ciphertext_8","role":"valid","value":"416","valid_bit":"0"},{"name":"ciphertext_9","role":"data","value":"428"}, {"name":"ciphertext_9","role":"valid","value":"432","valid_bit":"0"},{"name":"ciphertext_10","role":"data","value":"444"}, {"name":"ciphertext_10","role":"valid","value":"448","valid_bit":"0"},{"name":"ciphertext_11","role":"data","value":"460"}, {"name":"ciphertext_11","role":"valid","value":"464","valid_bit":"0"},{"name":"ciphertext_12","role":"data","value":"476"}, {"name":"ciphertext_12","role":"valid","value":"480","valid_bit":"0"},{"name":"ciphertext_13","role":"data","value":"492"}, {"name":"ciphertext_13","role":"valid","value":"496","valid_bit":"0"},{"name":"ciphertext_14","role":"data","value":"508"}, {"name":"ciphertext_14","role":"valid","value":"512","valid_bit":"0"},{"name":"ciphertext_15","role":"data","value":"524"}, {"name":"ciphertext_15","role":"valid","value":"528","valid_bit":"0"},{"name":"ciphertext_16","role":"data","value":"540"}, {"name":"ciphertext_16","role":"valid","value":"544","valid_bit":"0"},{"name":"ciphertext_17","role":"data","value":"556"}, {"name":"ciphertext_17","role":"valid","value":"560","valid_bit":"0"},{"name":"ciphertext_18","role":"data","value":"572"}, {"name":"ciphertext_18","role":"valid","value":"576","valid_bit":"0"},{"name":"ciphertext_19","role":"data","value":"588"}, {"name":"ciphertext_19","role":"valid","value":"592","valid_bit":"0"},{"name":"ciphertext_20","role":"data","value":"604"}, {"name":"ciphertext_20","role":"valid","value":"608","valid_bit":"0"},{"name":"ciphertext_21","role":"data","value":"620"}, {"name":"ciphertext_21","role":"valid","value":"624","valid_bit":"0"},{"name":"ciphertext_22","role":"data","value":"636"}, {"name":"ciphertext_22","role":"valid","value":"640","valid_bit":"0"},{"name":"ciphertext_23","role":"data","value":"652"}, {"name":"ciphertext_23","role":"valid","value":"656","valid_bit":"0"},{"name":"ciphertext_24","role":"data","value":"668"}, {"name":"ciphertext_24","role":"valid","value":"672","valid_bit":"0"},{"name":"ciphertext_25","role":"data","value":"684"}, {"name":"ciphertext_25","role":"valid","value":"688","valid_bit":"0"},{"name":"ciphertext_26","role":"data","value":"700"}, {"name":"ciphertext_26","role":"valid","value":"704","valid_bit":"0"},{"name":"ciphertext_27","role":"data","value":"716"}, {"name":"ciphertext_27","role":"valid","value":"720","valid_bit":"0"},{"name":"ciphertext_28","role":"data","value":"732"}, {"name":"ciphertext_28","role":"valid","value":"736","valid_bit":"0"},{"name":"ciphertext_29","role":"data","value":"748"}, {"name":"ciphertext_29","role":"valid","value":"752","valid_bit":"0"},{"name":"ciphertext_30","role":"data","value":"764"}, {"name":"ciphertext_30","role":"valid","value":"768","valid_bit":"0"},{"name":"ciphertext_31","role":"data","value":"780"}, {"name":"ciphertext_31","role":"valid","value":"784","valid_bit":"0"}] },
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
	cifrador_paralelo_32 {
		plaintext_0 {Type I LastRead 0 FirstWrite -1}
		plaintext_1 {Type I LastRead 0 FirstWrite -1}
		plaintext_2 {Type I LastRead 0 FirstWrite -1}
		plaintext_3 {Type I LastRead 0 FirstWrite -1}
		plaintext_4 {Type I LastRead 0 FirstWrite -1}
		plaintext_5 {Type I LastRead 0 FirstWrite -1}
		plaintext_6 {Type I LastRead 0 FirstWrite -1}
		plaintext_7 {Type I LastRead 0 FirstWrite -1}
		plaintext_8 {Type I LastRead 0 FirstWrite -1}
		plaintext_9 {Type I LastRead 0 FirstWrite -1}
		plaintext_10 {Type I LastRead 0 FirstWrite -1}
		plaintext_11 {Type I LastRead 0 FirstWrite -1}
		plaintext_12 {Type I LastRead 0 FirstWrite -1}
		plaintext_13 {Type I LastRead 0 FirstWrite -1}
		plaintext_14 {Type I LastRead 0 FirstWrite -1}
		plaintext_15 {Type I LastRead 0 FirstWrite -1}
		plaintext_16 {Type I LastRead 0 FirstWrite -1}
		plaintext_17 {Type I LastRead 0 FirstWrite -1}
		plaintext_18 {Type I LastRead 0 FirstWrite -1}
		plaintext_19 {Type I LastRead 0 FirstWrite -1}
		plaintext_20 {Type I LastRead 0 FirstWrite -1}
		plaintext_21 {Type I LastRead 0 FirstWrite -1}
		plaintext_22 {Type I LastRead 0 FirstWrite -1}
		plaintext_23 {Type I LastRead 0 FirstWrite -1}
		plaintext_24 {Type I LastRead 0 FirstWrite -1}
		plaintext_25 {Type I LastRead 0 FirstWrite -1}
		plaintext_26 {Type I LastRead 0 FirstWrite -1}
		plaintext_27 {Type I LastRead 0 FirstWrite -1}
		plaintext_28 {Type I LastRead 0 FirstWrite -1}
		plaintext_29 {Type I LastRead 0 FirstWrite -1}
		plaintext_30 {Type I LastRead 0 FirstWrite -1}
		plaintext_31 {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		ciphertext_0 {Type O LastRead -1 FirstWrite 1}
		ciphertext_1 {Type O LastRead -1 FirstWrite 1}
		ciphertext_2 {Type O LastRead -1 FirstWrite 1}
		ciphertext_3 {Type O LastRead -1 FirstWrite 1}
		ciphertext_4 {Type O LastRead -1 FirstWrite 1}
		ciphertext_5 {Type O LastRead -1 FirstWrite 1}
		ciphertext_6 {Type O LastRead -1 FirstWrite 1}
		ciphertext_7 {Type O LastRead -1 FirstWrite 1}
		ciphertext_8 {Type O LastRead -1 FirstWrite 1}
		ciphertext_9 {Type O LastRead -1 FirstWrite 1}
		ciphertext_10 {Type O LastRead -1 FirstWrite 1}
		ciphertext_11 {Type O LastRead -1 FirstWrite 1}
		ciphertext_12 {Type O LastRead -1 FirstWrite 1}
		ciphertext_13 {Type O LastRead -1 FirstWrite 1}
		ciphertext_14 {Type O LastRead -1 FirstWrite 1}
		ciphertext_15 {Type O LastRead -1 FirstWrite 1}
		ciphertext_16 {Type O LastRead -1 FirstWrite 1}
		ciphertext_17 {Type O LastRead -1 FirstWrite 1}
		ciphertext_18 {Type O LastRead -1 FirstWrite 1}
		ciphertext_19 {Type O LastRead -1 FirstWrite 1}
		ciphertext_20 {Type O LastRead -1 FirstWrite 1}
		ciphertext_21 {Type O LastRead -1 FirstWrite 1}
		ciphertext_22 {Type O LastRead -1 FirstWrite 1}
		ciphertext_23 {Type O LastRead -1 FirstWrite 1}
		ciphertext_24 {Type O LastRead -1 FirstWrite 1}
		ciphertext_25 {Type O LastRead -1 FirstWrite 1}
		ciphertext_26 {Type O LastRead -1 FirstWrite 1}
		ciphertext_27 {Type O LastRead -1 FirstWrite 1}
		ciphertext_28 {Type O LastRead -1 FirstWrite 1}
		ciphertext_29 {Type O LastRead -1 FirstWrite 1}
		ciphertext_30 {Type O LastRead -1 FirstWrite 1}
		ciphertext_31 {Type O LastRead -1 FirstWrite 1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}
	cifrador {
		plaintext {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
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
