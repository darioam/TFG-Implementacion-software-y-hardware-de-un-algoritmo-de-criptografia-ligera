set SynModuleInfo {
  {SRCNAME cifrador MODELNAME cifrador RTLNAME cifrador_paralelo_32_cifrador
    SUBMODULES {
      {MODELNAME cifrador_paralelo_32_sparsemux_33_4_4_1_1 RTLNAME cifrador_paralelo_32_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cifrador_paralelo_32_flow_control_loop_pipe_sequential_init RTLNAME cifrador_paralelo_32_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cifrador_paralelo_32_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cifrador_paralelo_32 MODELNAME cifrador_paralelo_32 RTLNAME cifrador_paralelo_32 IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_paralelo_32_control_s_axi RTLNAME cifrador_paralelo_32_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
