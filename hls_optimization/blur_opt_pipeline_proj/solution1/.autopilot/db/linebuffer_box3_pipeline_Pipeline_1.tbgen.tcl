set moduleName linebuffer_box3_pipeline_Pipeline_1
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
set C_modelName {linebuffer_box3_pipeline_Pipeline_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict linebuf_1 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict linebuf { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ linebuf_1 int 8 regular {array 1024 { 0 3 } 0 1 }  }
	{ linebuf int 8 regular {array 1024 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "linebuf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "linebuf", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ linebuf_1_address0 sc_out sc_lv 10 signal 0 } 
	{ linebuf_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ linebuf_1_we0 sc_out sc_logic 1 signal 0 } 
	{ linebuf_1_d0 sc_out sc_lv 8 signal 0 } 
	{ linebuf_address0 sc_out sc_lv 10 signal 1 } 
	{ linebuf_ce0 sc_out sc_logic 1 signal 1 } 
	{ linebuf_we0 sc_out sc_logic 1 signal 1 } 
	{ linebuf_d0 sc_out sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "linebuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address0" }} , 
 	{ "name": "linebuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce0" }} , 
 	{ "name": "linebuf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "we0" }} , 
 	{ "name": "linebuf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_1", "role": "d0" }} , 
 	{ "name": "linebuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "linebuf", "role": "address0" }} , 
 	{ "name": "linebuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce0" }} , 
 	{ "name": "linebuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "we0" }} , 
 	{ "name": "linebuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	linebuffer_box3_pipeline_Pipeline_1 {
		linebuf_1 {Type O LastRead -1 FirstWrite 0}
		linebuf {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2050", "Max" : "2050"}
	, {"Name" : "Interval", "Min" : "2049", "Max" : "2049"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	linebuf_1 { ap_memory {  { linebuf_1_address0 mem_address 1 10 }  { linebuf_1_ce0 mem_ce 1 1 }  { linebuf_1_we0 mem_we 1 1 }  { linebuf_1_d0 mem_din 1 8 } } }
	linebuf { ap_memory {  { linebuf_address0 mem_address 1 10 }  { linebuf_ce0 mem_ce 1 1 }  { linebuf_we0 mem_we 1 1 }  { linebuf_d0 mem_din 1 8 } } }
}
