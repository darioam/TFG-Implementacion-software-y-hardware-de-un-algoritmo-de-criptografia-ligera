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
plaintext_16 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
plaintext_17 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
plaintext_18 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
plaintext_19 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
plaintext_20 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
plaintext_21 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
plaintext_22 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
plaintext_23 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
plaintext_24 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
plaintext_25 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 216
	offset_end 223
}
plaintext_26 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
plaintext_27 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
plaintext_28 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
plaintext_29 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 248
	offset_end 255
}
plaintext_30 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 256
	offset_end 263
}
plaintext_31 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 264
	offset_end 271
}
key { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 272
	offset_end 283
}
ciphertext_0 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 284
	offset_end 291
}
ciphertext_1 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 300
	offset_end 307
}
ciphertext_2 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 316
	offset_end 323
}
ciphertext_3 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 332
	offset_end 339
}
ciphertext_4 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 348
	offset_end 355
}
ciphertext_5 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 364
	offset_end 371
}
ciphertext_6 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 380
	offset_end 387
}
ciphertext_7 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 396
	offset_end 403
}
ciphertext_8 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 412
	offset_end 419
}
ciphertext_9 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 428
	offset_end 435
}
ciphertext_10 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 444
	offset_end 451
}
ciphertext_11 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 460
	offset_end 467
}
ciphertext_12 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 476
	offset_end 483
}
ciphertext_13 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 492
	offset_end 499
}
ciphertext_14 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 508
	offset_end 515
}
ciphertext_15 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 524
	offset_end 531
}
ciphertext_16 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 540
	offset_end 547
}
ciphertext_17 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 556
	offset_end 563
}
ciphertext_18 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 572
	offset_end 579
}
ciphertext_19 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 588
	offset_end 595
}
ciphertext_20 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 604
	offset_end 611
}
ciphertext_21 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 620
	offset_end 627
}
ciphertext_22 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 636
	offset_end 643
}
ciphertext_23 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 652
	offset_end 659
}
ciphertext_24 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 668
	offset_end 675
}
ciphertext_25 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 684
	offset_end 691
}
ciphertext_26 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 700
	offset_end 707
}
ciphertext_27 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 716
	offset_end 723
}
ciphertext_28 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 732
	offset_end 739
}
ciphertext_29 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 748
	offset_end 755
}
ciphertext_30 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 764
	offset_end 771
}
ciphertext_31 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 780
	offset_end 787
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
			corename cifrador_paralelo_32_control_axilite \
			name cifrador_paralelo_32_control_s_axi \
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
	::AP::rtl_comp_handler cifrador_paralelo_32_control_s_axi BINDTYPE interface TYPE interface_s_axilite
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


