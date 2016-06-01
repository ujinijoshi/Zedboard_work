; ModuleID = '/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/edge2pulse/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_V = internal unnamed_addr global i3 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@edge2pulse_str = internal unnamed_addr constant [11 x i8] c"edge2pulse\00"
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define zeroext i1 @edge2pulse(i1 zeroext %signal_r) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %signal_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @edge2pulse_str) nounwind
  %signal_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %signal_r) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %reg_V_load = load i3* @reg_V, align 1
  %tmp = trunc i3 %reg_V_load to i2
  %p_Result_s = call i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2 %tmp, i1 %signal_read)
  store i3 %p_Result_s, i3* @reg_V, align 1
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %reg_V_load, i32 1)
  %tmp_2 = trunc i3 %reg_V_load to i1
  %p_Result_1_not = xor i1 %tmp_2, true
  %tmp_3 = or i1 %tmp_1, %p_Result_1_not
  br i1 %tmp_3, label %_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit._crit_edge, label %0

; <label>:0                                       ; preds = %codeRepl
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit._crit_edge

_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit._crit_edge: ; preds = %0, %codeRepl
  %p_s = phi i1 [ true, %0 ], [ false, %codeRepl ]
  ret i1 %p_s
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_2 = shl i3 1, %empty
  %empty_3 = and i3 %0, %empty_2
  %empty_4 = icmp ne i3 %empty_3, 0
  ret i1 %empty_4
}

define weak i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2, i1) nounwind readnone {
entry:
  %empty = zext i2 %0 to i3
  %empty_5 = zext i1 %1 to i3
  %empty_6 = shl i3 %empty, 1
  %empty_7 = or i3 %empty_6, %empty_5
  ret i3 %empty_7
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 0, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"signal", metadata !11, metadata !"bool", i32 0, i32 0}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"return", metadata !17, metadata !"bool", i32 0, i32 0}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1, i32 0}
