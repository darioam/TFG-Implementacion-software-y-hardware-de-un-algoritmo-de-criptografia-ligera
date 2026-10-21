# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cifrador_paralelo_pre_8_sparsemux_63_5_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cifrador_paralelo_pre_8_sparsemux_33_4_4_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name plaintext \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_plaintext \
    op interface \
    ports { plaintext { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name round_keys_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_0_val \
    op interface \
    ports { round_keys_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name round_keys_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_1_val \
    op interface \
    ports { round_keys_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name round_keys_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_2_val \
    op interface \
    ports { round_keys_2_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name round_keys_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_3_val \
    op interface \
    ports { round_keys_3_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name round_keys_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_4_val \
    op interface \
    ports { round_keys_4_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name round_keys_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_5_val \
    op interface \
    ports { round_keys_5_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name round_keys_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_6_val \
    op interface \
    ports { round_keys_6_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name round_keys_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_7_val \
    op interface \
    ports { round_keys_7_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name round_keys_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_8_val \
    op interface \
    ports { round_keys_8_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name round_keys_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_9_val \
    op interface \
    ports { round_keys_9_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name round_keys_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_10_val \
    op interface \
    ports { round_keys_10_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name round_keys_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_11_val \
    op interface \
    ports { round_keys_11_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name round_keys_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_12_val \
    op interface \
    ports { round_keys_12_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name round_keys_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_13_val \
    op interface \
    ports { round_keys_13_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name round_keys_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_14_val \
    op interface \
    ports { round_keys_14_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name round_keys_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_15_val \
    op interface \
    ports { round_keys_15_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name round_keys_16_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_16_val \
    op interface \
    ports { round_keys_16_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name round_keys_17_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_17_val \
    op interface \
    ports { round_keys_17_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name round_keys_18_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_18_val \
    op interface \
    ports { round_keys_18_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name round_keys_19_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_19_val \
    op interface \
    ports { round_keys_19_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name round_keys_20_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_20_val \
    op interface \
    ports { round_keys_20_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name round_keys_21_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_21_val \
    op interface \
    ports { round_keys_21_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name round_keys_22_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_22_val \
    op interface \
    ports { round_keys_22_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name round_keys_23_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_23_val \
    op interface \
    ports { round_keys_23_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name round_keys_24_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_24_val \
    op interface \
    ports { round_keys_24_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name round_keys_25_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_25_val \
    op interface \
    ports { round_keys_25_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name round_keys_26_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_26_val \
    op interface \
    ports { round_keys_26_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name round_keys_27_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_27_val \
    op interface \
    ports { round_keys_27_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name round_keys_28_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_28_val \
    op interface \
    ports { round_keys_28_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name round_keys_29_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_29_val \
    op interface \
    ports { round_keys_29_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name round_keys_30_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_30_val \
    op interface \
    ports { round_keys_30_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name round_keys_31_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_keys_31_val \
    op interface \
    ports { round_keys_31_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
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
    id -3 \
    name ${PortName} \
    reset_level 1 \
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
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
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


# flow_control definition:
set InstName cifrador_paralelo_pre_8_flow_control_loop_pipe_sequential_init_U
set CompName cifrador_paralelo_pre_8_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cifrador_paralelo_pre_8_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


