set SynModuleInfo {
  {SRCNAME sbox MODELNAME sbox RTLNAME cifrador_serial_sbox
    SUBMODULES {
      {MODELNAME cifrador_serial_sparsemux_33_4_4_1_1 RTLNAME cifrador_serial_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME cifrador_serial MODELNAME cifrador_serial RTLNAME cifrador_serial IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_serial_control_s_axi RTLNAME cifrador_serial_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cifrador_serial_flow_control_loop_pipe RTLNAME cifrador_serial_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cifrador_serial_flow_control_loop_pipe_U}
    }
  }
}
