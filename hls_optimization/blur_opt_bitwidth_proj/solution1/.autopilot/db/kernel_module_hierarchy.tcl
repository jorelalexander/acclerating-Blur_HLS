set ModuleHierarchy {[{
"Name" : "blur_opt_bitwidth", "RefName" : "blur_opt_bitwidth","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_linebuffer_box3_base_unsigned_short_s_fu_42", "RefName" : "linebuffer_box3_base_unsigned_short_s","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_linebuffer_box3_base_unsigned_short_Pipeline_1_fu_78", "RefName" : "linebuffer_box3_base_unsigned_short_Pipeline_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_base_unsigned_short_Pipeline_2_fu_84", "RefName" : "linebuffer_box3_base_unsigned_short_Pipeline_2","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","RefName" : "Loop 1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_base_unsigned_short_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2_fu_94", "RefName" : "linebuffer_box3_base_unsigned_short_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","RefName" : "VITIS_LOOP_15_1_VITIS_LOOP_16_2","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_linebuffer_box3_base_unsigned_short_Pipeline_VITIS_LOOP_37_1_VITIS_LOOP_38_2_fu_104", "RefName" : "linebuffer_box3_base_unsigned_short_Pipeline_VITIS_LOOP_37_1_VITIS_LOOP_38_2","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_37_1_VITIS_LOOP_38_2","RefName" : "VITIS_LOOP_37_1_VITIS_LOOP_38_2","ID" : "9","Type" : "pipeline"},]},]},]
}]}