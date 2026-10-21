set ModuleHierarchy {[{
"Name" : "cifrador_paralelo_stream", "RefName" : "cifrador_paralelo_stream","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "key_schedule_U0", "RefName" : "key_schedule","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_93_1","RefName" : "VITIS_LOOP_93_1","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "ref_tmp_channel_U", "RefName" : "cifrador_1","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_cifrador_1_Pipeline_VITIS_LOOP_115_1_fu_48", "RefName" : "cifrador_1_Pipeline_VITIS_LOOP_115_1","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_115_1","RefName" : "VITIS_LOOP_115_1","ID" : "6","Type" : "pipeline"},]},]},
	{"Name" : "ref_tmp7_channel_U", "RefName" : "cifrador_2","ID" : "7","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_cifrador_2_Pipeline_VITIS_LOOP_115_1_fu_48", "RefName" : "cifrador_2_Pipeline_VITIS_LOOP_115_1","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_115_1","RefName" : "VITIS_LOOP_115_1","ID" : "9","Type" : "pipeline"},]},]},
	{"Name" : "ref_tmp9_channel_U", "RefName" : "cifrador_3","ID" : "10","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_cifrador_3_Pipeline_VITIS_LOOP_115_1_fu_48", "RefName" : "cifrador_3_Pipeline_VITIS_LOOP_115_1","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_115_1","RefName" : "VITIS_LOOP_115_1","ID" : "12","Type" : "pipeline"},]},]},
	{"Name" : "ref_tmp11_channel_U", "RefName" : "cifrador","ID" : "13","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_cifrador_Pipeline_VITIS_LOOP_115_1_fu_48", "RefName" : "cifrador_Pipeline_VITIS_LOOP_115_1","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_115_1","RefName" : "VITIS_LOOP_115_1","ID" : "15","Type" : "pipeline"},]},]},
	{"Name" : "Block_entry_proc_U0", "RefName" : "Block_entry_proc","ID" : "16","Type" : "sequential"},]
}]}