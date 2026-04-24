set SynModuleInfo {
  {SRCNAME linebuffer_box3_pipeline_Pipeline_1 MODELNAME linebuffer_box3_pipeline_Pipeline_1 RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline_Pipeline_1
    SUBMODULES {
      {MODELNAME blur_opt_pipeline_flow_control_loop_pipe_sequential_init RTLNAME blur_opt_pipeline_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME blur_opt_pipeline_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME linebuffer_box3_pipeline_Pipeline_2 MODELNAME linebuffer_box3_pipeline_Pipeline_2 RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline_Pipeline_2}
  {SRCNAME linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2 MODELNAME linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2 RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2}
  {SRCNAME linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_80_1_VITIS_LOOP_81_2 MODELNAME linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_80_1_VITIS_LOOP_81_2 RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_80_1_VITIS_LOOP_81_2
    SUBMODULES {
      {MODELNAME blur_opt_pipeline_am_addmul_11ns_10ns_13ns_25_4_1 RTLNAME blur_opt_pipeline_am_addmul_11ns_10ns_13ns_25_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME linebuffer_box3_pipeline MODELNAME linebuffer_box3_pipeline RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline
    SUBMODULES {
      {MODELNAME blur_opt_pipeline_mul_31ns_31ns_62_2_1 RTLNAME blur_opt_pipeline_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME blur_opt_pipeline_linebuffer_box3_pipeline_linebuf_RAM_AUTO_1R1W RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline_linebuf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME blur_opt_pipeline_linebuffer_box3_pipeline_window_RAM_AUTO_1R1W RTLNAME blur_opt_pipeline_linebuffer_box3_pipeline_window_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME blur_opt_pipeline MODELNAME blur_opt_pipeline RTLNAME blur_opt_pipeline IS_TOP 1}
}
