; ModuleID = '/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP/Timer/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trigger_count = internal unnamed_addr global i32 0, align 4 ; [#uses=5 type=i32*]
@ticks = internal unnamed_addr global i32 1, align 4 ; [#uses=5 type=i32*]
@state = internal global i1 false                 ; [#uses=4 type=i1*]
@Timer.str = internal unnamed_addr constant [6 x i8] c"Timer\00" ; [#uses=1 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_op_Wait(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecReset(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
define void @Timer(i1* %PPS, i1* %pps_en, i32 %num_clks, i32 %hop_rate, i1* %trigger_out, i1* %pps_edge) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %PPS) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pps_en) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %num_clks) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %hop_rate) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %trigger_out) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pps_edge) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @Timer.str) nounwind
  %num_clks.assign = alloca i32, align 4          ; [#uses=2 type=i32*]
  %hop_rate.assign = alloca i32, align 4          ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{i1* %PPS}, i64 0, metadata !62), !dbg !63 ; [debug line = 7:8] [debug variable = PPS]
  call void @llvm.dbg.value(metadata !{i1* %pps_en}, i64 0, metadata !64), !dbg !65 ; [debug line = 8:8] [debug variable = pps_en]
  call void @llvm.dbg.value(metadata !{i32 %num_clks}, i64 0, metadata !66), !dbg !67 ; [debug line = 9:21] [debug variable = num_clks]
  store volatile i32 %num_clks, i32* %num_clks.assign, align 4
  call void @llvm.dbg.value(metadata !{i32 %hop_rate}, i64 0, metadata !68), !dbg !69 ; [debug line = 10:21] [debug variable = hop_rate]
  store volatile i32 %hop_rate, i32* %hop_rate.assign, align 4
  call void @llvm.dbg.value(metadata !{i1* %trigger_out}, i64 0, metadata !70), !dbg !71 ; [debug line = 11:19] [debug variable = trigger_out]
  call void @llvm.dbg.value(metadata !{i1* %pps_edge}, i64 0, metadata !72), !dbg !73 ; [debug line = 12:19] [debug variable = pps_edge]
  call void (...)* @_ssdm_op_SpecReset(i1* @state, i32 1, [1 x i8]* @.str) nounwind, !dbg !74 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @ticks, i32 1, [1 x i8]* @.str) nounwind, !dbg !76 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @trigger_count, i32 1, [1 x i8]* @.str) nounwind, !dbg !77 ; [debug line = 32:1]
  %PPS.load = load volatile i1* %PPS, align 1, !dbg !78 ; [#uses=1 type=i1] [debug line = 35:2]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !79 ; [debug line = 36:2]
  store volatile i1 %PPS.load, i1* %pps_edge, align 1
  %state.load = load i1* @state, align 1          ; [#uses=1 type=i1]
  switch i1 %state.load, label %._crit_edge [
    i1 false, label %1
    i1 true, label %5
  ], !dbg !80                                     ; [debug line = 42:1]

; <label>:1                                       ; preds = %0
  store volatile i1 false, i1* %trigger_out, align 1, !dbg !81 ; [debug line = 46:4]
  store i32 0, i32* @ticks, align 4, !dbg !83     ; [debug line = 47:4]
  store i32 0, i32* @trigger_count, align 4, !dbg !84 ; [debug line = 48:4]
  br label %2, !dbg !85                           ; [debug line = 50:4]

; <label>:2                                       ; preds = %3, %1
  %PPS.load.1 = load volatile i1* %PPS, align 1, !dbg !85 ; [#uses=1 type=i1] [debug line = 50:4]
  br i1 %PPS.load.1, label %4, label %3, !dbg !85 ; [debug line = 50:4]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !86 ; [debug line = 51:5]
  br label %2, !dbg !88                           ; [debug line = 53:4]

; <label>:4                                       ; preds = %2
  store volatile i1 true, i1* %trigger_out, align 1, !dbg !89 ; [debug line = 54:4]
  store i1 true, i1* @state, align 1, !dbg !90    ; [debug line = 55:4]
  br label %._crit_edge, !dbg !91                 ; [debug line = 56:4]

; <label>:5                                       ; preds = %0
  store volatile i1 false, i1* %trigger_out, align 1, !dbg !92 ; [debug line = 60:4]
  store i32 0, i32* @ticks, align 4, !dbg !93     ; [debug line = 61:4]
  %trigger_count.load = load i32* @trigger_count, align 4, !dbg !94 ; [#uses=2 type=i32] [debug line = 62:4]
  call void @llvm.dbg.value(metadata !{i32* %hop_rate.assign}, i64 0, metadata !68), !dbg !94 ; [debug line = 62:4] [debug variable = hop_rate]
  %hop_rate.assign.load = load volatile i32* %hop_rate.assign, align 4, !dbg !94 ; [#uses=1 type=i32] [debug line = 62:4]
  %tmp.2 = add i32 %hop_rate.assign.load, -1, !dbg !94 ; [#uses=1 type=i32] [debug line = 62:4]
  %tmp.3 = icmp eq i32 %trigger_count.load, %tmp.2, !dbg !94 ; [#uses=1 type=i1] [debug line = 62:4]
  br i1 %tmp.3, label %6, label %.preheader, !dbg !94 ; [debug line = 62:4]

; <label>:6                                       ; preds = %5
  store i32 0, i32* @trigger_count, align 4, !dbg !95 ; [debug line = 63:5]
  store i1 false, i1* @state, align 1, !dbg !97   ; [debug line = 64:5]
  br label %._crit_edge, !dbg !98                 ; [debug line = 65:5]

.preheader:                                       ; preds = %7, %5
  %ticks.load = load i32* @ticks, align 4, !dbg !99 ; [#uses=2 type=i32] [debug line = 68:5]
  call void @llvm.dbg.value(metadata !{i32* %num_clks.assign}, i64 0, metadata !66), !dbg !99 ; [debug line = 68:5] [debug variable = num_clks]
  %num_clks.assign.load = load volatile i32* %num_clks.assign, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 68:5]
  %tmp.5 = icmp eq i32 %ticks.load, %num_clks.assign.load, !dbg !99 ; [#uses=1 type=i1] [debug line = 68:5]
  br i1 %tmp.5, label %8, label %7, !dbg !99      ; [debug line = 68:5]

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !100 ; [debug line = 70:6]
  %tmp.7 = add i32 %ticks.load, 1, !dbg !102      ; [#uses=1 type=i32] [debug line = 71:6]
  store i32 %tmp.7, i32* @ticks, align 4, !dbg !102 ; [debug line = 71:6]
  br label %.preheader, !dbg !103                 ; [debug line = 72:5]

; <label>:8                                       ; preds = %.preheader
  store volatile i1 true, i1* %trigger_out, align 1, !dbg !104 ; [debug line = 73:5]
  %tmp.6 = add i32 %trigger_count.load, 1, !dbg !105 ; [#uses=1 type=i32] [debug line = 74:5]
  store i32 %tmp.6, i32* @trigger_count, align 4, !dbg !105 ; [debug line = 74:5]
  br label %._crit_edge, !dbg !106                ; [debug line = 76:5]

._crit_edge:                                      ; preds = %8, %6, %4, %0
  ret void, !dbg !107                             ; [debug line = 78:1]
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP/Timer/solution1/.autopilot/db/Timer.pragma.2.c", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !7, metadata !23, metadata !24, metadata !25, metadata !26, metadata !29, metadata !30, metadata !31}
!3 = metadata !{i32 786484, i32 0, null, metadata !"state", metadata !"state", metadata !"state", metadata !4, i32 22, metadata !5, i32 1, i32 1, i1* @state} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786473, metadata !"Timer.c", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786454, null, metadata !"byte_t", metadata !4, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 786484, i32 0, metadata !8, metadata !"ticks", metadata !"ticks", metadata !"", metadata !4, i32 20, metadata !18, i32 1, i32 1, i32* @ticks} ; [ DW_TAG_variable ]
!8 = metadata !{i32 786478, i32 0, metadata !4, metadata !"Timer", metadata !"Timer", metadata !"", metadata !4, i32 6, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i1*, i32, i32, i1*, i1*)* @Timer, null, null, metadata !21, i32 15} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{null, metadata !11, metadata !11, metadata !17, metadata !17, metadata !20, metadata !20}
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"bit", metadata !4, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!14 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_volatile_type ]
!15 = metadata !{i32 786454, null, metadata !"uint1", metadata !4, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_volatile_type ]
!18 = metadata !{i32 786454, null, metadata !"data_32t", metadata !4, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786484, i32 0, metadata !8, metadata !"trigger_count", metadata !"trigger_count", metadata !"", metadata !4, i32 21, metadata !18, i32 1, i32 1, i32* @trigger_count} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, metadata !8, metadata !"InPulseQ", metadata !"InPulseQ", metadata !"", metadata !4, i32 23, metadata !15, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, metadata !8, metadata !"InPulseQQ", metadata !"InPulseQQ", metadata !"", metadata !4, i32 24, metadata !15, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !27, i32 320, metadata !28, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !27, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !27, i32 321, metadata !28, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !27, i32 322, metadata !28, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !32, i32 26, metadata !33, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"PPS", metadata !38, metadata !"uint1", i32 0, i32 0}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"pps_en", metadata !38, metadata !"uint1", i32 0, i32 0}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"num_clks", metadata !48, metadata !"unsigned int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 0, i32 0}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"hop_rate", metadata !48, metadata !"unsigned int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 0, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"trigger_out", metadata !38, metadata !"uint1", i32 0, i32 0}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 0, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"pps_edge", metadata !38, metadata !"uint1", i32 0, i32 0}
!62 = metadata !{i32 786689, metadata !8, metadata !"PPS", metadata !4, i32 16777223, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 7, i32 8, metadata !8, null}
!64 = metadata !{i32 786689, metadata !8, metadata !"pps_en", metadata !4, i32 33554440, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 8, i32 8, metadata !8, null}
!66 = metadata !{i32 786689, metadata !8, metadata !"num_clks", metadata !4, i32 50331657, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 9, i32 21, metadata !8, null}
!68 = metadata !{i32 786689, metadata !8, metadata !"hop_rate", metadata !4, i32 67108874, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 10, i32 21, metadata !8, null}
!70 = metadata !{i32 786689, metadata !8, metadata !"trigger_out", metadata !4, i32 83886091, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 11, i32 19, metadata !8, null}
!72 = metadata !{i32 786689, metadata !8, metadata !"pps_edge", metadata !4, i32 100663308, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 12, i32 19, metadata !8, null}
!74 = metadata !{i32 29, i32 1, metadata !75, null}
!75 = metadata !{i32 786443, metadata !8, i32 15, i32 1, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 30, i32 1, metadata !75, null}
!77 = metadata !{i32 32, i32 1, metadata !75, null}
!78 = metadata !{i32 35, i32 2, metadata !75, null}
!79 = metadata !{i32 36, i32 2, metadata !75, null}
!80 = metadata !{i32 42, i32 1, metadata !75, null}
!81 = metadata !{i32 46, i32 4, metadata !82, null}
!82 = metadata !{i32 786443, metadata !75, i32 43, i32 7, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 47, i32 4, metadata !82, null}
!84 = metadata !{i32 48, i32 4, metadata !82, null}
!85 = metadata !{i32 50, i32 4, metadata !82, null}
!86 = metadata !{i32 51, i32 5, metadata !87, null}
!87 = metadata !{i32 786443, metadata !82, i32 50, i32 21, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 53, i32 4, metadata !87, null}
!89 = metadata !{i32 54, i32 4, metadata !82, null}
!90 = metadata !{i32 55, i32 4, metadata !82, null}
!91 = metadata !{i32 56, i32 4, metadata !82, null}
!92 = metadata !{i32 60, i32 4, metadata !82, null}
!93 = metadata !{i32 61, i32 4, metadata !82, null}
!94 = metadata !{i32 62, i32 4, metadata !82, null}
!95 = metadata !{i32 63, i32 5, metadata !96, null}
!96 = metadata !{i32 786443, metadata !82, i32 62, i32 35, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 64, i32 5, metadata !96, null}
!98 = metadata !{i32 65, i32 5, metadata !96, null}
!99 = metadata !{i32 68, i32 5, metadata !82, null}
!100 = metadata !{i32 70, i32 6, metadata !101, null}
!101 = metadata !{i32 786443, metadata !82, i32 69, i32 5, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 71, i32 6, metadata !101, null}
!103 = metadata !{i32 72, i32 5, metadata !101, null}
!104 = metadata !{i32 73, i32 5, metadata !82, null}
!105 = metadata !{i32 74, i32 5, metadata !82, null}
!106 = metadata !{i32 76, i32 5, metadata !82, null}
!107 = metadata !{i32 78, i32 1, metadata !75, null}
