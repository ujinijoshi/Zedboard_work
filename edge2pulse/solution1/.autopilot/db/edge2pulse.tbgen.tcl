set C_TypeInfoList {{ 
"edge2pulse" : [[], {"return": [[], {"scalar": "bool"}] }, [{"ExternC" : 0}], [ {"signal": [[], {"scalar": "bool"}] }],[],""]
}}
set moduleName edge2pulse
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName {edge2pulse}
set C_modelType { int 1 }
set C_modelArgList { 
	{ signal_r uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "signal_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "signal","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "return","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 4
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ signal_r sc_in sc_lv 1 signal 0 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "signal_r", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "signal_r", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	signal_r { ap_none {  { signal_r in_data 0 1 } } }
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
