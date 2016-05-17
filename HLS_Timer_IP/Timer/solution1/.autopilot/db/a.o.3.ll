; ModuleID = '/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP/Timer/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trigger_count = internal unnamed_addr global i32 0, align 4 ; [#uses=5 type=i32*]
@ticks = internal unnamed_addr global i32 1, align 4 ; [#uses=4 type=i32*]
@state = internal global i1 false                 ; [#uses=4 type=i1*]
@Timer_str = internal unnamed_addr constant [6 x i8] c"Timer\00" ; [#uses=1 type=[6 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
define weak void @_ssdm_op_Write.ap_auto.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0                            ; [#uses=1 type=i1]
  ret i1 %empty
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=0]
define void @Timer(i1* %PPS, i1* %pps_en, i32 %num_clks, i32 %hop_rate, i1* %trigger_out, i1* %pps_edge) nounwind uwtable {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %PPS) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pps_en) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_clks) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %hop_rate) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %trigger_out) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pps_edge) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @Timer_str) nounwind
  %hop_rate_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %hop_rate) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %hop_rate_read}, i64 0, metadata !28), !dbg !45 ; [debug line = 10:21] [debug variable = hop_rate]
  %num_clks_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %num_clks) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %num_clks_read}, i64 0, metadata !46), !dbg !47 ; [debug line = 9:21] [debug variable = num_clks]
  %num_clks_assign = alloca i32, align 4          ; [#uses=2 type=i32*]
  %hop_rate_assign = alloca i32, align 4          ; [#uses=2 type=i32*]
  %pps_reg = alloca i1, align 1                   ; [#uses=3 type=i1*]
  call void @llvm.dbg.value(metadata !{i1* %PPS}, i64 0, metadata !48), !dbg !49 ; [debug line = 7:8] [debug variable = PPS]
  call void @llvm.dbg.value(metadata !{i1* %pps_en}, i64 0, metadata !50), !dbg !51 ; [debug line = 8:8] [debug variable = pps_en]
  call void @llvm.dbg.value(metadata !{i32 %num_clks}, i64 0, metadata !46), !dbg !47 ; [debug line = 9:21] [debug variable = num_clks]
  store volatile i32 %num_clks_read, i32* %num_clks_assign, align 4
  call void @llvm.dbg.value(metadata !{i32 %hop_rate}, i64 0, metadata !28), !dbg !45 ; [debug line = 10:21] [debug variable = hop_rate]
  store volatile i32 %hop_rate_read, i32* %hop_rate_assign, align 4
  call void @llvm.dbg.value(metadata !{i1* %trigger_out}, i64 0, metadata !52), !dbg !53 ; [debug line = 11:19] [debug variable = trigger_out]
  call void @llvm.dbg.value(metadata !{i1* %pps_edge}, i64 0, metadata !54), !dbg !55 ; [debug line = 12:19] [debug variable = pps_edge]
  store volatile i1 false, i1* %pps_reg, align 1, !dbg !56 ; [debug line = 24:26]
  call void (...)* @_ssdm_op_SpecReset(i1* @state, i32 1, [1 x i8]* @p_str) nounwind, !dbg !58 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @ticks, i32 1, [1 x i8]* @p_str) nounwind, !dbg !59 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @trigger_count, i32 1, [1 x i8]* @p_str) nounwind, !dbg !60 ; [debug line = 32:1]
  %PPS_read = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %PPS) nounwind, !dbg !61 ; [#uses=1 type=i1] [debug line = 34:2]
  store volatile i1 %PPS_read, i1* %pps_reg, align 1, !dbg !61 ; [debug line = 34:2]
  %pps_reg_load1 = load volatile i1* %pps_reg, align 1 ; [#uses=0 type=i1]
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %pps_edge, i1 false) nounwind
  %state_load = load i1* @state, align 1          ; [#uses=1 type=i1]
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %trigger_out, i1 false) nounwind, !dbg !62 ; [debug line = 56:4]
  store i32 0, i32* @ticks, align 4, !dbg !64     ; [debug line = 57:4]
  br i1 %state_load, label %4, label %0, !dbg !65 ; [debug line = 39:1]

; <label>:0                                       ; preds = %._crit_edge
  store i32 0, i32* @trigger_count, align 4, !dbg !66 ; [debug line = 45:4]
  br label %1, !dbg !67                           ; [debug line = 47:4]

; <label>:1                                       ; preds = %2, %0
  %PPS_read_1 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %PPS) nounwind, !dbg !67 ; [#uses=1 type=i1] [debug line = 47:4]
  br i1 %PPS_read_1, label %3, label %2, !dbg !67 ; [debug line = 47:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !68 ; [debug line = 48:5]
  br label %1, !dbg !70                           ; [debug line = 50:4]

; <label>:3                                       ; preds = %1
  store i1 true, i1* @state, align 1, !dbg !71    ; [debug line = 51:4]
  br label %._crit_edge1, !dbg !72                ; [debug line = 52:4]

; <label>:4                                       ; preds = %._crit_edge
  %trigger_count_load = load i32* @trigger_count, align 4, !dbg !73 ; [#uses=2 type=i32] [debug line = 58:4]
  call void @llvm.dbg.value(metadata !{i32* %hop_rate_assign}, i64 0, metadata !28), !dbg !73 ; [debug line = 58:4] [debug variable = hop_rate]
  %hop_rate_assign_load = load volatile i32* %hop_rate_assign, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 58:4]
  %tmp_4 = add i32 %hop_rate_assign_load, -1, !dbg !73 ; [#uses=1 type=i32] [debug line = 58:4]
  %tmp_5 = icmp eq i32 %trigger_count_load, %tmp_4, !dbg !73 ; [#uses=1 type=i1] [debug line = 58:4]
  br i1 %tmp_5, label %5, label %.preheader, !dbg !73 ; [debug line = 58:4]

; <label>:5                                       ; preds = %4
  store i32 0, i32* @trigger_count, align 4, !dbg !74 ; [debug line = 59:5]
  store i1 false, i1* @state, align 1, !dbg !76   ; [debug line = 60:5]
  br label %._crit_edge1, !dbg !77                ; [debug line = 61:5]

.preheader:                                       ; preds = %6, %4
  %ticks_load = load i32* @ticks, align 4, !dbg !78 ; [#uses=2 type=i32] [debug line = 64:5]
  call void @llvm.dbg.value(metadata !{i32* %num_clks_assign}, i64 0, metadata !46), !dbg !78 ; [debug line = 64:5] [debug variable = num_clks]
  %num_clks_assign_load = load volatile i32* %num_clks_assign, align 4, !dbg !78 ; [#uses=1 type=i32] [debug line = 64:5]
  %tmp_7 = icmp eq i32 %ticks_load, %num_clks_assign_load, !dbg !78 ; [#uses=1 type=i1] [debug line = 64:5]
  br i1 %tmp_7, label %7, label %6, !dbg !78      ; [debug line = 64:5]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !79 ; [debug line = 66:6]
  %tmp_9 = add i32 %ticks_load, 1, !dbg !81       ; [#uses=1 type=i32] [debug line = 67:6]
  store i32 %tmp_9, i32* @ticks, align 4, !dbg !81 ; [debug line = 67:6]
  br label %.preheader, !dbg !82                  ; [debug line = 68:5]

; <label>:7                                       ; preds = %.preheader
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %trigger_out, i1 true) nounwind, !dbg !83 ; [debug line = 69:5]
  %tmp_8 = add i32 %trigger_count_load, 1, !dbg !84 ; [#uses=1 type=i32] [debug line = 70:5]
  store i32 %tmp_8, i32* @trigger_count, align 4, !dbg !84 ; [debug line = 70:5]
  br label %._crit_edge1, !dbg !85                ; [debug line = 72:5]

._crit_edge1:                                     ; preds = %7, %5, %3
  ret void, !dbg !86                              ; [debug line = 74:1]
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
!28 = metadata !{i32 786689, metadata !29, metadata !"hop_rate", metadata !30, i32 67108874, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 786478, i32 0, metadata !30, metadata !"Timer", metadata !"Timer", metadata !"", metadata !30, i32 6, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i1*, i32, i32, i1*, i1*)* @Timer, null, null, metadata !43, i32 15} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786473, metadata !"Timer.c", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !33, metadata !39, metadata !39, metadata !42, metadata !42}
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 786454, null, metadata !"bit", metadata !30, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ]
!36 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_volatile_type ]
!37 = metadata !{i32 786454, null, metadata !"uint1", metadata !30, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ]
!38 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_volatile_type ]
!40 = metadata !{i32 786454, null, metadata !"data_32t", metadata !30, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!45 = metadata !{i32 10, i32 21, metadata !29, null}
!46 = metadata !{i32 786689, metadata !29, metadata !"num_clks", metadata !30, i32 50331657, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 9, i32 21, metadata !29, null}
!48 = metadata !{i32 786689, metadata !29, metadata !"PPS", metadata !30, i32 16777223, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 7, i32 8, metadata !29, null}
!50 = metadata !{i32 786689, metadata !29, metadata !"pps_en", metadata !30, i32 33554440, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 8, i32 8, metadata !29, null}
!52 = metadata !{i32 786689, metadata !29, metadata !"trigger_out", metadata !30, i32 83886091, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 11, i32 19, metadata !29, null}
!54 = metadata !{i32 786689, metadata !29, metadata !"pps_edge", metadata !30, i32 100663308, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 12, i32 19, metadata !29, null}
!56 = metadata !{i32 24, i32 26, metadata !57, null}
!57 = metadata !{i32 786443, metadata !29, i32 15, i32 1, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 29, i32 1, metadata !57, null}
!59 = metadata !{i32 30, i32 1, metadata !57, null}
!60 = metadata !{i32 32, i32 1, metadata !57, null}
!61 = metadata !{i32 34, i32 2, metadata !57, null}
!62 = metadata !{i32 56, i32 4, metadata !63, null}
!63 = metadata !{i32 786443, metadata !57, i32 40, i32 7, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 57, i32 4, metadata !63, null}
!65 = metadata !{i32 39, i32 1, metadata !57, null}
!66 = metadata !{i32 45, i32 4, metadata !63, null}
!67 = metadata !{i32 47, i32 4, metadata !63, null}
!68 = metadata !{i32 48, i32 5, metadata !69, null}
!69 = metadata !{i32 786443, metadata !63, i32 47, i32 21, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 50, i32 4, metadata !69, null}
!71 = metadata !{i32 51, i32 4, metadata !63, null}
!72 = metadata !{i32 52, i32 4, metadata !63, null}
!73 = metadata !{i32 58, i32 4, metadata !63, null}
!74 = metadata !{i32 59, i32 5, metadata !75, null}
!75 = metadata !{i32 786443, metadata !63, i32 58, i32 35, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 60, i32 5, metadata !75, null}
!77 = metadata !{i32 61, i32 5, metadata !75, null}
!78 = metadata !{i32 64, i32 5, metadata !63, null}
!79 = metadata !{i32 66, i32 6, metadata !80, null}
!80 = metadata !{i32 786443, metadata !63, i32 65, i32 5, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 67, i32 6, metadata !80, null}
!82 = metadata !{i32 68, i32 5, metadata !80, null}
!83 = metadata !{i32 69, i32 5, metadata !63, null}
!84 = metadata !{i32 70, i32 5, metadata !63, null}
!85 = metadata !{i32 72, i32 5, metadata !63, null}
!86 = metadata !{i32 74, i32 1, metadata !57, null}
