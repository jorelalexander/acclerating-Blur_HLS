set moduleName linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set cdfgNum 7
set C_modelName {linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_r { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_1 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ empty int 31 regular  }
	{ mul_ln180 int 62 regular  }
	{ input_r int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ linebuf_1 int 8 regular {array 1024 { 0 1 } 1 1 }  }
	{ linebuf int 8 regular {array 1024 { 0 1 } 1 1 }  }
	{ output_r int 8 regular {array 1048576 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln180", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty sc_in sc_lv 31 signal 0 } 
	{ mul_ln180 sc_in sc_lv 62 signal 1 } 
	{ input_r_address0 sc_out sc_lv 20 signal 2 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_r_q0 sc_in sc_lv 8 signal 2 } 
	{ linebuf_1_address0 sc_out sc_lv 10 signal 3 } 
	{ linebuf_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ linebuf_1_we0 sc_out sc_logic 1 signal 3 } 
	{ linebuf_1_d0 sc_out sc_lv 8 signal 3 } 
	{ linebuf_1_address1 sc_out sc_lv 10 signal 3 } 
	{ linebuf_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ linebuf_1_q1 sc_in sc_lv 8 signal 3 } 
	{ linebuf_address0 sc_out sc_lv 10 signal 4 } 
	{ linebuf_ce0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_we0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_d0 sc_out sc_lv 8 signal 4 } 
	{ linebuf_address1 sc_out sc_lv 10 signal 4 } 
	{ linebuf_ce1 sc_out sc_logic 1 signal 4 } 
	{ linebuf_q1 sc_in sc_lv 8 signal 4 } 
	{ output_r_address0 sc_out sc_lv 20 signal 5 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_r_we0 sc_out sc_logic 1 signal 5 } 
	{ output_r_d0 sc_out sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "mul_ln180", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln180", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "linebuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address0" }} , 
 	{ "name": "linebuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce0" }} , 
 	{ "name": "linebuf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "we0" }} , 
 	{ "name": "linebuf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_1", "role": "d0" }} , 
 	{ "name": "linebuf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address1" }} , 
 	{ "name": "linebuf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce1" }} , 
 	{ "name": "linebuf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q1" }} , 
 	{ "name": "linebuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf", "role": "address0" }} , 
 	{ "name": "linebuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce0" }} , 
 	{ "name": "linebuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "we0" }} , 
 	{ "name": "linebuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf", "role": "d0" }} , 
 	{ "name": "linebuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf", "role": "address1" }} , 
 	{ "name": "linebuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce1" }} , 
 	{ "name": "linebuf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf", "role": "q1" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	linebuffer_box3_pipeline_unroll_partition_Pipeline_VITIS_LOOP_180_1_VITIS_LOOP_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		mul_ln180 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 2 FirstWrite -1}
		linebuf_1 {Type IO LastRead 3 FirstWrite 4}
		linebuf {Type IO LastRead 2 FirstWrite 3}
		output_r {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 31 } } }
	mul_ln180 { ap_none {  { mul_ln180 in_data 0 62 } } }
	input_r { ap_memory {  { input_r_address0 mem_address 1 20 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 8 } } }
	linebuf_1 { ap_memory {  { linebuf_1_address0 mem_address 1 10 }  { linebuf_1_ce0 mem_ce 1 1 }  { linebuf_1_we0 mem_we 1 1 }  { linebuf_1_d0 mem_din 1 8 }  { linebuf_1_address1 MemPortADDR2 1 10 }  { linebuf_1_ce1 MemPortCE2 1 1 }  { linebuf_1_q1 MemPortDOUT2 0 8 } } }
	linebuf { ap_memory {  { linebuf_address0 mem_address 1 10 }  { linebuf_ce0 mem_ce 1 1 }  { linebuf_we0 mem_we 1 1 }  { linebuf_d0 mem_din 1 8 }  { linebuf_address1 MemPortADDR2 1 10 }  { linebuf_ce1 MemPortCE2 1 1 }  { linebuf_q1 MemPortDOUT2 0 8 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 20 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
}
