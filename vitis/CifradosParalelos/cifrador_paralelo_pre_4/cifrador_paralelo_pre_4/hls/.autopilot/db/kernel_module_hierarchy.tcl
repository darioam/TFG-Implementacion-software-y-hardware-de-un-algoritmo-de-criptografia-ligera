set ModuleHierarchy {[{
"Name" : "cifrador_paralelo_pre_4", "RefName" : "cifrador_paralelo_pre_4","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cifrador_fu_320", "RefName" : "cifrador","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_110_1","RefName" : "VITIS_LOOP_110_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_cifrador_fu_358", "RefName" : "cifrador","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_110_1","RefName" : "VITIS_LOOP_110_1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_cifrador_fu_396", "RefName" : "cifrador","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_110_1","RefName" : "VITIS_LOOP_110_1","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_cifrador_fu_434", "RefName" : "cifrador","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_110_1","RefName" : "VITIS_LOOP_110_1","ID" : "8","Type" : "pipeline"},]},]
}]}