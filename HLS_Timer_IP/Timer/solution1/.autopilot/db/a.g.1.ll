; ModuleID = '/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP/Timer/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trigger_count = internal unnamed_addr global i32 0, align 4 ; [#uses=6 type=i32*]
@ticks = internal unnamed_addr global i32 1, align 4 ; [#uses=6 type=i32*]
@state = internal unnamed_addr global i8 0, align 1 ; [#uses=5 type=i8*]
@Timer.str = internal unnamed_addr constant [6 x i8] c"Timer\00" ; [#uses=1 type=[6 x i8]*]
@InPulseQ = internal unnamed_addr global i1 false, align 1 ; [#uses=0 type=i1*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_op_Wait(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecReset(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=0]
define void @Timer(i1* %PPS, i1* %pps_en, i32 %num_clks, i32 %hop_rate, i1* %trigger_out, i1* %pps_edge) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @Timer.str) nounwind
  %num_clks.assign = alloca i32, align 4          ; [#uses=2 type=i32*]
  %hop_rate.assign = alloca i32, align 4          ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{i1* %PPS}, i64 0, metadata !38), !dbg !39 ; [debug line = 7:8] [debug variable = PPS]
  call void @llvm.dbg.value(metadata !{i1* %pps_en}, i64 0, metadata !40), !dbg !41 ; [debug line = 8:8] [debug variable = pps_en]
  call void @llvm.dbg.value(metadata !{i32 %num_clks}, i64 0, metadata !42), !dbg !43 ; [debug line = 9:21] [debug variable = num_clks]
  store volatile i32 %num_clks, i32* %num_clks.assign, align 4
  call void @llvm.dbg.value(metadata !{i32 %hop_rate}, i64 0, metadata !44), !dbg !45 ; [debug line = 10:21] [debug variable = hop_rate]
  store volatile i32 %hop_rate, i32* %hop_rate.assign, align 4
  call void @llvm.dbg.value(metadata !{i1* %trigger_out}, i64 0, metadata !46), !dbg !47 ; [debug line = 11:19] [debug variable = trigger_out]
  call void @llvm.dbg.value(metadata !{i1* %pps_edge}, i64 0, metadata !48), !dbg !49 ; [debug line = 12:19] [debug variable = pps_edge]
  %state.load = load i8* @state, align 1, !dbg !50 ; [#uses=1 type=i8] [debug line = 29:1]
  %tmp = zext i8 %state.load to i32, !dbg !50     ; [#uses=1 type=i32] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %tmp, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !50 ; [debug line = 29:1]
  %ticks.load = load i32* @ticks, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %ticks.load, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !52 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecReset(i1* %trigger_out, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !53 ; [debug line = 31:1]
  %trigger_count.load = load i32* @trigger_count, align 4, !dbg !54 ; [#uses=1 type=i32] [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %trigger_count.load, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 32:1]
  %PPS.load = load volatile i1* %PPS, align 1, !dbg !55 ; [#uses=1 type=i1] [debug line = 35:2]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !56 ; [debug line = 36:2]
  store volatile i1 %PPS.load, i1* %pps_edge, align 1
  %state.load.1 = load i8* @state, align 1, !dbg !57 ; [#uses=1 type=i8] [debug line = 42:1]
  %tmp.1 = zext i8 %state.load.1 to i32, !dbg !57 ; [#uses=1 type=i32] [debug line = 42:1]
  switch i32 %tmp.1, label %._crit_edge [
    i32 0, label %1
    i32 1, label %5
  ], !dbg !57                                     ; [debug line = 42:1]

; <label>:1                                       ; preds = %0
  store volatile i1 false, i1* %trigger_out, align 1, !dbg !58 ; [debug line = 46:4]
  store i32 0, i32* @ticks, align 4, !dbg !60     ; [debug line = 47:4]
  store i32 0, i32* @trigger_count, align 4, !dbg !61 ; [debug line = 48:4]
  br label %2, !dbg !62                           ; [debug line = 50:4]

; <label>:2                                       ; preds = %3, %1
  %PPS.load.1 = load volatile i1* %PPS, align 1, !dbg !62 ; [#uses=1 type=i1] [debug line = 50:4]
  br i1 %PPS.load.1, label %4, label %3, !dbg !62 ; [debug line = 50:4]

; <label>:3                                       ; preds = %2
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !63 ; [#uses=1 type=i32] [debug line = 50:22]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !65 ; [debug line = 51:5]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !66 ; [#uses=0 type=i32] [debug line = 53:4]
  br label %2, !dbg !66                           ; [debug line = 53:4]

; <label>:4                                       ; preds = %2
  store volatile i1 true, i1* %trigger_out, align 1, !dbg !67 ; [debug line = 54:4]
  %state.load.2 = load i8* @state, align 1, !dbg !68 ; [#uses=1 type=i8] [debug line = 55:4]
  %tmp.4 = add i8 %state.load.2, 1, !dbg !68      ; [#uses=1 type=i8] [debug line = 55:4]
  store i8 %tmp.4, i8* @state, align 1, !dbg !68  ; [debug line = 55:4]
  br label %._crit_edge, !dbg !69                 ; [debug line = 56:4]

; <label>:5                                       ; preds = %0
  store volatile i1 false, i1* %trigger_out, align 1, !dbg !70 ; [debug line = 60:4]
  store i32 0, i32* @ticks, align 4, !dbg !71     ; [debug line = 61:4]
  %trigger_count.load.1 = load i32* @trigger_count, align 4, !dbg !72 ; [#uses=1 type=i32] [debug line = 62:4]
  call void @llvm.dbg.value(metadata !{i32* %hop_rate.assign}, i64 0, metadata !44), !dbg !72 ; [debug line = 62:4] [debug variable = hop_rate]
  %hop_rate.assign.load = load volatile i32* %hop_rate.assign, align 4, !dbg !72 ; [#uses=1 type=i32] [debug line = 62:4]
  %tmp.2 = add i32 %hop_rate.assign.load, -1, !dbg !72 ; [#uses=1 type=i32] [debug line = 62:4]
  %tmp.3 = icmp eq i32 %trigger_count.load.1, %tmp.2, !dbg !72 ; [#uses=1 type=i1] [debug line = 62:4]
  br i1 %tmp.3, label %6, label %.preheader.preheader, !dbg !72 ; [debug line = 62:4]

.preheader.preheader:                             ; preds = %5
  br label %.preheader, !dbg !73                  ; [debug line = 68:5]

; <label>:6                                       ; preds = %5
  store i32 0, i32* @trigger_count, align 4, !dbg !74 ; [debug line = 63:5]
  store i8 0, i8* @state, align 1, !dbg !76       ; [debug line = 64:5]
  br label %._crit_edge, !dbg !77                 ; [debug line = 65:5]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %ticks.load.1 = load i32* @ticks, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 68:5]
  call void @llvm.dbg.value(metadata !{i32* %num_clks.assign}, i64 0, metadata !42), !dbg !73 ; [debug line = 68:5] [debug variable = num_clks]
  %num_clks.assign.load = load volatile i32* %num_clks.assign, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 68:5]
  %tmp.5 = icmp eq i32 %ticks.load.1, %num_clks.assign.load, !dbg !73 ; [#uses=1 type=i1] [debug line = 68:5]
  br i1 %tmp.5, label %8, label %7, !dbg !73      ; [debug line = 68:5]

; <label>:7                                       ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 69:6]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !80 ; [debug line = 70:6]
  %ticks.load.2 = load i32* @ticks, align 4, !dbg !81 ; [#uses=1 type=i32] [debug line = 71:6]
  %tmp.7 = add i32 %ticks.load.2, 1, !dbg !81     ; [#uses=1 type=i32] [debug line = 71:6]
  store i32 %tmp.7, i32* @ticks, align 4, !dbg !81 ; [debug line = 71:6]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 72:5]
  br label %.preheader, !dbg !82                  ; [debug line = 72:5]

; <label>:8                                       ; preds = %.preheader
  store volatile i1 true, i1* %trigger_out, align 1, !dbg !83 ; [debug line = 73:5]
  %trigger_count.load.2 = load i32* @trigger_count, align 4, !dbg !84 ; [#uses=1 type=i32] [debug line = 74:5]
  %tmp.6 = add i32 %trigger_count.load.2, 1, !dbg !84 ; [#uses=1 type=i32] [debug line = 74:5]
  store i32 %tmp.6, i32* @trigger_count, align 4, !dbg !84 ; [debug line = 74:5]
  br label %._crit_edge, !dbg !85                 ; [debug line = 76:5]

._crit_edge:                                      ; preds = %8, %6, %4, %0
  ret void, !dbg !86                              ; [debug line = 78:1]
}

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP/Timer/solution1/.autopilot/db/Timer.pragma.2.c", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !21} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Timer", metadata !"Timer", metadata !"", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i1*, i32, i32, i1*, i1*)* @Timer, null, null, metadata !19, i32 15} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"Timer.c", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !15, metadata !15, metadata !18, metadata !18}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"bit", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_volatile_type ]
!13 = metadata !{i32 786454, null, metadata !"uint1", metadata !6, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!14 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_volatile_type ]
!16 = metadata !{i32 786454, null, metadata !"data_32t", metadata !6, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !28, metadata !29, metadata !30, metadata !33, metadata !34, metadata !35}
!23 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ticks", metadata !"ticks", metadata !"", metadata !6, i32 20, metadata !16, i32 1, i32 1, i32* @ticks} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, metadata !5, metadata !"trigger_count", metadata !"trigger_count", metadata !"", metadata !6, i32 21, metadata !16, i32 1, i32 1, i32* @trigger_count} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, metadata !5, metadata !"state", metadata !"state", metadata !"", metadata !6, i32 22, metadata !26, i32 1, i32 1, i8* @state} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786454, null, metadata !"byte_t", metadata !6, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786484, i32 0, metadata !5, metadata !"InPulseQ", metadata !"InPulseQ", metadata !"", metadata !6, i32 23, metadata !13, i32 1, i32 1, i1* @InPulseQ} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, metadata !5, metadata !"InPulseQQ", metadata !"InPulseQQ", metadata !"", metadata !6, i32 24, metadata !13, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !31, i32 320, metadata !32, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !31, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !31, i32 321, metadata !32, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !31, i32 322, metadata !32, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !36, i32 26, metadata !37, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/HLS_Timer_IP", null} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786689, metadata !5, metadata !"PPS", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 7, i32 8, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"pps_en", metadata !6, i32 33554440, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 8, i32 8, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"num_clks", metadata !6, i32 50331657, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 9, i32 21, metadata !5, null}
!44 = metadata !{i32 786689, metadata !5, metadata !"hop_rate", metadata !6, i32 67108874, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 10, i32 21, metadata !5, null}
!46 = metadata !{i32 786689, metadata !5, metadata !"trigger_out", metadata !6, i32 83886091, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 11, i32 19, metadata !5, null}
!48 = metadata !{i32 786689, metadata !5, metadata !"pps_edge", metadata !6, i32 100663308, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 12, i32 19, metadata !5, null}
!50 = metadata !{i32 29, i32 1, metadata !51, null}
!51 = metadata !{i32 786443, metadata !5, i32 15, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 30, i32 1, metadata !51, null}
!53 = metadata !{i32 31, i32 1, metadata !51, null}
!54 = metadata !{i32 32, i32 1, metadata !51, null}
!55 = metadata !{i32 35, i32 2, metadata !51, null}
!56 = metadata !{i32 36, i32 2, metadata !51, null}
!57 = metadata !{i32 42, i32 1, metadata !51, null}
!58 = metadata !{i32 46, i32 4, metadata !59, null}
!59 = metadata !{i32 786443, metadata !51, i32 43, i32 7, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 47, i32 4, metadata !59, null}
!61 = metadata !{i32 48, i32 4, metadata !59, null}
!62 = metadata !{i32 50, i32 4, metadata !59, null}
!63 = metadata !{i32 50, i32 22, metadata !64, null}
!64 = metadata !{i32 786443, metadata !59, i32 50, i32 21, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 51, i32 5, metadata !64, null}
!66 = metadata !{i32 53, i32 4, metadata !64, null}
!67 = metadata !{i32 54, i32 4, metadata !59, null}
!68 = metadata !{i32 55, i32 4, metadata !59, null}
!69 = metadata !{i32 56, i32 4, metadata !59, null}
!70 = metadata !{i32 60, i32 4, metadata !59, null}
!71 = metadata !{i32 61, i32 4, metadata !59, null}
!72 = metadata !{i32 62, i32 4, metadata !59, null}
!73 = metadata !{i32 68, i32 5, metadata !59, null}
!74 = metadata !{i32 63, i32 5, metadata !75, null}
!75 = metadata !{i32 786443, metadata !59, i32 62, i32 35, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 64, i32 5, metadata !75, null}
!77 = metadata !{i32 65, i32 5, metadata !75, null}
!78 = metadata !{i32 69, i32 6, metadata !79, null}
!79 = metadata !{i32 786443, metadata !59, i32 69, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 70, i32 6, metadata !79, null}
!81 = metadata !{i32 71, i32 6, metadata !79, null}
!82 = metadata !{i32 72, i32 5, metadata !79, null}
!83 = metadata !{i32 73, i32 5, metadata !59, null}
!84 = metadata !{i32 74, i32 5, metadata !59, null}
!85 = metadata !{i32 76, i32 5, metadata !59, null}
!86 = metadata !{i32 78, i32 1, metadata !51, null}
