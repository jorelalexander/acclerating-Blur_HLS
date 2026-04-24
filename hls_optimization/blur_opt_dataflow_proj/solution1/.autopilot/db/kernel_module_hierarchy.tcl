set ModuleHierarchy {[{
"Name" : "blur_opt_dataflow", "RefName" : "blur_opt_dataflow","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "copy_stage_U0", "RefName" : "copy_stage","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_copy_stage_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2_fu_38", "RefName" : "copy_stage_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_221_1_VITIS_LOOP_222_2","RefName" : "VITIS_LOOP_221_1_VITIS_LOOP_222_2","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "compute_stage_dataflow_U0", "RefName" : "compute_stage_dataflow","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_fu_26", "RefName" : "linebuffer_box3_pipeline_unroll_partition","ID" : "5","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_Pipeline_1_fu_44", "RefName" : "linebuffer_box3_pipeline_unroll_partition_Pipeline_1","ID" : "6","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "7","Type" : "pipeline"},]},
			{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_fu_50", "RefName" : "linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","RefName" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","ID" : "9","Type" : "pipeline"},]},
			{"Name" : "grp_linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1_fu_60", "RefName" : "linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_180_1_VITIS_LOOP_181_2","RefName" : "VITIS_LOOP_180_1_VITIS_LOOP_181_2","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "copy_stage_1_U0", "RefName" : "copy_stage_1","ID" : "12","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_copy_stage_1_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2_fu_36", "RefName" : "copy_stage_1_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_221_1_VITIS_LOOP_222_2","RefName" : "VITIS_LOOP_221_1_VITIS_LOOP_222_2","ID" : "14","Type" : "pipeline"},]},]},]
}]}