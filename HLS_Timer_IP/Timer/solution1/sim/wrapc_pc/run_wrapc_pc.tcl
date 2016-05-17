proc sc_sim_check {ret err logfile} {
    set has_error 0
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                puts "@E Simulation failed: Function \'main\' returns nonzero value \'$status\'."
            } else {
                puts "@E Simulation failed."
            }
        } else {
            puts "@E Simulation failed."
        }
        set has_error 1
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            puts "@E Simulation failed."
            set has_error 1
        }
    }
    if {$has_error == 1} {
    set fl_end [open end.log w]
    puts $fl_end "Failed"
    close $fl_end
    } else {
    set fl_end [open end.log w]
    puts $fl_end "Pass"
    close $fl_end
    }
}
set ret [catch {eval exec ./cosim.pc.exe | tee temp0.log >&@ stdout} err]
sc_sim_check $ret $err "temp0.log"
return 0

