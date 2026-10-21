set SynModuleInfo {
  {SRCNAME stage<0> MODELNAME stage_0_s RTLNAME cifrador_pipeline_stream_4_stage_0_s
    SUBMODULES {
      {MODELNAME cifrador_pipeline_stream_4_sparsemux_33_4_4_1_1 RTLNAME cifrador_pipeline_stream_4_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME stage<1> MODELNAME stage_1_s RTLNAME cifrador_pipeline_stream_4_stage_1_s}
  {SRCNAME stage<2> MODELNAME stage_2_s RTLNAME cifrador_pipeline_stream_4_stage_2_s}
  {SRCNAME stage<3> MODELNAME stage_3_s RTLNAME cifrador_pipeline_stream_4_stage_3_s}
  {SRCNAME stage<4> MODELNAME stage_4_s RTLNAME cifrador_pipeline_stream_4_stage_4_s}
  {SRCNAME stage<5> MODELNAME stage_5_s RTLNAME cifrador_pipeline_stream_4_stage_5_s}
  {SRCNAME stage<6> MODELNAME stage_6_s RTLNAME cifrador_pipeline_stream_4_stage_6_s}
  {SRCNAME last_stage<7> MODELNAME last_stage_7_s RTLNAME cifrador_pipeline_stream_4_last_stage_7_s}
  {SRCNAME cifrador_pipeline_stream_4 MODELNAME cifrador_pipeline_stream_4 RTLNAME cifrador_pipeline_stream_4 IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_pipeline_stream_4_control_s_axi RTLNAME cifrador_pipeline_stream_4_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cifrador_pipeline_stream_4_regslice_both RTLNAME cifrador_pipeline_stream_4_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
