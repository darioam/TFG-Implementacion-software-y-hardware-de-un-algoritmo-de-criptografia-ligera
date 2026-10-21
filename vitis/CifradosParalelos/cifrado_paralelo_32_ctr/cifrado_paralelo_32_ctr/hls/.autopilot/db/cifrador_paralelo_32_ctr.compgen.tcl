# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 32
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
plaintext_0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
plaintext_1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
plaintext_2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
plaintext_3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
plaintext_4 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
plaintext_5 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
plaintext_6 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
plaintext_7 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
plaintext_8 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
plaintext_9 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
plaintext_10 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
plaintext_11 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
plaintext_12 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
plaintext_13 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
plaintext_14 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
plaintext_15 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
plaintext_16 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
plaintext_17 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
plaintext_18 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
plaintext_19 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
plaintext_20 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
plaintext_21 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
plaintext_22 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
plaintext_23 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
plaintext_24 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 216
	offset_end 223
}
plaintext_25 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
plaintext_26 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
plaintext_27 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
plaintext_28 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 248
	offset_end 255
}
plaintext_29 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 256
	offset_end 263
}
plaintext_30 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 264
	offset_end 271
}
plaintext_31 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 272
	offset_end 279
}
key { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 280
	offset_end 291
}
ciphertext_0 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 292
	offset_end 299
}
ciphertext_1 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 308
	offset_end 315
}
ciphertext_2 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 324
	offset_end 331
}
ciphertext_3 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 340
	offset_end 347
}
ciphertext_4 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 356
	offset_end 363
}
ciphertext_5 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 372
	offset_end 379
}
ciphertext_6 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 388
	offset_end 395
}
ciphertext_7 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 404
	offset_end 411
}
ciphertext_8 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 420
	offset_end 427
}
ciphertext_9 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 436
	offset_end 443
}
ciphertext_10 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 452
	offset_end 459
}
ciphertext_11 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 468
	offset_end 475
}
ciphertext_12 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 484
	offset_end 491
}
ciphertext_13 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 500
	offset_end 507
}
ciphertext_14 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 516
	offset_end 523
}
ciphertext_15 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 532
	offset_end 539
}
ciphertext_16 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 548
	offset_end 555
}
ciphertext_17 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 564
	offset_end 571
}
ciphertext_18 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 580
	offset_end 587
}
ciphertext_19 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 596
	offset_end 603
}
ciphertext_20 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 612
	offset_end 619
}
ciphertext_21 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 628
	offset_end 635
}
ciphertext_22 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 644
	offset_end 651
}
ciphertext_23 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 660
	offset_end 667
}
ciphertext_24 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 676
	offset_end 683
}
ciphertext_25 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 692
	offset_end 699
}
ciphertext_26 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 708
	offset_end 715
}
ciphertext_27 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 724
	offset_end 731
}
ciphertext_28 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 740
	offset_end 747
}
ciphertext_29 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 756
	offset_end 763
}
ciphertext_30 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 772
	offset_end 779
}
ciphertext_31 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 788
	offset_end 795
}
nonce { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 804
	offset_end 811
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 13 \
			corename cifrador_paralelo_32_ctr_control_axilite \
			name cifrador_paralelo_32_ctr_control_s_axi \
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
	::AP::rtl_comp_handler cifrador_paralelo_32_ctr_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 0 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


