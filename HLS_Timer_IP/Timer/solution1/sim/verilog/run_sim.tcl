# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2015.3
# Copyright (C) 2015 Xilinx Inc. All rights reserved.
# 
# ==============================================================

set ::env(LD_LIBRARY_PATH) /media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/lnx64/tools/fpo_v7_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/lnx64/tools/opencv:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/lnx64/tools/fft_v9_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/lnx64/tools/fir_v7_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/lnx64/tools/dds_v6_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /usr/lib/x86_64-linux-gnu:$::env(LD_LIBRARY_PATH)
source check_sim.tcl
        file delete -force "end.log"
        cd ../tv/cdatafile
        foreach fl [glob -nocomplain *.dat] {
            file delete -force $fl
        }
        cd ../rtldatafile
        foreach fl [glob -nocomplain *.dat] {
            file delete -force $fl
        }
        cd ../../wrapc_tv
        file delete -force "com_wrapc.tcl"
        file delete -force "com_rtl_ready.tcl"
        file delete -force "end.log"
        cd ../wrapc_pc
        file delete -force "com_wrapc_pc.tcl"
        file delete -force "end.log"
        
### verilog simulation ###
puts "@I \[SIM-323\] Starting verilog simulation..."
puts "@I \[SIM-15\] Starting XSIM ..."
cd ../verilog
set rtl_sim_pid [exec [info nameofexecutable] ./run_rtl_sim.tcl &]
        ### test vector generation ###
        cd ../wrapc_tv
        if {![file exists cosim.tv.exe]} {
            puts "@E \[SIM-320\] Generating test vectors failed. Please re-run cosim."
            [exec kill 0]
            return -code error -errorcode $::errorCode
        }
set wrapc_tv_pid [exec [info nameofexecutable] ../wrapc_tv/run_wrapc_tv.tcl &]
cd ../wrapc_pc
puts "@I \[SIM-316\] Starting C post checking ..."
if {! [file exists cosim.pc.exe] } {
    puts "@E \[SIM-320\] Generating test vectors failed. Please re-run cosim."
    [exec kill 0]
    return -code error -errorcode $::errorCode
}
set wrapc_pc_pid [exec [info nameofexecutable] ../wrapc_pc/run_wrapc_pc.tcl &]
after 1000
update
while { ![file exist ../wrapc_tv/end.log] || ![file exist ./end.log] || ![file exist ../wrapc_pc/end.log] } {
    if { [file exist ../wrapc_tv/end.log] } {
        set cmdret [catch {eval exec "grep \"Failed\" ../wrapc_tv/end.log"} err]
        if {$cmdret == 0} {
            [exec kill 0]
            puts "@E Simulation failed: Wrapc_tv failed."
            return -code error -errorcode $::errorCode
        }
    }
    if { [file exist ./end.log] } {
        set cmdret [catch {eval exec "grep \"Failed\" ./end.log"} err]
        if {$cmdret == 0} {
            [exec kill 0]
            puts "@E Simulation failed: Rtl simulation failed."
            return -code error -errorcode $::errorCode
        }
    }
    after 1000
    update
}
if { [file exist ../wrapc_pc/end.log] } {
    set cmdret [catch {eval exec "grep \"Failed\" ../wrapc_pc/end.log"} err]
    if {$cmdret == 0} {
        [exec kill 0]
        puts "@E Simulation failed: Wrapc_pc failed."
        return -code error -errorcode $::errorCode
    }
}
return 0

