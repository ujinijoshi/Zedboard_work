
xelab xil_defaultlib.apatb_Timer_top -prj Timer.prj --lib "ieee_proposed=./ieee_proposed" -s Timer -debug wave
xsim --noieeewarnings Timer -tclbatch Timer.tcl

