set SynModuleInfo {
  {SRCNAME copy_stage_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2 MODELNAME copy_stage_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2 RTLNAME blur_opt_dataflow_copy_stage_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2
    SUBMODULES {
      {MODELNAME blur_opt_dataflow_flow_control_loop_pipe_sequential_init RTLNAME blur_opt_dataflow_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME blur_opt_dataflow_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME copy_stage MODELNAME copy_stage RTLNAME blur_opt_dataflow_copy_stage
    SUBMODULES {
      {MODELNAME blur_opt_dataflow_mul_31ns_31ns_62_2_1 RTLNAME blur_opt_dataflow_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME linebuffer_box3_pipeline_unroll_partition_Pipeline_1 MODELNAME linebuffer_box3_pipeline_unroll_partition_Pipeline_1 RTLNAME blur_opt_dataflow_linebuffer_box3_pipeline_unroll_partition_Pipeline_1}
  {SRCNAME linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16 MODELNAME linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16 RTLNAME blur_opt_dataflow_linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16}
  {SRCNAME linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1 MODELNAME linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1 RTLNAME blur_opt_dataflow_linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1
    SUBMODULES {
      {MODELNAME blur_opt_dataflow_am_addmul_11ns_8ns_13ns_25_4_1 RTLNAME blur_opt_dataflow_am_addmul_11ns_8ns_13ns_25_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME linebuffer_box3_pipeline_unroll_partition MODELNAME linebuffer_box3_pipeline_unroll_partition RTLNAME blur_opt_dataflow_linebuffer_box3_pipeline_unroll_partition
    SUBMODULES {
      {MODELNAME blur_opt_dataflow_linebuffer_box3_pipeline_unroll_partition_linebuf_RAM_AUTO_1R1W RTLNAME blur_opt_dataflow_linebuffer_box3_pipeline_unroll_partition_linebuf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_stage_dataflow MODELNAME compute_stage_dataflow RTLNAME blur_opt_dataflow_compute_stage_dataflow}
  {SRCNAME copy_stage.1_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2 MODELNAME copy_stage_1_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2 RTLNAME blur_opt_dataflow_copy_stage_1_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2}
  {SRCNAME copy_stage.1 MODELNAME copy_stage_1 RTLNAME blur_opt_dataflow_copy_stage_1}
  {SRCNAME blur_opt_dataflow MODELNAME blur_opt_dataflow RTLNAME blur_opt_dataflow IS_TOP 1
    SUBMODULES {
      {MODELNAME blur_opt_dataflow_stage0_RAM_AUTO_1R1W_memcore RTLNAME blur_opt_dataflow_stage0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME blur_opt_dataflow_stage0_RAM_AUTO_1R1W RTLNAME blur_opt_dataflow_stage0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME blur_opt_dataflow_fifo_w32_d2_S RTLNAME blur_opt_dataflow_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME width_c1_channel_U}
      {MODELNAME blur_opt_dataflow_fifo_w32_d2_S RTLNAME blur_opt_dataflow_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_c2_channel_U}
      {MODELNAME blur_opt_dataflow_fifo_w32_d2_S RTLNAME blur_opt_dataflow_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME width_c_channel_U}
      {MODELNAME blur_opt_dataflow_fifo_w32_d2_S RTLNAME blur_opt_dataflow_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_c_channel_U}
    }
  }
}
