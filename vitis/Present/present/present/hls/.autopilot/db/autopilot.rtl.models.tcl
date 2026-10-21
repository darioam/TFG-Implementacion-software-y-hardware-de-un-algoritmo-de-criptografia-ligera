set SynModuleInfo {
  {SRCNAME present_Pipeline_VITIS_LOOP_92_1 MODELNAME present_Pipeline_VITIS_LOOP_92_1 RTLNAME present_present_Pipeline_VITIS_LOOP_92_1
    SUBMODULES {
      {MODELNAME present_sparsemux_33_4_4_1_1 RTLNAME present_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME present_flow_control_loop_pipe_sequential_init RTLNAME present_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME present_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME present_Pipeline_VITIS_LOOP_114_1 MODELNAME present_Pipeline_VITIS_LOOP_114_1 RTLNAME present_present_Pipeline_VITIS_LOOP_114_1}
  {SRCNAME present MODELNAME present RTLNAME present IS_TOP 1
    SUBMODULES {
      {MODELNAME present_round_keys_RAM_AUTO_1R1W RTLNAME present_round_keys_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME present_control_s_axi RTLNAME present_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
