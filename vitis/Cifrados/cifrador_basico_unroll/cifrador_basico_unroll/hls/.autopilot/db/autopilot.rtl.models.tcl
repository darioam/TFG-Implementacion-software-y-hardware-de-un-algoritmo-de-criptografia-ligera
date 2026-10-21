set SynModuleInfo {
  {SRCNAME cifrador_basico_unroll MODELNAME cifrador_basico_unroll RTLNAME cifrador_basico_unroll IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_basico_unroll_sparsemux_33_4_4_1_1 RTLNAME cifrador_basico_unroll_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cifrador_basico_unroll_control_s_axi RTLNAME cifrador_basico_unroll_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cifrador_basico_unroll_flow_control_loop_pipe RTLNAME cifrador_basico_unroll_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cifrador_basico_unroll_flow_control_loop_pipe_U}
    }
  }
}
