set SynModuleInfo {
  {SRCNAME linebuffer_box3_final_Pipeline_1 MODELNAME linebuffer_box3_final_Pipeline_1 RTLNAME blur_opt_final_linebuffer_box3_final_Pipeline_1
    SUBMODULES {
      {MODELNAME blur_opt_final_flow_control_loop_pipe_sequential_init RTLNAME blur_opt_final_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME blur_opt_final_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME linebuffer_box3_final_Pipeline_VITIS_LOOP_245_1_VITIS_LOOP_246_2 MODELNAME linebuffer_box3_final_Pipeline_VITIS_LOOP_245_1_VITIS_LOOP_246_2 RTLNAME blur_opt_final_linebuffer_box3_final_Pipeline_VITIS_LOOP_245_1_VITIS_LOOP_246_2}
  {SRCNAME linebuffer_box3_final_Pipeline_VITIS_LOOP_280_1_VITIS_LOOP_281_2 MODELNAME linebuffer_box3_final_Pipeline_VITIS_LOOP_280_1_VITIS_LOOP_281_2 RTLNAME blur_opt_final_linebuffer_box3_final_Pipeline_VITIS_LOOP_280_1_VITIS_LOOP_281_2
    SUBMODULES {
      {MODELNAME blur_opt_final_am_addmul_11ns_10ns_13ns_25_4_1 RTLNAME blur_opt_final_am_addmul_11ns_10ns_13ns_25_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME linebuffer_box3_final MODELNAME linebuffer_box3_final RTLNAME blur_opt_final_linebuffer_box3_final
    SUBMODULES {
      {MODELNAME blur_opt_final_mul_31ns_31ns_62_2_1 RTLNAME blur_opt_final_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME blur_opt_final_linebuffer_box3_final_linebuf_RAM_AUTO_1R1W RTLNAME blur_opt_final_linebuffer_box3_final_linebuf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME blur_opt_final MODELNAME blur_opt_final RTLNAME blur_opt_final IS_TOP 1}
}
