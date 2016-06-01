; ModuleID = '/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work/edge2pulse/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_V = internal unnamed_addr global i3 0        ; [#uses=2 type=i3*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@edge2pulse_str = internal unnamed_addr constant [11 x i8] c"edge2pulse\00" ; [#uses=1 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define zeroext i1 @edge2pulse(i1 zeroext %signal) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %signal) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @edge2pulse_str) nounwind
  %signal_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %signal) nounwind ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %signal_read}, i64 0, metadata !19), !dbg !27 ; [debug line = 3:22] [debug variable = signal]
  call void @llvm.dbg.value(metadata !{i1 %signal_read}, i64 0, metadata !28), !dbg !347 ; [debug line = 1205:87@7:2] [debug variable = val]
  call void @llvm.dbg.value(metadata !{i1 %signal}, i64 0, metadata !19), !dbg !27 ; [debug line = 3:22] [debug variable = signal]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !350 ; [debug line = 4:1]
  %reg_V_load = load i3* @reg_V, align 1, !dbg !351 ; [#uses=3 type=i3] [debug line = 3524:0@6:7]
  %tmp = trunc i3 %reg_V_load to i2               ; [#uses=1 type=i2]
  call void @llvm.dbg.value(metadata !{i1 %signal}, i64 0, metadata !28), !dbg !347 ; [debug line = 1205:87@7:2] [debug variable = val]
  %p_Result_s = call i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2 %tmp, i1 %signal_read), !dbg !357 ; [#uses=1 type=i3] [debug line = 1206:117@7:2]
  call void @llvm.dbg.value(metadata !{i3 %p_Result_s}, i64 0, metadata !360), !dbg !357 ; [debug line = 1206:117@7:2] [debug variable = __Result__]
  store i3 %p_Result_s, i3* @reg_V, align 1, !dbg !361 ; [debug line = 1206:234@7:2]
  call void @llvm.dbg.value(metadata !{i3 %p_Result_s}, i64 0, metadata !362), !dbg !366 ; [debug line = 1202:141@8:6] [debug variable = __Val2__]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %reg_V_load, i32 1), !dbg !368 ; [#uses=1 type=i1] [debug line = 1202:143@8:6]
  %tmp_2 = trunc i3 %reg_V_load to i1, !dbg !369  ; [#uses=1 type=i1] [debug line = 1202:143@8:19]
  %p_Result_1_not = xor i1 %tmp_2, true, !dbg !370 ; [#uses=1 type=i1] [debug line = 8:19]
  %tmp_3 = or i1 %tmp_1, %p_Result_1_not, !dbg !370 ; [#uses=1 type=i1] [debug line = 8:19]
  br i1 %tmp_3, label %_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit._crit_edge, label %0, !dbg !370 ; [debug line = 8:19]

; <label>:0                                       ; preds = %codeRepl
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !371 ; [debug line = 9:3]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !373 ; [debug line = 10:3]
  br label %_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit._crit_edge, !dbg !374 ; [debug line = 11:3]

_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit._crit_edge: ; preds = %0, %codeRepl
  %p_s = phi i1 [ true, %0 ], [ false, %codeRepl ] ; [#uses=1 type=i1]
  ret i1 %p_s, !dbg !375                          ; [debug line = 14:1]
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

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3                     ; [#uses=1 type=i3]
  %empty_2 = shl i3 1, %empty                     ; [#uses=1 type=i3]
  %empty_3 = and i3 %0, %empty_2                  ; [#uses=1 type=i3]
  %empty_4 = icmp ne i3 %empty_3, 0               ; [#uses=1 type=i1]
  ret i1 %empty_4
}

; [#uses=1]
define weak i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2, i1) nounwind readnone {
entry:
  %empty = zext i2 %0 to i3                       ; [#uses=1 type=i3]
  %empty_5 = zext i1 %1 to i3                     ; [#uses=1 type=i3]
  %empty_6 = shl i3 %empty, 1                     ; [#uses=1 type=i3]
  %empty_7 = or i3 %empty_6, %empty_5             ; [#uses=1 type=i3]
  ret i3 %empty_7
}

; [#uses=1]
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
!19 = metadata !{i32 786689, metadata !20, metadata !"signal", metadata !21, i32 16777219, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"edge2pulse", metadata !"edge2pulse", metadata !"_Z10edge2pulseb", metadata !21, i32 3, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i1)* @edge2pulse, null, null, metadata !25, i32 3} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"edge2pulse/.settings/edge2pulse.cpp", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !24, metadata !24}
!24 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!27 = metadata !{i32 3, i32 22, metadata !20, null}
!28 = metadata !{i32 786689, metadata !29, metadata !"val", metadata !30, i32 33555637, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi3ELb1EEaSEy", metadata !30, i32 1205, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !331, metadata !25, i32 1205} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786473, metadata !"/media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/common/technology/autopilot/ap_int_syn.h", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{metadata !33, metadata !319, metadata !120}
!33 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!34 = metadata !{i32 786434, null, metadata !"ap_bit_ref<3, true>", metadata !30, i32 1192, i64 128, i64 64, i32 0, i32 0, null, metadata !35, i32 0, null, metadata !346} ; [ DW_TAG_class_type ]
!35 = metadata !{metadata !36, metadata !315, metadata !316, metadata !322, metadata !326, metadata !330, metadata !331, metadata !332, metadata !335, metadata !336, metadata !339, metadata !340, metadata !343}
!36 = metadata !{i32 786445, metadata !34, metadata !"d_bv", metadata !30, i32 1193, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_reference_type ]
!38 = metadata !{i32 786434, null, metadata !"ap_int_base<3, true, true>", metadata !30, i32 1396, i64 8, i64 8, i32 0, i32 0, null, metadata !39, i32 0, null, metadata !312} ; [ DW_TAG_class_type ]
!39 = metadata !{metadata !40, metadata !59, metadata !63, metadata !71, metadata !77, metadata !80, metadata !84, metadata !88, metadata !92, metadata !96, metadata !99, metadata !103, metadata !107, metadata !111, metadata !116, metadata !121, metadata !125, metadata !129, metadata !135, metadata !138, metadata !142, metadata !145, metadata !148, metadata !149, metadata !152, metadata !155, metadata !158, metadata !161, metadata !164, metadata !167, metadata !170, metadata !173, metadata !176, metadata !179, metadata !182, metadata !185, metadata !195, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !205, metadata !208, metadata !211, metadata !214, metadata !217, metadata !220, metadata !223, metadata !224, metadata !228, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !239, metadata !240, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !251, metadata !252, metadata !253, metadata !256, metadata !257, metadata !260, metadata !261, metadata !265, metadata !269, metadata !270, metadata !273, metadata !274, metadata !277, metadata !278, metadata !279, metadata !280, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !304, metadata !307, metadata !310, metadata !311}
!40 = metadata !{i32 786460, metadata !38, null, metadata !30, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_inheritance ]
!41 = metadata !{i32 786434, null, metadata !"ssdm_int<3 + 1024 * 0, true>", metadata !42, i32 5, i64 8, i64 8, i32 0, i32 0, null, metadata !43, i32 0, null, metadata !55} ; [ DW_TAG_class_type ]
!42 = metadata !{i32 786473, metadata !"/media/imranqureshi/40edadaa-013a-44ac-bdd0-e7787032b2e2/xilinx/Vivado_HLS/2015.3/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/imranqureshi/TDL_homework/2_zynq_bram_QSPI_8bit_FIFO/git_sdk_work", null} ; [ DW_TAG_file_type ]
!43 = metadata !{metadata !44, metadata !46, metadata !50}
!44 = metadata !{i32 786445, metadata !41, metadata !"V", metadata !42, i32 5, i64 3, i64 4, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 786468, null, metadata !"int3", null, i32 0, i64 3, i64 4, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 786478, i32 0, metadata !41, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !42, i32 5, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 5} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !49}
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !41} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !41, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !42, i32 5, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !25, i32 5} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !49, metadata !53}
!53 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!54 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!55 = metadata !{metadata !56, metadata !58}
!56 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !57, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!57 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!58 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !24, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!59 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1437, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1437} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !62}
!62 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !38} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base<3, true>", metadata !"ap_int_base<3, true>", metadata !"", metadata !30, i32 1449, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !68, i32 0, metadata !25, i32 1449} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !62, metadata !66}
!66 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_reference_type ]
!67 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_const_type ]
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !57, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!70 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !24, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!71 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base<3, true>", metadata !"ap_int_base<3, true>", metadata !"", metadata !30, i32 1452, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !68, i32 0, metadata !25, i32 1452} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !62, metadata !74}
!74 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_reference_type ]
!75 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_const_type ]
!76 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_volatile_type ]
!77 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1459, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1459} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !62, metadata !24}
!80 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1460, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1460} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !62, metadata !83}
!83 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1461, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1461} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !62, metadata !87}
!87 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1462, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1462} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !62, metadata !91}
!91 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1463, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1463} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !62, metadata !95}
!95 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!96 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1464, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1464} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{null, metadata !62, metadata !57}
!99 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1465, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1465} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !62, metadata !102}
!102 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1466, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1466} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !62, metadata !106}
!106 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!107 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1467, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1467} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !62, metadata !110}
!110 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!111 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1468, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1468} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !62, metadata !114}
!114 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !30, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ]
!115 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1469, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1469} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !62, metadata !119}
!119 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !30, i32 109, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ]
!120 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1470, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1470} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{null, metadata !62, metadata !124}
!124 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!125 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1471, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !25, i32 1471} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{null, metadata !62, metadata !128}
!128 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!129 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1498, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1498} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !62, metadata !132}
!132 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ]
!133 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_const_type ]
!134 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1505, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1505} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !62, metadata !132, metadata !83}
!138 = metadata !{i32 786478, i32 0, metadata !38, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi3ELb1ELb1EE4readEv", metadata !30, i32 1526, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1526} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{metadata !38, metadata !141}
!141 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !76} ; [ DW_TAG_pointer_type ]
!142 = metadata !{i32 786478, i32 0, metadata !38, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi3ELb1ELb1EE5writeERKS0_", metadata !30, i32 1532, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1532} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !141, metadata !66}
!145 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi3ELb1ELb1EEaSERVKS0_", metadata !30, i32 1544, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1544} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !141, metadata !74}
!148 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi3ELb1ELb1EEaSERKS0_", metadata !30, i32 1553, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1553} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSERVKS0_", metadata !30, i32 1576, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1576} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{metadata !37, metadata !62, metadata !74}
!152 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSERKS0_", metadata !30, i32 1581, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1581} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{metadata !37, metadata !62, metadata !66}
!155 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEPKc", metadata !30, i32 1585, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1585} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !37, metadata !62, metadata !132}
!158 = metadata !{i32 786478, i32 0, metadata !38, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE3setEPKca", metadata !30, i32 1593, metadata !159, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1593} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{metadata !37, metadata !62, metadata !132, metadata !83}
!161 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEc", metadata !30, i32 1607, metadata !162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1607} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{metadata !37, metadata !62, metadata !134}
!164 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEh", metadata !30, i32 1608, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1608} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{metadata !37, metadata !62, metadata !87}
!167 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEs", metadata !30, i32 1609, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1609} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{metadata !37, metadata !62, metadata !91}
!170 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEt", metadata !30, i32 1610, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1610} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{metadata !37, metadata !62, metadata !95}
!173 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEi", metadata !30, i32 1611, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1611} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !37, metadata !62, metadata !57}
!176 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEj", metadata !30, i32 1612, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1612} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{metadata !37, metadata !62, metadata !102}
!179 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEx", metadata !30, i32 1613, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1613} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !37, metadata !62, metadata !114}
!182 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEaSEy", metadata !30, i32 1614, metadata !183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1614} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!184 = metadata !{metadata !37, metadata !62, metadata !119}
!185 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator char", metadata !"operator char", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EEcvcEv", metadata !30, i32 1652, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1652} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !188, metadata !194}
!188 = metadata !{i32 786454, metadata !38, metadata !"RetType", metadata !30, i32 1401, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ]
!189 = metadata !{i32 786454, metadata !190, metadata !"Type", metadata !30, i32 1366, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ]
!190 = metadata !{i32 786434, null, metadata !"retval<1, true>", metadata !30, i32 1365, i64 8, i64 8, i32 0, i32 0, null, metadata !191, i32 0, null, metadata !192} ; [ DW_TAG_class_type ]
!191 = metadata !{i32 0}
!192 = metadata !{metadata !193, metadata !58}
!193 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !57, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!194 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !67} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE7to_boolEv", metadata !30, i32 1658, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1658} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !24, metadata !194}
!198 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE8to_ucharEv", metadata !30, i32 1659, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1659} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE7to_charEv", metadata !30, i32 1660, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1660} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9to_ushortEv", metadata !30, i32 1661, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1661} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE8to_shortEv", metadata !30, i32 1662, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1662} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE6to_intEv", metadata !30, i32 1663, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1663} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !57, metadata !194}
!205 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE7to_uintEv", metadata !30, i32 1664, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1664} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !102, metadata !194}
!208 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE7to_longEv", metadata !30, i32 1665, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1665} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{metadata !106, metadata !194}
!211 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE8to_ulongEv", metadata !30, i32 1666, metadata !212, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1666} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!213 = metadata !{metadata !110, metadata !194}
!214 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE8to_int64Ev", metadata !30, i32 1667, metadata !215, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1667} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!216 = metadata !{metadata !114, metadata !194}
!217 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9to_uint64Ev", metadata !30, i32 1668, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1668} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!219 = metadata !{metadata !119, metadata !194}
!220 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9to_doubleEv", metadata !30, i32 1669, metadata !221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1669} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{metadata !128, metadata !194}
!223 = metadata !{i32 786478, i32 0, metadata !38, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE6lengthEv", metadata !30, i32 1682, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1682} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786478, i32 0, metadata !38, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi3ELb1ELb1EE6lengthEv", metadata !30, i32 1683, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1683} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !57, metadata !227}
!227 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !75} ; [ DW_TAG_pointer_type ]
!228 = metadata !{i32 786478, i32 0, metadata !38, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE7reverseEv", metadata !30, i32 1688, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1688} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!230 = metadata !{metadata !37, metadata !62}
!231 = metadata !{i32 786478, i32 0, metadata !38, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE6iszeroEv", metadata !30, i32 1694, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1694} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786478, i32 0, metadata !38, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE7is_zeroEv", metadata !30, i32 1699, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1699} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 786478, i32 0, metadata !38, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE4signEv", metadata !30, i32 1704, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1704} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786478, i32 0, metadata !38, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE5clearEi", metadata !30, i32 1712, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1712} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786478, i32 0, metadata !38, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE6invertEi", metadata !30, i32 1718, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1718} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786478, i32 0, metadata !38, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE4testEi", metadata !30, i32 1726, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1726} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !24, metadata !194, metadata !57}
!239 = metadata !{i32 786478, i32 0, metadata !38, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE3setEi", metadata !30, i32 1732, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1732} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786478, i32 0, metadata !38, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE3setEib", metadata !30, i32 1738, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1738} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{null, metadata !62, metadata !57, metadata !24}
!243 = metadata !{i32 786478, i32 0, metadata !38, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE7lrotateEi", metadata !30, i32 1745, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1745} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786478, i32 0, metadata !38, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE7rrotateEi", metadata !30, i32 1754, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1754} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786478, i32 0, metadata !38, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE7set_bitEib", metadata !30, i32 1762, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1762} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786478, i32 0, metadata !38, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE7get_bitEi", metadata !30, i32 1767, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1767} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786478, i32 0, metadata !38, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE5b_notEv", metadata !30, i32 1772, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1772} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786478, i32 0, metadata !38, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE17countLeadingZerosEv", metadata !30, i32 1779, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1779} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !57, metadata !62}
!251 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEppEv", metadata !30, i32 1836, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1836} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEmmEv", metadata !30, i32 1840, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1840} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEppEi", metadata !30, i32 1848, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1848} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !67, metadata !62, metadata !57}
!256 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEmmEi", metadata !30, i32 1853, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1853} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EEpsEv", metadata !30, i32 1862, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1862} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !38, metadata !194}
!260 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EEntEv", metadata !30, i32 1868, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1868} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EEngEv", metadata !30, i32 1873, metadata !262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1873} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{metadata !264, metadata !194}
!264 = metadata !{i32 786434, null, metadata !"ap_int_base<4, true, true>", metadata !30, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!265 = metadata !{i32 786478, i32 0, metadata !38, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE5rangeEii", metadata !30, i32 2003, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2003} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{metadata !268, metadata !62, metadata !57, metadata !57}
!268 = metadata !{i32 786434, null, metadata !"ap_range_ref<3, true>", metadata !30, i32 922, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!269 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEclEii", metadata !30, i32 2009, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2009} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786478, i32 0, metadata !38, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE5rangeEii", metadata !30, i32 2015, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2015} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{metadata !268, metadata !194, metadata !57, metadata !57}
!273 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EEclEii", metadata !30, i32 2021, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2021} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EEixEi", metadata !30, i32 2040, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2040} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !34, metadata !62, metadata !57}
!277 = metadata !{i32 786478, i32 0, metadata !38, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EEixEi", metadata !30, i32 2054, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2054} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786478, i32 0, metadata !38, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE3bitEi", metadata !30, i32 2068, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2068} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786478, i32 0, metadata !38, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE3bitEi", metadata !30, i32 2082, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2082} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786478, i32 0, metadata !38, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE10and_reduceEv", metadata !30, i32 2262, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2262} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!282 = metadata !{metadata !24, metadata !62}
!283 = metadata !{i32 786478, i32 0, metadata !38, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE11nand_reduceEv", metadata !30, i32 2265, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2265} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786478, i32 0, metadata !38, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE9or_reduceEv", metadata !30, i32 2268, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2268} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786478, i32 0, metadata !38, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE10nor_reduceEv", metadata !30, i32 2271, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2271} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786478, i32 0, metadata !38, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE10xor_reduceEv", metadata !30, i32 2274, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2274} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786478, i32 0, metadata !38, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi3ELb1ELb1EE11xnor_reduceEv", metadata !30, i32 2277, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2277} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786478, i32 0, metadata !38, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE10and_reduceEv", metadata !30, i32 2281, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2281} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786478, i32 0, metadata !38, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE11nand_reduceEv", metadata !30, i32 2284, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2284} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786478, i32 0, metadata !38, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9or_reduceEv", metadata !30, i32 2287, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2287} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !38, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE10nor_reduceEv", metadata !30, i32 2290, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2290} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786478, i32 0, metadata !38, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE10xor_reduceEv", metadata !30, i32 2293, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2293} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786478, i32 0, metadata !38, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE11xnor_reduceEv", metadata !30, i32 2296, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2296} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !30, i32 2303, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2303} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{null, metadata !194, metadata !297, metadata !57, metadata !298, metadata !24}
!297 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ]
!298 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !30, i32 601, i64 5, i64 8, i32 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303}
!300 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!301 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!302 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!303 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!304 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9to_stringE8BaseModeb", metadata !30, i32 2330, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2330} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{metadata !297, metadata !194, metadata !298, metadata !24}
!307 = metadata !{i32 786478, i32 0, metadata !38, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi3ELb1ELb1EE9to_stringEab", metadata !30, i32 2334, metadata !308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 2334} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!309 = metadata !{metadata !297, metadata !194, metadata !83, metadata !24}
!310 = metadata !{i32 786478, i32 0, metadata !38, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !30, i32 1396, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !25, i32 1396} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786478, i32 0, metadata !38, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !30, i32 1396, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !25, i32 1396} ; [ DW_TAG_subprogram ]
!312 = metadata !{metadata !313, metadata !58, metadata !314}
!313 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !57, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!314 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !24, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!315 = metadata !{i32 786445, metadata !34, metadata !"d_index", metadata !30, i32 1194, i64 32, i64 32, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ]
!316 = metadata !{i32 786478, i32 0, metadata !34, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !30, i32 1197, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1197} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{null, metadata !319, metadata !320}
!319 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !34} ; [ DW_TAG_pointer_type ]
!320 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_reference_type ]
!321 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!322 = metadata !{i32 786478, i32 0, metadata !34, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !30, i32 1200, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1200} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !319, metadata !325, metadata !57}
!325 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!326 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi3ELb1EEcvbEv", metadata !30, i32 1202, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1202} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{metadata !24, metadata !329}
!329 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !321} ; [ DW_TAG_pointer_type ]
!330 = metadata !{i32 786478, i32 0, metadata !34, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi3ELb1EE7to_boolEv", metadata !30, i32 1203, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1203} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi3ELb1EEaSEy", metadata !30, i32 1205, metadata !31, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1205} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi3ELb1EEaSERKS0_", metadata !30, i32 1225, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1225} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{metadata !33, metadata !319, metadata !320}
!335 = metadata !{i32 786478, i32 0, metadata !34, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi3ELb1EE3getEv", metadata !30, i32 1333, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1333} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786478, i32 0, metadata !34, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi3ELb1EE3getEv", metadata !30, i32 1337, metadata !337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1337} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!338 = metadata !{metadata !24, metadata !319}
!339 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi3ELb1EEcoEv", metadata !30, i32 1346, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1346} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786478, i32 0, metadata !34, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi3ELb1EE6lengthEv", metadata !30, i32 1351, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !25, i32 1351} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !57, metadata !329}
!343 = metadata !{i32 786478, i32 0, metadata !34, metadata !"~ap_bit_ref", metadata !"~ap_bit_ref", metadata !"", metadata !30, i32 1192, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !25, i32 1192} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{null, metadata !319}
!346 = metadata !{metadata !313, metadata !58}
!347 = metadata !{i32 1205, i32 87, metadata !29, metadata !348}
!348 = metadata !{i32 7, i32 2, metadata !349, null}
!349 = metadata !{i32 786443, metadata !20, i32 3, i32 29, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!350 = metadata !{i32 4, i32 1, metadata !349, null}
!351 = metadata !{i32 3524, i32 0, metadata !352, metadata !356}
!352 = metadata !{i32 786443, metadata !353, i32 3524, i32 3019, metadata !30, i32 12} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator<<<3, true>", metadata !"operator<<<3, true>", metadata !"_ZlsILi3ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i", metadata !30, i32 3524, metadata !354, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !346, null, metadata !25, i32 3524} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{metadata !38, metadata !66, metadata !57}
!356 = metadata !{i32 6, i32 7, metadata !349, null}
!357 = metadata !{i32 1206, i32 117, metadata !358, metadata !348}
!358 = metadata !{i32 786443, metadata !359, i32 1206, i32 19, metadata !30, i32 5} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 786443, metadata !29, i32 1205, i32 93, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!360 = metadata !{i32 786688, metadata !358, metadata !"__Result__", metadata !30, i32 1206, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!361 = metadata !{i32 1206, i32 234, metadata !358, metadata !348}
!362 = metadata !{i32 786688, metadata !363, metadata !"__Val2__", metadata !30, i32 1202, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!363 = metadata !{i32 786443, metadata !364, i32 1202, i32 76, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!364 = metadata !{i32 786443, metadata !365, i32 1202, i32 66, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!365 = metadata !{i32 786478, i32 0, null, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi3ELb1EEcvbEv", metadata !30, i32 1202, metadata !327, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !326, metadata !25, i32 1202} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 1202, i32 141, metadata !363, metadata !367}
!367 = metadata !{i32 8, i32 6, metadata !349, null}
!368 = metadata !{i32 1202, i32 143, metadata !363, metadata !367}
!369 = metadata !{i32 1202, i32 143, metadata !363, metadata !370}
!370 = metadata !{i32 8, i32 19, metadata !349, null}
!371 = metadata !{i32 9, i32 3, metadata !372, null}
!372 = metadata !{i32 786443, metadata !349, i32 8, i32 31, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 10, i32 3, metadata !372, null}
!374 = metadata !{i32 11, i32 3, metadata !372, null}
!375 = metadata !{i32 14, i32 1, metadata !349, null}
