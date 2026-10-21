# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
plaintext_0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
plaintext_1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
plaintext_2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
plaintext_3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
plaintext_4 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
plaintext_5 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
plaintext_6 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
plaintext_7 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
plaintext_8 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
plaintext_9 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
plaintext_10 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
plaintext_11 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
plaintext_12 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
plaintext_13 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
plaintext_14 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
plaintext_15 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
key { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 144
	offset_end 155
}
ciphertext_0 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 156
	offset_end 163
}
ciphertext_1 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 172
	offset_end 179
}
ciphertext_2 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 188
	offset_end 195
}
ciphertext_3 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 204
	offset_end 211
}
ciphertext_4 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 220
	offset_end 227
}
ciphertext_5 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 236
	offset_end 243
}
ciphertext_6 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 252
	offset_end 259
}
ciphertext_7 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 268
	offset_end 275
}
ciphertext_8 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 284
	offset_end 291
}
ciphertext_9 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 300
	offset_end 307
}
ciphertext_10 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 316
	offset_end 323
}
ciphertext_11 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 332
	offset_end 339
}
ciphertext_12 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 348
	offset_end 355
}
ciphertext_13 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 364
	offset_end 371
}
ciphertext_14 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 380
	offset_end 387
}
ciphertext_15 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 396
	offset_end 403
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 13 \
			corename cifrador_paralelo_16_control_axilite \
			name cifrador_paralelo_16_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
			enable_mem_auto_widen 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cifrador_paralelo_16_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


