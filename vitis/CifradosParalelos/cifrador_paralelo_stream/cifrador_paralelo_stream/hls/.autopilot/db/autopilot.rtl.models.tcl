set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME cifrador_paralelo_stream_entry_proc}
  {SRCNAME key_schedule MODELNAME key_schedule RTLNAME cifrador_paralelo_stream_key_schedule
    SUBMODULES {
      {MODELNAME cifrador_paralelo_stream_sparsemux_33_4_4_1_1 RTLNAME cifrador_paralelo_stream_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME cifrador_paralelo_stream_flow_control_loop_pipe RTLNAME cifrador_paralelo_stream_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cifrador_paralelo_stream_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME cifrador.1_Pipeline_VITIS_LOOP_115_1 MODELNAME cifrador_1_Pipeline_VITIS_LOOP_115_1 RTLNAME cifrador_paralelo_stream_cifrador_1_Pipeline_VITIS_LOOP_115_1
    SUBMODULES {
      {MODELNAME cifrador_paralelo_stream_flow_control_loop_pipe_sequential_init RTLNAME cifrador_paralelo_stream_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cifrador_paralelo_stream_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cifrador.1 MODELNAME cifrador_1 RTLNAME cifrador_paralelo_stream_cifrador_1}
  {SRCNAME cifrador.2_Pipeline_VITIS_LOOP_115_1 MODELNAME cifrador_2_Pipeline_VITIS_LOOP_115_1 RTLNAME cifrador_paralelo_stream_cifrador_2_Pipeline_VITIS_LOOP_115_1}
  {SRCNAME cifrador.2 MODELNAME cifrador_2 RTLNAME cifrador_paralelo_stream_cifrador_2}
  {SRCNAME cifrador.3_Pipeline_VITIS_LOOP_115_1 MODELNAME cifrador_3_Pipeline_VITIS_LOOP_115_1 RTLNAME cifrador_paralelo_stream_cifrador_3_Pipeline_VITIS_LOOP_115_1}
  {SRCNAME cifrador.3 MODELNAME cifrador_3 RTLNAME cifrador_paralelo_stream_cifrador_3}
  {SRCNAME cifrador_Pipeline_VITIS_LOOP_115_1 MODELNAME cifrador_Pipeline_VITIS_LOOP_115_1 RTLNAME cifrador_paralelo_stream_cifrador_Pipeline_VITIS_LOOP_115_1}
  {SRCNAME cifrador MODELNAME cifrador RTLNAME cifrador_paralelo_stream_cifrador}
  {SRCNAME Block_entry_proc MODELNAME Block_entry_proc RTLNAME cifrador_paralelo_stream_Block_entry_proc}
  {SRCNAME cifrador_paralelo_stream MODELNAME cifrador_paralelo_stream RTLNAME cifrador_paralelo_stream IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d3_S RTLNAME cifrador_paralelo_stream_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME plaintext0_c_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d3_S RTLNAME cifrador_paralelo_stream_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME plaintext1_c_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d3_S RTLNAME cifrador_paralelo_stream_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME plaintext2_c_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d3_S RTLNAME cifrador_paralelo_stream_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME plaintext3_c_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d32_S RTLNAME cifrador_paralelo_stream_fifo_w32_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k0_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d32_S RTLNAME cifrador_paralelo_stream_fifo_w32_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k1_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d32_S RTLNAME cifrador_paralelo_stream_fifo_w32_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k2_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d32_S RTLNAME cifrador_paralelo_stream_fifo_w32_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k3_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d2_S RTLNAME cifrador_paralelo_stream_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ref_tmp_channel_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d2_S RTLNAME cifrador_paralelo_stream_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ref_tmp7_channel_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d2_S RTLNAME cifrador_paralelo_stream_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ref_tmp9_channel_U}
      {MODELNAME cifrador_paralelo_stream_fifo_w32_d2_S RTLNAME cifrador_paralelo_stream_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ref_tmp11_channel_U}
      {MODELNAME cifrador_paralelo_stream_start_for_cifrador_1_U0 RTLNAME cifrador_paralelo_stream_start_for_cifrador_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_cifrador_1_U0_U}
      {MODELNAME cifrador_paralelo_stream_start_for_cifrador_2_U0 RTLNAME cifrador_paralelo_stream_start_for_cifrador_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_cifrador_2_U0_U}
      {MODELNAME cifrador_paralelo_stream_start_for_cifrador_3_U0 RTLNAME cifrador_paralelo_stream_start_for_cifrador_3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_cifrador_3_U0_U}
      {MODELNAME cifrador_paralelo_stream_start_for_cifrador_U0 RTLNAME cifrador_paralelo_stream_start_for_cifrador_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_cifrador_U0_U}
      {MODELNAME cifrador_paralelo_stream_control_s_axi RTLNAME cifrador_paralelo_stream_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
