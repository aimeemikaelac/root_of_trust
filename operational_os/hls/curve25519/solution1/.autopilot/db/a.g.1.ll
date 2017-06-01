; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memset_t.str = internal unnamed_addr constant [9 x i8] c"memset_t\00" ; [#uses=1 type=[9 x i8]*]
@memset_nqz2.str = internal unnamed_addr constant [12 x i8] c"memset_nqz2\00" ; [#uses=1 type=[12 x i8]*]
@memset_nqz.str = internal unnamed_addr constant [11 x i8] c"memset_nqz\00" ; [#uses=1 type=[11 x i8]*]
@memset_nqx2.str = internal unnamed_addr constant [12 x i8] c"memset_nqx2\00" ; [#uses=1 type=[12 x i8]*]
@memset_nqx.str = internal unnamed_addr constant [11 x i8] c"memset_nqx\00" ; [#uses=1 type=[11 x i8]*]
@memset_nqpqz2.str = internal unnamed_addr constant [14 x i8] c"memset_nqpqz2\00" ; [#uses=1 type=[14 x i8]*]
@memset_nqpqz.str = internal unnamed_addr constant [13 x i8] c"memset_nqpqz\00" ; [#uses=1 type=[13 x i8]*]
@memset_nqpqx2.str = internal unnamed_addr constant [14 x i8] c"memset_nqpqx2\00" ; [#uses=1 type=[14 x i8]*]
@memset_nqpqx.str = internal unnamed_addr constant [13 x i8] c"memset_nqpqx\00" ; [#uses=1 type=[13 x i8]*]
@memset_e.str = internal unnamed_addr constant [9 x i8] c"memset_e\00" ; [#uses=1 type=[9 x i8]*]
@curve25519_donna.str = internal unnamed_addr constant [17 x i8] c"curve25519_donna\00" ; [#uses=1 type=[17 x i8]*]
@.str8 = private unnamed_addr constant [4 x i8] c"add\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str7 = private unnamed_addr constant [4 x i8] c"mul\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str6 = private unnamed_addr constant [9 x i8] c"fproduct\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str5 = private unnamed_addr constant [7 x i8] c"crecip\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str4 = private unnamed_addr constant [14 x i8] c"fsquare_inner\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"fsquare\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"cmult\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=4]
define internal fastcc void @swap_conditional(i64* %a, i64* %b, i64 %iswap) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %a}, i64 0, metadata !157), !dbg !158 ; [debug line = 775:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i64* %b}, i64 0, metadata !159), !dbg !160 ; [debug line = 775:35] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i64 %iswap}, i64 0, metadata !161), !dbg !162 ; [debug line = 775:47] [debug variable = iswap]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %a, i32 19) nounwind, !dbg !163 ; [debug line = 775:55]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %b, i32 19) nounwind, !dbg !165 ; [debug line = 775:84]
  %tmp = trunc i64 %iswap to i32, !dbg !166       ; [#uses=1 type=i32] [debug line = 777:32]
  %swap = sub i32 0, %tmp, !dbg !166              ; [#uses=1 type=i32] [debug line = 777:32]
  call void @llvm.dbg.value(metadata !{i32 %swap}, i64 0, metadata !167), !dbg !166 ; [debug line = 777:32] [debug variable = swap]
  br label %1, !dbg !169                          ; [debug line = 779:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %tmp.1 = icmp eq i32 %i, 10, !dbg !169          ; [#uses=1 type=i1] [debug line = 779:8]
  br i1 %tmp.1, label %3, label %2, !dbg !169     ; [debug line = 779:8]

; <label>:2                                       ; preds = %1
  %tmp.2 = zext i32 %i to i64, !dbg !171          ; [#uses=2 type=i64] [debug line = 780:55]
  %a.addr = getelementptr inbounds i64* %a, i64 %tmp.2, !dbg !171 ; [#uses=2 type=i64*] [debug line = 780:55]
  %a.load = load i64* %a.addr, align 8, !dbg !171 ; [#uses=3 type=i64] [debug line = 780:55]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %a.load) nounwind
  %tmp.3 = trunc i64 %a.load to i32, !dbg !171    ; [#uses=2 type=i32] [debug line = 780:55]
  %b.addr = getelementptr inbounds i64* %b, i64 %tmp.2, !dbg !171 ; [#uses=3 type=i64*] [debug line = 780:55]
  %b.load = load i64* %b.addr, align 8, !dbg !171 ; [#uses=2 type=i64] [debug line = 780:55]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %b.load) nounwind
  %tmp.4 = trunc i64 %b.load to i32, !dbg !171    ; [#uses=1 type=i32] [debug line = 780:55]
  %tmp.5 = xor i32 %tmp.4, %tmp.3, !dbg !171      ; [#uses=1 type=i32] [debug line = 780:55]
  %x = and i32 %tmp.5, %swap, !dbg !171           ; [#uses=2 type=i32] [debug line = 780:55]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !173), !dbg !171 ; [debug line = 780:55] [debug variable = x]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %a.load) nounwind
  %tmp.6 = xor i32 %x, %tmp.3, !dbg !174          ; [#uses=1 type=i32] [debug line = 781:5]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !174      ; [#uses=1 type=i64] [debug line = 781:5]
  store i64 %tmp.7, i64* %a.addr, align 8, !dbg !174 ; [debug line = 781:5]
  %b.load.1 = load i64* %b.addr, align 8, !dbg !175 ; [#uses=2 type=i64] [debug line = 782:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %b.load.1) nounwind
  %tmp.8 = trunc i64 %b.load.1 to i32, !dbg !175  ; [#uses=1 type=i32] [debug line = 782:5]
  %tmp.9 = xor i32 %tmp.8, %x, !dbg !175          ; [#uses=1 type=i32] [debug line = 782:5]
  %tmp.10 = sext i32 %tmp.9 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 782:5]
  store i64 %tmp.10, i64* %b.addr, align 8, !dbg !175 ; [debug line = 782:5]
  %i.1 = add i32 %i, 1, !dbg !176                 ; [#uses=1 type=i32] [debug line = 779:23]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !177), !dbg !176 ; [debug line = 779:23] [debug variable = i]
  br label %1, !dbg !176                          ; [debug line = 779:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !178                             ; [debug line = 784:1]
}

; [#uses=1]
define internal fastcc i32 @s32_gte(i32 %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !179), !dbg !180 ; [debug line = 514:24] [debug variable = a]
  %a.assign = add nsw i32 %a, -67108845, !dbg !181 ; [#uses=1 type=i32] [debug line = 515:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign}, i64 0, metadata !179), !dbg !181 ; [debug line = 515:3] [debug variable = a]
  %tmp = ashr i32 %a.assign, 31, !dbg !183        ; [#uses=1 type=i32] [debug line = 517:3]
  %tmp.12 = xor i32 %tmp, -1, !dbg !183           ; [#uses=1 type=i32] [debug line = 517:3]
  ret i32 %tmp.12, !dbg !183                      ; [debug line = 517:3]
}

; [#uses=2]
define internal fastcc i32 @s32_eq(i32 %a, i32 %b) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !184), !dbg !185 ; [debug line = 502:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !186), !dbg !187 ; [debug line = 502:30] [debug variable = b]
  %tmp = xor i32 %a, -1, !dbg !188                ; [#uses=1 type=i32] [debug line = 503:3]
  %a.assign = xor i32 %tmp, %b, !dbg !188         ; [#uses=2 type=i32] [debug line = 503:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign}, i64 0, metadata !184), !dbg !188 ; [debug line = 503:3] [debug variable = a]
  %tmp.13 = shl i32 %a.assign, 16, !dbg !190      ; [#uses=1 type=i32] [debug line = 504:3]
  %a.assign.1 = and i32 %tmp.13, %a.assign, !dbg !190 ; [#uses=2 type=i32] [debug line = 504:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.1}, i64 0, metadata !184), !dbg !190 ; [debug line = 504:3] [debug variable = a]
  %tmp.14 = shl i32 %a.assign.1, 8, !dbg !191     ; [#uses=1 type=i32] [debug line = 505:3]
  %a.assign.2 = and i32 %tmp.14, %a.assign.1, !dbg !191 ; [#uses=2 type=i32] [debug line = 505:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.2}, i64 0, metadata !184), !dbg !191 ; [debug line = 505:3] [debug variable = a]
  %tmp.15 = shl i32 %a.assign.2, 4, !dbg !192     ; [#uses=1 type=i32] [debug line = 506:3]
  %a.assign.3 = and i32 %tmp.15, %a.assign.2, !dbg !192 ; [#uses=2 type=i32] [debug line = 506:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.3}, i64 0, metadata !184), !dbg !192 ; [debug line = 506:3] [debug variable = a]
  %tmp.16 = shl i32 %a.assign.3, 2, !dbg !193     ; [#uses=1 type=i32] [debug line = 507:3]
  %a.assign.4 = and i32 %tmp.16, %a.assign.3, !dbg !193 ; [#uses=2 type=i32] [debug line = 507:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.4}, i64 0, metadata !184), !dbg !193 ; [debug line = 507:3] [debug variable = a]
  %tmp.17 = shl i32 %a.assign.4, 1, !dbg !194     ; [#uses=1 type=i32] [debug line = 508:3]
  %a.assign.5 = and i32 %tmp.17, %a.assign.4, !dbg !194 ; [#uses=1 type=i32] [debug line = 508:3]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.5}, i64 0, metadata !184), !dbg !194 ; [debug line = 508:3] [debug variable = a]
  %tmp.18 = ashr i32 %a.assign.5, 31, !dbg !195   ; [#uses=1 type=i32] [debug line = 509:3]
  ret i32 %tmp.18, !dbg !195                      ; [debug line = 509:3]
}

; [#uses=112]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=39]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
define internal fastcc void @fsum(i64* %output, i64* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !196), !dbg !197 ; [debug line = 89:24] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !198), !dbg !199 ; [debug line = 89:44] [debug variable = in]
  br label %1, !dbg !200                          ; [debug line = 91:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=4 type=i32]
  %tmp = icmp ult i32 %i, 10, !dbg !200           ; [#uses=1 type=i1] [debug line = 91:8]
  br i1 %tmp, label %2, label %3, !dbg !200       ; [debug line = 91:8]

; <label>:2                                       ; preds = %1
  %tmp.19 = zext i32 %i to i64, !dbg !203         ; [#uses=2 type=i64] [debug line = 92:5]
  %output.addr = getelementptr inbounds i64* %output, i64 %tmp.19, !dbg !203 ; [#uses=2 type=i64*] [debug line = 92:5]
  %output.load = load i64* %output.addr, align 8, !dbg !203 ; [#uses=2 type=i64] [debug line = 92:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load) nounwind
  %in.addr = getelementptr inbounds i64* %in, i64 %tmp.19, !dbg !203 ; [#uses=1 type=i64*] [debug line = 92:5]
  %in.load = load i64* %in.addr, align 8, !dbg !203 ; [#uses=2 type=i64] [debug line = 92:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load) nounwind
  %tmp.20 = add nsw i64 %in.load, %output.load, !dbg !203 ; [#uses=1 type=i64] [debug line = 92:5]
  store i64 %tmp.20, i64* %output.addr, align 8, !dbg !203 ; [debug line = 92:5]
  %tmp.21 = or i32 %i, 1, !dbg !205               ; [#uses=1 type=i32] [debug line = 93:5]
  %tmp.22 = zext i32 %tmp.21 to i64, !dbg !205    ; [#uses=2 type=i64] [debug line = 93:5]
  %output.addr.1 = getelementptr inbounds i64* %output, i64 %tmp.22, !dbg !205 ; [#uses=2 type=i64*] [debug line = 93:5]
  %output.load.1 = load i64* %output.addr.1, align 8, !dbg !205 ; [#uses=2 type=i64] [debug line = 93:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.1) nounwind
  %in.addr.1 = getelementptr inbounds i64* %in, i64 %tmp.22, !dbg !205 ; [#uses=1 type=i64*] [debug line = 93:5]
  %in.load.1 = load i64* %in.addr.1, align 8, !dbg !205 ; [#uses=2 type=i64] [debug line = 93:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.1) nounwind
  %tmp.23 = add nsw i64 %in.load.1, %output.load.1, !dbg !205 ; [#uses=1 type=i64] [debug line = 93:5]
  store i64 %tmp.23, i64* %output.addr.1, align 8, !dbg !205 ; [debug line = 93:5]
  %i.2 = add i32 %i, 2, !dbg !206                 ; [#uses=1 type=i32] [debug line = 91:23]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !207), !dbg !206 ; [debug line = 91:23] [debug variable = i]
  br label %1, !dbg !206                          ; [debug line = 91:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !208                             ; [debug line = 95:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner(i64* %output, i64* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !209), !dbg !210 ; [debug line = 368:33] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !211), !dbg !212 ; [debug line = 368:53] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !213 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !215 ; [debug line = 370:1]
  %in.load = load i64* %in, align 8, !dbg !216    ; [#uses=3 type=i64] [debug line = 371:53]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load) nounwind
  %tmp = trunc i64 %in.load to i32, !dbg !216     ; [#uses=1 type=i32] [debug line = 371:53]
  %tmp.25 = sext i32 %tmp to i64, !dbg !216       ; [#uses=2 type=i64] [debug line = 371:53]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load) nounwind
  %out_1 = mul nsw i64 %tmp.25, %tmp.25, !dbg !216 ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !217), !dbg !216 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output, align 8, !dbg !218 ; [debug line = 374:3]
  %in.load.2 = load i64* %in, align 8, !dbg !219  ; [#uses=2 type=i64] [debug line = 378:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.2) nounwind
  %tmp.26 = trunc i64 %in.load.2 to i32, !dbg !219 ; [#uses=1 type=i32] [debug line = 378:3]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !219    ; [#uses=1 type=i64] [debug line = 378:3]
  %in.addr = getelementptr inbounds i64* %in, i64 1, !dbg !219 ; [#uses=10 type=i64*] [debug line = 378:3]
  %in.load.3 = load i64* %in.addr, align 8, !dbg !219 ; [#uses=2 type=i64] [debug line = 378:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.3) nounwind
  %tmp.28 = trunc i64 %in.load.3 to i32, !dbg !219 ; [#uses=1 type=i32] [debug line = 378:3]
  %tmp.29 = sext i32 %tmp.28 to i64, !dbg !219    ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.30 = mul i64 %tmp.27, 2, !dbg !219         ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.31 = mul i64 %tmp.30, %tmp.29, !dbg !219   ; [#uses=1 type=i64] [debug line = 378:3]
  %output.addr = getelementptr inbounds i64* %output, i64 1, !dbg !219 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp.31, i64* %output.addr, align 8, !dbg !219 ; [debug line = 378:3]
  %in.load.4 = load i64* %in.addr, align 8, !dbg !220 ; [#uses=3 type=i64] [debug line = 383:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.4) nounwind
  %tmp.32 = trunc i64 %in.load.4 to i32, !dbg !220 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp.33 = sext i32 %tmp.32 to i64, !dbg !220    ; [#uses=2 type=i64] [debug line = 383:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.4) nounwind
  %tmp.34 = mul nsw i64 %tmp.33, %tmp.33, !dbg !220 ; [#uses=1 type=i64] [debug line = 383:3]
  %in.load.5 = load i64* %in, align 8, !dbg !220  ; [#uses=2 type=i64] [debug line = 383:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.5) nounwind
  %tmp.35 = trunc i64 %in.load.5 to i32, !dbg !220 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp.36 = sext i32 %tmp.35 to i64, !dbg !220    ; [#uses=1 type=i64] [debug line = 383:3]
  %in.addr.2 = getelementptr inbounds i64* %in, i64 2, !dbg !220 ; [#uses=10 type=i64*] [debug line = 383:3]
  %in.load.6 = load i64* %in.addr.2, align 8, !dbg !220 ; [#uses=2 type=i64] [debug line = 383:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.6) nounwind
  %tmp.37 = trunc i64 %in.load.6 to i32, !dbg !220 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp.38 = sext i32 %tmp.37 to i64, !dbg !220    ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.39 = mul nsw i64 %tmp.38, %tmp.36, !dbg !220 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.40 = add nsw i64 %tmp.39, %tmp.34, !dbg !220 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.41 = shl i64 %tmp.40, 1, !dbg !220         ; [#uses=1 type=i64] [debug line = 383:3]
  %output.addr.2 = getelementptr inbounds i64* %output, i64 2, !dbg !220 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp.41, i64* %output.addr.2, align 8, !dbg !220 ; [debug line = 383:3]
  %in.load.7 = load i64* %in.addr, align 8, !dbg !221 ; [#uses=2 type=i64] [debug line = 386:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.7) nounwind
  %tmp.42 = trunc i64 %in.load.7 to i32, !dbg !221 ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp.43 = sext i32 %tmp.42 to i64, !dbg !221    ; [#uses=1 type=i64] [debug line = 386:3]
  %in.load.8 = load i64* %in.addr.2, align 8, !dbg !221 ; [#uses=2 type=i64] [debug line = 386:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.8) nounwind
  %tmp.44 = trunc i64 %in.load.8 to i32, !dbg !221 ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp.45 = sext i32 %tmp.44 to i64, !dbg !221    ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.46 = mul nsw i64 %tmp.45, %tmp.43, !dbg !221 ; [#uses=1 type=i64] [debug line = 386:3]
  %in.load.9 = load i64* %in, align 8, !dbg !221  ; [#uses=2 type=i64] [debug line = 386:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.9) nounwind
  %tmp.47 = trunc i64 %in.load.9 to i32, !dbg !221 ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp.48 = sext i32 %tmp.47 to i64, !dbg !221    ; [#uses=1 type=i64] [debug line = 386:3]
  %in.addr.3 = getelementptr inbounds i64* %in, i64 3, !dbg !221 ; [#uses=10 type=i64*] [debug line = 386:3]
  %in.load.10 = load i64* %in.addr.3, align 8, !dbg !221 ; [#uses=2 type=i64] [debug line = 386:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.10) nounwind
  %tmp.49 = trunc i64 %in.load.10 to i32, !dbg !221 ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp.50 = sext i32 %tmp.49 to i64, !dbg !221    ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.51 = mul nsw i64 %tmp.50, %tmp.48, !dbg !221 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.52 = add nsw i64 %tmp.51, %tmp.46, !dbg !221 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.53 = shl nsw i64 %tmp.52, 1, !dbg !221     ; [#uses=1 type=i64] [debug line = 386:3]
  %output.addr.3 = getelementptr inbounds i64* %output, i64 3, !dbg !221 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp.53, i64* %output.addr.3, align 8, !dbg !221 ; [debug line = 386:3]
  %in.load.11 = load i64* %in.addr.2, align 8, !dbg !222 ; [#uses=3 type=i64] [debug line = 389:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.11) nounwind
  %tmp.54 = trunc i64 %in.load.11 to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 389:3]
  %tmp.55 = sext i32 %tmp.54 to i64, !dbg !222    ; [#uses=2 type=i64] [debug line = 389:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.11) nounwind
  %tmp.56 = mul nsw i64 %tmp.55, %tmp.55, !dbg !222 ; [#uses=1 type=i64] [debug line = 389:3]
  %in.load.12 = load i64* %in.addr, align 8, !dbg !222 ; [#uses=2 type=i64] [debug line = 389:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.12) nounwind
  %tmp.57 = trunc i64 %in.load.12 to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 389:3]
  %tmp.58 = sext i32 %tmp.57 to i64, !dbg !222    ; [#uses=1 type=i64] [debug line = 389:3]
  %in.load.13 = load i64* %in.addr.3, align 8, !dbg !222 ; [#uses=2 type=i64] [debug line = 389:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.13) nounwind
  %tmp.59 = trunc i64 %in.load.13 to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 389:3]
  %tmp.60 = sext i32 %tmp.59 to i64, !dbg !222    ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.61 = mul i64 %tmp.58, 4, !dbg !222         ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.62 = mul i64 %tmp.61, %tmp.60, !dbg !222   ; [#uses=1 type=i64] [debug line = 389:3]
  %in.load.14 = load i64* %in, align 8, !dbg !222 ; [#uses=2 type=i64] [debug line = 389:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.14) nounwind
  %tmp.63 = trunc i64 %in.load.14 to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 389:3]
  %tmp.64 = sext i32 %tmp.63 to i64, !dbg !222    ; [#uses=1 type=i64] [debug line = 389:3]
  %in.addr.4 = getelementptr inbounds i64* %in, i64 4, !dbg !222 ; [#uses=10 type=i64*] [debug line = 389:3]
  %in.load.15 = load i64* %in.addr.4, align 8, !dbg !222 ; [#uses=2 type=i64] [debug line = 389:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.15) nounwind
  %tmp.65 = trunc i64 %in.load.15 to i32, !dbg !222 ; [#uses=1 type=i32] [debug line = 389:3]
  %tmp.66 = sext i32 %tmp.65 to i64, !dbg !222    ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.67 = mul i64 %tmp.64, 2, !dbg !222         ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.68 = mul i64 %tmp.67, %tmp.66, !dbg !222   ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.69 = add i64 %tmp.62, %tmp.56, !dbg !222   ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.70 = add i64 %tmp.69, %tmp.68, !dbg !222   ; [#uses=1 type=i64] [debug line = 389:3]
  %output.addr.4 = getelementptr inbounds i64* %output, i64 4, !dbg !222 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp.70, i64* %output.addr.4, align 8, !dbg !222 ; [debug line = 389:3]
  %in.load.16 = load i64* %in.addr.2, align 8, !dbg !223 ; [#uses=2 type=i64] [debug line = 393:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.16) nounwind
  %tmp.71 = trunc i64 %in.load.16 to i32, !dbg !223 ; [#uses=1 type=i32] [debug line = 393:3]
  %tmp.72 = sext i32 %tmp.71 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 393:3]
  %in.load.17 = load i64* %in.addr.3, align 8, !dbg !223 ; [#uses=2 type=i64] [debug line = 393:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.17) nounwind
  %tmp.73 = trunc i64 %in.load.17 to i32, !dbg !223 ; [#uses=1 type=i32] [debug line = 393:3]
  %tmp.74 = sext i32 %tmp.73 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.75 = mul nsw i64 %tmp.74, %tmp.72, !dbg !223 ; [#uses=1 type=i64] [debug line = 393:3]
  %in.load.18 = load i64* %in.addr, align 8, !dbg !223 ; [#uses=2 type=i64] [debug line = 393:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.18) nounwind
  %tmp.76 = trunc i64 %in.load.18 to i32, !dbg !223 ; [#uses=1 type=i32] [debug line = 393:3]
  %tmp.77 = sext i32 %tmp.76 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 393:3]
  %in.load.19 = load i64* %in.addr.4, align 8, !dbg !223 ; [#uses=2 type=i64] [debug line = 393:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.19) nounwind
  %tmp.78 = trunc i64 %in.load.19 to i32, !dbg !223 ; [#uses=1 type=i32] [debug line = 393:3]
  %tmp.79 = sext i32 %tmp.78 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.80 = mul nsw i64 %tmp.79, %tmp.77, !dbg !223 ; [#uses=1 type=i64] [debug line = 393:3]
  %in.load.20 = load i64* %in, align 8, !dbg !223 ; [#uses=2 type=i64] [debug line = 393:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.20) nounwind
  %tmp.81 = trunc i64 %in.load.20 to i32, !dbg !223 ; [#uses=1 type=i32] [debug line = 393:3]
  %tmp.82 = sext i32 %tmp.81 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 393:3]
  %in.addr.5 = getelementptr inbounds i64* %in, i64 5, !dbg !223 ; [#uses=10 type=i64*] [debug line = 393:3]
  %in.load.21 = load i64* %in.addr.5, align 8, !dbg !223 ; [#uses=2 type=i64] [debug line = 393:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.21) nounwind
  %tmp.83 = trunc i64 %in.load.21 to i32, !dbg !223 ; [#uses=1 type=i32] [debug line = 393:3]
  %tmp.84 = sext i32 %tmp.83 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.85 = mul nsw i64 %tmp.84, %tmp.82, !dbg !223 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.86 = add i64 %tmp.80, %tmp.75, !dbg !223   ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.87 = add i64 %tmp.86, %tmp.85, !dbg !223   ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.88 = shl nsw i64 %tmp.87, 1, !dbg !223     ; [#uses=1 type=i64] [debug line = 393:3]
  %output.addr.5 = getelementptr inbounds i64* %output, i64 5, !dbg !223 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp.88, i64* %output.addr.5, align 8, !dbg !223 ; [debug line = 393:3]
  %in.load.22 = load i64* %in.addr.3, align 8, !dbg !224 ; [#uses=3 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.22) nounwind
  %tmp.89 = trunc i64 %in.load.22 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.90 = sext i32 %tmp.89 to i64, !dbg !224    ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.22) nounwind
  %tmp.91 = mul nsw i64 %tmp.90, %tmp.90, !dbg !224 ; [#uses=1 type=i64] [debug line = 397:3]
  %in.load.23 = load i64* %in.addr.2, align 8, !dbg !224 ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.23) nounwind
  %tmp.92 = trunc i64 %in.load.23 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.93 = sext i32 %tmp.92 to i64, !dbg !224    ; [#uses=1 type=i64] [debug line = 397:3]
  %in.load.24 = load i64* %in.addr.4, align 8, !dbg !224 ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.24) nounwind
  %tmp.94 = trunc i64 %in.load.24 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.95 = sext i32 %tmp.94 to i64, !dbg !224    ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.96 = mul nsw i64 %tmp.95, %tmp.93, !dbg !224 ; [#uses=1 type=i64] [debug line = 397:3]
  %in.load.25 = load i64* %in, align 8, !dbg !224 ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.25) nounwind
  %tmp.97 = trunc i64 %in.load.25 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.98 = sext i32 %tmp.97 to i64, !dbg !224    ; [#uses=1 type=i64] [debug line = 397:3]
  %in.addr.6 = getelementptr inbounds i64* %in, i64 6, !dbg !224 ; [#uses=10 type=i64*] [debug line = 397:3]
  %in.load.26 = load i64* %in.addr.6, align 8, !dbg !224 ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.26) nounwind
  %tmp.99 = trunc i64 %in.load.26 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.100 = sext i32 %tmp.99 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.101 = mul nsw i64 %tmp.100, %tmp.98, !dbg !224 ; [#uses=1 type=i64] [debug line = 397:3]
  %in.load.27 = load i64* %in.addr, align 8, !dbg !224 ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.27) nounwind
  %tmp.102 = trunc i64 %in.load.27 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.103 = sext i32 %tmp.102 to i64, !dbg !224  ; [#uses=1 type=i64] [debug line = 397:3]
  %in.load.28 = load i64* %in.addr.5, align 8, !dbg !224 ; [#uses=2 type=i64] [debug line = 397:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.28) nounwind
  %tmp.104 = trunc i64 %in.load.28 to i32, !dbg !224 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.105 = sext i32 %tmp.104 to i64, !dbg !224  ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.106 = mul i64 %tmp.103, 2, !dbg !224       ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.107 = mul i64 %tmp.106, %tmp.105, !dbg !224 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.108 = add i64 %tmp.96, %tmp.91, !dbg !224  ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.109 = add i64 %tmp.108, %tmp.101, !dbg !224 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.110 = add i64 %tmp.109, %tmp.107, !dbg !224 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.111 = shl nsw i64 %tmp.110, 1, !dbg !224   ; [#uses=1 type=i64] [debug line = 397:3]
  %output.addr.6 = getelementptr inbounds i64* %output, i64 6, !dbg !224 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp.111, i64* %output.addr.6, align 8, !dbg !224 ; [debug line = 397:3]
  %in.load.29 = load i64* %in.addr.3, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.29) nounwind
  %tmp.112 = trunc i64 %in.load.29 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.113 = sext i32 %tmp.112 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %in.load.30 = load i64* %in.addr.4, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.30) nounwind
  %tmp.114 = trunc i64 %in.load.30 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.115 = sext i32 %tmp.114 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.116 = mul nsw i64 %tmp.115, %tmp.113, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %in.load.31 = load i64* %in.addr.2, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.31) nounwind
  %tmp.117 = trunc i64 %in.load.31 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.118 = sext i32 %tmp.117 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %in.load.32 = load i64* %in.addr.5, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.32) nounwind
  %tmp.119 = trunc i64 %in.load.32 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.120 = sext i32 %tmp.119 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.121 = mul nsw i64 %tmp.120, %tmp.118, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %in.load.33 = load i64* %in.addr, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.33) nounwind
  %tmp.122 = trunc i64 %in.load.33 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.123 = sext i32 %tmp.122 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %in.load.34 = load i64* %in.addr.6, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.34) nounwind
  %tmp.124 = trunc i64 %in.load.34 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.125 = sext i32 %tmp.124 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.126 = mul nsw i64 %tmp.125, %tmp.123, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %in.load.35 = load i64* %in, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.35) nounwind
  %tmp.127 = trunc i64 %in.load.35 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.128 = sext i32 %tmp.127 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %in.addr.7 = getelementptr inbounds i64* %in, i64 7, !dbg !225 ; [#uses=10 type=i64*] [debug line = 402:3]
  %in.load.36 = load i64* %in.addr.7, align 8, !dbg !225 ; [#uses=2 type=i64] [debug line = 402:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.36) nounwind
  %tmp.129 = trunc i64 %in.load.36 to i32, !dbg !225 ; [#uses=1 type=i32] [debug line = 402:3]
  %tmp.130 = sext i32 %tmp.129 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.131 = mul nsw i64 %tmp.130, %tmp.128, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.132 = add i64 %tmp.121, %tmp.116, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.133 = add i64 %tmp.132, %tmp.126, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.134 = add i64 %tmp.133, %tmp.131, !dbg !225 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.135 = shl nsw i64 %tmp.134, 1, !dbg !225   ; [#uses=1 type=i64] [debug line = 402:3]
  %output.addr.7 = getelementptr inbounds i64* %output, i64 7, !dbg !225 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp.135, i64* %output.addr.7, align 8, !dbg !225 ; [debug line = 402:3]
  %in.load.37 = load i64* %in.addr.4, align 8, !dbg !226 ; [#uses=3 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.37) nounwind
  %tmp.136 = trunc i64 %in.load.37 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.137 = sext i32 %tmp.136 to i64, !dbg !226  ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.37) nounwind
  %tmp.138 = mul nsw i64 %tmp.137, %tmp.137, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.38 = load i64* %in.addr.2, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.38) nounwind
  %tmp.139 = trunc i64 %in.load.38 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.140 = sext i32 %tmp.139 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.39 = load i64* %in.addr.6, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.39) nounwind
  %tmp.141 = trunc i64 %in.load.39 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.142 = sext i32 %tmp.141 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.143 = mul nsw i64 %tmp.142, %tmp.140, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.40 = load i64* %in, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.40) nounwind
  %tmp.144 = trunc i64 %in.load.40 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.145 = sext i32 %tmp.144 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %in.addr.8 = getelementptr inbounds i64* %in, i64 8, !dbg !226 ; [#uses=10 type=i64*] [debug line = 407:3]
  %in.load.41 = load i64* %in.addr.8, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.41) nounwind
  %tmp.146 = trunc i64 %in.load.41 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.147 = sext i32 %tmp.146 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.148 = mul nsw i64 %tmp.147, %tmp.145, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.42 = load i64* %in.addr, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.42) nounwind
  %tmp.149 = trunc i64 %in.load.42 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.150 = sext i32 %tmp.149 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.43 = load i64* %in.addr.7, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.43) nounwind
  %tmp.151 = trunc i64 %in.load.43 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.152 = sext i32 %tmp.151 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.153 = mul nsw i64 %tmp.152, %tmp.150, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.44 = load i64* %in.addr.3, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.44) nounwind
  %tmp.154 = trunc i64 %in.load.44 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.155 = sext i32 %tmp.154 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %in.load.45 = load i64* %in.addr.5, align 8, !dbg !226 ; [#uses=2 type=i64] [debug line = 407:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.45) nounwind
  %tmp.156 = trunc i64 %in.load.45 to i32, !dbg !226 ; [#uses=1 type=i32] [debug line = 407:3]
  %tmp.157 = sext i32 %tmp.156 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.158 = mul nsw i64 %tmp.157, %tmp.155, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.159 = add nsw i64 %tmp.158, %tmp.153, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.160 = mul i64 %tmp.159, 2, !dbg !226       ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.161 = add i64 %tmp.148, %tmp.143, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.162 = add i64 %tmp.161, %tmp.160, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.163 = mul i64 %tmp.162, 2, !dbg !226       ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.164 = add nsw i64 %tmp.163, %tmp.138, !dbg !226 ; [#uses=1 type=i64] [debug line = 407:3]
  %output.addr.8 = getelementptr inbounds i64* %output, i64 8, !dbg !226 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp.164, i64* %output.addr.8, align 8, !dbg !226 ; [debug line = 407:3]
  %in.load.46 = load i64* %in.addr.4, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.46) nounwind
  %tmp.165 = trunc i64 %in.load.46 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.166 = sext i32 %tmp.165 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.47 = load i64* %in.addr.5, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.47) nounwind
  %tmp.167 = trunc i64 %in.load.47 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.168 = sext i32 %tmp.167 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.169 = mul nsw i64 %tmp.168, %tmp.166, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.48 = load i64* %in.addr.3, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.48) nounwind
  %tmp.170 = trunc i64 %in.load.48 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.171 = sext i32 %tmp.170 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.49 = load i64* %in.addr.6, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.49) nounwind
  %tmp.172 = trunc i64 %in.load.49 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.173 = sext i32 %tmp.172 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.174 = mul nsw i64 %tmp.173, %tmp.171, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.50 = load i64* %in.addr.2, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.50) nounwind
  %tmp.175 = trunc i64 %in.load.50 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.176 = sext i32 %tmp.175 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.51 = load i64* %in.addr.7, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.51) nounwind
  %tmp.177 = trunc i64 %in.load.51 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.178 = sext i32 %tmp.177 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.179 = mul nsw i64 %tmp.178, %tmp.176, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.52 = load i64* %in.addr, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.52) nounwind
  %tmp.180 = trunc i64 %in.load.52 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.181 = sext i32 %tmp.180 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.53 = load i64* %in.addr.8, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.53) nounwind
  %tmp.182 = trunc i64 %in.load.53 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.183 = sext i32 %tmp.182 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.184 = mul nsw i64 %tmp.183, %tmp.181, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.load.54 = load i64* %in, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.54) nounwind
  %tmp.185 = trunc i64 %in.load.54 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.186 = sext i32 %tmp.185 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %in.addr.9 = getelementptr inbounds i64* %in, i64 9, !dbg !227 ; [#uses=10 type=i64*] [debug line = 413:3]
  %in.load.55 = load i64* %in.addr.9, align 8, !dbg !227 ; [#uses=2 type=i64] [debug line = 413:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.55) nounwind
  %tmp.187 = trunc i64 %in.load.55 to i32, !dbg !227 ; [#uses=1 type=i32] [debug line = 413:3]
  %tmp.188 = sext i32 %tmp.187 to i64, !dbg !227  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.189 = mul nsw i64 %tmp.188, %tmp.186, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.190 = add i64 %tmp.174, %tmp.169, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.191 = add i64 %tmp.190, %tmp.179, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.192 = add i64 %tmp.191, %tmp.184, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.193 = add i64 %tmp.192, %tmp.189, !dbg !227 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.194 = shl nsw i64 %tmp.193, 1, !dbg !227   ; [#uses=1 type=i64] [debug line = 413:3]
  %output.addr.9 = getelementptr inbounds i64* %output, i64 9, !dbg !227 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp.194, i64* %output.addr.9, align 8, !dbg !227 ; [debug line = 413:3]
  %in.load.56 = load i64* %in.addr.5, align 8, !dbg !228 ; [#uses=3 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.56) nounwind
  %tmp.195 = trunc i64 %in.load.56 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.196 = sext i32 %tmp.195 to i64, !dbg !228  ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.56) nounwind
  %tmp.197 = mul nsw i64 %tmp.196, %tmp.196, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.57 = load i64* %in.addr.4, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.57) nounwind
  %tmp.198 = trunc i64 %in.load.57 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.199 = sext i32 %tmp.198 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.58 = load i64* %in.addr.6, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.58) nounwind
  %tmp.200 = trunc i64 %in.load.58 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.201 = sext i32 %tmp.200 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.202 = mul nsw i64 %tmp.201, %tmp.199, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.59 = load i64* %in.addr.2, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.59) nounwind
  %tmp.203 = trunc i64 %in.load.59 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.204 = sext i32 %tmp.203 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.60 = load i64* %in.addr.8, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.60) nounwind
  %tmp.205 = trunc i64 %in.load.60 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.206 = sext i32 %tmp.205 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.207 = mul nsw i64 %tmp.206, %tmp.204, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.61 = load i64* %in.addr.3, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.61) nounwind
  %tmp.208 = trunc i64 %in.load.61 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.209 = sext i32 %tmp.208 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.62 = load i64* %in.addr.7, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.62) nounwind
  %tmp.210 = trunc i64 %in.load.62 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.211 = sext i32 %tmp.210 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.212 = mul nsw i64 %tmp.211, %tmp.209, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.63 = load i64* %in.addr, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.63) nounwind
  %tmp.213 = trunc i64 %in.load.63 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.214 = sext i32 %tmp.213 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %in.load.64 = load i64* %in.addr.9, align 8, !dbg !228 ; [#uses=2 type=i64] [debug line = 419:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.64) nounwind
  %tmp.215 = trunc i64 %in.load.64 to i32, !dbg !228 ; [#uses=1 type=i32] [debug line = 419:3]
  %tmp.216 = sext i32 %tmp.215 to i64, !dbg !228  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.217 = mul nsw i64 %tmp.216, %tmp.214, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.218 = add nsw i64 %tmp.217, %tmp.212, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.219 = mul i64 %tmp.218, 2, !dbg !228       ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.220 = add i64 %tmp.202, %tmp.197, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.221 = add i64 %tmp.220, %tmp.207, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.222 = add i64 %tmp.221, %tmp.219, !dbg !228 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.223 = shl nsw i64 %tmp.222, 1, !dbg !228   ; [#uses=1 type=i64] [debug line = 419:3]
  %output.addr.10 = getelementptr inbounds i64* %output, i64 10, !dbg !228 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp.223, i64* %output.addr.10, align 8, !dbg !228 ; [debug line = 419:3]
  %in.load.65 = load i64* %in.addr.5, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.65) nounwind
  %tmp.224 = trunc i64 %in.load.65 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.225 = sext i32 %tmp.224 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.66 = load i64* %in.addr.6, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.66) nounwind
  %tmp.226 = trunc i64 %in.load.66 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.227 = sext i32 %tmp.226 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.228 = mul nsw i64 %tmp.227, %tmp.225, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.67 = load i64* %in.addr.4, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.67) nounwind
  %tmp.229 = trunc i64 %in.load.67 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.230 = sext i32 %tmp.229 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.68 = load i64* %in.addr.7, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.68) nounwind
  %tmp.231 = trunc i64 %in.load.68 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.232 = sext i32 %tmp.231 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.233 = mul nsw i64 %tmp.232, %tmp.230, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.69 = load i64* %in.addr.3, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.69) nounwind
  %tmp.234 = trunc i64 %in.load.69 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.235 = sext i32 %tmp.234 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.70 = load i64* %in.addr.8, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.70) nounwind
  %tmp.236 = trunc i64 %in.load.70 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.237 = sext i32 %tmp.236 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.238 = mul nsw i64 %tmp.237, %tmp.235, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.71 = load i64* %in.addr.2, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.71) nounwind
  %tmp.239 = trunc i64 %in.load.71 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.240 = sext i32 %tmp.239 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %in.load.72 = load i64* %in.addr.9, align 8, !dbg !229 ; [#uses=2 type=i64] [debug line = 425:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.72) nounwind
  %tmp.241 = trunc i64 %in.load.72 to i32, !dbg !229 ; [#uses=1 type=i32] [debug line = 425:3]
  %tmp.242 = sext i32 %tmp.241 to i64, !dbg !229  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.243 = mul nsw i64 %tmp.242, %tmp.240, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.244 = add i64 %tmp.233, %tmp.228, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.245 = add i64 %tmp.244, %tmp.238, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.246 = add i64 %tmp.245, %tmp.243, !dbg !229 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.247 = shl nsw i64 %tmp.246, 1, !dbg !229   ; [#uses=1 type=i64] [debug line = 425:3]
  %output.addr.11 = getelementptr inbounds i64* %output, i64 11, !dbg !229 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp.247, i64* %output.addr.11, align 8, !dbg !229 ; [debug line = 425:3]
  %in.load.73 = load i64* %in.addr.6, align 8, !dbg !230 ; [#uses=3 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.73) nounwind
  %tmp.248 = trunc i64 %in.load.73 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.249 = sext i32 %tmp.248 to i64, !dbg !230  ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.73) nounwind
  %tmp.250 = mul nsw i64 %tmp.249, %tmp.249, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %in.load.74 = load i64* %in.addr.4, align 8, !dbg !230 ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.74) nounwind
  %tmp.251 = trunc i64 %in.load.74 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.252 = sext i32 %tmp.251 to i64, !dbg !230  ; [#uses=1 type=i64] [debug line = 430:3]
  %in.load.75 = load i64* %in.addr.8, align 8, !dbg !230 ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.75) nounwind
  %tmp.253 = trunc i64 %in.load.75 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.254 = sext i32 %tmp.253 to i64, !dbg !230  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.255 = mul nsw i64 %tmp.254, %tmp.252, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %in.load.76 = load i64* %in.addr.5, align 8, !dbg !230 ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.76) nounwind
  %tmp.256 = trunc i64 %in.load.76 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.257 = sext i32 %tmp.256 to i64, !dbg !230  ; [#uses=1 type=i64] [debug line = 430:3]
  %in.load.77 = load i64* %in.addr.7, align 8, !dbg !230 ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.77) nounwind
  %tmp.258 = trunc i64 %in.load.77 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.259 = sext i32 %tmp.258 to i64, !dbg !230  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.260 = mul nsw i64 %tmp.259, %tmp.257, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %in.load.78 = load i64* %in.addr.3, align 8, !dbg !230 ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.78) nounwind
  %tmp.261 = trunc i64 %in.load.78 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.262 = sext i32 %tmp.261 to i64, !dbg !230  ; [#uses=1 type=i64] [debug line = 430:3]
  %in.load.79 = load i64* %in.addr.9, align 8, !dbg !230 ; [#uses=2 type=i64] [debug line = 430:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.79) nounwind
  %tmp.263 = trunc i64 %in.load.79 to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 430:3]
  %tmp.264 = sext i32 %tmp.263 to i64, !dbg !230  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.265 = mul nsw i64 %tmp.264, %tmp.262, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.266 = add nsw i64 %tmp.265, %tmp.260, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.267 = mul i64 %tmp.266, 2, !dbg !230       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.268 = add nsw i64 %tmp.267, %tmp.255, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.269 = mul i64 %tmp.268, 2, !dbg !230       ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.270 = add nsw i64 %tmp.269, %tmp.250, !dbg !230 ; [#uses=1 type=i64] [debug line = 430:3]
  %output.addr.12 = getelementptr inbounds i64* %output, i64 12, !dbg !230 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp.270, i64* %output.addr.12, align 8, !dbg !230 ; [debug line = 430:3]
  %in.load.80 = load i64* %in.addr.6, align 8, !dbg !231 ; [#uses=2 type=i64] [debug line = 435:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.80) nounwind
  %tmp.271 = trunc i64 %in.load.80 to i32, !dbg !231 ; [#uses=1 type=i32] [debug line = 435:3]
  %tmp.272 = sext i32 %tmp.271 to i64, !dbg !231  ; [#uses=1 type=i64] [debug line = 435:3]
  %in.load.81 = load i64* %in.addr.7, align 8, !dbg !231 ; [#uses=2 type=i64] [debug line = 435:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.81) nounwind
  %tmp.273 = trunc i64 %in.load.81 to i32, !dbg !231 ; [#uses=1 type=i32] [debug line = 435:3]
  %tmp.274 = sext i32 %tmp.273 to i64, !dbg !231  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.275 = mul nsw i64 %tmp.274, %tmp.272, !dbg !231 ; [#uses=1 type=i64] [debug line = 435:3]
  %in.load.82 = load i64* %in.addr.5, align 8, !dbg !231 ; [#uses=2 type=i64] [debug line = 435:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.82) nounwind
  %tmp.276 = trunc i64 %in.load.82 to i32, !dbg !231 ; [#uses=1 type=i32] [debug line = 435:3]
  %tmp.277 = sext i32 %tmp.276 to i64, !dbg !231  ; [#uses=1 type=i64] [debug line = 435:3]
  %in.load.83 = load i64* %in.addr.8, align 8, !dbg !231 ; [#uses=2 type=i64] [debug line = 435:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.83) nounwind
  %tmp.278 = trunc i64 %in.load.83 to i32, !dbg !231 ; [#uses=1 type=i32] [debug line = 435:3]
  %tmp.279 = sext i32 %tmp.278 to i64, !dbg !231  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.280 = mul nsw i64 %tmp.279, %tmp.277, !dbg !231 ; [#uses=1 type=i64] [debug line = 435:3]
  %in.load.84 = load i64* %in.addr.4, align 8, !dbg !231 ; [#uses=2 type=i64] [debug line = 435:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.84) nounwind
  %tmp.281 = trunc i64 %in.load.84 to i32, !dbg !231 ; [#uses=1 type=i32] [debug line = 435:3]
  %tmp.282 = sext i32 %tmp.281 to i64, !dbg !231  ; [#uses=1 type=i64] [debug line = 435:3]
  %in.load.85 = load i64* %in.addr.9, align 8, !dbg !231 ; [#uses=2 type=i64] [debug line = 435:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.85) nounwind
  %tmp.283 = trunc i64 %in.load.85 to i32, !dbg !231 ; [#uses=1 type=i32] [debug line = 435:3]
  %tmp.284 = sext i32 %tmp.283 to i64, !dbg !231  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.285 = mul nsw i64 %tmp.284, %tmp.282, !dbg !231 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.286 = add i64 %tmp.280, %tmp.275, !dbg !231 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.287 = add i64 %tmp.286, %tmp.285, !dbg !231 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.288 = shl nsw i64 %tmp.287, 1, !dbg !231   ; [#uses=1 type=i64] [debug line = 435:3]
  %output.addr.13 = getelementptr inbounds i64* %output, i64 13, !dbg !231 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp.288, i64* %output.addr.13, align 8, !dbg !231 ; [debug line = 435:3]
  %in.load.86 = load i64* %in.addr.7, align 8, !dbg !232 ; [#uses=3 type=i64] [debug line = 439:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.86) nounwind
  %tmp.289 = trunc i64 %in.load.86 to i32, !dbg !232 ; [#uses=1 type=i32] [debug line = 439:3]
  %tmp.290 = sext i32 %tmp.289 to i64, !dbg !232  ; [#uses=2 type=i64] [debug line = 439:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.86) nounwind
  %tmp.291 = mul nsw i64 %tmp.290, %tmp.290, !dbg !232 ; [#uses=1 type=i64] [debug line = 439:3]
  %in.load.87 = load i64* %in.addr.6, align 8, !dbg !232 ; [#uses=2 type=i64] [debug line = 439:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.87) nounwind
  %tmp.292 = trunc i64 %in.load.87 to i32, !dbg !232 ; [#uses=1 type=i32] [debug line = 439:3]
  %tmp.293 = sext i32 %tmp.292 to i64, !dbg !232  ; [#uses=1 type=i64] [debug line = 439:3]
  %in.load.88 = load i64* %in.addr.8, align 8, !dbg !232 ; [#uses=2 type=i64] [debug line = 439:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.88) nounwind
  %tmp.294 = trunc i64 %in.load.88 to i32, !dbg !232 ; [#uses=1 type=i32] [debug line = 439:3]
  %tmp.295 = sext i32 %tmp.294 to i64, !dbg !232  ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.296 = mul nsw i64 %tmp.295, %tmp.293, !dbg !232 ; [#uses=1 type=i64] [debug line = 439:3]
  %in.load.89 = load i64* %in.addr.5, align 8, !dbg !232 ; [#uses=2 type=i64] [debug line = 439:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.89) nounwind
  %tmp.297 = trunc i64 %in.load.89 to i32, !dbg !232 ; [#uses=1 type=i32] [debug line = 439:3]
  %tmp.298 = sext i32 %tmp.297 to i64, !dbg !232  ; [#uses=1 type=i64] [debug line = 439:3]
  %in.load.90 = load i64* %in.addr.9, align 8, !dbg !232 ; [#uses=2 type=i64] [debug line = 439:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.90) nounwind
  %tmp.299 = trunc i64 %in.load.90 to i32, !dbg !232 ; [#uses=1 type=i32] [debug line = 439:3]
  %tmp.300 = sext i32 %tmp.299 to i64, !dbg !232  ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.301 = mul i64 %tmp.298, 2, !dbg !232       ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.302 = mul i64 %tmp.301, %tmp.300, !dbg !232 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.303 = add i64 %tmp.296, %tmp.291, !dbg !232 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.304 = add i64 %tmp.303, %tmp.302, !dbg !232 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.305 = shl nsw i64 %tmp.304, 1, !dbg !232   ; [#uses=1 type=i64] [debug line = 439:3]
  %output.addr.14 = getelementptr inbounds i64* %output, i64 14, !dbg !232 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp.305, i64* %output.addr.14, align 8, !dbg !232 ; [debug line = 439:3]
  %in.load.91 = load i64* %in.addr.7, align 8, !dbg !233 ; [#uses=2 type=i64] [debug line = 443:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.91) nounwind
  %tmp.306 = trunc i64 %in.load.91 to i32, !dbg !233 ; [#uses=1 type=i32] [debug line = 443:3]
  %tmp.307 = sext i32 %tmp.306 to i64, !dbg !233  ; [#uses=1 type=i64] [debug line = 443:3]
  %in.load.92 = load i64* %in.addr.8, align 8, !dbg !233 ; [#uses=2 type=i64] [debug line = 443:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.92) nounwind
  %tmp.308 = trunc i64 %in.load.92 to i32, !dbg !233 ; [#uses=1 type=i32] [debug line = 443:3]
  %tmp.309 = sext i32 %tmp.308 to i64, !dbg !233  ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.310 = mul nsw i64 %tmp.309, %tmp.307, !dbg !233 ; [#uses=1 type=i64] [debug line = 443:3]
  %in.load.93 = load i64* %in.addr.6, align 8, !dbg !233 ; [#uses=2 type=i64] [debug line = 443:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.93) nounwind
  %tmp.311 = trunc i64 %in.load.93 to i32, !dbg !233 ; [#uses=1 type=i32] [debug line = 443:3]
  %tmp.312 = sext i32 %tmp.311 to i64, !dbg !233  ; [#uses=1 type=i64] [debug line = 443:3]
  %in.load.94 = load i64* %in.addr.9, align 8, !dbg !233 ; [#uses=2 type=i64] [debug line = 443:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.94) nounwind
  %tmp.313 = trunc i64 %in.load.94 to i32, !dbg !233 ; [#uses=1 type=i32] [debug line = 443:3]
  %tmp.314 = sext i32 %tmp.313 to i64, !dbg !233  ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.315 = mul nsw i64 %tmp.314, %tmp.312, !dbg !233 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.316 = add nsw i64 %tmp.315, %tmp.310, !dbg !233 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.317 = shl nsw i64 %tmp.316, 1, !dbg !233   ; [#uses=1 type=i64] [debug line = 443:3]
  %output.addr.15 = getelementptr inbounds i64* %output, i64 15, !dbg !233 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp.317, i64* %output.addr.15, align 8, !dbg !233 ; [debug line = 443:3]
  %in.load.95 = load i64* %in.addr.8, align 8, !dbg !234 ; [#uses=3 type=i64] [debug line = 446:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.95) nounwind
  %tmp.318 = trunc i64 %in.load.95 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 446:3]
  %tmp.319 = sext i32 %tmp.318 to i64, !dbg !234  ; [#uses=2 type=i64] [debug line = 446:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.95) nounwind
  %tmp.320 = mul nsw i64 %tmp.319, %tmp.319, !dbg !234 ; [#uses=1 type=i64] [debug line = 446:3]
  %in.load.96 = load i64* %in.addr.7, align 8, !dbg !234 ; [#uses=2 type=i64] [debug line = 446:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.96) nounwind
  %tmp.321 = trunc i64 %in.load.96 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 446:3]
  %tmp.322 = sext i32 %tmp.321 to i64, !dbg !234  ; [#uses=1 type=i64] [debug line = 446:3]
  %in.load.97 = load i64* %in.addr.9, align 8, !dbg !234 ; [#uses=2 type=i64] [debug line = 446:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.97) nounwind
  %tmp.323 = trunc i64 %in.load.97 to i32, !dbg !234 ; [#uses=1 type=i32] [debug line = 446:3]
  %tmp.324 = sext i32 %tmp.323 to i64, !dbg !234  ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.325 = mul i64 %tmp.322, 4, !dbg !234       ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.326 = mul i64 %tmp.325, %tmp.324, !dbg !234 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.327 = add nsw i64 %tmp.326, %tmp.320, !dbg !234 ; [#uses=1 type=i64] [debug line = 446:3]
  %output.addr.16 = getelementptr inbounds i64* %output, i64 16, !dbg !234 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp.327, i64* %output.addr.16, align 8, !dbg !234 ; [debug line = 446:3]
  %in.load.98 = load i64* %in.addr.8, align 8, !dbg !235 ; [#uses=2 type=i64] [debug line = 449:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.98) nounwind
  %tmp.328 = trunc i64 %in.load.98 to i32, !dbg !235 ; [#uses=1 type=i32] [debug line = 449:3]
  %tmp.329 = sext i32 %tmp.328 to i64, !dbg !235  ; [#uses=1 type=i64] [debug line = 449:3]
  %in.load.99 = load i64* %in.addr.9, align 8, !dbg !235 ; [#uses=2 type=i64] [debug line = 449:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.99) nounwind
  %tmp.330 = trunc i64 %in.load.99 to i32, !dbg !235 ; [#uses=1 type=i32] [debug line = 449:3]
  %tmp.331 = sext i32 %tmp.330 to i64, !dbg !235  ; [#uses=1 type=i64] [debug line = 449:3]
  %tmp.332 = mul i64 %tmp.329, 2, !dbg !235       ; [#uses=1 type=i64] [debug line = 449:3]
  %tmp.333 = mul i64 %tmp.332, %tmp.331, !dbg !235 ; [#uses=1 type=i64] [debug line = 449:3]
  %output.addr.17 = getelementptr inbounds i64* %output, i64 17, !dbg !235 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp.333, i64* %output.addr.17, align 8, !dbg !235 ; [debug line = 449:3]
  %in.load.100 = load i64* %in.addr.9, align 8, !dbg !236 ; [#uses=3 type=i64] [debug line = 451:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.100) nounwind
  %tmp.334 = trunc i64 %in.load.100 to i32, !dbg !236 ; [#uses=1 type=i32] [debug line = 451:3]
  %tmp.335 = sext i32 %tmp.334 to i64, !dbg !236  ; [#uses=2 type=i64] [debug line = 451:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.100) nounwind
  %tmp.336 = mul i64 %tmp.335, 2, !dbg !236       ; [#uses=1 type=i64] [debug line = 451:3]
  %tmp.337 = mul i64 %tmp.336, %tmp.335, !dbg !236 ; [#uses=1 type=i64] [debug line = 451:3]
  %output.addr.18 = getelementptr inbounds i64* %output, i64 18, !dbg !236 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp.337, i64* %output.addr.18, align 8, !dbg !236 ; [debug line = 451:3]
  ret void, !dbg !237                             ; [debug line = 452:1]
}

; [#uses=42]
define internal fastcc void @fsquare(i64* %output, i64* %in) nounwind uwtable {
  %t = alloca [19 x i64], align 16                ; [#uses=1 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !238), !dbg !239 ; [debug line = 462:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !240), !dbg !241 ; [debug line = 462:35] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !242 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !244 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !245), !dbg !249 ; [debug line = 465:7] [debug variable = t]
  %t.addr = getelementptr inbounds [19 x i64]* %t, i64 0, i64 0, !dbg !250 ; [#uses=4 type=i64*] [debug line = 466:3]
  call fastcc void @fsquare_inner(i64* %t.addr, i64* %in), !dbg !250 ; [debug line = 466:3]
  call fastcc void @freduce_degree(i64* %t.addr), !dbg !251 ; [debug line = 470:3]
  call fastcc void @freduce_coefficients(i64* %t.addr), !dbg !252 ; [debug line = 471:3]
  call fastcc void @_memcpy(i64* %output, i64* %t.addr, i32 10), !dbg !253 ; [debug line = 473:3]
  ret void, !dbg !254                             ; [debug line = 474:1]
}

; [#uses=1]
define internal fastcc void @fscalar_product(i64* %output, i64* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !255), !dbg !256 ; [debug line = 107:35] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !257), !dbg !258 ; [debug line = 107:55] [debug variable = in]
  br label %1, !dbg !259                          ; [debug line = 109:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp eq i32 %i, 10, !dbg !259            ; [#uses=1 type=i1] [debug line = 109:8]
  br i1 %tmp, label %3, label %2, !dbg !259       ; [debug line = 109:8]

; <label>:2                                       ; preds = %1
  %tmp.338 = zext i32 %i to i64, !dbg !262        ; [#uses=2 type=i64] [debug line = 110:5]
  %in.addr = getelementptr inbounds i64* %in, i64 %tmp.338, !dbg !262 ; [#uses=1 type=i64*] [debug line = 110:5]
  %in.load = load i64* %in.addr, align 8, !dbg !262 ; [#uses=2 type=i64] [debug line = 110:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load) nounwind
  %tmp.339 = mul nsw i64 %in.load, 121665, !dbg !262 ; [#uses=1 type=i64] [debug line = 110:5]
  %output.addr = getelementptr inbounds i64* %output, i64 %tmp.338, !dbg !262 ; [#uses=1 type=i64*] [debug line = 110:5]
  store i64 %tmp.339, i64* %output.addr, align 8, !dbg !262 ; [debug line = 110:5]
  %i.3 = add i32 %i, 1, !dbg !264                 ; [#uses=1 type=i32] [debug line = 109:23]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !265), !dbg !264 ; [debug line = 109:23] [debug variable = i]
  br label %1, !dbg !264                          ; [debug line = 109:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !266                             ; [debug line = 112:1]
}

; [#uses=7]
define internal fastcc void @freduce_degree(i64* %output) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !267), !dbg !268 ; [debug line = 229:34] [debug variable = output]
  %output.addr = getelementptr inbounds i64* %output, i64 18, !dbg !269 ; [#uses=1 type=i64*] [debug line = 234:3]
  %output.load = load i64* %output.addr, align 8, !dbg !269 ; [#uses=6 type=i64] [debug line = 234:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load) nounwind
  %tmp = shl i64 %output.load, 4, !dbg !269       ; [#uses=1 type=i64] [debug line = 234:3]
  %output.addr.19 = getelementptr inbounds i64* %output, i64 8, !dbg !269 ; [#uses=2 type=i64*] [debug line = 234:3]
  %output.load.2 = load i64* %output.addr.19, align 8, !dbg !269 ; [#uses=2 type=i64] [debug line = 234:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.2) nounwind
  %tmp.341 = add nsw i64 %output.load.2, %tmp, !dbg !269 ; [#uses=2 type=i64] [debug line = 234:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load) nounwind
  %tmp.342 = shl i64 %output.load, 1, !dbg !271   ; [#uses=1 type=i64] [debug line = 235:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.341) nounwind
  %tmp.343 = add nsw i64 %tmp.341, %tmp.342, !dbg !271 ; [#uses=2 type=i64] [debug line = 235:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.343) nounwind
  %tmp.344 = add nsw i64 %tmp.343, %output.load, !dbg !272 ; [#uses=1 type=i64] [debug line = 236:3]
  store i64 %tmp.344, i64* %output.addr.19, align 8, !dbg !272 ; [debug line = 236:3]
  %output.addr.20 = getelementptr inbounds i64* %output, i64 17, !dbg !273 ; [#uses=1 type=i64*] [debug line = 237:3]
  %output.load.3 = load i64* %output.addr.20, align 8, !dbg !273 ; [#uses=6 type=i64] [debug line = 237:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.3) nounwind
  %tmp.345 = shl i64 %output.load.3, 4, !dbg !273 ; [#uses=1 type=i64] [debug line = 237:3]
  %output.addr.21 = getelementptr inbounds i64* %output, i64 7, !dbg !273 ; [#uses=2 type=i64*] [debug line = 237:3]
  %output.load.4 = load i64* %output.addr.21, align 8, !dbg !273 ; [#uses=2 type=i64] [debug line = 237:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.4) nounwind
  %tmp.346 = add nsw i64 %output.load.4, %tmp.345, !dbg !273 ; [#uses=2 type=i64] [debug line = 237:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.3) nounwind
  %tmp.347 = shl i64 %output.load.3, 1, !dbg !274 ; [#uses=1 type=i64] [debug line = 238:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.346) nounwind
  %tmp.348 = add nsw i64 %tmp.346, %tmp.347, !dbg !274 ; [#uses=2 type=i64] [debug line = 238:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.348) nounwind
  %tmp.349 = add nsw i64 %tmp.348, %output.load.3, !dbg !275 ; [#uses=1 type=i64] [debug line = 239:3]
  store i64 %tmp.349, i64* %output.addr.21, align 8, !dbg !275 ; [debug line = 239:3]
  %output.addr.22 = getelementptr inbounds i64* %output, i64 16, !dbg !276 ; [#uses=1 type=i64*] [debug line = 240:3]
  %output.load.5 = load i64* %output.addr.22, align 8, !dbg !276 ; [#uses=6 type=i64] [debug line = 240:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.5) nounwind
  %tmp.350 = shl i64 %output.load.5, 4, !dbg !276 ; [#uses=1 type=i64] [debug line = 240:3]
  %output.addr.23 = getelementptr inbounds i64* %output, i64 6, !dbg !276 ; [#uses=2 type=i64*] [debug line = 240:3]
  %output.load.6 = load i64* %output.addr.23, align 8, !dbg !276 ; [#uses=2 type=i64] [debug line = 240:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.6) nounwind
  %tmp.351 = add nsw i64 %output.load.6, %tmp.350, !dbg !276 ; [#uses=2 type=i64] [debug line = 240:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.5) nounwind
  %tmp.352 = shl i64 %output.load.5, 1, !dbg !277 ; [#uses=1 type=i64] [debug line = 241:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.351) nounwind
  %tmp.353 = add nsw i64 %tmp.351, %tmp.352, !dbg !277 ; [#uses=2 type=i64] [debug line = 241:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.5) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.353) nounwind
  %tmp.354 = add nsw i64 %tmp.353, %output.load.5, !dbg !278 ; [#uses=1 type=i64] [debug line = 242:3]
  store i64 %tmp.354, i64* %output.addr.23, align 8, !dbg !278 ; [debug line = 242:3]
  %output.addr.24 = getelementptr inbounds i64* %output, i64 15, !dbg !279 ; [#uses=1 type=i64*] [debug line = 243:3]
  %output.load.7 = load i64* %output.addr.24, align 8, !dbg !279 ; [#uses=6 type=i64] [debug line = 243:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.7) nounwind
  %tmp.355 = shl i64 %output.load.7, 4, !dbg !279 ; [#uses=1 type=i64] [debug line = 243:3]
  %output.addr.25 = getelementptr inbounds i64* %output, i64 5, !dbg !279 ; [#uses=2 type=i64*] [debug line = 243:3]
  %output.load.8 = load i64* %output.addr.25, align 8, !dbg !279 ; [#uses=2 type=i64] [debug line = 243:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.8) nounwind
  %tmp.356 = add nsw i64 %output.load.8, %tmp.355, !dbg !279 ; [#uses=2 type=i64] [debug line = 243:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.7) nounwind
  %tmp.357 = shl i64 %output.load.7, 1, !dbg !280 ; [#uses=1 type=i64] [debug line = 244:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.356) nounwind
  %tmp.358 = add nsw i64 %tmp.356, %tmp.357, !dbg !280 ; [#uses=2 type=i64] [debug line = 244:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.7) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.358) nounwind
  %tmp.359 = add nsw i64 %tmp.358, %output.load.7, !dbg !281 ; [#uses=1 type=i64] [debug line = 245:3]
  store i64 %tmp.359, i64* %output.addr.25, align 8, !dbg !281 ; [debug line = 245:3]
  %output.addr.26 = getelementptr inbounds i64* %output, i64 14, !dbg !282 ; [#uses=1 type=i64*] [debug line = 246:3]
  %output.load.9 = load i64* %output.addr.26, align 8, !dbg !282 ; [#uses=6 type=i64] [debug line = 246:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.9) nounwind
  %tmp.360 = shl i64 %output.load.9, 4, !dbg !282 ; [#uses=1 type=i64] [debug line = 246:3]
  %output.addr.27 = getelementptr inbounds i64* %output, i64 4, !dbg !282 ; [#uses=2 type=i64*] [debug line = 246:3]
  %output.load.10 = load i64* %output.addr.27, align 8, !dbg !282 ; [#uses=2 type=i64] [debug line = 246:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.10) nounwind
  %tmp.361 = add nsw i64 %output.load.10, %tmp.360, !dbg !282 ; [#uses=2 type=i64] [debug line = 246:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.9) nounwind
  %tmp.362 = shl i64 %output.load.9, 1, !dbg !283 ; [#uses=1 type=i64] [debug line = 247:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.361) nounwind
  %tmp.363 = add nsw i64 %tmp.361, %tmp.362, !dbg !283 ; [#uses=2 type=i64] [debug line = 247:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.9) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.363) nounwind
  %tmp.364 = add nsw i64 %tmp.363, %output.load.9, !dbg !284 ; [#uses=1 type=i64] [debug line = 248:3]
  store i64 %tmp.364, i64* %output.addr.27, align 8, !dbg !284 ; [debug line = 248:3]
  %output.addr.28 = getelementptr inbounds i64* %output, i64 13, !dbg !285 ; [#uses=1 type=i64*] [debug line = 249:3]
  %output.load.11 = load i64* %output.addr.28, align 8, !dbg !285 ; [#uses=6 type=i64] [debug line = 249:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.11) nounwind
  %tmp.365 = shl i64 %output.load.11, 4, !dbg !285 ; [#uses=1 type=i64] [debug line = 249:3]
  %output.addr.29 = getelementptr inbounds i64* %output, i64 3, !dbg !285 ; [#uses=2 type=i64*] [debug line = 249:3]
  %output.load.12 = load i64* %output.addr.29, align 8, !dbg !285 ; [#uses=2 type=i64] [debug line = 249:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.12) nounwind
  %tmp.366 = add nsw i64 %output.load.12, %tmp.365, !dbg !285 ; [#uses=2 type=i64] [debug line = 249:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.11) nounwind
  %tmp.367 = shl i64 %output.load.11, 1, !dbg !286 ; [#uses=1 type=i64] [debug line = 250:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.366) nounwind
  %tmp.368 = add nsw i64 %tmp.366, %tmp.367, !dbg !286 ; [#uses=2 type=i64] [debug line = 250:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.368) nounwind
  %tmp.369 = add nsw i64 %tmp.368, %output.load.11, !dbg !287 ; [#uses=1 type=i64] [debug line = 251:3]
  store i64 %tmp.369, i64* %output.addr.29, align 8, !dbg !287 ; [debug line = 251:3]
  %output.addr.30 = getelementptr inbounds i64* %output, i64 12, !dbg !288 ; [#uses=1 type=i64*] [debug line = 252:3]
  %output.load.13 = load i64* %output.addr.30, align 8, !dbg !288 ; [#uses=6 type=i64] [debug line = 252:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.13) nounwind
  %tmp.370 = shl i64 %output.load.13, 4, !dbg !288 ; [#uses=1 type=i64] [debug line = 252:3]
  %output.addr.31 = getelementptr inbounds i64* %output, i64 2, !dbg !288 ; [#uses=2 type=i64*] [debug line = 252:3]
  %output.load.14 = load i64* %output.addr.31, align 8, !dbg !288 ; [#uses=2 type=i64] [debug line = 252:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.14) nounwind
  %tmp.371 = add nsw i64 %output.load.14, %tmp.370, !dbg !288 ; [#uses=2 type=i64] [debug line = 252:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.13) nounwind
  %tmp.372 = shl i64 %output.load.13, 1, !dbg !289 ; [#uses=1 type=i64] [debug line = 253:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.371) nounwind
  %tmp.373 = add nsw i64 %tmp.371, %tmp.372, !dbg !289 ; [#uses=2 type=i64] [debug line = 253:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.373) nounwind
  %tmp.374 = add nsw i64 %tmp.373, %output.load.13, !dbg !290 ; [#uses=1 type=i64] [debug line = 254:3]
  store i64 %tmp.374, i64* %output.addr.31, align 8, !dbg !290 ; [debug line = 254:3]
  %output.addr.32 = getelementptr inbounds i64* %output, i64 11, !dbg !291 ; [#uses=1 type=i64*] [debug line = 255:3]
  %output.load.15 = load i64* %output.addr.32, align 8, !dbg !291 ; [#uses=6 type=i64] [debug line = 255:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.15) nounwind
  %tmp.375 = shl i64 %output.load.15, 4, !dbg !291 ; [#uses=1 type=i64] [debug line = 255:3]
  %output.addr.33 = getelementptr inbounds i64* %output, i64 1, !dbg !291 ; [#uses=2 type=i64*] [debug line = 255:3]
  %output.load.16 = load i64* %output.addr.33, align 8, !dbg !291 ; [#uses=2 type=i64] [debug line = 255:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.16) nounwind
  %tmp.376 = add nsw i64 %output.load.16, %tmp.375, !dbg !291 ; [#uses=2 type=i64] [debug line = 255:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.15) nounwind
  %tmp.377 = shl i64 %output.load.15, 1, !dbg !292 ; [#uses=1 type=i64] [debug line = 256:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.376) nounwind
  %tmp.378 = add nsw i64 %tmp.376, %tmp.377, !dbg !292 ; [#uses=2 type=i64] [debug line = 256:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.15) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.378) nounwind
  %tmp.379 = add nsw i64 %tmp.378, %output.load.15, !dbg !293 ; [#uses=1 type=i64] [debug line = 257:3]
  store i64 %tmp.379, i64* %output.addr.33, align 8, !dbg !293 ; [debug line = 257:3]
  %output.addr.34 = getelementptr inbounds i64* %output, i64 10, !dbg !294 ; [#uses=1 type=i64*] [debug line = 258:3]
  %output.load.17 = load i64* %output.addr.34, align 8, !dbg !294 ; [#uses=6 type=i64] [debug line = 258:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.17) nounwind
  %tmp.380 = shl i64 %output.load.17, 4, !dbg !294 ; [#uses=1 type=i64] [debug line = 258:3]
  %output.load.18 = load i64* %output, align 8, !dbg !294 ; [#uses=2 type=i64] [debug line = 258:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.18) nounwind
  %tmp.381 = add nsw i64 %output.load.18, %tmp.380, !dbg !294 ; [#uses=2 type=i64] [debug line = 258:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.17) nounwind
  %tmp.382 = shl i64 %output.load.17, 1, !dbg !295 ; [#uses=1 type=i64] [debug line = 259:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.381) nounwind
  %tmp.383 = add nsw i64 %tmp.381, %tmp.382, !dbg !295 ; [#uses=2 type=i64] [debug line = 259:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.17) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.383) nounwind
  %tmp.384 = add nsw i64 %tmp.383, %output.load.17, !dbg !296 ; [#uses=1 type=i64] [debug line = 260:3]
  store i64 %tmp.384, i64* %output, align 8, !dbg !296 ; [debug line = 260:3]
  ret void, !dbg !297                             ; [debug line = 261:1]
}

; [#uses=8]
define internal fastcc void @freduce_coefficients(i64* %output) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !298), !dbg !299 ; [debug line = 302:40] [debug variable = output]
  %output.addr = getelementptr inbounds i64* %output, i64 10, !dbg !300 ; [#uses=3 type=i64*] [debug line = 305:3]
  store i64 0, i64* %output.addr, align 8, !dbg !300 ; [debug line = 305:3]
  br label %1, !dbg !302                          ; [debug line = 307:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=4 type=i32]
  %tmp = icmp ult i32 %i, 10, !dbg !302           ; [#uses=1 type=i1] [debug line = 307:8]
  br i1 %tmp, label %2, label %3, !dbg !302       ; [debug line = 307:8]

; <label>:2                                       ; preds = %1
  %tmp.385 = zext i32 %i to i64, !dbg !304        ; [#uses=1 type=i64] [debug line = 308:17]
  %output.addr.35 = getelementptr inbounds i64* %output, i64 %tmp.385, !dbg !304 ; [#uses=3 type=i64*] [debug line = 308:17]
  %output.load = load i64* %output.addr.35, align 8, !dbg !304 ; [#uses=2 type=i64] [debug line = 308:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load) nounwind
  %over = call fastcc i64 @div_by_2_26(i64 %output.load), !dbg !304 ; [#uses=2 type=i64] [debug line = 308:17]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !306), !dbg !304 ; [debug line = 308:17] [debug variable = over]
  %tmp.386 = shl i64 %over, 26, !dbg !307         ; [#uses=1 type=i64] [debug line = 313:5]
  %output.load.19 = load i64* %output.addr.35, align 8, !dbg !307 ; [#uses=2 type=i64] [debug line = 313:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.19) nounwind
  %tmp.387 = sub nsw i64 %output.load.19, %tmp.386, !dbg !307 ; [#uses=1 type=i64] [debug line = 313:5]
  store i64 %tmp.387, i64* %output.addr.35, align 8, !dbg !307 ; [debug line = 313:5]
  %tmp.388 = or i32 %i, 1, !dbg !308              ; [#uses=1 type=i32] [debug line = 314:5]
  %tmp.389 = zext i32 %tmp.388 to i64, !dbg !308  ; [#uses=1 type=i64] [debug line = 314:5]
  %output.addr.36 = getelementptr inbounds i64* %output, i64 %tmp.389, !dbg !308 ; [#uses=4 type=i64*] [debug line = 314:5]
  %output.load.20 = load i64* %output.addr.36, align 8, !dbg !308 ; [#uses=2 type=i64] [debug line = 314:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.20) nounwind
  %tmp.390 = add nsw i64 %output.load.20, %over, !dbg !308 ; [#uses=3 type=i64] [debug line = 314:5]
  store i64 %tmp.390, i64* %output.addr.36, align 8, !dbg !308 ; [debug line = 314:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.390) nounwind
  %over.1 = call fastcc i64 @div_by_2_25(i64 %tmp.390), !dbg !309 ; [#uses=2 type=i64] [debug line = 322:12]
  call void @llvm.dbg.value(metadata !{i64 %over.1}, i64 0, metadata !306), !dbg !309 ; [debug line = 322:12] [debug variable = over]
  %tmp.391 = shl i64 %over.1, 25, !dbg !310       ; [#uses=1 type=i64] [debug line = 323:5]
  %output.load.21 = load i64* %output.addr.36, align 8, !dbg !310 ; [#uses=2 type=i64] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.21) nounwind
  %tmp.392 = sub nsw i64 %output.load.21, %tmp.391, !dbg !310 ; [#uses=1 type=i64] [debug line = 323:5]
  store i64 %tmp.392, i64* %output.addr.36, align 8, !dbg !310 ; [debug line = 323:5]
  %i.4 = add i32 %i, 2, !dbg !311                 ; [#uses=2 type=i32] [debug line = 324:5]
  %tmp.394 = zext i32 %i.4 to i64, !dbg !311      ; [#uses=1 type=i64] [debug line = 324:5]
  %output.addr.37 = getelementptr inbounds i64* %output, i64 %tmp.394, !dbg !311 ; [#uses=2 type=i64*] [debug line = 324:5]
  %output.load.22 = load i64* %output.addr.37, align 8, !dbg !311 ; [#uses=2 type=i64] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.22) nounwind
  %tmp.395 = add nsw i64 %output.load.22, %over.1, !dbg !311 ; [#uses=1 type=i64] [debug line = 324:5]
  store i64 %tmp.395, i64* %output.addr.37, align 8, !dbg !311 ; [debug line = 324:5]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !312), !dbg !313 ; [debug line = 307:23] [debug variable = i]
  br label %1, !dbg !313                          ; [debug line = 307:23]

; <label>:3                                       ; preds = %1
  %output.load.23 = load i64* %output.addr, align 8, !dbg !314 ; [#uses=6 type=i64] [debug line = 327:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.23) nounwind
  %tmp.396 = shl i64 %output.load.23, 4, !dbg !314 ; [#uses=1 type=i64] [debug line = 327:3]
  %output.load.24 = load i64* %output, align 8, !dbg !314 ; [#uses=2 type=i64] [debug line = 327:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.24) nounwind
  %tmp.397 = add nsw i64 %output.load.24, %tmp.396, !dbg !314 ; [#uses=2 type=i64] [debug line = 327:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.23) nounwind
  %tmp.398 = shl i64 %output.load.23, 1, !dbg !315 ; [#uses=1 type=i64] [debug line = 328:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.397) nounwind
  %tmp.399 = add nsw i64 %tmp.397, %tmp.398, !dbg !315 ; [#uses=2 type=i64] [debug line = 328:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.23) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.399) nounwind
  %tmp.400 = add nsw i64 %tmp.399, %output.load.23, !dbg !316 ; [#uses=3 type=i64] [debug line = 329:3]
  store i64 %tmp.400, i64* %output, align 8, !dbg !316 ; [debug line = 329:3]
  store i64 0, i64* %output.addr, align 8, !dbg !317 ; [debug line = 331:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.400) nounwind
  %over.2 = call fastcc i64 @div_by_2_26(i64 %tmp.400), !dbg !318 ; [#uses=2 type=i64] [debug line = 336:17]
  call void @llvm.dbg.value(metadata !{i64 %over.2}, i64 0, metadata !320), !dbg !318 ; [debug line = 336:17] [debug variable = over]
  %tmp.401 = shl i64 %over.2, 26, !dbg !321       ; [#uses=1 type=i64] [debug line = 337:5]
  %output.load.25 = load i64* %output, align 8, !dbg !321 ; [#uses=2 type=i64] [debug line = 337:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.25) nounwind
  %tmp.402 = sub nsw i64 %output.load.25, %tmp.401, !dbg !321 ; [#uses=1 type=i64] [debug line = 337:5]
  store i64 %tmp.402, i64* %output, align 8, !dbg !321 ; [debug line = 337:5]
  %output.addr.38 = getelementptr inbounds i64* %output, i64 1, !dbg !322 ; [#uses=2 type=i64*] [debug line = 338:5]
  %output.load.26 = load i64* %output.addr.38, align 8, !dbg !322 ; [#uses=2 type=i64] [debug line = 338:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load.26) nounwind
  %tmp.403 = add nsw i64 %output.load.26, %over.2, !dbg !322 ; [#uses=1 type=i64] [debug line = 338:5]
  store i64 %tmp.403, i64* %output.addr.38, align 8, !dbg !322 ; [debug line = 338:5]
  ret void, !dbg !323                             ; [debug line = 343:1]
}

; [#uses=6]
define internal fastcc void @fproduct(i64* %output, i64* %in2, i64* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !324), !dbg !325 ; [debug line = 120:28] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in2}, i64 0, metadata !326), !dbg !327 ; [debug line = 120:48] [debug variable = in2]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !328), !dbg !329 ; [debug line = 120:65] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !330 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !332 ; [debug line = 122:1]
  %in2.load = load i64* %in2, align 8, !dbg !333  ; [#uses=2 type=i64] [debug line = 123:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load) nounwind
  %tmp = trunc i64 %in2.load to i32, !dbg !333    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp.404 = sext i32 %tmp to i64, !dbg !333      ; [#uses=1 type=i64] [debug line = 123:2]
  %in.load = load i64* %in, align 8, !dbg !333    ; [#uses=2 type=i64] [debug line = 123:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load) nounwind
  %tmp.405 = trunc i64 %in.load to i32, !dbg !333 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp.406 = sext i32 %tmp.405 to i64, !dbg !333  ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp.407 = mul nsw i64 %tmp.406, %tmp.404, !dbg !333 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp.407, i64* %output, align 8, !dbg !333 ; [debug line = 123:2]
  %in2.load.1 = load i64* %in2, align 8, !dbg !334 ; [#uses=2 type=i64] [debug line = 124:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.1) nounwind
  %tmp.408 = trunc i64 %in2.load.1 to i32, !dbg !334 ; [#uses=1 type=i32] [debug line = 124:3]
  %tmp.409 = sext i32 %tmp.408 to i64, !dbg !334  ; [#uses=1 type=i64] [debug line = 124:3]
  %in.addr = getelementptr inbounds i64* %in, i64 1, !dbg !334 ; [#uses=10 type=i64*] [debug line = 124:3]
  %in.load.101 = load i64* %in.addr, align 8, !dbg !334 ; [#uses=2 type=i64] [debug line = 124:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.101) nounwind
  %tmp.410 = trunc i64 %in.load.101 to i32, !dbg !334 ; [#uses=1 type=i32] [debug line = 124:3]
  %tmp.411 = sext i32 %tmp.410 to i64, !dbg !334  ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.412 = mul nsw i64 %tmp.411, %tmp.409, !dbg !334 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2.addr = getelementptr inbounds i64* %in2, i64 1, !dbg !334 ; [#uses=10 type=i64*] [debug line = 124:3]
  %in2.load.2 = load i64* %in2.addr, align 8, !dbg !334 ; [#uses=2 type=i64] [debug line = 124:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.2) nounwind
  %tmp.413 = trunc i64 %in2.load.2 to i32, !dbg !334 ; [#uses=1 type=i32] [debug line = 124:3]
  %tmp.414 = sext i32 %tmp.413 to i64, !dbg !334  ; [#uses=1 type=i64] [debug line = 124:3]
  %in.load.102 = load i64* %in, align 8, !dbg !334 ; [#uses=2 type=i64] [debug line = 124:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.102) nounwind
  %tmp.415 = trunc i64 %in.load.102 to i32, !dbg !334 ; [#uses=1 type=i32] [debug line = 124:3]
  %tmp.416 = sext i32 %tmp.415 to i64, !dbg !334  ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.417 = mul nsw i64 %tmp.416, %tmp.414, !dbg !334 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.418 = add nsw i64 %tmp.417, %tmp.412, !dbg !334 ; [#uses=1 type=i64] [debug line = 124:3]
  %output.addr = getelementptr inbounds i64* %output, i64 1, !dbg !334 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp.418, i64* %output.addr, align 8, !dbg !334 ; [debug line = 124:3]
  %in2.load.3 = load i64* %in2.addr, align 8, !dbg !335 ; [#uses=2 type=i64] [debug line = 126:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.3) nounwind
  %tmp.419 = trunc i64 %in2.load.3 to i32, !dbg !335 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.420 = sext i32 %tmp.419 to i64, !dbg !335  ; [#uses=1 type=i64] [debug line = 126:3]
  %in.load.103 = load i64* %in.addr, align 8, !dbg !335 ; [#uses=2 type=i64] [debug line = 126:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.103) nounwind
  %tmp.421 = trunc i64 %in.load.103 to i32, !dbg !335 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.422 = sext i32 %tmp.421 to i64, !dbg !335  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.423 = mul i64 %tmp.420, 2, !dbg !335       ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.424 = mul i64 %tmp.423, %tmp.422, !dbg !335 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2.load.4 = load i64* %in2, align 8, !dbg !335 ; [#uses=2 type=i64] [debug line = 126:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.4) nounwind
  %tmp.425 = trunc i64 %in2.load.4 to i32, !dbg !335 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.426 = sext i32 %tmp.425 to i64, !dbg !335  ; [#uses=1 type=i64] [debug line = 126:3]
  %in.addr.10 = getelementptr inbounds i64* %in, i64 2, !dbg !335 ; [#uses=10 type=i64*] [debug line = 126:3]
  %in.load.104 = load i64* %in.addr.10, align 8, !dbg !335 ; [#uses=2 type=i64] [debug line = 126:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.104) nounwind
  %tmp.427 = trunc i64 %in.load.104 to i32, !dbg !335 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.428 = sext i32 %tmp.427 to i64, !dbg !335  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.429 = mul nsw i64 %tmp.428, %tmp.426, !dbg !335 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2.addr.1 = getelementptr inbounds i64* %in2, i64 2, !dbg !335 ; [#uses=10 type=i64*] [debug line = 126:3]
  %in2.load.5 = load i64* %in2.addr.1, align 8, !dbg !335 ; [#uses=2 type=i64] [debug line = 126:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.5) nounwind
  %tmp.430 = trunc i64 %in2.load.5 to i32, !dbg !335 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.431 = sext i32 %tmp.430 to i64, !dbg !335  ; [#uses=1 type=i64] [debug line = 126:3]
  %in.load.105 = load i64* %in, align 8, !dbg !335 ; [#uses=2 type=i64] [debug line = 126:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.105) nounwind
  %tmp.432 = trunc i64 %in.load.105 to i32, !dbg !335 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.433 = sext i32 %tmp.432 to i64, !dbg !335  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.434 = mul nsw i64 %tmp.433, %tmp.431, !dbg !335 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.435 = add i64 %tmp.429, %tmp.424, !dbg !335 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.436 = add i64 %tmp.435, %tmp.434, !dbg !335 ; [#uses=1 type=i64] [debug line = 126:3]
  %output.addr.39 = getelementptr inbounds i64* %output, i64 2, !dbg !335 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp.436, i64* %output.addr.39, align 8, !dbg !335 ; [debug line = 126:3]
  %in2.load.6 = load i64* %in2.addr, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.6) nounwind
  %tmp.437 = trunc i64 %in2.load.6 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.438 = sext i32 %tmp.437 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %in.load.106 = load i64* %in.addr.10, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.106) nounwind
  %tmp.439 = trunc i64 %in.load.106 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.440 = sext i32 %tmp.439 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.441 = mul nsw i64 %tmp.440, %tmp.438, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.load.7 = load i64* %in2.addr.1, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.7) nounwind
  %tmp.442 = trunc i64 %in2.load.7 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.443 = sext i32 %tmp.442 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %in.load.107 = load i64* %in.addr, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.107) nounwind
  %tmp.444 = trunc i64 %in.load.107 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.445 = sext i32 %tmp.444 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.446 = mul nsw i64 %tmp.445, %tmp.443, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.load.8 = load i64* %in2, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.8) nounwind
  %tmp.447 = trunc i64 %in2.load.8 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.448 = sext i32 %tmp.447 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %in.addr.11 = getelementptr inbounds i64* %in, i64 3, !dbg !336 ; [#uses=10 type=i64*] [debug line = 129:3]
  %in.load.108 = load i64* %in.addr.11, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.108) nounwind
  %tmp.449 = trunc i64 %in.load.108 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.450 = sext i32 %tmp.449 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.451 = mul nsw i64 %tmp.450, %tmp.448, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.addr.2 = getelementptr inbounds i64* %in2, i64 3, !dbg !336 ; [#uses=10 type=i64*] [debug line = 129:3]
  %in2.load.9 = load i64* %in2.addr.2, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.9) nounwind
  %tmp.452 = trunc i64 %in2.load.9 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.453 = sext i32 %tmp.452 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %in.load.109 = load i64* %in, align 8, !dbg !336 ; [#uses=2 type=i64] [debug line = 129:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.109) nounwind
  %tmp.454 = trunc i64 %in.load.109 to i32, !dbg !336 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.455 = sext i32 %tmp.454 to i64, !dbg !336  ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.456 = mul nsw i64 %tmp.455, %tmp.453, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.457 = add i64 %tmp.446, %tmp.441, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.458 = add i64 %tmp.457, %tmp.451, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.459 = add i64 %tmp.458, %tmp.456, !dbg !336 ; [#uses=1 type=i64] [debug line = 129:3]
  %output.addr.40 = getelementptr inbounds i64* %output, i64 3, !dbg !336 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp.459, i64* %output.addr.40, align 8, !dbg !336 ; [debug line = 129:3]
  %in2.load.10 = load i64* %in2.addr.1, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.10) nounwind
  %tmp.460 = trunc i64 %in2.load.10 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.461 = sext i32 %tmp.460 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %in.load.110 = load i64* %in.addr.10, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.110) nounwind
  %tmp.462 = trunc i64 %in.load.110 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.463 = sext i32 %tmp.462 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.464 = mul nsw i64 %tmp.463, %tmp.461, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.load.11 = load i64* %in2.addr, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.11) nounwind
  %tmp.465 = trunc i64 %in2.load.11 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.466 = sext i32 %tmp.465 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %in.load.111 = load i64* %in.addr.11, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.111) nounwind
  %tmp.467 = trunc i64 %in.load.111 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.468 = sext i32 %tmp.467 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.469 = mul nsw i64 %tmp.468, %tmp.466, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.load.12 = load i64* %in2.addr.2, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.12) nounwind
  %tmp.470 = trunc i64 %in2.load.12 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.471 = sext i32 %tmp.470 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %in.load.112 = load i64* %in.addr, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.112) nounwind
  %tmp.472 = trunc i64 %in.load.112 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.473 = sext i32 %tmp.472 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.474 = mul nsw i64 %tmp.473, %tmp.471, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.475 = add nsw i64 %tmp.474, %tmp.469, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.476 = mul i64 %tmp.475, 2, !dbg !337       ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.load.13 = load i64* %in2, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.13) nounwind
  %tmp.477 = trunc i64 %in2.load.13 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.478 = sext i32 %tmp.477 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %in.addr.12 = getelementptr inbounds i64* %in, i64 4, !dbg !337 ; [#uses=10 type=i64*] [debug line = 133:3]
  %in.load.113 = load i64* %in.addr.12, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.113) nounwind
  %tmp.479 = trunc i64 %in.load.113 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.480 = sext i32 %tmp.479 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.481 = mul nsw i64 %tmp.480, %tmp.478, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.addr.3 = getelementptr inbounds i64* %in2, i64 4, !dbg !337 ; [#uses=10 type=i64*] [debug line = 133:3]
  %in2.load.14 = load i64* %in2.addr.3, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.14) nounwind
  %tmp.482 = trunc i64 %in2.load.14 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.483 = sext i32 %tmp.482 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %in.load.114 = load i64* %in, align 8, !dbg !337 ; [#uses=2 type=i64] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.114) nounwind
  %tmp.484 = trunc i64 %in.load.114 to i32, !dbg !337 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.485 = sext i32 %tmp.484 to i64, !dbg !337  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.486 = mul nsw i64 %tmp.485, %tmp.483, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.487 = add i64 %tmp.476, %tmp.464, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.488 = add i64 %tmp.487, %tmp.481, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.489 = add i64 %tmp.488, %tmp.486, !dbg !337 ; [#uses=1 type=i64] [debug line = 133:3]
  %output.addr.41 = getelementptr inbounds i64* %output, i64 4, !dbg !337 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp.489, i64* %output.addr.41, align 8, !dbg !337 ; [debug line = 133:3]
  %in2.load.15 = load i64* %in2.addr.1, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.15) nounwind
  %tmp.490 = trunc i64 %in2.load.15 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.491 = sext i32 %tmp.490 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %in.load.115 = load i64* %in.addr.11, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.115) nounwind
  %tmp.492 = trunc i64 %in.load.115 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.493 = sext i32 %tmp.492 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.494 = mul nsw i64 %tmp.493, %tmp.491, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.load.16 = load i64* %in2.addr.2, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.16) nounwind
  %tmp.495 = trunc i64 %in2.load.16 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.496 = sext i32 %tmp.495 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %in.load.116 = load i64* %in.addr.10, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.116) nounwind
  %tmp.497 = trunc i64 %in.load.116 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.498 = sext i32 %tmp.497 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.499 = mul nsw i64 %tmp.498, %tmp.496, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.load.17 = load i64* %in2.addr, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.17) nounwind
  %tmp.500 = trunc i64 %in2.load.17 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.501 = sext i32 %tmp.500 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %in.load.117 = load i64* %in.addr.12, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.117) nounwind
  %tmp.502 = trunc i64 %in.load.117 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.503 = sext i32 %tmp.502 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.504 = mul nsw i64 %tmp.503, %tmp.501, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.load.18 = load i64* %in2.addr.3, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.18) nounwind
  %tmp.505 = trunc i64 %in2.load.18 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.506 = sext i32 %tmp.505 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %in.load.118 = load i64* %in.addr, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.118) nounwind
  %tmp.507 = trunc i64 %in.load.118 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.508 = sext i32 %tmp.507 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.509 = mul nsw i64 %tmp.508, %tmp.506, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.load.19 = load i64* %in2, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.19) nounwind
  %tmp.510 = trunc i64 %in2.load.19 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.511 = sext i32 %tmp.510 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %in.addr.13 = getelementptr inbounds i64* %in, i64 5, !dbg !338 ; [#uses=10 type=i64*] [debug line = 138:3]
  %in.load.119 = load i64* %in.addr.13, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.119) nounwind
  %tmp.512 = trunc i64 %in.load.119 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.513 = sext i32 %tmp.512 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.514 = mul nsw i64 %tmp.513, %tmp.511, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.addr.4 = getelementptr inbounds i64* %in2, i64 5, !dbg !338 ; [#uses=10 type=i64*] [debug line = 138:3]
  %in2.load.20 = load i64* %in2.addr.4, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.20) nounwind
  %tmp.515 = trunc i64 %in2.load.20 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.516 = sext i32 %tmp.515 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %in.load.120 = load i64* %in, align 8, !dbg !338 ; [#uses=2 type=i64] [debug line = 138:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.120) nounwind
  %tmp.517 = trunc i64 %in.load.120 to i32, !dbg !338 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.518 = sext i32 %tmp.517 to i64, !dbg !338  ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.519 = mul nsw i64 %tmp.518, %tmp.516, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.520 = add i64 %tmp.499, %tmp.494, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.521 = add i64 %tmp.520, %tmp.504, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.522 = add i64 %tmp.521, %tmp.509, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.523 = add i64 %tmp.522, %tmp.514, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.524 = add i64 %tmp.523, %tmp.519, !dbg !338 ; [#uses=1 type=i64] [debug line = 138:3]
  %output.addr.42 = getelementptr inbounds i64* %output, i64 5, !dbg !338 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp.524, i64* %output.addr.42, align 8, !dbg !338 ; [debug line = 138:3]
  %in2.load.21 = load i64* %in2.addr.2, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.21) nounwind
  %tmp.525 = trunc i64 %in2.load.21 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.526 = sext i32 %tmp.525 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.load.121 = load i64* %in.addr.11, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.121) nounwind
  %tmp.527 = trunc i64 %in.load.121 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.528 = sext i32 %tmp.527 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.529 = mul nsw i64 %tmp.528, %tmp.526, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.load.22 = load i64* %in2.addr, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.22) nounwind
  %tmp.530 = trunc i64 %in2.load.22 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.531 = sext i32 %tmp.530 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.load.122 = load i64* %in.addr.13, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.122) nounwind
  %tmp.532 = trunc i64 %in.load.122 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.533 = sext i32 %tmp.532 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.534 = mul nsw i64 %tmp.533, %tmp.531, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.load.23 = load i64* %in2.addr.4, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.23) nounwind
  %tmp.535 = trunc i64 %in2.load.23 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.536 = sext i32 %tmp.535 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.load.123 = load i64* %in.addr, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.123) nounwind
  %tmp.537 = trunc i64 %in.load.123 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.538 = sext i32 %tmp.537 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.539 = mul nsw i64 %tmp.538, %tmp.536, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.540 = add i64 %tmp.534, %tmp.529, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.541 = add i64 %tmp.540, %tmp.539, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.542 = mul i64 %tmp.541, 2, !dbg !339       ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.load.24 = load i64* %in2.addr.1, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.24) nounwind
  %tmp.543 = trunc i64 %in2.load.24 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.544 = sext i32 %tmp.543 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.load.124 = load i64* %in.addr.12, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.124) nounwind
  %tmp.545 = trunc i64 %in.load.124 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.546 = sext i32 %tmp.545 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.547 = mul nsw i64 %tmp.546, %tmp.544, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.load.25 = load i64* %in2.addr.3, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.25) nounwind
  %tmp.548 = trunc i64 %in2.load.25 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.549 = sext i32 %tmp.548 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.load.125 = load i64* %in.addr.10, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.125) nounwind
  %tmp.550 = trunc i64 %in.load.125 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.551 = sext i32 %tmp.550 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.552 = mul nsw i64 %tmp.551, %tmp.549, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.load.26 = load i64* %in2, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.26) nounwind
  %tmp.553 = trunc i64 %in2.load.26 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.554 = sext i32 %tmp.553 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.addr.14 = getelementptr inbounds i64* %in, i64 6, !dbg !339 ; [#uses=10 type=i64*] [debug line = 144:3]
  %in.load.126 = load i64* %in.addr.14, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.126) nounwind
  %tmp.555 = trunc i64 %in.load.126 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.556 = sext i32 %tmp.555 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.557 = mul nsw i64 %tmp.556, %tmp.554, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.addr.5 = getelementptr inbounds i64* %in2, i64 6, !dbg !339 ; [#uses=10 type=i64*] [debug line = 144:3]
  %in2.load.27 = load i64* %in2.addr.5, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.27) nounwind
  %tmp.558 = trunc i64 %in2.load.27 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.559 = sext i32 %tmp.558 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %in.load.127 = load i64* %in, align 8, !dbg !339 ; [#uses=2 type=i64] [debug line = 144:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.127) nounwind
  %tmp.560 = trunc i64 %in.load.127 to i32, !dbg !339 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.561 = sext i32 %tmp.560 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.562 = mul nsw i64 %tmp.561, %tmp.559, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.563 = add i64 %tmp.547, %tmp.542, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.564 = add i64 %tmp.563, %tmp.552, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.565 = add i64 %tmp.564, %tmp.557, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.566 = add i64 %tmp.565, %tmp.562, !dbg !339 ; [#uses=1 type=i64] [debug line = 144:3]
  %output.addr.43 = getelementptr inbounds i64* %output, i64 6, !dbg !339 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp.566, i64* %output.addr.43, align 8, !dbg !339 ; [debug line = 144:3]
  %in2.load.28 = load i64* %in2.addr.2, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.28) nounwind
  %tmp.567 = trunc i64 %in2.load.28 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.568 = sext i32 %tmp.567 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.128 = load i64* %in.addr.12, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.128) nounwind
  %tmp.569 = trunc i64 %in.load.128 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.570 = sext i32 %tmp.569 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.571 = mul nsw i64 %tmp.570, %tmp.568, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.load.29 = load i64* %in2.addr.3, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.29) nounwind
  %tmp.572 = trunc i64 %in2.load.29 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.573 = sext i32 %tmp.572 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.129 = load i64* %in.addr.11, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.129) nounwind
  %tmp.574 = trunc i64 %in.load.129 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.575 = sext i32 %tmp.574 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.576 = mul nsw i64 %tmp.575, %tmp.573, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.load.30 = load i64* %in2.addr.1, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.30) nounwind
  %tmp.577 = trunc i64 %in2.load.30 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.578 = sext i32 %tmp.577 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.130 = load i64* %in.addr.13, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.130) nounwind
  %tmp.579 = trunc i64 %in.load.130 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.580 = sext i32 %tmp.579 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.581 = mul nsw i64 %tmp.580, %tmp.578, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.load.31 = load i64* %in2.addr.4, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.31) nounwind
  %tmp.582 = trunc i64 %in2.load.31 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.583 = sext i32 %tmp.582 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.131 = load i64* %in.addr.10, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.131) nounwind
  %tmp.584 = trunc i64 %in.load.131 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.585 = sext i32 %tmp.584 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.586 = mul nsw i64 %tmp.585, %tmp.583, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.load.32 = load i64* %in2.addr, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.32) nounwind
  %tmp.587 = trunc i64 %in2.load.32 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.588 = sext i32 %tmp.587 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.132 = load i64* %in.addr.14, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.132) nounwind
  %tmp.589 = trunc i64 %in.load.132 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.590 = sext i32 %tmp.589 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.591 = mul nsw i64 %tmp.590, %tmp.588, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.load.33 = load i64* %in2.addr.5, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.33) nounwind
  %tmp.592 = trunc i64 %in2.load.33 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.593 = sext i32 %tmp.592 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.133 = load i64* %in.addr, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.133) nounwind
  %tmp.594 = trunc i64 %in.load.133 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.595 = sext i32 %tmp.594 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.596 = mul nsw i64 %tmp.595, %tmp.593, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.load.34 = load i64* %in2, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.34) nounwind
  %tmp.597 = trunc i64 %in2.load.34 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.598 = sext i32 %tmp.597 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.addr.15 = getelementptr inbounds i64* %in, i64 7, !dbg !340 ; [#uses=10 type=i64*] [debug line = 151:3]
  %in.load.134 = load i64* %in.addr.15, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.134) nounwind
  %tmp.599 = trunc i64 %in.load.134 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.600 = sext i32 %tmp.599 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.601 = mul nsw i64 %tmp.600, %tmp.598, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.addr.6 = getelementptr inbounds i64* %in2, i64 7, !dbg !340 ; [#uses=10 type=i64*] [debug line = 151:3]
  %in2.load.35 = load i64* %in2.addr.6, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.35) nounwind
  %tmp.602 = trunc i64 %in2.load.35 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.603 = sext i32 %tmp.602 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %in.load.135 = load i64* %in, align 8, !dbg !340 ; [#uses=2 type=i64] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.135) nounwind
  %tmp.604 = trunc i64 %in.load.135 to i32, !dbg !340 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.605 = sext i32 %tmp.604 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.606 = mul nsw i64 %tmp.605, %tmp.603, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.607 = add i64 %tmp.576, %tmp.571, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.608 = add i64 %tmp.607, %tmp.581, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.609 = add i64 %tmp.608, %tmp.586, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.610 = add i64 %tmp.609, %tmp.591, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.611 = add i64 %tmp.610, %tmp.596, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.612 = add i64 %tmp.611, %tmp.601, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.613 = add i64 %tmp.612, %tmp.606, !dbg !340 ; [#uses=1 type=i64] [debug line = 151:3]
  %output.addr.44 = getelementptr inbounds i64* %output, i64 7, !dbg !340 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp.613, i64* %output.addr.44, align 8, !dbg !340 ; [debug line = 151:3]
  %in2.load.36 = load i64* %in2.addr.3, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.36) nounwind
  %tmp.614 = trunc i64 %in2.load.36 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.615 = sext i32 %tmp.614 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.136 = load i64* %in.addr.12, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.136) nounwind
  %tmp.616 = trunc i64 %in.load.136 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.617 = sext i32 %tmp.616 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.618 = mul nsw i64 %tmp.617, %tmp.615, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.37 = load i64* %in2.addr.2, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.37) nounwind
  %tmp.619 = trunc i64 %in2.load.37 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.620 = sext i32 %tmp.619 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.137 = load i64* %in.addr.13, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.137) nounwind
  %tmp.621 = trunc i64 %in.load.137 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.622 = sext i32 %tmp.621 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.623 = mul nsw i64 %tmp.622, %tmp.620, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.38 = load i64* %in2.addr.4, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.38) nounwind
  %tmp.624 = trunc i64 %in2.load.38 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.625 = sext i32 %tmp.624 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.138 = load i64* %in.addr.11, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.138) nounwind
  %tmp.626 = trunc i64 %in.load.138 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.627 = sext i32 %tmp.626 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.628 = mul nsw i64 %tmp.627, %tmp.625, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.39 = load i64* %in2.addr, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.39) nounwind
  %tmp.629 = trunc i64 %in2.load.39 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.630 = sext i32 %tmp.629 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.139 = load i64* %in.addr.15, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.139) nounwind
  %tmp.631 = trunc i64 %in.load.139 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.632 = sext i32 %tmp.631 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.633 = mul nsw i64 %tmp.632, %tmp.630, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.40 = load i64* %in2.addr.6, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.40) nounwind
  %tmp.634 = trunc i64 %in2.load.40 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.635 = sext i32 %tmp.634 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.140 = load i64* %in.addr, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.140) nounwind
  %tmp.636 = trunc i64 %in.load.140 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.637 = sext i32 %tmp.636 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.638 = mul nsw i64 %tmp.637, %tmp.635, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.639 = add i64 %tmp.628, %tmp.623, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.640 = add i64 %tmp.639, %tmp.633, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.641 = add i64 %tmp.640, %tmp.638, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.642 = mul i64 %tmp.641, 2, !dbg !341       ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.41 = load i64* %in2.addr.1, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.41) nounwind
  %tmp.643 = trunc i64 %in2.load.41 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.644 = sext i32 %tmp.643 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.141 = load i64* %in.addr.14, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.141) nounwind
  %tmp.645 = trunc i64 %in.load.141 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.646 = sext i32 %tmp.645 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.647 = mul nsw i64 %tmp.646, %tmp.644, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.42 = load i64* %in2.addr.5, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.42) nounwind
  %tmp.648 = trunc i64 %in2.load.42 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.649 = sext i32 %tmp.648 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.142 = load i64* %in.addr.10, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.142) nounwind
  %tmp.650 = trunc i64 %in.load.142 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.651 = sext i32 %tmp.650 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.652 = mul nsw i64 %tmp.651, %tmp.649, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.load.43 = load i64* %in2, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.43) nounwind
  %tmp.653 = trunc i64 %in2.load.43 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.654 = sext i32 %tmp.653 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.addr.16 = getelementptr inbounds i64* %in, i64 8, !dbg !341 ; [#uses=10 type=i64*] [debug line = 159:3]
  %in.load.143 = load i64* %in.addr.16, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.143) nounwind
  %tmp.655 = trunc i64 %in.load.143 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.656 = sext i32 %tmp.655 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.657 = mul nsw i64 %tmp.656, %tmp.654, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.addr.7 = getelementptr inbounds i64* %in2, i64 8, !dbg !341 ; [#uses=10 type=i64*] [debug line = 159:3]
  %in2.load.44 = load i64* %in2.addr.7, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.44) nounwind
  %tmp.658 = trunc i64 %in2.load.44 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.659 = sext i32 %tmp.658 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %in.load.144 = load i64* %in, align 8, !dbg !341 ; [#uses=2 type=i64] [debug line = 159:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.144) nounwind
  %tmp.660 = trunc i64 %in.load.144 to i32, !dbg !341 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.661 = sext i32 %tmp.660 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.662 = mul nsw i64 %tmp.661, %tmp.659, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.663 = add i64 %tmp.642, %tmp.618, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.664 = add i64 %tmp.663, %tmp.647, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.665 = add i64 %tmp.664, %tmp.652, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.666 = add i64 %tmp.665, %tmp.657, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.667 = add i64 %tmp.666, %tmp.662, !dbg !341 ; [#uses=1 type=i64] [debug line = 159:3]
  %output.addr.45 = getelementptr inbounds i64* %output, i64 8, !dbg !341 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp.667, i64* %output.addr.45, align 8, !dbg !341 ; [debug line = 159:3]
  %in2.load.45 = load i64* %in2.addr.3, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.45) nounwind
  %tmp.668 = trunc i64 %in2.load.45 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.669 = sext i32 %tmp.668 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.145 = load i64* %in.addr.13, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.145) nounwind
  %tmp.670 = trunc i64 %in.load.145 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.671 = sext i32 %tmp.670 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.672 = mul nsw i64 %tmp.671, %tmp.669, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.46 = load i64* %in2.addr.4, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.46) nounwind
  %tmp.673 = trunc i64 %in2.load.46 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.674 = sext i32 %tmp.673 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.146 = load i64* %in.addr.12, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.146) nounwind
  %tmp.675 = trunc i64 %in.load.146 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.676 = sext i32 %tmp.675 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.677 = mul nsw i64 %tmp.676, %tmp.674, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.47 = load i64* %in2.addr.2, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.47) nounwind
  %tmp.678 = trunc i64 %in2.load.47 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.679 = sext i32 %tmp.678 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.147 = load i64* %in.addr.14, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.147) nounwind
  %tmp.680 = trunc i64 %in.load.147 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.681 = sext i32 %tmp.680 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.682 = mul nsw i64 %tmp.681, %tmp.679, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.48 = load i64* %in2.addr.5, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.48) nounwind
  %tmp.683 = trunc i64 %in2.load.48 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.684 = sext i32 %tmp.683 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.148 = load i64* %in.addr.11, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.148) nounwind
  %tmp.685 = trunc i64 %in.load.148 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.686 = sext i32 %tmp.685 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.687 = mul nsw i64 %tmp.686, %tmp.684, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.49 = load i64* %in2.addr.1, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.49) nounwind
  %tmp.688 = trunc i64 %in2.load.49 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.689 = sext i32 %tmp.688 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.149 = load i64* %in.addr.15, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.149) nounwind
  %tmp.690 = trunc i64 %in.load.149 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.691 = sext i32 %tmp.690 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.692 = mul nsw i64 %tmp.691, %tmp.689, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.50 = load i64* %in2.addr.6, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.50) nounwind
  %tmp.693 = trunc i64 %in2.load.50 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.694 = sext i32 %tmp.693 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.150 = load i64* %in.addr.10, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.150) nounwind
  %tmp.695 = trunc i64 %in.load.150 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.696 = sext i32 %tmp.695 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.697 = mul nsw i64 %tmp.696, %tmp.694, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.51 = load i64* %in2.addr, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.51) nounwind
  %tmp.698 = trunc i64 %in2.load.51 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.699 = sext i32 %tmp.698 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.151 = load i64* %in.addr.16, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.151) nounwind
  %tmp.700 = trunc i64 %in.load.151 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.701 = sext i32 %tmp.700 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.702 = mul nsw i64 %tmp.701, %tmp.699, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.52 = load i64* %in2.addr.7, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.52) nounwind
  %tmp.703 = trunc i64 %in2.load.52 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.704 = sext i32 %tmp.703 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.152 = load i64* %in.addr, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.152) nounwind
  %tmp.705 = trunc i64 %in.load.152 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.706 = sext i32 %tmp.705 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.707 = mul nsw i64 %tmp.706, %tmp.704, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.load.53 = load i64* %in2, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.53) nounwind
  %tmp.708 = trunc i64 %in2.load.53 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.709 = sext i32 %tmp.708 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.addr.17 = getelementptr inbounds i64* %in, i64 9, !dbg !342 ; [#uses=10 type=i64*] [debug line = 168:3]
  %in.load.153 = load i64* %in.addr.17, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.153) nounwind
  %tmp.710 = trunc i64 %in.load.153 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.711 = sext i32 %tmp.710 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.712 = mul nsw i64 %tmp.711, %tmp.709, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.addr.8 = getelementptr inbounds i64* %in2, i64 9, !dbg !342 ; [#uses=10 type=i64*] [debug line = 168:3]
  %in2.load.54 = load i64* %in2.addr.8, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.54) nounwind
  %tmp.713 = trunc i64 %in2.load.54 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.714 = sext i32 %tmp.713 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %in.load.154 = load i64* %in, align 8, !dbg !342 ; [#uses=2 type=i64] [debug line = 168:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.154) nounwind
  %tmp.715 = trunc i64 %in.load.154 to i32, !dbg !342 ; [#uses=1 type=i32] [debug line = 168:3]
  %tmp.716 = sext i32 %tmp.715 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.717 = mul nsw i64 %tmp.716, %tmp.714, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.718 = add i64 %tmp.677, %tmp.672, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.719 = add i64 %tmp.718, %tmp.682, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.720 = add i64 %tmp.719, %tmp.687, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.721 = add i64 %tmp.720, %tmp.692, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.722 = add i64 %tmp.721, %tmp.697, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.723 = add i64 %tmp.722, %tmp.702, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.724 = add i64 %tmp.723, %tmp.707, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.725 = add i64 %tmp.724, %tmp.712, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.726 = add i64 %tmp.725, %tmp.717, !dbg !342 ; [#uses=1 type=i64] [debug line = 168:3]
  %output.addr.46 = getelementptr inbounds i64* %output, i64 9, !dbg !342 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp.726, i64* %output.addr.46, align 8, !dbg !342 ; [debug line = 168:3]
  %in2.load.55 = load i64* %in2.addr.4, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.55) nounwind
  %tmp.727 = trunc i64 %in2.load.55 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.728 = sext i32 %tmp.727 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.155 = load i64* %in.addr.13, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.155) nounwind
  %tmp.729 = trunc i64 %in.load.155 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.730 = sext i32 %tmp.729 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.731 = mul nsw i64 %tmp.730, %tmp.728, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.56 = load i64* %in2.addr.2, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.56) nounwind
  %tmp.732 = trunc i64 %in2.load.56 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.733 = sext i32 %tmp.732 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.156 = load i64* %in.addr.15, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.156) nounwind
  %tmp.734 = trunc i64 %in.load.156 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.735 = sext i32 %tmp.734 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.736 = mul nsw i64 %tmp.735, %tmp.733, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.57 = load i64* %in2.addr.6, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.57) nounwind
  %tmp.737 = trunc i64 %in2.load.57 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.738 = sext i32 %tmp.737 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.157 = load i64* %in.addr.11, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.157) nounwind
  %tmp.739 = trunc i64 %in.load.157 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.740 = sext i32 %tmp.739 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.741 = mul nsw i64 %tmp.740, %tmp.738, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.58 = load i64* %in2.addr, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.58) nounwind
  %tmp.742 = trunc i64 %in2.load.58 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.743 = sext i32 %tmp.742 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.158 = load i64* %in.addr.17, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.158) nounwind
  %tmp.744 = trunc i64 %in.load.158 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.745 = sext i32 %tmp.744 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.746 = mul nsw i64 %tmp.745, %tmp.743, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.59 = load i64* %in2.addr.8, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.59) nounwind
  %tmp.747 = trunc i64 %in2.load.59 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.748 = sext i32 %tmp.747 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.159 = load i64* %in.addr, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.159) nounwind
  %tmp.749 = trunc i64 %in.load.159 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.750 = sext i32 %tmp.749 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.751 = mul nsw i64 %tmp.750, %tmp.748, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.752 = add i64 %tmp.736, %tmp.731, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.753 = add i64 %tmp.752, %tmp.741, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.754 = add i64 %tmp.753, %tmp.746, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.755 = add i64 %tmp.754, %tmp.751, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.756 = mul i64 %tmp.755, 2, !dbg !343       ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.60 = load i64* %in2.addr.3, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.60) nounwind
  %tmp.757 = trunc i64 %in2.load.60 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.758 = sext i32 %tmp.757 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.160 = load i64* %in.addr.14, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.160) nounwind
  %tmp.759 = trunc i64 %in.load.160 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.760 = sext i32 %tmp.759 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.761 = mul nsw i64 %tmp.760, %tmp.758, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.61 = load i64* %in2.addr.5, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.61) nounwind
  %tmp.762 = trunc i64 %in2.load.61 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.763 = sext i32 %tmp.762 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.161 = load i64* %in.addr.12, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.161) nounwind
  %tmp.764 = trunc i64 %in.load.161 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.765 = sext i32 %tmp.764 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.766 = mul nsw i64 %tmp.765, %tmp.763, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.62 = load i64* %in2.addr.1, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.62) nounwind
  %tmp.767 = trunc i64 %in2.load.62 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.768 = sext i32 %tmp.767 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.162 = load i64* %in.addr.16, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.162) nounwind
  %tmp.769 = trunc i64 %in.load.162 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.770 = sext i32 %tmp.769 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.771 = mul nsw i64 %tmp.770, %tmp.768, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %in2.load.63 = load i64* %in2.addr.7, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.63) nounwind
  %tmp.772 = trunc i64 %in2.load.63 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.773 = sext i32 %tmp.772 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %in.load.163 = load i64* %in.addr.10, align 8, !dbg !343 ; [#uses=2 type=i64] [debug line = 178:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.163) nounwind
  %tmp.774 = trunc i64 %in.load.163 to i32, !dbg !343 ; [#uses=1 type=i32] [debug line = 178:3]
  %tmp.775 = sext i32 %tmp.774 to i64, !dbg !343  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.776 = mul nsw i64 %tmp.775, %tmp.773, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.777 = add i64 %tmp.761, %tmp.756, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.778 = add i64 %tmp.777, %tmp.766, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.779 = add i64 %tmp.778, %tmp.771, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.780 = add i64 %tmp.779, %tmp.776, !dbg !343 ; [#uses=1 type=i64] [debug line = 178:3]
  %output.addr.47 = getelementptr inbounds i64* %output, i64 10, !dbg !343 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp.780, i64* %output.addr.47, align 8, !dbg !343 ; [debug line = 178:3]
  %in2.load.64 = load i64* %in2.addr.4, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.64) nounwind
  %tmp.781 = trunc i64 %in2.load.64 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.782 = sext i32 %tmp.781 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.164 = load i64* %in.addr.14, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.164) nounwind
  %tmp.783 = trunc i64 %in.load.164 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.784 = sext i32 %tmp.783 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.785 = mul nsw i64 %tmp.784, %tmp.782, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.65 = load i64* %in2.addr.5, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.65) nounwind
  %tmp.786 = trunc i64 %in2.load.65 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.787 = sext i32 %tmp.786 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.165 = load i64* %in.addr.13, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.165) nounwind
  %tmp.788 = trunc i64 %in.load.165 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.789 = sext i32 %tmp.788 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.790 = mul nsw i64 %tmp.789, %tmp.787, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.66 = load i64* %in2.addr.3, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.66) nounwind
  %tmp.791 = trunc i64 %in2.load.66 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.792 = sext i32 %tmp.791 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.166 = load i64* %in.addr.15, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.166) nounwind
  %tmp.793 = trunc i64 %in.load.166 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.794 = sext i32 %tmp.793 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.795 = mul nsw i64 %tmp.794, %tmp.792, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.67 = load i64* %in2.addr.6, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.67) nounwind
  %tmp.796 = trunc i64 %in2.load.67 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.797 = sext i32 %tmp.796 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.167 = load i64* %in.addr.12, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.167) nounwind
  %tmp.798 = trunc i64 %in.load.167 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.799 = sext i32 %tmp.798 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.800 = mul nsw i64 %tmp.799, %tmp.797, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.68 = load i64* %in2.addr.2, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.68) nounwind
  %tmp.801 = trunc i64 %in2.load.68 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.802 = sext i32 %tmp.801 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.168 = load i64* %in.addr.16, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.168) nounwind
  %tmp.803 = trunc i64 %in.load.168 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.804 = sext i32 %tmp.803 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.805 = mul nsw i64 %tmp.804, %tmp.802, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.69 = load i64* %in2.addr.7, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.69) nounwind
  %tmp.806 = trunc i64 %in2.load.69 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.807 = sext i32 %tmp.806 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.169 = load i64* %in.addr.11, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.169) nounwind
  %tmp.808 = trunc i64 %in.load.169 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.809 = sext i32 %tmp.808 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.810 = mul nsw i64 %tmp.809, %tmp.807, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.70 = load i64* %in2.addr.1, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.70) nounwind
  %tmp.811 = trunc i64 %in2.load.70 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.812 = sext i32 %tmp.811 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.170 = load i64* %in.addr.17, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.170) nounwind
  %tmp.813 = trunc i64 %in.load.170 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.814 = sext i32 %tmp.813 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.815 = mul nsw i64 %tmp.814, %tmp.812, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %in2.load.71 = load i64* %in2.addr.8, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.71) nounwind
  %tmp.816 = trunc i64 %in2.load.71 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.817 = sext i32 %tmp.816 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %in.load.171 = load i64* %in.addr.10, align 8, !dbg !344 ; [#uses=2 type=i64] [debug line = 187:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.171) nounwind
  %tmp.818 = trunc i64 %in.load.171 to i32, !dbg !344 ; [#uses=1 type=i32] [debug line = 187:3]
  %tmp.819 = sext i32 %tmp.818 to i64, !dbg !344  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.820 = mul nsw i64 %tmp.819, %tmp.817, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.821 = add i64 %tmp.790, %tmp.785, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.822 = add i64 %tmp.821, %tmp.795, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.823 = add i64 %tmp.822, %tmp.800, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.824 = add i64 %tmp.823, %tmp.805, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.825 = add i64 %tmp.824, %tmp.810, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.826 = add i64 %tmp.825, %tmp.815, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.827 = add i64 %tmp.826, %tmp.820, !dbg !344 ; [#uses=1 type=i64] [debug line = 187:3]
  %output.addr.48 = getelementptr inbounds i64* %output, i64 11, !dbg !344 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp.827, i64* %output.addr.48, align 8, !dbg !344 ; [debug line = 187:3]
  %in2.load.72 = load i64* %in2.addr.5, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.72) nounwind
  %tmp.828 = trunc i64 %in2.load.72 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.829 = sext i32 %tmp.828 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.172 = load i64* %in.addr.14, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.172) nounwind
  %tmp.830 = trunc i64 %in.load.172 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.831 = sext i32 %tmp.830 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.832 = mul nsw i64 %tmp.831, %tmp.829, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %in2.load.73 = load i64* %in2.addr.4, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.73) nounwind
  %tmp.833 = trunc i64 %in2.load.73 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.834 = sext i32 %tmp.833 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.173 = load i64* %in.addr.15, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.173) nounwind
  %tmp.835 = trunc i64 %in.load.173 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.836 = sext i32 %tmp.835 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.837 = mul nsw i64 %tmp.836, %tmp.834, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %in2.load.74 = load i64* %in2.addr.6, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.74) nounwind
  %tmp.838 = trunc i64 %in2.load.74 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.839 = sext i32 %tmp.838 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.174 = load i64* %in.addr.13, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.174) nounwind
  %tmp.840 = trunc i64 %in.load.174 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.841 = sext i32 %tmp.840 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.842 = mul nsw i64 %tmp.841, %tmp.839, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %in2.load.75 = load i64* %in2.addr.2, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.75) nounwind
  %tmp.843 = trunc i64 %in2.load.75 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.844 = sext i32 %tmp.843 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.175 = load i64* %in.addr.17, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.175) nounwind
  %tmp.845 = trunc i64 %in.load.175 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.846 = sext i32 %tmp.845 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.847 = mul nsw i64 %tmp.846, %tmp.844, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %in2.load.76 = load i64* %in2.addr.8, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.76) nounwind
  %tmp.848 = trunc i64 %in2.load.76 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.849 = sext i32 %tmp.848 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.176 = load i64* %in.addr.11, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.176) nounwind
  %tmp.850 = trunc i64 %in.load.176 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.851 = sext i32 %tmp.850 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.852 = mul nsw i64 %tmp.851, %tmp.849, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.853 = add i64 %tmp.842, %tmp.837, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.854 = add i64 %tmp.853, %tmp.847, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.855 = add i64 %tmp.854, %tmp.852, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.856 = mul i64 %tmp.855, 2, !dbg !345       ; [#uses=1 type=i64] [debug line = 195:3]
  %in2.load.77 = load i64* %in2.addr.3, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.77) nounwind
  %tmp.857 = trunc i64 %in2.load.77 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.858 = sext i32 %tmp.857 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.177 = load i64* %in.addr.16, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.177) nounwind
  %tmp.859 = trunc i64 %in.load.177 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.860 = sext i32 %tmp.859 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.861 = mul nsw i64 %tmp.860, %tmp.858, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %in2.load.78 = load i64* %in2.addr.7, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.78) nounwind
  %tmp.862 = trunc i64 %in2.load.78 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.863 = sext i32 %tmp.862 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %in.load.178 = load i64* %in.addr.12, align 8, !dbg !345 ; [#uses=2 type=i64] [debug line = 195:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.178) nounwind
  %tmp.864 = trunc i64 %in.load.178 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 195:3]
  %tmp.865 = sext i32 %tmp.864 to i64, !dbg !345  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.866 = mul nsw i64 %tmp.865, %tmp.863, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.867 = add i64 %tmp.856, %tmp.832, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.868 = add i64 %tmp.867, %tmp.861, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.869 = add i64 %tmp.868, %tmp.866, !dbg !345 ; [#uses=1 type=i64] [debug line = 195:3]
  %output.addr.49 = getelementptr inbounds i64* %output, i64 12, !dbg !345 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp.869, i64* %output.addr.49, align 8, !dbg !345 ; [debug line = 195:3]
  %in2.load.79 = load i64* %in2.addr.5, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.79) nounwind
  %tmp.870 = trunc i64 %in2.load.79 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.871 = sext i32 %tmp.870 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %in.load.179 = load i64* %in.addr.15, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.179) nounwind
  %tmp.872 = trunc i64 %in.load.179 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.873 = sext i32 %tmp.872 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.874 = mul nsw i64 %tmp.873, %tmp.871, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %in2.load.80 = load i64* %in2.addr.6, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.80) nounwind
  %tmp.875 = trunc i64 %in2.load.80 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.876 = sext i32 %tmp.875 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %in.load.180 = load i64* %in.addr.14, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.180) nounwind
  %tmp.877 = trunc i64 %in.load.180 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.878 = sext i32 %tmp.877 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.879 = mul nsw i64 %tmp.878, %tmp.876, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %in2.load.81 = load i64* %in2.addr.4, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.81) nounwind
  %tmp.880 = trunc i64 %in2.load.81 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.881 = sext i32 %tmp.880 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %in.load.181 = load i64* %in.addr.16, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.181) nounwind
  %tmp.882 = trunc i64 %in.load.181 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.883 = sext i32 %tmp.882 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.884 = mul nsw i64 %tmp.883, %tmp.881, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %in2.load.82 = load i64* %in2.addr.7, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.82) nounwind
  %tmp.885 = trunc i64 %in2.load.82 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.886 = sext i32 %tmp.885 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %in.load.182 = load i64* %in.addr.13, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.182) nounwind
  %tmp.887 = trunc i64 %in.load.182 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.888 = sext i32 %tmp.887 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.889 = mul nsw i64 %tmp.888, %tmp.886, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %in2.load.83 = load i64* %in2.addr.3, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.83) nounwind
  %tmp.890 = trunc i64 %in2.load.83 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.891 = sext i32 %tmp.890 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %in.load.183 = load i64* %in.addr.17, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.183) nounwind
  %tmp.892 = trunc i64 %in.load.183 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.893 = sext i32 %tmp.892 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.894 = mul nsw i64 %tmp.893, %tmp.891, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %in2.load.84 = load i64* %in2.addr.8, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.84) nounwind
  %tmp.895 = trunc i64 %in2.load.84 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.896 = sext i32 %tmp.895 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %in.load.184 = load i64* %in.addr.12, align 8, !dbg !346 ; [#uses=2 type=i64] [debug line = 202:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.184) nounwind
  %tmp.897 = trunc i64 %in.load.184 to i32, !dbg !346 ; [#uses=1 type=i32] [debug line = 202:3]
  %tmp.898 = sext i32 %tmp.897 to i64, !dbg !346  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.899 = mul nsw i64 %tmp.898, %tmp.896, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.900 = add i64 %tmp.879, %tmp.874, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.901 = add i64 %tmp.900, %tmp.884, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.902 = add i64 %tmp.901, %tmp.889, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.903 = add i64 %tmp.902, %tmp.894, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.904 = add i64 %tmp.903, %tmp.899, !dbg !346 ; [#uses=1 type=i64] [debug line = 202:3]
  %output.addr.50 = getelementptr inbounds i64* %output, i64 13, !dbg !346 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp.904, i64* %output.addr.50, align 8, !dbg !346 ; [debug line = 202:3]
  %in2.load.85 = load i64* %in2.addr.6, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.85) nounwind
  %tmp.905 = trunc i64 %in2.load.85 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.906 = sext i32 %tmp.905 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %in.load.185 = load i64* %in.addr.15, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.185) nounwind
  %tmp.907 = trunc i64 %in.load.185 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.908 = sext i32 %tmp.907 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.909 = mul nsw i64 %tmp.908, %tmp.906, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %in2.load.86 = load i64* %in2.addr.4, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.86) nounwind
  %tmp.910 = trunc i64 %in2.load.86 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.911 = sext i32 %tmp.910 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %in.load.186 = load i64* %in.addr.17, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.186) nounwind
  %tmp.912 = trunc i64 %in.load.186 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.913 = sext i32 %tmp.912 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.914 = mul nsw i64 %tmp.913, %tmp.911, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %in2.load.87 = load i64* %in2.addr.8, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.87) nounwind
  %tmp.915 = trunc i64 %in2.load.87 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.916 = sext i32 %tmp.915 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %in.load.187 = load i64* %in.addr.13, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.187) nounwind
  %tmp.917 = trunc i64 %in.load.187 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.918 = sext i32 %tmp.917 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.919 = mul nsw i64 %tmp.918, %tmp.916, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.920 = add i64 %tmp.914, %tmp.909, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.921 = add i64 %tmp.920, %tmp.919, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.922 = mul i64 %tmp.921, 2, !dbg !347       ; [#uses=1 type=i64] [debug line = 208:3]
  %in2.load.88 = load i64* %in2.addr.5, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.88) nounwind
  %tmp.923 = trunc i64 %in2.load.88 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.924 = sext i32 %tmp.923 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %in.load.188 = load i64* %in.addr.16, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.188) nounwind
  %tmp.925 = trunc i64 %in.load.188 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.926 = sext i32 %tmp.925 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.927 = mul nsw i64 %tmp.926, %tmp.924, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %in2.load.89 = load i64* %in2.addr.7, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.89) nounwind
  %tmp.928 = trunc i64 %in2.load.89 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.929 = sext i32 %tmp.928 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %in.load.189 = load i64* %in.addr.14, align 8, !dbg !347 ; [#uses=2 type=i64] [debug line = 208:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.189) nounwind
  %tmp.930 = trunc i64 %in.load.189 to i32, !dbg !347 ; [#uses=1 type=i32] [debug line = 208:3]
  %tmp.931 = sext i32 %tmp.930 to i64, !dbg !347  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.932 = mul nsw i64 %tmp.931, %tmp.929, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.933 = add i64 %tmp.927, %tmp.922, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.934 = add i64 %tmp.933, %tmp.932, !dbg !347 ; [#uses=1 type=i64] [debug line = 208:3]
  %output.addr.51 = getelementptr inbounds i64* %output, i64 14, !dbg !347 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp.934, i64* %output.addr.51, align 8, !dbg !347 ; [debug line = 208:3]
  %in2.load.90 = load i64* %in2.addr.6, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.90) nounwind
  %tmp.935 = trunc i64 %in2.load.90 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.936 = sext i32 %tmp.935 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %in.load.190 = load i64* %in.addr.16, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.190) nounwind
  %tmp.937 = trunc i64 %in.load.190 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.938 = sext i32 %tmp.937 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.939 = mul nsw i64 %tmp.938, %tmp.936, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %in2.load.91 = load i64* %in2.addr.7, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.91) nounwind
  %tmp.940 = trunc i64 %in2.load.91 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.941 = sext i32 %tmp.940 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %in.load.191 = load i64* %in.addr.15, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.191) nounwind
  %tmp.942 = trunc i64 %in.load.191 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.943 = sext i32 %tmp.942 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.944 = mul nsw i64 %tmp.943, %tmp.941, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %in2.load.92 = load i64* %in2.addr.5, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.92) nounwind
  %tmp.945 = trunc i64 %in2.load.92 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.946 = sext i32 %tmp.945 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %in.load.192 = load i64* %in.addr.17, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.192) nounwind
  %tmp.947 = trunc i64 %in.load.192 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.948 = sext i32 %tmp.947 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.949 = mul nsw i64 %tmp.948, %tmp.946, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %in2.load.93 = load i64* %in2.addr.8, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.93) nounwind
  %tmp.950 = trunc i64 %in2.load.93 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.951 = sext i32 %tmp.950 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %in.load.193 = load i64* %in.addr.14, align 8, !dbg !348 ; [#uses=2 type=i64] [debug line = 213:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.193) nounwind
  %tmp.952 = trunc i64 %in.load.193 to i32, !dbg !348 ; [#uses=1 type=i32] [debug line = 213:3]
  %tmp.953 = sext i32 %tmp.952 to i64, !dbg !348  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.954 = mul nsw i64 %tmp.953, %tmp.951, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.955 = add i64 %tmp.944, %tmp.939, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.956 = add i64 %tmp.955, %tmp.949, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.957 = add i64 %tmp.956, %tmp.954, !dbg !348 ; [#uses=1 type=i64] [debug line = 213:3]
  %output.addr.52 = getelementptr inbounds i64* %output, i64 15, !dbg !348 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp.957, i64* %output.addr.52, align 8, !dbg !348 ; [debug line = 213:3]
  %in2.load.94 = load i64* %in2.addr.7, align 8, !dbg !349 ; [#uses=2 type=i64] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.94) nounwind
  %tmp.958 = trunc i64 %in2.load.94 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 217:3]
  %tmp.959 = sext i32 %tmp.958 to i64, !dbg !349  ; [#uses=1 type=i64] [debug line = 217:3]
  %in.load.194 = load i64* %in.addr.16, align 8, !dbg !349 ; [#uses=2 type=i64] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.194) nounwind
  %tmp.960 = trunc i64 %in.load.194 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 217:3]
  %tmp.961 = sext i32 %tmp.960 to i64, !dbg !349  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.962 = mul nsw i64 %tmp.961, %tmp.959, !dbg !349 ; [#uses=1 type=i64] [debug line = 217:3]
  %in2.load.95 = load i64* %in2.addr.6, align 8, !dbg !349 ; [#uses=2 type=i64] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.95) nounwind
  %tmp.963 = trunc i64 %in2.load.95 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 217:3]
  %tmp.964 = sext i32 %tmp.963 to i64, !dbg !349  ; [#uses=1 type=i64] [debug line = 217:3]
  %in.load.195 = load i64* %in.addr.17, align 8, !dbg !349 ; [#uses=2 type=i64] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.195) nounwind
  %tmp.965 = trunc i64 %in.load.195 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 217:3]
  %tmp.966 = sext i32 %tmp.965 to i64, !dbg !349  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.967 = mul nsw i64 %tmp.966, %tmp.964, !dbg !349 ; [#uses=1 type=i64] [debug line = 217:3]
  %in2.load.96 = load i64* %in2.addr.8, align 8, !dbg !349 ; [#uses=2 type=i64] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.96) nounwind
  %tmp.968 = trunc i64 %in2.load.96 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 217:3]
  %tmp.969 = sext i32 %tmp.968 to i64, !dbg !349  ; [#uses=1 type=i64] [debug line = 217:3]
  %in.load.196 = load i64* %in.addr.15, align 8, !dbg !349 ; [#uses=2 type=i64] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.196) nounwind
  %tmp.970 = trunc i64 %in.load.196 to i32, !dbg !349 ; [#uses=1 type=i32] [debug line = 217:3]
  %tmp.971 = sext i32 %tmp.970 to i64, !dbg !349  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.972 = mul nsw i64 %tmp.971, %tmp.969, !dbg !349 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.973 = add nsw i64 %tmp.972, %tmp.967, !dbg !349 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.974 = mul i64 %tmp.973, 2, !dbg !349       ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.975 = add nsw i64 %tmp.974, %tmp.962, !dbg !349 ; [#uses=1 type=i64] [debug line = 217:3]
  %output.addr.53 = getelementptr inbounds i64* %output, i64 16, !dbg !349 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp.975, i64* %output.addr.53, align 8, !dbg !349 ; [debug line = 217:3]
  %in2.load.97 = load i64* %in2.addr.7, align 8, !dbg !350 ; [#uses=2 type=i64] [debug line = 220:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.97) nounwind
  %tmp.976 = trunc i64 %in2.load.97 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 220:3]
  %tmp.977 = sext i32 %tmp.976 to i64, !dbg !350  ; [#uses=1 type=i64] [debug line = 220:3]
  %in.load.197 = load i64* %in.addr.17, align 8, !dbg !350 ; [#uses=2 type=i64] [debug line = 220:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.197) nounwind
  %tmp.978 = trunc i64 %in.load.197 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 220:3]
  %tmp.979 = sext i32 %tmp.978 to i64, !dbg !350  ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.980 = mul nsw i64 %tmp.979, %tmp.977, !dbg !350 ; [#uses=1 type=i64] [debug line = 220:3]
  %in2.load.98 = load i64* %in2.addr.8, align 8, !dbg !350 ; [#uses=2 type=i64] [debug line = 220:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.98) nounwind
  %tmp.981 = trunc i64 %in2.load.98 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 220:3]
  %tmp.982 = sext i32 %tmp.981 to i64, !dbg !350  ; [#uses=1 type=i64] [debug line = 220:3]
  %in.load.198 = load i64* %in.addr.16, align 8, !dbg !350 ; [#uses=2 type=i64] [debug line = 220:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.198) nounwind
  %tmp.983 = trunc i64 %in.load.198 to i32, !dbg !350 ; [#uses=1 type=i32] [debug line = 220:3]
  %tmp.984 = sext i32 %tmp.983 to i64, !dbg !350  ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.985 = mul nsw i64 %tmp.984, %tmp.982, !dbg !350 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.986 = add nsw i64 %tmp.985, %tmp.980, !dbg !350 ; [#uses=1 type=i64] [debug line = 220:3]
  %output.addr.54 = getelementptr inbounds i64* %output, i64 17, !dbg !350 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp.986, i64* %output.addr.54, align 8, !dbg !350 ; [debug line = 220:3]
  %in2.load.99 = load i64* %in2.addr.8, align 8, !dbg !351 ; [#uses=2 type=i64] [debug line = 222:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in2.load.99) nounwind
  %tmp.987 = trunc i64 %in2.load.99 to i32, !dbg !351 ; [#uses=1 type=i32] [debug line = 222:3]
  %tmp.988 = sext i32 %tmp.987 to i64, !dbg !351  ; [#uses=1 type=i64] [debug line = 222:3]
  %in.load.199 = load i64* %in.addr.17, align 8, !dbg !351 ; [#uses=2 type=i64] [debug line = 222:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load.199) nounwind
  %tmp.989 = trunc i64 %in.load.199 to i32, !dbg !351 ; [#uses=1 type=i32] [debug line = 222:3]
  %tmp.990 = sext i32 %tmp.989 to i64, !dbg !351  ; [#uses=1 type=i64] [debug line = 222:3]
  %tmp.991 = mul i64 %tmp.988, 2, !dbg !351       ; [#uses=1 type=i64] [debug line = 222:3]
  %tmp.992 = mul i64 %tmp.991, %tmp.990, !dbg !351 ; [#uses=1 type=i64] [debug line = 222:3]
  %output.addr.55 = getelementptr inbounds i64* %output, i64 18, !dbg !351 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp.992, i64* %output.addr.55, align 8, !dbg !351 ; [debug line = 222:3]
  ret void, !dbg !352                             ; [debug line = 223:1]
}

; [#uses=12]
define internal fastcc void @fmul(i64* %output, i64* %in, i64* %in2) nounwind uwtable {
  %t = alloca [19 x i64], align 16                ; [#uses=1 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !353), !dbg !354 ; [debug line = 352:12] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !355), !dbg !356 ; [debug line = 352:32] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i64* %in2}, i64 0, metadata !357), !dbg !358 ; [debug line = 352:48] [debug variable = in2]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !359), !dbg !361 ; [debug line = 353:8] [debug variable = t]
  %t.addr = getelementptr inbounds [19 x i64]* %t, i64 0, i64 0, !dbg !362 ; [#uses=4 type=i64*] [debug line = 354:3]
  call fastcc void @fproduct(i64* %t.addr, i64* %in, i64* %in2), !dbg !362 ; [debug line = 354:3]
  call fastcc void @freduce_degree(i64* %t.addr), !dbg !363 ; [debug line = 356:3]
  call fastcc void @freduce_coefficients(i64* %t.addr), !dbg !364 ; [debug line = 357:3]
  call fastcc void @_memcpy(i64* %output, i64* %t.addr, i32 10), !dbg !365 ; [debug line = 359:3]
  ret void, !dbg !366                             ; [debug line = 360:1]
}

; [#uses=1]
define internal fastcc void @fmonty(i64* %x2, i64* %z2, i64* %x3, i64* %z3, i64* %x, i64* %z, i64* %xprime, i64* %zprime, i64* %qmqp) nounwind uwtable {
  %origx = alloca [10 x i64], align 16            ; [#uses=1 type=[10 x i64]*]
  %origxprime = alloca [10 x i64], align 16       ; [#uses=1 type=[10 x i64]*]
  %zzz = alloca [19 x i64], align 16              ; [#uses=2 type=[19 x i64]*]
  %xx = alloca [19 x i64], align 16               ; [#uses=1 type=[19 x i64]*]
  %zz = alloca [19 x i64], align 16               ; [#uses=1 type=[19 x i64]*]
  %xxprime = alloca [19 x i64], align 16          ; [#uses=1 type=[19 x i64]*]
  %zzprime = alloca [19 x i64], align 16          ; [#uses=1 type=[19 x i64]*]
  %zzzprime = alloca [19 x i64], align 16         ; [#uses=1 type=[19 x i64]*]
  %xxxprime = alloca [19 x i64], align 16         ; [#uses=1 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{i64* %x2}, i64 0, metadata !367), !dbg !368 ; [debug line = 678:26] [debug variable = x2]
  call void @llvm.dbg.value(metadata !{i64* %z2}, i64 0, metadata !369), !dbg !370 ; [debug line = 678:36] [debug variable = z2]
  call void @llvm.dbg.value(metadata !{i64* %x3}, i64 0, metadata !371), !dbg !372 ; [debug line = 679:26] [debug variable = x3]
  call void @llvm.dbg.value(metadata !{i64* %z3}, i64 0, metadata !373), !dbg !374 ; [debug line = 679:36] [debug variable = z3]
  call void @llvm.dbg.value(metadata !{i64* %x}, i64 0, metadata !375), !dbg !376 ; [debug line = 680:26] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i64* %z}, i64 0, metadata !377), !dbg !378 ; [debug line = 680:35] [debug variable = z]
  call void @llvm.dbg.value(metadata !{i64* %xprime}, i64 0, metadata !379), !dbg !380 ; [debug line = 681:26] [debug variable = xprime]
  call void @llvm.dbg.value(metadata !{i64* %zprime}, i64 0, metadata !381), !dbg !382 ; [debug line = 681:40] [debug variable = zprime]
  call void @llvm.dbg.value(metadata !{i64* %qmqp}, i64 0, metadata !383), !dbg !384 ; [debug line = 682:32] [debug variable = qmqp]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !385 ; [debug line = 683:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !387 ; [debug line = 684:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %origx}, metadata !388), !dbg !392 ; [debug line = 685:7] [debug variable = origx]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %origxprime}, metadata !393), !dbg !394 ; [debug line = 685:18] [debug variable = origxprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzz}, metadata !395), !dbg !396 ; [debug line = 685:34] [debug variable = zzz]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xx}, metadata !397), !dbg !398 ; [debug line = 685:43] [debug variable = xx]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zz}, metadata !399), !dbg !400 ; [debug line = 685:51] [debug variable = zz]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xxprime}, metadata !401), !dbg !402 ; [debug line = 685:59] [debug variable = xxprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzprime}, metadata !403), !dbg !404 ; [debug line = 686:9] [debug variable = zzprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzzprime}, metadata !405), !dbg !406 ; [debug line = 686:22] [debug variable = zzzprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xxxprime}, metadata !407), !dbg !408 ; [debug line = 686:36] [debug variable = xxxprime]
  %origx.addr = getelementptr inbounds [10 x i64]* %origx, i64 0, i64 0, !dbg !409 ; [#uses=2 type=i64*] [debug line = 690:3]
  call fastcc void @_memcpy(i64* %origx.addr, i64* %x, i32 10), !dbg !409 ; [debug line = 690:3]
  call fastcc void @fsum(i64* %x, i64* %z), !dbg !410 ; [debug line = 691:3]
  call fastcc void @fdifference(i64* %z, i64* %origx.addr), !dbg !411 ; [debug line = 693:3]
  %origxprime.addr = getelementptr inbounds [10 x i64]* %origxprime, i64 0, i64 0, !dbg !412 ; [#uses=4 type=i64*] [debug line = 696:3]
  call fastcc void @_memcpy(i64* %origxprime.addr, i64* %xprime, i32 10), !dbg !412 ; [debug line = 696:3]
  call fastcc void @fsum(i64* %xprime, i64* %zprime), !dbg !413 ; [debug line = 697:3]
  call fastcc void @fdifference(i64* %zprime, i64* %origxprime.addr), !dbg !414 ; [debug line = 699:3]
  %xxprime.addr = getelementptr inbounds [19 x i64]* %xxprime, i64 0, i64 0, !dbg !415 ; [#uses=6 type=i64*] [debug line = 701:3]
  call fastcc void @fproduct(i64* %xxprime.addr, i64* %xprime, i64* %z), !dbg !415 ; [debug line = 701:3]
  %zzprime.addr = getelementptr inbounds [19 x i64]* %zzprime, i64 0, i64 0, !dbg !416 ; [#uses=10 type=i64*] [debug line = 705:3]
  call fastcc void @fproduct(i64* %zzprime.addr, i64* %x, i64* %zprime), !dbg !416 ; [debug line = 705:3]
  call fastcc void @freduce_degree(i64* %xxprime.addr), !dbg !417 ; [debug line = 707:3]
  call fastcc void @freduce_coefficients(i64* %xxprime.addr), !dbg !418 ; [debug line = 708:3]
  call fastcc void @freduce_degree(i64* %zzprime.addr), !dbg !419 ; [debug line = 710:3]
  call fastcc void @freduce_coefficients(i64* %zzprime.addr), !dbg !420 ; [debug line = 711:3]
  call fastcc void @_memcpy(i64* %origxprime.addr, i64* %xxprime.addr, i32 10), !dbg !421 ; [debug line = 713:3]
  call fastcc void @fsum(i64* %xxprime.addr, i64* %zzprime.addr), !dbg !422 ; [debug line = 714:3]
  call fastcc void @fdifference(i64* %zzprime.addr, i64* %origxprime.addr), !dbg !423 ; [debug line = 716:3]
  %xxxprime.addr = getelementptr inbounds [19 x i64]* %xxxprime, i64 0, i64 0, !dbg !424 ; [#uses=2 type=i64*] [debug line = 718:3]
  call fastcc void @fsquare(i64* %xxxprime.addr, i64* %xxprime.addr), !dbg !424 ; [debug line = 718:3]
  %zzzprime.addr = getelementptr inbounds [19 x i64]* %zzzprime, i64 0, i64 0, !dbg !425 ; [#uses=2 type=i64*] [debug line = 720:3]
  call fastcc void @fsquare(i64* %zzzprime.addr, i64* %zzprime.addr), !dbg !425 ; [debug line = 720:3]
  call fastcc void @fproduct(i64* %zzprime.addr, i64* %zzzprime.addr, i64* %qmqp), !dbg !426 ; [debug line = 722:3]
  call fastcc void @freduce_degree(i64* %zzprime.addr), !dbg !427 ; [debug line = 724:3]
  call fastcc void @freduce_coefficients(i64* %zzprime.addr), !dbg !428 ; [debug line = 725:3]
  call fastcc void @_memcpy(i64* %x3, i64* %xxxprime.addr, i32 10), !dbg !429 ; [debug line = 727:3]
  call fastcc void @_memcpy(i64* %z3, i64* %zzprime.addr, i32 10), !dbg !430 ; [debug line = 728:3]
  %xx.addr = getelementptr inbounds [19 x i64]* %xx, i64 0, i64 0, !dbg !431 ; [#uses=4 type=i64*] [debug line = 730:3]
  call fastcc void @fsquare(i64* %xx.addr, i64* %x), !dbg !431 ; [debug line = 730:3]
  %zz.addr = getelementptr inbounds [19 x i64]* %zz, i64 0, i64 0, !dbg !432 ; [#uses=5 type=i64*] [debug line = 732:3]
  call fastcc void @fsquare(i64* %zz.addr, i64* %z), !dbg !432 ; [debug line = 732:3]
  call fastcc void @fproduct(i64* %x2, i64* %xx.addr, i64* %zz.addr), !dbg !433 ; [debug line = 734:3]
  call fastcc void @freduce_degree(i64* %x2), !dbg !434 ; [debug line = 736:3]
  call fastcc void @freduce_coefficients(i64* %x2), !dbg !435 ; [debug line = 737:3]
  call fastcc void @fdifference(i64* %zz.addr, i64* %xx.addr), !dbg !436 ; [debug line = 739:3]
  %zzz.addr = getelementptr inbounds [19 x i64]* %zzz, i64 0, i64 10, !dbg !437 ; [#uses=1 type=i64*] [debug line = 741:3]
  call fastcc void @_memset(i64* %zzz.addr), !dbg !437 ; [debug line = 741:3]
  %zzz.addr.1 = getelementptr inbounds [19 x i64]* %zzz, i64 0, i64 0, !dbg !438 ; [#uses=4 type=i64*] [debug line = 750:3]
  call fastcc void @fscalar_product(i64* %zzz.addr.1, i64* %zz.addr), !dbg !438 ; [debug line = 750:3]
  call fastcc void @freduce_coefficients(i64* %zzz.addr.1), !dbg !439 ; [debug line = 754:3]
  call fastcc void @fsum(i64* %zzz.addr.1, i64* %xx.addr), !dbg !440 ; [debug line = 756:3]
  call fastcc void @fproduct(i64* %z2, i64* %zz.addr, i64* %zzz.addr.1), !dbg !441 ; [debug line = 758:3]
  call fastcc void @freduce_degree(i64* %z2), !dbg !442 ; [debug line = 760:3]
  call fastcc void @freduce_coefficients(i64* %z2), !dbg !443 ; [debug line = 761:3]
  ret void, !dbg !444                             ; [debug line = 763:1]
}

; [#uses=1]
define internal fastcc void @fexpand(i64* %output, i8* %input) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !445), !dbg !446 ; [debug line = 478:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !447), !dbg !448 ; [debug line = 478:33] [debug variable = input]
  %input.load = load i8* %input, align 1, !dbg !449 ; [#uses=2 type=i8] [debug line = 484:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load) nounwind
  %tmp = zext i8 %input.load to i64, !dbg !449    ; [#uses=1 type=i64] [debug line = 484:3]
  %input.addr = getelementptr inbounds i8* %input, i64 1, !dbg !449 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input.load.1 = load i8* %input.addr, align 1, !dbg !449 ; [#uses=2 type=i8] [debug line = 484:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.1) nounwind
  %tmp.993 = zext i8 %input.load.1 to i64, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.994 = shl nuw nsw i64 %tmp.993, 8, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %input.addr.1 = getelementptr inbounds i8* %input, i64 2, !dbg !449 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input.load.2 = load i8* %input.addr.1, align 1, !dbg !449 ; [#uses=2 type=i8] [debug line = 484:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.2) nounwind
  %tmp.995 = zext i8 %input.load.2 to i64, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.996 = shl nuw nsw i64 %tmp.995, 16, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %input.addr.2 = getelementptr inbounds i8* %input, i64 3, !dbg !449 ; [#uses=2 type=i8*] [debug line = 484:3]
  %input.load.3 = load i8* %input.addr.2, align 1, !dbg !449 ; [#uses=2 type=i8] [debug line = 484:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.3) nounwind
  %tmp.997 = zext i8 %input.load.3 to i64, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.998 = shl nuw nsw i64 %tmp.997, 24, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.999 = and i64 %tmp.998, 50331648, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.1000 = or i64 %tmp.994, %tmp, !dbg !449    ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.1001 = or i64 %tmp.1000, %tmp.996, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  %tmp.1002 = or i64 %tmp.1001, %tmp.999, !dbg !449 ; [#uses=1 type=i64] [debug line = 484:3]
  store i64 %tmp.1002, i64* %output, align 8, !dbg !449 ; [debug line = 484:3]
  %input.load.4 = load i8* %input.addr.2, align 1, !dbg !451 ; [#uses=2 type=i8] [debug line = 485:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.4) nounwind
  %tmp.1003 = zext i8 %input.load.4 to i64, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %input.addr.3 = getelementptr inbounds i8* %input, i64 4, !dbg !451 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input.load.5 = load i8* %input.addr.3, align 1, !dbg !451 ; [#uses=2 type=i8] [debug line = 485:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.5) nounwind
  %tmp.1004 = zext i8 %input.load.5 to i64, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1005 = shl nuw nsw i64 %tmp.1004, 8, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %input.addr.4 = getelementptr inbounds i8* %input, i64 5, !dbg !451 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input.load.6 = load i8* %input.addr.4, align 1, !dbg !451 ; [#uses=2 type=i8] [debug line = 485:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.6) nounwind
  %tmp.1006 = zext i8 %input.load.6 to i64, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1007 = shl nuw nsw i64 %tmp.1006, 16, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %input.addr.5 = getelementptr inbounds i8* %input, i64 6, !dbg !451 ; [#uses=2 type=i8*] [debug line = 485:3]
  %input.load.7 = load i8* %input.addr.5, align 1, !dbg !451 ; [#uses=2 type=i8] [debug line = 485:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.7) nounwind
  %tmp.1008 = zext i8 %input.load.7 to i64, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1009 = shl nuw nsw i64 %tmp.1008, 24, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1010 = or i64 %tmp.1005, %tmp.1003, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1011 = or i64 %tmp.1010, %tmp.1007, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1012 = or i64 %tmp.1011, %tmp.1009, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1013 = lshr i64 %tmp.1012, 2, !dbg !451    ; [#uses=1 type=i64] [debug line = 485:3]
  %tmp.1014 = and i64 %tmp.1013, 33554431, !dbg !451 ; [#uses=1 type=i64] [debug line = 485:3]
  %output.addr = getelementptr inbounds i64* %output, i64 1, !dbg !451 ; [#uses=1 type=i64*] [debug line = 485:3]
  store i64 %tmp.1014, i64* %output.addr, align 8, !dbg !451 ; [debug line = 485:3]
  %input.load.8 = load i8* %input.addr.5, align 1, !dbg !452 ; [#uses=2 type=i8] [debug line = 486:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.8) nounwind
  %tmp.1015 = zext i8 %input.load.8 to i64, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %input.addr.6 = getelementptr inbounds i8* %input, i64 7, !dbg !452 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input.load.9 = load i8* %input.addr.6, align 1, !dbg !452 ; [#uses=2 type=i8] [debug line = 486:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.9) nounwind
  %tmp.1016 = zext i8 %input.load.9 to i64, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1017 = shl nuw nsw i64 %tmp.1016, 8, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %input.addr.7 = getelementptr inbounds i8* %input, i64 8, !dbg !452 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input.load.10 = load i8* %input.addr.7, align 1, !dbg !452 ; [#uses=2 type=i8] [debug line = 486:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.10) nounwind
  %tmp.1018 = zext i8 %input.load.10 to i64, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1019 = shl nuw nsw i64 %tmp.1018, 16, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %input.addr.8 = getelementptr inbounds i8* %input, i64 9, !dbg !452 ; [#uses=2 type=i8*] [debug line = 486:3]
  %input.load.11 = load i8* %input.addr.8, align 1, !dbg !452 ; [#uses=2 type=i8] [debug line = 486:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.11) nounwind
  %tmp.1020 = zext i8 %input.load.11 to i64, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1021 = shl nuw nsw i64 %tmp.1020, 24, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1022 = or i64 %tmp.1017, %tmp.1015, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1023 = or i64 %tmp.1022, %tmp.1019, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1024 = or i64 %tmp.1023, %tmp.1021, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1025 = lshr i64 %tmp.1024, 3, !dbg !452    ; [#uses=1 type=i64] [debug line = 486:3]
  %tmp.1026 = and i64 %tmp.1025, 67108863, !dbg !452 ; [#uses=1 type=i64] [debug line = 486:3]
  %output.addr.56 = getelementptr inbounds i64* %output, i64 2, !dbg !452 ; [#uses=1 type=i64*] [debug line = 486:3]
  store i64 %tmp.1026, i64* %output.addr.56, align 8, !dbg !452 ; [debug line = 486:3]
  %input.load.12 = load i8* %input.addr.8, align 1, !dbg !453 ; [#uses=2 type=i8] [debug line = 487:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.12) nounwind
  %tmp.1027 = zext i8 %input.load.12 to i64, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %input.addr.9 = getelementptr inbounds i8* %input, i64 10, !dbg !453 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input.load.13 = load i8* %input.addr.9, align 1, !dbg !453 ; [#uses=2 type=i8] [debug line = 487:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.13) nounwind
  %tmp.1028 = zext i8 %input.load.13 to i64, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1029 = shl nuw nsw i64 %tmp.1028, 8, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %input.addr.10 = getelementptr inbounds i8* %input, i64 11, !dbg !453 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input.load.14 = load i8* %input.addr.10, align 1, !dbg !453 ; [#uses=2 type=i8] [debug line = 487:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.14) nounwind
  %tmp.1030 = zext i8 %input.load.14 to i64, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1031 = shl nuw nsw i64 %tmp.1030, 16, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %input.addr.11 = getelementptr inbounds i8* %input, i64 12, !dbg !453 ; [#uses=2 type=i8*] [debug line = 487:3]
  %input.load.15 = load i8* %input.addr.11, align 1, !dbg !453 ; [#uses=2 type=i8] [debug line = 487:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.15) nounwind
  %tmp.1032 = zext i8 %input.load.15 to i64, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1033 = shl nuw nsw i64 %tmp.1032, 24, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1034 = or i64 %tmp.1029, %tmp.1027, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1035 = or i64 %tmp.1034, %tmp.1031, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1036 = or i64 %tmp.1035, %tmp.1033, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1037 = lshr i64 %tmp.1036, 5, !dbg !453    ; [#uses=1 type=i64] [debug line = 487:3]
  %tmp.1038 = and i64 %tmp.1037, 33554431, !dbg !453 ; [#uses=1 type=i64] [debug line = 487:3]
  %output.addr.57 = getelementptr inbounds i64* %output, i64 3, !dbg !453 ; [#uses=1 type=i64*] [debug line = 487:3]
  store i64 %tmp.1038, i64* %output.addr.57, align 8, !dbg !453 ; [debug line = 487:3]
  %input.load.16 = load i8* %input.addr.11, align 1, !dbg !454 ; [#uses=2 type=i8] [debug line = 488:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.16) nounwind
  %tmp.1039 = zext i8 %input.load.16 to i64, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %input.addr.12 = getelementptr inbounds i8* %input, i64 13, !dbg !454 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input.load.17 = load i8* %input.addr.12, align 1, !dbg !454 ; [#uses=2 type=i8] [debug line = 488:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.17) nounwind
  %tmp.1040 = zext i8 %input.load.17 to i64, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1041 = shl nuw nsw i64 %tmp.1040, 8, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %input.addr.13 = getelementptr inbounds i8* %input, i64 14, !dbg !454 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input.load.18 = load i8* %input.addr.13, align 1, !dbg !454 ; [#uses=2 type=i8] [debug line = 488:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.18) nounwind
  %tmp.1042 = zext i8 %input.load.18 to i64, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1043 = shl nuw nsw i64 %tmp.1042, 16, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %input.addr.14 = getelementptr inbounds i8* %input, i64 15, !dbg !454 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input.load.19 = load i8* %input.addr.14, align 1, !dbg !454 ; [#uses=2 type=i8] [debug line = 488:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.19) nounwind
  %tmp.1044 = zext i8 %input.load.19 to i64, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1045 = shl nuw nsw i64 %tmp.1044, 24, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1046 = or i64 %tmp.1041, %tmp.1039, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1047 = or i64 %tmp.1046, %tmp.1043, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1048 = or i64 %tmp.1047, %tmp.1045, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1049 = lshr i64 %tmp.1048, 6, !dbg !454    ; [#uses=1 type=i64] [debug line = 488:3]
  %tmp.1050 = and i64 %tmp.1049, 67108863, !dbg !454 ; [#uses=1 type=i64] [debug line = 488:3]
  %output.addr.58 = getelementptr inbounds i64* %output, i64 4, !dbg !454 ; [#uses=1 type=i64*] [debug line = 488:3]
  store i64 %tmp.1050, i64* %output.addr.58, align 8, !dbg !454 ; [debug line = 488:3]
  %input.addr.15 = getelementptr inbounds i8* %input, i64 16, !dbg !455 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.20 = load i8* %input.addr.15, align 1, !dbg !455 ; [#uses=2 type=i8] [debug line = 489:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.20) nounwind
  %tmp.1051 = zext i8 %input.load.20 to i64, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %input.addr.16 = getelementptr inbounds i8* %input, i64 17, !dbg !455 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.21 = load i8* %input.addr.16, align 1, !dbg !455 ; [#uses=2 type=i8] [debug line = 489:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.21) nounwind
  %tmp.1052 = zext i8 %input.load.21 to i64, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1053 = shl nuw nsw i64 %tmp.1052, 8, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %input.addr.17 = getelementptr inbounds i8* %input, i64 18, !dbg !455 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.22 = load i8* %input.addr.17, align 1, !dbg !455 ; [#uses=2 type=i8] [debug line = 489:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.22) nounwind
  %tmp.1054 = zext i8 %input.load.22 to i64, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1055 = shl nuw nsw i64 %tmp.1054, 16, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %input.addr.18 = getelementptr inbounds i8* %input, i64 19, !dbg !455 ; [#uses=2 type=i8*] [debug line = 489:3]
  %input.load.23 = load i8* %input.addr.18, align 1, !dbg !455 ; [#uses=2 type=i8] [debug line = 489:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.23) nounwind
  %tmp.1056 = zext i8 %input.load.23 to i64, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1057 = shl nuw nsw i64 %tmp.1056, 24, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1058 = and i64 %tmp.1057, 16777216, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1059 = or i64 %tmp.1053, %tmp.1051, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1060 = or i64 %tmp.1059, %tmp.1055, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %tmp.1061 = or i64 %tmp.1060, %tmp.1058, !dbg !455 ; [#uses=1 type=i64] [debug line = 489:3]
  %output.addr.59 = getelementptr inbounds i64* %output, i64 5, !dbg !455 ; [#uses=1 type=i64*] [debug line = 489:3]
  store i64 %tmp.1061, i64* %output.addr.59, align 8, !dbg !455 ; [debug line = 489:3]
  %input.load.24 = load i8* %input.addr.18, align 1, !dbg !456 ; [#uses=2 type=i8] [debug line = 490:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.24) nounwind
  %tmp.1062 = zext i8 %input.load.24 to i64, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %input.addr.19 = getelementptr inbounds i8* %input, i64 20, !dbg !456 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input.load.25 = load i8* %input.addr.19, align 1, !dbg !456 ; [#uses=2 type=i8] [debug line = 490:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.25) nounwind
  %tmp.1063 = zext i8 %input.load.25 to i64, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1064 = shl nuw nsw i64 %tmp.1063, 8, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %input.addr.20 = getelementptr inbounds i8* %input, i64 21, !dbg !456 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input.load.26 = load i8* %input.addr.20, align 1, !dbg !456 ; [#uses=2 type=i8] [debug line = 490:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.26) nounwind
  %tmp.1065 = zext i8 %input.load.26 to i64, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1066 = shl nuw nsw i64 %tmp.1065, 16, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %input.addr.21 = getelementptr inbounds i8* %input, i64 22, !dbg !456 ; [#uses=2 type=i8*] [debug line = 490:3]
  %input.load.27 = load i8* %input.addr.21, align 1, !dbg !456 ; [#uses=2 type=i8] [debug line = 490:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.27) nounwind
  %tmp.1067 = zext i8 %input.load.27 to i64, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1068 = shl nuw nsw i64 %tmp.1067, 24, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1069 = or i64 %tmp.1064, %tmp.1062, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1070 = or i64 %tmp.1069, %tmp.1066, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1071 = or i64 %tmp.1070, %tmp.1068, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1072 = lshr i64 %tmp.1071, 1, !dbg !456    ; [#uses=1 type=i64] [debug line = 490:3]
  %tmp.1073 = and i64 %tmp.1072, 67108863, !dbg !456 ; [#uses=1 type=i64] [debug line = 490:3]
  %output.addr.60 = getelementptr inbounds i64* %output, i64 6, !dbg !456 ; [#uses=1 type=i64*] [debug line = 490:3]
  store i64 %tmp.1073, i64* %output.addr.60, align 8, !dbg !456 ; [debug line = 490:3]
  %input.load.28 = load i8* %input.addr.21, align 1, !dbg !457 ; [#uses=2 type=i8] [debug line = 491:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.28) nounwind
  %tmp.1074 = zext i8 %input.load.28 to i64, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %input.addr.22 = getelementptr inbounds i8* %input, i64 23, !dbg !457 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input.load.29 = load i8* %input.addr.22, align 1, !dbg !457 ; [#uses=2 type=i8] [debug line = 491:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.29) nounwind
  %tmp.1075 = zext i8 %input.load.29 to i64, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1076 = shl nuw nsw i64 %tmp.1075, 8, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %input.addr.23 = getelementptr inbounds i8* %input, i64 24, !dbg !457 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input.load.30 = load i8* %input.addr.23, align 1, !dbg !457 ; [#uses=2 type=i8] [debug line = 491:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.30) nounwind
  %tmp.1077 = zext i8 %input.load.30 to i64, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1078 = shl nuw nsw i64 %tmp.1077, 16, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %input.addr.24 = getelementptr inbounds i8* %input, i64 25, !dbg !457 ; [#uses=2 type=i8*] [debug line = 491:3]
  %input.load.31 = load i8* %input.addr.24, align 1, !dbg !457 ; [#uses=2 type=i8] [debug line = 491:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.31) nounwind
  %tmp.1079 = zext i8 %input.load.31 to i64, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1080 = shl nuw nsw i64 %tmp.1079, 24, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1081 = or i64 %tmp.1076, %tmp.1074, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1082 = or i64 %tmp.1081, %tmp.1078, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1083 = or i64 %tmp.1082, %tmp.1080, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1084 = lshr i64 %tmp.1083, 3, !dbg !457    ; [#uses=1 type=i64] [debug line = 491:3]
  %tmp.1085 = and i64 %tmp.1084, 33554431, !dbg !457 ; [#uses=1 type=i64] [debug line = 491:3]
  %output.addr.61 = getelementptr inbounds i64* %output, i64 7, !dbg !457 ; [#uses=1 type=i64*] [debug line = 491:3]
  store i64 %tmp.1085, i64* %output.addr.61, align 8, !dbg !457 ; [debug line = 491:3]
  %input.load.32 = load i8* %input.addr.24, align 1, !dbg !458 ; [#uses=2 type=i8] [debug line = 492:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.32) nounwind
  %tmp.1086 = zext i8 %input.load.32 to i64, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %input.addr.25 = getelementptr inbounds i8* %input, i64 26, !dbg !458 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input.load.33 = load i8* %input.addr.25, align 1, !dbg !458 ; [#uses=2 type=i8] [debug line = 492:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.33) nounwind
  %tmp.1087 = zext i8 %input.load.33 to i64, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1088 = shl nuw nsw i64 %tmp.1087, 8, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %input.addr.26 = getelementptr inbounds i8* %input, i64 27, !dbg !458 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input.load.34 = load i8* %input.addr.26, align 1, !dbg !458 ; [#uses=2 type=i8] [debug line = 492:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.34) nounwind
  %tmp.1089 = zext i8 %input.load.34 to i64, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1090 = shl nuw nsw i64 %tmp.1089, 16, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %input.addr.27 = getelementptr inbounds i8* %input, i64 28, !dbg !458 ; [#uses=2 type=i8*] [debug line = 492:3]
  %input.load.35 = load i8* %input.addr.27, align 1, !dbg !458 ; [#uses=2 type=i8] [debug line = 492:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.35) nounwind
  %tmp.1091 = zext i8 %input.load.35 to i64, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1092 = shl nuw nsw i64 %tmp.1091, 24, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1093 = or i64 %tmp.1088, %tmp.1086, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1094 = or i64 %tmp.1093, %tmp.1090, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1095 = or i64 %tmp.1094, %tmp.1092, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1096 = lshr i64 %tmp.1095, 4, !dbg !458    ; [#uses=1 type=i64] [debug line = 492:3]
  %tmp.1097 = and i64 %tmp.1096, 67108863, !dbg !458 ; [#uses=1 type=i64] [debug line = 492:3]
  %output.addr.62 = getelementptr inbounds i64* %output, i64 8, !dbg !458 ; [#uses=1 type=i64*] [debug line = 492:3]
  store i64 %tmp.1097, i64* %output.addr.62, align 8, !dbg !458 ; [debug line = 492:3]
  %input.load.36 = load i8* %input.addr.27, align 1, !dbg !459 ; [#uses=2 type=i8] [debug line = 493:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.36) nounwind
  %tmp.1098 = zext i8 %input.load.36 to i64, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %input.addr.28 = getelementptr inbounds i8* %input, i64 29, !dbg !459 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input.load.37 = load i8* %input.addr.28, align 1, !dbg !459 ; [#uses=2 type=i8] [debug line = 493:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.37) nounwind
  %tmp.1099 = zext i8 %input.load.37 to i64, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1100 = shl nuw nsw i64 %tmp.1099, 8, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %input.addr.29 = getelementptr inbounds i8* %input, i64 30, !dbg !459 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input.load.38 = load i8* %input.addr.29, align 1, !dbg !459 ; [#uses=2 type=i8] [debug line = 493:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.38) nounwind
  %tmp.1101 = zext i8 %input.load.38 to i64, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1102 = shl nuw nsw i64 %tmp.1101, 16, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %input.addr.30 = getelementptr inbounds i8* %input, i64 31, !dbg !459 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input.load.39 = load i8* %input.addr.30, align 1, !dbg !459 ; [#uses=2 type=i8] [debug line = 493:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.39) nounwind
  %tmp.1103 = zext i8 %input.load.39 to i64, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1104 = shl nuw nsw i64 %tmp.1103, 24, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1105 = or i64 %tmp.1100, %tmp.1098, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1106 = or i64 %tmp.1105, %tmp.1102, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1107 = or i64 %tmp.1106, %tmp.1104, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1108 = lshr i64 %tmp.1107, 6, !dbg !459    ; [#uses=1 type=i64] [debug line = 493:3]
  %tmp.1109 = and i64 %tmp.1108, 33554431, !dbg !459 ; [#uses=1 type=i64] [debug line = 493:3]
  %output.addr.63 = getelementptr inbounds i64* %output, i64 9, !dbg !459 ; [#uses=1 type=i64*] [debug line = 493:3]
  store i64 %tmp.1109, i64* %output.addr.63, align 8, !dbg !459 ; [debug line = 493:3]
  ret void, !dbg !460                             ; [debug line = 495:1]
}

; [#uses=4]
define internal fastcc void @fdifference(i64* %output, i64* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %output}, i64 0, metadata !461), !dbg !462 ; [debug line = 99:31] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %in}, i64 0, metadata !463), !dbg !464 ; [debug line = 99:51] [debug variable = in]
  br label %1, !dbg !465                          ; [debug line = 101:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.5, %2 ]            ; [#uses=3 type=i32]
  %tmp = icmp eq i32 %i, 10, !dbg !465            ; [#uses=1 type=i1] [debug line = 101:8]
  br i1 %tmp, label %3, label %2, !dbg !465       ; [debug line = 101:8]

; <label>:2                                       ; preds = %1
  %tmp.1110 = zext i32 %i to i64, !dbg !468       ; [#uses=2 type=i64] [debug line = 102:5]
  %in.addr = getelementptr inbounds i64* %in, i64 %tmp.1110, !dbg !468 ; [#uses=1 type=i64*] [debug line = 102:5]
  %in.load = load i64* %in.addr, align 8, !dbg !468 ; [#uses=2 type=i64] [debug line = 102:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %in.load) nounwind
  %output.addr = getelementptr inbounds i64* %output, i64 %tmp.1110, !dbg !468 ; [#uses=2 type=i64*] [debug line = 102:5]
  %output.load = load i64* %output.addr, align 8, !dbg !468 ; [#uses=2 type=i64] [debug line = 102:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %output.load) nounwind
  %tmp.1111 = sub nsw i64 %in.load, %output.load, !dbg !468 ; [#uses=1 type=i64] [debug line = 102:5]
  store i64 %tmp.1111, i64* %output.addr, align 8, !dbg !468 ; [debug line = 102:5]
  %i.5 = add i32 %i, 1, !dbg !470                 ; [#uses=1 type=i32] [debug line = 101:23]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !471), !dbg !470 ; [debug line = 101:23] [debug variable = i]
  br label %1, !dbg !470                          ; [debug line = 101:23]

; <label>:3                                       ; preds = %1
  ret void, !dbg !472                             ; [debug line = 104:1]
}

; [#uses=1]
define internal fastcc void @fcontract(i8* %output, i64* %input_limbs) nounwind uwtable {
  %input = alloca [10 x i32], align 16            ; [#uses=23 type=[10 x i32]*]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !473), !dbg !474 ; [debug line = 525:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i64* %input_limbs}, i64 0, metadata !475), !dbg !476 ; [debug line = 525:29] [debug variable = input_limbs]
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %input}, metadata !477), !dbg !480 ; [debug line = 528:7] [debug variable = input]
  br label %1, !dbg !481                          ; [debug line = 532:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.6, %2 ]            ; [#uses=3 type=i32]
  %exitcond6 = icmp eq i32 %i, 10, !dbg !481      ; [#uses=1 type=i1] [debug line = 532:8]
  br i1 %exitcond6, label %.preheader8.preheader, label %2, !dbg !481 ; [debug line = 532:8]

.preheader8.preheader:                            ; preds = %1
  %input.addr = getelementptr inbounds [10 x i32]* %input, i64 0, i64 9, !dbg !483 ; [#uses=6 type=i32*] [debug line = 556:38]
  %input.addr.31 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 0, !dbg !487 ; [#uses=9 type=i32*] [debug line = 559:7]
  br label %.preheader8, !dbg !488                ; [debug line = 536:8]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !489            ; [#uses=2 type=i64] [debug line = 533:5]
  %input_limbs.addr = getelementptr inbounds i64* %input_limbs, i64 %tmp, !dbg !489 ; [#uses=1 type=i64*] [debug line = 533:5]
  %input_limbs.load = load i64* %input_limbs.addr, align 8, !dbg !489 ; [#uses=2 type=i64] [debug line = 533:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %input_limbs.load) nounwind
  %tmp.1113 = trunc i64 %input_limbs.load to i32, !dbg !489 ; [#uses=1 type=i32] [debug line = 533:5]
  %input.addr.32 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp, !dbg !489 ; [#uses=1 type=i32*] [debug line = 533:5]
  store i32 %tmp.1113, i32* %input.addr.32, align 4, !dbg !489 ; [debug line = 533:5]
  %i.6 = add nsw i32 %i, 1, !dbg !491             ; [#uses=1 type=i32] [debug line = 532:23]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !492), !dbg !491 ; [debug line = 532:23] [debug variable = i]
  br label %1, !dbg !491                          ; [debug line = 532:23]

.preheader8:                                      ; preds = %7, %.preheader8.preheader
  %j = phi i32 [ %j.2, %7 ], [ 0, %.preheader8.preheader ] ; [#uses=2 type=i32]
  %exitcond5 = icmp eq i32 %j, 2, !dbg !488       ; [#uses=1 type=i1] [debug line = 536:8]
  br i1 %exitcond5, label %8, label %.preheader7.preheader, !dbg !488 ; [debug line = 536:8]

.preheader7.preheader:                            ; preds = %.preheader8
  br label %.preheader7, !dbg !493                ; [debug line = 537:10]

.preheader7:                                      ; preds = %6, %.preheader7.preheader
  %i.1 = phi i32 [ %i.7, %6 ], [ 0, %.preheader7.preheader ] ; [#uses=7 type=i32]
  %exitcond4 = icmp eq i32 %i.1, 9, !dbg !493     ; [#uses=1 type=i1] [debug line = 537:10]
  br i1 %exitcond4, label %7, label %3, !dbg !493 ; [debug line = 537:10]

; <label>:3                                       ; preds = %.preheader7
  %tmp.1129 = and i32 %i.1, 1, !dbg !495          ; [#uses=1 type=i32] [debug line = 538:7]
  %tmp.1130 = icmp eq i32 %tmp.1129, 0, !dbg !495 ; [#uses=1 type=i1] [debug line = 538:7]
  br i1 %tmp.1130, label %5, label %4, !dbg !495  ; [debug line = 538:7]

; <label>:4                                       ; preds = %3
  %tmp.1139 = sext i32 %i.1 to i64, !dbg !497     ; [#uses=1 type=i64] [debug line = 541:40]
  %input.addr.36 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1139, !dbg !497 ; [#uses=2 type=i32*] [debug line = 541:40]
  %input.load.45 = load i32* %input.addr.36, align 4, !dbg !497 ; [#uses=6 type=i32] [debug line = 541:40]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.45) nounwind
  %mask.6 = ashr i32 %input.load.45, 31, !dbg !497 ; [#uses=1 type=i32] [debug line = 541:40]
  call void @llvm.dbg.value(metadata !{i32 %mask.6}, i64 0, metadata !499), !dbg !497 ; [debug line = 541:40] [debug variable = mask]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.45) nounwind
  %tmp.1140 = and i32 %mask.6, %input.load.45, !dbg !500 ; [#uses=1 type=i32] [debug line = 542:53]
  %tmp.1141 = ashr i32 %tmp.1140, 25, !dbg !500   ; [#uses=2 type=i32] [debug line = 542:53]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.45) nounwind
  %tmp.1142 = mul i32 %tmp.1141, -33554432, !dbg !501 ; [#uses=1 type=i32] [debug line = 543:9]
  %tmp.1143 = add nsw i32 %tmp.1142, %input.load.45, !dbg !501 ; [#uses=1 type=i32] [debug line = 543:9]
  store i32 %tmp.1143, i32* %input.addr.36, align 4, !dbg !501 ; [debug line = 543:9]
  %tmp.1144 = add nsw i32 %i.1, 1, !dbg !502      ; [#uses=1 type=i32] [debug line = 544:9]
  %tmp.1145 = sext i32 %tmp.1144 to i64, !dbg !502 ; [#uses=1 type=i64] [debug line = 544:9]
  %input.addr.37 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1145, !dbg !502 ; [#uses=2 type=i32*] [debug line = 544:9]
  %input.load.46 = load i32* %input.addr.37, align 4, !dbg !502 ; [#uses=2 type=i32] [debug line = 544:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.46) nounwind
  %tmp.1146 = add nsw i32 %input.load.46, %tmp.1141, !dbg !502 ; [#uses=1 type=i32] [debug line = 544:9]
  store i32 %tmp.1146, i32* %input.addr.37, align 4, !dbg !502 ; [debug line = 544:9]
  br label %6, !dbg !503                          ; [debug line = 545:7]

; <label>:5                                       ; preds = %3
  %tmp.1131 = sext i32 %i.1 to i64, !dbg !504     ; [#uses=1 type=i64] [debug line = 546:40]
  %input.addr.34 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1131, !dbg !504 ; [#uses=2 type=i32*] [debug line = 546:40]
  %input.load.43 = load i32* %input.addr.34, align 4, !dbg !504 ; [#uses=6 type=i32] [debug line = 546:40]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.43) nounwind
  %mask.5 = ashr i32 %input.load.43, 31, !dbg !504 ; [#uses=1 type=i32] [debug line = 546:40]
  call void @llvm.dbg.value(metadata !{i32 %mask.5}, i64 0, metadata !506), !dbg !504 ; [debug line = 546:40] [debug variable = mask]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.43) nounwind
  %tmp.1132 = and i32 %mask.5, %input.load.43, !dbg !507 ; [#uses=1 type=i32] [debug line = 547:53]
  %tmp.1133 = ashr i32 %tmp.1132, 26, !dbg !507   ; [#uses=2 type=i32] [debug line = 547:53]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.43) nounwind
  %tmp.1134 = mul i32 %tmp.1133, -67108864, !dbg !508 ; [#uses=1 type=i32] [debug line = 548:9]
  %tmp.1135 = add nsw i32 %tmp.1134, %input.load.43, !dbg !508 ; [#uses=1 type=i32] [debug line = 548:9]
  store i32 %tmp.1135, i32* %input.addr.34, align 4, !dbg !508 ; [debug line = 548:9]
  %tmp.1136 = add nsw i32 %i.1, 1, !dbg !509      ; [#uses=1 type=i32] [debug line = 549:9]
  %tmp.1137 = sext i32 %tmp.1136 to i64, !dbg !509 ; [#uses=1 type=i64] [debug line = 549:9]
  %input.addr.35 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1137, !dbg !509 ; [#uses=2 type=i32*] [debug line = 549:9]
  %input.load.44 = load i32* %input.addr.35, align 4, !dbg !509 ; [#uses=2 type=i32] [debug line = 549:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.44) nounwind
  %tmp.1138 = add nsw i32 %input.load.44, %tmp.1133, !dbg !509 ; [#uses=1 type=i32] [debug line = 549:9]
  store i32 %tmp.1138, i32* %input.addr.35, align 4, !dbg !509 ; [debug line = 549:9]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %i.7 = add nsw i32 %i.1, 1, !dbg !510           ; [#uses=1 type=i32] [debug line = 537:24]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !492), !dbg !510 ; [debug line = 537:24] [debug variable = i]
  br label %.preheader7, !dbg !510                ; [debug line = 537:24]

; <label>:7                                       ; preds = %.preheader7
  %input.load.41 = load i32* %input.addr, align 4, !dbg !483 ; [#uses=6 type=i32] [debug line = 556:38]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.41) nounwind
  %mask.3 = ashr i32 %input.load.41, 31, !dbg !483 ; [#uses=1 type=i32] [debug line = 556:38]
  call void @llvm.dbg.value(metadata !{i32 %mask.3}, i64 0, metadata !511), !dbg !483 ; [debug line = 556:38] [debug variable = mask]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.41) nounwind
  %tmp.1122 = and i32 %mask.3, %input.load.41, !dbg !512 ; [#uses=1 type=i32] [debug line = 557:51]
  %tmp.1123 = ashr i32 %tmp.1122, 25, !dbg !512   ; [#uses=2 type=i32] [debug line = 557:51]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.41) nounwind
  %tmp.1124 = mul i32 %tmp.1123, -33554432, !dbg !513 ; [#uses=1 type=i32] [debug line = 558:7]
  %tmp.1125 = add nsw i32 %tmp.1124, %input.load.41, !dbg !513 ; [#uses=1 type=i32] [debug line = 558:7]
  store i32 %tmp.1125, i32* %input.addr, align 4, !dbg !513 ; [debug line = 558:7]
  %input.load.42 = load i32* %input.addr.31, align 16, !dbg !487 ; [#uses=2 type=i32] [debug line = 559:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.42) nounwind
  %tmp.1126 = mul i32 %tmp.1123, 19, !dbg !487    ; [#uses=1 type=i32] [debug line = 559:7]
  %tmp.1127 = add i32 %input.load.42, %tmp.1126, !dbg !487 ; [#uses=1 type=i32] [debug line = 559:7]
  store i32 %tmp.1127, i32* %input.addr.31, align 16, !dbg !487 ; [debug line = 559:7]
  %j.2 = add nsw i32 %j, 1, !dbg !514             ; [#uses=1 type=i32] [debug line = 536:22]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !515), !dbg !514 ; [debug line = 536:22] [debug variable = j]
  br label %.preheader8, !dbg !514                ; [debug line = 536:22]

; <label>:8                                       ; preds = %.preheader8
  %input.load = load i32* %input.addr.31, align 16, !dbg !516 ; [#uses=6 type=i32] [debug line = 580:36]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load) nounwind
  %mask = ashr i32 %input.load, 31, !dbg !516     ; [#uses=1 type=i32] [debug line = 580:36]
  call void @llvm.dbg.value(metadata !{i32 %mask}, i64 0, metadata !518), !dbg !516 ; [debug line = 580:36] [debug variable = mask]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load) nounwind
  %tmp.1115 = and i32 %mask, %input.load, !dbg !519 ; [#uses=1 type=i32] [debug line = 581:49]
  %tmp.1116 = ashr i32 %tmp.1115, 26, !dbg !519   ; [#uses=2 type=i32] [debug line = 581:49]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load) nounwind
  %tmp.1117 = mul i32 %tmp.1116, -67108864, !dbg !520 ; [#uses=1 type=i32] [debug line = 582:5]
  %tmp.1118 = add nsw i32 %tmp.1117, %input.load, !dbg !520 ; [#uses=2 type=i32] [debug line = 582:5]
  store i32 %tmp.1118, i32* %input.addr.31, align 16, !dbg !520 ; [debug line = 582:5]
  %input.addr.33 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 1, !dbg !521 ; [#uses=4 type=i32*] [debug line = 583:5]
  %input.load.40 = load i32* %input.addr.33, align 4, !dbg !521 ; [#uses=2 type=i32] [debug line = 583:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.40) nounwind
  %tmp.1119 = add nsw i32 %input.load.40, %tmp.1116, !dbg !521 ; [#uses=1 type=i32] [debug line = 583:5]
  store i32 %tmp.1119, i32* %input.addr.33, align 4, !dbg !521 ; [debug line = 583:5]
  br label %9, !dbg !522                          ; [debug line = 588:8]

; <label>:9                                       ; preds = %14, %8
  %tmp.1120 = phi i32 [ %tmp.1118, %8 ], [ %tmp.1155, %14 ] ; [#uses=1 type=i32]
  %j.1 = phi i32 [ 0, %8 ], [ %j.3, %14 ]         ; [#uses=2 type=i32]
  %exitcond3 = icmp eq i32 %j.1, 2, !dbg !522     ; [#uses=1 type=i1] [debug line = 588:8]
  br i1 %exitcond3, label %15, label %.preheader.preheader, !dbg !522 ; [debug line = 588:8]

.preheader.preheader:                             ; preds = %9
  br label %.preheader, !dbg !524                 ; [debug line = 589:10]

.preheader:                                       ; preds = %13, %.preheader.preheader
  %i.2 = phi i32 [ %i.9, %13 ], [ 0, %.preheader.preheader ] ; [#uses=7 type=i32]
  %exitcond2 = icmp eq i32 %i.2, 9, !dbg !524     ; [#uses=1 type=i1] [debug line = 589:10]
  br i1 %exitcond2, label %14, label %10, !dbg !524 ; [debug line = 589:10]

; <label>:10                                      ; preds = %.preheader
  %tmp.1157 = and i32 %i.2, 1, !dbg !527          ; [#uses=1 type=i32] [debug line = 590:7]
  %tmp.1158 = icmp eq i32 %tmp.1157, 0, !dbg !527 ; [#uses=1 type=i1] [debug line = 590:7]
  br i1 %tmp.1158, label %12, label %11, !dbg !527 ; [debug line = 590:7]

; <label>:11                                      ; preds = %10
  %tmp.1169 = sext i32 %i.2 to i64, !dbg !529     ; [#uses=1 type=i64] [debug line = 591:41]
  %input.addr.42 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1169, !dbg !529 ; [#uses=2 type=i32*] [debug line = 591:41]
  %input.load.54 = load i32* %input.addr.42, align 4, !dbg !529 ; [#uses=4 type=i32] [debug line = 591:41]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.54) nounwind
  %carry.2 = ashr i32 %input.load.54, 25, !dbg !529 ; [#uses=1 type=i32] [debug line = 591:41]
  call void @llvm.dbg.value(metadata !{i32 %carry.2}, i64 0, metadata !531), !dbg !529 ; [debug line = 591:41] [debug variable = carry]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.54) nounwind
  %tmp.1170 = and i32 %input.load.54, 33554431, !dbg !532 ; [#uses=1 type=i32] [debug line = 592:9]
  store i32 %tmp.1170, i32* %input.addr.42, align 4, !dbg !532 ; [debug line = 592:9]
  %tmp.1171 = add nsw i32 %i.2, 1, !dbg !533      ; [#uses=1 type=i32] [debug line = 593:9]
  %tmp.1172 = sext i32 %tmp.1171 to i64, !dbg !533 ; [#uses=1 type=i64] [debug line = 593:9]
  %input.addr.43 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1172, !dbg !533 ; [#uses=2 type=i32*] [debug line = 593:9]
  %input.load.55 = load i32* %input.addr.43, align 4, !dbg !533 ; [#uses=2 type=i32] [debug line = 593:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.55) nounwind
  %tmp.1173 = add nsw i32 %input.load.55, %carry.2, !dbg !533 ; [#uses=1 type=i32] [debug line = 593:9]
  store i32 %tmp.1173, i32* %input.addr.43, align 4, !dbg !533 ; [debug line = 593:9]
  br label %13, !dbg !534                         ; [debug line = 594:7]

; <label>:12                                      ; preds = %10
  %tmp.1164 = sext i32 %i.2 to i64, !dbg !535     ; [#uses=1 type=i64] [debug line = 595:41]
  %input.addr.40 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1164, !dbg !535 ; [#uses=2 type=i32*] [debug line = 595:41]
  %input.load.52 = load i32* %input.addr.40, align 4, !dbg !535 ; [#uses=4 type=i32] [debug line = 595:41]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.52) nounwind
  %carry.1 = ashr i32 %input.load.52, 26, !dbg !535 ; [#uses=1 type=i32] [debug line = 595:41]
  call void @llvm.dbg.value(metadata !{i32 %carry.1}, i64 0, metadata !537), !dbg !535 ; [debug line = 595:41] [debug variable = carry]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.52) nounwind
  %tmp.1165 = and i32 %input.load.52, 67108863, !dbg !538 ; [#uses=1 type=i32] [debug line = 596:9]
  store i32 %tmp.1165, i32* %input.addr.40, align 4, !dbg !538 ; [debug line = 596:9]
  %tmp.1166 = add nsw i32 %i.2, 1, !dbg !539      ; [#uses=1 type=i32] [debug line = 597:9]
  %tmp.1167 = sext i32 %tmp.1166 to i64, !dbg !539 ; [#uses=1 type=i64] [debug line = 597:9]
  %input.addr.41 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1167, !dbg !539 ; [#uses=2 type=i32*] [debug line = 597:9]
  %input.load.53 = load i32* %input.addr.41, align 4, !dbg !539 ; [#uses=2 type=i32] [debug line = 597:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.53) nounwind
  %tmp.1168 = add nsw i32 %input.load.53, %carry.1, !dbg !539 ; [#uses=1 type=i32] [debug line = 597:9]
  store i32 %tmp.1168, i32* %input.addr.41, align 4, !dbg !539 ; [debug line = 597:9]
  br label %13

; <label>:13                                      ; preds = %12, %11
  %i.9 = add nsw i32 %i.2, 1, !dbg !540           ; [#uses=1 type=i32] [debug line = 589:24]
  call void @llvm.dbg.value(metadata !{i32 %i.9}, i64 0, metadata !492), !dbg !540 ; [debug line = 589:24] [debug variable = i]
  br label %.preheader, !dbg !540                 ; [debug line = 589:24]

; <label>:14                                      ; preds = %.preheader
  %input.load.48 = load i32* %input.addr, align 4, !dbg !541 ; [#uses=4 type=i32] [debug line = 602:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.48) nounwind
  %carry = ashr i32 %input.load.48, 25, !dbg !541 ; [#uses=1 type=i32] [debug line = 602:39]
  call void @llvm.dbg.value(metadata !{i32 %carry}, i64 0, metadata !543), !dbg !541 ; [debug line = 602:39] [debug variable = carry]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.48) nounwind
  %tmp.1153 = and i32 %input.load.48, 33554431, !dbg !544 ; [#uses=1 type=i32] [debug line = 603:7]
  store i32 %tmp.1153, i32* %input.addr, align 4, !dbg !544 ; [debug line = 603:7]
  %tmp.1154 = mul nsw i32 %carry, 19, !dbg !545   ; [#uses=1 type=i32] [debug line = 604:7]
  %input.load.49 = load i32* %input.addr.31, align 16, !dbg !545 ; [#uses=2 type=i32] [debug line = 604:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.49) nounwind
  %tmp.1155 = add nsw i32 %input.load.49, %tmp.1154, !dbg !545 ; [#uses=2 type=i32] [debug line = 604:7]
  store i32 %tmp.1155, i32* %input.addr.31, align 16, !dbg !545 ; [debug line = 604:7]
  %j.3 = add nsw i32 %j.1, 1, !dbg !546           ; [#uses=1 type=i32] [debug line = 588:22]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !515), !dbg !546 ; [debug line = 588:22] [debug variable = j]
  br label %9, !dbg !546                          ; [debug line = 588:22]

; <label>:15                                      ; preds = %9
  %.lcssa = phi i32 [ %tmp.1120, %9 ]             ; [#uses=2 type=i32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %.lcssa) nounwind
  %mask.2 = call fastcc i32 @s32_gte(i32 %.lcssa), !dbg !547 ; [#uses=1 type=i32] [debug line = 618:10]
  call void @llvm.dbg.value(metadata !{i32 %mask.2}, i64 0, metadata !548), !dbg !547 ; [debug line = 618:10] [debug variable = mask]
  br label %16, !dbg !549                         ; [debug line = 619:8]

; <label>:16                                      ; preds = %20, %15
  %i.3 = phi i32 [ 1, %15 ], [ %i.8, %20 ]        ; [#uses=5 type=i32]
  %mask4 = phi i32 [ %mask.2, %15 ], [ %mask.1, %20 ] ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %i.3, 10, !dbg !549    ; [#uses=1 type=i1] [debug line = 619:8]
  br i1 %exitcond1, label %21, label %17, !dbg !549 ; [debug line = 619:8]

; <label>:17                                      ; preds = %16
  %tmp.1151 = and i32 %i.3, 1, !dbg !551          ; [#uses=1 type=i32] [debug line = 620:5]
  %tmp.1152 = icmp eq i32 %tmp.1151, 0, !dbg !551 ; [#uses=1 type=i1] [debug line = 620:5]
  br i1 %tmp.1152, label %19, label %18, !dbg !551 ; [debug line = 620:5]

; <label>:18                                      ; preds = %17
  %tmp.1162 = sext i32 %i.3 to i64, !dbg !553     ; [#uses=1 type=i64] [debug line = 621:15]
  %input.addr.39 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1162, !dbg !553 ; [#uses=1 type=i32*] [debug line = 621:15]
  %input.load.51 = load i32* %input.addr.39, align 4, !dbg !553 ; [#uses=2 type=i32] [debug line = 621:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.51) nounwind
  %tmp.1163 = call fastcc i32 @s32_eq(i32 %input.load.51, i32 33554431), !dbg !553 ; [#uses=1 type=i32] [debug line = 621:15]
  br label %20, !dbg !555                         ; [debug line = 622:5]

; <label>:19                                      ; preds = %17
  %tmp.1160 = sext i32 %i.3 to i64, !dbg !556     ; [#uses=1 type=i64] [debug line = 623:15]
  %input.addr.38 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1160, !dbg !556 ; [#uses=1 type=i32*] [debug line = 623:15]
  %input.load.50 = load i32* %input.addr.38, align 4, !dbg !556 ; [#uses=2 type=i32] [debug line = 623:15]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.50) nounwind
  %tmp.1161 = call fastcc i32 @s32_eq(i32 %input.load.50, i32 67108863), !dbg !556 ; [#uses=1 type=i32] [debug line = 623:15]
  br label %20

; <label>:20                                      ; preds = %19, %18
  %.pn = phi i32 [ %tmp.1163, %18 ], [ %tmp.1161, %19 ] ; [#uses=1 type=i32]
  %mask.1 = and i32 %.pn, %mask4, !dbg !553       ; [#uses=1 type=i32] [debug line = 621:15]
  call void @llvm.dbg.value(metadata !{i32 %mask.1}, i64 0, metadata !548), !dbg !553 ; [debug line = 621:15] [debug variable = mask]
  %i.8 = add nsw i32 %i.3, 1, !dbg !558           ; [#uses=1 type=i32] [debug line = 619:23]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !492), !dbg !558 ; [debug line = 619:23] [debug variable = i]
  br label %16, !dbg !558                         ; [debug line = 619:23]

; <label>:21                                      ; preds = %16
  %mask.0.lcssa = phi i32 [ %mask4, %16 ]         ; [#uses=3 type=i32]
  %tmp.1147 = and i32 %mask.0.lcssa, 67108845, !dbg !559 ; [#uses=1 type=i32] [debug line = 629:3]
  %input.load.47 = load i32* %input.addr.31, align 16, !dbg !559 ; [#uses=2 type=i32] [debug line = 629:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.47) nounwind
  %tmp.1148 = sub nsw i32 %input.load.47, %tmp.1147, !dbg !559 ; [#uses=1 type=i32] [debug line = 629:3]
  store i32 %tmp.1148, i32* %input.addr.31, align 16, !dbg !559 ; [debug line = 629:3]
  %tmp.1149 = and i32 %mask.0.lcssa, 67108863, !dbg !560 ; [#uses=1 type=i32] [debug line = 635:7]
  %tmp.1150 = and i32 %mask.0.lcssa, 33554431, !dbg !564 ; [#uses=1 type=i32] [debug line = 633:7]
  br label %22, !dbg !566                         ; [debug line = 631:8]

; <label>:22                                      ; preds = %26, %21
  %i.4 = phi i32 [ 1, %21 ], [ %i.10, %26 ]       ; [#uses=5 type=i32]
  %exitcond = icmp eq i32 %i.4, 10, !dbg !566     ; [#uses=1 type=i1] [debug line = 631:8]
  br i1 %exitcond, label %27, label %23, !dbg !566 ; [debug line = 631:8]

; <label>:23                                      ; preds = %22
  %tmp.1260 = and i32 %i.4, 1, !dbg !567          ; [#uses=1 type=i32] [debug line = 632:5]
  %tmp.1261 = icmp eq i32 %tmp.1260, 0, !dbg !567 ; [#uses=1 type=i1] [debug line = 632:5]
  br i1 %tmp.1261, label %25, label %24, !dbg !567 ; [debug line = 632:5]

; <label>:24                                      ; preds = %23
  %tmp.1266 = sext i32 %i.4 to i64, !dbg !564     ; [#uses=1 type=i64] [debug line = 633:7]
  %input.addr.52 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1266, !dbg !564 ; [#uses=2 type=i32*] [debug line = 633:7]
  %input.load.67 = load i32* %input.addr.52, align 4, !dbg !564 ; [#uses=2 type=i32] [debug line = 633:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.67) nounwind
  %tmp.1267 = sub nsw i32 %input.load.67, %tmp.1150, !dbg !564 ; [#uses=1 type=i32] [debug line = 633:7]
  store i32 %tmp.1267, i32* %input.addr.52, align 4, !dbg !564 ; [debug line = 633:7]
  br label %26, !dbg !568                         ; [debug line = 634:5]

; <label>:25                                      ; preds = %23
  %tmp.1264 = sext i32 %i.4 to i64, !dbg !560     ; [#uses=1 type=i64] [debug line = 635:7]
  %input.addr.51 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.1264, !dbg !560 ; [#uses=2 type=i32*] [debug line = 635:7]
  %input.load.66 = load i32* %input.addr.51, align 4, !dbg !560 ; [#uses=2 type=i32] [debug line = 635:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.66) nounwind
  %tmp.1265 = sub nsw i32 %input.load.66, %tmp.1149, !dbg !560 ; [#uses=1 type=i32] [debug line = 635:7]
  store i32 %tmp.1265, i32* %input.addr.51, align 4, !dbg !560 ; [debug line = 635:7]
  br label %26

; <label>:26                                      ; preds = %25, %24
  %i.10 = add nsw i32 %i.4, 1, !dbg !569          ; [#uses=1 type=i32] [debug line = 631:23]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !492), !dbg !569 ; [debug line = 631:23] [debug variable = i]
  br label %22, !dbg !569                         ; [debug line = 631:23]

; <label>:27                                      ; preds = %22
  %input.load.56 = load i32* %input.addr.33, align 4, !dbg !570 ; [#uses=5 type=i32] [debug line = 639:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.56) nounwind
  %tmp.1174 = shl i32 %input.load.56, 2, !dbg !570 ; [#uses=6 type=i32] [debug line = 639:3]
  store i32 %tmp.1174, i32* %input.addr.33, align 4, !dbg !570 ; [debug line = 639:3]
  %input.addr.44 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 2, !dbg !571 ; [#uses=2 type=i32*] [debug line = 640:3]
  %input.load.57 = load i32* %input.addr.44, align 8, !dbg !571 ; [#uses=5 type=i32] [debug line = 640:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.57) nounwind
  %tmp.1175 = shl i32 %input.load.57, 3, !dbg !571 ; [#uses=6 type=i32] [debug line = 640:3]
  store i32 %tmp.1175, i32* %input.addr.44, align 8, !dbg !571 ; [debug line = 640:3]
  %input.addr.45 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 3, !dbg !572 ; [#uses=2 type=i32*] [debug line = 641:3]
  %input.load.58 = load i32* %input.addr.45, align 4, !dbg !572 ; [#uses=5 type=i32] [debug line = 641:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.58) nounwind
  %tmp.1176 = shl i32 %input.load.58, 5, !dbg !572 ; [#uses=6 type=i32] [debug line = 641:3]
  store i32 %tmp.1176, i32* %input.addr.45, align 4, !dbg !572 ; [debug line = 641:3]
  %input.addr.46 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 4, !dbg !573 ; [#uses=2 type=i32*] [debug line = 642:3]
  %input.load.59 = load i32* %input.addr.46, align 16, !dbg !573 ; [#uses=5 type=i32] [debug line = 642:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.59) nounwind
  %tmp.1177 = shl i32 %input.load.59, 6, !dbg !573 ; [#uses=6 type=i32] [debug line = 642:3]
  store i32 %tmp.1177, i32* %input.addr.46, align 16, !dbg !573 ; [debug line = 642:3]
  %input.addr.47 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 6, !dbg !574 ; [#uses=2 type=i32*] [debug line = 643:3]
  %input.load.60 = load i32* %input.addr.47, align 8, !dbg !574 ; [#uses=5 type=i32] [debug line = 643:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.60) nounwind
  %tmp.1178 = shl i32 %input.load.60, 1, !dbg !574 ; [#uses=6 type=i32] [debug line = 643:3]
  store i32 %tmp.1178, i32* %input.addr.47, align 8, !dbg !574 ; [debug line = 643:3]
  %input.addr.48 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 7, !dbg !575 ; [#uses=2 type=i32*] [debug line = 644:3]
  %input.load.61 = load i32* %input.addr.48, align 4, !dbg !575 ; [#uses=5 type=i32] [debug line = 644:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.61) nounwind
  %tmp.1179 = shl i32 %input.load.61, 3, !dbg !575 ; [#uses=6 type=i32] [debug line = 644:3]
  store i32 %tmp.1179, i32* %input.addr.48, align 4, !dbg !575 ; [debug line = 644:3]
  %input.addr.49 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 8, !dbg !576 ; [#uses=2 type=i32*] [debug line = 645:3]
  %input.load.62 = load i32* %input.addr.49, align 16, !dbg !576 ; [#uses=5 type=i32] [debug line = 645:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.62) nounwind
  %tmp.1180 = shl i32 %input.load.62, 4, !dbg !576 ; [#uses=6 type=i32] [debug line = 645:3]
  store i32 %tmp.1180, i32* %input.addr.49, align 16, !dbg !576 ; [debug line = 645:3]
  %input.load.63 = load i32* %input.addr, align 4, !dbg !577 ; [#uses=5 type=i32] [debug line = 646:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.63) nounwind
  %tmp.1181 = shl i32 %input.load.63, 6, !dbg !577 ; [#uses=6 type=i32] [debug line = 646:3]
  store i32 %tmp.1181, i32* %input.addr, align 4, !dbg !577 ; [debug line = 646:3]
  %output.addr = getelementptr inbounds i8* %output, i64 16, !dbg !578 ; [#uses=1 type=i8*] [debug line = 653:3]
  %input.load.64 = load i32* %input.addr.31, align 16, !dbg !579 ; [#uses=8 type=i32] [debug line = 654:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.64) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 0) nounwind
  %tmp.1182 = trunc i32 %input.load.64 to i8, !dbg !579 ; [#uses=1 type=i8] [debug line = 654:3]
  store i8 %tmp.1182, i8* %output, align 1, !dbg !579 ; [debug line = 654:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.64) nounwind
  %tmp.1183 = lshr i32 %input.load.64, 8, !dbg !580 ; [#uses=1 type=i32] [debug line = 654:36]
  %tmp.1184 = trunc i32 %tmp.1183 to i8, !dbg !580 ; [#uses=1 type=i8] [debug line = 654:36]
  %output.addr.64 = getelementptr inbounds i8* %output, i64 1, !dbg !580 ; [#uses=1 type=i8*] [debug line = 654:36]
  store i8 %tmp.1184, i8* %output.addr.64, align 1, !dbg !580 ; [debug line = 654:36]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.64) nounwind
  %tmp.1185 = lshr i32 %input.load.64, 16, !dbg !581 ; [#uses=1 type=i32] [debug line = 654:75]
  %tmp.1186 = trunc i32 %tmp.1185 to i8, !dbg !581 ; [#uses=1 type=i8] [debug line = 654:75]
  %output.addr.65 = getelementptr inbounds i8* %output, i64 2, !dbg !581 ; [#uses=1 type=i8*] [debug line = 654:75]
  store i8 %tmp.1186, i8* %output.addr.65, align 1, !dbg !581 ; [debug line = 654:75]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.64) nounwind
  %tmp.1187 = lshr i32 %input.load.64, 24, !dbg !582 ; [#uses=1 type=i32] [debug line = 654:115]
  %tmp.1188 = trunc i32 %tmp.1187 to i8, !dbg !582 ; [#uses=2 type=i8] [debug line = 654:115]
  %output.addr.66 = getelementptr inbounds i8* %output, i64 3, !dbg !582 ; [#uses=1 type=i8*] [debug line = 654:115]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1174) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1188) nounwind
  %tmp.1189 = trunc i32 %tmp.1174 to i8, !dbg !583 ; [#uses=1 type=i8] [debug line = 655:3]
  %tmp.1190 = or i8 %tmp.1188, %tmp.1189, !dbg !583 ; [#uses=1 type=i8] [debug line = 655:3]
  store i8 %tmp.1190, i8* %output.addr.66, align 1, !dbg !583 ; [debug line = 655:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1174) nounwind
  %tmp.1191 = lshr i32 %input.load.56, 6, !dbg !584 ; [#uses=1 type=i32] [debug line = 655:36]
  %tmp.1192 = trunc i32 %tmp.1191 to i8, !dbg !584 ; [#uses=1 type=i8] [debug line = 655:36]
  %output.addr.67 = getelementptr inbounds i8* %output, i64 4, !dbg !584 ; [#uses=1 type=i8*] [debug line = 655:36]
  store i8 %tmp.1192, i8* %output.addr.67, align 1, !dbg !584 ; [debug line = 655:36]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1174) nounwind
  %tmp.1193 = lshr i32 %input.load.56, 14, !dbg !585 ; [#uses=1 type=i32] [debug line = 655:75]
  %tmp.1194 = trunc i32 %tmp.1193 to i8, !dbg !585 ; [#uses=1 type=i8] [debug line = 655:75]
  %output.addr.68 = getelementptr inbounds i8* %output, i64 5, !dbg !585 ; [#uses=1 type=i8*] [debug line = 655:75]
  store i8 %tmp.1194, i8* %output.addr.68, align 1, !dbg !585 ; [debug line = 655:75]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1174) nounwind
  %tmp.1195 = lshr i32 %input.load.56, 22, !dbg !586 ; [#uses=1 type=i32] [debug line = 655:115]
  %tmp.1196 = trunc i32 %tmp.1195 to i8, !dbg !586 ; [#uses=2 type=i8] [debug line = 655:115]
  %output.addr.69 = getelementptr inbounds i8* %output, i64 6, !dbg !586 ; [#uses=1 type=i8*] [debug line = 655:115]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1175) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1196) nounwind
  %tmp.1197 = trunc i32 %tmp.1175 to i8, !dbg !587 ; [#uses=1 type=i8] [debug line = 656:3]
  %tmp.1198 = or i8 %tmp.1197, %tmp.1196, !dbg !587 ; [#uses=1 type=i8] [debug line = 656:3]
  store i8 %tmp.1198, i8* %output.addr.69, align 1, !dbg !587 ; [debug line = 656:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1175) nounwind
  %tmp.1199 = lshr i32 %input.load.57, 5, !dbg !588 ; [#uses=1 type=i32] [debug line = 656:36]
  %tmp.1200 = trunc i32 %tmp.1199 to i8, !dbg !588 ; [#uses=1 type=i8] [debug line = 656:36]
  %output.addr.70 = getelementptr inbounds i8* %output, i64 7, !dbg !588 ; [#uses=1 type=i8*] [debug line = 656:36]
  store i8 %tmp.1200, i8* %output.addr.70, align 1, !dbg !588 ; [debug line = 656:36]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1175) nounwind
  %tmp.1201 = lshr i32 %input.load.57, 13, !dbg !589 ; [#uses=1 type=i32] [debug line = 656:75]
  %tmp.1202 = trunc i32 %tmp.1201 to i8, !dbg !589 ; [#uses=1 type=i8] [debug line = 656:75]
  %output.addr.71 = getelementptr inbounds i8* %output, i64 8, !dbg !589 ; [#uses=1 type=i8*] [debug line = 656:75]
  store i8 %tmp.1202, i8* %output.addr.71, align 1, !dbg !589 ; [debug line = 656:75]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1175) nounwind
  %tmp.1203 = lshr i32 %input.load.57, 21, !dbg !590 ; [#uses=1 type=i32] [debug line = 656:115]
  %tmp.1204 = trunc i32 %tmp.1203 to i8, !dbg !590 ; [#uses=2 type=i8] [debug line = 656:115]
  %output.addr.72 = getelementptr inbounds i8* %output, i64 9, !dbg !590 ; [#uses=1 type=i8*] [debug line = 656:115]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1176) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1204) nounwind
  %tmp.1205 = trunc i32 %tmp.1176 to i8, !dbg !591 ; [#uses=1 type=i8] [debug line = 657:3]
  %tmp.1206 = or i8 %tmp.1205, %tmp.1204, !dbg !591 ; [#uses=1 type=i8] [debug line = 657:3]
  store i8 %tmp.1206, i8* %output.addr.72, align 1, !dbg !591 ; [debug line = 657:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1176) nounwind
  %tmp.1207 = lshr i32 %input.load.58, 3, !dbg !592 ; [#uses=1 type=i32] [debug line = 657:36]
  %tmp.1208 = trunc i32 %tmp.1207 to i8, !dbg !592 ; [#uses=1 type=i8] [debug line = 657:36]
  %output.addr.73 = getelementptr inbounds i8* %output, i64 10, !dbg !592 ; [#uses=1 type=i8*] [debug line = 657:36]
  store i8 %tmp.1208, i8* %output.addr.73, align 1, !dbg !592 ; [debug line = 657:36]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1176) nounwind
  %tmp.1209 = lshr i32 %input.load.58, 11, !dbg !593 ; [#uses=1 type=i32] [debug line = 657:75]
  %tmp.1210 = trunc i32 %tmp.1209 to i8, !dbg !593 ; [#uses=1 type=i8] [debug line = 657:75]
  %output.addr.74 = getelementptr inbounds i8* %output, i64 11, !dbg !593 ; [#uses=1 type=i8*] [debug line = 657:75]
  store i8 %tmp.1210, i8* %output.addr.74, align 1, !dbg !593 ; [debug line = 657:75]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1176) nounwind
  %tmp.1211 = lshr i32 %input.load.58, 19, !dbg !594 ; [#uses=1 type=i32] [debug line = 657:115]
  %tmp.1212 = trunc i32 %tmp.1211 to i8, !dbg !594 ; [#uses=2 type=i8] [debug line = 657:115]
  %output.addr.75 = getelementptr inbounds i8* %output, i64 12, !dbg !594 ; [#uses=1 type=i8*] [debug line = 657:115]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1177) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1212) nounwind
  %tmp.1213 = trunc i32 %tmp.1177 to i8, !dbg !595 ; [#uses=1 type=i8] [debug line = 658:3]
  %tmp.1214 = or i8 %tmp.1213, %tmp.1212, !dbg !595 ; [#uses=1 type=i8] [debug line = 658:3]
  store i8 %tmp.1214, i8* %output.addr.75, align 1, !dbg !595 ; [debug line = 658:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1177) nounwind
  %tmp.1215 = lshr i32 %input.load.59, 2, !dbg !596 ; [#uses=1 type=i32] [debug line = 658:37]
  %tmp.1216 = trunc i32 %tmp.1215 to i8, !dbg !596 ; [#uses=1 type=i8] [debug line = 658:37]
  %output.addr.76 = getelementptr inbounds i8* %output, i64 13, !dbg !596 ; [#uses=1 type=i8*] [debug line = 658:37]
  store i8 %tmp.1216, i8* %output.addr.76, align 1, !dbg !596 ; [debug line = 658:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1177) nounwind
  %tmp.1217 = lshr i32 %input.load.59, 10, !dbg !597 ; [#uses=1 type=i32] [debug line = 658:77]
  %tmp.1218 = trunc i32 %tmp.1217 to i8, !dbg !597 ; [#uses=1 type=i8] [debug line = 658:77]
  %output.addr.77 = getelementptr inbounds i8* %output, i64 14, !dbg !597 ; [#uses=1 type=i8*] [debug line = 658:77]
  store i8 %tmp.1218, i8* %output.addr.77, align 1, !dbg !597 ; [debug line = 658:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1177) nounwind
  %tmp.1219 = lshr i32 %input.load.59, 18, !dbg !598 ; [#uses=1 type=i32] [debug line = 658:118]
  %tmp.1220 = trunc i32 %tmp.1219 to i8, !dbg !598 ; [#uses=1 type=i8] [debug line = 658:118]
  %output.addr.78 = getelementptr inbounds i8* %output, i64 15, !dbg !598 ; [#uses=1 type=i8*] [debug line = 658:118]
  store i8 %tmp.1220, i8* %output.addr.78, align 1, !dbg !598 ; [debug line = 658:118]
  %input.addr.50 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 5, !dbg !599 ; [#uses=1 type=i32*] [debug line = 659:3]
  %input.load.65 = load i32* %input.addr.50, align 4, !dbg !599 ; [#uses=8 type=i32] [debug line = 659:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.65) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 0) nounwind
  %tmp.1221 = trunc i32 %input.load.65 to i8, !dbg !599 ; [#uses=1 type=i8] [debug line = 659:3]
  store i8 %tmp.1221, i8* %output.addr, align 1, !dbg !599 ; [debug line = 659:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.65) nounwind
  %tmp.1222 = lshr i32 %input.load.65, 8, !dbg !600 ; [#uses=1 type=i32] [debug line = 659:37]
  %tmp.1223 = trunc i32 %tmp.1222 to i8, !dbg !600 ; [#uses=1 type=i8] [debug line = 659:37]
  %output.addr.79 = getelementptr inbounds i8* %output, i64 17, !dbg !600 ; [#uses=1 type=i8*] [debug line = 659:37]
  store i8 %tmp.1223, i8* %output.addr.79, align 1, !dbg !600 ; [debug line = 659:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.65) nounwind
  %tmp.1224 = lshr i32 %input.load.65, 16, !dbg !601 ; [#uses=1 type=i32] [debug line = 659:77]
  %tmp.1225 = trunc i32 %tmp.1224 to i8, !dbg !601 ; [#uses=1 type=i8] [debug line = 659:77]
  %output.addr.80 = getelementptr inbounds i8* %output, i64 18, !dbg !601 ; [#uses=1 type=i8*] [debug line = 659:77]
  store i8 %tmp.1225, i8* %output.addr.80, align 1, !dbg !601 ; [debug line = 659:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.65) nounwind
  %tmp.1226 = lshr i32 %input.load.65, 24, !dbg !602 ; [#uses=1 type=i32] [debug line = 659:118]
  %tmp.1227 = trunc i32 %tmp.1226 to i8, !dbg !602 ; [#uses=2 type=i8] [debug line = 659:118]
  %output.addr.81 = getelementptr inbounds i8* %output, i64 19, !dbg !602 ; [#uses=1 type=i8*] [debug line = 659:118]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1178) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1227) nounwind
  %tmp.1228 = trunc i32 %tmp.1178 to i8, !dbg !603 ; [#uses=1 type=i8] [debug line = 660:3]
  %tmp.1229 = or i8 %tmp.1227, %tmp.1228, !dbg !603 ; [#uses=1 type=i8] [debug line = 660:3]
  store i8 %tmp.1229, i8* %output.addr.81, align 1, !dbg !603 ; [debug line = 660:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1178) nounwind
  %tmp.1230 = lshr i32 %input.load.60, 7, !dbg !604 ; [#uses=1 type=i32] [debug line = 660:37]
  %tmp.1231 = trunc i32 %tmp.1230 to i8, !dbg !604 ; [#uses=1 type=i8] [debug line = 660:37]
  %output.addr.82 = getelementptr inbounds i8* %output, i64 20, !dbg !604 ; [#uses=1 type=i8*] [debug line = 660:37]
  store i8 %tmp.1231, i8* %output.addr.82, align 1, !dbg !604 ; [debug line = 660:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1178) nounwind
  %tmp.1232 = lshr i32 %input.load.60, 15, !dbg !605 ; [#uses=1 type=i32] [debug line = 660:77]
  %tmp.1233 = trunc i32 %tmp.1232 to i8, !dbg !605 ; [#uses=1 type=i8] [debug line = 660:77]
  %output.addr.83 = getelementptr inbounds i8* %output, i64 21, !dbg !605 ; [#uses=1 type=i8*] [debug line = 660:77]
  store i8 %tmp.1233, i8* %output.addr.83, align 1, !dbg !605 ; [debug line = 660:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1178) nounwind
  %tmp.1234 = lshr i32 %input.load.60, 23, !dbg !606 ; [#uses=1 type=i32] [debug line = 660:118]
  %tmp.1235 = trunc i32 %tmp.1234 to i8, !dbg !606 ; [#uses=2 type=i8] [debug line = 660:118]
  %output.addr.84 = getelementptr inbounds i8* %output, i64 22, !dbg !606 ; [#uses=1 type=i8*] [debug line = 660:118]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1179) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1235) nounwind
  %tmp.1236 = trunc i32 %tmp.1179 to i8, !dbg !607 ; [#uses=1 type=i8] [debug line = 661:3]
  %tmp.1237 = or i8 %tmp.1236, %tmp.1235, !dbg !607 ; [#uses=1 type=i8] [debug line = 661:3]
  store i8 %tmp.1237, i8* %output.addr.84, align 1, !dbg !607 ; [debug line = 661:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1179) nounwind
  %tmp.1238 = lshr i32 %input.load.61, 5, !dbg !608 ; [#uses=1 type=i32] [debug line = 661:37]
  %tmp.1239 = trunc i32 %tmp.1238 to i8, !dbg !608 ; [#uses=1 type=i8] [debug line = 661:37]
  %output.addr.85 = getelementptr inbounds i8* %output, i64 23, !dbg !608 ; [#uses=1 type=i8*] [debug line = 661:37]
  store i8 %tmp.1239, i8* %output.addr.85, align 1, !dbg !608 ; [debug line = 661:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1179) nounwind
  %tmp.1240 = lshr i32 %input.load.61, 13, !dbg !609 ; [#uses=1 type=i32] [debug line = 661:77]
  %tmp.1241 = trunc i32 %tmp.1240 to i8, !dbg !609 ; [#uses=1 type=i8] [debug line = 661:77]
  %output.addr.86 = getelementptr inbounds i8* %output, i64 24, !dbg !609 ; [#uses=1 type=i8*] [debug line = 661:77]
  store i8 %tmp.1241, i8* %output.addr.86, align 1, !dbg !609 ; [debug line = 661:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1179) nounwind
  %tmp.1242 = lshr i32 %input.load.61, 21, !dbg !610 ; [#uses=1 type=i32] [debug line = 661:118]
  %tmp.1243 = trunc i32 %tmp.1242 to i8, !dbg !610 ; [#uses=2 type=i8] [debug line = 661:118]
  %output.addr.87 = getelementptr inbounds i8* %output, i64 25, !dbg !610 ; [#uses=1 type=i8*] [debug line = 661:118]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1180) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1243) nounwind
  %tmp.1244 = trunc i32 %tmp.1180 to i8, !dbg !611 ; [#uses=1 type=i8] [debug line = 662:3]
  %tmp.1245 = or i8 %tmp.1244, %tmp.1243, !dbg !611 ; [#uses=1 type=i8] [debug line = 662:3]
  store i8 %tmp.1245, i8* %output.addr.87, align 1, !dbg !611 ; [debug line = 662:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1180) nounwind
  %tmp.1246 = lshr i32 %input.load.62, 4, !dbg !612 ; [#uses=1 type=i32] [debug line = 662:37]
  %tmp.1247 = trunc i32 %tmp.1246 to i8, !dbg !612 ; [#uses=1 type=i8] [debug line = 662:37]
  %output.addr.88 = getelementptr inbounds i8* %output, i64 26, !dbg !612 ; [#uses=1 type=i8*] [debug line = 662:37]
  store i8 %tmp.1247, i8* %output.addr.88, align 1, !dbg !612 ; [debug line = 662:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1180) nounwind
  %tmp.1248 = lshr i32 %input.load.62, 12, !dbg !613 ; [#uses=1 type=i32] [debug line = 662:77]
  %tmp.1249 = trunc i32 %tmp.1248 to i8, !dbg !613 ; [#uses=1 type=i8] [debug line = 662:77]
  %output.addr.89 = getelementptr inbounds i8* %output, i64 27, !dbg !613 ; [#uses=1 type=i8*] [debug line = 662:77]
  store i8 %tmp.1249, i8* %output.addr.89, align 1, !dbg !613 ; [debug line = 662:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1180) nounwind
  %tmp.1250 = lshr i32 %input.load.62, 20, !dbg !614 ; [#uses=1 type=i32] [debug line = 662:118]
  %tmp.1251 = trunc i32 %tmp.1250 to i8, !dbg !614 ; [#uses=2 type=i8] [debug line = 662:118]
  %output.addr.90 = getelementptr inbounds i8* %output, i64 28, !dbg !614 ; [#uses=1 type=i8*] [debug line = 662:118]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1181) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1251) nounwind
  %tmp.1252 = trunc i32 %tmp.1181 to i8, !dbg !615 ; [#uses=1 type=i8] [debug line = 663:3]
  %tmp.1253 = or i8 %tmp.1252, %tmp.1251, !dbg !615 ; [#uses=1 type=i8] [debug line = 663:3]
  store i8 %tmp.1253, i8* %output.addr.90, align 1, !dbg !615 ; [debug line = 663:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1181) nounwind
  %tmp.1254 = lshr i32 %input.load.63, 2, !dbg !616 ; [#uses=1 type=i32] [debug line = 663:37]
  %tmp.1255 = trunc i32 %tmp.1254 to i8, !dbg !616 ; [#uses=1 type=i8] [debug line = 663:37]
  %output.addr.91 = getelementptr inbounds i8* %output, i64 29, !dbg !616 ; [#uses=1 type=i8*] [debug line = 663:37]
  store i8 %tmp.1255, i8* %output.addr.91, align 1, !dbg !616 ; [debug line = 663:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1181) nounwind
  %tmp.1256 = lshr i32 %input.load.63, 10, !dbg !617 ; [#uses=1 type=i32] [debug line = 663:77]
  %tmp.1257 = trunc i32 %tmp.1256 to i8, !dbg !617 ; [#uses=1 type=i8] [debug line = 663:77]
  %output.addr.92 = getelementptr inbounds i8* %output, i64 30, !dbg !617 ; [#uses=1 type=i8*] [debug line = 663:77]
  store i8 %tmp.1257, i8* %output.addr.92, align 1, !dbg !617 ; [debug line = 663:77]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1181) nounwind
  %tmp.1258 = lshr i32 %input.load.63, 18, !dbg !618 ; [#uses=1 type=i32] [debug line = 663:118]
  %tmp.1259 = trunc i32 %tmp.1258 to i8, !dbg !618 ; [#uses=1 type=i8] [debug line = 663:118]
  %output.addr.93 = getelementptr inbounds i8* %output, i64 31, !dbg !618 ; [#uses=1 type=i8*] [debug line = 663:118]
  store i8 %tmp.1259, i8* %output.addr.93, align 1, !dbg !618 ; [debug line = 663:118]
  ret void, !dbg !619                             ; [debug line = 665:1]
}

; [#uses=2]
define internal fastcc i64 @div_by_2_26(i64 %v) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{i64 %v}, i64 0, metadata !620), !dbg !621 ; [debug line = 271:24] [debug variable = v]
  %tmp = lshr i64 %v, 32, !dbg !622               ; [#uses=1 type=i64] [debug line = 274:62]
  %highword = trunc i64 %tmp to i32, !dbg !622    ; [#uses=1 type=i32] [debug line = 274:62]
  call void @llvm.dbg.value(metadata !{i32 %highword}, i64 0, metadata !624), !dbg !622 ; [debug line = 274:62] [debug variable = highword]
  %sign = ashr i32 %highword, 31, !dbg !627       ; [#uses=1 type=i32] [debug line = 276:50]
  call void @llvm.dbg.value(metadata !{i32 %sign}, i64 0, metadata !628), !dbg !627 ; [debug line = 276:50] [debug variable = sign]
  %roundoff = lshr i32 %sign, 6, !dbg !630        ; [#uses=1 type=i32] [debug line = 278:50]
  call void @llvm.dbg.value(metadata !{i32 %roundoff}, i64 0, metadata !631), !dbg !630 ; [debug line = 278:50] [debug variable = roundoff]
  %tmp.1269 = zext i32 %roundoff to i64, !dbg !632 ; [#uses=1 type=i64] [debug line = 280:3]
  %tmp.1270 = add nsw i64 %tmp.1269, %v, !dbg !632 ; [#uses=1 type=i64] [debug line = 280:3]
  %tmp.1271 = ashr i64 %tmp.1270, 26, !dbg !632   ; [#uses=1 type=i64] [debug line = 280:3]
  ret i64 %tmp.1271, !dbg !632                    ; [debug line = 280:3]
}

; [#uses=1]
define internal fastcc i64 @div_by_2_25(i64 %v) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{i64 %v}, i64 0, metadata !633), !dbg !634 ; [debug line = 287:24] [debug variable = v]
  %tmp = lshr i64 %v, 32, !dbg !635               ; [#uses=1 type=i64] [debug line = 290:62]
  %highword = trunc i64 %tmp to i32, !dbg !635    ; [#uses=1 type=i32] [debug line = 290:62]
  call void @llvm.dbg.value(metadata !{i32 %highword}, i64 0, metadata !637), !dbg !635 ; [debug line = 290:62] [debug variable = highword]
  %sign = ashr i32 %highword, 31, !dbg !638       ; [#uses=1 type=i32] [debug line = 292:50]
  call void @llvm.dbg.value(metadata !{i32 %sign}, i64 0, metadata !639), !dbg !638 ; [debug line = 292:50] [debug variable = sign]
  %roundoff = lshr i32 %sign, 7, !dbg !640        ; [#uses=1 type=i32] [debug line = 294:50]
  call void @llvm.dbg.value(metadata !{i32 %roundoff}, i64 0, metadata !641), !dbg !640 ; [debug line = 294:50] [debug variable = roundoff]
  %tmp.1272 = zext i32 %roundoff to i64, !dbg !642 ; [#uses=1 type=i64] [debug line = 296:3]
  %tmp.1273 = add nsw i64 %tmp.1272, %v, !dbg !642 ; [#uses=1 type=i64] [debug line = 296:3]
  %tmp.1274 = ashr i64 %tmp.1273, 25, !dbg !642   ; [#uses=1 type=i64] [debug line = 296:3]
  ret i64 %tmp.1274, !dbg !642                    ; [debug line = 296:3]
}

; [#uses=0]
define i32 @curve25519_donna(i8* %mypublic_in, i8* %secret_in, i8* %basepoint_in, i8* %mypublic_out, i8* %secret_out, i8* %basepoint_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !643
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @curve25519_donna.str) nounwind
  %bp = alloca [10 x i64], align 16               ; [#uses=1 type=[10 x i64]*]
  %x = alloca [10 x i64], align 16                ; [#uses=1 type=[10 x i64]*]
  %z = alloca [11 x i64], align 16                ; [#uses=1 type=[11 x i64]*]
  %zmone = alloca [10 x i64], align 16            ; [#uses=1 type=[10 x i64]*]
  %e = alloca [32 x i8], align 16                 ; [#uses=4 type=[32 x i8]*]
  %mypublic = alloca [32 x i8], align 16          ; [#uses=1 type=[32 x i8]*]
  %secret = alloca [32 x i8], align 16            ; [#uses=2 type=[32 x i8]*]
  %basepoint = alloca [32 x i8], align 16         ; [#uses=1 type=[32 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %mypublic_in}, i64 0, metadata !649), !dbg !650 ; [debug line = 954:21] [debug variable = mypublic_in]
  call void @llvm.dbg.value(metadata !{i8* %secret_in}, i64 0, metadata !651), !dbg !652 ; [debug line = 954:47] [debug variable = secret_in]
  call void @llvm.dbg.value(metadata !{i8* %basepoint_in}, i64 0, metadata !653), !dbg !654 ; [debug line = 954:71] [debug variable = basepoint_in]
  call void @llvm.dbg.value(metadata !{i8* %mypublic_out}, i64 0, metadata !655), !dbg !656 ; [debug line = 955:9] [debug variable = mypublic_out]
  call void @llvm.dbg.value(metadata !{i8* %secret_out}, i64 0, metadata !657), !dbg !658 ; [debug line = 955:36] [debug variable = secret_out]
  call void @llvm.dbg.value(metadata !{i8* %basepoint_out}, i64 0, metadata !659), !dbg !660 ; [debug line = 955:61] [debug variable = basepoint_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %mypublic_out, i32 32) nounwind, !dbg !661 ; [debug line = 955:81]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %basepoint_in, i32 32) nounwind, !dbg !663 ; [debug line = 955:121]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %basepoint_out, i32 32) nounwind, !dbg !664 ; [debug line = 955:161]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %mypublic_in, i32 32) nounwind, !dbg !665 ; [debug line = 955:202]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %secret_out, i32 32) nounwind, !dbg !666 ; [debug line = 955:241]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %secret_in, i32 32) nounwind, !dbg !667 ; [debug line = 955:0]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !668 ; [debug line = 956:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %basepoint_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !669 ; [debug line = 957:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %secret_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !670 ; [debug line = 958:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %mypublic_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !671 ; [debug line = 959:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %basepoint_out, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !672 ; [debug line = 960:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %secret_out, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !673 ; [debug line = 961:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %mypublic_out, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !674 ; [debug line = 962:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !675 ; [debug line = 963:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !676 ; [debug line = 964:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !677 ; [debug line = 965:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !678 ; [debug line = 966:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !679 ; [debug line = 967:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %bp}, metadata !680), !dbg !681 ; [debug line = 968:7] [debug variable = bp]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !682), !dbg !683 ; [debug line = 968:15] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{[11 x i64]* %z}, metadata !684), !dbg !688 ; [debug line = 968:22] [debug variable = z]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %zmone}, metadata !689), !dbg !690 ; [debug line = 968:29] [debug variable = zmone]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %e}, metadata !691), !dbg !695 ; [debug line = 969:11] [debug variable = e]
  %e.addr = getelementptr inbounds [32 x i8]* %e, i64 0, i64 0, !dbg !696 ; [#uses=3 type=i8*] [debug line = 969:22]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i32 [ 0, %0 ], [ %indvarinc, %meminst ], !dbg !696 ; [#uses=3 type=i32] [debug line = 969:22]
  %indvarinc = add i32 %invdar, 1, !dbg !696      ; [#uses=1 type=i32] [debug line = 969:22]
  %tmp = sext i32 %invdar to i64, !dbg !696       ; [#uses=1 type=i64] [debug line = 969:22]
  %e.addr.1 = getelementptr [32 x i8]* %e, i64 0, i64 %tmp, !dbg !696 ; [#uses=1 type=i8*] [debug line = 969:22]
  store i8 0, i8* %e.addr.1, align 1, !dbg !696   ; [debug line = 969:22]
  %tmp.1275 = icmp eq i32 %invdar, 31, !dbg !696  ; [#uses=1 type=i1] [debug line = 969:22]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_e.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1275, label %2, label %meminst, !dbg !696 ; [debug line = 969:22]

; <label>:2                                       ; preds = %meminst
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %mypublic}, metadata !697), !dbg !699 ; [debug line = 971:17] [debug variable = mypublic]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %secret}, metadata !700), !dbg !701 ; [debug line = 971:31] [debug variable = secret]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %basepoint}, metadata !702), !dbg !703 ; [debug line = 971:43] [debug variable = basepoint]
  %mypublic.addr = getelementptr inbounds [32 x i8]* %mypublic, i64 0, i64 0, !dbg !704 ; [#uses=3 type=i8*] [debug line = 973:3]
  call fastcc void @_memcpy_char(i8* %mypublic.addr, i8* %mypublic_in), !dbg !704 ; [debug line = 973:3]
  %secret.addr = getelementptr inbounds [32 x i8]* %secret, i64 0, i64 0, !dbg !705 ; [#uses=2 type=i8*] [debug line = 974:3]
  call fastcc void @_memcpy_char(i8* %secret.addr, i8* %secret_in), !dbg !705 ; [debug line = 974:3]
  %basepoint.addr = getelementptr inbounds [32 x i8]* %basepoint, i64 0, i64 0, !dbg !706 ; [#uses=3 type=i8*] [debug line = 975:3]
  call fastcc void @_memcpy_char(i8* %basepoint.addr, i8* %basepoint_in), !dbg !706 ; [debug line = 975:3]
  br label %3, !dbg !707                          ; [debug line = 977:8]

; <label>:3                                       ; preds = %4, %2
  %i = phi i32 [ 0, %2 ], [ %i.11, %4 ]           ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 32, !dbg !707       ; [#uses=1 type=i1] [debug line = 977:8]
  br i1 %exitcond, label %5, label %4, !dbg !707  ; [debug line = 977:8]

; <label>:4                                       ; preds = %3
  %tmp.1279 = sext i32 %i to i64, !dbg !709       ; [#uses=2 type=i64] [debug line = 978:4]
  %secret.addr.1 = getelementptr inbounds [32 x i8]* %secret, i64 0, i64 %tmp.1279, !dbg !709 ; [#uses=1 type=i8*] [debug line = 978:4]
  %secret.load = load i8* %secret.addr.1, align 1, !dbg !709 ; [#uses=2 type=i8] [debug line = 978:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %secret.load) nounwind
  %e.addr.3 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 %tmp.1279, !dbg !709 ; [#uses=1 type=i8*] [debug line = 978:4]
  store i8 %secret.load, i8* %e.addr.3, align 1, !dbg !709 ; [debug line = 978:4]
  %i.11 = add nsw i32 %i, 1, !dbg !711            ; [#uses=1 type=i32] [debug line = 977:23]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !712), !dbg !711 ; [debug line = 977:23] [debug variable = i]
  br label %3, !dbg !711                          ; [debug line = 977:23]

; <label>:5                                       ; preds = %3
  %e.load = load i8* %e.addr, align 16, !dbg !713 ; [#uses=2 type=i8] [debug line = 980:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %e.load) nounwind
  %tmp.1276 = and i8 %e.load, -8, !dbg !713       ; [#uses=1 type=i8] [debug line = 980:3]
  store i8 %tmp.1276, i8* %e.addr, align 16, !dbg !713 ; [debug line = 980:3]
  %e.addr.2 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 31, !dbg !714 ; [#uses=2 type=i8*] [debug line = 981:3]
  %e.load.1 = load i8* %e.addr.2, align 1, !dbg !714 ; [#uses=2 type=i8] [debug line = 981:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %e.load.1) nounwind
  %tmp.1277 = and i8 %e.load.1, 127, !dbg !714    ; [#uses=2 type=i8] [debug line = 981:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.1277) nounwind
  %tmp.1278 = or i8 %tmp.1277, 64, !dbg !715      ; [#uses=1 type=i8] [debug line = 982:3]
  store i8 %tmp.1278, i8* %e.addr.2, align 1, !dbg !715 ; [debug line = 982:3]
  %bp.addr = getelementptr inbounds [10 x i64]* %bp, i64 0, i64 0, !dbg !716 ; [#uses=2 type=i64*] [debug line = 984:3]
  call fastcc void @fexpand(i64* %bp.addr, i8* %basepoint.addr), !dbg !716 ; [debug line = 984:3]
  %x.addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 0, !dbg !717 ; [#uses=2 type=i64*] [debug line = 985:3]
  %z.addr = getelementptr inbounds [11 x i64]* %z, i64 0, i64 0, !dbg !717 ; [#uses=4 type=i64*] [debug line = 985:3]
  call fastcc void @cmult(i64* %x.addr, i64* %z.addr, i8* %e.addr, i64* %bp.addr), !dbg !717 ; [debug line = 985:3]
  %zmone.addr = getelementptr inbounds [10 x i64]* %zmone, i64 0, i64 0, !dbg !718 ; [#uses=2 type=i64*] [debug line = 986:3]
  call fastcc void @crecip(i64* %zmone.addr, i64* %z.addr), !dbg !718 ; [debug line = 986:3]
  call fastcc void @fmul(i64* %z.addr, i64* %x.addr, i64* %zmone.addr), !dbg !719 ; [debug line = 987:3]
  call fastcc void @fcontract(i8* %mypublic.addr, i64* %z.addr), !dbg !720 ; [debug line = 988:3]
  call fastcc void @_memcpy_char(i8* %mypublic_out, i8* %mypublic.addr), !dbg !721 ; [debug line = 990:3]
  call fastcc void @_memcpy_char(i8* %secret_out, i8* %secret.addr), !dbg !722 ; [debug line = 991:3]
  call fastcc void @_memcpy_char(i8* %basepoint_out, i8* %basepoint.addr), !dbg !723 ; [debug line = 992:3]
  ret i32 0, !dbg !724                            ; [debug line = 995:3]
}

; [#uses=1]
define internal fastcc void @crecip(i64* %out, i64* %z) nounwind uwtable {
  %z2 = alloca [10 x i64], align 16               ; [#uses=1 type=[10 x i64]*]
  %z9 = alloca [10 x i64], align 16               ; [#uses=1 type=[10 x i64]*]
  %z11 = alloca [10 x i64], align 16              ; [#uses=1 type=[10 x i64]*]
  %z2_5_0 = alloca [10 x i64], align 16           ; [#uses=1 type=[10 x i64]*]
  %z2_10_0 = alloca [10 x i64], align 16          ; [#uses=1 type=[10 x i64]*]
  %z2_20_0 = alloca [10 x i64], align 16          ; [#uses=1 type=[10 x i64]*]
  %z2_50_0 = alloca [10 x i64], align 16          ; [#uses=1 type=[10 x i64]*]
  %z2_100_0 = alloca [10 x i64], align 16         ; [#uses=1 type=[10 x i64]*]
  %t0 = alloca [10 x i64], align 16               ; [#uses=1 type=[10 x i64]*]
  %t1 = alloca [10 x i64], align 16               ; [#uses=1 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i64* %out}, i64 0, metadata !725), !dbg !726 ; [debug line = 885:14] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i64* %z}, i64 0, metadata !727), !dbg !728 ; [debug line = 885:31] [debug variable = z]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !729 ; [debug line = 886:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !731 ; [debug line = 887:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2}, metadata !732), !dbg !733 ; [debug line = 888:7] [debug variable = z2]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z9}, metadata !734), !dbg !735 ; [debug line = 889:8] [debug variable = z9]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z11}, metadata !736), !dbg !737 ; [debug line = 890:8] [debug variable = z11]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_5_0}, metadata !738), !dbg !739 ; [debug line = 891:8] [debug variable = z2_5_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_10_0}, metadata !740), !dbg !741 ; [debug line = 892:8] [debug variable = z2_10_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_20_0}, metadata !742), !dbg !743 ; [debug line = 893:8] [debug variable = z2_20_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_50_0}, metadata !744), !dbg !745 ; [debug line = 894:8] [debug variable = z2_50_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_100_0}, metadata !746), !dbg !747 ; [debug line = 895:8] [debug variable = z2_100_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %t0}, metadata !748), !dbg !749 ; [debug line = 896:8] [debug variable = t0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %t1}, metadata !750), !dbg !751 ; [debug line = 897:8] [debug variable = t1]
  %z2.addr = getelementptr inbounds [10 x i64]* %z2, i64 0, i64 0, !dbg !752 ; [#uses=3 type=i64*] [debug line = 900:11]
  call fastcc void @fsquare(i64* %z2.addr, i64* %z), !dbg !752 ; [debug line = 900:11]
  %t1.addr = getelementptr inbounds [10 x i64]* %t1, i64 0, i64 0, !dbg !753 ; [#uses=38 type=i64*] [debug line = 901:11]
  call fastcc void @fsquare(i64* %t1.addr, i64* %z2.addr), !dbg !753 ; [debug line = 901:11]
  %t0.addr = getelementptr inbounds [10 x i64]* %t0, i64 0, i64 0, !dbg !754 ; [#uses=42 type=i64*] [debug line = 902:11]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !754 ; [debug line = 902:11]
  %z9.addr = getelementptr inbounds [10 x i64]* %z9, i64 0, i64 0, !dbg !755 ; [#uses=3 type=i64*] [debug line = 903:11]
  call fastcc void @fmul(i64* %z9.addr, i64* %t0.addr, i64* %z), !dbg !755 ; [debug line = 903:11]
  %z11.addr = getelementptr inbounds [10 x i64]* %z11, i64 0, i64 0, !dbg !756 ; [#uses=3 type=i64*] [debug line = 904:12]
  call fastcc void @fmul(i64* %z11.addr, i64* %z9.addr, i64* %z2.addr), !dbg !756 ; [debug line = 904:12]
  call fastcc void @fsquare(i64* %t0.addr, i64* %z11.addr), !dbg !757 ; [debug line = 905:12]
  %z2_5_0.addr = getelementptr inbounds [10 x i64]* %z2_5_0, i64 0, i64 0, !dbg !758 ; [#uses=3 type=i64*] [debug line = 906:24]
  call fastcc void @fmul(i64* %z2_5_0.addr, i64* %t0.addr, i64* %z9.addr), !dbg !758 ; [debug line = 906:24]
  call fastcc void @fsquare(i64* %t0.addr, i64* %z2_5_0.addr), !dbg !759 ; [debug line = 908:19]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !760 ; [debug line = 909:19]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !761 ; [debug line = 910:19]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !762 ; [debug line = 911:19]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !763 ; [debug line = 912:20]
  %z2_10_0.addr = getelementptr inbounds [10 x i64]* %z2_10_0, i64 0, i64 0, !dbg !764 ; [#uses=4 type=i64*] [debug line = 913:20]
  call fastcc void @fmul(i64* %z2_10_0.addr, i64* %t0.addr, i64* %z2_5_0.addr), !dbg !764 ; [debug line = 913:20]
  call fastcc void @fsquare(i64* %t0.addr, i64* %z2_10_0.addr), !dbg !765 ; [debug line = 915:20]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !766 ; [debug line = 916:20]
  br label %1, !dbg !767                          ; [debug line = 917:26]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 2, %0 ], [ %i.12, %2 ]           ; [#uses=2 type=i32]
  %tmp = icmp slt i32 %i, 10, !dbg !767           ; [#uses=1 type=i1] [debug line = 917:26]
  br i1 %tmp, label %2, label %3, !dbg !767       ; [debug line = 917:26]

; <label>:2                                       ; preds = %1
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !769 ; [debug line = 917:49]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !771 ; [debug line = 917:65]
  %i.12 = add nsw i32 %i, 2, !dbg !772            ; [#uses=1 type=i32] [debug line = 917:39]
  call void @llvm.dbg.value(metadata !{i32 %i.12}, i64 0, metadata !773), !dbg !772 ; [debug line = 917:39] [debug variable = i]
  br label %1, !dbg !772                          ; [debug line = 917:39]

; <label>:3                                       ; preds = %1
  %z2_20_0.addr = getelementptr inbounds [10 x i64]* %z2_20_0, i64 0, i64 0, !dbg !774 ; [#uses=3 type=i64*] [debug line = 918:20]
  call fastcc void @fmul(i64* %z2_20_0.addr, i64* %t1.addr, i64* %z2_10_0.addr), !dbg !774 ; [debug line = 918:20]
  call fastcc void @fsquare(i64* %t0.addr, i64* %z2_20_0.addr), !dbg !775 ; [debug line = 920:20]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !776 ; [debug line = 921:20]
  br label %4, !dbg !777                          ; [debug line = 922:26]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i32 [ 2, %3 ], [ %i.13, %5 ]         ; [#uses=2 type=i32]
  %tmp.1282 = icmp slt i32 %i.1, 20, !dbg !777    ; [#uses=1 type=i1] [debug line = 922:26]
  br i1 %tmp.1282, label %5, label %6, !dbg !777  ; [debug line = 922:26]

; <label>:5                                       ; preds = %4
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !779 ; [debug line = 922:49]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !781 ; [debug line = 922:65]
  %i.13 = add nsw i32 %i.1, 2, !dbg !782          ; [#uses=1 type=i32] [debug line = 922:39]
  call void @llvm.dbg.value(metadata !{i32 %i.13}, i64 0, metadata !773), !dbg !782 ; [debug line = 922:39] [debug variable = i]
  br label %4, !dbg !782                          ; [debug line = 922:39]

; <label>:6                                       ; preds = %4
  call fastcc void @fmul(i64* %t0.addr, i64* %t1.addr, i64* %z2_20_0.addr), !dbg !783 ; [debug line = 923:20]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !784 ; [debug line = 925:20]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !785 ; [debug line = 926:20]
  br label %7, !dbg !786                          ; [debug line = 927:26]

; <label>:7                                       ; preds = %8, %6
  %i.2 = phi i32 [ 2, %6 ], [ %i.14, %8 ]         ; [#uses=2 type=i32]
  %tmp.1284 = icmp slt i32 %i.2, 10, !dbg !786    ; [#uses=1 type=i1] [debug line = 927:26]
  br i1 %tmp.1284, label %8, label %9, !dbg !786  ; [debug line = 927:26]

; <label>:8                                       ; preds = %7
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !788 ; [debug line = 927:49]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !790 ; [debug line = 927:65]
  %i.14 = add nsw i32 %i.2, 2, !dbg !791          ; [#uses=1 type=i32] [debug line = 927:39]
  call void @llvm.dbg.value(metadata !{i32 %i.14}, i64 0, metadata !773), !dbg !791 ; [debug line = 927:39] [debug variable = i]
  br label %7, !dbg !791                          ; [debug line = 927:39]

; <label>:9                                       ; preds = %7
  %z2_50_0.addr = getelementptr inbounds [10 x i64]* %z2_50_0, i64 0, i64 0, !dbg !792 ; [#uses=4 type=i64*] [debug line = 928:20]
  call fastcc void @fmul(i64* %z2_50_0.addr, i64* %t0.addr, i64* %z2_10_0.addr), !dbg !792 ; [debug line = 928:20]
  call fastcc void @fsquare(i64* %t0.addr, i64* %z2_50_0.addr), !dbg !793 ; [debug line = 930:20]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !794 ; [debug line = 931:20]
  br label %10, !dbg !795                         ; [debug line = 932:27]

; <label>:10                                      ; preds = %11, %9
  %i.3 = phi i32 [ 2, %9 ], [ %i.15, %11 ]        ; [#uses=2 type=i32]
  %tmp.1286 = icmp slt i32 %i.3, 50, !dbg !795    ; [#uses=1 type=i1] [debug line = 932:27]
  br i1 %tmp.1286, label %11, label %12, !dbg !795 ; [debug line = 932:27]

; <label>:11                                      ; preds = %10
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !797 ; [debug line = 932:50]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !799 ; [debug line = 932:66]
  %i.15 = add nsw i32 %i.3, 2, !dbg !800          ; [#uses=1 type=i32] [debug line = 932:40]
  call void @llvm.dbg.value(metadata !{i32 %i.15}, i64 0, metadata !773), !dbg !800 ; [debug line = 932:40] [debug variable = i]
  br label %10, !dbg !800                         ; [debug line = 932:40]

; <label>:12                                      ; preds = %10
  %z2_100_0.addr = getelementptr inbounds [10 x i64]* %z2_100_0, i64 0, i64 0, !dbg !801 ; [#uses=3 type=i64*] [debug line = 933:21]
  call fastcc void @fmul(i64* %z2_100_0.addr, i64* %t1.addr, i64* %z2_50_0.addr), !dbg !801 ; [debug line = 933:21]
  call fastcc void @fsquare(i64* %t1.addr, i64* %z2_100_0.addr), !dbg !802 ; [debug line = 935:21]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !803 ; [debug line = 936:21]
  br label %13, !dbg !804                         ; [debug line = 937:28]

; <label>:13                                      ; preds = %14, %12
  %i.4 = phi i32 [ 2, %12 ], [ %i.16, %14 ]       ; [#uses=2 type=i32]
  %tmp.1288 = icmp slt i32 %i.4, 100, !dbg !804   ; [#uses=1 type=i1] [debug line = 937:28]
  br i1 %tmp.1288, label %14, label %15, !dbg !804 ; [debug line = 937:28]

; <label>:14                                      ; preds = %13
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !806 ; [debug line = 937:52]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !808 ; [debug line = 937:68]
  %i.16 = add nsw i32 %i.4, 2, !dbg !809          ; [#uses=1 type=i32] [debug line = 937:42]
  call void @llvm.dbg.value(metadata !{i32 %i.16}, i64 0, metadata !773), !dbg !809 ; [debug line = 937:42] [debug variable = i]
  br label %13, !dbg !809                         ; [debug line = 937:42]

; <label>:15                                      ; preds = %13
  call fastcc void @fmul(i64* %t1.addr, i64* %t0.addr, i64* %z2_100_0.addr), !dbg !810 ; [debug line = 938:21]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !811 ; [debug line = 940:21]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !812 ; [debug line = 941:21]
  br label %16, !dbg !813                         ; [debug line = 942:27]

; <label>:16                                      ; preds = %17, %15
  %i.5 = phi i32 [ 2, %15 ], [ %i.17, %17 ]       ; [#uses=2 type=i32]
  %tmp.1290 = icmp slt i32 %i.5, 50, !dbg !813    ; [#uses=1 type=i1] [debug line = 942:27]
  br i1 %tmp.1290, label %17, label %18, !dbg !813 ; [debug line = 942:27]

; <label>:17                                      ; preds = %16
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !815 ; [debug line = 942:50]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !817 ; [debug line = 942:66]
  %i.17 = add nsw i32 %i.5, 2, !dbg !818          ; [#uses=1 type=i32] [debug line = 942:40]
  call void @llvm.dbg.value(metadata !{i32 %i.17}, i64 0, metadata !773), !dbg !818 ; [debug line = 942:40] [debug variable = i]
  br label %16, !dbg !818                         ; [debug line = 942:40]

; <label>:18                                      ; preds = %16
  call fastcc void @fmul(i64* %t0.addr, i64* %t1.addr, i64* %z2_50_0.addr), !dbg !819 ; [debug line = 943:21]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !820 ; [debug line = 945:21]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !821 ; [debug line = 946:21]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !822 ; [debug line = 947:21]
  call fastcc void @fsquare(i64* %t0.addr, i64* %t1.addr), !dbg !823 ; [debug line = 948:21]
  call fastcc void @fsquare(i64* %t1.addr, i64* %t0.addr), !dbg !824 ; [debug line = 949:21]
  call fastcc void @fmul(i64* %out, i64* %t1.addr, i64* %z11.addr), !dbg !825 ; [debug line = 950:20]
  ret void, !dbg !826                             ; [debug line = 951:1]
}

; [#uses=1]
define internal fastcc void @cmult(i64* %resultx, i64* %resultz, i8* %n, i64* %q) nounwind uwtable {
  %nqpqx = alloca [19 x i64], align 16            ; [#uses=2 type=[19 x i64]*]
  %nqpqz = alloca [19 x i64], align 16            ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqz}, metadata !827), !dbg !829 ; [debug line = 797:25] [debug variable = nqpqz]
  %nqx = alloca [19 x i64], align 16              ; [#uses=2 type=[19 x i64]*]
  %nqz = alloca [19 x i64], align 16              ; [#uses=2 type=[19 x i64]*]
  %t = alloca [19 x i64], align 16                ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !830), !dbg !831 ; [debug line = 797:72] [debug variable = t]
  %nqpqx2 = alloca [19 x i64], align 16           ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqx2}, metadata !832), !dbg !833 ; [debug line = 800:8] [debug variable = nqpqx2]
  %nqpqz2 = alloca [19 x i64], align 16           ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqz2}, metadata !834), !dbg !835 ; [debug line = 800:26] [debug variable = nqpqz2]
  %nqx2 = alloca [19 x i64], align 16             ; [#uses=2 type=[19 x i64]*]
  %nqz2 = alloca [19 x i64], align 16             ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqz2}, metadata !836), !dbg !837 ; [debug line = 800:60] [debug variable = nqz2]
  call void @llvm.dbg.value(metadata !{i64* %resultx}, i64 0, metadata !838), !dbg !839 ; [debug line = 792:13] [debug variable = resultx]
  call void @llvm.dbg.value(metadata !{i64* %resultz}, i64 0, metadata !840), !dbg !841 ; [debug line = 792:28] [debug variable = resultz]
  call void @llvm.dbg.value(metadata !{i8* %n}, i64 0, metadata !842), !dbg !843 ; [debug line = 792:47] [debug variable = n]
  call void @llvm.dbg.value(metadata !{i64* %q}, i64 0, metadata !844), !dbg !845 ; [debug line = 792:62] [debug variable = q]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !846 ; [debug line = 793:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !847 ; [debug line = 794:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqx}, metadata !848), !dbg !849 ; [debug line = 797:8] [debug variable = nqpqx]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i32 [ 0, %0 ], [ %indvarinc, %meminst ], !dbg !850 ; [#uses=3 type=i32] [debug line = 797:83]
  %indvarinc = add i32 %invdar, 1, !dbg !850      ; [#uses=1 type=i32] [debug line = 797:83]
  %tmp = sext i32 %invdar to i64, !dbg !850       ; [#uses=1 type=i64] [debug line = 797:83]
  %nqpqx.addr = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp, !dbg !850 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqpqx.addr, align 8, !dbg !850 ; [debug line = 797:83]
  %tmp.1292 = icmp eq i32 %invdar, 18, !dbg !850  ; [#uses=1 type=i1] [debug line = 797:83]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqx.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1292, label %meminst2.preheader, label %meminst, !dbg !850 ; [debug line = 797:83]

meminst2.preheader:                               ; preds = %meminst
  br label %meminst2, !dbg !850                   ; [debug line = 797:83]

meminst2:                                         ; preds = %meminst2, %meminst2.preheader
  %invdar3 = phi i32 [ %indvarinc4, %meminst2 ], [ 0, %meminst2.preheader ], !dbg !850 ; [#uses=3 type=i32] [debug line = 797:83]
  %indvarinc4 = add i32 %invdar3, 1, !dbg !850    ; [#uses=1 type=i32] [debug line = 797:83]
  %tmp.1293 = sext i32 %invdar3 to i64, !dbg !850 ; [#uses=1 type=i64] [debug line = 797:83]
  %nqpqz.addr = getelementptr [19 x i64]* %nqpqz, i64 0, i64 %tmp.1293, !dbg !850 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqpqz.addr, align 8, !dbg !850 ; [debug line = 797:83]
  %tmp.1294 = icmp eq i32 %invdar3, 18, !dbg !850 ; [#uses=1 type=i1] [debug line = 797:83]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqz.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1294, label %3, label %meminst2, !dbg !850 ; [debug line = 797:83]

; <label>:3                                       ; preds = %meminst2
  %nqpqz.addr.1 = getelementptr [19 x i64]* %nqpqz, i64 0, i64 0, !dbg !850 ; [#uses=5 type=i64*] [debug line = 797:83]
  store i64 1, i64* %nqpqz.addr.1, align 16, !dbg !850 ; [debug line = 797:83]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqx}, metadata !851), !dbg !852 ; [debug line = 797:42] [debug variable = nqx]
  br label %meminst5

meminst5:                                         ; preds = %meminst5, %3
  %invdar6 = phi i32 [ 0, %3 ], [ %indvarinc7, %meminst5 ], !dbg !850 ; [#uses=3 type=i32] [debug line = 797:83]
  %indvarinc7 = add i32 %invdar6, 1, !dbg !850    ; [#uses=1 type=i32] [debug line = 797:83]
  %tmp.1295 = sext i32 %invdar6 to i64, !dbg !850 ; [#uses=1 type=i64] [debug line = 797:83]
  %nqx.addr = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp.1295, !dbg !850 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqx.addr, align 8, !dbg !850 ; [debug line = 797:83]
  %tmp.1296 = icmp eq i32 %invdar6, 18, !dbg !850 ; [#uses=1 type=i1] [debug line = 797:83]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqx.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1296, label %5, label %meminst5, !dbg !850 ; [debug line = 797:83]

; <label>:5                                       ; preds = %meminst5
  %nqx.addr.1 = getelementptr [19 x i64]* %nqx, i64 0, i64 0, !dbg !850 ; [#uses=6 type=i64*] [debug line = 797:83]
  store i64 1, i64* %nqx.addr.1, align 16, !dbg !850 ; [debug line = 797:83]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqz}, metadata !853), !dbg !854 ; [debug line = 797:57] [debug variable = nqz]
  br label %meminst8

meminst8:                                         ; preds = %meminst8, %5
  %invdar9 = phi i32 [ 0, %5 ], [ %indvarinc1, %meminst8 ], !dbg !850 ; [#uses=3 type=i32] [debug line = 797:83]
  %indvarinc1 = add i32 %invdar9, 1, !dbg !850    ; [#uses=1 type=i32] [debug line = 797:83]
  %tmp.1297 = sext i32 %invdar9 to i64, !dbg !850 ; [#uses=1 type=i64] [debug line = 797:83]
  %nqz.addr = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp.1297, !dbg !850 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqz.addr, align 8, !dbg !850 ; [debug line = 797:83]
  %tmp.1298 = icmp eq i32 %invdar9, 18, !dbg !850 ; [#uses=1 type=i1] [debug line = 797:83]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqz.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1298, label %meminst11.preheader, label %meminst8, !dbg !850 ; [debug line = 797:83]

meminst11.preheader:                              ; preds = %meminst8
  br label %meminst11, !dbg !850                  ; [debug line = 797:83]

meminst11:                                        ; preds = %meminst11, %meminst11.preheader
  %invdar1 = phi i32 [ %indvarinc2, %meminst11 ], [ 0, %meminst11.preheader ], !dbg !850 ; [#uses=3 type=i32] [debug line = 797:83]
  %indvarinc2 = add i32 %invdar1, 1, !dbg !850    ; [#uses=1 type=i32] [debug line = 797:83]
  %tmp.1299 = sext i32 %invdar1 to i64, !dbg !850 ; [#uses=1 type=i64] [debug line = 797:83]
  %t.addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.1299, !dbg !850 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %t.addr, align 8, !dbg !850   ; [debug line = 797:83]
  %tmp.1300 = icmp eq i32 %invdar1, 18, !dbg !850 ; [#uses=1 type=i1] [debug line = 797:83]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_t.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1300, label %meminst14.preheader, label %meminst11, !dbg !850 ; [debug line = 797:83]

meminst14.preheader:                              ; preds = %meminst11
  br label %meminst14, !dbg !855                  ; [debug line = 800:74]

meminst14:                                        ; preds = %meminst14, %meminst14.preheader
  %invdar2 = phi i32 [ %indvarinc3, %meminst14 ], [ 0, %meminst14.preheader ], !dbg !855 ; [#uses=3 type=i32] [debug line = 800:74]
  %indvarinc3 = add i32 %invdar2, 1, !dbg !855    ; [#uses=1 type=i32] [debug line = 800:74]
  %tmp.1301 = sext i32 %invdar2 to i64, !dbg !855 ; [#uses=1 type=i64] [debug line = 800:74]
  %nqpqx2.addr = getelementptr [19 x i64]* %nqpqx2, i64 0, i64 %tmp.1301, !dbg !855 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqpqx2.addr, align 8, !dbg !855 ; [debug line = 800:74]
  %tmp.1302 = icmp eq i32 %invdar2, 18, !dbg !855 ; [#uses=1 type=i1] [debug line = 800:74]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqx2.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1302, label %meminst17.preheader, label %meminst14, !dbg !855 ; [debug line = 800:74]

meminst17.preheader:                              ; preds = %meminst14
  br label %meminst17, !dbg !855                  ; [debug line = 800:74]

meminst17:                                        ; preds = %meminst17, %meminst17.preheader
  %invdar4 = phi i32 [ %indvarinc5, %meminst17 ], [ 0, %meminst17.preheader ], !dbg !855 ; [#uses=3 type=i32] [debug line = 800:74]
  %indvarinc5 = add i32 %invdar4, 1, !dbg !855    ; [#uses=1 type=i32] [debug line = 800:74]
  %tmp.1303 = sext i32 %invdar4 to i64, !dbg !855 ; [#uses=1 type=i64] [debug line = 800:74]
  %nqpqz2.addr = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 %tmp.1303, !dbg !855 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqpqz2.addr, align 8, !dbg !855 ; [debug line = 800:74]
  %tmp.1304 = icmp eq i32 %invdar4, 18, !dbg !855 ; [#uses=1 type=i1] [debug line = 800:74]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqz2.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1304, label %10, label %meminst17, !dbg !855 ; [debug line = 800:74]

; <label>:10                                      ; preds = %meminst17
  %nqpqz2.addr.1 = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 0, !dbg !855 ; [#uses=5 type=i64*] [debug line = 800:74]
  store i64 1, i64* %nqpqz2.addr.1, align 16, !dbg !855 ; [debug line = 800:74]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqx2}, metadata !856), !dbg !857 ; [debug line = 800:44] [debug variable = nqx2]
  br label %meminst20

meminst20:                                        ; preds = %meminst20, %10
  %invdar5 = phi i32 [ 0, %10 ], [ %indvarinc6, %meminst20 ], !dbg !855 ; [#uses=3 type=i32] [debug line = 800:74]
  %indvarinc6 = add i32 %invdar5, 1, !dbg !855    ; [#uses=1 type=i32] [debug line = 800:74]
  %tmp.1305 = sext i32 %invdar5 to i64, !dbg !855 ; [#uses=1 type=i64] [debug line = 800:74]
  %nqx2.addr = getelementptr [19 x i64]* %nqx2, i64 0, i64 %tmp.1305, !dbg !855 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqx2.addr, align 8, !dbg !855 ; [debug line = 800:74]
  %tmp.1306 = icmp eq i32 %invdar5, 18, !dbg !855 ; [#uses=1 type=i1] [debug line = 800:74]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqx2.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1306, label %meminst23.preheader, label %meminst20, !dbg !855 ; [debug line = 800:74]

meminst23.preheader:                              ; preds = %meminst20
  br label %meminst23, !dbg !855                  ; [debug line = 800:74]

meminst23:                                        ; preds = %meminst23, %meminst23.preheader
  %invdar7 = phi i32 [ %indvarinc8, %meminst23 ], [ 0, %meminst23.preheader ], !dbg !855 ; [#uses=3 type=i32] [debug line = 800:74]
  %indvarinc8 = add i32 %invdar7, 1, !dbg !855    ; [#uses=1 type=i32] [debug line = 800:74]
  %tmp.1307 = sext i32 %invdar7 to i64, !dbg !855 ; [#uses=1 type=i64] [debug line = 800:74]
  %nqz2.addr = getelementptr [19 x i64]* %nqz2, i64 0, i64 %tmp.1307, !dbg !855 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqz2.addr, align 8, !dbg !855 ; [debug line = 800:74]
  %tmp.1308 = icmp eq i32 %invdar7, 18, !dbg !855 ; [#uses=1 type=i1] [debug line = 800:74]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqz2.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1308, label %13, label %meminst23, !dbg !855 ; [debug line = 800:74]

; <label>:13                                      ; preds = %meminst23
  %nqz2.addr.1 = getelementptr [19 x i64]* %nqz2, i64 0, i64 0, !dbg !855 ; [#uses=5 type=i64*] [debug line = 800:74]
  store i64 1, i64* %nqz2.addr.1, align 16, !dbg !855 ; [debug line = 800:74]
  %nqpqx.addr.1 = getelementptr inbounds [19 x i64]* %nqpqx, i64 0, i64 0, !dbg !858 ; [#uses=5 type=i64*] [debug line = 804:3]
  call fastcc void @_memcpy(i64* %nqpqx.addr.1, i64* %q, i32 10), !dbg !858 ; [debug line = 804:3]
  %nqz.addr.1 = getelementptr inbounds [19 x i64]* %nqz, i64 0, i64 0, !dbg !859 ; [#uses=5 type=i64*] [debug line = 812:7]
  %nqx2.addr.1 = getelementptr inbounds [19 x i64]* %nqx2, i64 0, i64 0, !dbg !864 ; [#uses=4 type=i64*] [debug line = 813:7]
  %nqpqx2.addr.1 = getelementptr inbounds [19 x i64]* %nqpqx2, i64 0, i64 0, !dbg !864 ; [#uses=4 type=i64*] [debug line = 813:7]
  %t.addr.1 = getelementptr inbounds [19 x i64]* %t, i64 0, i64 0, !dbg !865 ; [#uses=8 type=i64*] [debug line = 822:7]
  br label %14, !dbg !866                         ; [debug line = 806:8]

; <label>:14                                      ; preds = %18, %13
  %i = phi i32 [ 0, %13 ], [ %i.18, %18 ]         ; [#uses=3 type=i32]
  %tmp.1309 = icmp eq i32 %i, 32, !dbg !866       ; [#uses=1 type=i1] [debug line = 806:8]
  br i1 %tmp.1309, label %19, label %15, !dbg !866 ; [debug line = 806:8]

; <label>:15                                      ; preds = %14
  %tmp.1310 = sub i32 31, %i, !dbg !867           ; [#uses=1 type=i32] [debug line = 807:24]
  %tmp.1311 = zext i32 %tmp.1310 to i64, !dbg !867 ; [#uses=1 type=i64] [debug line = 807:24]
  %n.addr = getelementptr inbounds i8* %n, i64 %tmp.1311, !dbg !867 ; [#uses=1 type=i8*] [debug line = 807:24]
  %byte = load i8* %n.addr, align 1, !dbg !867    ; [#uses=2 type=i8] [debug line = 807:24]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %byte) nounwind
  call void @llvm.dbg.value(metadata !{i8 %byte}, i64 0, metadata !868), !dbg !867 ; [debug line = 807:24] [debug variable = byte]
  br label %16, !dbg !869                         ; [debug line = 808:10]

; <label>:16                                      ; preds = %17, %15
  %j = phi i32 [ 0, %15 ], [ %j.4, %17 ]          ; [#uses=2 type=i32]
  %byte1 = phi i8 [ %byte, %15 ], [ %byte.2, %17 ] ; [#uses=2 type=i8]
  %tmp.1312 = icmp eq i32 %j, 8, !dbg !869        ; [#uses=1 type=i1] [debug line = 808:10]
  br i1 %tmp.1312, label %18, label %17, !dbg !869 ; [debug line = 808:10]

; <label>:17                                      ; preds = %16
  %tmp.1314 = zext i8 %byte1 to i32, !dbg !870    ; [#uses=1 type=i32] [debug line = 809:33]
  %tmp.1315 = lshr i32 %tmp.1314, 7, !dbg !870    ; [#uses=1 type=i32] [debug line = 809:33]
  %bit = zext i32 %tmp.1315 to i64, !dbg !870     ; [#uses=4 type=i64] [debug line = 809:33]
  call void @llvm.dbg.value(metadata !{i64 %bit}, i64 0, metadata !871), !dbg !870 ; [debug line = 809:33] [debug variable = bit]
  call fastcc void @swap_conditional(i64* %nqx.addr.1, i64* %nqpqx.addr.1, i64 %bit), !dbg !872 ; [debug line = 811:7]
  call fastcc void @swap_conditional(i64* %nqz.addr.1, i64* %nqpqz.addr.1, i64 %bit), !dbg !859 ; [debug line = 812:7]
  call fastcc void @fmonty(i64* %nqx2.addr.1, i64* %nqz2.addr.1, i64* %nqpqx2.addr.1, i64* %nqpqz2.addr.1, i64* %nqx.addr.1, i64* %nqz.addr.1, i64* %nqpqx.addr.1, i64* %nqpqz.addr.1, i64* %q), !dbg !864 ; [debug line = 813:7]
  call fastcc void @swap_conditional(i64* %nqx2.addr.1, i64* %nqpqx2.addr.1, i64 %bit), !dbg !873 ; [debug line = 818:7]
  call fastcc void @swap_conditional(i64* %nqz2.addr.1, i64* %nqpqz2.addr.1, i64 %bit), !dbg !874 ; [debug line = 819:7]
  call fastcc void @_memcpy(i64* %t.addr.1, i64* %nqx.addr.1, i32 19), !dbg !865 ; [debug line = 822:7]
  call fastcc void @_memcpy(i64* %nqx.addr.1, i64* %nqx2.addr.1, i32 19), !dbg !875 ; [debug line = 833:7]
  call fastcc void @_memcpy(i64* %nqx2.addr.1, i64* %t.addr.1, i32 19), !dbg !876 ; [debug line = 836:7]
  call fastcc void @_memcpy(i64* %t.addr.1, i64* %nqz.addr.1, i32 19), !dbg !877 ; [debug line = 839:7]
  call fastcc void @_memcpy(i64* %nqz.addr.1, i64* %nqz2.addr.1, i32 19), !dbg !878 ; [debug line = 842:7]
  call fastcc void @_memcpy(i64* %nqz2.addr.1, i64* %t.addr.1, i32 19), !dbg !879 ; [debug line = 845:7]
  call fastcc void @_memcpy(i64* %t.addr.1, i64* %nqpqx.addr.1, i32 19), !dbg !880 ; [debug line = 848:7]
  call fastcc void @_memcpy(i64* %nqpqx.addr.1, i64* %nqpqx2.addr.1, i32 19), !dbg !881 ; [debug line = 851:7]
  call fastcc void @_memcpy(i64* %nqpqx2.addr.1, i64* %t.addr.1, i32 19), !dbg !882 ; [debug line = 854:7]
  call fastcc void @_memcpy(i64* %t.addr.1, i64* %nqpqz.addr.1, i32 19), !dbg !883 ; [debug line = 857:7]
  call fastcc void @_memcpy(i64* %nqpqz.addr.1, i64* %nqpqz2.addr.1, i32 19), !dbg !884 ; [debug line = 860:7]
  call fastcc void @_memcpy(i64* %nqpqz2.addr.1, i64* %t.addr.1, i32 19), !dbg !885 ; [debug line = 863:7]
  %byte.2 = shl i8 %byte1, 1, !dbg !886           ; [#uses=1 type=i8] [debug line = 873:7]
  call void @llvm.dbg.value(metadata !{i8 %byte.2}, i64 0, metadata !868), !dbg !886 ; [debug line = 873:7] [debug variable = byte]
  %j.4 = add i32 %j, 1, !dbg !887                 ; [#uses=1 type=i32] [debug line = 808:24]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !888), !dbg !887 ; [debug line = 808:24] [debug variable = j]
  br label %16, !dbg !887                         ; [debug line = 808:24]

; <label>:18                                      ; preds = %16
  %i.18 = add i32 %i, 1, !dbg !889                ; [#uses=1 type=i32] [debug line = 806:23]
  call void @llvm.dbg.value(metadata !{i32 %i.18}, i64 0, metadata !890), !dbg !889 ; [debug line = 806:23] [debug variable = i]
  br label %14, !dbg !889                         ; [debug line = 806:23]

; <label>:19                                      ; preds = %14
  call fastcc void @_memcpy(i64* %resultx, i64* %nqx.addr.1, i32 10), !dbg !891 ; [debug line = 877:3]
  call fastcc void @_memcpy(i64* %resultz, i64* %nqz.addr.1, i32 10), !dbg !892 ; [debug line = 878:3]
  ret void, !dbg !893                             ; [debug line = 879:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=17]
declare void @_ssdm_op_SpecResourceLimit(...) nounwind

; [#uses=10]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=527]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=8]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define internal fastcc void @_memset(i64* %dst) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %dst}, i64 0, metadata !894), !dbg !895 ; [debug line = 73:20] [debug variable = dst]
  br label %1, !dbg !896                          ; [debug line = 75:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.19, %2 ]           ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 9, !dbg !896        ; [#uses=1 type=i1] [debug line = 75:6]
  br i1 %exitcond, label %3, label %2, !dbg !896  ; [debug line = 75:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !899            ; [#uses=1 type=i64] [debug line = 76:3]
  %dst.addr = getelementptr inbounds i64* %dst, i64 %tmp, !dbg !899 ; [#uses=1 type=i64*] [debug line = 76:3]
  store i64 0, i64* %dst.addr, align 8, !dbg !899 ; [debug line = 76:3]
  %i.19 = add nsw i32 %i, 1, !dbg !901            ; [#uses=1 type=i32] [debug line = 75:18]
  call void @llvm.dbg.value(metadata !{i32 %i.19}, i64 0, metadata !902), !dbg !901 ; [debug line = 75:18] [debug variable = i]
  br label %1, !dbg !901                          ; [debug line = 75:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !903                             ; [debug line = 78:1]
}

; [#uses=6]
define internal fastcc void @_memcpy_char(i8* %dst, i8* %src) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !904), !dbg !905 ; [debug line = 66:34] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !906), !dbg !907 ; [debug line = 66:54] [debug variable = src]
  br label %1, !dbg !908                          ; [debug line = 68:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.20, %2 ]           ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 32, !dbg !908       ; [#uses=1 type=i1] [debug line = 68:6]
  br i1 %exitcond, label %3, label %2, !dbg !908  ; [debug line = 68:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !911            ; [#uses=2 type=i64] [debug line = 69:3]
  %src.addr = getelementptr inbounds i8* %src, i64 %tmp, !dbg !911 ; [#uses=1 type=i8*] [debug line = 69:3]
  %src.load = load i8* %src.addr, align 1, !dbg !911 ; [#uses=2 type=i8] [debug line = 69:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %src.load) nounwind
  %dst.addr = getelementptr inbounds i8* %dst, i64 %tmp, !dbg !911 ; [#uses=1 type=i8*] [debug line = 69:3]
  store i8 %src.load, i8* %dst.addr, align 1, !dbg !911 ; [debug line = 69:3]
  %i.20 = add nsw i32 %i, 1, !dbg !913            ; [#uses=1 type=i32] [debug line = 68:18]
  call void @llvm.dbg.value(metadata !{i32 %i.20}, i64 0, metadata !914), !dbg !913 ; [debug line = 68:18] [debug variable = i]
  br label %1, !dbg !913                          ; [debug line = 68:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !915                             ; [debug line = 71:1]
}

; [#uses=22]
define internal fastcc void @_memcpy(i64* %dst, i64* %src, i32 %len) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64* %dst}, i64 0, metadata !916), !dbg !917 ; [debug line = 59:20] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{i64* %src}, i64 0, metadata !918), !dbg !919 ; [debug line = 59:31] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !920), !dbg !921 ; [debug line = 59:49] [debug variable = len]
  br label %1, !dbg !922                          ; [debug line = 61:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.21, %2 ]           ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %len, !dbg !922     ; [#uses=1 type=i1] [debug line = 61:6]
  br i1 %exitcond, label %3, label %2, !dbg !922  ; [debug line = 61:6]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !925            ; [#uses=2 type=i64] [debug line = 62:3]
  %src.addr = getelementptr inbounds i64* %src, i64 %tmp, !dbg !925 ; [#uses=1 type=i64*] [debug line = 62:3]
  %src.load = load i64* %src.addr, align 8, !dbg !925 ; [#uses=2 type=i64] [debug line = 62:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %src.load) nounwind
  %dst.addr = getelementptr inbounds i64* %dst, i64 %tmp, !dbg !925 ; [#uses=1 type=i64*] [debug line = 62:3]
  store i64 %src.load, i64* %dst.addr, align 8, !dbg !925 ; [debug line = 62:3]
  %i.21 = add nsw i32 %i, 1, !dbg !927            ; [#uses=1 type=i32] [debug line = 61:18]
  call void @llvm.dbg.value(metadata !{i32 %i.21}, i64 0, metadata !928), !dbg !927 ; [debug line = 61:18] [debug variable = i]
  br label %1, !dbg !927                          ; [debug line = 61:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !929                             ; [debug line = 64:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!78, !85, !87, !91, !97, !103, !107, !108, !113, !119, !124, !125, !126, !128, !132, !134, !135, !141, !147, !150, !151, !152, !154}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/curve25519-donna.pragma.2.c", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21, metadata !24, metadata !33, metadata !36, metadata !41, metadata !42, metadata !47, metadata !50, metadata !53, metadata !54, metadata !55, metadata !56, metadata !59, metadata !60, metadata !61, metadata !64, metadata !67, metadata !70, metadata !71, metadata !72, metadata !75}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"", metadata !6, i32 59, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*, i32)* @_memcpy, null, null, metadata !14, i32 59} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"curve25519/src/curve25519-donna.c", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !13}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"limb", metadata !6, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786454, null, metadata !"int64_t", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy_char", metadata !"_memcpy_char", metadata !"", metadata !6, i32 66, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 66} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !13}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memset", metadata !"_memset", metadata !"", metadata !6, i32 73, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 73} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !9, metadata !10, metadata !13}
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"curve25519_donna", metadata !"curve25519_donna", metadata !"", metadata !6, i32 954, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, i8*, i8*, i8*, i8*)* @curve25519_donna, null, null, metadata !14, i32 955} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{metadata !27, metadata !28, metadata !31, metadata !31, metadata !28, metadata !31, metadata !31}
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786454, null, metadata !"u8", metadata !6, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fcontract", metadata !"fcontract", metadata !"", metadata !6, i32 525, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i64*)* @fcontract, null, null, metadata !14, i32 525} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !28, metadata !9}
!36 = metadata !{i32 786478, i32 0, metadata !6, metadata !"s32_eq", metadata !"s32_eq", metadata !"", metadata !6, i32 502, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @s32_eq, null, null, metadata !14, i32 502} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !39, metadata !39, metadata !39}
!39 = metadata !{i32 786454, null, metadata !"s32", metadata !6, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 786454, null, metadata !"int32_t", metadata !6, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 786478, i32 0, metadata !6, metadata !"s32_gte", metadata !"s32_gte", metadata !"", metadata !6, i32 514, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 514} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fmul", metadata !"fmul", metadata !"", metadata !6, i32 352, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*, i64*)* @fmul, null, null, metadata !14, i32 352} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !9, metadata !45, metadata !45}
!45 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786478, i32 0, metadata !6, metadata !"freduce_coefficients", metadata !"freduce_coefficients", metadata !"", metadata !6, i32 302, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*)* @freduce_coefficients, null, null, metadata !14, i32 302} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !9}
!50 = metadata !{i32 786478, i32 0, metadata !6, metadata !"div_by_2_25", metadata !"div_by_2_25", metadata !"", metadata !6, i32 287, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @div_by_2_25, null, null, metadata !14, i32 288} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !10, metadata !46}
!53 = metadata !{i32 786478, i32 0, metadata !6, metadata !"div_by_2_26", metadata !"div_by_2_26", metadata !"", metadata !6, i32 271, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @div_by_2_26, null, null, metadata !14, i32 272} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !6, metadata !"freduce_degree", metadata !"freduce_degree", metadata !"", metadata !6, i32 229, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*)* @freduce_degree, null, null, metadata !14, i32 229} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fproduct", metadata !"fproduct", metadata !"", metadata !6, i32 120, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*, i64*)* @fproduct, null, null, metadata !14, i32 120} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786478, i32 0, metadata !6, metadata !"crecip", metadata !"crecip", metadata !"", metadata !6, i32 885, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*)* @crecip, null, null, metadata !14, i32 885} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !9, metadata !45}
!59 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fsquare", metadata !"fsquare", metadata !"", metadata !6, i32 462, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*)* @fsquare, null, null, metadata !14, i32 462} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fsquare_inner", metadata !"fsquare_inner", metadata !"", metadata !6, i32 368, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*)* @fsquare_inner, null, null, metadata !14, i32 368} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786478, i32 0, metadata !6, metadata !"cmult", metadata !"cmult", metadata !"", metadata !6, i32 792, metadata !62, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*, i8*, i64*)* @cmult, null, null, metadata !14, i32 792} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !9, metadata !9, metadata !31, metadata !45}
!64 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fmonty", metadata !"fmonty", metadata !"", metadata !6, i32 678, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*)* @fmonty, null, null, metadata !14, i32 682} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !45}
!67 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fscalar_product", metadata !"fscalar_product", metadata !"", metadata !6, i32 107, metadata !68, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 107} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !9, metadata !45, metadata !46}
!70 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fdifference", metadata !"fdifference", metadata !"", metadata !6, i32 99, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*)* @fdifference, null, null, metadata !14, i32 99} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fsum", metadata !"fsum", metadata !"", metadata !6, i32 89, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*)* @fsum, null, null, metadata !14, i32 89} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap_conditional", metadata !"swap_conditional", metadata !"", metadata !6, i32 775, metadata !73, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i64*, i64)* @swap_conditional, null, null, metadata !14, i32 775} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !9, metadata !9, metadata !10}
!75 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fexpand", metadata !"fexpand", metadata !"", metadata !6, i32 478, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*, i8*)* @fexpand, null, null, metadata !14, i32 478} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !9, metadata !31}
!78 = metadata !{void (i64*, i64*, i32)* @_memcpy, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!79 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!80 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"uint"}
!82 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"len"}
!84 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!85 = metadata !{null, metadata !79, metadata !80, metadata !86, metadata !82, metadata !83, metadata !84}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!87 = metadata !{null, metadata !88, metadata !80, metadata !89, metadata !82, metadata !90, metadata !84}
!88 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb", metadata !"uint"}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"len"}
!91 = metadata !{i32 (i8*, i8*, i8*, i8*, i8*, i8*)* @curve25519_donna, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !84}
!92 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!93 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*"}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"const", metadata !"", metadata !"const", metadata !"const"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"mypublic_in", metadata !"secret_in", metadata !"basepoint_in", metadata !"mypublic_out", metadata !"secret_out", metadata !"basepoint_out"}
!97 = metadata !{void (i8*, i64*)* @fcontract, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !84}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!99 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"u8*", metadata !"limb*"}
!101 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"input_limbs"}
!103 = metadata !{i32 (i32, i32)* @s32_eq, metadata !104, metadata !99, metadata !105, metadata !101, metadata !106, metadata !84}
!104 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"s32", metadata !"s32"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!107 = metadata !{null, metadata !104, metadata !99, metadata !105, metadata !101, metadata !106, metadata !84}
!108 = metadata !{void (i64*, i64*, i64*)* @fmul, metadata !109, metadata !80, metadata !110, metadata !111, metadata !112, metadata !84}
!109 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb*"}
!111 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"const"}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in", metadata !"in2"}
!113 = metadata !{void (i64*)* @freduce_coefficients, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !84}
!114 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!115 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"limb*"}
!117 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"output"}
!119 = metadata !{i64 (i64)* @div_by_2_25, metadata !120, metadata !115, metadata !121, metadata !122, metadata !123, metadata !84}
!120 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"limb"}
!122 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!124 = metadata !{i64 (i64)* @div_by_2_26, metadata !120, metadata !115, metadata !121, metadata !122, metadata !123, metadata !84}
!125 = metadata !{void (i64*)* @freduce_degree, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !84}
!126 = metadata !{void (i64*, i64*, i64*)* @fproduct, metadata !109, metadata !80, metadata !110, metadata !111, metadata !127, metadata !84}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in2", metadata !"in"}
!128 = metadata !{void (i64*, i64*)* @crecip, metadata !98, metadata !99, metadata !129, metadata !130, metadata !131, metadata !84}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*"}
!130 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const"}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"z"}
!132 = metadata !{void (i64*, i64*)* @fsquare, metadata !98, metadata !99, metadata !129, metadata !130, metadata !133, metadata !84}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in"}
!134 = metadata !{void (i64*, i64*)* @fsquare_inner, metadata !98, metadata !99, metadata !129, metadata !130, metadata !133, metadata !84}
!135 = metadata !{void (i64*, i64*, i8*, i64*)* @cmult, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !84}
!136 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!137 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"u8*", metadata !"limb*"}
!139 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"const", metadata !"const"}
!140 = metadata !{metadata !"kernel_arg_name", metadata !"resultx", metadata !"resultz", metadata !"n", metadata !"q"}
!141 = metadata !{void (i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*)* @fmonty, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !84}
!142 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!143 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*"}
!145 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"const"}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"x2", metadata !"z2", metadata !"x3", metadata !"z3", metadata !"x", metadata !"z", metadata !"xprime", metadata !"zprime", metadata !"qmqp"}
!147 = metadata !{null, metadata !79, metadata !80, metadata !148, metadata !111, metadata !149, metadata !84}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb"}
!149 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in", metadata !"scalar"}
!150 = metadata !{void (i64*, i64*)* @fdifference, metadata !98, metadata !99, metadata !129, metadata !130, metadata !133, metadata !84}
!151 = metadata !{void (i64*, i64*)* @fsum, metadata !98, metadata !99, metadata !129, metadata !130, metadata !133, metadata !84}
!152 = metadata !{void (i64*, i64*, i64)* @swap_conditional, metadata !79, metadata !80, metadata !148, metadata !82, metadata !153, metadata !84}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"iswap"}
!154 = metadata !{void (i64*, i8*)* @fexpand, metadata !98, metadata !99, metadata !155, metadata !130, metadata !156, metadata !84}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"u8*"}
!156 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"input"}
!157 = metadata !{i32 786689, metadata !72, metadata !"a", metadata !6, i32 16777991, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 775, i32 23, metadata !72, null}
!159 = metadata !{i32 786689, metadata !72, metadata !"b", metadata !6, i32 33555207, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 775, i32 35, metadata !72, null}
!161 = metadata !{i32 786689, metadata !72, metadata !"iswap", metadata !6, i32 50332423, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 775, i32 47, metadata !72, null}
!163 = metadata !{i32 775, i32 55, metadata !164, null}
!164 = metadata !{i32 786443, metadata !72, i32 775, i32 54, metadata !6, i32 79} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 775, i32 84, metadata !164, null}
!166 = metadata !{i32 777, i32 32, metadata !164, null}
!167 = metadata !{i32 786688, metadata !164, metadata !"swap", metadata !6, i32 777, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ]
!169 = metadata !{i32 779, i32 8, metadata !170, null}
!170 = metadata !{i32 786443, metadata !164, i32 779, i32 3, metadata !6, i32 80} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 780, i32 55, metadata !172, null}
!172 = metadata !{i32 786443, metadata !170, i32 779, i32 28, metadata !6, i32 81} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786688, metadata !172, metadata !"x", metadata !6, i32 780, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 781, i32 5, metadata !172, null}
!175 = metadata !{i32 782, i32 5, metadata !172, null}
!176 = metadata !{i32 779, i32 23, metadata !170, null}
!177 = metadata !{i32 786688, metadata !164, metadata !"i", metadata !6, i32 776, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 784, i32 1, metadata !164, null}
!179 = metadata !{i32 786689, metadata !41, metadata !"a", metadata !6, i32 16777730, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 514, i32 24, metadata !41, null}
!181 = metadata !{i32 515, i32 3, metadata !182, null}
!182 = metadata !{i32 786443, metadata !41, i32 514, i32 34, metadata !6, i32 39} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 517, i32 3, metadata !182, null}
!184 = metadata !{i32 786689, metadata !36, metadata !"a", metadata !6, i32 16777718, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 502, i32 23, metadata !36, null}
!186 = metadata !{i32 786689, metadata !36, metadata !"b", metadata !6, i32 33554934, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 502, i32 30, metadata !36, null}
!188 = metadata !{i32 503, i32 3, metadata !189, null}
!189 = metadata !{i32 786443, metadata !36, i32 502, i32 33, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 504, i32 3, metadata !189, null}
!191 = metadata !{i32 505, i32 3, metadata !189, null}
!192 = metadata !{i32 506, i32 3, metadata !189, null}
!193 = metadata !{i32 507, i32 3, metadata !189, null}
!194 = metadata !{i32 508, i32 3, metadata !189, null}
!195 = metadata !{i32 509, i32 3, metadata !189, null}
!196 = metadata !{i32 786689, metadata !71, metadata !"output", metadata !6, i32 16777305, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 89, i32 24, metadata !71, null}
!198 = metadata !{i32 786689, metadata !71, metadata !"in", metadata !6, i32 33554521, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 89, i32 44, metadata !71, null}
!200 = metadata !{i32 91, i32 8, metadata !201, null}
!201 = metadata !{i32 786443, metadata !202, i32 91, i32 3, metadata !6, i32 77} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 786443, metadata !71, i32 89, i32 48, metadata !6, i32 76} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 92, i32 5, metadata !204, null}
!204 = metadata !{i32 786443, metadata !201, i32 91, i32 31, metadata !6, i32 78} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 93, i32 5, metadata !204, null}
!206 = metadata !{i32 91, i32 23, metadata !201, null}
!207 = metadata !{i32 786688, metadata !202, metadata !"i", metadata !6, i32 90, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 95, i32 1, metadata !202, null}
!209 = metadata !{i32 786689, metadata !60, metadata !"output", metadata !6, i32 16777584, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 368, i32 33, metadata !60, null}
!211 = metadata !{i32 786689, metadata !60, metadata !"in", metadata !6, i32 33554800, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 368, i32 53, metadata !60, null}
!213 = metadata !{i32 369, i32 1, metadata !214, null}
!214 = metadata !{i32 786443, metadata !60, i32 368, i32 57, metadata !6, i32 63} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 370, i32 1, metadata !214, null}
!216 = metadata !{i32 371, i32 53, metadata !214, null}
!217 = metadata !{i32 786688, metadata !214, metadata !"out_1", metadata !6, i32 371, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 374, i32 3, metadata !214, null}
!219 = metadata !{i32 378, i32 3, metadata !214, null}
!220 = metadata !{i32 383, i32 3, metadata !214, null}
!221 = metadata !{i32 386, i32 3, metadata !214, null}
!222 = metadata !{i32 389, i32 3, metadata !214, null}
!223 = metadata !{i32 393, i32 3, metadata !214, null}
!224 = metadata !{i32 397, i32 3, metadata !214, null}
!225 = metadata !{i32 402, i32 3, metadata !214, null}
!226 = metadata !{i32 407, i32 3, metadata !214, null}
!227 = metadata !{i32 413, i32 3, metadata !214, null}
!228 = metadata !{i32 419, i32 3, metadata !214, null}
!229 = metadata !{i32 425, i32 3, metadata !214, null}
!230 = metadata !{i32 430, i32 3, metadata !214, null}
!231 = metadata !{i32 435, i32 3, metadata !214, null}
!232 = metadata !{i32 439, i32 3, metadata !214, null}
!233 = metadata !{i32 443, i32 3, metadata !214, null}
!234 = metadata !{i32 446, i32 3, metadata !214, null}
!235 = metadata !{i32 449, i32 3, metadata !214, null}
!236 = metadata !{i32 451, i32 3, metadata !214, null}
!237 = metadata !{i32 452, i32 1, metadata !214, null}
!238 = metadata !{i32 786689, metadata !59, metadata !"output", metadata !6, i32 16777678, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 462, i32 15, metadata !59, null}
!240 = metadata !{i32 786689, metadata !59, metadata !"in", metadata !6, i32 33554894, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 462, i32 35, metadata !59, null}
!242 = metadata !{i32 463, i32 1, metadata !243, null}
!243 = metadata !{i32 786443, metadata !59, i32 462, i32 39, metadata !6, i32 62} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 464, i32 1, metadata !243, null}
!245 = metadata !{i32 786688, metadata !243, metadata !"t", metadata !6, i32 465, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1216, i64 64, i32 0, i32 0, metadata !10, metadata !247, i32 0, i32 0} ; [ DW_TAG_array_type ]
!247 = metadata !{metadata !248}
!248 = metadata !{i32 786465, i64 0, i64 18}      ; [ DW_TAG_subrange_type ]
!249 = metadata !{i32 465, i32 7, metadata !243, null}
!250 = metadata !{i32 466, i32 3, metadata !243, null}
!251 = metadata !{i32 470, i32 3, metadata !243, null}
!252 = metadata !{i32 471, i32 3, metadata !243, null}
!253 = metadata !{i32 473, i32 3, metadata !243, null}
!254 = metadata !{i32 474, i32 1, metadata !243, null}
!255 = metadata !{i32 786689, metadata !67, metadata !"output", metadata !6, i32 16777323, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!256 = metadata !{i32 107, i32 35, metadata !67, null}
!257 = metadata !{i32 786689, metadata !67, metadata !"in", metadata !6, i32 33554539, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!258 = metadata !{i32 107, i32 55, metadata !67, null}
!259 = metadata !{i32 109, i32 8, metadata !260, null}
!260 = metadata !{i32 786443, metadata !261, i32 109, i32 3, metadata !6, i32 71} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 786443, metadata !67, i32 107, i32 78, metadata !6, i32 70} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 110, i32 5, metadata !263, null}
!263 = metadata !{i32 786443, metadata !260, i32 109, i32 28, metadata !6, i32 72} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 109, i32 23, metadata !260, null}
!265 = metadata !{i32 786688, metadata !261, metadata !"i", metadata !6, i32 108, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 112, i32 1, metadata !261, null}
!267 = metadata !{i32 786689, metadata !54, metadata !"output", metadata !6, i32 16777445, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 229, i32 34, metadata !54, null}
!269 = metadata !{i32 234, i32 3, metadata !270, null}
!270 = metadata !{i32 786443, metadata !54, i32 229, i32 42, metadata !6, i32 47} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 235, i32 3, metadata !270, null}
!272 = metadata !{i32 236, i32 3, metadata !270, null}
!273 = metadata !{i32 237, i32 3, metadata !270, null}
!274 = metadata !{i32 238, i32 3, metadata !270, null}
!275 = metadata !{i32 239, i32 3, metadata !270, null}
!276 = metadata !{i32 240, i32 3, metadata !270, null}
!277 = metadata !{i32 241, i32 3, metadata !270, null}
!278 = metadata !{i32 242, i32 3, metadata !270, null}
!279 = metadata !{i32 243, i32 3, metadata !270, null}
!280 = metadata !{i32 244, i32 3, metadata !270, null}
!281 = metadata !{i32 245, i32 3, metadata !270, null}
!282 = metadata !{i32 246, i32 3, metadata !270, null}
!283 = metadata !{i32 247, i32 3, metadata !270, null}
!284 = metadata !{i32 248, i32 3, metadata !270, null}
!285 = metadata !{i32 249, i32 3, metadata !270, null}
!286 = metadata !{i32 250, i32 3, metadata !270, null}
!287 = metadata !{i32 251, i32 3, metadata !270, null}
!288 = metadata !{i32 252, i32 3, metadata !270, null}
!289 = metadata !{i32 253, i32 3, metadata !270, null}
!290 = metadata !{i32 254, i32 3, metadata !270, null}
!291 = metadata !{i32 255, i32 3, metadata !270, null}
!292 = metadata !{i32 256, i32 3, metadata !270, null}
!293 = metadata !{i32 257, i32 3, metadata !270, null}
!294 = metadata !{i32 258, i32 3, metadata !270, null}
!295 = metadata !{i32 259, i32 3, metadata !270, null}
!296 = metadata !{i32 260, i32 3, metadata !270, null}
!297 = metadata !{i32 261, i32 1, metadata !270, null}
!298 = metadata !{i32 786689, metadata !47, metadata !"output", metadata !6, i32 16777518, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!299 = metadata !{i32 302, i32 40, metadata !47, null}
!300 = metadata !{i32 305, i32 3, metadata !301, null}
!301 = metadata !{i32 786443, metadata !47, i32 302, i32 48, metadata !6, i32 41} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 307, i32 8, metadata !303, null}
!303 = metadata !{i32 786443, metadata !301, i32 307, i32 3, metadata !6, i32 42} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 308, i32 17, metadata !305, null}
!305 = metadata !{i32 786443, metadata !303, i32 307, i32 31, metadata !6, i32 43} ; [ DW_TAG_lexical_block ]
!306 = metadata !{i32 786688, metadata !305, metadata !"over", metadata !6, i32 308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 313, i32 5, metadata !305, null}
!308 = metadata !{i32 314, i32 5, metadata !305, null}
!309 = metadata !{i32 322, i32 12, metadata !305, null}
!310 = metadata !{i32 323, i32 5, metadata !305, null}
!311 = metadata !{i32 324, i32 5, metadata !305, null}
!312 = metadata !{i32 786688, metadata !301, metadata !"i", metadata !6, i32 303, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!313 = metadata !{i32 307, i32 23, metadata !303, null}
!314 = metadata !{i32 327, i32 3, metadata !301, null}
!315 = metadata !{i32 328, i32 3, metadata !301, null}
!316 = metadata !{i32 329, i32 3, metadata !301, null}
!317 = metadata !{i32 331, i32 3, metadata !301, null}
!318 = metadata !{i32 336, i32 17, metadata !319, null}
!319 = metadata !{i32 786443, metadata !301, i32 335, i32 3, metadata !6, i32 44} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 786688, metadata !319, metadata !"over", metadata !6, i32 336, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 337, i32 5, metadata !319, null}
!322 = metadata !{i32 338, i32 5, metadata !319, null}
!323 = metadata !{i32 343, i32 1, metadata !301, null}
!324 = metadata !{i32 786689, metadata !55, metadata !"output", metadata !6, i32 16777336, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!325 = metadata !{i32 120, i32 28, metadata !55, null}
!326 = metadata !{i32 786689, metadata !55, metadata !"in2", metadata !6, i32 33554552, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!327 = metadata !{i32 120, i32 48, metadata !55, null}
!328 = metadata !{i32 786689, metadata !55, metadata !"in", metadata !6, i32 50331768, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!329 = metadata !{i32 120, i32 65, metadata !55, null}
!330 = metadata !{i32 121, i32 1, metadata !331, null}
!331 = metadata !{i32 786443, metadata !55, i32 120, i32 69, metadata !6, i32 48} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 122, i32 1, metadata !331, null}
!333 = metadata !{i32 123, i32 2, metadata !331, null}
!334 = metadata !{i32 124, i32 3, metadata !331, null}
!335 = metadata !{i32 126, i32 3, metadata !331, null}
!336 = metadata !{i32 129, i32 3, metadata !331, null}
!337 = metadata !{i32 133, i32 3, metadata !331, null}
!338 = metadata !{i32 138, i32 3, metadata !331, null}
!339 = metadata !{i32 144, i32 3, metadata !331, null}
!340 = metadata !{i32 151, i32 3, metadata !331, null}
!341 = metadata !{i32 159, i32 3, metadata !331, null}
!342 = metadata !{i32 168, i32 3, metadata !331, null}
!343 = metadata !{i32 178, i32 3, metadata !331, null}
!344 = metadata !{i32 187, i32 3, metadata !331, null}
!345 = metadata !{i32 195, i32 3, metadata !331, null}
!346 = metadata !{i32 202, i32 3, metadata !331, null}
!347 = metadata !{i32 208, i32 3, metadata !331, null}
!348 = metadata !{i32 213, i32 3, metadata !331, null}
!349 = metadata !{i32 217, i32 3, metadata !331, null}
!350 = metadata !{i32 220, i32 3, metadata !331, null}
!351 = metadata !{i32 222, i32 3, metadata !331, null}
!352 = metadata !{i32 223, i32 1, metadata !331, null}
!353 = metadata !{i32 786689, metadata !42, metadata !"output", metadata !6, i32 16777568, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!354 = metadata !{i32 352, i32 12, metadata !42, null}
!355 = metadata !{i32 786689, metadata !42, metadata !"in", metadata !6, i32 33554784, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!356 = metadata !{i32 352, i32 32, metadata !42, null}
!357 = metadata !{i32 786689, metadata !42, metadata !"in2", metadata !6, i32 50332000, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!358 = metadata !{i32 352, i32 48, metadata !42, null}
!359 = metadata !{i32 786688, metadata !360, metadata !"t", metadata !6, i32 353, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!360 = metadata !{i32 786443, metadata !42, i32 352, i32 53, metadata !6, i32 40} ; [ DW_TAG_lexical_block ]
!361 = metadata !{i32 353, i32 8, metadata !360, null}
!362 = metadata !{i32 354, i32 3, metadata !360, null}
!363 = metadata !{i32 356, i32 3, metadata !360, null}
!364 = metadata !{i32 357, i32 3, metadata !360, null}
!365 = metadata !{i32 359, i32 3, metadata !360, null}
!366 = metadata !{i32 360, i32 1, metadata !360, null}
!367 = metadata !{i32 786689, metadata !64, metadata !"x2", metadata !6, i32 16777894, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!368 = metadata !{i32 678, i32 26, metadata !64, null}
!369 = metadata !{i32 786689, metadata !64, metadata !"z2", metadata !6, i32 33555110, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!370 = metadata !{i32 678, i32 36, metadata !64, null}
!371 = metadata !{i32 786689, metadata !64, metadata !"x3", metadata !6, i32 50332327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!372 = metadata !{i32 679, i32 26, metadata !64, null}
!373 = metadata !{i32 786689, metadata !64, metadata !"z3", metadata !6, i32 67109543, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 679, i32 36, metadata !64, null}
!375 = metadata !{i32 786689, metadata !64, metadata !"x", metadata !6, i32 83886760, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 680, i32 26, metadata !64, null}
!377 = metadata !{i32 786689, metadata !64, metadata !"z", metadata !6, i32 100663976, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!378 = metadata !{i32 680, i32 35, metadata !64, null}
!379 = metadata !{i32 786689, metadata !64, metadata !"xprime", metadata !6, i32 117441193, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!380 = metadata !{i32 681, i32 26, metadata !64, null}
!381 = metadata !{i32 786689, metadata !64, metadata !"zprime", metadata !6, i32 134218409, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!382 = metadata !{i32 681, i32 40, metadata !64, null}
!383 = metadata !{i32 786689, metadata !64, metadata !"qmqp", metadata !6, i32 150995626, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!384 = metadata !{i32 682, i32 32, metadata !64, null}
!385 = metadata !{i32 683, i32 1, metadata !386, null}
!386 = metadata !{i32 786443, metadata !64, i32 682, i32 57, metadata !6, i32 69} ; [ DW_TAG_lexical_block ]
!387 = metadata !{i32 684, i32 1, metadata !386, null}
!388 = metadata !{i32 786688, metadata !386, metadata !"origx", metadata !6, i32 685, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!389 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !10, metadata !390, i32 0, i32 0} ; [ DW_TAG_array_type ]
!390 = metadata !{metadata !391}
!391 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ]
!392 = metadata !{i32 685, i32 7, metadata !386, null}
!393 = metadata !{i32 786688, metadata !386, metadata !"origxprime", metadata !6, i32 685, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 685, i32 18, metadata !386, null}
!395 = metadata !{i32 786688, metadata !386, metadata !"zzz", metadata !6, i32 685, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!396 = metadata !{i32 685, i32 34, metadata !386, null}
!397 = metadata !{i32 786688, metadata !386, metadata !"xx", metadata !6, i32 685, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 685, i32 43, metadata !386, null}
!399 = metadata !{i32 786688, metadata !386, metadata !"zz", metadata !6, i32 685, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!400 = metadata !{i32 685, i32 51, metadata !386, null}
!401 = metadata !{i32 786688, metadata !386, metadata !"xxprime", metadata !6, i32 685, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!402 = metadata !{i32 685, i32 59, metadata !386, null}
!403 = metadata !{i32 786688, metadata !386, metadata !"zzprime", metadata !6, i32 686, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!404 = metadata !{i32 686, i32 9, metadata !386, null}
!405 = metadata !{i32 786688, metadata !386, metadata !"zzzprime", metadata !6, i32 686, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!406 = metadata !{i32 686, i32 22, metadata !386, null}
!407 = metadata !{i32 786688, metadata !386, metadata !"xxxprime", metadata !6, i32 686, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!408 = metadata !{i32 686, i32 36, metadata !386, null}
!409 = metadata !{i32 690, i32 3, metadata !386, null}
!410 = metadata !{i32 691, i32 3, metadata !386, null}
!411 = metadata !{i32 693, i32 3, metadata !386, null}
!412 = metadata !{i32 696, i32 3, metadata !386, null}
!413 = metadata !{i32 697, i32 3, metadata !386, null}
!414 = metadata !{i32 699, i32 3, metadata !386, null}
!415 = metadata !{i32 701, i32 3, metadata !386, null}
!416 = metadata !{i32 705, i32 3, metadata !386, null}
!417 = metadata !{i32 707, i32 3, metadata !386, null}
!418 = metadata !{i32 708, i32 3, metadata !386, null}
!419 = metadata !{i32 710, i32 3, metadata !386, null}
!420 = metadata !{i32 711, i32 3, metadata !386, null}
!421 = metadata !{i32 713, i32 3, metadata !386, null}
!422 = metadata !{i32 714, i32 3, metadata !386, null}
!423 = metadata !{i32 716, i32 3, metadata !386, null}
!424 = metadata !{i32 718, i32 3, metadata !386, null}
!425 = metadata !{i32 720, i32 3, metadata !386, null}
!426 = metadata !{i32 722, i32 3, metadata !386, null}
!427 = metadata !{i32 724, i32 3, metadata !386, null}
!428 = metadata !{i32 725, i32 3, metadata !386, null}
!429 = metadata !{i32 727, i32 3, metadata !386, null}
!430 = metadata !{i32 728, i32 3, metadata !386, null}
!431 = metadata !{i32 730, i32 3, metadata !386, null}
!432 = metadata !{i32 732, i32 3, metadata !386, null}
!433 = metadata !{i32 734, i32 3, metadata !386, null}
!434 = metadata !{i32 736, i32 3, metadata !386, null}
!435 = metadata !{i32 737, i32 3, metadata !386, null}
!436 = metadata !{i32 739, i32 3, metadata !386, null}
!437 = metadata !{i32 741, i32 3, metadata !386, null}
!438 = metadata !{i32 750, i32 3, metadata !386, null}
!439 = metadata !{i32 754, i32 3, metadata !386, null}
!440 = metadata !{i32 756, i32 3, metadata !386, null}
!441 = metadata !{i32 758, i32 3, metadata !386, null}
!442 = metadata !{i32 760, i32 3, metadata !386, null}
!443 = metadata !{i32 761, i32 3, metadata !386, null}
!444 = metadata !{i32 763, i32 1, metadata !386, null}
!445 = metadata !{i32 786689, metadata !75, metadata !"output", metadata !6, i32 16777694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 478, i32 15, metadata !75, null}
!447 = metadata !{i32 786689, metadata !75, metadata !"input", metadata !6, i32 33554910, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!448 = metadata !{i32 478, i32 33, metadata !75, null}
!449 = metadata !{i32 484, i32 3, metadata !450, null}
!450 = metadata !{i32 786443, metadata !75, i32 478, i32 40, metadata !6, i32 82} ; [ DW_TAG_lexical_block ]
!451 = metadata !{i32 485, i32 3, metadata !450, null}
!452 = metadata !{i32 486, i32 3, metadata !450, null}
!453 = metadata !{i32 487, i32 3, metadata !450, null}
!454 = metadata !{i32 488, i32 3, metadata !450, null}
!455 = metadata !{i32 489, i32 3, metadata !450, null}
!456 = metadata !{i32 490, i32 3, metadata !450, null}
!457 = metadata !{i32 491, i32 3, metadata !450, null}
!458 = metadata !{i32 492, i32 3, metadata !450, null}
!459 = metadata !{i32 493, i32 3, metadata !450, null}
!460 = metadata !{i32 495, i32 1, metadata !450, null}
!461 = metadata !{i32 786689, metadata !70, metadata !"output", metadata !6, i32 16777315, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!462 = metadata !{i32 99, i32 31, metadata !70, null}
!463 = metadata !{i32 786689, metadata !70, metadata !"in", metadata !6, i32 33554531, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 99, i32 51, metadata !70, null}
!465 = metadata !{i32 101, i32 8, metadata !466, null}
!466 = metadata !{i32 786443, metadata !467, i32 101, i32 3, metadata !6, i32 74} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 786443, metadata !70, i32 99, i32 55, metadata !6, i32 73} ; [ DW_TAG_lexical_block ]
!468 = metadata !{i32 102, i32 5, metadata !469, null}
!469 = metadata !{i32 786443, metadata !466, i32 101, i32 28, metadata !6, i32 75} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 101, i32 23, metadata !466, null}
!471 = metadata !{i32 786688, metadata !467, metadata !"i", metadata !6, i32 100, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 104, i32 1, metadata !467, null}
!473 = metadata !{i32 786689, metadata !33, metadata !"output", metadata !6, i32 16777741, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!474 = metadata !{i32 525, i32 15, metadata !33, null}
!475 = metadata !{i32 786689, metadata !33, metadata !"input_limbs", metadata !6, i32 33554957, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!476 = metadata !{i32 525, i32 29, metadata !33, null}
!477 = metadata !{i32 786688, metadata !478, metadata !"input", metadata !6, i32 528, metadata !479, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!478 = metadata !{i32 786443, metadata !33, i32 525, i32 42, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !39, metadata !390, i32 0, i32 0} ; [ DW_TAG_array_type ]
!480 = metadata !{i32 528, i32 7, metadata !478, null}
!481 = metadata !{i32 532, i32 8, metadata !482, null}
!482 = metadata !{i32 786443, metadata !478, i32 532, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!483 = metadata !{i32 556, i32 38, metadata !484, null}
!484 = metadata !{i32 786443, metadata !485, i32 555, i32 5, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!485 = metadata !{i32 786443, metadata !486, i32 536, i32 27, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 786443, metadata !478, i32 536, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!487 = metadata !{i32 559, i32 7, metadata !484, null}
!488 = metadata !{i32 536, i32 8, metadata !486, null}
!489 = metadata !{i32 533, i32 5, metadata !490, null}
!490 = metadata !{i32 786443, metadata !482, i32 532, i32 28, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!491 = metadata !{i32 532, i32 23, metadata !482, null}
!492 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !6, i32 526, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 537, i32 10, metadata !494, null}
!494 = metadata !{i32 786443, metadata !485, i32 537, i32 5, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 538, i32 7, metadata !496, null}
!496 = metadata !{i32 786443, metadata !494, i32 537, i32 29, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!497 = metadata !{i32 541, i32 40, metadata !498, null}
!498 = metadata !{i32 786443, metadata !496, i32 538, i32 25, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!499 = metadata !{i32 786688, metadata !498, metadata !"mask", metadata !6, i32 541, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 542, i32 53, metadata !498, null}
!501 = metadata !{i32 543, i32 9, metadata !498, null}
!502 = metadata !{i32 544, i32 9, metadata !498, null}
!503 = metadata !{i32 545, i32 7, metadata !498, null}
!504 = metadata !{i32 546, i32 40, metadata !505, null}
!505 = metadata !{i32 786443, metadata !496, i32 545, i32 14, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!506 = metadata !{i32 786688, metadata !505, metadata !"mask", metadata !6, i32 546, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!507 = metadata !{i32 547, i32 53, metadata !505, null}
!508 = metadata !{i32 548, i32 9, metadata !505, null}
!509 = metadata !{i32 549, i32 9, metadata !505, null}
!510 = metadata !{i32 537, i32 24, metadata !494, null}
!511 = metadata !{i32 786688, metadata !484, metadata !"mask", metadata !6, i32 556, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 557, i32 51, metadata !484, null}
!513 = metadata !{i32 558, i32 7, metadata !484, null}
!514 = metadata !{i32 536, i32 22, metadata !486, null}
!515 = metadata !{i32 786688, metadata !478, metadata !"j", metadata !6, i32 527, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!516 = metadata !{i32 580, i32 36, metadata !517, null}
!517 = metadata !{i32 786443, metadata !478, i32 579, i32 3, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!518 = metadata !{i32 786688, metadata !517, metadata !"mask", metadata !6, i32 580, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!519 = metadata !{i32 581, i32 49, metadata !517, null}
!520 = metadata !{i32 582, i32 5, metadata !517, null}
!521 = metadata !{i32 583, i32 5, metadata !517, null}
!522 = metadata !{i32 588, i32 8, metadata !523, null}
!523 = metadata !{i32 786443, metadata !478, i32 588, i32 3, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!524 = metadata !{i32 589, i32 10, metadata !525, null}
!525 = metadata !{i32 786443, metadata !526, i32 589, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!526 = metadata !{i32 786443, metadata !523, i32 588, i32 27, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!527 = metadata !{i32 590, i32 7, metadata !528, null}
!528 = metadata !{i32 786443, metadata !525, i32 589, i32 29, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!529 = metadata !{i32 591, i32 41, metadata !530, null}
!530 = metadata !{i32 786443, metadata !528, i32 590, i32 25, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 786688, metadata !530, metadata !"carry", metadata !6, i32 591, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!532 = metadata !{i32 592, i32 9, metadata !530, null}
!533 = metadata !{i32 593, i32 9, metadata !530, null}
!534 = metadata !{i32 594, i32 7, metadata !530, null}
!535 = metadata !{i32 595, i32 41, metadata !536, null}
!536 = metadata !{i32 786443, metadata !528, i32 594, i32 14, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!537 = metadata !{i32 786688, metadata !536, metadata !"carry", metadata !6, i32 595, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!538 = metadata !{i32 596, i32 9, metadata !536, null}
!539 = metadata !{i32 597, i32 9, metadata !536, null}
!540 = metadata !{i32 589, i32 24, metadata !525, null}
!541 = metadata !{i32 602, i32 39, metadata !542, null}
!542 = metadata !{i32 786443, metadata !526, i32 601, i32 5, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!543 = metadata !{i32 786688, metadata !542, metadata !"carry", metadata !6, i32 602, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!544 = metadata !{i32 603, i32 7, metadata !542, null}
!545 = metadata !{i32 604, i32 7, metadata !542, null}
!546 = metadata !{i32 588, i32 22, metadata !523, null}
!547 = metadata !{i32 618, i32 10, metadata !478, null}
!548 = metadata !{i32 786688, metadata !478, metadata !"mask", metadata !6, i32 529, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!549 = metadata !{i32 619, i32 8, metadata !550, null}
!550 = metadata !{i32 786443, metadata !478, i32 619, i32 3, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!551 = metadata !{i32 620, i32 5, metadata !552, null}
!552 = metadata !{i32 786443, metadata !550, i32 619, i32 28, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!553 = metadata !{i32 621, i32 15, metadata !554, null}
!554 = metadata !{i32 786443, metadata !552, i32 620, i32 23, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!555 = metadata !{i32 622, i32 5, metadata !554, null}
!556 = metadata !{i32 623, i32 15, metadata !557, null}
!557 = metadata !{i32 786443, metadata !552, i32 622, i32 12, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!558 = metadata !{i32 619, i32 23, metadata !550, null}
!559 = metadata !{i32 629, i32 3, metadata !478, null}
!560 = metadata !{i32 635, i32 7, metadata !561, null}
!561 = metadata !{i32 786443, metadata !562, i32 634, i32 12, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!562 = metadata !{i32 786443, metadata !563, i32 631, i32 28, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!563 = metadata !{i32 786443, metadata !478, i32 631, i32 3, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!564 = metadata !{i32 633, i32 7, metadata !565, null}
!565 = metadata !{i32 786443, metadata !562, i32 632, i32 23, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!566 = metadata !{i32 631, i32 8, metadata !563, null}
!567 = metadata !{i32 632, i32 5, metadata !562, null}
!568 = metadata !{i32 634, i32 5, metadata !565, null}
!569 = metadata !{i32 631, i32 23, metadata !563, null}
!570 = metadata !{i32 639, i32 3, metadata !478, null}
!571 = metadata !{i32 640, i32 3, metadata !478, null}
!572 = metadata !{i32 641, i32 3, metadata !478, null}
!573 = metadata !{i32 642, i32 3, metadata !478, null}
!574 = metadata !{i32 643, i32 3, metadata !478, null}
!575 = metadata !{i32 644, i32 3, metadata !478, null}
!576 = metadata !{i32 645, i32 3, metadata !478, null}
!577 = metadata !{i32 646, i32 3, metadata !478, null}
!578 = metadata !{i32 653, i32 3, metadata !478, null}
!579 = metadata !{i32 654, i32 3, metadata !478, null}
!580 = metadata !{i32 654, i32 36, metadata !478, null}
!581 = metadata !{i32 654, i32 75, metadata !478, null}
!582 = metadata !{i32 654, i32 115, metadata !478, null}
!583 = metadata !{i32 655, i32 3, metadata !478, null}
!584 = metadata !{i32 655, i32 36, metadata !478, null}
!585 = metadata !{i32 655, i32 75, metadata !478, null}
!586 = metadata !{i32 655, i32 115, metadata !478, null}
!587 = metadata !{i32 656, i32 3, metadata !478, null}
!588 = metadata !{i32 656, i32 36, metadata !478, null}
!589 = metadata !{i32 656, i32 75, metadata !478, null}
!590 = metadata !{i32 656, i32 115, metadata !478, null}
!591 = metadata !{i32 657, i32 3, metadata !478, null}
!592 = metadata !{i32 657, i32 36, metadata !478, null}
!593 = metadata !{i32 657, i32 75, metadata !478, null}
!594 = metadata !{i32 657, i32 115, metadata !478, null}
!595 = metadata !{i32 658, i32 3, metadata !478, null}
!596 = metadata !{i32 658, i32 37, metadata !478, null}
!597 = metadata !{i32 658, i32 77, metadata !478, null}
!598 = metadata !{i32 658, i32 118, metadata !478, null}
!599 = metadata !{i32 659, i32 3, metadata !478, null}
!600 = metadata !{i32 659, i32 37, metadata !478, null}
!601 = metadata !{i32 659, i32 77, metadata !478, null}
!602 = metadata !{i32 659, i32 118, metadata !478, null}
!603 = metadata !{i32 660, i32 3, metadata !478, null}
!604 = metadata !{i32 660, i32 37, metadata !478, null}
!605 = metadata !{i32 660, i32 77, metadata !478, null}
!606 = metadata !{i32 660, i32 118, metadata !478, null}
!607 = metadata !{i32 661, i32 3, metadata !478, null}
!608 = metadata !{i32 661, i32 37, metadata !478, null}
!609 = metadata !{i32 661, i32 77, metadata !478, null}
!610 = metadata !{i32 661, i32 118, metadata !478, null}
!611 = metadata !{i32 662, i32 3, metadata !478, null}
!612 = metadata !{i32 662, i32 37, metadata !478, null}
!613 = metadata !{i32 662, i32 77, metadata !478, null}
!614 = metadata !{i32 662, i32 118, metadata !478, null}
!615 = metadata !{i32 663, i32 3, metadata !478, null}
!616 = metadata !{i32 663, i32 37, metadata !478, null}
!617 = metadata !{i32 663, i32 77, metadata !478, null}
!618 = metadata !{i32 663, i32 118, metadata !478, null}
!619 = metadata !{i32 665, i32 1, metadata !478, null}
!620 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!621 = metadata !{i32 271, i32 24, metadata !53, null}
!622 = metadata !{i32 274, i32 62, metadata !623, null}
!623 = metadata !{i32 786443, metadata !53, i32 272, i32 1, metadata !6, i32 46} ; [ DW_TAG_lexical_block ]
!624 = metadata !{i32 786688, metadata !623, metadata !"highword", metadata !6, i32 274, metadata !625, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!625 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_const_type ]
!626 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!627 = metadata !{i32 276, i32 50, metadata !623, null}
!628 = metadata !{i32 786688, metadata !623, metadata !"sign", metadata !6, i32 276, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!629 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ]
!630 = metadata !{i32 278, i32 50, metadata !623, null}
!631 = metadata !{i32 786688, metadata !623, metadata !"roundoff", metadata !6, i32 278, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!632 = metadata !{i32 280, i32 3, metadata !623, null}
!633 = metadata !{i32 786689, metadata !50, metadata !"v", metadata !6, i32 16777503, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!634 = metadata !{i32 287, i32 24, metadata !50, null}
!635 = metadata !{i32 290, i32 62, metadata !636, null}
!636 = metadata !{i32 786443, metadata !50, i32 288, i32 1, metadata !6, i32 45} ; [ DW_TAG_lexical_block ]
!637 = metadata !{i32 786688, metadata !636, metadata !"highword", metadata !6, i32 290, metadata !625, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!638 = metadata !{i32 292, i32 50, metadata !636, null}
!639 = metadata !{i32 786688, metadata !636, metadata !"sign", metadata !6, i32 292, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!640 = metadata !{i32 294, i32 50, metadata !636, null}
!641 = metadata !{i32 786688, metadata !636, metadata !"roundoff", metadata !6, i32 294, metadata !629, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!642 = metadata !{i32 296, i32 3, metadata !636, null}
!643 = metadata !{metadata !644}
!644 = metadata !{i32 0, i32 31, metadata !645}
!645 = metadata !{metadata !646}
!646 = metadata !{metadata !"return", metadata !647, metadata !"int", i32 0, i32 31}
!647 = metadata !{metadata !648}
!648 = metadata !{i32 0, i32 1, i32 0}
!649 = metadata !{i32 786689, metadata !24, metadata !"mypublic_in", metadata !6, i32 16778170, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!650 = metadata !{i32 954, i32 21, metadata !24, null}
!651 = metadata !{i32 786689, metadata !24, metadata !"secret_in", metadata !6, i32 33555386, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!652 = metadata !{i32 954, i32 47, metadata !24, null}
!653 = metadata !{i32 786689, metadata !24, metadata !"basepoint_in", metadata !6, i32 50332602, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!654 = metadata !{i32 954, i32 71, metadata !24, null}
!655 = metadata !{i32 786689, metadata !24, metadata !"mypublic_out", metadata !6, i32 67109819, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!656 = metadata !{i32 955, i32 9, metadata !24, null}
!657 = metadata !{i32 786689, metadata !24, metadata !"secret_out", metadata !6, i32 83887035, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!658 = metadata !{i32 955, i32 36, metadata !24, null}
!659 = metadata !{i32 786689, metadata !24, metadata !"basepoint_out", metadata !6, i32 100664251, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!660 = metadata !{i32 955, i32 61, metadata !24, null}
!661 = metadata !{i32 955, i32 81, metadata !662, null}
!662 = metadata !{i32 786443, metadata !24, i32 955, i32 80, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!663 = metadata !{i32 955, i32 121, metadata !662, null}
!664 = metadata !{i32 955, i32 161, metadata !662, null}
!665 = metadata !{i32 955, i32 202, metadata !662, null}
!666 = metadata !{i32 955, i32 241, metadata !662, null}
!667 = metadata !{i32 955, i32 0, metadata !662, null}
!668 = metadata !{i32 956, i32 1, metadata !662, null}
!669 = metadata !{i32 957, i32 1, metadata !662, null}
!670 = metadata !{i32 958, i32 1, metadata !662, null}
!671 = metadata !{i32 959, i32 1, metadata !662, null}
!672 = metadata !{i32 960, i32 1, metadata !662, null}
!673 = metadata !{i32 961, i32 1, metadata !662, null}
!674 = metadata !{i32 962, i32 1, metadata !662, null}
!675 = metadata !{i32 963, i32 1, metadata !662, null}
!676 = metadata !{i32 964, i32 1, metadata !662, null}
!677 = metadata !{i32 965, i32 1, metadata !662, null}
!678 = metadata !{i32 966, i32 1, metadata !662, null}
!679 = metadata !{i32 967, i32 1, metadata !662, null}
!680 = metadata !{i32 786688, metadata !662, metadata !"bp", metadata !6, i32 968, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!681 = metadata !{i32 968, i32 7, metadata !662, null}
!682 = metadata !{i32 786688, metadata !662, metadata !"x", metadata !6, i32 968, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!683 = metadata !{i32 968, i32 15, metadata !662, null}
!684 = metadata !{i32 786688, metadata !662, metadata !"z", metadata !6, i32 968, metadata !685, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!685 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 704, i64 64, i32 0, i32 0, metadata !10, metadata !686, i32 0, i32 0} ; [ DW_TAG_array_type ]
!686 = metadata !{metadata !687}
!687 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ]
!688 = metadata !{i32 968, i32 22, metadata !662, null}
!689 = metadata !{i32 786688, metadata !662, metadata !"zmone", metadata !6, i32 968, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!690 = metadata !{i32 968, i32 29, metadata !662, null}
!691 = metadata !{i32 786688, metadata !662, metadata !"e", metadata !6, i32 969, metadata !692, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!692 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !30, metadata !693, i32 0, i32 0} ; [ DW_TAG_array_type ]
!693 = metadata !{metadata !694}
!694 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!695 = metadata !{i32 969, i32 11, metadata !662, null}
!696 = metadata !{i32 969, i32 22, metadata !662, null}
!697 = metadata !{i32 786688, metadata !662, metadata !"mypublic", metadata !6, i32 971, metadata !698, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!698 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !20, metadata !693, i32 0, i32 0} ; [ DW_TAG_array_type ]
!699 = metadata !{i32 971, i32 17, metadata !662, null}
!700 = metadata !{i32 786688, metadata !662, metadata !"secret", metadata !6, i32 971, metadata !698, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!701 = metadata !{i32 971, i32 31, metadata !662, null}
!702 = metadata !{i32 786688, metadata !662, metadata !"basepoint", metadata !6, i32 971, metadata !698, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!703 = metadata !{i32 971, i32 43, metadata !662, null}
!704 = metadata !{i32 973, i32 3, metadata !662, null}
!705 = metadata !{i32 974, i32 3, metadata !662, null}
!706 = metadata !{i32 975, i32 3, metadata !662, null}
!707 = metadata !{i32 977, i32 8, metadata !708, null}
!708 = metadata !{i32 786443, metadata !662, i32 977, i32 3, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!709 = metadata !{i32 978, i32 4, metadata !710, null}
!710 = metadata !{i32 786443, metadata !708, i32 977, i32 27, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!711 = metadata !{i32 977, i32 23, metadata !708, null}
!712 = metadata !{i32 786688, metadata !662, metadata !"i", metadata !6, i32 970, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!713 = metadata !{i32 980, i32 3, metadata !662, null}
!714 = metadata !{i32 981, i32 3, metadata !662, null}
!715 = metadata !{i32 982, i32 3, metadata !662, null}
!716 = metadata !{i32 984, i32 3, metadata !662, null}
!717 = metadata !{i32 985, i32 3, metadata !662, null}
!718 = metadata !{i32 986, i32 3, metadata !662, null}
!719 = metadata !{i32 987, i32 3, metadata !662, null}
!720 = metadata !{i32 988, i32 3, metadata !662, null}
!721 = metadata !{i32 990, i32 3, metadata !662, null}
!722 = metadata !{i32 991, i32 3, metadata !662, null}
!723 = metadata !{i32 992, i32 3, metadata !662, null}
!724 = metadata !{i32 995, i32 3, metadata !662, null}
!725 = metadata !{i32 786689, metadata !56, metadata !"out", metadata !6, i32 16778101, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!726 = metadata !{i32 885, i32 14, metadata !56, null}
!727 = metadata !{i32 786689, metadata !56, metadata !"z", metadata !6, i32 33555317, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!728 = metadata !{i32 885, i32 31, metadata !56, null}
!729 = metadata !{i32 886, i32 1, metadata !730, null}
!730 = metadata !{i32 786443, metadata !56, i32 885, i32 34, metadata !6, i32 49} ; [ DW_TAG_lexical_block ]
!731 = metadata !{i32 887, i32 1, metadata !730, null}
!732 = metadata !{i32 786688, metadata !730, metadata !"z2", metadata !6, i32 888, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!733 = metadata !{i32 888, i32 7, metadata !730, null}
!734 = metadata !{i32 786688, metadata !730, metadata !"z9", metadata !6, i32 889, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!735 = metadata !{i32 889, i32 8, metadata !730, null}
!736 = metadata !{i32 786688, metadata !730, metadata !"z11", metadata !6, i32 890, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!737 = metadata !{i32 890, i32 8, metadata !730, null}
!738 = metadata !{i32 786688, metadata !730, metadata !"z2_5_0", metadata !6, i32 891, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!739 = metadata !{i32 891, i32 8, metadata !730, null}
!740 = metadata !{i32 786688, metadata !730, metadata !"z2_10_0", metadata !6, i32 892, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!741 = metadata !{i32 892, i32 8, metadata !730, null}
!742 = metadata !{i32 786688, metadata !730, metadata !"z2_20_0", metadata !6, i32 893, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!743 = metadata !{i32 893, i32 8, metadata !730, null}
!744 = metadata !{i32 786688, metadata !730, metadata !"z2_50_0", metadata !6, i32 894, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!745 = metadata !{i32 894, i32 8, metadata !730, null}
!746 = metadata !{i32 786688, metadata !730, metadata !"z2_100_0", metadata !6, i32 895, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!747 = metadata !{i32 895, i32 8, metadata !730, null}
!748 = metadata !{i32 786688, metadata !730, metadata !"t0", metadata !6, i32 896, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!749 = metadata !{i32 896, i32 8, metadata !730, null}
!750 = metadata !{i32 786688, metadata !730, metadata !"t1", metadata !6, i32 897, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!751 = metadata !{i32 897, i32 8, metadata !730, null}
!752 = metadata !{i32 900, i32 11, metadata !730, null}
!753 = metadata !{i32 901, i32 11, metadata !730, null}
!754 = metadata !{i32 902, i32 11, metadata !730, null}
!755 = metadata !{i32 903, i32 11, metadata !730, null}
!756 = metadata !{i32 904, i32 12, metadata !730, null}
!757 = metadata !{i32 905, i32 12, metadata !730, null}
!758 = metadata !{i32 906, i32 24, metadata !730, null}
!759 = metadata !{i32 908, i32 19, metadata !730, null}
!760 = metadata !{i32 909, i32 19, metadata !730, null}
!761 = metadata !{i32 910, i32 19, metadata !730, null}
!762 = metadata !{i32 911, i32 19, metadata !730, null}
!763 = metadata !{i32 912, i32 20, metadata !730, null}
!764 = metadata !{i32 913, i32 20, metadata !730, null}
!765 = metadata !{i32 915, i32 20, metadata !730, null}
!766 = metadata !{i32 916, i32 20, metadata !730, null}
!767 = metadata !{i32 917, i32 26, metadata !768, null}
!768 = metadata !{i32 786443, metadata !730, i32 917, i32 21, metadata !6, i32 50} ; [ DW_TAG_lexical_block ]
!769 = metadata !{i32 917, i32 49, metadata !770, null}
!770 = metadata !{i32 786443, metadata !768, i32 917, i32 47, metadata !6, i32 51} ; [ DW_TAG_lexical_block ]
!771 = metadata !{i32 917, i32 65, metadata !770, null}
!772 = metadata !{i32 917, i32 39, metadata !768, null}
!773 = metadata !{i32 786688, metadata !730, metadata !"i", metadata !6, i32 898, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!774 = metadata !{i32 918, i32 20, metadata !730, null}
!775 = metadata !{i32 920, i32 20, metadata !730, null}
!776 = metadata !{i32 921, i32 20, metadata !730, null}
!777 = metadata !{i32 922, i32 26, metadata !778, null}
!778 = metadata !{i32 786443, metadata !730, i32 922, i32 21, metadata !6, i32 52} ; [ DW_TAG_lexical_block ]
!779 = metadata !{i32 922, i32 49, metadata !780, null}
!780 = metadata !{i32 786443, metadata !778, i32 922, i32 47, metadata !6, i32 53} ; [ DW_TAG_lexical_block ]
!781 = metadata !{i32 922, i32 65, metadata !780, null}
!782 = metadata !{i32 922, i32 39, metadata !778, null}
!783 = metadata !{i32 923, i32 20, metadata !730, null}
!784 = metadata !{i32 925, i32 20, metadata !730, null}
!785 = metadata !{i32 926, i32 20, metadata !730, null}
!786 = metadata !{i32 927, i32 26, metadata !787, null}
!787 = metadata !{i32 786443, metadata !730, i32 927, i32 21, metadata !6, i32 54} ; [ DW_TAG_lexical_block ]
!788 = metadata !{i32 927, i32 49, metadata !789, null}
!789 = metadata !{i32 786443, metadata !787, i32 927, i32 47, metadata !6, i32 55} ; [ DW_TAG_lexical_block ]
!790 = metadata !{i32 927, i32 65, metadata !789, null}
!791 = metadata !{i32 927, i32 39, metadata !787, null}
!792 = metadata !{i32 928, i32 20, metadata !730, null}
!793 = metadata !{i32 930, i32 20, metadata !730, null}
!794 = metadata !{i32 931, i32 20, metadata !730, null}
!795 = metadata !{i32 932, i32 27, metadata !796, null}
!796 = metadata !{i32 786443, metadata !730, i32 932, i32 22, metadata !6, i32 56} ; [ DW_TAG_lexical_block ]
!797 = metadata !{i32 932, i32 50, metadata !798, null}
!798 = metadata !{i32 786443, metadata !796, i32 932, i32 48, metadata !6, i32 57} ; [ DW_TAG_lexical_block ]
!799 = metadata !{i32 932, i32 66, metadata !798, null}
!800 = metadata !{i32 932, i32 40, metadata !796, null}
!801 = metadata !{i32 933, i32 21, metadata !730, null}
!802 = metadata !{i32 935, i32 21, metadata !730, null}
!803 = metadata !{i32 936, i32 21, metadata !730, null}
!804 = metadata !{i32 937, i32 28, metadata !805, null}
!805 = metadata !{i32 786443, metadata !730, i32 937, i32 23, metadata !6, i32 58} ; [ DW_TAG_lexical_block ]
!806 = metadata !{i32 937, i32 52, metadata !807, null}
!807 = metadata !{i32 786443, metadata !805, i32 937, i32 50, metadata !6, i32 59} ; [ DW_TAG_lexical_block ]
!808 = metadata !{i32 937, i32 68, metadata !807, null}
!809 = metadata !{i32 937, i32 42, metadata !805, null}
!810 = metadata !{i32 938, i32 21, metadata !730, null}
!811 = metadata !{i32 940, i32 21, metadata !730, null}
!812 = metadata !{i32 941, i32 21, metadata !730, null}
!813 = metadata !{i32 942, i32 27, metadata !814, null}
!814 = metadata !{i32 786443, metadata !730, i32 942, i32 22, metadata !6, i32 60} ; [ DW_TAG_lexical_block ]
!815 = metadata !{i32 942, i32 50, metadata !816, null}
!816 = metadata !{i32 786443, metadata !814, i32 942, i32 48, metadata !6, i32 61} ; [ DW_TAG_lexical_block ]
!817 = metadata !{i32 942, i32 66, metadata !816, null}
!818 = metadata !{i32 942, i32 40, metadata !814, null}
!819 = metadata !{i32 943, i32 21, metadata !730, null}
!820 = metadata !{i32 945, i32 21, metadata !730, null}
!821 = metadata !{i32 946, i32 21, metadata !730, null}
!822 = metadata !{i32 947, i32 21, metadata !730, null}
!823 = metadata !{i32 948, i32 21, metadata !730, null}
!824 = metadata !{i32 949, i32 21, metadata !730, null}
!825 = metadata !{i32 950, i32 20, metadata !730, null}
!826 = metadata !{i32 951, i32 1, metadata !730, null}
!827 = metadata !{i32 786688, metadata !828, metadata !"nqpqz", metadata !6, i32 797, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!828 = metadata !{i32 786443, metadata !61, i32 792, i32 65, metadata !6, i32 64} ; [ DW_TAG_lexical_block ]
!829 = metadata !{i32 797, i32 25, metadata !828, null}
!830 = metadata !{i32 786688, metadata !828, metadata !"t", metadata !6, i32 797, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!831 = metadata !{i32 797, i32 72, metadata !828, null}
!832 = metadata !{i32 786688, metadata !828, metadata !"nqpqx2", metadata !6, i32 800, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!833 = metadata !{i32 800, i32 8, metadata !828, null}
!834 = metadata !{i32 786688, metadata !828, metadata !"nqpqz2", metadata !6, i32 800, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!835 = metadata !{i32 800, i32 26, metadata !828, null}
!836 = metadata !{i32 786688, metadata !828, metadata !"nqz2", metadata !6, i32 800, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!837 = metadata !{i32 800, i32 60, metadata !828, null}
!838 = metadata !{i32 786689, metadata !61, metadata !"resultx", metadata !6, i32 16778008, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!839 = metadata !{i32 792, i32 13, metadata !61, null}
!840 = metadata !{i32 786689, metadata !61, metadata !"resultz", metadata !6, i32 33555224, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!841 = metadata !{i32 792, i32 28, metadata !61, null}
!842 = metadata !{i32 786689, metadata !61, metadata !"n", metadata !6, i32 50332440, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!843 = metadata !{i32 792, i32 47, metadata !61, null}
!844 = metadata !{i32 786689, metadata !61, metadata !"q", metadata !6, i32 67109656, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!845 = metadata !{i32 792, i32 62, metadata !61, null}
!846 = metadata !{i32 793, i32 1, metadata !828, null}
!847 = metadata !{i32 794, i32 1, metadata !828, null}
!848 = metadata !{i32 786688, metadata !828, metadata !"nqpqx", metadata !6, i32 797, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!849 = metadata !{i32 797, i32 8, metadata !828, null}
!850 = metadata !{i32 797, i32 83, metadata !828, null}
!851 = metadata !{i32 786688, metadata !828, metadata !"nqx", metadata !6, i32 797, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!852 = metadata !{i32 797, i32 42, metadata !828, null}
!853 = metadata !{i32 786688, metadata !828, metadata !"nqz", metadata !6, i32 797, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!854 = metadata !{i32 797, i32 57, metadata !828, null}
!855 = metadata !{i32 800, i32 74, metadata !828, null}
!856 = metadata !{i32 786688, metadata !828, metadata !"nqx2", metadata !6, i32 800, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!857 = metadata !{i32 800, i32 44, metadata !828, null}
!858 = metadata !{i32 804, i32 3, metadata !828, null}
!859 = metadata !{i32 812, i32 7, metadata !860, null}
!860 = metadata !{i32 786443, metadata !861, i32 808, i32 29, metadata !6, i32 68} ; [ DW_TAG_lexical_block ]
!861 = metadata !{i32 786443, metadata !862, i32 808, i32 5, metadata !6, i32 67} ; [ DW_TAG_lexical_block ]
!862 = metadata !{i32 786443, metadata !863, i32 806, i32 28, metadata !6, i32 66} ; [ DW_TAG_lexical_block ]
!863 = metadata !{i32 786443, metadata !828, i32 806, i32 3, metadata !6, i32 65} ; [ DW_TAG_lexical_block ]
!864 = metadata !{i32 813, i32 7, metadata !860, null}
!865 = metadata !{i32 822, i32 7, metadata !860, null}
!866 = metadata !{i32 806, i32 8, metadata !863, null}
!867 = metadata !{i32 807, i32 24, metadata !862, null}
!868 = metadata !{i32 786688, metadata !862, metadata !"byte", metadata !6, i32 807, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!869 = metadata !{i32 808, i32 10, metadata !861, null}
!870 = metadata !{i32 809, i32 33, metadata !860, null}
!871 = metadata !{i32 786688, metadata !860, metadata !"bit", metadata !6, i32 809, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!872 = metadata !{i32 811, i32 7, metadata !860, null}
!873 = metadata !{i32 818, i32 7, metadata !860, null}
!874 = metadata !{i32 819, i32 7, metadata !860, null}
!875 = metadata !{i32 833, i32 7, metadata !860, null}
!876 = metadata !{i32 836, i32 7, metadata !860, null}
!877 = metadata !{i32 839, i32 7, metadata !860, null}
!878 = metadata !{i32 842, i32 7, metadata !860, null}
!879 = metadata !{i32 845, i32 7, metadata !860, null}
!880 = metadata !{i32 848, i32 7, metadata !860, null}
!881 = metadata !{i32 851, i32 7, metadata !860, null}
!882 = metadata !{i32 854, i32 7, metadata !860, null}
!883 = metadata !{i32 857, i32 7, metadata !860, null}
!884 = metadata !{i32 860, i32 7, metadata !860, null}
!885 = metadata !{i32 863, i32 7, metadata !860, null}
!886 = metadata !{i32 873, i32 7, metadata !860, null}
!887 = metadata !{i32 808, i32 24, metadata !861, null}
!888 = metadata !{i32 786688, metadata !828, metadata !"j", metadata !6, i32 802, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!889 = metadata !{i32 806, i32 23, metadata !863, null}
!890 = metadata !{i32 786688, metadata !828, metadata !"i", metadata !6, i32 802, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!891 = metadata !{i32 877, i32 3, metadata !828, null}
!892 = metadata !{i32 878, i32 3, metadata !828, null}
!893 = metadata !{i32 879, i32 1, metadata !828, null}
!894 = metadata !{i32 786689, metadata !21, metadata !"dst", metadata !6, i32 16777289, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!895 = metadata !{i32 73, i32 20, metadata !21, null}
!896 = metadata !{i32 75, i32 6, metadata !897, null}
!897 = metadata !{i32 786443, metadata !898, i32 75, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!898 = metadata !{i32 786443, metadata !21, i32 73, i32 52, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!899 = metadata !{i32 76, i32 3, metadata !900, null}
!900 = metadata !{i32 786443, metadata !897, i32 75, i32 22, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!901 = metadata !{i32 75, i32 18, metadata !897, null}
!902 = metadata !{i32 786688, metadata !898, metadata !"i", metadata !6, i32 74, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!903 = metadata !{i32 78, i32 1, metadata !898, null}
!904 = metadata !{i32 786689, metadata !16, metadata !"dst", metadata !6, i32 16777282, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!905 = metadata !{i32 66, i32 34, metadata !16, null}
!906 = metadata !{i32 786689, metadata !16, metadata !"src", metadata !6, i32 33554498, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!907 = metadata !{i32 66, i32 54, metadata !16, null}
!908 = metadata !{i32 68, i32 6, metadata !909, null}
!909 = metadata !{i32 786443, metadata !910, i32 68, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!910 = metadata !{i32 786443, metadata !16, i32 66, i32 76, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!911 = metadata !{i32 69, i32 3, metadata !912, null}
!912 = metadata !{i32 786443, metadata !909, i32 68, i32 22, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!913 = metadata !{i32 68, i32 18, metadata !909, null}
!914 = metadata !{i32 786688, metadata !910, metadata !"i", metadata !6, i32 67, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!915 = metadata !{i32 71, i32 1, metadata !910, null}
!916 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 16777275, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!917 = metadata !{i32 59, i32 20, metadata !5, null}
!918 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554491, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!919 = metadata !{i32 59, i32 31, metadata !5, null}
!920 = metadata !{i32 786689, metadata !5, metadata !"len", metadata !6, i32 50331707, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!921 = metadata !{i32 59, i32 49, metadata !5, null}
!922 = metadata !{i32 61, i32 6, metadata !923, null}
!923 = metadata !{i32 786443, metadata !924, i32 61, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!924 = metadata !{i32 786443, metadata !5, i32 59, i32 53, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!925 = metadata !{i32 62, i32 3, metadata !926, null}
!926 = metadata !{i32 786443, metadata !923, i32 61, i32 22, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!927 = metadata !{i32 61, i32 18, metadata !923, null}
!928 = metadata !{i32 786688, metadata !924, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!929 = metadata !{i32 64, i32 1, metadata !924, null}
