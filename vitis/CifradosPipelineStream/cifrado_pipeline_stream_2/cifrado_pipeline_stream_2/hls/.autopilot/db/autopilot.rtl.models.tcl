set SynModuleInfo {
  {SRCNAME stage<0> MODELNAME stage_0_s RTLNAME cifrador_pipeline_stream_2_stage_0_s
    SUBMODULES {
      {MODELNAME cifrador_pipeline_stream_2_sparsemux_33_4_4_1_1 RTLNAME cifrador_pipeline_stream_2_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME stage<1> MODELNAME stage_1_s RTLNAME cifrador_pipeline_stream_2_stage_1_s}
  {SRCNAME stage<2> MODELNAME stage_2_s RTLNAME cifrador_pipeline_stream_2_stage_2_s}
  {SRCNAME stage<3> MODELNAME stage_3_s RTLNAME cifrador_pipeline_stream_2_stage_3_s}
  {SRCNAME stage<4> MODELNAME stage_4_s RTLNAME cifrador_pipeline_stream_2_stage_4_s}
  {SRCNAME stage<5> MODELNAME stage_5_s RTLNAME cifrador_pipeline_stream_2_stage_5_s}
  {SRCNAME stage<6> MODELNAME stage_6_s RTLNAME cifrador_pipeline_stream_2_stage_6_s}
  {SRCNAME stage<7> MODELNAME stage_7_s RTLNAME cifrador_pipeline_stream_2_stage_7_s}
  {SRCNAME stage<8> MODELNAME stage_8_s RTLNAME cifrador_pipeline_stream_2_stage_8_s}
  {SRCNAME stage<9> MODELNAME stage_9_s RTLNAME cifrador_pipeline_stream_2_stage_9_s}
  {SRCNAME stage<10> MODELNAME stage_10_s RTLNAME cifrador_pipeline_stream_2_stage_10_s}
  {SRCNAME stage<11> MODELNAME stage_11_s RTLNAME cifrador_pipeline_stream_2_stage_11_s}
  {SRCNAME stage<12> MODELNAME stage_12_s RTLNAME cifrador_pipeline_stream_2_stage_12_s}
  {SRCNAME stage<13> MODELNAME stage_13_s RTLNAME cifrador_pipeline_stream_2_stage_13_s}
  {SRCNAME stage<14> MODELNAME stage_14_s RTLNAME cifrador_pipeline_stream_2_stage_14_s}
  {SRCNAME last_stage<15> MODELNAME last_stage_15_s RTLNAME cifrador_pipeline_stream_2_last_stage_15_s}
  {SRCNAME cifrador_pipeline_stream_2 MODELNAME cifrador_pipeline_stream_2 RTLNAME cifrador_pipeline_stream_2 IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_pipeline_stream_2_control_s_axi RTLNAME cifrador_pipeline_stream_2_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cifrador_pipeline_stream_2_regslice_both RTLNAME cifrador_pipeline_stream_2_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
