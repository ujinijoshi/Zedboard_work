; ModuleID = '/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP/Timer/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trigger_count = internal unnamed_addr global i32 0, align 4
@ticks = internal unnamed_addr global i32 1, align 4
@state = internal global i1 false
@Timer_str = internal unnamed_addr constant [6 x i8] c"Timer\00"
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define void @Timer(i1* %PPS, i1* %pps_en, i32 %num_clks, i32 %hop_rate, i1* %trigger_out, i1* %pps_edge) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %PPS) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pps_en) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_clks) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %hop_rate) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %trigger_out) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pps_edge) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @Timer_str) nounwind
  %hop_rate_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %hop_rate) nounwind
  %num_clks_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %num_clks) nounwind
  %num_clks_assign = alloca i32, align 4
  %hop_rate_assign = alloca i32, align 4
  store volatile i32 %num_clks_read, i32* %num_clks_assign, align 4
  store volatile i32 %hop_rate_read, i32* %hop_rate_assign, align 4
  call void (...)* @_ssdm_op_SpecReset(i1* @state, i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @ticks, i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @trigger_count, i32 1, [1 x i8]* @p_str) nounwind
  %PPS_read = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %PPS) nounwind
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %pps_edge, i1 %PPS_read) nounwind
  %state_load = load i1* @state, align 1
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %trigger_out, i1 false) nounwind
  store i32 0, i32* @ticks, align 4
  br i1 %state_load, label %5, label %1

; <label>:1                                       ; preds = %0
  store i32 0, i32* @trigger_count, align 4
  br label %2

; <label>:2                                       ; preds = %3, %1
  %PPS_read_1 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %PPS) nounwind
  br i1 %PPS_read_1, label %4, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %2

; <label>:4                                       ; preds = %2
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %trigger_out, i1 true) nounwind
  store i1 true, i1* @state, align 1
  br label %._crit_edge

; <label>:5                                       ; preds = %0
  %trigger_count_load = load i32* @trigger_count, align 4
  %hop_rate_assign_load = load volatile i32* %hop_rate_assign, align 4
  %tmp_2 = add i32 %hop_rate_assign_load, -1
  %tmp_3 = icmp eq i32 %trigger_count_load, %tmp_2
  br i1 %tmp_3, label %6, label %.preheader

; <label>:6                                       ; preds = %5
  store i32 0, i32* @trigger_count, align 4
  store i1 false, i1* @state, align 1
  br label %._crit_edge

.preheader:                                       ; preds = %5, %7
  %ticks_load = load i32* @ticks, align 4
  %num_clks_assign_load = load volatile i32* %num_clks_assign, align 4
  %tmp_5 = icmp eq i32 %ticks_load, %num_clks_assign_load
  br i1 %tmp_5, label %8, label %7

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_7 = add i32 %ticks_load, 1
  store i32 %tmp_7, i32* @ticks, align 4
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %trigger_out, i1 true) nounwind
  %tmp_6 = add i32 %trigger_count_load, 1
  store i32 %tmp_6, i32* @trigger_count, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %8, %6, %4
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 0, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"PPS", metadata !4, metadata !"uint1", i32 0, i32 0}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 0, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"pps_en", metadata !4, metadata !"uint1", i32 0, i32 0}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"num_clks", metadata !14, metadata !"unsigned int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, i32 0}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"hop_rate", metadata !14, metadata !"unsigned int", i32 0, i32 31}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 0, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"trigger_out", metadata !4, metadata !"uint1", i32 0, i32 0}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"pps_edge", metadata !4, metadata !"uint1", i32 0, i32 0}
