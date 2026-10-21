set SynModuleInfo {
  {SRCNAME cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1 MODELNAME cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1 RTLNAME cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1
    SUBMODULES {
      {MODELNAME cifrador_basico_pre_sparsemux_33_4_4_1_1 RTLNAME cifrador_basico_pre_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cifrador_basico_pre_flow_control_loop_pipe_sequential_init RTLNAME cifrador_basico_pre_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cifrador_basico_pre_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1 MODELNAME cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1 RTLNAME cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1}
  {SRCNAME cifrador_basico_pre MODELNAME cifrador_basico_pre RTLNAME cifrador_basico_pre IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_basico_pre_round_keys_RAM_AUTO_1R1W RTLNAME cifrador_basico_pre_round_keys_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cifrador_basico_pre_control_s_axi RTLNAME cifrador_basico_pre_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
