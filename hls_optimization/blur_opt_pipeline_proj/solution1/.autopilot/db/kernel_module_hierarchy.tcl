set ModuleHierarchy {[{
"Name" : "blur_opt_pipeline", "RefName" : "blur_opt_pipeline","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_linebuffer_box3_pipeline_fu_42", "RefName" : "linebuffer_box3_pipeline","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_linebuffer_box3_pipeline_Pipeline_1_fu_184", "RefName" : "linebuffer_box3_pipeline_Pipeline_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_pipeline_Pipeline_2_fu_190", "RefName" : "linebuffer_box3_pipeline_Pipeline_2","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2_fu_195", "RefName" : "linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","RefName" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_80_1_VITIS_LOOP_81_2_fu_205", "RefName" : "linebuffer_box3_pipeline_Pipeline_VITIS_LOOP_80_1_VITIS_LOOP_81_2","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_80_1_VITIS_LOOP_81_2","RefName" : "VITIS_LOOP_80_1_VITIS_LOOP_81_2","ID" : "9","Type" : "pipeline"},]},]},]
}]}