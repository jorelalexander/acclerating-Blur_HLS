set ModuleHierarchy {[{
"Name" : "blur_opt_final", "RefName" : "blur_opt_final","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_linebuffer_box3_final_fu_42", "RefName" : "linebuffer_box3_final","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_linebuffer_box3_final_Pipeline_1_fu_52", "RefName" : "linebuffer_box3_final_Pipeline_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_final_Pipeline_VITIS_LOOP_245_1_VITIS_LOOP_246_2_fu_58", "RefName" : "linebuffer_box3_final_Pipeline_VITIS_LOOP_245_1_VITIS_LOOP_246_2","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_245_1_VITIS_LOOP_246_2","RefName" : "VITIS_LOOP_245_1_VITIS_LOOP_246_2","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_final_Pipeline_VITIS_LOOP_280_1_VITIS_LOOP_281_2_fu_68", "RefName" : "linebuffer_box3_final_Pipeline_VITIS_LOOP_280_1_VITIS_LOOP_281_2","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_280_1_VITIS_LOOP_281_2","RefName" : "VITIS_LOOP_280_1_VITIS_LOOP_281_2","ID" : "7","Type" : "pipeline"},]},]},]
}]}