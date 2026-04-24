set moduleName blur_opt_dataflow
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 12
set C_modelName {blur_opt_dataflow}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_r { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_r int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ output_r int 8 regular {array 1048576 { 0 3 } 0 1 }  }
	{ width int 32 regular  }
	{ height int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ input_r_address0 sc_out sc_lv 20 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_d0 sc_out sc_lv 8 signal 0 } 
	{ input_r_q0 sc_in sc_lv 8 signal 0 } 
	{ input_r_we0 sc_out sc_logic 1 signal 0 } 
	{ input_r_address1 sc_out sc_lv 20 signal 0 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_r_d1 sc_out sc_lv 8 signal 0 } 
	{ input_r_q1 sc_in sc_lv 8 signal 0 } 
	{ input_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_address0 sc_out sc_lv 20 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 8 signal 1 } 
	{ output_r_q0 sc_in sc_lv 8 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_address1 sc_out sc_lv 20 signal 1 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_r_d1 sc_out sc_lv 8 signal 1 } 
	{ output_r_q1 sc_in sc_lv 8 signal 1 } 
	{ output_r_we1 sc_out sc_logic 1 signal 1 } 
	{ width sc_in sc_lv 32 signal 2 } 
	{ height sc_in sc_lv 32 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "d0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "d1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "input_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we1" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "output_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "q1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	blur_opt_dataflow {
		input_r {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stage0 {Type IO LastRead -1 FirstWrite -1}
		stage1 {Type IO LastRead -1 FirstWrite -1}}
	copy_stage {
		input_r {Type I LastRead 2 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stage0 {Type O LastRead -1 FirstWrite 3}}
	copy_stage_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 2 FirstWrite -1}
		stage0 {Type O LastRead -1 FirstWrite 3}}
	compute_stage_dataflow {
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stage0 {Type I LastRead 3 FirstWrite -1}
		stage1 {Type O LastRead -1 FirstWrite 4}}
	linebuffer_box3_pipeline_unroll_partition {
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stage0 {Type I LastRead 3 FirstWrite -1}
		stage1 {Type O LastRead -1 FirstWrite 4}}
	linebuffer_box3_pipeline_unroll_partition_Pipeline_1 {
		linebuf_1 {Type O LastRead -1 FirstWrite 0}
		linebuf {Type O LastRead -1 FirstWrite 0}}
	linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16 {
		width {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		stage0 {Type I LastRead 3 FirstWrite -1}
		stage1 {Type O LastRead -1 FirstWrite 4}}
	linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1 {
		mul_ln180 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		stage0 {Type I LastRead 3 FirstWrite -1}
		linebuf_1 {Type IO LastRead 4 FirstWrite 5}
		linebuf {Type IO LastRead 3 FirstWrite 4}
		stage1 {Type O LastRead -1 FirstWrite 10}}
	copy_stage_1 {
		output_r {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		stage1 {Type I LastRead 3 FirstWrite -1}}
	copy_stage_1_Pipeline_VITIS_LOOP_221_1_VITIS_LOOP_222_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 4}
		stage1 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 20 }  { input_r_ce0 mem_ce 1 1 }  { input_r_d0 mem_din 1 8 }  { input_r_q0 mem_dout 0 8 }  { input_r_we0 mem_we 1 1 }  { input_r_address1 mem_address 1 20 }  { input_r_ce1 mem_ce 1 1 }  { input_r_d1 mem_din 1 8 }  { input_r_q1 mem_dout 0 8 }  { input_r_we1 mem_we 1 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 20 }  { output_r_ce0 mem_ce 1 1 }  { output_r_d0 mem_din 1 8 }  { output_r_q0 mem_dout 0 8 }  { output_r_we0 mem_we 1 1 }  { output_r_address1 mem_address 1 20 }  { output_r_ce1 mem_ce 1 1 }  { output_r_d1 mem_din 1 8 }  { output_r_q1 mem_dout 0 8 }  { output_r_we1 mem_we 1 1 } } }
	width { ap_none {  { width in_data 0 32 } } }
	height { ap_none {  { height in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
