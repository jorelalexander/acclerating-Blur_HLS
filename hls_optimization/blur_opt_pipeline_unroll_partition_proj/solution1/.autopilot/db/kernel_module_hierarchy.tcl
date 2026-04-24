set ModuleHierarchy {[{
"Name" : "blur_opt_pipeline_unroll_partition", "RefName" : "blur_opt_pipeline_unroll_partition","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_fu_42", "RefName" : "linebuffer_box3_pipeline_unroll_partition","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_Pipeline_1_fu_52", "RefName" : "linebuffer_box3_pipeline_unroll_partition_Pipeline_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_fu_58", "RefName" : "linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","RefName" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1_fu_68", "RefName" : "linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_180_1_VITIS_LOOP_181_2","RefName" : "VITIS_LOOP_180_1_VITIS_LOOP_181_2","ID" : "7","Type" : "pipeline"},]},]},]
}]}