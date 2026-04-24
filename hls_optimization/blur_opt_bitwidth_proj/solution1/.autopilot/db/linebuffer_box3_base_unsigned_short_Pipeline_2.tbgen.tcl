set moduleName linebuffer_box3_base_unsigned_short_Pipeline_2
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
set C_modelName {linebuffer_box3_base<unsigned short>_Pipeline_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ window_5_out int 8 regular {pointer 1}  }
	{ window_4_out int 8 regular {pointer 1}  }
	{ window_3_out int 8 regular {pointer 1}  }
	{ window_2_out int 8 regular {pointer 1}  }
	{ window_1_out int 8 regular {pointer 1}  }
	{ window_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "window_5_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "window_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "window_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "window_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "window_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "window_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_5_out sc_out sc_lv 8 signal 0 } 
	{ window_5_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ window_4_out sc_out sc_lv 8 signal 1 } 
	{ window_4_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ window_3_out sc_out sc_lv 8 signal 2 } 
	{ window_3_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ window_2_out sc_out sc_lv 8 signal 3 } 
	{ window_2_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ window_1_out sc_out sc_lv 8 signal 4 } 
	{ window_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ window_out sc_out sc_lv 8 signal 5 } 
	{ window_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_5_out", "role": "default" }} , 
 	{ "name": "window_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "window_5_out", "role": "ap_vld" }} , 
 	{ "name": "window_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_4_out", "role": "default" }} , 
 	{ "name": "window_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "window_4_out", "role": "ap_vld" }} , 
 	{ "name": "window_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_3_out", "role": "default" }} , 
 	{ "name": "window_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "window_3_out", "role": "ap_vld" }} , 
 	{ "name": "window_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_2_out", "role": "default" }} , 
 	{ "name": "window_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "window_2_out", "role": "ap_vld" }} , 
 	{ "name": "window_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_1_out", "role": "default" }} , 
 	{ "name": "window_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "window_1_out", "role": "ap_vld" }} , 
 	{ "name": "window_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_out", "role": "default" }} , 
 	{ "name": "window_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "window_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	linebuffer_box3_base_unsigned_short_Pipeline_2 {
		window_5_out {Type O LastRead -1 FirstWrite 0}
		window_4_out {Type O LastRead -1 FirstWrite 0}
		window_3_out {Type O LastRead -1 FirstWrite 0}
		window_2_out {Type O LastRead -1 FirstWrite 0}
		window_1_out {Type O LastRead -1 FirstWrite 0}
		window_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_5_out { ap_vld {  { window_5_out out_data 1 8 }  { window_5_out_ap_vld out_vld 1 1 } } }
	window_4_out { ap_vld {  { window_4_out out_data 1 8 }  { window_4_out_ap_vld out_vld 1 1 } } }
	window_3_out { ap_vld {  { window_3_out out_data 1 8 }  { window_3_out_ap_vld out_vld 1 1 } } }
	window_2_out { ap_vld {  { window_2_out out_data 1 8 }  { window_2_out_ap_vld out_vld 1 1 } } }
	window_1_out { ap_vld {  { window_1_out out_data 1 8 }  { window_1_out_ap_vld out_vld 1 1 } } }
	window_out { ap_vld {  { window_out out_data 1 8 }  { window_out_ap_vld out_vld 1 1 } } }
}
