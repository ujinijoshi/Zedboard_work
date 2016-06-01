#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/edge2pulse/solution1/.autopilot/db/a.g.bc ${1+"$@"}
