set moduleName compute_stage_dataflow
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {compute_stage_dataflow}
set C_modelType { int 64 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict stage0 { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict stage1 { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ width int 32 regular  }
	{ height int 32 regular  }
	{ stage0 int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ stage1 int 8 regular {array 1048576 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stage0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stage1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ width sc_in sc_lv 32 signal 0 } 
	{ height sc_in sc_lv 32 signal 1 } 
	{ stage0_address0 sc_out sc_lv 20 signal 2 } 
	{ stage0_ce0 sc_out sc_logic 1 signal 2 } 
	{ stage0_q0 sc_in sc_lv 8 signal 2 } 
	{ stage1_address0 sc_out sc_lv 20 signal 3 } 
	{ stage1_ce0 sc_out sc_logic 1 signal 3 } 
	{ stage1_we0 sc_out sc_logic 1 signal 3 } 
	{ stage1_d0 sc_out sc_lv 8 signal 3 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "stage0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "stage0", "role": "address0" }} , 
 	{ "name": "stage0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stage0", "role": "ce0" }} , 
 	{ "name": "stage0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stage0", "role": "q0" }} , 
 	{ "name": "stage1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "stage1", "role": "address0" }} , 
 	{ "name": "stage1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stage1", "role": "ce0" }} , 
 	{ "name": "stage1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stage1", "role": "we0" }} , 
 	{ "name": "stage1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stage1", "role": "d0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		stage1 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	width { ap_none {  { width in_data 0 32 } } }
	height { ap_none {  { height in_data 0 32 } } }
	stage0 { ap_memory {  { stage0_address0 mem_address 1 20 }  { stage0_ce0 mem_ce 1 1 }  { stage0_q0 mem_dout 0 8 } } }
	stage1 { ap_memory {  { stage1_address0 mem_address 1 20 }  { stage1_ce0 mem_ce 1 1 }  { stage1_we0 mem_we 1 1 }  { stage1_d0 mem_din 1 8 } } }
}
