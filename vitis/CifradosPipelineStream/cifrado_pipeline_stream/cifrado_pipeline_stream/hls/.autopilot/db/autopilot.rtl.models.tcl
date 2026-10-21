set SynModuleInfo {
  {SRCNAME stage<0> MODELNAME stage_0_s RTLNAME cifrador_pipeline_stream_stage_0_s
    SUBMODULES {
      {MODELNAME cifrador_pipeline_stream_sparsemux_33_4_4_1_1 RTLNAME cifrador_pipeline_stream_sparsemux_33_4_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME stage<1> MODELNAME stage_1_s RTLNAME cifrador_pipeline_stream_stage_1_s}
  {SRCNAME stage<2> MODELNAME stage_2_s RTLNAME cifrador_pipeline_stream_stage_2_s}
  {SRCNAME stage<3> MODELNAME stage_3_s RTLNAME cifrador_pipeline_stream_stage_3_s}
  {SRCNAME stage<4> MODELNAME stage_4_s RTLNAME cifrador_pipeline_stream_stage_4_s}
  {SRCNAME stage<5> MODELNAME stage_5_s RTLNAME cifrador_pipeline_stream_stage_5_s}
  {SRCNAME stage<6> MODELNAME stage_6_s RTLNAME cifrador_pipeline_stream_stage_6_s}
  {SRCNAME stage<7> MODELNAME stage_7_s RTLNAME cifrador_pipeline_stream_stage_7_s}
  {SRCNAME stage<8> MODELNAME stage_8_s RTLNAME cifrador_pipeline_stream_stage_8_s}
  {SRCNAME stage<9> MODELNAME stage_9_s RTLNAME cifrador_pipeline_stream_stage_9_s}
  {SRCNAME stage<10> MODELNAME stage_10_s RTLNAME cifrador_pipeline_stream_stage_10_s}
  {SRCNAME stage<11> MODELNAME stage_11_s RTLNAME cifrador_pipeline_stream_stage_11_s}
  {SRCNAME stage<12> MODELNAME stage_12_s RTLNAME cifrador_pipeline_stream_stage_12_s}
  {SRCNAME stage<13> MODELNAME stage_13_s RTLNAME cifrador_pipeline_stream_stage_13_s}
  {SRCNAME stage<14> MODELNAME stage_14_s RTLNAME cifrador_pipeline_stream_stage_14_s}
  {SRCNAME stage<15> MODELNAME stage_15_s RTLNAME cifrador_pipeline_stream_stage_15_s}
  {SRCNAME stage<16> MODELNAME stage_16_s RTLNAME cifrador_pipeline_stream_stage_16_s}
  {SRCNAME stage<17> MODELNAME stage_17_s RTLNAME cifrador_pipeline_stream_stage_17_s}
  {SRCNAME stage<18> MODELNAME stage_18_s RTLNAME cifrador_pipeline_stream_stage_18_s}
  {SRCNAME stage<19> MODELNAME stage_19_s RTLNAME cifrador_pipeline_stream_stage_19_s}
  {SRCNAME stage<20> MODELNAME stage_20_s RTLNAME cifrador_pipeline_stream_stage_20_s}
  {SRCNAME stage<21> MODELNAME stage_21_s RTLNAME cifrador_pipeline_stream_stage_21_s}
  {SRCNAME stage<22> MODELNAME stage_22_s RTLNAME cifrador_pipeline_stream_stage_22_s}
  {SRCNAME stage<23> MODELNAME stage_23_s RTLNAME cifrador_pipeline_stream_stage_23_s}
  {SRCNAME stage<24> MODELNAME stage_24_s RTLNAME cifrador_pipeline_stream_stage_24_s}
  {SRCNAME stage<25> MODELNAME stage_25_s RTLNAME cifrador_pipeline_stream_stage_25_s}
  {SRCNAME stage<26> MODELNAME stage_26_s RTLNAME cifrador_pipeline_stream_stage_26_s}
  {SRCNAME stage<27> MODELNAME stage_27_s RTLNAME cifrador_pipeline_stream_stage_27_s}
  {SRCNAME stage<28> MODELNAME stage_28_s RTLNAME cifrador_pipeline_stream_stage_28_s}
  {SRCNAME stage<29> MODELNAME stage_29_s RTLNAME cifrador_pipeline_stream_stage_29_s}
  {SRCNAME stage<30> MODELNAME stage_30_s RTLNAME cifrador_pipeline_stream_stage_30_s}
  {SRCNAME last_stage MODELNAME last_stage RTLNAME cifrador_pipeline_stream_last_stage}
  {SRCNAME cifrador_pipeline_stream MODELNAME cifrador_pipeline_stream RTLNAME cifrador_pipeline_stream IS_TOP 1
    SUBMODULES {
      {MODELNAME cifrador_pipeline_stream_control_s_axi RTLNAME cifrador_pipeline_stream_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cifrador_pipeline_stream_regslice_both RTLNAME cifrador_pipeline_stream_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
