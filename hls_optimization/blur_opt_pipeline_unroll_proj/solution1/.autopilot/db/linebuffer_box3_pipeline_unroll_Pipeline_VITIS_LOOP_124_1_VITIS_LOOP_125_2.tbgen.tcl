set moduleName linebuffer_box3_pipeline_unroll_Pipeline_VITIS_LOOP_124_1_VITIS_LOOP_125_2
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
set cdfgNum 8
set C_modelName {linebuffer_box3_pipeline_unroll_Pipeline_VITIS_LOOP_124_1_VITIS_LOOP_125_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_r { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_1 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 1048576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ window_load_5 int 8 regular  }
	{ window_load_4 int 8 regular  }
	{ window_load_3 int 8 regular  }
	{ window_load_2 int 8 regular  }
	{ window_load_1 int 8 regular  }
	{ window_load int 8 regular  }
	{ empty int 31 regular  }
	{ mul_ln135 int 62 regular  }
	{ input_r int 8 regular {array 1048576 { 1 3 } 1 1 }  }
	{ linebuf_1 int 8 regular {array 1024 { 0 1 } 1 1 }  }
	{ linebuf int 8 regular {array 1024 { 0 1 } 1 1 }  }
	{ output_r int 8 regular {array 1048576 { 0 3 } 0 1 }  }
	{ p_out int 8 regular {pointer 1}  }
	{ p_out1 int 8 regular {pointer 1}  }
	{ p_out2 int 8 regular {pointer 1}  }
	{ p_out3 int 8 regular {pointer 1}  }
	{ p_out4 int 8 regular {pointer 1}  }
	{ sum_out int 8 regular {pointer 1}  }
	{ p_phi_out int 8 regular {pointer 1}  }
	{ p_phi22_out int 8 regular {pointer 1}  }
	{ p_phi23_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "window_load_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_load_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_load_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_load_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln135", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_phi_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_phi22_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_phi23_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_load_5 sc_in sc_lv 8 signal 0 } 
	{ window_load_4 sc_in sc_lv 8 signal 1 } 
	{ window_load_3 sc_in sc_lv 8 signal 2 } 
	{ window_load_2 sc_in sc_lv 8 signal 3 } 
	{ window_load_1 sc_in sc_lv 8 signal 4 } 
	{ window_load sc_in sc_lv 8 signal 5 } 
	{ empty sc_in sc_lv 31 signal 6 } 
	{ mul_ln135 sc_in sc_lv 62 signal 7 } 
	{ input_r_address0 sc_out sc_lv 20 signal 8 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_r_q0 sc_in sc_lv 8 signal 8 } 
	{ linebuf_1_address0 sc_out sc_lv 10 signal 9 } 
	{ linebuf_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ linebuf_1_we0 sc_out sc_logic 1 signal 9 } 
	{ linebuf_1_d0 sc_out sc_lv 8 signal 9 } 
	{ linebuf_1_address1 sc_out sc_lv 10 signal 9 } 
	{ linebuf_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ linebuf_1_q1 sc_in sc_lv 8 signal 9 } 
	{ linebuf_address0 sc_out sc_lv 10 signal 10 } 
	{ linebuf_ce0 sc_out sc_logic 1 signal 10 } 
	{ linebuf_we0 sc_out sc_logic 1 signal 10 } 
	{ linebuf_d0 sc_out sc_lv 8 signal 10 } 
	{ linebuf_address1 sc_out sc_lv 10 signal 10 } 
	{ linebuf_ce1 sc_out sc_logic 1 signal 10 } 
	{ linebuf_q1 sc_in sc_lv 8 signal 10 } 
	{ output_r_address0 sc_out sc_lv 20 signal 11 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_r_we0 sc_out sc_logic 1 signal 11 } 
	{ output_r_d0 sc_out sc_lv 8 signal 11 } 
	{ p_out sc_out sc_lv 8 signal 12 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_out1 sc_out sc_lv 8 signal 13 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_out2 sc_out sc_lv 8 signal 14 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_out3 sc_out sc_lv 8 signal 15 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_out4 sc_out sc_lv 8 signal 16 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ sum_out sc_out sc_lv 8 signal 17 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_phi_out sc_out sc_lv 8 signal 18 } 
	{ p_phi_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_phi22_out sc_out sc_lv 8 signal 19 } 
	{ p_phi22_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_phi23_out sc_out sc_lv 8 signal 20 } 
	{ p_phi23_out_ap_vld sc_out sc_logic 1 outvld 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_load_5", "role": "default" }} , 
 	{ "name": "window_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_load_4", "role": "default" }} , 
 	{ "name": "window_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_load_3", "role": "default" }} , 
 	{ "name": "window_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_load_2", "role": "default" }} , 
 	{ "name": "window_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_load_1", "role": "default" }} , 
 	{ "name": "window_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_load", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "mul_ln135", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln135", "role": "default" }} , 
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
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }} , 
 	{ "name": "p_phi_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_phi_out", "role": "default" }} , 
 	{ "name": "p_phi_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_phi_out", "role": "ap_vld" }} , 
 	{ "name": "p_phi22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_phi22_out", "role": "default" }} , 
 	{ "name": "p_phi22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_phi22_out", "role": "ap_vld" }} , 
 	{ "name": "p_phi23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_phi23_out", "role": "default" }} , 
 	{ "name": "p_phi23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_phi23_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	linebuffer_box3_pipeline_unroll_Pipeline_VITIS_LOOP_124_1_VITIS_LOOP_125_2 {
		window_load_5 {Type I LastRead 0 FirstWrite -1}
		window_load_4 {Type I LastRead 0 FirstWrite -1}
		window_load_3 {Type I LastRead 0 FirstWrite -1}
		window_load_2 {Type I LastRead 0 FirstWrite -1}
		window_load_1 {Type I LastRead 0 FirstWrite -1}
		window_load {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		mul_ln135 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 2 FirstWrite -1}
		linebuf_1 {Type IO LastRead 3 FirstWrite 4}
		linebuf {Type IO LastRead 2 FirstWrite 3}
		output_r {Type O LastRead -1 FirstWrite 8}
		p_out {Type O LastRead -1 FirstWrite 7}
		p_out1 {Type O LastRead -1 FirstWrite 7}
		p_out2 {Type O LastRead -1 FirstWrite 7}
		p_out3 {Type O LastRead -1 FirstWrite 7}
		p_out4 {Type O LastRead -1 FirstWrite 7}
		sum_out {Type O LastRead -1 FirstWrite 7}
		p_phi_out {Type O LastRead -1 FirstWrite 7}
		p_phi22_out {Type O LastRead -1 FirstWrite 7}
		p_phi23_out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	window_load_5 { ap_none {  { window_load_5 in_data 0 8 } } }
	window_load_4 { ap_none {  { window_load_4 in_data 0 8 } } }
	window_load_3 { ap_none {  { window_load_3 in_data 0 8 } } }
	window_load_2 { ap_none {  { window_load_2 in_data 0 8 } } }
	window_load_1 { ap_none {  { window_load_1 in_data 0 8 } } }
	window_load { ap_none {  { window_load in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 31 } } }
	mul_ln135 { ap_none {  { mul_ln135 in_data 0 62 } } }
	input_r { ap_memory {  { input_r_address0 mem_address 1 20 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 8 } } }
	linebuf_1 { ap_memory {  { linebuf_1_address0 mem_address 1 10 }  { linebuf_1_ce0 mem_ce 1 1 }  { linebuf_1_we0 mem_we 1 1 }  { linebuf_1_d0 mem_din 1 8 }  { linebuf_1_address1 MemPortADDR2 1 10 }  { linebuf_1_ce1 MemPortCE2 1 1 }  { linebuf_1_q1 MemPortDOUT2 0 8 } } }
	linebuf { ap_memory {  { linebuf_address0 mem_address 1 10 }  { linebuf_ce0 mem_ce 1 1 }  { linebuf_we0 mem_we 1 1 }  { linebuf_d0 mem_din 1 8 }  { linebuf_address1 MemPortADDR2 1 10 }  { linebuf_ce1 MemPortCE2 1 1 }  { linebuf_q1 MemPortDOUT2 0 8 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 20 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
	p_out { ap_vld {  { p_out out_data 1 8 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 8 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 8 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 8 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 8 }  { p_out4_ap_vld out_vld 1 1 } } }
	sum_out { ap_vld {  { sum_out out_data 1 8 }  { sum_out_ap_vld out_vld 1 1 } } }
	p_phi_out { ap_vld {  { p_phi_out out_data 1 8 }  { p_phi_out_ap_vld out_vld 1 1 } } }
	p_phi22_out { ap_vld {  { p_phi22_out out_data 1 8 }  { p_phi22_out_ap_vld out_vld 1 1 } } }
	p_phi23_out { ap_vld {  { p_phi23_out out_data 1 8 }  { p_phi23_out_ap_vld out_vld 1 1 } } }
}
