set moduleName cifrador_paralelo_32_ctr
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
set C_modelName {cifrador_paralelo_32_ctr}
set C_modelType { int 32 }
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
	{ nonce int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "plaintext_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "plaintext_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "plaintext_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "plaintext_3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "plaintext_4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "plaintext_5", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "plaintext_6", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "plaintext_7", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "plaintext_8", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "plaintext_9", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "plaintext_10", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "plaintext_11", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "plaintext_12", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "plaintext_13", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "plaintext_14", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "plaintext_15", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "plaintext_16", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "plaintext_17", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "plaintext_18", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "plaintext_19", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "plaintext_20", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "plaintext_21", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "plaintext_22", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "plaintext_23", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "plaintext_24", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "plaintext_25", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "plaintext_26", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "plaintext_27", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "plaintext_28", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "plaintext_29", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "plaintext_30", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "plaintext_31", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":279}} , 
 	{ "Name" : "key", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":291}} , 
 	{ "Name" : "ciphertext_0", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":292}, "offset_end" : {"out":299}} , 
 	{ "Name" : "ciphertext_1", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":308}, "offset_end" : {"out":315}} , 
 	{ "Name" : "ciphertext_2", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":324}, "offset_end" : {"out":331}} , 
 	{ "Name" : "ciphertext_3", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":340}, "offset_end" : {"out":347}} , 
 	{ "Name" : "ciphertext_4", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":356}, "offset_end" : {"out":363}} , 
 	{ "Name" : "ciphertext_5", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":372}, "offset_end" : {"out":379}} , 
 	{ "Name" : "ciphertext_6", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":388}, "offset_end" : {"out":395}} , 
 	{ "Name" : "ciphertext_7", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":404}, "offset_end" : {"out":411}} , 
 	{ "Name" : "ciphertext_8", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":420}, "offset_end" : {"out":427}} , 
 	{ "Name" : "ciphertext_9", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":436}, "offset_end" : {"out":443}} , 
 	{ "Name" : "ciphertext_10", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":452}, "offset_end" : {"out":459}} , 
 	{ "Name" : "ciphertext_11", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":468}, "offset_end" : {"out":475}} , 
 	{ "Name" : "ciphertext_12", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":484}, "offset_end" : {"out":491}} , 
 	{ "Name" : "ciphertext_13", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":500}, "offset_end" : {"out":507}} , 
 	{ "Name" : "ciphertext_14", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":516}, "offset_end" : {"out":523}} , 
 	{ "Name" : "ciphertext_15", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":532}, "offset_end" : {"out":539}} , 
 	{ "Name" : "ciphertext_16", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":548}, "offset_end" : {"out":555}} , 
 	{ "Name" : "ciphertext_17", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":564}, "offset_end" : {"out":571}} , 
 	{ "Name" : "ciphertext_18", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":580}, "offset_end" : {"out":587}} , 
 	{ "Name" : "ciphertext_19", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":596}, "offset_end" : {"out":603}} , 
 	{ "Name" : "ciphertext_20", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":612}, "offset_end" : {"out":619}} , 
 	{ "Name" : "ciphertext_21", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":628}, "offset_end" : {"out":635}} , 
 	{ "Name" : "ciphertext_22", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":644}, "offset_end" : {"out":651}} , 
 	{ "Name" : "ciphertext_23", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":660}, "offset_end" : {"out":667}} , 
 	{ "Name" : "ciphertext_24", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":676}, "offset_end" : {"out":683}} , 
 	{ "Name" : "ciphertext_25", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":692}, "offset_end" : {"out":699}} , 
 	{ "Name" : "ciphertext_26", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":708}, "offset_end" : {"out":715}} , 
 	{ "Name" : "ciphertext_27", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":724}, "offset_end" : {"out":731}} , 
 	{ "Name" : "ciphertext_28", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":740}, "offset_end" : {"out":747}} , 
 	{ "Name" : "ciphertext_29", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":756}, "offset_end" : {"out":763}} , 
 	{ "Name" : "ciphertext_30", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":772}, "offset_end" : {"out":779}} , 
 	{ "Name" : "ciphertext_31", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":788}, "offset_end" : {"out":795}} , 
 	{ "Name" : "nonce", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":804}, "offset_end" : {"in":811}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "offset" : {"out":16}} ]}
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cifrador_paralelo_32_ctr","role":"start","value":"0","valid_bit":"0"},{"name":"cifrador_paralelo_32_ctr","role":"continue","value":"0","valid_bit":"4"},{"name":"cifrador_paralelo_32_ctr","role":"auto_start","value":"0","valid_bit":"7"},{"name":"plaintext_0","role":"data","value":"24"},{"name":"plaintext_1","role":"data","value":"32"},{"name":"plaintext_2","role":"data","value":"40"},{"name":"plaintext_3","role":"data","value":"48"},{"name":"plaintext_4","role":"data","value":"56"},{"name":"plaintext_5","role":"data","value":"64"},{"name":"plaintext_6","role":"data","value":"72"},{"name":"plaintext_7","role":"data","value":"80"},{"name":"plaintext_8","role":"data","value":"88"},{"name":"plaintext_9","role":"data","value":"96"},{"name":"plaintext_10","role":"data","value":"104"},{"name":"plaintext_11","role":"data","value":"112"},{"name":"plaintext_12","role":"data","value":"120"},{"name":"plaintext_13","role":"data","value":"128"},{"name":"plaintext_14","role":"data","value":"136"},{"name":"plaintext_15","role":"data","value":"144"},{"name":"plaintext_16","role":"data","value":"152"},{"name":"plaintext_17","role":"data","value":"160"},{"name":"plaintext_18","role":"data","value":"168"},{"name":"plaintext_19","role":"data","value":"176"},{"name":"plaintext_20","role":"data","value":"184"},{"name":"plaintext_21","role":"data","value":"192"},{"name":"plaintext_22","role":"data","value":"200"},{"name":"plaintext_23","role":"data","value":"208"},{"name":"plaintext_24","role":"data","value":"216"},{"name":"plaintext_25","role":"data","value":"224"},{"name":"plaintext_26","role":"data","value":"232"},{"name":"plaintext_27","role":"data","value":"240"},{"name":"plaintext_28","role":"data","value":"248"},{"name":"plaintext_29","role":"data","value":"256"},{"name":"plaintext_30","role":"data","value":"264"},{"name":"plaintext_31","role":"data","value":"272"},{"name":"key","role":"data","value":"280"},{"name":"nonce","role":"data","value":"804"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cifrador_paralelo_32_ctr","role":"start","value":"0","valid_bit":"0"},{"name":"cifrador_paralelo_32_ctr","role":"done","value":"0","valid_bit":"1"},{"name":"cifrador_paralelo_32_ctr","role":"idle","value":"0","valid_bit":"2"},{"name":"cifrador_paralelo_32_ctr","role":"ready","value":"0","valid_bit":"3"},{"name":"cifrador_paralelo_32_ctr","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"},{"name":"ciphertext_0","role":"data","value":"292"}, {"name":"ciphertext_0","role":"valid","value":"296","valid_bit":"0"},{"name":"ciphertext_1","role":"data","value":"308"}, {"name":"ciphertext_1","role":"valid","value":"312","valid_bit":"0"},{"name":"ciphertext_2","role":"data","value":"324"}, {"name":"ciphertext_2","role":"valid","value":"328","valid_bit":"0"},{"name":"ciphertext_3","role":"data","value":"340"}, {"name":"ciphertext_3","role":"valid","value":"344","valid_bit":"0"},{"name":"ciphertext_4","role":"data","value":"356"}, {"name":"ciphertext_4","role":"valid","value":"360","valid_bit":"0"},{"name":"ciphertext_5","role":"data","value":"372"}, {"name":"ciphertext_5","role":"valid","value":"376","valid_bit":"0"},{"name":"ciphertext_6","role":"data","value":"388"}, {"name":"ciphertext_6","role":"valid","value":"392","valid_bit":"0"},{"name":"ciphertext_7","role":"data","value":"404"}, {"name":"ciphertext_7","role":"valid","value":"408","valid_bit":"0"},{"name":"ciphertext_8","role":"data","value":"420"}, {"name":"ciphertext_8","role":"valid","value":"424","valid_bit":"0"},{"name":"ciphertext_9","role":"data","value":"436"}, {"name":"ciphertext_9","role":"valid","value":"440","valid_bit":"0"},{"name":"ciphertext_10","role":"data","value":"452"}, {"name":"ciphertext_10","role":"valid","value":"456","valid_bit":"0"},{"name":"ciphertext_11","role":"data","value":"468"}, {"name":"ciphertext_11","role":"valid","value":"472","valid_bit":"0"},{"name":"ciphertext_12","role":"data","value":"484"}, {"name":"ciphertext_12","role":"valid","value":"488","valid_bit":"0"},{"name":"ciphertext_13","role":"data","value":"500"}, {"name":"ciphertext_13","role":"valid","value":"504","valid_bit":"0"},{"name":"ciphertext_14","role":"data","value":"516"}, {"name":"ciphertext_14","role":"valid","value":"520","valid_bit":"0"},{"name":"ciphertext_15","role":"data","value":"532"}, {"name":"ciphertext_15","role":"valid","value":"536","valid_bit":"0"},{"name":"ciphertext_16","role":"data","value":"548"}, {"name":"ciphertext_16","role":"valid","value":"552","valid_bit":"0"},{"name":"ciphertext_17","role":"data","value":"564"}, {"name":"ciphertext_17","role":"valid","value":"568","valid_bit":"0"},{"name":"ciphertext_18","role":"data","value":"580"}, {"name":"ciphertext_18","role":"valid","value":"584","valid_bit":"0"},{"name":"ciphertext_19","role":"data","value":"596"}, {"name":"ciphertext_19","role":"valid","value":"600","valid_bit":"0"},{"name":"ciphertext_20","role":"data","value":"612"}, {"name":"ciphertext_20","role":"valid","value":"616","valid_bit":"0"},{"name":"ciphertext_21","role":"data","value":"628"}, {"name":"ciphertext_21","role":"valid","value":"632","valid_bit":"0"},{"name":"ciphertext_22","role":"data","value":"644"}, {"name":"ciphertext_22","role":"valid","value":"648","valid_bit":"0"},{"name":"ciphertext_23","role":"data","value":"660"}, {"name":"ciphertext_23","role":"valid","value":"664","valid_bit":"0"},{"name":"ciphertext_24","role":"data","value":"676"}, {"name":"ciphertext_24","role":"valid","value":"680","valid_bit":"0"},{"name":"ciphertext_25","role":"data","value":"692"}, {"name":"ciphertext_25","role":"valid","value":"696","valid_bit":"0"},{"name":"ciphertext_26","role":"data","value":"708"}, {"name":"ciphertext_26","role":"valid","value":"712","valid_bit":"0"},{"name":"ciphertext_27","role":"data","value":"724"}, {"name":"ciphertext_27","role":"valid","value":"728","valid_bit":"0"},{"name":"ciphertext_28","role":"data","value":"740"}, {"name":"ciphertext_28","role":"valid","value":"744","valid_bit":"0"},{"name":"ciphertext_29","role":"data","value":"756"}, {"name":"ciphertext_29","role":"valid","value":"760","valid_bit":"0"},{"name":"ciphertext_30","role":"data","value":"772"}, {"name":"ciphertext_30","role":"valid","value":"776","valid_bit":"0"},{"name":"ciphertext_31","role":"data","value":"788"}, {"name":"ciphertext_31","role":"valid","value":"792","valid_bit":"0"}] },
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
	cifrador_paralelo_32_ctr {
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
		ciphertext_31 {Type O LastRead -1 FirstWrite 1}
		nonce {Type I LastRead 0 FirstWrite -1}}
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
