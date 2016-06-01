set C_TypeInfoList {{ 
"Timer" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"PPS": [[],{ "pointer": "0"}] }, {"pps_en": [[],{ "pointer": "0"}] }, {"num_clks": [["volatile"],"1"] }, {"hop_rate": [["volatile"],"1"] }, {"trigger_out": [[],{ "pointer": "2"}] }, {"pps_edge": [[],{ "pointer": "2"}] }],[],""], 
"2": [ "uint1", {"typedef": [[[], {"scalar": "uint1"}],""]}], 
"1": [ "data_32t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"0": [ "bit", {"typedef": [[["const","volatile"],"3"],""]}], 
"3": [ "uint1", {"typedef": [[[], {"scalar": "uint1"}],""]}]
}}
set moduleName Timer
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {Timer}
set C_modelType { void 0 }
set C_modelArgList { 
	{ PPS int 1 regular {pointer 0 volatile }  }
	{ pps_en int 1 unused {pointer 0}  }
	{ num_clks int 32 regular  }
	{ hop_rate int 32 regular  }
	{ trigger_out int 1 regular {pointer 1 volatile }  }
	{ pps_edge int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "PPS", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "PPS","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pps_en", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "pps_en","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "num_clks", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_clks","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "hop_rate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hop_rate","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "trigger_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "trigger_out","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pps_edge", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "pps_edge","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ PPS sc_in sc_lv 1 signal 0 } 
	{ pps_en sc_in sc_lv 1 signal 1 } 
	{ num_clks sc_in sc_lv 32 signal 2 } 
	{ hop_rate sc_in sc_lv 32 signal 3 } 
	{ trigger_out sc_out sc_lv 1 signal 4 } 
	{ trigger_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ pps_edge sc_out sc_lv 1 signal 5 } 
	{ pps_edge_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "PPS", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "PPS", "role": "default" }} , 
 	{ "name": "pps_en", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pps_en", "role": "default" }} , 
 	{ "name": "num_clks", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_clks", "role": "default" }} , 
 	{ "name": "hop_rate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hop_rate", "role": "default" }} , 
 	{ "name": "trigger_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trigger_out", "role": "default" }} , 
 	{ "name": "trigger_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "trigger_out", "role": "ap_vld" }} , 
 	{ "name": "pps_edge", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pps_edge", "role": "default" }} , 
 	{ "name": "pps_edge_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pps_edge", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	PPS { ap_none {  { PPS in_data 0 1 } } }
	pps_en { ap_none {  { pps_en in_data 0 1 } } }
	num_clks { ap_none {  { num_clks in_data 0 32 } } }
	hop_rate { ap_none {  { hop_rate in_data 0 32 } } }
	trigger_out { ap_vld {  { trigger_out out_data 1 1 }  { trigger_out_ap_vld out_vld 1 1 } } }
	pps_edge { ap_vld {  { pps_edge out_data 1 1 }  { pps_edge_ap_vld out_vld 1 1 } } }
}

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
