; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/a.o.2.bc'
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
@.str8 = private unnamed_addr constant [4 x i8] c"add\00", align 1 ; [#uses=13 type=[4 x i8]*]
@.str7 = private unnamed_addr constant [4 x i8] c"mul\00", align 1 ; [#uses=13 type=[4 x i8]*]
@.str6 = private unnamed_addr constant [9 x i8] c"fproduct\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str5 = private unnamed_addr constant [7 x i8] c"crecip\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str4 = private unnamed_addr constant [14 x i8] c"fsquare_inner\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"fsquare\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"cmult\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=135 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]

; [#uses=4]
define internal fastcc void @swap_conditional([19 x i64]* nocapture %a, [19 x i64]* nocapture %b, i1 %iswap) {
  call void @llvm.dbg.value(metadata !{[19 x i64]* %a}, i64 0, metadata !151), !dbg !155 ; [debug line = 775:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %b}, i64 0, metadata !156), !dbg !157 ; [debug line = 775:35] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i1 %iswap}, i64 0, metadata !158), !dbg !159 ; [debug line = 775:47] [debug variable = iswap]
  %swap.cast = sext i1 %iswap to i32, !dbg !160   ; [#uses=1 type=i32] [debug line = 777:32]
  call void @llvm.dbg.value(metadata !{i1 %iswap}, i64 0, metadata !162), !dbg !160 ; [debug line = 777:32] [debug variable = swap]
  br label %1, !dbg !164                          ; [debug line = 779:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i4]
  %tmp.1 = icmp eq i4 %i, -6, !dbg !164           ; [#uses=1 type=i1] [debug line = 779:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %tmp.1, label %4, label %3, !dbg !164     ; [debug line = 779:8]

; <label>:3                                       ; preds = %1
  %tmp.2 = zext i4 %i to i64, !dbg !166           ; [#uses=2 type=i64] [debug line = 780:55]
  %a.addr = getelementptr [19 x i64]* %a, i64 0, i64 %tmp.2, !dbg !166 ; [#uses=2 type=i64*] [debug line = 780:55]
  %a.load = load i64* %a.addr, align 8, !dbg !166 ; [#uses=1 type=i64] [debug line = 780:55]
  %tmp.3 = trunc i64 %a.load to i32, !dbg !166    ; [#uses=2 type=i32] [debug line = 780:55]
  %b.addr = getelementptr [19 x i64]* %b, i64 0, i64 %tmp.2, !dbg !166 ; [#uses=2 type=i64*] [debug line = 780:55]
  %b.load = load i64* %b.addr, align 8, !dbg !166 ; [#uses=1 type=i64] [debug line = 780:55]
  %tmp.4 = trunc i64 %b.load to i32, !dbg !166    ; [#uses=2 type=i32] [debug line = 780:55]
  %tmp.5 = xor i32 %tmp.4, %tmp.3, !dbg !166      ; [#uses=1 type=i32] [debug line = 780:55]
  %x = and i32 %tmp.5, %swap.cast, !dbg !166      ; [#uses=2 type=i32] [debug line = 780:55]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !168), !dbg !166 ; [debug line = 780:55] [debug variable = x]
  %tmp.6 = xor i32 %x, %tmp.3, !dbg !169          ; [#uses=1 type=i32] [debug line = 781:5]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !169      ; [#uses=1 type=i64] [debug line = 781:5]
  store i64 %tmp.7, i64* %a.addr, align 8, !dbg !169 ; [debug line = 781:5]
  %tmp.9 = xor i32 %tmp.4, %x, !dbg !170          ; [#uses=1 type=i32] [debug line = 782:5]
  %tmp. = sext i32 %tmp.9 to i64, !dbg !170       ; [#uses=1 type=i64] [debug line = 782:5]
  store i64 %tmp., i64* %b.addr, align 8, !dbg !170 ; [debug line = 782:5]
  %i.1 = add i4 %i, 1, !dbg !171                  ; [#uses=1 type=i4] [debug line = 779:23]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !172), !dbg !171 ; [debug line = 779:23] [debug variable = i]
  br label %1, !dbg !171                          ; [debug line = 779:23]

; <label>:4                                       ; preds = %1
  ret void, !dbg !173                             ; [debug line = 784:1]
}

; [#uses=188]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=43]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
define internal fastcc void @fsum([19 x i64]* nocapture %output, [19 x i64]* nocapture %in) {
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !174), !dbg !175 ; [debug line = 89:24] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in}, i64 0, metadata !176), !dbg !178 ; [debug line = 89:44] [debug variable = in]
  br label %1, !dbg !179                          ; [debug line = 91:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.2, %3 ]             ; [#uses=4 type=i4]
  %tmp = icmp ult i4 %i, -6, !dbg !179            ; [#uses=1 type=i1] [debug line = 91:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !179       ; [debug line = 91:8]

; <label>:3                                       ; preds = %1
  %tmp. = zext i4 %i to i64, !dbg !182            ; [#uses=2 type=i64] [debug line = 92:5]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 %tmp., !dbg !182 ; [#uses=2 type=i64*] [debug line = 92:5]
  %output.load = load i64* %output.addr, align 8, !dbg !182 ; [#uses=1 type=i64] [debug line = 92:5]
  %in.addr = getelementptr [19 x i64]* %in, i64 0, i64 %tmp., !dbg !182 ; [#uses=1 type=i64*] [debug line = 92:5]
  %in.load = load i64* %in.addr, align 8, !dbg !182 ; [#uses=1 type=i64] [debug line = 92:5]
  %tmp.6 = add nsw i64 %output.load, %in.load, !dbg !182 ; [#uses=1 type=i64] [debug line = 92:5]
  store i64 %tmp.6, i64* %output.addr, align 8, !dbg !182 ; [debug line = 92:5]
  %tmp.7 = or i4 %i, 1, !dbg !184                 ; [#uses=1 type=i4] [debug line = 93:5]
  %tmp.8 = zext i4 %tmp.7 to i64, !dbg !184       ; [#uses=2 type=i64] [debug line = 93:5]
  %output.addr.1 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp.8, !dbg !184 ; [#uses=2 type=i64*] [debug line = 93:5]
  %output.load.1 = load i64* %output.addr.1, align 8, !dbg !184 ; [#uses=1 type=i64] [debug line = 93:5]
  %in.addr.1 = getelementptr [19 x i64]* %in, i64 0, i64 %tmp.8, !dbg !184 ; [#uses=1 type=i64*] [debug line = 93:5]
  %in.load.1 = load i64* %in.addr.1, align 8, !dbg !184 ; [#uses=1 type=i64] [debug line = 93:5]
  %tmp.9 = add nsw i64 %output.load.1, %in.load.1, !dbg !184 ; [#uses=1 type=i64] [debug line = 93:5]
  store i64 %tmp.9, i64* %output.addr.1, align 8, !dbg !184 ; [debug line = 93:5]
  %i.2 = add i4 %i, 2, !dbg !185                  ; [#uses=1 type=i4] [debug line = 91:23]
  call void @llvm.dbg.value(metadata !{i4 %i.2}, i64 0, metadata !186), !dbg !185 ; [debug line = 91:23] [debug variable = i]
  br label %1, !dbg !185                          ; [debug line = 91:23]

; <label>:4                                       ; preds = %1
  ret void, !dbg !187                             ; [debug line = 95:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner.2([19 x i64]* nocapture %output, [19 x i64]* nocapture %in) {
  %in.addr = getelementptr [19 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !188 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !190 ; [debug line = 370:1]
  %in.load = load i64* %in.addr, align 8, !dbg !191 ; [#uses=1 type=i64] [debug line = 371:53]
  %tmp = trunc i64 %in.load to i32, !dbg !191     ; [#uses=2 type=i32] [debug line = 371:53]
  %tmp. = sext i32 %tmp to i64, !dbg !191         ; [#uses=9 type=i64] [debug line = 371:53]
  %out_1 = mul nsw i64 %tmp., %tmp., !dbg !191    ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !192), !dbg !191 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output.addr, align 8, !dbg !193 ; [debug line = 374:3]
  %in.addr.2 = getelementptr [19 x i64]* %in, i64 0, i64 1, !dbg !194 ; [#uses=1 type=i64*] [debug line = 378:3]
  %in.load.2 = load i64* %in.addr.2, align 8, !dbg !194 ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.1 = trunc i64 %in.load.2 to i32, !dbg !194 ; [#uses=3 type=i32] [debug line = 378:3]
  %tmp.2 = sext i32 %tmp.1 to i64, !dbg !194      ; [#uses=8 type=i64] [debug line = 378:3]
  %tmp.8 = sext i32 %tmp to i63, !dbg !194        ; [#uses=2 type=i63] [debug line = 378:3]
  %tmp.9 = sext i32 %tmp.1 to i63, !dbg !194      ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp.3 = mul i63 %tmp.8, %tmp.9, !dbg !194      ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp.4 = zext i63 %tmp.3 to i64, !dbg !194      ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.5 = shl nuw i64 %tmp.4, 1, !dbg !194       ; [#uses=1 type=i64] [debug line = 378:3]
  %output.addr.2 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !194 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp.5, i64* %output.addr.2, align 8, !dbg !194 ; [debug line = 378:3]
  %tmp.6 = mul nsw i64 %tmp.2, %tmp.2, !dbg !195  ; [#uses=1 type=i64] [debug line = 383:3]
  %in.addr.3 = getelementptr [19 x i64]* %in, i64 0, i64 2, !dbg !195 ; [#uses=1 type=i64*] [debug line = 383:3]
  %in.load.3 = load i64* %in.addr.3, align 8, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.7 = trunc i64 %in.load.3 to i32, !dbg !195 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp.10 = sext i32 %tmp.7 to i64, !dbg !195     ; [#uses=11 type=i64] [debug line = 383:3]
  %tmp.11 = mul nsw i64 %tmp., %tmp.10, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.12 = add nsw i64 %tmp.6, %tmp.11, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.13 = trunc i64 %tmp.12 to i63, !dbg !195   ; [#uses=1 type=i63] [debug line = 383:3]
  %tmp.14 = zext i63 %tmp.13 to i64, !dbg !195    ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.15 = shl nuw i64 %tmp.14, 1, !dbg !195     ; [#uses=1 type=i64] [debug line = 383:3]
  %output.addr.3 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !195 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp.15, i64* %output.addr.3, align 8, !dbg !195 ; [debug line = 383:3]
  %tmp.16 = mul nsw i64 %tmp.2, %tmp.10, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %in.addr.4 = getelementptr [19 x i64]* %in, i64 0, i64 3, !dbg !196 ; [#uses=1 type=i64*] [debug line = 386:3]
  %in.load.4 = load i64* %in.addr.4, align 8, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.17 = trunc i64 %in.load.4 to i32, !dbg !196 ; [#uses=2 type=i32] [debug line = 386:3]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !196    ; [#uses=10 type=i64] [debug line = 386:3]
  %tmp.19 = mul nsw i64 %tmp., %tmp.18, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.20 = add nsw i64 %tmp.16, %tmp.19, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.21 = trunc i64 %tmp.20 to i63, !dbg !196   ; [#uses=1 type=i63] [debug line = 386:3]
  %tmp.22 = zext i63 %tmp.21 to i64, !dbg !196    ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.23 = shl nuw nsw i64 %tmp.22, 1, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %output.addr.4 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !196 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp.23, i64* %output.addr.4, align 8, !dbg !196 ; [debug line = 386:3]
  %tmp.24 = mul nsw i64 %tmp.10, %tmp.10, !dbg !197 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.25 = sext i32 %tmp.1 to i62, !dbg !197     ; [#uses=2 type=i62] [debug line = 389:3]
  %tmp.26 = sext i32 %tmp.17 to i62, !dbg !197    ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp.27 = mul i62 %tmp.25, %tmp.26, !dbg !197   ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp.28 = zext i62 %tmp.27 to i64, !dbg !197    ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.29 = shl nuw i64 %tmp.28, 2, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %in.addr.5 = getelementptr [19 x i64]* %in, i64 0, i64 4, !dbg !197 ; [#uses=1 type=i64*] [debug line = 389:3]
  %in.load.5 = load i64* %in.addr.5, align 8, !dbg !197 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.30 = trunc i64 %in.load.5 to i32, !dbg !197 ; [#uses=2 type=i32] [debug line = 389:3]
  %tmp.31 = sext i32 %tmp.30 to i64, !dbg !197    ; [#uses=10 type=i64] [debug line = 389:3]
  %tmp.32 = sext i32 %tmp.30 to i63, !dbg !197    ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp.33 = mul i63 %tmp.8, %tmp.32, !dbg !197    ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp.34 = zext i63 %tmp.33 to i64, !dbg !197    ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.35 = shl nuw i64 %tmp.34, 1, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp1 = add i64 %tmp.29, %tmp.35, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.36 = add i64 %tmp1, %tmp.24, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %output.addr.5 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !197 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp.36, i64* %output.addr.5, align 8, !dbg !197 ; [debug line = 389:3]
  %tmp.37 = mul nsw i64 %tmp.10, %tmp.18, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.38 = mul nsw i64 %tmp.2, %tmp.31, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %in.addr.6 = getelementptr [19 x i64]* %in, i64 0, i64 5, !dbg !198 ; [#uses=1 type=i64*] [debug line = 393:3]
  %in.load.6 = load i64* %in.addr.6, align 8, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.39 = trunc i64 %in.load.6 to i32, !dbg !198 ; [#uses=2 type=i32] [debug line = 393:3]
  %tmp.40 = sext i32 %tmp.39 to i64, !dbg !198    ; [#uses=9 type=i64] [debug line = 393:3]
  %tmp.41 = mul nsw i64 %tmp., %tmp.40, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp2 = add i64 %tmp.38, %tmp.41, !dbg !198     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.42 = add i64 %tmp2, %tmp.37, !dbg !198     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.43 = trunc i64 %tmp.42 to i63, !dbg !198   ; [#uses=1 type=i63] [debug line = 393:3]
  %tmp.44 = zext i63 %tmp.43 to i64, !dbg !198    ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.45 = shl nuw nsw i64 %tmp.44, 1, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %output.addr.6 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !198 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp.45, i64* %output.addr.6, align 8, !dbg !198 ; [debug line = 393:3]
  %tmp.46 = mul nsw i64 %tmp.18, %tmp.18, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.47 = mul nsw i64 %tmp.10, %tmp.31, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %in.addr.7 = getelementptr [19 x i64]* %in, i64 0, i64 6, !dbg !199 ; [#uses=1 type=i64*] [debug line = 397:3]
  %in.load.7 = load i64* %in.addr.7, align 8, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.48 = trunc i64 %in.load.7 to i32, !dbg !199 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.49 = sext i32 %tmp.48 to i64, !dbg !199    ; [#uses=11 type=i64] [debug line = 397:3]
  %tmp.50 = mul nsw i64 %tmp., %tmp.49, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.51 = sext i32 %tmp.39 to i62, !dbg !199    ; [#uses=2 type=i62] [debug line = 397:3]
  %tmp.52 = mul i62 %tmp.25, %tmp.51, !dbg !199   ; [#uses=1 type=i62] [debug line = 397:3]
  %tmp.53 = zext i62 %tmp.52 to i63               ; [#uses=1 type=i63]
  %tmp.54 = shl nuw i63 %tmp.53, 1                ; [#uses=1 type=i63]
  %tmp3 = add i64 %tmp.47, %tmp.50, !dbg !199     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.55 = add i64 %tmp3, %tmp.46, !dbg !199     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.56 = trunc i64 %tmp.55 to i63              ; [#uses=1 type=i63]
  %tmp.57 = add i63 %tmp.56, %tmp.54, !dbg !199   ; [#uses=1 type=i63] [debug line = 397:3]
  %tmp.58 = zext i63 %tmp.57 to i64, !dbg !199    ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.59 = shl nuw nsw i64 %tmp.58, 1, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %output.addr.7 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !199 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp.59, i64* %output.addr.7, align 8, !dbg !199 ; [debug line = 397:3]
  %tmp.60 = mul nsw i64 %tmp.18, %tmp.31, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.61 = mul nsw i64 %tmp.10, %tmp.40, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.62 = mul nsw i64 %tmp.2, %tmp.49, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %in.addr.8 = getelementptr [19 x i64]* %in, i64 0, i64 7, !dbg !200 ; [#uses=1 type=i64*] [debug line = 402:3]
  %in.load.8 = load i64* %in.addr.8, align 8, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.63 = trunc i64 %in.load.8 to i32, !dbg !200 ; [#uses=2 type=i32] [debug line = 402:3]
  %tmp.64 = sext i32 %tmp.63 to i64, !dbg !200    ; [#uses=10 type=i64] [debug line = 402:3]
  %tmp.65 = mul nsw i64 %tmp., %tmp.64, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp4 = add i64 %tmp.60, %tmp.61, !dbg !200     ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp5 = add i64 %tmp.62, %tmp.65, !dbg !200     ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.66 = trunc i64 %tmp5 to i63                ; [#uses=1 type=i63]
  %tmp.67 = trunc i64 %tmp4 to i63                ; [#uses=1 type=i63]
  %tmp.68 = add i63 %tmp.67, %tmp.66, !dbg !200   ; [#uses=1 type=i63] [debug line = 402:3]
  %tmp.69 = zext i63 %tmp.68 to i64, !dbg !200    ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.70 = shl nuw nsw i64 %tmp.69, 1, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %output.addr.8 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !200 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp.70, i64* %output.addr.8, align 8, !dbg !200 ; [debug line = 402:3]
  %tmp.71 = mul nsw i64 %tmp.31, %tmp.31, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.72 = mul nsw i64 %tmp.10, %tmp.49, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.addr.9 = getelementptr [19 x i64]* %in, i64 0, i64 8, !dbg !201 ; [#uses=1 type=i64*] [debug line = 407:3]
  %in.load.9 = load i64* %in.addr.9, align 8, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.73 = trunc i64 %in.load.9 to i32, !dbg !201 ; [#uses=2 type=i32] [debug line = 407:3]
  %tmp.74 = sext i32 %tmp.73 to i64, !dbg !201    ; [#uses=10 type=i64] [debug line = 407:3]
  %tmp.75 = mul nsw i64 %tmp., %tmp.74, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.76 = mul nsw i64 %tmp.2, %tmp.64, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.77 = mul nsw i64 %tmp.18, %tmp.40, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.78 = add nsw i64 %tmp.76, %tmp.77, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.79 = trunc i64 %tmp.78 to i63, !dbg !201   ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp.80 = shl i63 %tmp.79, 1                    ; [#uses=1 type=i63]
  %tmp.81 = add i64 %tmp.72, %tmp.75, !dbg !201   ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.82 = trunc i64 %tmp.81 to i63              ; [#uses=1 type=i63]
  %tmp.83 = add i63 %tmp.82, %tmp.80, !dbg !201   ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp.84 = zext i63 %tmp.83 to i64, !dbg !201    ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.85 = shl nuw i64 %tmp.84, 1, !dbg !201     ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.86 = add nsw i64 %tmp.71, %tmp.85, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %output.addr.9 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !201 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp.86, i64* %output.addr.9, align 8, !dbg !201 ; [debug line = 407:3]
  %tmp.87 = mul nsw i64 %tmp.31, %tmp.40, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.88 = mul nsw i64 %tmp.18, %tmp.49, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.89 = mul nsw i64 %tmp.10, %tmp.64, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.90 = mul nsw i64 %tmp.2, %tmp.74, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.addr.10 = getelementptr [19 x i64]* %in, i64 0, i64 9, !dbg !202 ; [#uses=1 type=i64*] [debug line = 413:3]
  %in.load.10 = load i64* %in.addr.10, align 8, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.91 = trunc i64 %in.load.10 to i32, !dbg !202 ; [#uses=3 type=i32] [debug line = 413:3]
  %tmp.92 = sext i32 %tmp.91 to i64, !dbg !202    ; [#uses=6 type=i64] [debug line = 413:3]
  %tmp.93 = mul nsw i64 %tmp., %tmp.92, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp6 = add i64 %tmp.87, %tmp.88, !dbg !202     ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp8 = add i64 %tmp.90, %tmp.93, !dbg !202     ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp7 = add i64 %tmp8, %tmp.89, !dbg !202       ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.94 = trunc i64 %tmp7 to i63                ; [#uses=1 type=i63]
  %tmp.95 = trunc i64 %tmp6 to i63                ; [#uses=1 type=i63]
  %tmp.96 = add i63 %tmp.95, %tmp.94, !dbg !202   ; [#uses=1 type=i63] [debug line = 413:3]
  %tmp.97 = zext i63 %tmp.96 to i64, !dbg !202    ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.98 = shl nuw nsw i64 %tmp.97, 1, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %output.addr.10 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !202 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp.98, i64* %output.addr.10, align 8, !dbg !202 ; [debug line = 413:3]
  %tmp.99 = mul nsw i64 %tmp.40, %tmp.40, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.100 = mul nsw i64 %tmp.31, %tmp.49, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.101 = mul nsw i64 %tmp.10, %tmp.74, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.102 = mul nsw i64 %tmp.18, %tmp.64, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.103 = mul nsw i64 %tmp.2, %tmp.92, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.104 = add nsw i64 %tmp.102, %tmp.103, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.105 = trunc i64 %tmp.104 to i63, !dbg !203 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp.106 = shl i63 %tmp.105, 1                  ; [#uses=1 type=i63]
  %tmp9 = add i64 %tmp.100, %tmp.101, !dbg !203   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.107 = add i64 %tmp9, %tmp.99, !dbg !203    ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.108 = trunc i64 %tmp.107 to i63            ; [#uses=1 type=i63]
  %tmp.109 = add i63 %tmp.108, %tmp.106, !dbg !203 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp.110 = zext i63 %tmp.109 to i64, !dbg !203  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.111 = shl nuw nsw i64 %tmp.110, 1, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %output.addr.11 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !203 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp.111, i64* %output.addr.11, align 8, !dbg !203 ; [debug line = 419:3]
  %tmp.112 = mul nsw i64 %tmp.40, %tmp.49, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.113 = mul nsw i64 %tmp.31, %tmp.64, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.114 = mul nsw i64 %tmp.18, %tmp.74, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.115 = mul nsw i64 %tmp.10, %tmp.92, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp10 = add i64 %tmp.112, %tmp.113, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp11 = add i64 %tmp.114, %tmp.115, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.116 = trunc i64 %tmp11 to i63              ; [#uses=1 type=i63]
  %tmp.117 = trunc i64 %tmp10 to i63              ; [#uses=1 type=i63]
  %tmp.118 = add i63 %tmp.117, %tmp.116, !dbg !204 ; [#uses=1 type=i63] [debug line = 425:3]
  %tmp.119 = zext i63 %tmp.118 to i64, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.120 = shl nuw nsw i64 %tmp.119, 1, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %output.addr.12 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !204 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp.120, i64* %output.addr.12, align 8, !dbg !204 ; [debug line = 425:3]
  %tmp.121 = mul nsw i64 %tmp.49, %tmp.49, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.122 = mul nsw i64 %tmp.31, %tmp.74, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.123 = mul nsw i64 %tmp.40, %tmp.64, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.124 = mul nsw i64 %tmp.18, %tmp.92, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.125 = add nsw i64 %tmp.123, %tmp.124, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.126 = trunc i64 %tmp.125 to i63, !dbg !205 ; [#uses=1 type=i63] [debug line = 430:3]
  %tmp.127 = zext i63 %tmp.126 to i64, !dbg !205  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.128 = shl nuw i64 %tmp.127, 1, !dbg !205   ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.129 = add nsw i64 %tmp.122, %tmp.128, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.130 = trunc i64 %tmp.129 to i63, !dbg !205 ; [#uses=1 type=i63] [debug line = 430:3]
  %tmp.131 = zext i63 %tmp.130 to i64, !dbg !205  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.132 = shl nuw i64 %tmp.131, 1, !dbg !205   ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.133 = add nsw i64 %tmp.121, %tmp.132, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %output.addr.13 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !205 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp.133, i64* %output.addr.13, align 8, !dbg !205 ; [debug line = 430:3]
  %tmp.134 = mul nsw i64 %tmp.49, %tmp.64, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.135 = mul nsw i64 %tmp.40, %tmp.74, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.136 = mul nsw i64 %tmp.31, %tmp.92, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp12 = add i64 %tmp.135, %tmp.136, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.137 = add i64 %tmp12, %tmp.134, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.138 = trunc i64 %tmp.137 to i63, !dbg !206 ; [#uses=1 type=i63] [debug line = 435:3]
  %tmp.139 = zext i63 %tmp.138 to i64, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.140 = shl nuw nsw i64 %tmp.139, 1, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %output.addr.14 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !206 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp.140, i64* %output.addr.14, align 8, !dbg !206 ; [debug line = 435:3]
  %tmp.141 = mul nsw i64 %tmp.64, %tmp.64, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.142 = mul nsw i64 %tmp.49, %tmp.74, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.143 = sext i32 %tmp.91 to i63, !dbg !207   ; [#uses=3 type=i63] [debug line = 439:3]
  %tmp.144 = sext i32 %tmp.91 to i62, !dbg !207   ; [#uses=2 type=i62] [debug line = 439:3]
  %tmp.145 = mul i62 %tmp.51, %tmp.144, !dbg !207 ; [#uses=1 type=i62] [debug line = 439:3]
  %tmp.146 = zext i62 %tmp.145 to i63             ; [#uses=1 type=i63]
  %tmp.147 = shl nuw i63 %tmp.146, 1              ; [#uses=1 type=i63]
  %tmp.148 = add i64 %tmp.141, %tmp.142, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.149 = trunc i64 %tmp.148 to i63            ; [#uses=1 type=i63]
  %tmp.150 = add i63 %tmp.149, %tmp.147, !dbg !207 ; [#uses=1 type=i63] [debug line = 439:3]
  %tmp.151 = zext i63 %tmp.150 to i64, !dbg !207  ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.152 = shl nuw nsw i64 %tmp.151, 1, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %output.addr.15 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !207 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp.152, i64* %output.addr.15, align 8, !dbg !207 ; [debug line = 439:3]
  %tmp.153 = mul nsw i64 %tmp.64, %tmp.74, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.154 = mul nsw i64 %tmp.49, %tmp.92, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.155 = add nsw i64 %tmp.153, %tmp.154, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.156 = trunc i64 %tmp.155 to i63, !dbg !208 ; [#uses=1 type=i63] [debug line = 443:3]
  %tmp.157 = zext i63 %tmp.156 to i64, !dbg !208  ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.158 = shl nuw nsw i64 %tmp.157, 1, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %output.addr.16 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !208 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp.158, i64* %output.addr.16, align 8, !dbg !208 ; [debug line = 443:3]
  %tmp.159 = mul nsw i64 %tmp.74, %tmp.74, !dbg !209 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.160 = sext i32 %tmp.63 to i62, !dbg !209   ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp.161 = mul i62 %tmp.160, %tmp.144, !dbg !209 ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp.162 = zext i62 %tmp.161 to i64, !dbg !209  ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.163 = shl nuw i64 %tmp.162, 2, !dbg !209   ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.164 = add nsw i64 %tmp.159, %tmp.163, !dbg !209 ; [#uses=1 type=i64] [debug line = 446:3]
  %output.addr.17 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !209 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp.164, i64* %output.addr.17, align 8, !dbg !209 ; [debug line = 446:3]
  %tmp.165 = sext i32 %tmp.73 to i63, !dbg !210   ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp.166 = mul i63 %tmp.165, %tmp.143, !dbg !210 ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp.167 = zext i63 %tmp.166 to i64, !dbg !210  ; [#uses=1 type=i64] [debug line = 449:3]
  %tmp.168 = shl nuw i64 %tmp.167, 1, !dbg !210   ; [#uses=1 type=i64] [debug line = 449:3]
  %output.addr.18 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !210 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp.168, i64* %output.addr.18, align 8, !dbg !210 ; [debug line = 449:3]
  %tmp.169 = mul i63 %tmp.143, %tmp.143, !dbg !211 ; [#uses=1 type=i63] [debug line = 451:3]
  %tmp.170 = zext i63 %tmp.169 to i64, !dbg !211  ; [#uses=1 type=i64] [debug line = 451:3]
  %tmp.171 = shl nuw i64 %tmp.170, 1, !dbg !211   ; [#uses=1 type=i64] [debug line = 451:3]
  %output.addr.19 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !211 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp.171, i64* %output.addr.19, align 8, !dbg !211 ; [debug line = 451:3]
  ret void, !dbg !212                             ; [debug line = 452:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner.1([19 x i64]* nocapture %output, [10 x i64]* nocapture %in) {
  %in.addr = getelementptr [10 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !188 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !190 ; [debug line = 370:1]
  %in.load = load i64* %in.addr, align 8, !dbg !191 ; [#uses=1 type=i64] [debug line = 371:53]
  %tmp = trunc i64 %in.load to i32, !dbg !191     ; [#uses=2 type=i32] [debug line = 371:53]
  %tmp. = sext i32 %tmp to i64, !dbg !191         ; [#uses=9 type=i64] [debug line = 371:53]
  %out_1 = mul nsw i64 %tmp., %tmp., !dbg !191    ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !192), !dbg !191 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output.addr, align 8, !dbg !193 ; [debug line = 374:3]
  %in.addr.11 = getelementptr [10 x i64]* %in, i64 0, i64 1, !dbg !194 ; [#uses=1 type=i64*] [debug line = 378:3]
  %in.load.3 = load i64* %in.addr.11, align 8, !dbg !194 ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.12 = trunc i64 %in.load.3 to i32, !dbg !194 ; [#uses=3 type=i32] [debug line = 378:3]
  %tmp.13 = sext i32 %tmp.12 to i64, !dbg !194    ; [#uses=8 type=i64] [debug line = 378:3]
  %tmp.174 = sext i32 %tmp to i63, !dbg !194      ; [#uses=2 type=i63] [debug line = 378:3]
  %tmp.175 = sext i32 %tmp.12 to i63, !dbg !194   ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp.176 = mul i63 %tmp.174, %tmp.175, !dbg !194 ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp.177 = zext i63 %tmp.176 to i64, !dbg !194  ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.15 = shl nuw i64 %tmp.177, 1, !dbg !194    ; [#uses=1 type=i64] [debug line = 378:3]
  %output.addr.20 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !194 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp.15, i64* %output.addr.20, align 8, !dbg !194 ; [debug line = 378:3]
  %tmp.18 = mul nsw i64 %tmp.13, %tmp.13, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %in.addr.12 = getelementptr [10 x i64]* %in, i64 0, i64 2, !dbg !195 ; [#uses=1 type=i64*] [debug line = 383:3]
  %in.load.6 = load i64* %in.addr.12, align 8, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.21 = trunc i64 %in.load.6 to i32, !dbg !195 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp.22 = sext i32 %tmp.21 to i64, !dbg !195    ; [#uses=11 type=i64] [debug line = 383:3]
  %tmp.23 = mul nsw i64 %tmp., %tmp.22, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.24 = add nsw i64 %tmp.18, %tmp.23, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.179 = trunc i64 %tmp.24 to i63, !dbg !195  ; [#uses=1 type=i63] [debug line = 383:3]
  %tmp.180 = zext i63 %tmp.179 to i64, !dbg !195  ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.25 = shl nuw i64 %tmp.180, 1, !dbg !195    ; [#uses=1 type=i64] [debug line = 383:3]
  %output.addr.21 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !195 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp.25, i64* %output.addr.21, align 8, !dbg !195 ; [debug line = 383:3]
  %tmp.30 = mul nsw i64 %tmp.13, %tmp.22, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %in.addr.13 = getelementptr [10 x i64]* %in, i64 0, i64 3, !dbg !196 ; [#uses=1 type=i64*] [debug line = 386:3]
  %in.load.10 = load i64* %in.addr.13, align 8, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.33 = trunc i64 %in.load.10 to i32, !dbg !196 ; [#uses=2 type=i32] [debug line = 386:3]
  %tmp.34 = sext i32 %tmp.33 to i64, !dbg !196    ; [#uses=10 type=i64] [debug line = 386:3]
  %tmp.35 = mul nsw i64 %tmp., %tmp.34, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.36 = add nsw i64 %tmp.30, %tmp.35, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.182 = trunc i64 %tmp.36 to i63, !dbg !196  ; [#uses=1 type=i63] [debug line = 386:3]
  %tmp.183 = zext i63 %tmp.182 to i64, !dbg !196  ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.37 = shl nuw nsw i64 %tmp.183, 1, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %output.addr.22 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !196 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp.37, i64* %output.addr.22, align 8, !dbg !196 ; [debug line = 386:3]
  %tmp.40 = mul nsw i64 %tmp.22, %tmp.22, !dbg !197 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.184 = sext i32 %tmp.12 to i62, !dbg !197   ; [#uses=2 type=i62] [debug line = 389:3]
  %tmp.185 = sext i32 %tmp.33 to i62, !dbg !197   ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp.187 = mul i62 %tmp.184, %tmp.185, !dbg !197 ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp.188 = zext i62 %tmp.187 to i64, !dbg !197  ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.46 = shl nuw i64 %tmp.188, 2, !dbg !197    ; [#uses=1 type=i64] [debug line = 389:3]
  %in.addr.14 = getelementptr [10 x i64]* %in, i64 0, i64 4, !dbg !197 ; [#uses=1 type=i64*] [debug line = 389:3]
  %in.load.11 = load i64* %in.addr.14, align 8, !dbg !197 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.49 = trunc i64 %in.load.11 to i32, !dbg !197 ; [#uses=2 type=i32] [debug line = 389:3]
  %tmp.50 = sext i32 %tmp.49 to i64, !dbg !197    ; [#uses=10 type=i64] [debug line = 389:3]
  %tmp.189 = sext i32 %tmp.49 to i63, !dbg !197   ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp.190 = mul i63 %tmp.174, %tmp.189, !dbg !197 ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp.192 = zext i63 %tmp.190 to i64, !dbg !197  ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.52 = shl nuw i64 %tmp.192, 1, !dbg !197    ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp1 = add i64 %tmp.46, %tmp.52, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.54 = add i64 %tmp1, %tmp.40, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %output.addr.23 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !197 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp.54, i64* %output.addr.23, align 8, !dbg !197 ; [debug line = 389:3]
  %tmp.59 = mul nsw i64 %tmp.22, %tmp.34, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.64 = mul nsw i64 %tmp.13, %tmp.50, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %in.addr.15 = getelementptr [10 x i64]* %in, i64 0, i64 5, !dbg !198 ; [#uses=1 type=i64*] [debug line = 393:3]
  %in.load.12 = load i64* %in.addr.15, align 8, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.67 = trunc i64 %in.load.12 to i32, !dbg !198 ; [#uses=2 type=i32] [debug line = 393:3]
  %tmp.68 = sext i32 %tmp.67 to i64, !dbg !198    ; [#uses=9 type=i64] [debug line = 393:3]
  %tmp.69 = mul nsw i64 %tmp., %tmp.68, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp2 = add i64 %tmp.64, %tmp.69, !dbg !198     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.71 = add i64 %tmp2, %tmp.59, !dbg !198     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.193 = trunc i64 %tmp.71 to i63, !dbg !198  ; [#uses=1 type=i63] [debug line = 393:3]
  %tmp.194 = zext i63 %tmp.193 to i64, !dbg !198  ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.72 = shl nuw nsw i64 %tmp.194, 1, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %output.addr.24 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !198 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp.72, i64* %output.addr.24, align 8, !dbg !198 ; [debug line = 393:3]
  %tmp.75 = mul nsw i64 %tmp.34, %tmp.34, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.80 = mul nsw i64 %tmp.22, %tmp.50, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %in.addr.16 = getelementptr [10 x i64]* %in, i64 0, i64 6, !dbg !199 ; [#uses=1 type=i64*] [debug line = 397:3]
  %in.load.13 = load i64* %in.addr.16, align 8, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.83 = trunc i64 %in.load.13 to i32, !dbg !199 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.84 = sext i32 %tmp.83 to i64, !dbg !199    ; [#uses=11 type=i64] [debug line = 397:3]
  %tmp.85 = mul nsw i64 %tmp., %tmp.84, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.195 = sext i32 %tmp.67 to i62, !dbg !199   ; [#uses=2 type=i62] [debug line = 397:3]
  %tmp.197 = mul i62 %tmp.184, %tmp.195, !dbg !199 ; [#uses=1 type=i62] [debug line = 397:3]
  %tmp.198 = zext i62 %tmp.197 to i63             ; [#uses=1 type=i63]
  %tmp.91 = shl nuw i63 %tmp.198, 1               ; [#uses=1 type=i63]
  %tmp3 = add i64 %tmp.80, %tmp.85, !dbg !199     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.93 = add i64 %tmp3, %tmp.75, !dbg !199     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.199 = trunc i64 %tmp.93 to i63             ; [#uses=1 type=i63]
  %tmp.200 = add i63 %tmp.199, %tmp.91, !dbg !199 ; [#uses=1 type=i63] [debug line = 397:3]
  %tmp.204 = zext i63 %tmp.200 to i64, !dbg !199  ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.95 = shl nuw nsw i64 %tmp.204, 1, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %output.addr.25 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !199 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp.95, i64* %output.addr.25, align 8, !dbg !199 ; [debug line = 397:3]
  %tmp.100 = mul nsw i64 %tmp.34, %tmp.50, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.105 = mul nsw i64 %tmp.22, %tmp.68, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.110 = mul nsw i64 %tmp.13, %tmp.84, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %in.addr.17 = getelementptr [10 x i64]* %in, i64 0, i64 7, !dbg !200 ; [#uses=1 type=i64*] [debug line = 402:3]
  %in.load.14 = load i64* %in.addr.17, align 8, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.113 = trunc i64 %in.load.14 to i32, !dbg !200 ; [#uses=2 type=i32] [debug line = 402:3]
  %tmp.114 = sext i32 %tmp.113 to i64, !dbg !200  ; [#uses=10 type=i64] [debug line = 402:3]
  %tmp.115 = mul nsw i64 %tmp., %tmp.114, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp4 = add i64 %tmp.100, %tmp.105, !dbg !200   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp5 = add i64 %tmp.110, %tmp.115, !dbg !200   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.118 = trunc i64 %tmp5 to i63               ; [#uses=1 type=i63]
  %tmp.120 = trunc i64 %tmp4 to i63               ; [#uses=1 type=i63]
  %tmp.206 = add i63 %tmp.120, %tmp.118, !dbg !200 ; [#uses=1 type=i63] [debug line = 402:3]
  %tmp.208 = zext i63 %tmp.206 to i64, !dbg !200  ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.119 = shl nuw nsw i64 %tmp.208, 1, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %output.addr.26 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !200 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp.119, i64* %output.addr.26, align 8, !dbg !200 ; [debug line = 402:3]
  %tmp.122 = mul nsw i64 %tmp.50, %tmp.50, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.127 = mul nsw i64 %tmp.22, %tmp.84, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.addr.18 = getelementptr [10 x i64]* %in, i64 0, i64 8, !dbg !201 ; [#uses=1 type=i64*] [debug line = 407:3]
  %in.load.15 = load i64* %in.addr.18, align 8, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.130 = trunc i64 %in.load.15 to i32, !dbg !201 ; [#uses=2 type=i32] [debug line = 407:3]
  %tmp.131 = sext i32 %tmp.130 to i64, !dbg !201  ; [#uses=10 type=i64] [debug line = 407:3]
  %tmp.132 = mul nsw i64 %tmp., %tmp.131, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.137 = mul nsw i64 %tmp.13, %tmp.114, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.142 = mul nsw i64 %tmp.34, %tmp.68, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.143 = add nsw i64 %tmp.137, %tmp.142, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.209 = trunc i64 %tmp.143 to i63, !dbg !201 ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp.144 = shl i63 %tmp.209, 1                  ; [#uses=1 type=i63]
  %tmp.145 = add i64 %tmp.127, %tmp.132, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.210 = trunc i64 %tmp.145 to i63            ; [#uses=1 type=i63]
  %tmp.211 = add i63 %tmp.210, %tmp.144, !dbg !201 ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp.213 = zext i63 %tmp.211 to i64, !dbg !201  ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.147 = shl nuw i64 %tmp.213, 1, !dbg !201   ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.148 = add nsw i64 %tmp.122, %tmp.147, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %output.addr.27 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !201 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp.148, i64* %output.addr.27, align 8, !dbg !201 ; [debug line = 407:3]
  %tmp.153 = mul nsw i64 %tmp.50, %tmp.68, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.158 = mul nsw i64 %tmp.34, %tmp.84, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.163 = mul nsw i64 %tmp.22, %tmp.114, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.168 = mul nsw i64 %tmp.13, %tmp.131, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.addr.19 = getelementptr [10 x i64]* %in, i64 0, i64 9, !dbg !202 ; [#uses=1 type=i64*] [debug line = 413:3]
  %in.load.16 = load i64* %in.addr.19, align 8, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.171 = trunc i64 %in.load.16 to i32, !dbg !202 ; [#uses=3 type=i32] [debug line = 413:3]
  %tmp.172 = sext i32 %tmp.171 to i64, !dbg !202  ; [#uses=6 type=i64] [debug line = 413:3]
  %tmp.173 = mul nsw i64 %tmp., %tmp.172, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp6 = add i64 %tmp.153, %tmp.158, !dbg !202   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp8 = add i64 %tmp.168, %tmp.173, !dbg !202   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp7 = add i64 %tmp8, %tmp.163, !dbg !202      ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.121 = trunc i64 %tmp7 to i63               ; [#uses=1 type=i63]
  %tmp.123 = trunc i64 %tmp6 to i63               ; [#uses=1 type=i63]
  %tmp.214 = add i63 %tmp.123, %tmp.121, !dbg !202 ; [#uses=1 type=i63] [debug line = 413:3]
  %tmp.215 = zext i63 %tmp.214 to i64, !dbg !202  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.178 = shl nuw nsw i64 %tmp.215, 1, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %output.addr.28 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !202 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp.178, i64* %output.addr.28, align 8, !dbg !202 ; [debug line = 413:3]
  %tmp.181 = mul nsw i64 %tmp.68, %tmp.68, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.186 = mul nsw i64 %tmp.50, %tmp.84, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.191 = mul nsw i64 %tmp.22, %tmp.131, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.196 = mul nsw i64 %tmp.34, %tmp.114, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.201 = mul nsw i64 %tmp.13, %tmp.172, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.202 = add nsw i64 %tmp.196, %tmp.201, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.216 = trunc i64 %tmp.202 to i63, !dbg !203 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp.203 = shl i63 %tmp.216, 1                  ; [#uses=1 type=i63]
  %tmp9 = add i64 %tmp.186, %tmp.191, !dbg !203   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.205 = add i64 %tmp9, %tmp.181, !dbg !203   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.218 = trunc i64 %tmp.205 to i63            ; [#uses=1 type=i63]
  %tmp.219 = add i63 %tmp.218, %tmp.203, !dbg !203 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp.220 = zext i63 %tmp.219 to i64, !dbg !203  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.207 = shl nuw nsw i64 %tmp.220, 1, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %output.addr.29 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !203 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp.207, i64* %output.addr.29, align 8, !dbg !203 ; [debug line = 419:3]
  %tmp.212 = mul nsw i64 %tmp.68, %tmp.84, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.217 = mul nsw i64 %tmp.50, %tmp.114, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.221 = mul nsw i64 %tmp.34, %tmp.131, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.222 = mul nsw i64 %tmp.22, %tmp.172, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp10 = add i64 %tmp.212, %tmp.217, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp11 = add i64 %tmp.221, %tmp.222, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.124 = trunc i64 %tmp11 to i63              ; [#uses=1 type=i63]
  %tmp.125 = trunc i64 %tmp10 to i63              ; [#uses=1 type=i63]
  %tmp.223 = add i63 %tmp.125, %tmp.124, !dbg !204 ; [#uses=1 type=i63] [debug line = 425:3]
  %tmp.224 = zext i63 %tmp.223 to i64, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.225 = shl nuw nsw i64 %tmp.224, 1, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %output.addr.30 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !204 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp.225, i64* %output.addr.30, align 8, !dbg !204 ; [debug line = 425:3]
  %tmp.226 = mul nsw i64 %tmp.84, %tmp.84, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.227 = mul nsw i64 %tmp.50, %tmp.131, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.228 = mul nsw i64 %tmp.68, %tmp.114, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.229 = mul nsw i64 %tmp.34, %tmp.172, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.230 = add nsw i64 %tmp.228, %tmp.229, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.231 = trunc i64 %tmp.230 to i63, !dbg !205 ; [#uses=1 type=i63] [debug line = 430:3]
  %tmp.232 = zext i63 %tmp.231 to i64, !dbg !205  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.233 = shl nuw i64 %tmp.232, 1, !dbg !205   ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.234 = add nsw i64 %tmp.227, %tmp.233, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.235 = trunc i64 %tmp.234 to i63, !dbg !205 ; [#uses=1 type=i63] [debug line = 430:3]
  %tmp.236 = zext i63 %tmp.235 to i64, !dbg !205  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.237 = shl nuw i64 %tmp.236, 1, !dbg !205   ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.238 = add nsw i64 %tmp.226, %tmp.237, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %output.addr.31 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !205 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp.238, i64* %output.addr.31, align 8, !dbg !205 ; [debug line = 430:3]
  %tmp.239 = mul nsw i64 %tmp.84, %tmp.114, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.240 = mul nsw i64 %tmp.68, %tmp.131, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.241 = mul nsw i64 %tmp.50, %tmp.172, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp12 = add i64 %tmp.240, %tmp.241, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.242 = add i64 %tmp12, %tmp.239, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.243 = trunc i64 %tmp.242 to i63, !dbg !206 ; [#uses=1 type=i63] [debug line = 435:3]
  %tmp.244 = zext i63 %tmp.243 to i64, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.245 = shl nuw nsw i64 %tmp.244, 1, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %output.addr.32 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !206 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp.245, i64* %output.addr.32, align 8, !dbg !206 ; [debug line = 435:3]
  %tmp.246 = mul nsw i64 %tmp.114, %tmp.114, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.247 = mul nsw i64 %tmp.84, %tmp.131, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.248 = sext i32 %tmp.171 to i63, !dbg !207  ; [#uses=3 type=i63] [debug line = 439:3]
  %tmp.249 = sext i32 %tmp.171 to i62, !dbg !207  ; [#uses=2 type=i62] [debug line = 439:3]
  %tmp.250 = mul i62 %tmp.195, %tmp.249, !dbg !207 ; [#uses=1 type=i62] [debug line = 439:3]
  %tmp.251 = zext i62 %tmp.250 to i63             ; [#uses=1 type=i63]
  %tmp.252 = shl nuw i63 %tmp.251, 1              ; [#uses=1 type=i63]
  %tmp.253 = add i64 %tmp.246, %tmp.247, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.254 = trunc i64 %tmp.253 to i63            ; [#uses=1 type=i63]
  %tmp.255 = add i63 %tmp.254, %tmp.252, !dbg !207 ; [#uses=1 type=i63] [debug line = 439:3]
  %tmp.256 = zext i63 %tmp.255 to i64, !dbg !207  ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.257 = shl nuw nsw i64 %tmp.256, 1, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %output.addr.33 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !207 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp.257, i64* %output.addr.33, align 8, !dbg !207 ; [debug line = 439:3]
  %tmp.258 = mul nsw i64 %tmp.114, %tmp.131, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.259 = mul nsw i64 %tmp.84, %tmp.172, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.260 = add nsw i64 %tmp.258, %tmp.259, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.261 = trunc i64 %tmp.260 to i63, !dbg !208 ; [#uses=1 type=i63] [debug line = 443:3]
  %tmp.262 = zext i63 %tmp.261 to i64, !dbg !208  ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.263 = shl nuw nsw i64 %tmp.262, 1, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %output.addr.34 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !208 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp.263, i64* %output.addr.34, align 8, !dbg !208 ; [debug line = 443:3]
  %tmp.264 = mul nsw i64 %tmp.131, %tmp.131, !dbg !209 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.265 = sext i32 %tmp.113 to i62, !dbg !209  ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp.266 = mul i62 %tmp.265, %tmp.249, !dbg !209 ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp.267 = zext i62 %tmp.266 to i64, !dbg !209  ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.268 = shl nuw i64 %tmp.267, 2, !dbg !209   ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.269 = add nsw i64 %tmp.264, %tmp.268, !dbg !209 ; [#uses=1 type=i64] [debug line = 446:3]
  %output.addr.35 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !209 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp.269, i64* %output.addr.35, align 8, !dbg !209 ; [debug line = 446:3]
  %tmp.270 = sext i32 %tmp.130 to i63, !dbg !210  ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp.271 = mul i63 %tmp.270, %tmp.248, !dbg !210 ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp.272 = zext i63 %tmp.271 to i64, !dbg !210  ; [#uses=1 type=i64] [debug line = 449:3]
  %tmp.273 = shl nuw i64 %tmp.272, 1, !dbg !210   ; [#uses=1 type=i64] [debug line = 449:3]
  %output.addr.36 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !210 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp.273, i64* %output.addr.36, align 8, !dbg !210 ; [debug line = 449:3]
  %tmp.274 = mul i63 %tmp.248, %tmp.248, !dbg !211 ; [#uses=1 type=i63] [debug line = 451:3]
  %tmp.275 = zext i63 %tmp.274 to i64, !dbg !211  ; [#uses=1 type=i64] [debug line = 451:3]
  %tmp.276 = shl nuw i64 %tmp.275, 1, !dbg !211   ; [#uses=1 type=i64] [debug line = 451:3]
  %output.addr.37 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !211 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp.276, i64* %output.addr.37, align 8, !dbg !211 ; [debug line = 451:3]
  ret void, !dbg !212                             ; [debug line = 452:1]
}

; [#uses=1]
define internal fastcc void @fsquare_inner([19 x i64]* nocapture %output, [11 x i64]* nocapture %in) {
  %in.addr = getelementptr [11 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !213), !dbg !214 ; [debug line = 368:33] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %in}, i64 0, metadata !215), !dbg !219 ; [debug line = 368:53] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !188 ; [debug line = 369:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !190 ; [debug line = 370:1]
  %in.load = load i64* %in.addr, align 8, !dbg !191 ; [#uses=1 type=i64] [debug line = 371:53]
  %tmp = trunc i64 %in.load to i32, !dbg !191     ; [#uses=2 type=i32] [debug line = 371:53]
  %tmp. = sext i32 %tmp to i64, !dbg !191         ; [#uses=9 type=i64] [debug line = 371:53]
  %out_1 = mul nsw i64 %tmp., %tmp., !dbg !191    ; [#uses=1 type=i64] [debug line = 371:53]
  call void @llvm.dbg.value(metadata !{i64 %out_1}, i64 0, metadata !192), !dbg !191 ; [debug line = 371:53] [debug variable = out_1]
  store i64 %out_1, i64* %output.addr, align 8, !dbg !193 ; [debug line = 374:3]
  %in.addr.20 = getelementptr [11 x i64]* %in, i64 0, i64 1, !dbg !194 ; [#uses=1 type=i64*] [debug line = 378:3]
  %in.load.3 = load i64* %in.addr.20, align 8, !dbg !194 ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.12 = trunc i64 %in.load.3 to i32, !dbg !194 ; [#uses=3 type=i32] [debug line = 378:3]
  %tmp.13 = sext i32 %tmp.12 to i64, !dbg !194    ; [#uses=8 type=i64] [debug line = 378:3]
  %tmp.277 = sext i32 %tmp to i63, !dbg !194      ; [#uses=2 type=i63] [debug line = 378:3]
  %tmp.278 = sext i32 %tmp.12 to i63, !dbg !194   ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp.279 = mul i63 %tmp.277, %tmp.278, !dbg !194 ; [#uses=1 type=i63] [debug line = 378:3]
  %tmp.281 = zext i63 %tmp.279 to i64, !dbg !194  ; [#uses=1 type=i64] [debug line = 378:3]
  %tmp.15 = shl nuw i64 %tmp.281, 1, !dbg !194    ; [#uses=1 type=i64] [debug line = 378:3]
  %output.addr.38 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !194 ; [#uses=1 type=i64*] [debug line = 378:3]
  store i64 %tmp.15, i64* %output.addr.38, align 8, !dbg !194 ; [debug line = 378:3]
  %tmp.18 = mul nsw i64 %tmp.13, %tmp.13, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %in.addr.21 = getelementptr [11 x i64]* %in, i64 0, i64 2, !dbg !195 ; [#uses=1 type=i64*] [debug line = 383:3]
  %in.load.6 = load i64* %in.addr.21, align 8, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.21 = trunc i64 %in.load.6 to i32, !dbg !195 ; [#uses=1 type=i32] [debug line = 383:3]
  %tmp.22 = sext i32 %tmp.21 to i64, !dbg !195    ; [#uses=11 type=i64] [debug line = 383:3]
  %tmp.23 = mul nsw i64 %tmp., %tmp.22, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.24 = add nsw i64 %tmp.18, %tmp.23, !dbg !195 ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.282 = trunc i64 %tmp.24 to i63, !dbg !195  ; [#uses=1 type=i63] [debug line = 383:3]
  %tmp.288 = zext i63 %tmp.282 to i64, !dbg !195  ; [#uses=1 type=i64] [debug line = 383:3]
  %tmp.25 = shl nuw i64 %tmp.288, 1, !dbg !195    ; [#uses=1 type=i64] [debug line = 383:3]
  %output.addr.22 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !195 ; [#uses=1 type=i64*] [debug line = 383:3]
  store i64 %tmp.25, i64* %output.addr.22, align 8, !dbg !195 ; [debug line = 383:3]
  %tmp.30 = mul nsw i64 %tmp.13, %tmp.22, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %in.addr.22 = getelementptr [11 x i64]* %in, i64 0, i64 3, !dbg !196 ; [#uses=1 type=i64*] [debug line = 386:3]
  %in.load.10 = load i64* %in.addr.22, align 8, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.33 = trunc i64 %in.load.10 to i32, !dbg !196 ; [#uses=2 type=i32] [debug line = 386:3]
  %tmp.34 = sext i32 %tmp.33 to i64, !dbg !196    ; [#uses=10 type=i64] [debug line = 386:3]
  %tmp.35 = mul nsw i64 %tmp., %tmp.34, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.36 = add nsw i64 %tmp.30, %tmp.35, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.290 = trunc i64 %tmp.36 to i63, !dbg !196  ; [#uses=1 type=i63] [debug line = 386:3]
  %tmp.291 = zext i63 %tmp.290 to i64, !dbg !196  ; [#uses=1 type=i64] [debug line = 386:3]
  %tmp.37 = shl nuw nsw i64 %tmp.291, 1, !dbg !196 ; [#uses=1 type=i64] [debug line = 386:3]
  %output.addr.33 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !196 ; [#uses=1 type=i64*] [debug line = 386:3]
  store i64 %tmp.37, i64* %output.addr.33, align 8, !dbg !196 ; [debug line = 386:3]
  %tmp.40 = mul nsw i64 %tmp.22, %tmp.22, !dbg !197 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.283 = sext i32 %tmp.12 to i62, !dbg !197   ; [#uses=2 type=i62] [debug line = 389:3]
  %tmp.284 = sext i32 %tmp.33 to i62, !dbg !197   ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp.292 = mul i62 %tmp.283, %tmp.284, !dbg !197 ; [#uses=1 type=i62] [debug line = 389:3]
  %tmp.293 = zext i62 %tmp.292 to i64, !dbg !197  ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.46 = shl nuw i64 %tmp.293, 2, !dbg !197    ; [#uses=1 type=i64] [debug line = 389:3]
  %in.addr.23 = getelementptr [11 x i64]* %in, i64 0, i64 4, !dbg !197 ; [#uses=1 type=i64*] [debug line = 389:3]
  %in.load.15 = load i64* %in.addr.23, align 8, !dbg !197 ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.49 = trunc i64 %in.load.15 to i32, !dbg !197 ; [#uses=2 type=i32] [debug line = 389:3]
  %tmp.50 = sext i32 %tmp.49 to i64, !dbg !197    ; [#uses=10 type=i64] [debug line = 389:3]
  %tmp.285 = sext i32 %tmp.49 to i63, !dbg !197   ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp.295 = mul i63 %tmp.277, %tmp.285, !dbg !197 ; [#uses=1 type=i63] [debug line = 389:3]
  %tmp.296 = zext i63 %tmp.295 to i64, !dbg !197  ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.52 = shl nuw i64 %tmp.296, 1, !dbg !197    ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp1 = add i64 %tmp.46, %tmp.52, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %tmp.54 = add i64 %tmp1, %tmp.40, !dbg !197     ; [#uses=1 type=i64] [debug line = 389:3]
  %output.addr.39 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !197 ; [#uses=1 type=i64*] [debug line = 389:3]
  store i64 %tmp.54, i64* %output.addr.39, align 8, !dbg !197 ; [debug line = 389:3]
  %tmp.59 = mul nsw i64 %tmp.22, %tmp.34, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.64 = mul nsw i64 %tmp.13, %tmp.50, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %in.addr.24 = getelementptr [11 x i64]* %in, i64 0, i64 5, !dbg !198 ; [#uses=1 type=i64*] [debug line = 393:3]
  %in.load.17 = load i64* %in.addr.24, align 8, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.67 = trunc i64 %in.load.17 to i32, !dbg !198 ; [#uses=2 type=i32] [debug line = 393:3]
  %tmp.68 = sext i32 %tmp.67 to i64, !dbg !198    ; [#uses=9 type=i64] [debug line = 393:3]
  %tmp.69 = mul nsw i64 %tmp., %tmp.68, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp2 = add i64 %tmp.64, %tmp.69, !dbg !198     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.71 = add i64 %tmp2, %tmp.59, !dbg !198     ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.297 = trunc i64 %tmp.71 to i63, !dbg !198  ; [#uses=1 type=i63] [debug line = 393:3]
  %tmp.298 = zext i63 %tmp.297 to i64, !dbg !198  ; [#uses=1 type=i64] [debug line = 393:3]
  %tmp.72 = shl nuw nsw i64 %tmp.298, 1, !dbg !198 ; [#uses=1 type=i64] [debug line = 393:3]
  %output.addr.40 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !198 ; [#uses=1 type=i64*] [debug line = 393:3]
  store i64 %tmp.72, i64* %output.addr.40, align 8, !dbg !198 ; [debug line = 393:3]
  %tmp.75 = mul nsw i64 %tmp.34, %tmp.34, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.80 = mul nsw i64 %tmp.22, %tmp.50, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %in.addr.25 = getelementptr [11 x i64]* %in, i64 0, i64 6, !dbg !199 ; [#uses=1 type=i64*] [debug line = 397:3]
  %in.load.18 = load i64* %in.addr.25, align 8, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.83 = trunc i64 %in.load.18 to i32, !dbg !199 ; [#uses=1 type=i32] [debug line = 397:3]
  %tmp.84 = sext i32 %tmp.83 to i64, !dbg !199    ; [#uses=11 type=i64] [debug line = 397:3]
  %tmp.85 = mul nsw i64 %tmp., %tmp.84, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.302 = sext i32 %tmp.67 to i62, !dbg !199   ; [#uses=2 type=i62] [debug line = 397:3]
  %tmp.303 = mul i62 %tmp.283, %tmp.302, !dbg !199 ; [#uses=1 type=i62] [debug line = 397:3]
  %tmp.305 = zext i62 %tmp.303 to i63             ; [#uses=1 type=i63]
  %tmp.91 = shl nuw i63 %tmp.305, 1               ; [#uses=1 type=i63]
  %tmp3 = add i64 %tmp.80, %tmp.85, !dbg !199     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.93 = add i64 %tmp3, %tmp.75, !dbg !199     ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.306 = trunc i64 %tmp.93 to i63             ; [#uses=1 type=i63]
  %tmp.307 = add i63 %tmp.306, %tmp.91, !dbg !199 ; [#uses=1 type=i63] [debug line = 397:3]
  %tmp.308 = zext i63 %tmp.307 to i64, !dbg !199  ; [#uses=1 type=i64] [debug line = 397:3]
  %tmp.95 = shl nuw nsw i64 %tmp.308, 1, !dbg !199 ; [#uses=1 type=i64] [debug line = 397:3]
  %output.addr.41 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !199 ; [#uses=1 type=i64*] [debug line = 397:3]
  store i64 %tmp.95, i64* %output.addr.41, align 8, !dbg !199 ; [debug line = 397:3]
  %tmp.100 = mul nsw i64 %tmp.34, %tmp.50, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.105 = mul nsw i64 %tmp.22, %tmp.68, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.110 = mul nsw i64 %tmp.13, %tmp.84, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %in.addr.26 = getelementptr [11 x i64]* %in, i64 0, i64 7, !dbg !200 ; [#uses=1 type=i64*] [debug line = 402:3]
  %in.load.19 = load i64* %in.addr.26, align 8, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.113 = trunc i64 %in.load.19 to i32, !dbg !200 ; [#uses=2 type=i32] [debug line = 402:3]
  %tmp.114 = sext i32 %tmp.113 to i64, !dbg !200  ; [#uses=10 type=i64] [debug line = 402:3]
  %tmp.115 = mul nsw i64 %tmp., %tmp.114, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp4 = add i64 %tmp.100, %tmp.105, !dbg !200   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp5 = add i64 %tmp.110, %tmp.115, !dbg !200   ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.126 = trunc i64 %tmp5 to i63               ; [#uses=1 type=i63]
  %tmp.128 = trunc i64 %tmp4 to i63               ; [#uses=1 type=i63]
  %tmp.309 = add i63 %tmp.128, %tmp.126, !dbg !200 ; [#uses=1 type=i63] [debug line = 402:3]
  %tmp.312 = zext i63 %tmp.309 to i64, !dbg !200  ; [#uses=1 type=i64] [debug line = 402:3]
  %tmp.119 = shl nuw nsw i64 %tmp.312, 1, !dbg !200 ; [#uses=1 type=i64] [debug line = 402:3]
  %output.addr.42 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !200 ; [#uses=1 type=i64*] [debug line = 402:3]
  store i64 %tmp.119, i64* %output.addr.42, align 8, !dbg !200 ; [debug line = 402:3]
  %tmp.122 = mul nsw i64 %tmp.50, %tmp.50, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.127 = mul nsw i64 %tmp.22, %tmp.84, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %in.addr.27 = getelementptr [11 x i64]* %in, i64 0, i64 8, !dbg !201 ; [#uses=1 type=i64*] [debug line = 407:3]
  %in.load.20 = load i64* %in.addr.27, align 8, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.130 = trunc i64 %in.load.20 to i32, !dbg !201 ; [#uses=2 type=i32] [debug line = 407:3]
  %tmp.131 = sext i32 %tmp.130 to i64, !dbg !201  ; [#uses=10 type=i64] [debug line = 407:3]
  %tmp.132 = mul nsw i64 %tmp., %tmp.131, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.137 = mul nsw i64 %tmp.13, %tmp.114, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.142 = mul nsw i64 %tmp.34, %tmp.68, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.143 = add nsw i64 %tmp.137, %tmp.142, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.313 = trunc i64 %tmp.143 to i63, !dbg !201 ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp.144 = shl i63 %tmp.313, 1                  ; [#uses=1 type=i63]
  %tmp.145 = add i64 %tmp.127, %tmp.132, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.314 = trunc i64 %tmp.145 to i63            ; [#uses=1 type=i63]
  %tmp.315 = add i63 %tmp.314, %tmp.144, !dbg !201 ; [#uses=1 type=i63] [debug line = 407:3]
  %tmp.316 = zext i63 %tmp.315 to i64, !dbg !201  ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.147 = shl nuw i64 %tmp.316, 1, !dbg !201   ; [#uses=1 type=i64] [debug line = 407:3]
  %tmp.148 = add nsw i64 %tmp.122, %tmp.147, !dbg !201 ; [#uses=1 type=i64] [debug line = 407:3]
  %output.addr.43 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !201 ; [#uses=1 type=i64*] [debug line = 407:3]
  store i64 %tmp.148, i64* %output.addr.43, align 8, !dbg !201 ; [debug line = 407:3]
  %tmp.153 = mul nsw i64 %tmp.50, %tmp.68, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.158 = mul nsw i64 %tmp.34, %tmp.84, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.163 = mul nsw i64 %tmp.22, %tmp.114, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.168 = mul nsw i64 %tmp.13, %tmp.131, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %in.addr.28 = getelementptr [11 x i64]* %in, i64 0, i64 9, !dbg !202 ; [#uses=1 type=i64*] [debug line = 413:3]
  %in.load.21 = load i64* %in.addr.28, align 8, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.171 = trunc i64 %in.load.21 to i32, !dbg !202 ; [#uses=3 type=i32] [debug line = 413:3]
  %tmp.172 = sext i32 %tmp.171 to i64, !dbg !202  ; [#uses=6 type=i64] [debug line = 413:3]
  %tmp.173 = mul nsw i64 %tmp., %tmp.172, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp6 = add i64 %tmp.153, %tmp.158, !dbg !202   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp8 = add i64 %tmp.168, %tmp.173, !dbg !202   ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp7 = add i64 %tmp8, %tmp.163, !dbg !202      ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.129 = trunc i64 %tmp7 to i63               ; [#uses=1 type=i63]
  %tmp.133 = trunc i64 %tmp6 to i63               ; [#uses=1 type=i63]
  %tmp.318 = add i63 %tmp.133, %tmp.129, !dbg !202 ; [#uses=1 type=i63] [debug line = 413:3]
  %tmp.319 = zext i63 %tmp.318 to i64, !dbg !202  ; [#uses=1 type=i64] [debug line = 413:3]
  %tmp.178 = shl nuw nsw i64 %tmp.319, 1, !dbg !202 ; [#uses=1 type=i64] [debug line = 413:3]
  %output.addr.44 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !202 ; [#uses=1 type=i64*] [debug line = 413:3]
  store i64 %tmp.178, i64* %output.addr.44, align 8, !dbg !202 ; [debug line = 413:3]
  %tmp.181 = mul nsw i64 %tmp.68, %tmp.68, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.186 = mul nsw i64 %tmp.50, %tmp.84, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.191 = mul nsw i64 %tmp.22, %tmp.131, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.196 = mul nsw i64 %tmp.34, %tmp.114, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.201 = mul nsw i64 %tmp.13, %tmp.172, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.202 = add nsw i64 %tmp.196, %tmp.201, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.320 = trunc i64 %tmp.202 to i63, !dbg !203 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp.203 = shl i63 %tmp.320, 1                  ; [#uses=1 type=i63]
  %tmp9 = add i64 %tmp.186, %tmp.191, !dbg !203   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.205 = add i64 %tmp9, %tmp.181, !dbg !203   ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.322 = trunc i64 %tmp.205 to i63            ; [#uses=1 type=i63]
  %tmp.323 = add i63 %tmp.322, %tmp.203, !dbg !203 ; [#uses=1 type=i63] [debug line = 419:3]
  %tmp.324 = zext i63 %tmp.323 to i64, !dbg !203  ; [#uses=1 type=i64] [debug line = 419:3]
  %tmp.207 = shl nuw nsw i64 %tmp.324, 1, !dbg !203 ; [#uses=1 type=i64] [debug line = 419:3]
  %output.addr.45 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !203 ; [#uses=1 type=i64*] [debug line = 419:3]
  store i64 %tmp.207, i64* %output.addr.45, align 8, !dbg !203 ; [debug line = 419:3]
  %tmp.212 = mul nsw i64 %tmp.68, %tmp.84, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.217 = mul nsw i64 %tmp.50, %tmp.114, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.222 = mul nsw i64 %tmp.34, %tmp.131, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.227 = mul nsw i64 %tmp.22, %tmp.172, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp10 = add i64 %tmp.212, %tmp.217, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp11 = add i64 %tmp.222, %tmp.227, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.134 = trunc i64 %tmp11 to i63              ; [#uses=1 type=i63]
  %tmp.135 = trunc i64 %tmp10 to i63              ; [#uses=1 type=i63]
  %tmp.325 = add i63 %tmp.135, %tmp.134, !dbg !204 ; [#uses=1 type=i63] [debug line = 425:3]
  %tmp.326 = zext i63 %tmp.325 to i64, !dbg !204  ; [#uses=1 type=i64] [debug line = 425:3]
  %tmp.231 = shl nuw nsw i64 %tmp.326, 1, !dbg !204 ; [#uses=1 type=i64] [debug line = 425:3]
  %output.addr.46 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !204 ; [#uses=1 type=i64*] [debug line = 425:3]
  store i64 %tmp.231, i64* %output.addr.46, align 8, !dbg !204 ; [debug line = 425:3]
  %tmp.234 = mul nsw i64 %tmp.84, %tmp.84, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.239 = mul nsw i64 %tmp.50, %tmp.131, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.244 = mul nsw i64 %tmp.68, %tmp.114, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.249 = mul nsw i64 %tmp.34, %tmp.172, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.250 = add nsw i64 %tmp.244, %tmp.249, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.327 = trunc i64 %tmp.250 to i63, !dbg !205 ; [#uses=1 type=i63] [debug line = 430:3]
  %tmp.328 = zext i63 %tmp.327 to i64, !dbg !205  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.251 = shl nuw i64 %tmp.328, 1, !dbg !205   ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.252 = add nsw i64 %tmp.239, %tmp.251, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.329 = trunc i64 %tmp.252 to i63, !dbg !205 ; [#uses=1 type=i63] [debug line = 430:3]
  %tmp.330 = zext i63 %tmp.329 to i64, !dbg !205  ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.253 = shl nuw i64 %tmp.330, 1, !dbg !205   ; [#uses=1 type=i64] [debug line = 430:3]
  %tmp.254 = add nsw i64 %tmp.234, %tmp.253, !dbg !205 ; [#uses=1 type=i64] [debug line = 430:3]
  %output.addr.47 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !205 ; [#uses=1 type=i64*] [debug line = 430:3]
  store i64 %tmp.254, i64* %output.addr.47, align 8, !dbg !205 ; [debug line = 430:3]
  %tmp.259 = mul nsw i64 %tmp.84, %tmp.114, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.264 = mul nsw i64 %tmp.68, %tmp.131, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.269 = mul nsw i64 %tmp.50, %tmp.172, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp12 = add i64 %tmp.264, %tmp.269, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.271 = add i64 %tmp12, %tmp.259, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.331 = trunc i64 %tmp.271 to i63, !dbg !206 ; [#uses=1 type=i63] [debug line = 435:3]
  %tmp.332 = zext i63 %tmp.331 to i64, !dbg !206  ; [#uses=1 type=i64] [debug line = 435:3]
  %tmp.272 = shl nuw nsw i64 %tmp.332, 1, !dbg !206 ; [#uses=1 type=i64] [debug line = 435:3]
  %output.addr.48 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !206 ; [#uses=1 type=i64*] [debug line = 435:3]
  store i64 %tmp.272, i64* %output.addr.48, align 8, !dbg !206 ; [debug line = 435:3]
  %tmp.275 = mul nsw i64 %tmp.114, %tmp.114, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.280 = mul nsw i64 %tmp.84, %tmp.131, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.333 = sext i32 %tmp.171 to i63, !dbg !207  ; [#uses=3 type=i63] [debug line = 439:3]
  %tmp.334 = sext i32 %tmp.171 to i62, !dbg !207  ; [#uses=2 type=i62] [debug line = 439:3]
  %tmp.335 = mul i62 %tmp.302, %tmp.334, !dbg !207 ; [#uses=1 type=i62] [debug line = 439:3]
  %tmp.336 = zext i62 %tmp.335 to i63             ; [#uses=1 type=i63]
  %tmp.286 = shl nuw i63 %tmp.336, 1              ; [#uses=1 type=i63]
  %tmp.287 = add i64 %tmp.275, %tmp.280, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.337 = trunc i64 %tmp.287 to i63            ; [#uses=1 type=i63]
  %tmp.338 = add i63 %tmp.337, %tmp.286, !dbg !207 ; [#uses=1 type=i63] [debug line = 439:3]
  %tmp.339 = zext i63 %tmp.338 to i64, !dbg !207  ; [#uses=1 type=i64] [debug line = 439:3]
  %tmp.289 = shl nuw nsw i64 %tmp.339, 1, !dbg !207 ; [#uses=1 type=i64] [debug line = 439:3]
  %output.addr.49 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !207 ; [#uses=1 type=i64*] [debug line = 439:3]
  store i64 %tmp.289, i64* %output.addr.49, align 8, !dbg !207 ; [debug line = 439:3]
  %tmp.294 = mul nsw i64 %tmp.114, %tmp.131, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.299 = mul nsw i64 %tmp.84, %tmp.172, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.300 = add nsw i64 %tmp.294, %tmp.299, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.340 = trunc i64 %tmp.300 to i63, !dbg !208 ; [#uses=1 type=i63] [debug line = 443:3]
  %tmp.341 = zext i63 %tmp.340 to i64, !dbg !208  ; [#uses=1 type=i64] [debug line = 443:3]
  %tmp.301 = shl nuw nsw i64 %tmp.341, 1, !dbg !208 ; [#uses=1 type=i64] [debug line = 443:3]
  %output.addr.50 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !208 ; [#uses=1 type=i64*] [debug line = 443:3]
  store i64 %tmp.301, i64* %output.addr.50, align 8, !dbg !208 ; [debug line = 443:3]
  %tmp.304 = mul nsw i64 %tmp.131, %tmp.131, !dbg !209 ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.342 = sext i32 %tmp.113 to i62, !dbg !209  ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp.343 = mul i62 %tmp.342, %tmp.334, !dbg !209 ; [#uses=1 type=i62] [debug line = 446:3]
  %tmp.344 = zext i62 %tmp.343 to i64, !dbg !209  ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.310 = shl nuw i64 %tmp.344, 2, !dbg !209   ; [#uses=1 type=i64] [debug line = 446:3]
  %tmp.311 = add nsw i64 %tmp.304, %tmp.310, !dbg !209 ; [#uses=1 type=i64] [debug line = 446:3]
  %output.addr.51 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !209 ; [#uses=1 type=i64*] [debug line = 446:3]
  store i64 %tmp.311, i64* %output.addr.51, align 8, !dbg !209 ; [debug line = 446:3]
  %tmp.345 = sext i32 %tmp.130 to i63, !dbg !210  ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp.346 = mul i63 %tmp.345, %tmp.333, !dbg !210 ; [#uses=1 type=i63] [debug line = 449:3]
  %tmp.347 = zext i63 %tmp.346 to i64, !dbg !210  ; [#uses=1 type=i64] [debug line = 449:3]
  %tmp.317 = shl nuw i64 %tmp.347, 1, !dbg !210   ; [#uses=1 type=i64] [debug line = 449:3]
  %output.addr.52 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !210 ; [#uses=1 type=i64*] [debug line = 449:3]
  store i64 %tmp.317, i64* %output.addr.52, align 8, !dbg !210 ; [debug line = 449:3]
  %tmp.348 = mul i63 %tmp.333, %tmp.333, !dbg !211 ; [#uses=1 type=i63] [debug line = 451:3]
  %tmp.349 = zext i63 %tmp.348 to i64, !dbg !211  ; [#uses=1 type=i64] [debug line = 451:3]
  %tmp.321 = shl nuw i64 %tmp.349, 1, !dbg !211   ; [#uses=1 type=i64] [debug line = 451:3]
  %output.addr.53 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !211 ; [#uses=1 type=i64*] [debug line = 451:3]
  store i64 %tmp.321, i64* %output.addr.53, align 8, !dbg !211 ; [debug line = 451:3]
  ret void, !dbg !212                             ; [debug line = 452:1]
}

; [#uses=1]
define internal fastcc void @fsquare.2([10 x i64]* nocapture %output, [11 x i64]* nocapture %in) {
  %t = alloca [19 x i64], align 16                ; [#uses=26 type=[19 x i64]*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !220 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !222 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !223), !dbg !225 ; [debug line = 465:7] [debug variable = t]
  call fastcc void @fsquare_inner([19 x i64]* %t, [11 x i64]* %in), !dbg !226 ; [debug line = 466:3]
  %t.addr.1 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !227), !dbg !229 ; [debug line = 229:34@470:3] [debug variable = output]
  %output.assign.addr.5 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !230 ; [#uses=1 type=i64*] [debug line = 234:3@470:3]
  %output.assign.load.4 = load i64* %output.assign.addr.5, align 16, !dbg !230 ; [#uses=3 type=i64] [debug line = 234:3@470:3]
  %tmp.i1 = shl i64 %output.assign.load.4, 4, !dbg !230 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %output.assign.addr.6 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !230 ; [#uses=2 type=i64*] [debug line = 234:3@470:3]
  %output.assign.load.5 = load i64* %output.assign.addr.6, align 16, !dbg !230 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %tmp.323.i = shl i64 %output.assign.load.4, 1, !dbg !232 ; [#uses=1 type=i64] [debug line = 235:3@470:3]
  %tmp = add i64 %output.assign.load.4, %output.assign.load.5, !dbg !233 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp3 = add i64 %tmp.323.i, %tmp.i1, !dbg !233  ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp.325.i = add nsw i64 %tmp, %tmp3, !dbg !233 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  store i64 %tmp.325.i, i64* %output.assign.addr.6, align 16, !dbg !233 ; [debug line = 236:3@470:3]
  %output.assign.addr.7 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !234 ; [#uses=1 type=i64*] [debug line = 237:3@470:3]
  %output.assign.load.6 = load i64* %output.assign.addr.7, align 8, !dbg !234 ; [#uses=3 type=i64] [debug line = 237:3@470:3]
  %tmp.326.i = shl i64 %output.assign.load.6, 4, !dbg !234 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %output.assign.addr.8 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !234 ; [#uses=2 type=i64*] [debug line = 237:3@470:3]
  %output.assign.load.7 = load i64* %output.assign.addr.8, align 8, !dbg !234 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %tmp.328.i = shl i64 %output.assign.load.6, 1, !dbg !235 ; [#uses=1 type=i64] [debug line = 238:3@470:3]
  %tmp4 = add i64 %output.assign.load.6, %output.assign.load.7, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp5 = add i64 %tmp.328.i, %tmp.326.i, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp.330.i = add nsw i64 %tmp4, %tmp5, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  store i64 %tmp.330.i, i64* %output.assign.addr.8, align 8, !dbg !236 ; [debug line = 239:3@470:3]
  %output.assign.addr.9 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !237 ; [#uses=1 type=i64*] [debug line = 240:3@470:3]
  %output.assign.load.8 = load i64* %output.assign.addr.9, align 16, !dbg !237 ; [#uses=3 type=i64] [debug line = 240:3@470:3]
  %tmp.331.i = shl i64 %output.assign.load.8, 4, !dbg !237 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %output.assign.addr.10 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !237 ; [#uses=2 type=i64*] [debug line = 240:3@470:3]
  %output.assign.load.9 = load i64* %output.assign.addr.10, align 16, !dbg !237 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %tmp.333.i = shl i64 %output.assign.load.8, 1, !dbg !238 ; [#uses=1 type=i64] [debug line = 241:3@470:3]
  %tmp6 = add i64 %output.assign.load.8, %output.assign.load.9, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp7 = add i64 %tmp.333.i, %tmp.331.i, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp.335.i = add nsw i64 %tmp6, %tmp7, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  store i64 %tmp.335.i, i64* %output.assign.addr.10, align 16, !dbg !239 ; [debug line = 242:3@470:3]
  %output.assign.addr.11 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !240 ; [#uses=1 type=i64*] [debug line = 243:3@470:3]
  %output.assign.load.10 = load i64* %output.assign.addr.11, align 8, !dbg !240 ; [#uses=3 type=i64] [debug line = 243:3@470:3]
  %tmp.336.i = shl i64 %output.assign.load.10, 4, !dbg !240 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %output.assign.addr.12 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !240 ; [#uses=2 type=i64*] [debug line = 243:3@470:3]
  %output.assign.load.11 = load i64* %output.assign.addr.12, align 8, !dbg !240 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %tmp.338.i = shl i64 %output.assign.load.10, 1, !dbg !241 ; [#uses=1 type=i64] [debug line = 244:3@470:3]
  %tmp8 = add i64 %output.assign.load.10, %output.assign.load.11, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp9 = add i64 %tmp.338.i, %tmp.336.i, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp.340.i = add nsw i64 %tmp8, %tmp9, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  store i64 %tmp.340.i, i64* %output.assign.addr.12, align 8, !dbg !242 ; [debug line = 245:3@470:3]
  %output.assign.addr.13 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !243 ; [#uses=1 type=i64*] [debug line = 246:3@470:3]
  %output.assign.load.12 = load i64* %output.assign.addr.13, align 16, !dbg !243 ; [#uses=3 type=i64] [debug line = 246:3@470:3]
  %tmp.341.i = shl i64 %output.assign.load.12, 4, !dbg !243 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %output.assign.addr.14 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !243 ; [#uses=2 type=i64*] [debug line = 246:3@470:3]
  %output.assign.load.13 = load i64* %output.assign.addr.14, align 16, !dbg !243 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %tmp.343.i = shl i64 %output.assign.load.12, 1, !dbg !244 ; [#uses=1 type=i64] [debug line = 247:3@470:3]
  %tmp10 = add i64 %output.assign.load.12, %output.assign.load.13, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp11 = add i64 %tmp.343.i, %tmp.341.i, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp.345.i = add nsw i64 %tmp10, %tmp11, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  store i64 %tmp.345.i, i64* %output.assign.addr.14, align 16, !dbg !245 ; [debug line = 248:3@470:3]
  %output.assign.addr.15 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !246 ; [#uses=1 type=i64*] [debug line = 249:3@470:3]
  %output.assign.load.14 = load i64* %output.assign.addr.15, align 8, !dbg !246 ; [#uses=3 type=i64] [debug line = 249:3@470:3]
  %tmp.346.i = shl i64 %output.assign.load.14, 4, !dbg !246 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %output.assign.addr.16 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !246 ; [#uses=2 type=i64*] [debug line = 249:3@470:3]
  %output.assign.load.15 = load i64* %output.assign.addr.16, align 8, !dbg !246 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %tmp.348.i = shl i64 %output.assign.load.14, 1, !dbg !247 ; [#uses=1 type=i64] [debug line = 250:3@470:3]
  %tmp12 = add i64 %output.assign.load.14, %output.assign.load.15, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp13 = add i64 %tmp.348.i, %tmp.346.i, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp.350.i = add nsw i64 %tmp12, %tmp13, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  store i64 %tmp.350.i, i64* %output.assign.addr.16, align 8, !dbg !248 ; [debug line = 251:3@470:3]
  %output.assign.addr.17 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !249 ; [#uses=1 type=i64*] [debug line = 252:3@470:3]
  %output.assign.load.16 = load i64* %output.assign.addr.17, align 16, !dbg !249 ; [#uses=3 type=i64] [debug line = 252:3@470:3]
  %tmp.351.i = shl i64 %output.assign.load.16, 4, !dbg !249 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %output.assign.addr.18 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !249 ; [#uses=2 type=i64*] [debug line = 252:3@470:3]
  %output.assign.load.17 = load i64* %output.assign.addr.18, align 16, !dbg !249 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %tmp.353.i = shl i64 %output.assign.load.16, 1, !dbg !250 ; [#uses=1 type=i64] [debug line = 253:3@470:3]
  %tmp14 = add i64 %output.assign.load.16, %output.assign.load.17, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp15 = add i64 %tmp.353.i, %tmp.351.i, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp.355.i = add nsw i64 %tmp14, %tmp15, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  store i64 %tmp.355.i, i64* %output.assign.addr.18, align 16, !dbg !251 ; [debug line = 254:3@470:3]
  %output.assign.addr.19 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !252 ; [#uses=1 type=i64*] [debug line = 255:3@470:3]
  %output.assign.load.18 = load i64* %output.assign.addr.19, align 8, !dbg !252 ; [#uses=3 type=i64] [debug line = 255:3@470:3]
  %tmp.356.i = shl i64 %output.assign.load.18, 4, !dbg !252 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %output.assign.addr.20 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !252 ; [#uses=2 type=i64*] [debug line = 255:3@470:3]
  %output.assign.load.19 = load i64* %output.assign.addr.20, align 8, !dbg !252 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %tmp.358.i = shl i64 %output.assign.load.18, 1, !dbg !253 ; [#uses=1 type=i64] [debug line = 256:3@470:3]
  %tmp16 = add i64 %output.assign.load.18, %output.assign.load.19, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp17 = add i64 %tmp.358.i, %tmp.356.i, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp.360.i = add nsw i64 %tmp16, %tmp17, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  store i64 %tmp.360.i, i64* %output.assign.addr.20, align 8, !dbg !254 ; [debug line = 257:3@470:3]
  %output.assign.addr.21 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !255 ; [#uses=1 type=i64*] [debug line = 258:3@470:3]
  %output.assign.load.20 = load i64* %output.assign.addr.21, align 16, !dbg !255 ; [#uses=3 type=i64] [debug line = 258:3@470:3]
  %tmp.361.i = shl i64 %output.assign.load.20, 4, !dbg !255 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %t.load.1 = load i64* %t.addr.1, align 16, !dbg !255 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %tmp.363.i = shl i64 %output.assign.load.20, 1, !dbg !256 ; [#uses=1 type=i64] [debug line = 259:3@470:3]
  %tmp18 = add i64 %output.assign.load.20, %t.load.1, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp19 = add i64 %tmp.363.i, %tmp.361.i, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp.365.i = add nsw i64 %tmp18, %tmp19, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  store i64 %tmp.365.i, i64* %t.addr.1, align 16, !dbg !257 ; [debug line = 260:3@470:3]
  %output.assign.addr.22 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !258), !dbg !260 ; [debug line = 302:40@471:3] [debug variable = output]
  %output.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !261 ; [#uses=3 type=i64*] [debug line = 305:3@471:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !261 ; [debug line = 305:3@471:3]
  br label %1, !dbg !263                          ; [debug line = 307:8@471:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i4]
  %tmp.i = icmp ult i4 %i.i, -6, !dbg !263        ; [#uses=1 type=i1] [debug line = 307:8@471:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %3, label %freduce_coefficients.exit, !dbg !263 ; [debug line = 307:8@471:3]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i4 %i.i to i64, !dbg !265        ; [#uses=1 type=i64] [debug line = 308:17@471:3]
  %output.assign.addr.1 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp..i, !dbg !265 ; [#uses=2 type=i64*] [debug line = 308:17@471:3]
  %v.assign = load i64* %output.assign.addr.1, align 16, !dbg !265 ; [#uses=3 type=i64] [debug line = 308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !267), !dbg !268 ; [debug line = 271:24@308:17@471:3] [debug variable = v]
  %tmp.i.i = lshr i64 %v.assign, 63, !dbg !269    ; [#uses=1 type=i64] [debug line = 274:62@308:17@471:3]
  %highword1.i.i = trunc i64 %tmp.i.i to i1, !dbg !271 ; [#uses=1 type=i1] [debug line = 276:50@308:17@471:3]
  %tmp..i.i.cast = select i1 %highword1.i.i, i64 67108863, i64 0, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.1064.i.i = add nsw i64 %tmp..i.i.cast, %v.assign, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.396.i.i = lshr i64 %tmp.1064.i.i, 26, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.397.i.i = trunc i64 %tmp.396.i.i to i38, !dbg !272 ; [#uses=1 type=i38] [debug line = 280:3@308:17@471:3]
  %over = sext i38 %tmp.397.i.i to i64, !dbg !272 ; [#uses=2 type=i64] [debug line = 280:3@308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !273), !dbg !265 ; [debug line = 308:17@471:3] [debug variable = over]
  %tmp.366.i = shl nsw i64 %over, 26, !dbg !274   ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  %tmp.367.i = sub nsw i64 %v.assign, %tmp.366.i, !dbg !274 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  store i64 %tmp.367.i, i64* %output.assign.addr.1, align 16, !dbg !274 ; [debug line = 313:5@471:3]
  %tmp.368.i = or i4 %i.i, 1, !dbg !275           ; [#uses=1 type=i4] [debug line = 314:5@471:3]
  %tmp.369.i = zext i4 %tmp.368.i to i64, !dbg !275 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %output.assign.addr.2 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.369.i, !dbg !275 ; [#uses=2 type=i64*] [debug line = 314:5@471:3]
  %output.assign.load = load i64* %output.assign.addr.2, align 8, !dbg !275 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %v.assign.1 = add nsw i64 %over, %output.assign.load, !dbg !275 ; [#uses=3 type=i64] [debug line = 314:5@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.1}, i64 0, metadata !276), !dbg !278 ; [debug line = 287:24@322:12@471:3] [debug variable = v]
  %tmp.i8.i = lshr i64 %v.assign.1, 63, !dbg !279 ; [#uses=1 type=i64] [debug line = 290:62@322:12@471:3]
  %highword1.i9.i = trunc i64 %tmp.i8.i to i1, !dbg !281 ; [#uses=1 type=i1] [debug line = 292:50@322:12@471:3]
  %tmp..i10.i.cast = select i1 %highword1.i9.i, i64 33554431, i64 0, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.1066.i.i = add nsw i64 %v.assign.1, %tmp..i10.i.cast, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.398.i.i = lshr i64 %tmp.1066.i.i, 25, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.399.i.i = trunc i64 %tmp.398.i.i to i39, !dbg !282 ; [#uses=1 type=i39] [debug line = 296:3@322:12@471:3]
  %over.1 = sext i39 %tmp.399.i.i to i64, !dbg !282 ; [#uses=2 type=i64] [debug line = 296:3@322:12@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over.1}, i64 0, metadata !273), !dbg !277 ; [debug line = 322:12@471:3] [debug variable = over]
  %tmp.371.i = shl nsw i64 %over.1, 25, !dbg !283 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  %tmp.372.i = sub nsw i64 %v.assign.1, %tmp.371.i, !dbg !283 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  store i64 %tmp.372.i, i64* %output.assign.addr.2, align 8, !dbg !283 ; [debug line = 323:5@471:3]
  %i = add i4 %i.i, 2, !dbg !284                  ; [#uses=2 type=i4] [debug line = 324:5@471:3]
  %tmp.373.i = zext i4 %i to i64, !dbg !284       ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %output.assign.addr.3 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.373.i, !dbg !284 ; [#uses=2 type=i64*] [debug line = 324:5@471:3]
  %output.assign.load.1 = load i64* %output.assign.addr.3, align 16, !dbg !284 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %tmp.374.i = add nsw i64 %over.1, %output.assign.load.1, !dbg !284 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  store i64 %tmp.374.i, i64* %output.assign.addr.3, align 16, !dbg !284 ; [debug line = 324:5@471:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !285), !dbg !286 ; [debug line = 307:23@471:3] [debug variable = i]
  br label %1, !dbg !286                          ; [debug line = 307:23@471:3]

freduce_coefficients.exit:                        ; preds = %1
  %output.assign.load.2 = load i64* %output.assign.addr, align 16, !dbg !287 ; [#uses=3 type=i64] [debug line = 327:3@471:3]
  %tmp.375.i = shl i64 %output.assign.load.2, 4, !dbg !287 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %output.assign.load.22 = load i64* %output.assign.addr.22, align 16, !dbg !287 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %tmp.377.i = shl i64 %output.assign.load.2, 1, !dbg !288 ; [#uses=1 type=i64] [debug line = 328:3@471:3]
  %tmp21 = add i64 %output.assign.load.2, %output.assign.load.22, !dbg !289 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %tmp22 = add i64 %tmp.377.i, %tmp.375.i, !dbg !289 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %v.assign.2 = add nsw i64 %tmp21, %tmp22, !dbg !289 ; [#uses=3 type=i64] [debug line = 329:3@471:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !290 ; [debug line = 331:3@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.2}, i64 0, metadata !291), !dbg !294 ; [debug line = 271:24@336:17@471:3] [debug variable = v]
  %tmp.i11.i = lshr i64 %v.assign.2, 63, !dbg !295 ; [#uses=1 type=i64] [debug line = 274:62@336:17@471:3]
  %highword1.i12.i = trunc i64 %tmp.i11.i to i1, !dbg !296 ; [#uses=1 type=i1] [debug line = 276:50@336:17@471:3]
  %tmp..i13.i.cast = select i1 %highword1.i12.i, i64 67108863, i64 0, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.1064.i14.i = add nsw i64 %v.assign.2, %tmp..i13.i.cast, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.396.i15.i = lshr i64 %tmp.1064.i14.i, 26, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.397.i16.i = trunc i64 %tmp.396.i15.i to i38, !dbg !297 ; [#uses=1 type=i38] [debug line = 280:3@336:17@471:3]
  %over.2 = sext i38 %tmp.397.i16.i to i64, !dbg !297 ; [#uses=2 type=i64] [debug line = 280:3@336:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over.2}, i64 0, metadata !298), !dbg !292 ; [debug line = 336:17@471:3] [debug variable = over]
  %tmp.380.i = shl nsw i64 %over.2, 26, !dbg !299 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  %tmp.381.i = sub nsw i64 %v.assign.2, %tmp.380.i, !dbg !299 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  store i64 %tmp.381.i, i64* %output.assign.addr.22, align 16, !dbg !299 ; [debug line = 337:5@471:3]
  %output.assign.addr.4 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !300 ; [#uses=2 type=i64*] [debug line = 338:5@471:3]
  %output.assign.load.3 = load i64* %output.assign.addr.4, align 8, !dbg !300 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  %tmp.382.i = add nsw i64 %over.2, %output.assign.load.3, !dbg !300 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  store i64 %tmp.382.i, i64* %output.assign.addr.4, align 8, !dbg !300 ; [debug line = 338:5@471:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !301), !dbg !306 ; [debug line = 59:20@473:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !307), !dbg !308 ; [debug line = 59:31@473:3] [debug variable = src]
  br label %4, !dbg !309                          ; [debug line = 61:6@473:3]

; <label>:4                                       ; preds = %6, %freduce_coefficients.exit
  %i.i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i.3, %6 ] ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i2, -6, !dbg !309   ; [#uses=1 type=i1] [debug line = 61:6@473:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.exit, label %6, !dbg !309 ; [debug line = 61:6@473:3]

; <label>:6                                       ; preds = %4
  %tmp.i3 = zext i4 %i.i2 to i64, !dbg !312       ; [#uses=2 type=i64] [debug line = 62:3@473:3]
  %src.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.i3, !dbg !312 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  %src.assign.load = load i64* %src.assign.addr, align 8, !dbg !312 ; [#uses=1 type=i64] [debug line = 62:3@473:3]
  %output.addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp.i3, !dbg !312 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  store i64 %src.assign.load, i64* %output.addr, align 8, !dbg !312 ; [debug line = 62:3@473:3]
  %i.3 = add i4 %i.i2, 1, !dbg !314               ; [#uses=1 type=i4] [debug line = 61:18@473:3]
  call void @llvm.dbg.value(metadata !{i4 %i.3}, i64 0, metadata !315), !dbg !314 ; [debug line = 61:18@473:3] [debug variable = i]
  br label %4, !dbg !314                          ; [debug line = 61:18@473:3]

_memcpy.exit:                                     ; preds = %4
  ret void, !dbg !316                             ; [debug line = 474:1]
}

; [#uses=37]
define internal fastcc void @fsquare.1([10 x i64]* nocapture %output, [10 x i64]* nocapture %in) {
  %t = alloca [19 x i64], align 16                ; [#uses=26 type=[19 x i64]*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !220 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !222 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !223), !dbg !225 ; [debug line = 465:7] [debug variable = t]
  call fastcc void @fsquare_inner.1([19 x i64]* %t, [10 x i64]* %in), !dbg !226 ; [debug line = 466:3]
  %t.addr.2 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !227), !dbg !229 ; [debug line = 229:34@470:3] [debug variable = output]
  %output.assign.addr.23 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !230 ; [#uses=1 type=i64*] [debug line = 234:3@470:3]
  %output.assign.load.23 = load i64* %output.assign.addr.23, align 16, !dbg !230 ; [#uses=3 type=i64] [debug line = 234:3@470:3]
  %tmp.i1 = shl i64 %output.assign.load.23, 4, !dbg !230 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %output.assign.addr.24 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !230 ; [#uses=2 type=i64*] [debug line = 234:3@470:3]
  %output.assign.load.24 = load i64* %output.assign.addr.24, align 16, !dbg !230 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %tmp.323.i = shl i64 %output.assign.load.23, 1, !dbg !232 ; [#uses=1 type=i64] [debug line = 235:3@470:3]
  %tmp = add i64 %output.assign.load.23, %output.assign.load.24, !dbg !233 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp3 = add i64 %tmp.323.i, %tmp.i1, !dbg !233  ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp.325.i = add nsw i64 %tmp, %tmp3, !dbg !233 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  store i64 %tmp.325.i, i64* %output.assign.addr.24, align 16, !dbg !233 ; [debug line = 236:3@470:3]
  %output.assign.addr.25 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !234 ; [#uses=1 type=i64*] [debug line = 237:3@470:3]
  %output.assign.load.25 = load i64* %output.assign.addr.25, align 8, !dbg !234 ; [#uses=3 type=i64] [debug line = 237:3@470:3]
  %tmp.326.i = shl i64 %output.assign.load.25, 4, !dbg !234 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %output.assign.addr.26 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !234 ; [#uses=2 type=i64*] [debug line = 237:3@470:3]
  %output.assign.load.26 = load i64* %output.assign.addr.26, align 8, !dbg !234 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %tmp.328.i = shl i64 %output.assign.load.25, 1, !dbg !235 ; [#uses=1 type=i64] [debug line = 238:3@470:3]
  %tmp4 = add i64 %output.assign.load.25, %output.assign.load.26, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp5 = add i64 %tmp.328.i, %tmp.326.i, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp.330.i = add nsw i64 %tmp4, %tmp5, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  store i64 %tmp.330.i, i64* %output.assign.addr.26, align 8, !dbg !236 ; [debug line = 239:3@470:3]
  %output.assign.addr.27 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !237 ; [#uses=1 type=i64*] [debug line = 240:3@470:3]
  %output.assign.load.27 = load i64* %output.assign.addr.27, align 16, !dbg !237 ; [#uses=3 type=i64] [debug line = 240:3@470:3]
  %tmp.331.i = shl i64 %output.assign.load.27, 4, !dbg !237 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %output.assign.addr.28 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !237 ; [#uses=2 type=i64*] [debug line = 240:3@470:3]
  %output.assign.load.28 = load i64* %output.assign.addr.28, align 16, !dbg !237 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %tmp.333.i = shl i64 %output.assign.load.27, 1, !dbg !238 ; [#uses=1 type=i64] [debug line = 241:3@470:3]
  %tmp6 = add i64 %output.assign.load.27, %output.assign.load.28, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp7 = add i64 %tmp.333.i, %tmp.331.i, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp.335.i = add nsw i64 %tmp6, %tmp7, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  store i64 %tmp.335.i, i64* %output.assign.addr.28, align 16, !dbg !239 ; [debug line = 242:3@470:3]
  %output.assign.addr.29 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !240 ; [#uses=1 type=i64*] [debug line = 243:3@470:3]
  %output.assign.load.29 = load i64* %output.assign.addr.29, align 8, !dbg !240 ; [#uses=3 type=i64] [debug line = 243:3@470:3]
  %tmp.336.i = shl i64 %output.assign.load.29, 4, !dbg !240 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %output.assign.addr.30 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !240 ; [#uses=2 type=i64*] [debug line = 243:3@470:3]
  %output.assign.load.30 = load i64* %output.assign.addr.30, align 8, !dbg !240 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %tmp.338.i = shl i64 %output.assign.load.29, 1, !dbg !241 ; [#uses=1 type=i64] [debug line = 244:3@470:3]
  %tmp8 = add i64 %output.assign.load.29, %output.assign.load.30, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp9 = add i64 %tmp.338.i, %tmp.336.i, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp.340.i = add nsw i64 %tmp8, %tmp9, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  store i64 %tmp.340.i, i64* %output.assign.addr.30, align 8, !dbg !242 ; [debug line = 245:3@470:3]
  %output.assign.addr.31 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !243 ; [#uses=1 type=i64*] [debug line = 246:3@470:3]
  %output.assign.load.31 = load i64* %output.assign.addr.31, align 16, !dbg !243 ; [#uses=3 type=i64] [debug line = 246:3@470:3]
  %tmp.341.i = shl i64 %output.assign.load.31, 4, !dbg !243 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %output.assign.addr.32 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !243 ; [#uses=2 type=i64*] [debug line = 246:3@470:3]
  %output.assign.load.32 = load i64* %output.assign.addr.32, align 16, !dbg !243 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %tmp.343.i = shl i64 %output.assign.load.31, 1, !dbg !244 ; [#uses=1 type=i64] [debug line = 247:3@470:3]
  %tmp10 = add i64 %output.assign.load.31, %output.assign.load.32, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp11 = add i64 %tmp.343.i, %tmp.341.i, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp.345.i = add nsw i64 %tmp10, %tmp11, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  store i64 %tmp.345.i, i64* %output.assign.addr.32, align 16, !dbg !245 ; [debug line = 248:3@470:3]
  %output.assign.addr.33 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !246 ; [#uses=1 type=i64*] [debug line = 249:3@470:3]
  %output.assign.load.33 = load i64* %output.assign.addr.33, align 8, !dbg !246 ; [#uses=3 type=i64] [debug line = 249:3@470:3]
  %tmp.346.i = shl i64 %output.assign.load.33, 4, !dbg !246 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %output.assign.addr.34 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !246 ; [#uses=2 type=i64*] [debug line = 249:3@470:3]
  %output.assign.load.34 = load i64* %output.assign.addr.34, align 8, !dbg !246 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %tmp.348.i = shl i64 %output.assign.load.33, 1, !dbg !247 ; [#uses=1 type=i64] [debug line = 250:3@470:3]
  %tmp12 = add i64 %output.assign.load.33, %output.assign.load.34, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp13 = add i64 %tmp.348.i, %tmp.346.i, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp.350.i = add nsw i64 %tmp12, %tmp13, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  store i64 %tmp.350.i, i64* %output.assign.addr.34, align 8, !dbg !248 ; [debug line = 251:3@470:3]
  %output.assign.addr.35 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !249 ; [#uses=1 type=i64*] [debug line = 252:3@470:3]
  %output.assign.load.35 = load i64* %output.assign.addr.35, align 16, !dbg !249 ; [#uses=3 type=i64] [debug line = 252:3@470:3]
  %tmp.351.i = shl i64 %output.assign.load.35, 4, !dbg !249 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %output.assign.addr.36 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !249 ; [#uses=2 type=i64*] [debug line = 252:3@470:3]
  %output.assign.load.36 = load i64* %output.assign.addr.36, align 16, !dbg !249 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %tmp.353.i = shl i64 %output.assign.load.35, 1, !dbg !250 ; [#uses=1 type=i64] [debug line = 253:3@470:3]
  %tmp14 = add i64 %output.assign.load.35, %output.assign.load.36, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp15 = add i64 %tmp.353.i, %tmp.351.i, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp.355.i = add nsw i64 %tmp14, %tmp15, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  store i64 %tmp.355.i, i64* %output.assign.addr.36, align 16, !dbg !251 ; [debug line = 254:3@470:3]
  %output.assign.addr.37 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !252 ; [#uses=1 type=i64*] [debug line = 255:3@470:3]
  %output.assign.load.37 = load i64* %output.assign.addr.37, align 8, !dbg !252 ; [#uses=3 type=i64] [debug line = 255:3@470:3]
  %tmp.356.i = shl i64 %output.assign.load.37, 4, !dbg !252 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %output.assign.addr.38 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !252 ; [#uses=2 type=i64*] [debug line = 255:3@470:3]
  %output.assign.load.38 = load i64* %output.assign.addr.38, align 8, !dbg !252 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %tmp.358.i = shl i64 %output.assign.load.37, 1, !dbg !253 ; [#uses=1 type=i64] [debug line = 256:3@470:3]
  %tmp16 = add i64 %output.assign.load.37, %output.assign.load.38, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp17 = add i64 %tmp.358.i, %tmp.356.i, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp.360.i = add nsw i64 %tmp16, %tmp17, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  store i64 %tmp.360.i, i64* %output.assign.addr.38, align 8, !dbg !254 ; [debug line = 257:3@470:3]
  %output.assign.addr.39 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !255 ; [#uses=1 type=i64*] [debug line = 258:3@470:3]
  %output.assign.load.39 = load i64* %output.assign.addr.39, align 16, !dbg !255 ; [#uses=3 type=i64] [debug line = 258:3@470:3]
  %tmp.361.i = shl i64 %output.assign.load.39, 4, !dbg !255 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %t.load.2 = load i64* %t.addr.2, align 16, !dbg !255 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %tmp.363.i = shl i64 %output.assign.load.39, 1, !dbg !256 ; [#uses=1 type=i64] [debug line = 259:3@470:3]
  %tmp18 = add i64 %output.assign.load.39, %t.load.2, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp19 = add i64 %tmp.363.i, %tmp.361.i, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp.365.i = add nsw i64 %tmp18, %tmp19, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  store i64 %tmp.365.i, i64* %t.addr.2, align 16, !dbg !257 ; [debug line = 260:3@470:3]
  %output.assign.addr.40 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !258), !dbg !260 ; [debug line = 302:40@471:3] [debug variable = output]
  %output.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !261 ; [#uses=3 type=i64*] [debug line = 305:3@471:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !261 ; [debug line = 305:3@471:3]
  br label %1, !dbg !263                          ; [debug line = 307:8@471:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i4]
  %tmp.i = icmp ult i4 %i.i, -6, !dbg !263        ; [#uses=1 type=i1] [debug line = 307:8@471:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %3, label %freduce_coefficients.exit, !dbg !263 ; [debug line = 307:8@471:3]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i4 %i.i to i64, !dbg !265        ; [#uses=1 type=i64] [debug line = 308:17@471:3]
  %output.assign.addr.5 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp..i, !dbg !265 ; [#uses=2 type=i64*] [debug line = 308:17@471:3]
  %v.assign = load i64* %output.assign.addr.5, align 16, !dbg !265 ; [#uses=3 type=i64] [debug line = 308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !267), !dbg !268 ; [debug line = 271:24@308:17@471:3] [debug variable = v]
  %tmp.i.i = lshr i64 %v.assign, 63, !dbg !269    ; [#uses=1 type=i64] [debug line = 274:62@308:17@471:3]
  %highword1.i.i = trunc i64 %tmp.i.i to i1, !dbg !271 ; [#uses=1 type=i1] [debug line = 276:50@308:17@471:3]
  %tmp..i.i.cast = select i1 %highword1.i.i, i64 67108863, i64 0, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.1064.i.i = add nsw i64 %tmp..i.i.cast, %v.assign, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.396.i.i = lshr i64 %tmp.1064.i.i, 26, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.397.i.i = trunc i64 %tmp.396.i.i to i38, !dbg !272 ; [#uses=1 type=i38] [debug line = 280:3@308:17@471:3]
  %over = sext i38 %tmp.397.i.i to i64, !dbg !272 ; [#uses=2 type=i64] [debug line = 280:3@308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !273), !dbg !265 ; [debug line = 308:17@471:3] [debug variable = over]
  %tmp.366.i = shl nsw i64 %over, 26, !dbg !274   ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  %tmp.367.i = sub nsw i64 %v.assign, %tmp.366.i, !dbg !274 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  store i64 %tmp.367.i, i64* %output.assign.addr.5, align 16, !dbg !274 ; [debug line = 313:5@471:3]
  %tmp.368.i = or i4 %i.i, 1, !dbg !275           ; [#uses=1 type=i4] [debug line = 314:5@471:3]
  %tmp.369.i = zext i4 %tmp.368.i to i64, !dbg !275 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %output.assign.addr.6 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.369.i, !dbg !275 ; [#uses=2 type=i64*] [debug line = 314:5@471:3]
  %output.assign.load = load i64* %output.assign.addr.6, align 8, !dbg !275 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %v.assign.3 = add nsw i64 %over, %output.assign.load, !dbg !275 ; [#uses=3 type=i64] [debug line = 314:5@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.3}, i64 0, metadata !276), !dbg !278 ; [debug line = 287:24@322:12@471:3] [debug variable = v]
  %tmp.i8.i = lshr i64 %v.assign.3, 63, !dbg !279 ; [#uses=1 type=i64] [debug line = 290:62@322:12@471:3]
  %highword1.i9.i = trunc i64 %tmp.i8.i to i1, !dbg !281 ; [#uses=1 type=i1] [debug line = 292:50@322:12@471:3]
  %tmp..i10.i.cast = select i1 %highword1.i9.i, i64 33554431, i64 0, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.1066.i.i = add nsw i64 %v.assign.3, %tmp..i10.i.cast, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.398.i.i = lshr i64 %tmp.1066.i.i, 25, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.399.i.i = trunc i64 %tmp.398.i.i to i39, !dbg !282 ; [#uses=1 type=i39] [debug line = 296:3@322:12@471:3]
  %over.3 = sext i39 %tmp.399.i.i to i64, !dbg !282 ; [#uses=2 type=i64] [debug line = 296:3@322:12@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over.3}, i64 0, metadata !273), !dbg !277 ; [debug line = 322:12@471:3] [debug variable = over]
  %tmp.371.i = shl nsw i64 %over.3, 25, !dbg !283 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  %tmp.372.i = sub nsw i64 %v.assign.3, %tmp.371.i, !dbg !283 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  store i64 %tmp.372.i, i64* %output.assign.addr.6, align 8, !dbg !283 ; [debug line = 323:5@471:3]
  %i = add i4 %i.i, 2, !dbg !284                  ; [#uses=2 type=i4] [debug line = 324:5@471:3]
  %tmp.373.i = zext i4 %i to i64, !dbg !284       ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %output.assign.addr.7 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.373.i, !dbg !284 ; [#uses=2 type=i64*] [debug line = 324:5@471:3]
  %output.assign.load.4 = load i64* %output.assign.addr.7, align 16, !dbg !284 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %tmp.374.i = add nsw i64 %over.3, %output.assign.load.4, !dbg !284 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  store i64 %tmp.374.i, i64* %output.assign.addr.7, align 16, !dbg !284 ; [debug line = 324:5@471:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !285), !dbg !286 ; [debug line = 307:23@471:3] [debug variable = i]
  br label %1, !dbg !286                          ; [debug line = 307:23@471:3]

freduce_coefficients.exit:                        ; preds = %1
  %output.assign.load.5 = load i64* %output.assign.addr, align 16, !dbg !287 ; [#uses=3 type=i64] [debug line = 327:3@471:3]
  %tmp.375.i = shl i64 %output.assign.load.5, 4, !dbg !287 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %output.assign.load.41 = load i64* %output.assign.addr.40, align 16, !dbg !287 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %tmp.377.i = shl i64 %output.assign.load.5, 1, !dbg !288 ; [#uses=1 type=i64] [debug line = 328:3@471:3]
  %tmp21 = add i64 %output.assign.load.5, %output.assign.load.41, !dbg !289 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %tmp22 = add i64 %tmp.377.i, %tmp.375.i, !dbg !289 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %v.assign.4 = add nsw i64 %tmp21, %tmp22, !dbg !289 ; [#uses=3 type=i64] [debug line = 329:3@471:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !290 ; [debug line = 331:3@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.4}, i64 0, metadata !291), !dbg !294 ; [debug line = 271:24@336:17@471:3] [debug variable = v]
  %tmp.i11.i = lshr i64 %v.assign.4, 63, !dbg !295 ; [#uses=1 type=i64] [debug line = 274:62@336:17@471:3]
  %highword1.i12.i = trunc i64 %tmp.i11.i to i1, !dbg !296 ; [#uses=1 type=i1] [debug line = 276:50@336:17@471:3]
  %tmp..i13.i.cast = select i1 %highword1.i12.i, i64 67108863, i64 0, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.1064.i14.i = add nsw i64 %v.assign.4, %tmp..i13.i.cast, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.396.i15.i = lshr i64 %tmp.1064.i14.i, 26, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.397.i16.i = trunc i64 %tmp.396.i15.i to i38, !dbg !297 ; [#uses=1 type=i38] [debug line = 280:3@336:17@471:3]
  %over.4 = sext i38 %tmp.397.i16.i to i64, !dbg !297 ; [#uses=2 type=i64] [debug line = 280:3@336:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over.4}, i64 0, metadata !298), !dbg !292 ; [debug line = 336:17@471:3] [debug variable = over]
  %tmp.380.i = shl nsw i64 %over.4, 26, !dbg !299 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  %tmp.381.i = sub nsw i64 %v.assign.4, %tmp.380.i, !dbg !299 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  store i64 %tmp.381.i, i64* %output.assign.addr.40, align 16, !dbg !299 ; [debug line = 337:5@471:3]
  %output.assign.addr.8 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !300 ; [#uses=2 type=i64*] [debug line = 338:5@471:3]
  %output.assign.load.6 = load i64* %output.assign.addr.8, align 8, !dbg !300 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  %tmp.382.i = add nsw i64 %over.4, %output.assign.load.6, !dbg !300 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  store i64 %tmp.382.i, i64* %output.assign.addr.8, align 8, !dbg !300 ; [debug line = 338:5@471:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !301), !dbg !306 ; [debug line = 59:20@473:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !307), !dbg !308 ; [debug line = 59:31@473:3] [debug variable = src]
  br label %4, !dbg !309                          ; [debug line = 61:6@473:3]

; <label>:4                                       ; preds = %6, %freduce_coefficients.exit
  %i.i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i.4, %6 ] ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i2, -6, !dbg !309   ; [#uses=1 type=i1] [debug line = 61:6@473:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.exit, label %6, !dbg !309 ; [debug line = 61:6@473:3]

; <label>:6                                       ; preds = %4
  %tmp.i3 = zext i4 %i.i2 to i64, !dbg !312       ; [#uses=2 type=i64] [debug line = 62:3@473:3]
  %src.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.i3, !dbg !312 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  %src.assign.load = load i64* %src.assign.addr, align 8, !dbg !312 ; [#uses=1 type=i64] [debug line = 62:3@473:3]
  %output.addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp.i3, !dbg !312 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  store i64 %src.assign.load, i64* %output.addr, align 8, !dbg !312 ; [debug line = 62:3@473:3]
  %i.4 = add i4 %i.i2, 1, !dbg !314               ; [#uses=1 type=i4] [debug line = 61:18@473:3]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !315), !dbg !314 ; [debug line = 61:18@473:3] [debug variable = i]
  br label %4, !dbg !314                          ; [debug line = 61:18@473:3]

_memcpy.exit:                                     ; preds = %4
  ret void, !dbg !316                             ; [debug line = 474:1]
}

; [#uses=4]
define internal fastcc void @fsquare([19 x i64]* nocapture %output, [19 x i64]* nocapture %in) {
  %t = alloca [19 x i64], align 16                ; [#uses=26 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !317), !dbg !318 ; [debug line = 462:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in}, i64 0, metadata !319), !dbg !320 ; [debug line = 462:35] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !220 ; [debug line = 463:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !222 ; [debug line = 464:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !223), !dbg !225 ; [debug line = 465:7] [debug variable = t]
  call fastcc void @fsquare_inner.2([19 x i64]* %t, [19 x i64]* %in), !dbg !226 ; [debug line = 466:3]
  %t.addr.3 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !227), !dbg !229 ; [debug line = 229:34@470:3] [debug variable = output]
  %output.assign.addr.41 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !230 ; [#uses=1 type=i64*] [debug line = 234:3@470:3]
  %output.assign.load.42 = load i64* %output.assign.addr.41, align 16, !dbg !230 ; [#uses=3 type=i64] [debug line = 234:3@470:3]
  %tmp.i1 = shl i64 %output.assign.load.42, 4, !dbg !230 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %output.assign.addr.42 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !230 ; [#uses=2 type=i64*] [debug line = 234:3@470:3]
  %output.assign.load.43 = load i64* %output.assign.addr.42, align 16, !dbg !230 ; [#uses=1 type=i64] [debug line = 234:3@470:3]
  %tmp.323.i = shl i64 %output.assign.load.42, 1, !dbg !232 ; [#uses=1 type=i64] [debug line = 235:3@470:3]
  %tmp = add i64 %output.assign.load.42, %output.assign.load.43, !dbg !233 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp3 = add i64 %tmp.323.i, %tmp.i1, !dbg !233  ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  %tmp.325.i = add nsw i64 %tmp, %tmp3, !dbg !233 ; [#uses=1 type=i64] [debug line = 236:3@470:3]
  store i64 %tmp.325.i, i64* %output.assign.addr.42, align 16, !dbg !233 ; [debug line = 236:3@470:3]
  %output.assign.addr.43 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !234 ; [#uses=1 type=i64*] [debug line = 237:3@470:3]
  %output.assign.load.44 = load i64* %output.assign.addr.43, align 8, !dbg !234 ; [#uses=3 type=i64] [debug line = 237:3@470:3]
  %tmp.326.i = shl i64 %output.assign.load.44, 4, !dbg !234 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %output.assign.addr.44 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !234 ; [#uses=2 type=i64*] [debug line = 237:3@470:3]
  %output.assign.load.45 = load i64* %output.assign.addr.44, align 8, !dbg !234 ; [#uses=1 type=i64] [debug line = 237:3@470:3]
  %tmp.328.i = shl i64 %output.assign.load.44, 1, !dbg !235 ; [#uses=1 type=i64] [debug line = 238:3@470:3]
  %tmp4 = add i64 %output.assign.load.44, %output.assign.load.45, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp5 = add i64 %tmp.328.i, %tmp.326.i, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  %tmp.330.i = add nsw i64 %tmp4, %tmp5, !dbg !236 ; [#uses=1 type=i64] [debug line = 239:3@470:3]
  store i64 %tmp.330.i, i64* %output.assign.addr.44, align 8, !dbg !236 ; [debug line = 239:3@470:3]
  %output.assign.addr.45 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !237 ; [#uses=1 type=i64*] [debug line = 240:3@470:3]
  %output.assign.load.46 = load i64* %output.assign.addr.45, align 16, !dbg !237 ; [#uses=3 type=i64] [debug line = 240:3@470:3]
  %tmp.331.i = shl i64 %output.assign.load.46, 4, !dbg !237 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %output.assign.addr.46 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !237 ; [#uses=2 type=i64*] [debug line = 240:3@470:3]
  %output.assign.load.47 = load i64* %output.assign.addr.46, align 16, !dbg !237 ; [#uses=1 type=i64] [debug line = 240:3@470:3]
  %tmp.333.i = shl i64 %output.assign.load.46, 1, !dbg !238 ; [#uses=1 type=i64] [debug line = 241:3@470:3]
  %tmp6 = add i64 %output.assign.load.46, %output.assign.load.47, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp7 = add i64 %tmp.333.i, %tmp.331.i, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  %tmp.335.i = add nsw i64 %tmp6, %tmp7, !dbg !239 ; [#uses=1 type=i64] [debug line = 242:3@470:3]
  store i64 %tmp.335.i, i64* %output.assign.addr.46, align 16, !dbg !239 ; [debug line = 242:3@470:3]
  %output.assign.addr.47 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !240 ; [#uses=1 type=i64*] [debug line = 243:3@470:3]
  %output.assign.load.48 = load i64* %output.assign.addr.47, align 8, !dbg !240 ; [#uses=3 type=i64] [debug line = 243:3@470:3]
  %tmp.336.i = shl i64 %output.assign.load.48, 4, !dbg !240 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %output.assign.addr.48 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !240 ; [#uses=2 type=i64*] [debug line = 243:3@470:3]
  %output.assign.load.49 = load i64* %output.assign.addr.48, align 8, !dbg !240 ; [#uses=1 type=i64] [debug line = 243:3@470:3]
  %tmp.338.i = shl i64 %output.assign.load.48, 1, !dbg !241 ; [#uses=1 type=i64] [debug line = 244:3@470:3]
  %tmp8 = add i64 %output.assign.load.48, %output.assign.load.49, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp9 = add i64 %tmp.338.i, %tmp.336.i, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  %tmp.340.i = add nsw i64 %tmp8, %tmp9, !dbg !242 ; [#uses=1 type=i64] [debug line = 245:3@470:3]
  store i64 %tmp.340.i, i64* %output.assign.addr.48, align 8, !dbg !242 ; [debug line = 245:3@470:3]
  %output.assign.addr.49 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !243 ; [#uses=1 type=i64*] [debug line = 246:3@470:3]
  %output.assign.load.50 = load i64* %output.assign.addr.49, align 16, !dbg !243 ; [#uses=3 type=i64] [debug line = 246:3@470:3]
  %tmp.341.i = shl i64 %output.assign.load.50, 4, !dbg !243 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %output.assign.addr.50 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !243 ; [#uses=2 type=i64*] [debug line = 246:3@470:3]
  %output.assign.load.51 = load i64* %output.assign.addr.50, align 16, !dbg !243 ; [#uses=1 type=i64] [debug line = 246:3@470:3]
  %tmp.343.i = shl i64 %output.assign.load.50, 1, !dbg !244 ; [#uses=1 type=i64] [debug line = 247:3@470:3]
  %tmp10 = add i64 %output.assign.load.50, %output.assign.load.51, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp11 = add i64 %tmp.343.i, %tmp.341.i, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  %tmp.345.i = add nsw i64 %tmp10, %tmp11, !dbg !245 ; [#uses=1 type=i64] [debug line = 248:3@470:3]
  store i64 %tmp.345.i, i64* %output.assign.addr.50, align 16, !dbg !245 ; [debug line = 248:3@470:3]
  %output.assign.addr.51 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !246 ; [#uses=1 type=i64*] [debug line = 249:3@470:3]
  %output.assign.load.52 = load i64* %output.assign.addr.51, align 8, !dbg !246 ; [#uses=3 type=i64] [debug line = 249:3@470:3]
  %tmp.346.i = shl i64 %output.assign.load.52, 4, !dbg !246 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %output.assign.addr.52 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !246 ; [#uses=2 type=i64*] [debug line = 249:3@470:3]
  %output.assign.load.53 = load i64* %output.assign.addr.52, align 8, !dbg !246 ; [#uses=1 type=i64] [debug line = 249:3@470:3]
  %tmp.348.i = shl i64 %output.assign.load.52, 1, !dbg !247 ; [#uses=1 type=i64] [debug line = 250:3@470:3]
  %tmp12 = add i64 %output.assign.load.52, %output.assign.load.53, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp13 = add i64 %tmp.348.i, %tmp.346.i, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  %tmp.350.i = add nsw i64 %tmp12, %tmp13, !dbg !248 ; [#uses=1 type=i64] [debug line = 251:3@470:3]
  store i64 %tmp.350.i, i64* %output.assign.addr.52, align 8, !dbg !248 ; [debug line = 251:3@470:3]
  %output.assign.addr.53 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !249 ; [#uses=1 type=i64*] [debug line = 252:3@470:3]
  %output.assign.load.54 = load i64* %output.assign.addr.53, align 16, !dbg !249 ; [#uses=3 type=i64] [debug line = 252:3@470:3]
  %tmp.351.i = shl i64 %output.assign.load.54, 4, !dbg !249 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %output.assign.addr.54 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !249 ; [#uses=2 type=i64*] [debug line = 252:3@470:3]
  %output.assign.load.55 = load i64* %output.assign.addr.54, align 16, !dbg !249 ; [#uses=1 type=i64] [debug line = 252:3@470:3]
  %tmp.353.i = shl i64 %output.assign.load.54, 1, !dbg !250 ; [#uses=1 type=i64] [debug line = 253:3@470:3]
  %tmp14 = add i64 %output.assign.load.54, %output.assign.load.55, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp15 = add i64 %tmp.353.i, %tmp.351.i, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  %tmp.355.i = add nsw i64 %tmp14, %tmp15, !dbg !251 ; [#uses=1 type=i64] [debug line = 254:3@470:3]
  store i64 %tmp.355.i, i64* %output.assign.addr.54, align 16, !dbg !251 ; [debug line = 254:3@470:3]
  %output.assign.addr.55 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !252 ; [#uses=1 type=i64*] [debug line = 255:3@470:3]
  %output.assign.load.56 = load i64* %output.assign.addr.55, align 8, !dbg !252 ; [#uses=3 type=i64] [debug line = 255:3@470:3]
  %tmp.356.i = shl i64 %output.assign.load.56, 4, !dbg !252 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %output.assign.addr.56 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !252 ; [#uses=2 type=i64*] [debug line = 255:3@470:3]
  %output.assign.load.57 = load i64* %output.assign.addr.56, align 8, !dbg !252 ; [#uses=1 type=i64] [debug line = 255:3@470:3]
  %tmp.358.i = shl i64 %output.assign.load.56, 1, !dbg !253 ; [#uses=1 type=i64] [debug line = 256:3@470:3]
  %tmp16 = add i64 %output.assign.load.56, %output.assign.load.57, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp17 = add i64 %tmp.358.i, %tmp.356.i, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  %tmp.360.i = add nsw i64 %tmp16, %tmp17, !dbg !254 ; [#uses=1 type=i64] [debug line = 257:3@470:3]
  store i64 %tmp.360.i, i64* %output.assign.addr.56, align 8, !dbg !254 ; [debug line = 257:3@470:3]
  %output.assign.addr.57 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !255 ; [#uses=1 type=i64*] [debug line = 258:3@470:3]
  %output.assign.load.58 = load i64* %output.assign.addr.57, align 16, !dbg !255 ; [#uses=3 type=i64] [debug line = 258:3@470:3]
  %tmp.361.i = shl i64 %output.assign.load.58, 4, !dbg !255 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %t.load.3 = load i64* %t.addr.3, align 16, !dbg !255 ; [#uses=1 type=i64] [debug line = 258:3@470:3]
  %tmp.363.i = shl i64 %output.assign.load.58, 1, !dbg !256 ; [#uses=1 type=i64] [debug line = 259:3@470:3]
  %tmp18 = add i64 %output.assign.load.58, %t.load.3, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp19 = add i64 %tmp.363.i, %tmp.361.i, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  %tmp.365.i = add nsw i64 %tmp18, %tmp19, !dbg !257 ; [#uses=1 type=i64] [debug line = 260:3@470:3]
  store i64 %tmp.365.i, i64* %t.addr.3, align 16, !dbg !257 ; [debug line = 260:3@470:3]
  %output.assign.addr.58 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !258), !dbg !260 ; [debug line = 302:40@471:3] [debug variable = output]
  %output.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !261 ; [#uses=3 type=i64*] [debug line = 305:3@471:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !261 ; [debug line = 305:3@471:3]
  br label %1, !dbg !263                          ; [debug line = 307:8@471:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i4]
  %tmp.i = icmp ult i4 %i.i, -6, !dbg !263        ; [#uses=1 type=i1] [debug line = 307:8@471:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %3, label %freduce_coefficients.exit, !dbg !263 ; [debug line = 307:8@471:3]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i4 %i.i to i64, !dbg !265        ; [#uses=1 type=i64] [debug line = 308:17@471:3]
  %output.assign.addr.9 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp..i, !dbg !265 ; [#uses=2 type=i64*] [debug line = 308:17@471:3]
  %v.assign = load i64* %output.assign.addr.9, align 16, !dbg !265 ; [#uses=3 type=i64] [debug line = 308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !267), !dbg !268 ; [debug line = 271:24@308:17@471:3] [debug variable = v]
  %tmp.i.i = lshr i64 %v.assign, 63, !dbg !269    ; [#uses=1 type=i64] [debug line = 274:62@308:17@471:3]
  %highword1.i.i = trunc i64 %tmp.i.i to i1, !dbg !271 ; [#uses=1 type=i1] [debug line = 276:50@308:17@471:3]
  %tmp..i.i.cast = select i1 %highword1.i.i, i64 67108863, i64 0, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.1064.i.i = add nsw i64 %tmp..i.i.cast, %v.assign, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.396.i.i = lshr i64 %tmp.1064.i.i, 26, !dbg !272 ; [#uses=1 type=i64] [debug line = 280:3@308:17@471:3]
  %tmp.397.i.i = trunc i64 %tmp.396.i.i to i38, !dbg !272 ; [#uses=1 type=i38] [debug line = 280:3@308:17@471:3]
  %over = sext i38 %tmp.397.i.i to i64, !dbg !272 ; [#uses=2 type=i64] [debug line = 280:3@308:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !273), !dbg !265 ; [debug line = 308:17@471:3] [debug variable = over]
  %tmp.366.i = shl nsw i64 %over, 26, !dbg !274   ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  %tmp.367.i = sub nsw i64 %v.assign, %tmp.366.i, !dbg !274 ; [#uses=1 type=i64] [debug line = 313:5@471:3]
  store i64 %tmp.367.i, i64* %output.assign.addr.9, align 16, !dbg !274 ; [debug line = 313:5@471:3]
  %tmp.368.i = or i4 %i.i, 1, !dbg !275           ; [#uses=1 type=i4] [debug line = 314:5@471:3]
  %tmp.369.i = zext i4 %tmp.368.i to i64, !dbg !275 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %output.assign.addr.10 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.369.i, !dbg !275 ; [#uses=2 type=i64*] [debug line = 314:5@471:3]
  %output.assign.load = load i64* %output.assign.addr.10, align 8, !dbg !275 ; [#uses=1 type=i64] [debug line = 314:5@471:3]
  %v.assign.5 = add nsw i64 %over, %output.assign.load, !dbg !275 ; [#uses=3 type=i64] [debug line = 314:5@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.5}, i64 0, metadata !276), !dbg !278 ; [debug line = 287:24@322:12@471:3] [debug variable = v]
  %tmp.i8.i = lshr i64 %v.assign.5, 63, !dbg !279 ; [#uses=1 type=i64] [debug line = 290:62@322:12@471:3]
  %highword1.i9.i = trunc i64 %tmp.i8.i to i1, !dbg !281 ; [#uses=1 type=i1] [debug line = 292:50@322:12@471:3]
  %tmp..i10.i.cast = select i1 %highword1.i9.i, i64 33554431, i64 0, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.1066.i.i = add nsw i64 %v.assign.5, %tmp..i10.i.cast, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.398.i.i = lshr i64 %tmp.1066.i.i, 25, !dbg !282 ; [#uses=1 type=i64] [debug line = 296:3@322:12@471:3]
  %tmp.399.i.i = trunc i64 %tmp.398.i.i to i39, !dbg !282 ; [#uses=1 type=i39] [debug line = 296:3@322:12@471:3]
  %over.5 = sext i39 %tmp.399.i.i to i64, !dbg !282 ; [#uses=2 type=i64] [debug line = 296:3@322:12@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over.5}, i64 0, metadata !273), !dbg !277 ; [debug line = 322:12@471:3] [debug variable = over]
  %tmp.371.i = shl nsw i64 %over.5, 25, !dbg !283 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  %tmp.372.i = sub nsw i64 %v.assign.5, %tmp.371.i, !dbg !283 ; [#uses=1 type=i64] [debug line = 323:5@471:3]
  store i64 %tmp.372.i, i64* %output.assign.addr.10, align 8, !dbg !283 ; [debug line = 323:5@471:3]
  %i = add i4 %i.i, 2, !dbg !284                  ; [#uses=2 type=i4] [debug line = 324:5@471:3]
  %tmp.373.i = zext i4 %i to i64, !dbg !284       ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %output.assign.addr.11 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.373.i, !dbg !284 ; [#uses=2 type=i64*] [debug line = 324:5@471:3]
  %output.assign.load.7 = load i64* %output.assign.addr.11, align 16, !dbg !284 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  %tmp.374.i = add nsw i64 %over.5, %output.assign.load.7, !dbg !284 ; [#uses=1 type=i64] [debug line = 324:5@471:3]
  store i64 %tmp.374.i, i64* %output.assign.addr.11, align 16, !dbg !284 ; [debug line = 324:5@471:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !285), !dbg !286 ; [debug line = 307:23@471:3] [debug variable = i]
  br label %1, !dbg !286                          ; [debug line = 307:23@471:3]

freduce_coefficients.exit:                        ; preds = %1
  %output.assign.load.8 = load i64* %output.assign.addr, align 16, !dbg !287 ; [#uses=3 type=i64] [debug line = 327:3@471:3]
  %tmp.375.i = shl i64 %output.assign.load.8, 4, !dbg !287 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %output.assign.load.60 = load i64* %output.assign.addr.58, align 16, !dbg !287 ; [#uses=1 type=i64] [debug line = 327:3@471:3]
  %tmp.377.i = shl i64 %output.assign.load.8, 1, !dbg !288 ; [#uses=1 type=i64] [debug line = 328:3@471:3]
  %tmp21 = add i64 %output.assign.load.8, %output.assign.load.60, !dbg !289 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %tmp22 = add i64 %tmp.377.i, %tmp.375.i, !dbg !289 ; [#uses=1 type=i64] [debug line = 329:3@471:3]
  %v.assign.6 = add nsw i64 %tmp21, %tmp22, !dbg !289 ; [#uses=3 type=i64] [debug line = 329:3@471:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !290 ; [debug line = 331:3@471:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.6}, i64 0, metadata !291), !dbg !294 ; [debug line = 271:24@336:17@471:3] [debug variable = v]
  %tmp.i11.i = lshr i64 %v.assign.6, 63, !dbg !295 ; [#uses=1 type=i64] [debug line = 274:62@336:17@471:3]
  %highword1.i12.i = trunc i64 %tmp.i11.i to i1, !dbg !296 ; [#uses=1 type=i1] [debug line = 276:50@336:17@471:3]
  %tmp..i13.i.cast = select i1 %highword1.i12.i, i64 67108863, i64 0, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.1064.i14.i = add nsw i64 %v.assign.6, %tmp..i13.i.cast, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.396.i15.i = lshr i64 %tmp.1064.i14.i, 26, !dbg !297 ; [#uses=1 type=i64] [debug line = 280:3@336:17@471:3]
  %tmp.397.i16.i = trunc i64 %tmp.396.i15.i to i38, !dbg !297 ; [#uses=1 type=i38] [debug line = 280:3@336:17@471:3]
  %over.6 = sext i38 %tmp.397.i16.i to i64, !dbg !297 ; [#uses=2 type=i64] [debug line = 280:3@336:17@471:3]
  call void @llvm.dbg.value(metadata !{i64 %over.6}, i64 0, metadata !298), !dbg !292 ; [debug line = 336:17@471:3] [debug variable = over]
  %tmp.380.i = shl nsw i64 %over.6, 26, !dbg !299 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  %tmp.381.i = sub nsw i64 %v.assign.6, %tmp.380.i, !dbg !299 ; [#uses=1 type=i64] [debug line = 337:5@471:3]
  store i64 %tmp.381.i, i64* %output.assign.addr.58, align 16, !dbg !299 ; [debug line = 337:5@471:3]
  %output.assign.addr.12 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !300 ; [#uses=2 type=i64*] [debug line = 338:5@471:3]
  %output.assign.load.9 = load i64* %output.assign.addr.12, align 8, !dbg !300 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  %tmp.382.i = add nsw i64 %over.6, %output.assign.load.9, !dbg !300 ; [#uses=1 type=i64] [debug line = 338:5@471:3]
  store i64 %tmp.382.i, i64* %output.assign.addr.12, align 8, !dbg !300 ; [debug line = 338:5@471:3]
  br label %4, !dbg !309                          ; [debug line = 61:6@473:3]

; <label>:4                                       ; preds = %6, %freduce_coefficients.exit
  %i.i2 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i.5, %6 ] ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i2, -6, !dbg !309   ; [#uses=1 type=i1] [debug line = 61:6@473:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.1.exit, label %6, !dbg !309 ; [debug line = 61:6@473:3]

; <label>:6                                       ; preds = %4
  %tmp.i3 = zext i4 %i.i2 to i64, !dbg !312       ; [#uses=2 type=i64] [debug line = 62:3@473:3]
  %output.assign.addr.13 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.i3, !dbg !312 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  %output.assign.load.10 = load i64* %output.assign.addr.13, align 8, !dbg !312 ; [#uses=1 type=i64] [debug line = 62:3@473:3]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 %tmp.i3, !dbg !312 ; [#uses=1 type=i64*] [debug line = 62:3@473:3]
  store i64 %output.assign.load.10, i64* %output.addr, align 8, !dbg !312 ; [debug line = 62:3@473:3]
  %i.5 = add i4 %i.i2, 1, !dbg !314               ; [#uses=1 type=i4] [debug line = 61:18@473:3]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !315), !dbg !314 ; [debug line = 61:18@473:3] [debug variable = i]
  br label %4, !dbg !314                          ; [debug line = 61:18@473:3]

_memcpy.1.exit:                                   ; preds = %4
  ret void, !dbg !316                             ; [debug line = 474:1]
}

; [#uses=5]
define internal fastcc void @freduce_degree([19 x i64]* nocapture %output) {
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !321), !dbg !322 ; [debug line = 229:34] [debug variable = output]
  %output.addr.54 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !323 ; [#uses=1 type=i64*] [debug line = 234:3]
  %output.load = load i64* %output.addr.54, align 8, !dbg !323 ; [#uses=3 type=i64] [debug line = 234:3]
  %tmp = shl i64 %output.load, 4, !dbg !323       ; [#uses=1 type=i64] [debug line = 234:3]
  %output.addr.55 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !323 ; [#uses=2 type=i64*] [debug line = 234:3]
  %output.load.2 = load i64* %output.addr.55, align 8, !dbg !323 ; [#uses=1 type=i64] [debug line = 234:3]
  %tmp.323 = shl i64 %output.load, 1, !dbg !324   ; [#uses=1 type=i64] [debug line = 235:3]
  %tmp1 = add i64 %output.load, %output.load.2, !dbg !325 ; [#uses=1 type=i64] [debug line = 236:3]
  %tmp2 = add i64 %tmp.323, %tmp, !dbg !325       ; [#uses=1 type=i64] [debug line = 236:3]
  %tmp.325 = add nsw i64 %tmp1, %tmp2, !dbg !325  ; [#uses=1 type=i64] [debug line = 236:3]
  store i64 %tmp.325, i64* %output.addr.55, align 8, !dbg !325 ; [debug line = 236:3]
  %output.addr.56 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !326 ; [#uses=1 type=i64*] [debug line = 237:3]
  %output.load.3 = load i64* %output.addr.56, align 8, !dbg !326 ; [#uses=3 type=i64] [debug line = 237:3]
  %tmp.326 = shl i64 %output.load.3, 4, !dbg !326 ; [#uses=1 type=i64] [debug line = 237:3]
  %output.addr.57 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !326 ; [#uses=2 type=i64*] [debug line = 237:3]
  %output.load.4 = load i64* %output.addr.57, align 8, !dbg !326 ; [#uses=1 type=i64] [debug line = 237:3]
  %tmp.328 = shl i64 %output.load.3, 1, !dbg !327 ; [#uses=1 type=i64] [debug line = 238:3]
  %tmp3 = add i64 %output.load.3, %output.load.4, !dbg !328 ; [#uses=1 type=i64] [debug line = 239:3]
  %tmp4 = add i64 %tmp.328, %tmp.326, !dbg !328   ; [#uses=1 type=i64] [debug line = 239:3]
  %tmp.330 = add nsw i64 %tmp3, %tmp4, !dbg !328  ; [#uses=1 type=i64] [debug line = 239:3]
  store i64 %tmp.330, i64* %output.addr.57, align 8, !dbg !328 ; [debug line = 239:3]
  %output.addr.58 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !329 ; [#uses=1 type=i64*] [debug line = 240:3]
  %output.load.5 = load i64* %output.addr.58, align 8, !dbg !329 ; [#uses=3 type=i64] [debug line = 240:3]
  %tmp.331 = shl i64 %output.load.5, 4, !dbg !329 ; [#uses=1 type=i64] [debug line = 240:3]
  %output.addr.59 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !329 ; [#uses=2 type=i64*] [debug line = 240:3]
  %output.load.6 = load i64* %output.addr.59, align 8, !dbg !329 ; [#uses=1 type=i64] [debug line = 240:3]
  %tmp.333 = shl i64 %output.load.5, 1, !dbg !330 ; [#uses=1 type=i64] [debug line = 241:3]
  %tmp5 = add i64 %output.load.5, %output.load.6, !dbg !331 ; [#uses=1 type=i64] [debug line = 242:3]
  %tmp6 = add i64 %tmp.333, %tmp.331, !dbg !331   ; [#uses=1 type=i64] [debug line = 242:3]
  %tmp.335 = add nsw i64 %tmp5, %tmp6, !dbg !331  ; [#uses=1 type=i64] [debug line = 242:3]
  store i64 %tmp.335, i64* %output.addr.59, align 8, !dbg !331 ; [debug line = 242:3]
  %output.addr.60 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !332 ; [#uses=1 type=i64*] [debug line = 243:3]
  %output.load.7 = load i64* %output.addr.60, align 8, !dbg !332 ; [#uses=3 type=i64] [debug line = 243:3]
  %tmp.336 = shl i64 %output.load.7, 4, !dbg !332 ; [#uses=1 type=i64] [debug line = 243:3]
  %output.addr.61 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !332 ; [#uses=2 type=i64*] [debug line = 243:3]
  %output.load.8 = load i64* %output.addr.61, align 8, !dbg !332 ; [#uses=1 type=i64] [debug line = 243:3]
  %tmp.338 = shl i64 %output.load.7, 1, !dbg !333 ; [#uses=1 type=i64] [debug line = 244:3]
  %tmp7 = add i64 %output.load.7, %output.load.8, !dbg !334 ; [#uses=1 type=i64] [debug line = 245:3]
  %tmp8 = add i64 %tmp.338, %tmp.336, !dbg !334   ; [#uses=1 type=i64] [debug line = 245:3]
  %tmp.340 = add nsw i64 %tmp7, %tmp8, !dbg !334  ; [#uses=1 type=i64] [debug line = 245:3]
  store i64 %tmp.340, i64* %output.addr.61, align 8, !dbg !334 ; [debug line = 245:3]
  %output.addr.62 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !335 ; [#uses=1 type=i64*] [debug line = 246:3]
  %output.load.9 = load i64* %output.addr.62, align 8, !dbg !335 ; [#uses=3 type=i64] [debug line = 246:3]
  %tmp.341 = shl i64 %output.load.9, 4, !dbg !335 ; [#uses=1 type=i64] [debug line = 246:3]
  %output.addr.63 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !335 ; [#uses=2 type=i64*] [debug line = 246:3]
  %output.load.10 = load i64* %output.addr.63, align 8, !dbg !335 ; [#uses=1 type=i64] [debug line = 246:3]
  %tmp.343 = shl i64 %output.load.9, 1, !dbg !336 ; [#uses=1 type=i64] [debug line = 247:3]
  %tmp9 = add i64 %output.load.9, %output.load.10, !dbg !337 ; [#uses=1 type=i64] [debug line = 248:3]
  %tmp10 = add i64 %tmp.343, %tmp.341, !dbg !337  ; [#uses=1 type=i64] [debug line = 248:3]
  %tmp.345 = add nsw i64 %tmp9, %tmp10, !dbg !337 ; [#uses=1 type=i64] [debug line = 248:3]
  store i64 %tmp.345, i64* %output.addr.63, align 8, !dbg !337 ; [debug line = 248:3]
  %output.addr.64 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !338 ; [#uses=1 type=i64*] [debug line = 249:3]
  %output.load.11 = load i64* %output.addr.64, align 8, !dbg !338 ; [#uses=3 type=i64] [debug line = 249:3]
  %tmp.346 = shl i64 %output.load.11, 4, !dbg !338 ; [#uses=1 type=i64] [debug line = 249:3]
  %output.addr.65 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !338 ; [#uses=2 type=i64*] [debug line = 249:3]
  %output.load.12 = load i64* %output.addr.65, align 8, !dbg !338 ; [#uses=1 type=i64] [debug line = 249:3]
  %tmp.348 = shl i64 %output.load.11, 1, !dbg !339 ; [#uses=1 type=i64] [debug line = 250:3]
  %tmp11 = add i64 %output.load.11, %output.load.12, !dbg !340 ; [#uses=1 type=i64] [debug line = 251:3]
  %tmp12 = add i64 %tmp.348, %tmp.346, !dbg !340  ; [#uses=1 type=i64] [debug line = 251:3]
  %tmp. = add nsw i64 %tmp11, %tmp12, !dbg !340   ; [#uses=1 type=i64] [debug line = 251:3]
  store i64 %tmp., i64* %output.addr.65, align 8, !dbg !340 ; [debug line = 251:3]
  %output.addr.66 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !341 ; [#uses=1 type=i64*] [debug line = 252:3]
  %output.load.13 = load i64* %output.addr.66, align 8, !dbg !341 ; [#uses=3 type=i64] [debug line = 252:3]
  %tmp.350 = shl i64 %output.load.13, 4, !dbg !341 ; [#uses=1 type=i64] [debug line = 252:3]
  %output.addr.67 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !341 ; [#uses=2 type=i64*] [debug line = 252:3]
  %output.load.14 = load i64* %output.addr.67, align 8, !dbg !341 ; [#uses=1 type=i64] [debug line = 252:3]
  %tmp.351 = shl i64 %output.load.13, 1, !dbg !342 ; [#uses=1 type=i64] [debug line = 253:3]
  %tmp13 = add i64 %output.load.13, %output.load.14, !dbg !343 ; [#uses=1 type=i64] [debug line = 254:3]
  %tmp14 = add i64 %tmp.351, %tmp.350, !dbg !343  ; [#uses=1 type=i64] [debug line = 254:3]
  %tmp.352 = add nsw i64 %tmp13, %tmp14, !dbg !343 ; [#uses=1 type=i64] [debug line = 254:3]
  store i64 %tmp.352, i64* %output.addr.67, align 8, !dbg !343 ; [debug line = 254:3]
  %output.addr.68 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !344 ; [#uses=1 type=i64*] [debug line = 255:3]
  %output.load.15 = load i64* %output.addr.68, align 8, !dbg !344 ; [#uses=3 type=i64] [debug line = 255:3]
  %tmp.353 = shl i64 %output.load.15, 4, !dbg !344 ; [#uses=1 type=i64] [debug line = 255:3]
  %output.addr.69 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !344 ; [#uses=2 type=i64*] [debug line = 255:3]
  %output.load.16 = load i64* %output.addr.69, align 8, !dbg !344 ; [#uses=1 type=i64] [debug line = 255:3]
  %tmp.354 = shl i64 %output.load.15, 1, !dbg !345 ; [#uses=1 type=i64] [debug line = 256:3]
  %tmp15 = add i64 %output.load.15, %output.load.16, !dbg !346 ; [#uses=1 type=i64] [debug line = 257:3]
  %tmp16 = add i64 %tmp.354, %tmp.353, !dbg !346  ; [#uses=1 type=i64] [debug line = 257:3]
  %tmp.355 = add nsw i64 %tmp15, %tmp16, !dbg !346 ; [#uses=1 type=i64] [debug line = 257:3]
  store i64 %tmp.355, i64* %output.addr.69, align 8, !dbg !346 ; [debug line = 257:3]
  %output.addr.70 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !347 ; [#uses=1 type=i64*] [debug line = 258:3]
  %output.load.17 = load i64* %output.addr.70, align 8, !dbg !347 ; [#uses=3 type=i64] [debug line = 258:3]
  %tmp.356 = shl i64 %output.load.17, 4, !dbg !347 ; [#uses=1 type=i64] [debug line = 258:3]
  %output.load.18 = load i64* %output.addr, align 8, !dbg !347 ; [#uses=1 type=i64] [debug line = 258:3]
  %tmp.357 = shl i64 %output.load.17, 1, !dbg !348 ; [#uses=1 type=i64] [debug line = 259:3]
  %tmp17 = add i64 %output.load.17, %output.load.18, !dbg !349 ; [#uses=1 type=i64] [debug line = 260:3]
  %tmp18 = add i64 %tmp.357, %tmp.356, !dbg !349  ; [#uses=1 type=i64] [debug line = 260:3]
  %tmp.358 = add nsw i64 %tmp17, %tmp18, !dbg !349 ; [#uses=1 type=i64] [debug line = 260:3]
  store i64 %tmp.358, i64* %output.addr, align 8, !dbg !349 ; [debug line = 260:3]
  ret void, !dbg !350                             ; [debug line = 261:1]
}

; [#uses=6]
define internal fastcc void @freduce_coefficients([19 x i64]* nocapture %output) {
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !351), !dbg !352 ; [debug line = 302:40] [debug variable = output]
  %output.addr.71 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !353 ; [#uses=3 type=i64*] [debug line = 305:3]
  store i64 0, i64* %output.addr.71, align 8, !dbg !353 ; [debug line = 305:3]
  br label %1, !dbg !354                          ; [debug line = 307:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i4]
  %tmp = icmp ult i4 %i, -6, !dbg !354            ; [#uses=1 type=i1] [debug line = 307:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !354       ; [debug line = 307:8]

; <label>:3                                       ; preds = %1
  %tmp. = zext i4 %i to i64, !dbg !355            ; [#uses=1 type=i64] [debug line = 308:17]
  %output.addr.72 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp., !dbg !355 ; [#uses=2 type=i64*] [debug line = 308:17]
  %v.assign = load i64* %output.addr.72, align 8, !dbg !355 ; [#uses=3 type=i64] [debug line = 308:17]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !356), !dbg !357 ; [debug line = 271:24@308:17] [debug variable = v]
  %tmp.i = lshr i64 %v.assign, 63, !dbg !358      ; [#uses=1 type=i64] [debug line = 274:62@308:17]
  %highword1.i = trunc i64 %tmp.i to i1, !dbg !359 ; [#uses=1 type=i1] [debug line = 276:50@308:17]
  %tmp..i.cast = select i1 %highword1.i, i64 67108863, i64 0, !dbg !360 ; [#uses=1 type=i64] [debug line = 280:3@308:17]
  %tmp.1064.i = add nsw i64 %tmp..i.cast, %v.assign, !dbg !360 ; [#uses=1 type=i64] [debug line = 280:3@308:17]
  %tmp.396.i = lshr i64 %tmp.1064.i, 26, !dbg !360 ; [#uses=1 type=i64] [debug line = 280:3@308:17]
  %tmp.397.i = trunc i64 %tmp.396.i to i38, !dbg !360 ; [#uses=1 type=i38] [debug line = 280:3@308:17]
  %over = sext i38 %tmp.397.i to i64, !dbg !360   ; [#uses=2 type=i64] [debug line = 280:3@308:17]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !361), !dbg !355 ; [debug line = 308:17] [debug variable = over]
  %tmp.359 = shl nsw i64 %over, 26, !dbg !362     ; [#uses=1 type=i64] [debug line = 313:5]
  %tmp.360 = sub nsw i64 %v.assign, %tmp.359, !dbg !362 ; [#uses=1 type=i64] [debug line = 313:5]
  store i64 %tmp.360, i64* %output.addr.72, align 8, !dbg !362 ; [debug line = 313:5]
  %tmp.361 = or i4 %i, 1, !dbg !363               ; [#uses=1 type=i4] [debug line = 314:5]
  %tmp.362 = zext i4 %tmp.361 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 314:5]
  %output.addr.73 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp.362, !dbg !363 ; [#uses=2 type=i64*] [debug line = 314:5]
  %output.load = load i64* %output.addr.73, align 8, !dbg !363 ; [#uses=1 type=i64] [debug line = 314:5]
  %v.assign.7 = add nsw i64 %over, %output.load, !dbg !363 ; [#uses=3 type=i64] [debug line = 314:5]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.7}, i64 0, metadata !364), !dbg !366 ; [debug line = 287:24@322:12] [debug variable = v]
  %tmp.i8 = lshr i64 %v.assign.7, 63, !dbg !367   ; [#uses=1 type=i64] [debug line = 290:62@322:12]
  %highword1.i9 = trunc i64 %tmp.i8 to i1, !dbg !368 ; [#uses=1 type=i1] [debug line = 292:50@322:12]
  %tmp..i1.cast = select i1 %highword1.i9, i64 33554431, i64 0, !dbg !369 ; [#uses=1 type=i64] [debug line = 296:3@322:12]
  %tmp.1066.i = add nsw i64 %v.assign.7, %tmp..i1.cast, !dbg !369 ; [#uses=1 type=i64] [debug line = 296:3@322:12]
  %tmp.398.i = lshr i64 %tmp.1066.i, 25, !dbg !369 ; [#uses=1 type=i64] [debug line = 296:3@322:12]
  %tmp.399.i = trunc i64 %tmp.398.i to i39, !dbg !369 ; [#uses=1 type=i39] [debug line = 296:3@322:12]
  %over.7 = sext i39 %tmp.399.i to i64, !dbg !369 ; [#uses=2 type=i64] [debug line = 296:3@322:12]
  call void @llvm.dbg.value(metadata !{i64 %over.7}, i64 0, metadata !361), !dbg !365 ; [debug line = 322:12] [debug variable = over]
  %tmp.363 = shl nsw i64 %over.7, 25, !dbg !370   ; [#uses=1 type=i64] [debug line = 323:5]
  %tmp.364 = sub nsw i64 %v.assign.7, %tmp.363, !dbg !370 ; [#uses=1 type=i64] [debug line = 323:5]
  store i64 %tmp.364, i64* %output.addr.73, align 8, !dbg !370 ; [debug line = 323:5]
  %i.4 = add i4 %i, 2, !dbg !371                  ; [#uses=2 type=i4] [debug line = 324:5]
  %tmp.365 = zext i4 %i.4 to i64, !dbg !371       ; [#uses=1 type=i64] [debug line = 324:5]
  %output.addr.74 = getelementptr [19 x i64]* %output, i64 0, i64 %tmp.365, !dbg !371 ; [#uses=2 type=i64*] [debug line = 324:5]
  %output.load.19 = load i64* %output.addr.74, align 8, !dbg !371 ; [#uses=1 type=i64] [debug line = 324:5]
  %tmp.366 = add nsw i64 %over.7, %output.load.19, !dbg !371 ; [#uses=1 type=i64] [debug line = 324:5]
  store i64 %tmp.366, i64* %output.addr.74, align 8, !dbg !371 ; [debug line = 324:5]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !372), !dbg !373 ; [debug line = 307:23] [debug variable = i]
  br label %1, !dbg !373                          ; [debug line = 307:23]

; <label>:4                                       ; preds = %1
  %output.load.20 = load i64* %output.addr.71, align 8, !dbg !374 ; [#uses=3 type=i64] [debug line = 327:3]
  %tmp.367 = shl i64 %output.load.20, 4, !dbg !374 ; [#uses=1 type=i64] [debug line = 327:3]
  %output.load.21 = load i64* %output.addr, align 8, !dbg !374 ; [#uses=1 type=i64] [debug line = 327:3]
  %tmp.368 = shl i64 %output.load.20, 1, !dbg !375 ; [#uses=1 type=i64] [debug line = 328:3]
  %tmp2 = add i64 %output.load.20, %output.load.21, !dbg !376 ; [#uses=1 type=i64] [debug line = 329:3]
  %tmp3 = add i64 %tmp.368, %tmp.367, !dbg !376   ; [#uses=1 type=i64] [debug line = 329:3]
  %v.assign.8 = add nsw i64 %tmp2, %tmp3, !dbg !376 ; [#uses=3 type=i64] [debug line = 329:3]
  store i64 0, i64* %output.addr.71, align 8, !dbg !377 ; [debug line = 331:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.8}, i64 0, metadata !378), !dbg !380 ; [debug line = 271:24@336:17] [debug variable = v]
  %tmp.i1 = lshr i64 %v.assign.8, 63, !dbg !381   ; [#uses=1 type=i64] [debug line = 274:62@336:17]
  %highword1.i1 = trunc i64 %tmp.i1 to i1, !dbg !382 ; [#uses=1 type=i1] [debug line = 276:50@336:17]
  %tmp..i2.cast = select i1 %highword1.i1, i64 67108863, i64 0, !dbg !383 ; [#uses=1 type=i64] [debug line = 280:3@336:17]
  %tmp.1064.i1 = add nsw i64 %v.assign.8, %tmp..i2.cast, !dbg !383 ; [#uses=1 type=i64] [debug line = 280:3@336:17]
  %tmp.396.i1 = lshr i64 %tmp.1064.i1, 26, !dbg !383 ; [#uses=1 type=i64] [debug line = 280:3@336:17]
  %tmp.397.i1 = trunc i64 %tmp.396.i1 to i38, !dbg !383 ; [#uses=1 type=i38] [debug line = 280:3@336:17]
  %over.8 = sext i38 %tmp.397.i1 to i64, !dbg !383 ; [#uses=2 type=i64] [debug line = 280:3@336:17]
  call void @llvm.dbg.value(metadata !{i64 %over.8}, i64 0, metadata !384), !dbg !379 ; [debug line = 336:17] [debug variable = over]
  %tmp.369 = shl nsw i64 %over.8, 26, !dbg !385   ; [#uses=1 type=i64] [debug line = 337:5]
  %tmp.370 = sub nsw i64 %v.assign.8, %tmp.369, !dbg !385 ; [#uses=1 type=i64] [debug line = 337:5]
  store i64 %tmp.370, i64* %output.addr, align 8, !dbg !385 ; [debug line = 337:5]
  %output.addr.75 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !386 ; [#uses=2 type=i64*] [debug line = 338:5]
  %output.load.22 = load i64* %output.addr.75, align 8, !dbg !386 ; [#uses=1 type=i64] [debug line = 338:5]
  %tmp.371 = add nsw i64 %over.8, %output.load.22, !dbg !386 ; [#uses=1 type=i64] [debug line = 338:5]
  store i64 %tmp.371, i64* %output.addr.75, align 8, !dbg !386 ; [debug line = 338:5]
  ret void, !dbg !387                             ; [debug line = 343:1]
}

; [#uses=1]
define internal fastcc void @fproduct.3([19 x i64]* nocapture %output, [10 x i64]* nocapture %in2, [11 x i64]* nocapture %in) {
  %in.addr = getelementptr [11 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %in2.addr = getelementptr [10 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !388 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !390 ; [debug line = 122:1]
  %in2.load = load i64* %in2.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2.load to i32, !dbg !391    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp. = sext i32 %tmp to i64, !dbg !391         ; [#uses=10 type=i64] [debug line = 123:2]
  %in.load = load i64* %in.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp.372 = trunc i64 %in.load to i32, !dbg !391 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp.373 = sext i32 %tmp.372 to i64, !dbg !391  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp.374 = mul nsw i64 %tmp.373, %tmp., !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp.374, i64* %output.addr, align 8, !dbg !391 ; [debug line = 123:2]
  %in.addr.29 = getelementptr [11 x i64]* %in, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in.load.22 = load i64* %in.addr.29, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.375 = trunc i64 %in.load.22 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.376 = sext i32 %tmp.375 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.377 = mul nsw i64 %tmp.376, %tmp., !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2.addr.1 = getelementptr [10 x i64]* %in2, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2.load.1 = load i64* %in2.addr.1, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.378 = trunc i64 %in2.load.1 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.379 = sext i32 %tmp.378 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.380 = mul nsw i64 %tmp.373, %tmp.379, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.381 = add nsw i64 %tmp.380, %tmp.377, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %output.addr.76 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp.381, i64* %output.addr.76, align 8, !dbg !392 ; [debug line = 124:3]
  %tmp.349 = sext i32 %tmp.378 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.350 = sext i32 %tmp.375 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.382 = mul i63 %tmp.350, %tmp.349, !dbg !393 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.383 = zext i63 %tmp.382 to i64, !dbg !393  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.384 = shl nuw i64 %tmp.383, 1, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %in.addr.30 = getelementptr [11 x i64]* %in, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in.load.23 = load i64* %in.addr.30, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.385 = trunc i64 %in.load.23 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.386 = sext i32 %tmp.385 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.387 = mul nsw i64 %tmp.386, %tmp., !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2.addr.2 = getelementptr [10 x i64]* %in2, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2.load.2 = load i64* %in2.addr.2, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.388 = trunc i64 %in2.load.2 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.389 = sext i32 %tmp.388 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.390 = mul nsw i64 %tmp.373, %tmp.389, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp.384, %tmp.390, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.391 = add i64 %tmp1, %tmp.387, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %output.addr.77 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp.391, i64* %output.addr.77, align 8, !dbg !393 ; [debug line = 126:3]
  %tmp.392 = mul nsw i64 %tmp.386, %tmp.379, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.393 = mul nsw i64 %tmp.376, %tmp.389, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in.addr.31 = getelementptr [11 x i64]* %in, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in.load.24 = load i64* %in.addr.31, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.394 = trunc i64 %in.load.24 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.395 = sext i32 %tmp.394 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.396 = mul nsw i64 %tmp.395, %tmp., !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.addr.3 = getelementptr [10 x i64]* %in2, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2.load.3 = load i64* %in2.addr.3, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.397 = trunc i64 %in2.load.3 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.398 = sext i32 %tmp.397 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.399 = mul nsw i64 %tmp.373, %tmp.398, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp.393, %tmp.392, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp.396, %tmp.399, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.400 = add i64 %tmp3, %tmp2, !dbg !394      ; [#uses=1 type=i64] [debug line = 129:3]
  %output.addr.78 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp.400, i64* %output.addr.78, align 8, !dbg !394 ; [debug line = 129:3]
  %tmp.401 = mul nsw i64 %tmp.386, %tmp.389, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.402 = mul nsw i64 %tmp.395, %tmp.379, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.403 = mul nsw i64 %tmp.376, %tmp.398, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.404 = add nsw i64 %tmp.403, %tmp.402, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.405 = trunc i64 %tmp.404 to i63, !dbg !395 ; [#uses=1 type=i63] [debug line = 133:3]
  %tmp.406 = zext i63 %tmp.405 to i64, !dbg !395  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.407 = shl nuw i64 %tmp.406, 1, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %in.addr.32 = getelementptr [11 x i64]* %in, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in.load.25 = load i64* %in.addr.32, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.408 = trunc i64 %in.load.25 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.409 = sext i32 %tmp.408 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.410 = mul nsw i64 %tmp.409, %tmp., !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.addr.4 = getelementptr [10 x i64]* %in2, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2.load.4 = load i64* %in2.addr.4, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.411 = trunc i64 %in2.load.4 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.412 = sext i32 %tmp.411 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.413 = mul nsw i64 %tmp.373, %tmp.412, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp.407, %tmp.401, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp.410, %tmp.413, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.414 = add i64 %tmp5, %tmp4, !dbg !395      ; [#uses=1 type=i64] [debug line = 133:3]
  %output.addr.79 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp.414, i64* %output.addr.79, align 8, !dbg !395 ; [debug line = 133:3]
  %tmp.415 = mul nsw i64 %tmp.395, %tmp.389, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.416 = mul nsw i64 %tmp.386, %tmp.398, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.417 = mul nsw i64 %tmp.409, %tmp.379, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.418 = mul nsw i64 %tmp.376, %tmp.412, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in.addr.33 = getelementptr [11 x i64]* %in, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in.load.26 = load i64* %in.addr.33, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.419 = trunc i64 %in.load.26 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.420 = sext i32 %tmp.419 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.421 = mul nsw i64 %tmp.420, %tmp., !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.addr.5 = getelementptr [10 x i64]* %in2, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2.load.5 = load i64* %in2.addr.5, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.422 = trunc i64 %in2.load.5 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.423 = sext i32 %tmp.422 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.424 = mul nsw i64 %tmp.373, %tmp.423, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp.415, %tmp.417, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp7, %tmp.416, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp.421, %tmp.424, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp9, %tmp.418, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.425 = add i64 %tmp8, %tmp6, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %output.addr.80 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp.425, i64* %output.addr.80, align 8, !dbg !396 ; [debug line = 138:3]
  %tmp.426 = mul nsw i64 %tmp.395, %tmp.398, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.427 = mul nsw i64 %tmp.420, %tmp.379, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.428 = mul nsw i64 %tmp.376, %tmp.423, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp.426, %tmp.428, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.429 = add i64 %tmp10, %tmp.427, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.430 = trunc i64 %tmp.429 to i63, !dbg !397 ; [#uses=1 type=i63] [debug line = 144:3]
  %tmp.431 = zext i63 %tmp.430 to i64, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.432 = shl nuw i64 %tmp.431, 1, !dbg !397   ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.433 = mul nsw i64 %tmp.409, %tmp.389, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.434 = mul nsw i64 %tmp.386, %tmp.412, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in.addr.34 = getelementptr [11 x i64]* %in, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in.load.27 = load i64* %in.addr.34, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.435 = trunc i64 %in.load.27 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.436 = sext i32 %tmp.435 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.437 = mul nsw i64 %tmp.436, %tmp., !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.addr.6 = getelementptr [10 x i64]* %in2, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2.load.6 = load i64* %in2.addr.6, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.438 = trunc i64 %in2.load.6 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.439 = sext i32 %tmp.438 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.440 = mul nsw i64 %tmp.373, %tmp.439, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp.433, %tmp.432, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp.437, %tmp.440, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp13, %tmp.434, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.441 = add i64 %tmp12, %tmp11, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %output.addr.81 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp.441, i64* %output.addr.81, align 8, !dbg !397 ; [debug line = 144:3]
  %tmp.442 = mul nsw i64 %tmp.409, %tmp.398, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.443 = mul nsw i64 %tmp.395, %tmp.412, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.444 = mul nsw i64 %tmp.420, %tmp.389, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.445 = mul nsw i64 %tmp.386, %tmp.423, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.446 = mul nsw i64 %tmp.436, %tmp.379, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.447 = mul nsw i64 %tmp.376, %tmp.439, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in.addr.35 = getelementptr [11 x i64]* %in, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in.load.28 = load i64* %in.addr.35, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.448 = trunc i64 %in.load.28 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.449 = sext i32 %tmp.448 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.450 = mul nsw i64 %tmp.449, %tmp., !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.addr.7 = getelementptr [10 x i64]* %in2, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2.load.7 = load i64* %in2.addr.7, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.451 = trunc i64 %in2.load.7 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.452 = sext i32 %tmp.451 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.453 = mul nsw i64 %tmp.373, %tmp.452, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp.443, %tmp.442, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp.444, %tmp.445, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp16, %tmp15, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp.446, %tmp.447, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp.450, %tmp.453, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp19, %tmp18, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.454 = add i64 %tmp17, %tmp14, !dbg !398    ; [#uses=1 type=i64] [debug line = 151:3]
  %output.addr.82 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp.454, i64* %output.addr.82, align 8, !dbg !398 ; [debug line = 151:3]
  %tmp.455 = mul nsw i64 %tmp.409, %tmp.412, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.456 = mul nsw i64 %tmp.420, %tmp.398, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.457 = mul nsw i64 %tmp.395, %tmp.423, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.458 = mul nsw i64 %tmp.449, %tmp.379, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.459 = mul nsw i64 %tmp.376, %tmp.452, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp.457, %tmp.456, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp.458, %tmp.459, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.136 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp.137 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp.460 = add i63 %tmp.137, %tmp.136, !dbg !399 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp.461 = zext i63 %tmp.460 to i64, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.462 = shl nuw i64 %tmp.461, 1, !dbg !399   ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.463 = mul nsw i64 %tmp.436, %tmp.389, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.464 = mul nsw i64 %tmp.386, %tmp.439, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in.addr.36 = getelementptr [11 x i64]* %in, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in.load.29 = load i64* %in.addr.36, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.465 = trunc i64 %in.load.29 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.466 = sext i32 %tmp.465 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.467 = mul nsw i64 %tmp.466, %tmp., !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.addr.8 = getelementptr [10 x i64]* %in2, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2.load.8 = load i64* %in2.addr.8, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.468 = trunc i64 %in2.load.8 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.469 = sext i32 %tmp.468 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.470 = mul nsw i64 %tmp.373, %tmp.469, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp.455, %tmp.463, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp23, %tmp.462, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp.467, %tmp.470, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp25, %tmp.464, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.471 = add i64 %tmp24, %tmp22, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %output.addr.83 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp.471, i64* %output.addr.83, align 8, !dbg !399 ; [debug line = 159:3]
  %tmp.472 = mul nsw i64 %tmp.420, %tmp.412, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.473 = mul nsw i64 %tmp.409, %tmp.423, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.474 = mul nsw i64 %tmp.436, %tmp.398, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.475 = mul nsw i64 %tmp.395, %tmp.439, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.476 = mul nsw i64 %tmp.449, %tmp.389, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.477 = mul nsw i64 %tmp.386, %tmp.452, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.478 = mul nsw i64 %tmp.466, %tmp.379, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.479 = mul nsw i64 %tmp.376, %tmp.469, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in.addr.37 = getelementptr [11 x i64]* %in, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in.load.30 = load i64* %in.addr.37, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.480 = trunc i64 %in.load.30 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.481 = sext i32 %tmp.480 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.482 = mul nsw i64 %tmp.481, %tmp., !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.addr.9 = getelementptr [10 x i64]* %in2, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2.load.9 = load i64* %in2.addr.9, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.483 = trunc i64 %in2.load.9 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.484 = sext i32 %tmp.483 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.485 = mul nsw i64 %tmp.373, %tmp.484, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp.473, %tmp.472, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp.475, %tmp.476, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp29, %tmp.474, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp28, %tmp27, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp.477, %tmp.478, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp.482, %tmp.485, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp33, %tmp.479, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp32, %tmp31, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.486 = add i64 %tmp30, %tmp26, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %output.addr.84 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp.486, i64* %output.addr.84, align 8, !dbg !400 ; [debug line = 168:3]
  %tmp.487 = mul nsw i64 %tmp.420, %tmp.423, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.488 = mul nsw i64 %tmp.449, %tmp.398, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.489 = mul nsw i64 %tmp.395, %tmp.452, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.490 = mul nsw i64 %tmp.481, %tmp.379, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.491 = mul nsw i64 %tmp.376, %tmp.484, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp.488, %tmp.487, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp.490, %tmp.491, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp36, %tmp.489, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.138 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp.139 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp.492 = add i63 %tmp.139, %tmp.138, !dbg !401 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp.493 = zext i63 %tmp.492 to i64, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.494 = shl nuw i64 %tmp.493, 1, !dbg !401   ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.495 = mul nsw i64 %tmp.436, %tmp.412, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.496 = mul nsw i64 %tmp.409, %tmp.439, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.497 = mul nsw i64 %tmp.466, %tmp.389, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.498 = mul nsw i64 %tmp.386, %tmp.469, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp.495, %tmp.494, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp.497, %tmp.498, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp39, %tmp.496, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.499 = add i64 %tmp38, %tmp37, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %output.addr.85 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !401 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp.499, i64* %output.addr.85, align 8, !dbg !401 ; [debug line = 178:3]
  %tmp.500 = mul nsw i64 %tmp.436, %tmp.423, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.501 = mul nsw i64 %tmp.420, %tmp.439, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.502 = mul nsw i64 %tmp.449, %tmp.412, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.503 = mul nsw i64 %tmp.409, %tmp.452, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.504 = mul nsw i64 %tmp.466, %tmp.398, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.505 = mul nsw i64 %tmp.395, %tmp.469, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.506 = mul nsw i64 %tmp.481, %tmp.389, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.507 = mul nsw i64 %tmp.386, %tmp.484, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp.501, %tmp.500, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp.502, %tmp.503, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp42, %tmp41, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp.504, %tmp.505, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp.506, %tmp.507, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp45, %tmp44, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.508 = add i64 %tmp43, %tmp40, !dbg !402    ; [#uses=1 type=i64] [debug line = 187:3]
  %output.addr.86 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !402 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp.508, i64* %output.addr.86, align 8, !dbg !402 ; [debug line = 187:3]
  %tmp.509 = mul nsw i64 %tmp.436, %tmp.439, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.510 = mul nsw i64 %tmp.449, %tmp.423, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.511 = mul nsw i64 %tmp.420, %tmp.452, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.512 = mul nsw i64 %tmp.481, %tmp.398, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.513 = mul nsw i64 %tmp.395, %tmp.484, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp.511, %tmp.510, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp.512, %tmp.513, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.140 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp.141 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp.514 = add i63 %tmp.141, %tmp.140, !dbg !403 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp.515 = zext i63 %tmp.514 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.516 = shl nuw i64 %tmp.515, 1, !dbg !403   ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.517 = mul nsw i64 %tmp.466, %tmp.412, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.518 = mul nsw i64 %tmp.409, %tmp.469, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp.516, %tmp.509, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp.517, %tmp.518, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.519 = add i64 %tmp49, %tmp48, !dbg !403    ; [#uses=1 type=i64] [debug line = 195:3]
  %output.addr.87 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !403 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp.519, i64* %output.addr.87, align 8, !dbg !403 ; [debug line = 195:3]
  %tmp.520 = mul nsw i64 %tmp.449, %tmp.439, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.521 = mul nsw i64 %tmp.436, %tmp.452, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.522 = mul nsw i64 %tmp.466, %tmp.423, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.523 = mul nsw i64 %tmp.420, %tmp.469, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.524 = mul nsw i64 %tmp.481, %tmp.412, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.525 = mul nsw i64 %tmp.409, %tmp.484, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp.520, %tmp.522, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp51, %tmp.521, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp.524, %tmp.525, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp53, %tmp.523, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.526 = add i64 %tmp52, %tmp50, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %output.addr.88 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !404 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp.526, i64* %output.addr.88, align 8, !dbg !404 ; [debug line = 202:3]
  %tmp.527 = mul nsw i64 %tmp.449, %tmp.452, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.528 = mul nsw i64 %tmp.481, %tmp.423, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.529 = mul nsw i64 %tmp.420, %tmp.484, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp.527, %tmp.529, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.530 = add i64 %tmp54, %tmp.528, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.531 = trunc i64 %tmp.530 to i63, !dbg !405 ; [#uses=1 type=i63] [debug line = 208:3]
  %tmp.532 = zext i63 %tmp.531 to i64, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.533 = shl nuw i64 %tmp.532, 1, !dbg !405   ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.534 = mul nsw i64 %tmp.466, %tmp.439, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.535 = mul nsw i64 %tmp.436, %tmp.469, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp.533, %tmp.535, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.536 = add i64 %tmp55, %tmp.534, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %output.addr.89 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !405 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp.536, i64* %output.addr.89, align 8, !dbg !405 ; [debug line = 208:3]
  %tmp.537 = mul nsw i64 %tmp.466, %tmp.452, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.538 = mul nsw i64 %tmp.449, %tmp.469, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.539 = mul nsw i64 %tmp.481, %tmp.439, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.540 = mul nsw i64 %tmp.436, %tmp.484, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp.538, %tmp.537, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp.539, %tmp.540, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.541 = add i64 %tmp57, %tmp56, !dbg !406    ; [#uses=1 type=i64] [debug line = 213:3]
  %output.addr.90 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !406 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp.541, i64* %output.addr.90, align 8, !dbg !406 ; [debug line = 213:3]
  %tmp.542 = mul nsw i64 %tmp.466, %tmp.469, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.543 = mul nsw i64 %tmp.481, %tmp.452, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.544 = mul nsw i64 %tmp.449, %tmp.484, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.545 = add nsw i64 %tmp.544, %tmp.543, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.546 = trunc i64 %tmp.545 to i63, !dbg !407 ; [#uses=1 type=i63] [debug line = 217:3]
  %tmp.547 = zext i63 %tmp.546 to i64, !dbg !407  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.548 = shl nuw i64 %tmp.547, 1, !dbg !407   ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.549 = add nsw i64 %tmp.548, %tmp.542, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %output.addr.91 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !407 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp.549, i64* %output.addr.91, align 8, !dbg !407 ; [debug line = 217:3]
  %tmp.550 = mul nsw i64 %tmp.481, %tmp.469, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.551 = mul nsw i64 %tmp.466, %tmp.484, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.552 = add nsw i64 %tmp.551, %tmp.550, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %output.addr.92 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !408 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp.552, i64* %output.addr.92, align 8, !dbg !408 ; [debug line = 220:3]
  %tmp.351 = sext i32 %tmp.483 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.352 = sext i32 %tmp.480 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.553 = mul i63 %tmp.352, %tmp.351, !dbg !409 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.554 = zext i63 %tmp.553 to i64, !dbg !409  ; [#uses=1 type=i64] [debug line = 222:3]
  %tmp.555 = shl nuw i64 %tmp.554, 1, !dbg !409   ; [#uses=1 type=i64] [debug line = 222:3]
  %output.addr.93 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !409 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp.555, i64* %output.addr.93, align 8, !dbg !409 ; [debug line = 222:3]
  ret void, !dbg !410                             ; [debug line = 223:1]
}

; [#uses=2]
define internal fastcc void @fproduct.2([19 x i64]* nocapture %output, [10 x i64]* nocapture %in2, [10 x i64]* nocapture %in) {
  %in.addr = getelementptr [10 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %in2.addr = getelementptr [10 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !388 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !390 ; [debug line = 122:1]
  %in2.load = load i64* %in2.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2.load to i32, !dbg !391    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp. = sext i32 %tmp to i64, !dbg !391         ; [#uses=10 type=i64] [debug line = 123:2]
  %in.load = load i64* %in.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp.383 = trunc i64 %in.load to i32, !dbg !391 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp.384 = sext i32 %tmp.383 to i64, !dbg !391  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp.385 = mul nsw i64 %tmp.384, %tmp., !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp.385, i64* %output.addr, align 8, !dbg !391 ; [debug line = 123:2]
  %in.addr.38 = getelementptr [10 x i64]* %in, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in.load.31 = load i64* %in.addr.38, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.388 = trunc i64 %in.load.31 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.389 = sext i32 %tmp.388 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.390 = mul nsw i64 %tmp.389, %tmp., !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2.addr.10 = getelementptr [10 x i64]* %in2, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2.load.2 = load i64* %in2.addr.10, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.391 = trunc i64 %in2.load.2 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.392 = sext i32 %tmp.391 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.395 = mul nsw i64 %tmp.384, %tmp.392, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.396 = add nsw i64 %tmp.395, %tmp.390, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %output.addr.94 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp.396, i64* %output.addr.94, align 8, !dbg !392 ; [debug line = 124:3]
  %tmp.353 = sext i32 %tmp.391 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.354 = sext i32 %tmp.388 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.556 = mul i63 %tmp.354, %tmp.353, !dbg !393 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.557 = zext i63 %tmp.556 to i64, !dbg !393  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.402 = shl nuw i64 %tmp.557, 1, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %in.addr.39 = getelementptr [10 x i64]* %in, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in.load.32 = load i64* %in.addr.39, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.405 = trunc i64 %in.load.32 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.406 = sext i32 %tmp.405 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.407 = mul nsw i64 %tmp.406, %tmp., !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2.addr.11 = getelementptr [10 x i64]* %in2, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2.load.5 = load i64* %in2.addr.11, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.408 = trunc i64 %in2.load.5 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.409 = sext i32 %tmp.408 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.412 = mul nsw i64 %tmp.384, %tmp.409, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp.402, %tmp.412, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.414 = add i64 %tmp1, %tmp.407, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %output.addr.95 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp.414, i64* %output.addr.95, align 8, !dbg !393 ; [debug line = 126:3]
  %tmp.419 = mul nsw i64 %tmp.406, %tmp.392, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.424 = mul nsw i64 %tmp.389, %tmp.409, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in.addr.40 = getelementptr [10 x i64]* %in, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in.load.33 = load i64* %in.addr.40, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.427 = trunc i64 %in.load.33 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.428 = sext i32 %tmp.427 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.429 = mul nsw i64 %tmp.428, %tmp., !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.addr.12 = getelementptr [10 x i64]* %in2, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2.load.9 = load i64* %in2.addr.12, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.430 = trunc i64 %in2.load.9 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.431 = sext i32 %tmp.430 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.434 = mul nsw i64 %tmp.384, %tmp.431, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp.424, %tmp.419, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp.429, %tmp.434, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.437 = add i64 %tmp3, %tmp2, !dbg !394      ; [#uses=1 type=i64] [debug line = 129:3]
  %output.addr.96 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp.437, i64* %output.addr.96, align 8, !dbg !394 ; [debug line = 129:3]
  %tmp.442 = mul nsw i64 %tmp.406, %tmp.409, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.447 = mul nsw i64 %tmp.428, %tmp.392, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.452 = mul nsw i64 %tmp.389, %tmp.431, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.453 = add nsw i64 %tmp.452, %tmp.447, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.558 = trunc i64 %tmp.453 to i63, !dbg !395 ; [#uses=1 type=i63] [debug line = 133:3]
  %tmp.560 = zext i63 %tmp.558 to i64, !dbg !395  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.454 = shl nuw i64 %tmp.560, 1, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %in.addr.41 = getelementptr [10 x i64]* %in, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in.load.34 = load i64* %in.addr.41, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.457 = trunc i64 %in.load.34 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.458 = sext i32 %tmp.457 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.459 = mul nsw i64 %tmp.458, %tmp., !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.addr.13 = getelementptr [10 x i64]* %in2, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2.load.10 = load i64* %in2.addr.13, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.460 = trunc i64 %in2.load.10 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.461 = sext i32 %tmp.460 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.464 = mul nsw i64 %tmp.384, %tmp.461, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp.454, %tmp.442, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp.459, %tmp.464, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.467 = add i64 %tmp5, %tmp4, !dbg !395      ; [#uses=1 type=i64] [debug line = 133:3]
  %output.addr.97 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp.467, i64* %output.addr.97, align 8, !dbg !395 ; [debug line = 133:3]
  %tmp.472 = mul nsw i64 %tmp.428, %tmp.409, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.477 = mul nsw i64 %tmp.406, %tmp.431, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.482 = mul nsw i64 %tmp.458, %tmp.392, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.487 = mul nsw i64 %tmp.389, %tmp.461, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in.addr.42 = getelementptr [10 x i64]* %in, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in.load.35 = load i64* %in.addr.42, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.490 = trunc i64 %in.load.35 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.491 = sext i32 %tmp.490 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.492 = mul nsw i64 %tmp.491, %tmp., !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.addr.14 = getelementptr [10 x i64]* %in2, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2.load.11 = load i64* %in2.addr.14, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.493 = trunc i64 %in2.load.11 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.494 = sext i32 %tmp.493 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.497 = mul nsw i64 %tmp.384, %tmp.494, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp.472, %tmp.482, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp7, %tmp.477, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp.492, %tmp.497, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp9, %tmp.487, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.502 = add i64 %tmp8, %tmp6, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %output.addr.98 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp.502, i64* %output.addr.98, align 8, !dbg !396 ; [debug line = 138:3]
  %tmp.507 = mul nsw i64 %tmp.428, %tmp.431, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.512 = mul nsw i64 %tmp.491, %tmp.392, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.517 = mul nsw i64 %tmp.389, %tmp.494, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp.507, %tmp.517, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.519 = add i64 %tmp10, %tmp.512, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.561 = trunc i64 %tmp.519 to i63, !dbg !397 ; [#uses=1 type=i63] [debug line = 144:3]
  %tmp.562 = zext i63 %tmp.561 to i64, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.520 = shl nuw i64 %tmp.562, 1, !dbg !397   ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.525 = mul nsw i64 %tmp.458, %tmp.409, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.530 = mul nsw i64 %tmp.406, %tmp.461, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in.addr.43 = getelementptr [10 x i64]* %in, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in.load.36 = load i64* %in.addr.43, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.533 = trunc i64 %in.load.36 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.534 = sext i32 %tmp.533 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.535 = mul nsw i64 %tmp.534, %tmp., !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.addr.15 = getelementptr [10 x i64]* %in2, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2.load.12 = load i64* %in2.addr.15, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.536 = trunc i64 %in2.load.12 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.537 = sext i32 %tmp.536 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.540 = mul nsw i64 %tmp.384, %tmp.537, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp.525, %tmp.520, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp.535, %tmp.540, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp13, %tmp.530, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.544 = add i64 %tmp12, %tmp11, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %output.addr.99 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp.544, i64* %output.addr.99, align 8, !dbg !397 ; [debug line = 144:3]
  %tmp.549 = mul nsw i64 %tmp.458, %tmp.431, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.554 = mul nsw i64 %tmp.428, %tmp.461, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.559 = mul nsw i64 %tmp.491, %tmp.409, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.563 = mul nsw i64 %tmp.406, %tmp.494, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.564 = mul nsw i64 %tmp.534, %tmp.392, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.565 = mul nsw i64 %tmp.389, %tmp.537, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in.addr.44 = getelementptr [10 x i64]* %in, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in.load.37 = load i64* %in.addr.44, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.566 = trunc i64 %in.load.37 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.567 = sext i32 %tmp.566 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.568 = mul nsw i64 %tmp.567, %tmp., !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.addr.16 = getelementptr [10 x i64]* %in2, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2.load.13 = load i64* %in2.addr.16, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.569 = trunc i64 %in2.load.13 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.570 = sext i32 %tmp.569 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.571 = mul nsw i64 %tmp.384, %tmp.570, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp.554, %tmp.549, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp.559, %tmp.563, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp16, %tmp15, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp.564, %tmp.565, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp.568, %tmp.571, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp19, %tmp18, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.572 = add i64 %tmp17, %tmp14, !dbg !398    ; [#uses=1 type=i64] [debug line = 151:3]
  %output.addr.100 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp.572, i64* %output.addr.100, align 8, !dbg !398 ; [debug line = 151:3]
  %tmp.573 = mul nsw i64 %tmp.458, %tmp.461, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.574 = mul nsw i64 %tmp.491, %tmp.431, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.575 = mul nsw i64 %tmp.428, %tmp.494, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.576 = mul nsw i64 %tmp.567, %tmp.392, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.577 = mul nsw i64 %tmp.389, %tmp.570, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp.575, %tmp.574, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp.576, %tmp.577, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.142 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp.143 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp.578 = add i63 %tmp.143, %tmp.142, !dbg !399 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp.579 = zext i63 %tmp.578 to i64, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.580 = shl nuw i64 %tmp.579, 1, !dbg !399   ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.581 = mul nsw i64 %tmp.534, %tmp.409, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.582 = mul nsw i64 %tmp.406, %tmp.537, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in.addr.45 = getelementptr [10 x i64]* %in, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in.load.38 = load i64* %in.addr.45, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.583 = trunc i64 %in.load.38 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.584 = sext i32 %tmp.583 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.585 = mul nsw i64 %tmp.584, %tmp., !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.addr.17 = getelementptr [10 x i64]* %in2, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2.load.14 = load i64* %in2.addr.17, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.586 = trunc i64 %in2.load.14 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.587 = sext i32 %tmp.586 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.588 = mul nsw i64 %tmp.384, %tmp.587, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp.573, %tmp.581, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp23, %tmp.580, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp.585, %tmp.588, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp25, %tmp.582, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.589 = add i64 %tmp24, %tmp22, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %output.addr.101 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp.589, i64* %output.addr.101, align 8, !dbg !399 ; [debug line = 159:3]
  %tmp.590 = mul nsw i64 %tmp.491, %tmp.461, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.591 = mul nsw i64 %tmp.458, %tmp.494, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.592 = mul nsw i64 %tmp.534, %tmp.431, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.593 = mul nsw i64 %tmp.428, %tmp.537, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.594 = mul nsw i64 %tmp.567, %tmp.409, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.595 = mul nsw i64 %tmp.406, %tmp.570, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.596 = mul nsw i64 %tmp.584, %tmp.392, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.597 = mul nsw i64 %tmp.389, %tmp.587, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in.addr.46 = getelementptr [10 x i64]* %in, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in.load.39 = load i64* %in.addr.46, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.598 = trunc i64 %in.load.39 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.599 = sext i32 %tmp.598 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.600 = mul nsw i64 %tmp.599, %tmp., !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.addr.18 = getelementptr [10 x i64]* %in2, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2.load.15 = load i64* %in2.addr.18, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.601 = trunc i64 %in2.load.15 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.602 = sext i32 %tmp.601 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.603 = mul nsw i64 %tmp.384, %tmp.602, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp.591, %tmp.590, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp.593, %tmp.594, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp29, %tmp.592, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp28, %tmp27, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp.595, %tmp.596, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp.600, %tmp.603, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp33, %tmp.597, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp32, %tmp31, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.604 = add i64 %tmp30, %tmp26, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %output.addr.102 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp.604, i64* %output.addr.102, align 8, !dbg !400 ; [debug line = 168:3]
  %tmp.605 = mul nsw i64 %tmp.491, %tmp.494, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.606 = mul nsw i64 %tmp.567, %tmp.431, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.607 = mul nsw i64 %tmp.428, %tmp.570, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.608 = mul nsw i64 %tmp.599, %tmp.392, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.609 = mul nsw i64 %tmp.389, %tmp.602, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp.606, %tmp.605, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp.608, %tmp.609, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp36, %tmp.607, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.144 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp.145 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp.610 = add i63 %tmp.145, %tmp.144, !dbg !401 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp.611 = zext i63 %tmp.610 to i64, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.612 = shl nuw i64 %tmp.611, 1, !dbg !401   ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.613 = mul nsw i64 %tmp.534, %tmp.461, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.614 = mul nsw i64 %tmp.458, %tmp.537, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.615 = mul nsw i64 %tmp.584, %tmp.409, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.616 = mul nsw i64 %tmp.406, %tmp.587, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp.613, %tmp.612, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp.615, %tmp.616, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp39, %tmp.614, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.617 = add i64 %tmp38, %tmp37, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %output.addr.103 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !401 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp.617, i64* %output.addr.103, align 8, !dbg !401 ; [debug line = 178:3]
  %tmp.618 = mul nsw i64 %tmp.534, %tmp.494, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.619 = mul nsw i64 %tmp.491, %tmp.537, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.620 = mul nsw i64 %tmp.567, %tmp.461, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.621 = mul nsw i64 %tmp.458, %tmp.570, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.622 = mul nsw i64 %tmp.584, %tmp.431, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.623 = mul nsw i64 %tmp.428, %tmp.587, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.624 = mul nsw i64 %tmp.599, %tmp.409, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.625 = mul nsw i64 %tmp.406, %tmp.602, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp.619, %tmp.618, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp.620, %tmp.621, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp42, %tmp41, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp.622, %tmp.623, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp.624, %tmp.625, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp45, %tmp44, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.626 = add i64 %tmp43, %tmp40, !dbg !402    ; [#uses=1 type=i64] [debug line = 187:3]
  %output.addr.104 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !402 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp.626, i64* %output.addr.104, align 8, !dbg !402 ; [debug line = 187:3]
  %tmp.627 = mul nsw i64 %tmp.534, %tmp.537, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.628 = mul nsw i64 %tmp.567, %tmp.494, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.629 = mul nsw i64 %tmp.491, %tmp.570, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.630 = mul nsw i64 %tmp.599, %tmp.431, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.631 = mul nsw i64 %tmp.428, %tmp.602, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp.629, %tmp.628, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp.630, %tmp.631, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.146 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp.147 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp.632 = add i63 %tmp.147, %tmp.146, !dbg !403 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp.633 = zext i63 %tmp.632 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.634 = shl nuw i64 %tmp.633, 1, !dbg !403   ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.635 = mul nsw i64 %tmp.584, %tmp.461, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.636 = mul nsw i64 %tmp.458, %tmp.587, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp.634, %tmp.627, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp.635, %tmp.636, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.637 = add i64 %tmp49, %tmp48, !dbg !403    ; [#uses=1 type=i64] [debug line = 195:3]
  %output.addr.105 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !403 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp.637, i64* %output.addr.105, align 8, !dbg !403 ; [debug line = 195:3]
  %tmp.638 = mul nsw i64 %tmp.567, %tmp.537, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.639 = mul nsw i64 %tmp.534, %tmp.570, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.640 = mul nsw i64 %tmp.584, %tmp.494, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.641 = mul nsw i64 %tmp.491, %tmp.587, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.642 = mul nsw i64 %tmp.599, %tmp.461, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.643 = mul nsw i64 %tmp.458, %tmp.602, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp.638, %tmp.640, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp51, %tmp.639, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp.642, %tmp.643, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp53, %tmp.641, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.644 = add i64 %tmp52, %tmp50, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %output.addr.106 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !404 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp.644, i64* %output.addr.106, align 8, !dbg !404 ; [debug line = 202:3]
  %tmp.645 = mul nsw i64 %tmp.567, %tmp.570, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.646 = mul nsw i64 %tmp.599, %tmp.494, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.647 = mul nsw i64 %tmp.491, %tmp.602, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp.645, %tmp.647, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.648 = add i64 %tmp54, %tmp.646, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.649 = trunc i64 %tmp.648 to i63, !dbg !405 ; [#uses=1 type=i63] [debug line = 208:3]
  %tmp.650 = zext i63 %tmp.649 to i64, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.651 = shl nuw i64 %tmp.650, 1, !dbg !405   ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.652 = mul nsw i64 %tmp.584, %tmp.537, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.653 = mul nsw i64 %tmp.534, %tmp.587, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp.651, %tmp.653, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.654 = add i64 %tmp55, %tmp.652, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %output.addr.107 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !405 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp.654, i64* %output.addr.107, align 8, !dbg !405 ; [debug line = 208:3]
  %tmp.655 = mul nsw i64 %tmp.584, %tmp.570, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.656 = mul nsw i64 %tmp.567, %tmp.587, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.657 = mul nsw i64 %tmp.599, %tmp.537, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.658 = mul nsw i64 %tmp.534, %tmp.602, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp.656, %tmp.655, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp.657, %tmp.658, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.659 = add i64 %tmp57, %tmp56, !dbg !406    ; [#uses=1 type=i64] [debug line = 213:3]
  %output.addr.108 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !406 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp.659, i64* %output.addr.108, align 8, !dbg !406 ; [debug line = 213:3]
  %tmp.660 = mul nsw i64 %tmp.584, %tmp.587, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.661 = mul nsw i64 %tmp.599, %tmp.570, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.662 = mul nsw i64 %tmp.567, %tmp.602, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.663 = add nsw i64 %tmp.662, %tmp.661, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.664 = trunc i64 %tmp.663 to i63, !dbg !407 ; [#uses=1 type=i63] [debug line = 217:3]
  %tmp.665 = zext i63 %tmp.664 to i64, !dbg !407  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.666 = shl nuw i64 %tmp.665, 1, !dbg !407   ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.667 = add nsw i64 %tmp.666, %tmp.660, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %output.addr.109 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !407 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp.667, i64* %output.addr.109, align 8, !dbg !407 ; [debug line = 217:3]
  %tmp.668 = mul nsw i64 %tmp.599, %tmp.587, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.669 = mul nsw i64 %tmp.584, %tmp.602, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.670 = add nsw i64 %tmp.669, %tmp.668, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %output.addr.110 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !408 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp.670, i64* %output.addr.110, align 8, !dbg !408 ; [debug line = 220:3]
  %tmp.355 = sext i32 %tmp.601 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.356 = sext i32 %tmp.598 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.671 = mul i63 %tmp.356, %tmp.355, !dbg !409 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.672 = zext i63 %tmp.671 to i64, !dbg !409  ; [#uses=1 type=i64] [debug line = 222:3]
  %tmp.673 = shl nuw i64 %tmp.672, 1, !dbg !409   ; [#uses=1 type=i64] [debug line = 222:3]
  %output.addr.111 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !409 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp.673, i64* %output.addr.111, align 8, !dbg !409 ; [debug line = 222:3]
  ret void, !dbg !410                             ; [debug line = 223:1]
}

; [#uses=1]
define internal fastcc void @fproduct.1([19 x i64]* nocapture %output, [19 x i64]* nocapture %in2, [10 x i63]* nocapture %in) {
  %in.addr85 = getelementptr [10 x i63]* %in, i64 0, i64 0 ; [#uses=1 type=i63*]
  %in2.addr = getelementptr [19 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !388 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !390 ; [debug line = 122:1]
  %in2.load = load i64* %in2.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2.load to i32, !dbg !391    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp. = sext i32 %tmp to i64, !dbg !391         ; [#uses=10 type=i64] [debug line = 123:2]
  %in.load86 = load i63* %in.addr85, align 8      ; [#uses=1 type=i63]
  %tmp.383 = trunc i63 %in.load86 to i32, !dbg !391 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp.384 = sext i32 %tmp.383 to i64, !dbg !391  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp.385 = mul nsw i64 %tmp.384, %tmp., !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp.385, i64* %output.addr, align 8, !dbg !391 ; [debug line = 123:2]
  %in.addr = getelementptr [10 x i63]* %in, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i63*] [debug line = 124:3]
  %in.load = load i63* %in.addr, align 8          ; [#uses=1 type=i63]
  %tmp.388 = trunc i63 %in.load to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.389 = sext i32 %tmp.388 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.390 = mul nsw i64 %tmp.389, %tmp., !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2.addr.19 = getelementptr [19 x i64]* %in2, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2.load.2 = load i64* %in2.addr.19, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.391 = trunc i64 %in2.load.2 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.392 = sext i32 %tmp.391 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.395 = mul nsw i64 %tmp.384, %tmp.392, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.396 = add nsw i64 %tmp.395, %tmp.390, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %output.addr.112 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp.396, i64* %output.addr.112, align 8, !dbg !392 ; [debug line = 124:3]
  %tmp.357 = sext i32 %tmp.391 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.358 = sext i32 %tmp.388 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.674 = mul i63 %tmp.358, %tmp.357, !dbg !393 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.676 = zext i63 %tmp.674 to i64, !dbg !393  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.402 = shl nuw i64 %tmp.676, 1, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %in.addr.47 = getelementptr [10 x i63]* %in, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i63*] [debug line = 126:3]
  %in.load.40 = load i63* %in.addr.47, align 8    ; [#uses=1 type=i63]
  %tmp.405 = trunc i63 %in.load.40 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.406 = sext i32 %tmp.405 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.407 = mul nsw i64 %tmp.406, %tmp., !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2.addr.20 = getelementptr [19 x i64]* %in2, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2.load.5 = load i64* %in2.addr.20, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.408 = trunc i64 %in2.load.5 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.409 = sext i32 %tmp.408 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.412 = mul nsw i64 %tmp.384, %tmp.409, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp.402, %tmp.412, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.414 = add i64 %tmp1, %tmp.407, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %output.addr.113 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp.414, i64* %output.addr.113, align 8, !dbg !393 ; [debug line = 126:3]
  %tmp.419 = mul nsw i64 %tmp.406, %tmp.392, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.424 = mul nsw i64 %tmp.389, %tmp.409, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in.addr.48 = getelementptr [10 x i63]* %in, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i63*] [debug line = 129:3]
  %in.load.41 = load i63* %in.addr.48, align 8    ; [#uses=1 type=i63]
  %tmp.427 = trunc i63 %in.load.41 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.428 = sext i32 %tmp.427 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.429 = mul nsw i64 %tmp.428, %tmp., !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.addr.21 = getelementptr [19 x i64]* %in2, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2.load.9 = load i64* %in2.addr.21, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.430 = trunc i64 %in2.load.9 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.431 = sext i32 %tmp.430 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.434 = mul nsw i64 %tmp.384, %tmp.431, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp.424, %tmp.419, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp.429, %tmp.434, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.437 = add i64 %tmp3, %tmp2, !dbg !394      ; [#uses=1 type=i64] [debug line = 129:3]
  %output.addr.114 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp.437, i64* %output.addr.114, align 8, !dbg !394 ; [debug line = 129:3]
  %tmp.442 = mul nsw i64 %tmp.406, %tmp.409, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.447 = mul nsw i64 %tmp.428, %tmp.392, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.452 = mul nsw i64 %tmp.389, %tmp.431, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.453 = add nsw i64 %tmp.452, %tmp.447, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.677 = trunc i64 %tmp.453 to i63, !dbg !395 ; [#uses=1 type=i63] [debug line = 133:3]
  %tmp.678 = zext i63 %tmp.677 to i64, !dbg !395  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.454 = shl nuw i64 %tmp.678, 1, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %in.addr.49 = getelementptr [10 x i63]* %in, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i63*] [debug line = 133:3]
  %in.load.42 = load i63* %in.addr.49, align 8    ; [#uses=1 type=i63]
  %tmp.457 = trunc i63 %in.load.42 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.458 = sext i32 %tmp.457 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.459 = mul nsw i64 %tmp.458, %tmp., !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.addr.22 = getelementptr [19 x i64]* %in2, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2.load.14 = load i64* %in2.addr.22, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.460 = trunc i64 %in2.load.14 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.461 = sext i32 %tmp.460 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.464 = mul nsw i64 %tmp.384, %tmp.461, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp.454, %tmp.442, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp.459, %tmp.464, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.467 = add i64 %tmp5, %tmp4, !dbg !395      ; [#uses=1 type=i64] [debug line = 133:3]
  %output.addr.115 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp.467, i64* %output.addr.115, align 8, !dbg !395 ; [debug line = 133:3]
  %tmp.472 = mul nsw i64 %tmp.428, %tmp.409, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.477 = mul nsw i64 %tmp.406, %tmp.431, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.482 = mul nsw i64 %tmp.458, %tmp.392, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.487 = mul nsw i64 %tmp.389, %tmp.461, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in.addr.50 = getelementptr [10 x i63]* %in, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i63*] [debug line = 138:3]
  %in.load.43 = load i63* %in.addr.50, align 8    ; [#uses=1 type=i63]
  %tmp.490 = trunc i63 %in.load.43 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.491 = sext i32 %tmp.490 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.492 = mul nsw i64 %tmp.491, %tmp., !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.addr.23 = getelementptr [19 x i64]* %in2, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2.load.16 = load i64* %in2.addr.23, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.493 = trunc i64 %in2.load.16 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.494 = sext i32 %tmp.493 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.497 = mul nsw i64 %tmp.384, %tmp.494, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp.472, %tmp.482, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp7, %tmp.477, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp.492, %tmp.497, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp9, %tmp.487, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.502 = add i64 %tmp8, %tmp6, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %output.addr.116 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp.502, i64* %output.addr.116, align 8, !dbg !396 ; [debug line = 138:3]
  %tmp.507 = mul nsw i64 %tmp.428, %tmp.431, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.512 = mul nsw i64 %tmp.491, %tmp.392, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.517 = mul nsw i64 %tmp.389, %tmp.494, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp.507, %tmp.517, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.519 = add i64 %tmp10, %tmp.512, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.679 = trunc i64 %tmp.519 to i63, !dbg !397 ; [#uses=1 type=i63] [debug line = 144:3]
  %tmp.681 = zext i63 %tmp.679 to i64, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.520 = shl nuw i64 %tmp.681, 1, !dbg !397   ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.525 = mul nsw i64 %tmp.458, %tmp.409, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.530 = mul nsw i64 %tmp.406, %tmp.461, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in.addr.51 = getelementptr [10 x i63]* %in, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i63*] [debug line = 144:3]
  %in.load.44 = load i63* %in.addr.51, align 8    ; [#uses=1 type=i63]
  %tmp.533 = trunc i63 %in.load.44 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.534 = sext i32 %tmp.533 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.535 = mul nsw i64 %tmp.534, %tmp., !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.addr.24 = getelementptr [19 x i64]* %in2, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2.load.17 = load i64* %in2.addr.24, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.536 = trunc i64 %in2.load.17 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.537 = sext i32 %tmp.536 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.540 = mul nsw i64 %tmp.384, %tmp.537, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp.525, %tmp.520, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp.535, %tmp.540, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp13, %tmp.530, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.544 = add i64 %tmp12, %tmp11, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %output.addr.117 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp.544, i64* %output.addr.117, align 8, !dbg !397 ; [debug line = 144:3]
  %tmp.549 = mul nsw i64 %tmp.458, %tmp.431, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.554 = mul nsw i64 %tmp.428, %tmp.461, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.559 = mul nsw i64 %tmp.491, %tmp.409, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.564 = mul nsw i64 %tmp.406, %tmp.494, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.569 = mul nsw i64 %tmp.534, %tmp.392, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.574 = mul nsw i64 %tmp.389, %tmp.537, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in.addr.52 = getelementptr [10 x i63]* %in, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i63*] [debug line = 151:3]
  %in.load.45 = load i63* %in.addr.52, align 8    ; [#uses=1 type=i63]
  %tmp.577 = trunc i63 %in.load.45 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.578 = sext i32 %tmp.577 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.579 = mul nsw i64 %tmp.578, %tmp., !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.addr.25 = getelementptr [19 x i64]* %in2, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2.load.18 = load i64* %in2.addr.25, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.580 = trunc i64 %in2.load.18 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.581 = sext i32 %tmp.580 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.584 = mul nsw i64 %tmp.384, %tmp.581, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp.554, %tmp.549, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp.559, %tmp.564, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp16, %tmp15, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp.569, %tmp.574, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp.579, %tmp.584, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp19, %tmp18, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.591 = add i64 %tmp17, %tmp14, !dbg !398    ; [#uses=1 type=i64] [debug line = 151:3]
  %output.addr.118 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp.591, i64* %output.addr.118, align 8, !dbg !398 ; [debug line = 151:3]
  %tmp.596 = mul nsw i64 %tmp.458, %tmp.461, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.601 = mul nsw i64 %tmp.491, %tmp.431, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.606 = mul nsw i64 %tmp.428, %tmp.494, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.611 = mul nsw i64 %tmp.578, %tmp.392, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.616 = mul nsw i64 %tmp.389, %tmp.581, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp.606, %tmp.601, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp.611, %tmp.616, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.148 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp.149 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp.682 = add i63 %tmp.149, %tmp.148, !dbg !399 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp.683 = zext i63 %tmp.682 to i64, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.620 = shl nuw i64 %tmp.683, 1, !dbg !399   ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.625 = mul nsw i64 %tmp.534, %tmp.409, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.630 = mul nsw i64 %tmp.406, %tmp.537, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in.addr.53 = getelementptr [10 x i63]* %in, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i63*] [debug line = 159:3]
  %in.load.46 = load i63* %in.addr.53, align 8    ; [#uses=1 type=i63]
  %tmp.633 = trunc i63 %in.load.46 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.634 = sext i32 %tmp.633 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.635 = mul nsw i64 %tmp.634, %tmp., !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.addr.26 = getelementptr [19 x i64]* %in2, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2.load.19 = load i64* %in2.addr.26, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.636 = trunc i64 %in2.load.19 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.637 = sext i32 %tmp.636 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.640 = mul nsw i64 %tmp.384, %tmp.637, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp.596, %tmp.625, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp23, %tmp.620, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp.635, %tmp.640, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp25, %tmp.630, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.645 = add i64 %tmp24, %tmp22, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %output.addr.119 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp.645, i64* %output.addr.119, align 8, !dbg !399 ; [debug line = 159:3]
  %tmp.650 = mul nsw i64 %tmp.491, %tmp.461, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.655 = mul nsw i64 %tmp.458, %tmp.494, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.660 = mul nsw i64 %tmp.534, %tmp.431, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.665 = mul nsw i64 %tmp.428, %tmp.537, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.670 = mul nsw i64 %tmp.578, %tmp.409, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.675 = mul nsw i64 %tmp.406, %tmp.581, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.680 = mul nsw i64 %tmp.634, %tmp.392, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.684 = mul nsw i64 %tmp.389, %tmp.637, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in.addr.54 = getelementptr [10 x i63]* %in, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i63*] [debug line = 168:3]
  %in.load.47 = load i63* %in.addr.54, align 8    ; [#uses=1 type=i63]
  %tmp.685 = trunc i63 %in.load.47 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.686 = sext i32 %tmp.685 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.687 = mul nsw i64 %tmp.686, %tmp., !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.addr.27 = getelementptr [19 x i64]* %in2, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2.load.20 = load i64* %in2.addr.27, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.688 = trunc i64 %in2.load.20 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.689 = sext i32 %tmp.688 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.690 = mul nsw i64 %tmp.384, %tmp.689, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp.655, %tmp.650, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp.665, %tmp.670, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp29, %tmp.660, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp28, %tmp27, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp.675, %tmp.680, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp.687, %tmp.690, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp33, %tmp.684, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp32, %tmp31, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.691 = add i64 %tmp30, %tmp26, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %output.addr.120 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp.691, i64* %output.addr.120, align 8, !dbg !400 ; [debug line = 168:3]
  %tmp.692 = mul nsw i64 %tmp.491, %tmp.494, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.693 = mul nsw i64 %tmp.578, %tmp.431, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.694 = mul nsw i64 %tmp.428, %tmp.581, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.695 = mul nsw i64 %tmp.686, %tmp.392, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.696 = mul nsw i64 %tmp.389, %tmp.689, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp.693, %tmp.692, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp.695, %tmp.696, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp36, %tmp.694, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.150 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp.151 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp.697 = add i63 %tmp.151, %tmp.150, !dbg !401 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp.698 = zext i63 %tmp.697 to i64, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.699 = shl nuw i64 %tmp.698, 1, !dbg !401   ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.700 = mul nsw i64 %tmp.534, %tmp.461, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.701 = mul nsw i64 %tmp.458, %tmp.537, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.702 = mul nsw i64 %tmp.634, %tmp.409, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.703 = mul nsw i64 %tmp.406, %tmp.637, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp.700, %tmp.699, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp.702, %tmp.703, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp39, %tmp.701, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.704 = add i64 %tmp38, %tmp37, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %output.addr.121 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !401 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp.704, i64* %output.addr.121, align 8, !dbg !401 ; [debug line = 178:3]
  %tmp.705 = mul nsw i64 %tmp.534, %tmp.494, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.706 = mul nsw i64 %tmp.491, %tmp.537, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.707 = mul nsw i64 %tmp.578, %tmp.461, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.708 = mul nsw i64 %tmp.458, %tmp.581, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.709 = mul nsw i64 %tmp.634, %tmp.431, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.710 = mul nsw i64 %tmp.428, %tmp.637, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.711 = mul nsw i64 %tmp.686, %tmp.409, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.712 = mul nsw i64 %tmp.406, %tmp.689, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp.706, %tmp.705, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp.707, %tmp.708, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp42, %tmp41, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp.709, %tmp.710, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp.711, %tmp.712, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp45, %tmp44, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.713 = add i64 %tmp43, %tmp40, !dbg !402    ; [#uses=1 type=i64] [debug line = 187:3]
  %output.addr.122 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !402 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp.713, i64* %output.addr.122, align 8, !dbg !402 ; [debug line = 187:3]
  %tmp.714 = mul nsw i64 %tmp.534, %tmp.537, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.715 = mul nsw i64 %tmp.578, %tmp.494, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.716 = mul nsw i64 %tmp.491, %tmp.581, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.717 = mul nsw i64 %tmp.686, %tmp.431, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.718 = mul nsw i64 %tmp.428, %tmp.689, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp.716, %tmp.715, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp.717, %tmp.718, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.152 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp.153 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp.719 = add i63 %tmp.153, %tmp.152, !dbg !403 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp.720 = zext i63 %tmp.719 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.721 = shl nuw i64 %tmp.720, 1, !dbg !403   ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.722 = mul nsw i64 %tmp.634, %tmp.461, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.723 = mul nsw i64 %tmp.458, %tmp.637, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp.721, %tmp.714, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp.722, %tmp.723, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.724 = add i64 %tmp49, %tmp48, !dbg !403    ; [#uses=1 type=i64] [debug line = 195:3]
  %output.addr.123 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !403 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp.724, i64* %output.addr.123, align 8, !dbg !403 ; [debug line = 195:3]
  %tmp.725 = mul nsw i64 %tmp.578, %tmp.537, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.726 = mul nsw i64 %tmp.534, %tmp.581, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.727 = mul nsw i64 %tmp.634, %tmp.494, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.728 = mul nsw i64 %tmp.491, %tmp.637, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.729 = mul nsw i64 %tmp.686, %tmp.461, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.730 = mul nsw i64 %tmp.458, %tmp.689, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp.725, %tmp.727, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp51, %tmp.726, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp.729, %tmp.730, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp53, %tmp.728, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.731 = add i64 %tmp52, %tmp50, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %output.addr.124 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !404 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp.731, i64* %output.addr.124, align 8, !dbg !404 ; [debug line = 202:3]
  %tmp.732 = mul nsw i64 %tmp.578, %tmp.581, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.733 = mul nsw i64 %tmp.686, %tmp.494, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.734 = mul nsw i64 %tmp.491, %tmp.689, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp.732, %tmp.734, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.735 = add i64 %tmp54, %tmp.733, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.736 = trunc i64 %tmp.735 to i63, !dbg !405 ; [#uses=1 type=i63] [debug line = 208:3]
  %tmp.737 = zext i63 %tmp.736 to i64, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.738 = shl nuw i64 %tmp.737, 1, !dbg !405   ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.739 = mul nsw i64 %tmp.634, %tmp.537, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.740 = mul nsw i64 %tmp.534, %tmp.637, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp.738, %tmp.740, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.741 = add i64 %tmp55, %tmp.739, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %output.addr.125 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !405 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp.741, i64* %output.addr.125, align 8, !dbg !405 ; [debug line = 208:3]
  %tmp.742 = mul nsw i64 %tmp.634, %tmp.581, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.743 = mul nsw i64 %tmp.578, %tmp.637, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.744 = mul nsw i64 %tmp.686, %tmp.537, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.745 = mul nsw i64 %tmp.534, %tmp.689, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp.743, %tmp.742, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp.744, %tmp.745, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.746 = add i64 %tmp57, %tmp56, !dbg !406    ; [#uses=1 type=i64] [debug line = 213:3]
  %output.addr.126 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !406 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp.746, i64* %output.addr.126, align 8, !dbg !406 ; [debug line = 213:3]
  %tmp.747 = mul nsw i64 %tmp.634, %tmp.637, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.748 = mul nsw i64 %tmp.686, %tmp.581, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.749 = mul nsw i64 %tmp.578, %tmp.689, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.750 = add nsw i64 %tmp.749, %tmp.748, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.751 = trunc i64 %tmp.750 to i63, !dbg !407 ; [#uses=1 type=i63] [debug line = 217:3]
  %tmp.752 = zext i63 %tmp.751 to i64, !dbg !407  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.753 = shl nuw i64 %tmp.752, 1, !dbg !407   ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.754 = add nsw i64 %tmp.753, %tmp.747, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %output.addr.127 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !407 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp.754, i64* %output.addr.127, align 8, !dbg !407 ; [debug line = 217:3]
  %tmp.755 = mul nsw i64 %tmp.686, %tmp.637, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.756 = mul nsw i64 %tmp.634, %tmp.689, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.757 = add nsw i64 %tmp.756, %tmp.755, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %output.addr.128 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !408 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp.757, i64* %output.addr.128, align 8, !dbg !408 ; [debug line = 220:3]
  %tmp.359 = sext i32 %tmp.688 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.360 = sext i32 %tmp.685 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.758 = mul i63 %tmp.360, %tmp.359, !dbg !409 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.759 = zext i63 %tmp.758 to i64, !dbg !409  ; [#uses=1 type=i64] [debug line = 222:3]
  %tmp.760 = shl nuw i64 %tmp.759, 1, !dbg !409   ; [#uses=1 type=i64] [debug line = 222:3]
  %output.addr.129 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !409 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp.760, i64* %output.addr.129, align 8, !dbg !409 ; [debug line = 222:3]
  ret void, !dbg !410                             ; [debug line = 223:1]
}

; [#uses=4]
define internal fastcc void @fproduct([19 x i64]* nocapture %output, [19 x i64]* nocapture %in2, [19 x i64]* nocapture %in) {
  %in.addr = getelementptr [19 x i64]* %in, i64 0, i64 0 ; [#uses=1 type=i64*]
  %in2.addr = getelementptr [19 x i64]* %in2, i64 0, i64 0 ; [#uses=1 type=i64*]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 0 ; [#uses=1 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %output}, i64 0, metadata !411), !dbg !412 ; [debug line = 120:28] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in2}, i64 0, metadata !413), !dbg !414 ; [debug line = 120:48] [debug variable = in2]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %in}, i64 0, metadata !415), !dbg !416 ; [debug line = 120:65] [debug variable = in]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !388 ; [debug line = 121:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !390 ; [debug line = 122:1]
  %in2.load = load i64* %in2.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp = trunc i64 %in2.load to i32, !dbg !391    ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp. = sext i32 %tmp to i64, !dbg !391         ; [#uses=10 type=i64] [debug line = 123:2]
  %in.load = load i64* %in.addr, align 8, !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  %tmp.383 = trunc i64 %in.load to i32, !dbg !391 ; [#uses=1 type=i32] [debug line = 123:2]
  %tmp.384 = sext i32 %tmp.383 to i64, !dbg !391  ; [#uses=10 type=i64] [debug line = 123:2]
  %tmp.385 = mul nsw i64 %tmp.384, %tmp., !dbg !391 ; [#uses=1 type=i64] [debug line = 123:2]
  store i64 %tmp.385, i64* %output.addr, align 8, !dbg !391 ; [debug line = 123:2]
  %in.addr.55 = getelementptr [19 x i64]* %in, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in.load.48 = load i64* %in.addr.55, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.388 = trunc i64 %in.load.48 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.389 = sext i32 %tmp.388 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.390 = mul nsw i64 %tmp.389, %tmp., !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %in2.addr.28 = getelementptr [19 x i64]* %in2, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  %in2.load.2 = load i64* %in2.addr.28, align 8, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.391 = trunc i64 %in2.load.2 to i32, !dbg !392 ; [#uses=2 type=i32] [debug line = 124:3]
  %tmp.392 = sext i32 %tmp.391 to i64, !dbg !392  ; [#uses=9 type=i64] [debug line = 124:3]
  %tmp.395 = mul nsw i64 %tmp.384, %tmp.392, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %tmp.396 = add nsw i64 %tmp.395, %tmp.390, !dbg !392 ; [#uses=1 type=i64] [debug line = 124:3]
  %output.addr.130 = getelementptr [19 x i64]* %output, i64 0, i64 1, !dbg !392 ; [#uses=1 type=i64*] [debug line = 124:3]
  store i64 %tmp.396, i64* %output.addr.130, align 8, !dbg !392 ; [debug line = 124:3]
  %tmp.361 = sext i32 %tmp.391 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.362 = sext i32 %tmp.388 to i63, !dbg !393  ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.761 = mul i63 %tmp.362, %tmp.361, !dbg !393 ; [#uses=1 type=i63] [debug line = 126:3]
  %tmp.762 = zext i63 %tmp.761 to i64, !dbg !393  ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.402 = shl nuw i64 %tmp.762, 1, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %in.addr.56 = getelementptr [19 x i64]* %in, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in.load.49 = load i64* %in.addr.56, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.405 = trunc i64 %in.load.49 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.406 = sext i32 %tmp.405 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.407 = mul nsw i64 %tmp.406, %tmp., !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %in2.addr.29 = getelementptr [19 x i64]* %in2, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  %in2.load.5 = load i64* %in2.addr.29, align 8, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.408 = trunc i64 %in2.load.5 to i32, !dbg !393 ; [#uses=1 type=i32] [debug line = 126:3]
  %tmp.409 = sext i32 %tmp.408 to i64, !dbg !393  ; [#uses=10 type=i64] [debug line = 126:3]
  %tmp.412 = mul nsw i64 %tmp.384, %tmp.409, !dbg !393 ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp1 = add i64 %tmp.402, %tmp.412, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %tmp.414 = add i64 %tmp1, %tmp.407, !dbg !393   ; [#uses=1 type=i64] [debug line = 126:3]
  %output.addr.131 = getelementptr [19 x i64]* %output, i64 0, i64 2, !dbg !393 ; [#uses=1 type=i64*] [debug line = 126:3]
  store i64 %tmp.414, i64* %output.addr.131, align 8, !dbg !393 ; [debug line = 126:3]
  %tmp.419 = mul nsw i64 %tmp.406, %tmp.392, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.424 = mul nsw i64 %tmp.389, %tmp.409, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in.addr.57 = getelementptr [19 x i64]* %in, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in.load.50 = load i64* %in.addr.57, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.427 = trunc i64 %in.load.50 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.428 = sext i32 %tmp.427 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.429 = mul nsw i64 %tmp.428, %tmp., !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %in2.addr.30 = getelementptr [19 x i64]* %in2, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  %in2.load.9 = load i64* %in2.addr.30, align 8, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.430 = trunc i64 %in2.load.9 to i32, !dbg !394 ; [#uses=1 type=i32] [debug line = 129:3]
  %tmp.431 = sext i32 %tmp.430 to i64, !dbg !394  ; [#uses=10 type=i64] [debug line = 129:3]
  %tmp.434 = mul nsw i64 %tmp.384, %tmp.431, !dbg !394 ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp2 = add i64 %tmp.424, %tmp.419, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp3 = add i64 %tmp.429, %tmp.434, !dbg !394   ; [#uses=1 type=i64] [debug line = 129:3]
  %tmp.437 = add i64 %tmp3, %tmp2, !dbg !394      ; [#uses=1 type=i64] [debug line = 129:3]
  %output.addr.132 = getelementptr [19 x i64]* %output, i64 0, i64 3, !dbg !394 ; [#uses=1 type=i64*] [debug line = 129:3]
  store i64 %tmp.437, i64* %output.addr.132, align 8, !dbg !394 ; [debug line = 129:3]
  %tmp.442 = mul nsw i64 %tmp.406, %tmp.409, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.447 = mul nsw i64 %tmp.428, %tmp.392, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.452 = mul nsw i64 %tmp.389, %tmp.431, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.453 = add nsw i64 %tmp.452, %tmp.447, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.764 = trunc i64 %tmp.453 to i63, !dbg !395 ; [#uses=1 type=i63] [debug line = 133:3]
  %tmp.765 = zext i63 %tmp.764 to i64, !dbg !395  ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.454 = shl nuw i64 %tmp.765, 1, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %in.addr.58 = getelementptr [19 x i64]* %in, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in.load.51 = load i64* %in.addr.58, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.457 = trunc i64 %in.load.51 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.458 = sext i32 %tmp.457 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.459 = mul nsw i64 %tmp.458, %tmp., !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %in2.addr.31 = getelementptr [19 x i64]* %in2, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  %in2.load.14 = load i64* %in2.addr.31, align 8, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.460 = trunc i64 %in2.load.14 to i32, !dbg !395 ; [#uses=1 type=i32] [debug line = 133:3]
  %tmp.461 = sext i32 %tmp.460 to i64, !dbg !395  ; [#uses=10 type=i64] [debug line = 133:3]
  %tmp.464 = mul nsw i64 %tmp.384, %tmp.461, !dbg !395 ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp4 = add i64 %tmp.454, %tmp.442, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp5 = add i64 %tmp.459, %tmp.464, !dbg !395   ; [#uses=1 type=i64] [debug line = 133:3]
  %tmp.467 = add i64 %tmp5, %tmp4, !dbg !395      ; [#uses=1 type=i64] [debug line = 133:3]
  %output.addr.133 = getelementptr [19 x i64]* %output, i64 0, i64 4, !dbg !395 ; [#uses=1 type=i64*] [debug line = 133:3]
  store i64 %tmp.467, i64* %output.addr.133, align 8, !dbg !395 ; [debug line = 133:3]
  %tmp.472 = mul nsw i64 %tmp.428, %tmp.409, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.477 = mul nsw i64 %tmp.406, %tmp.431, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.482 = mul nsw i64 %tmp.458, %tmp.392, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.487 = mul nsw i64 %tmp.389, %tmp.461, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in.addr.59 = getelementptr [19 x i64]* %in, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in.load.52 = load i64* %in.addr.59, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.490 = trunc i64 %in.load.52 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.491 = sext i32 %tmp.490 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.492 = mul nsw i64 %tmp.491, %tmp., !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %in2.addr.32 = getelementptr [19 x i64]* %in2, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  %in2.load.20 = load i64* %in2.addr.32, align 8, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.493 = trunc i64 %in2.load.20 to i32, !dbg !396 ; [#uses=1 type=i32] [debug line = 138:3]
  %tmp.494 = sext i32 %tmp.493 to i64, !dbg !396  ; [#uses=10 type=i64] [debug line = 138:3]
  %tmp.497 = mul nsw i64 %tmp.384, %tmp.494, !dbg !396 ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp7 = add i64 %tmp.472, %tmp.482, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp6 = add i64 %tmp7, %tmp.477, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp9 = add i64 %tmp.492, %tmp.497, !dbg !396   ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp8 = add i64 %tmp9, %tmp.487, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %tmp.502 = add i64 %tmp8, %tmp6, !dbg !396      ; [#uses=1 type=i64] [debug line = 138:3]
  %output.addr.134 = getelementptr [19 x i64]* %output, i64 0, i64 5, !dbg !396 ; [#uses=1 type=i64*] [debug line = 138:3]
  store i64 %tmp.502, i64* %output.addr.134, align 8, !dbg !396 ; [debug line = 138:3]
  %tmp.507 = mul nsw i64 %tmp.428, %tmp.431, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.512 = mul nsw i64 %tmp.491, %tmp.392, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.517 = mul nsw i64 %tmp.389, %tmp.494, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp10 = add i64 %tmp.507, %tmp.517, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.519 = add i64 %tmp10, %tmp.512, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.766 = trunc i64 %tmp.519 to i63, !dbg !397 ; [#uses=1 type=i63] [debug line = 144:3]
  %tmp.767 = zext i63 %tmp.766 to i64, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.520 = shl nuw i64 %tmp.767, 1, !dbg !397   ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.525 = mul nsw i64 %tmp.458, %tmp.409, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.530 = mul nsw i64 %tmp.406, %tmp.461, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in.addr.60 = getelementptr [19 x i64]* %in, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in.load.53 = load i64* %in.addr.60, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.533 = trunc i64 %in.load.53 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.534 = sext i32 %tmp.533 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.535 = mul nsw i64 %tmp.534, %tmp., !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %in2.addr.33 = getelementptr [19 x i64]* %in2, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  %in2.load.21 = load i64* %in2.addr.33, align 8, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.536 = trunc i64 %in2.load.21 to i32, !dbg !397 ; [#uses=1 type=i32] [debug line = 144:3]
  %tmp.537 = sext i32 %tmp.536 to i64, !dbg !397  ; [#uses=10 type=i64] [debug line = 144:3]
  %tmp.540 = mul nsw i64 %tmp.384, %tmp.537, !dbg !397 ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp11 = add i64 %tmp.525, %tmp.520, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp13 = add i64 %tmp.535, %tmp.540, !dbg !397  ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp12 = add i64 %tmp13, %tmp.530, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %tmp.544 = add i64 %tmp12, %tmp11, !dbg !397    ; [#uses=1 type=i64] [debug line = 144:3]
  %output.addr.135 = getelementptr [19 x i64]* %output, i64 0, i64 6, !dbg !397 ; [#uses=1 type=i64*] [debug line = 144:3]
  store i64 %tmp.544, i64* %output.addr.135, align 8, !dbg !397 ; [debug line = 144:3]
  %tmp.549 = mul nsw i64 %tmp.458, %tmp.431, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.554 = mul nsw i64 %tmp.428, %tmp.461, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.559 = mul nsw i64 %tmp.491, %tmp.409, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.564 = mul nsw i64 %tmp.406, %tmp.494, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.569 = mul nsw i64 %tmp.534, %tmp.392, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.574 = mul nsw i64 %tmp.389, %tmp.537, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in.addr.61 = getelementptr [19 x i64]* %in, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in.load.54 = load i64* %in.addr.61, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.577 = trunc i64 %in.load.54 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.578 = sext i32 %tmp.577 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.579 = mul nsw i64 %tmp.578, %tmp., !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %in2.addr.34 = getelementptr [19 x i64]* %in2, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  %in2.load.22 = load i64* %in2.addr.34, align 8, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.580 = trunc i64 %in2.load.22 to i32, !dbg !398 ; [#uses=1 type=i32] [debug line = 151:3]
  %tmp.581 = sext i32 %tmp.580 to i64, !dbg !398  ; [#uses=10 type=i64] [debug line = 151:3]
  %tmp.584 = mul nsw i64 %tmp.384, %tmp.581, !dbg !398 ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp15 = add i64 %tmp.554, %tmp.549, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp16 = add i64 %tmp.559, %tmp.564, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp14 = add i64 %tmp16, %tmp15, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp18 = add i64 %tmp.569, %tmp.574, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp19 = add i64 %tmp.579, %tmp.584, !dbg !398  ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp17 = add i64 %tmp19, %tmp18, !dbg !398      ; [#uses=1 type=i64] [debug line = 151:3]
  %tmp.591 = add i64 %tmp17, %tmp14, !dbg !398    ; [#uses=1 type=i64] [debug line = 151:3]
  %output.addr.136 = getelementptr [19 x i64]* %output, i64 0, i64 7, !dbg !398 ; [#uses=1 type=i64*] [debug line = 151:3]
  store i64 %tmp.591, i64* %output.addr.136, align 8, !dbg !398 ; [debug line = 151:3]
  %tmp.596 = mul nsw i64 %tmp.458, %tmp.461, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.601 = mul nsw i64 %tmp.491, %tmp.431, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.606 = mul nsw i64 %tmp.428, %tmp.494, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.611 = mul nsw i64 %tmp.578, %tmp.392, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.616 = mul nsw i64 %tmp.389, %tmp.581, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp20 = add i64 %tmp.606, %tmp.601, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp21 = add i64 %tmp.611, %tmp.616, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.154 = trunc i64 %tmp21 to i63              ; [#uses=1 type=i63]
  %tmp.155 = trunc i64 %tmp20 to i63              ; [#uses=1 type=i63]
  %tmp.769 = add i63 %tmp.155, %tmp.154, !dbg !399 ; [#uses=1 type=i63] [debug line = 159:3]
  %tmp.770 = zext i63 %tmp.769 to i64, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.620 = shl nuw i64 %tmp.770, 1, !dbg !399   ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.625 = mul nsw i64 %tmp.534, %tmp.409, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.630 = mul nsw i64 %tmp.406, %tmp.537, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in.addr.62 = getelementptr [19 x i64]* %in, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in.load.55 = load i64* %in.addr.62, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.633 = trunc i64 %in.load.55 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.634 = sext i32 %tmp.633 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.635 = mul nsw i64 %tmp.634, %tmp., !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %in2.addr.35 = getelementptr [19 x i64]* %in2, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  %in2.load.23 = load i64* %in2.addr.35, align 8, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.636 = trunc i64 %in2.load.23 to i32, !dbg !399 ; [#uses=1 type=i32] [debug line = 159:3]
  %tmp.637 = sext i32 %tmp.636 to i64, !dbg !399  ; [#uses=10 type=i64] [debug line = 159:3]
  %tmp.640 = mul nsw i64 %tmp.384, %tmp.637, !dbg !399 ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp23 = add i64 %tmp.596, %tmp.625, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp22 = add i64 %tmp23, %tmp.620, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp25 = add i64 %tmp.635, %tmp.640, !dbg !399  ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp24 = add i64 %tmp25, %tmp.630, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %tmp.645 = add i64 %tmp24, %tmp22, !dbg !399    ; [#uses=1 type=i64] [debug line = 159:3]
  %output.addr.137 = getelementptr [19 x i64]* %output, i64 0, i64 8, !dbg !399 ; [#uses=1 type=i64*] [debug line = 159:3]
  store i64 %tmp.645, i64* %output.addr.137, align 8, !dbg !399 ; [debug line = 159:3]
  %tmp.650 = mul nsw i64 %tmp.491, %tmp.461, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.655 = mul nsw i64 %tmp.458, %tmp.494, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.660 = mul nsw i64 %tmp.534, %tmp.431, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.665 = mul nsw i64 %tmp.428, %tmp.537, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.670 = mul nsw i64 %tmp.578, %tmp.409, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.675 = mul nsw i64 %tmp.406, %tmp.581, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.680 = mul nsw i64 %tmp.634, %tmp.392, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.685 = mul nsw i64 %tmp.389, %tmp.637, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in.addr.63 = getelementptr [19 x i64]* %in, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in.load.56 = load i64* %in.addr.63, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.688 = trunc i64 %in.load.56 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.689 = sext i32 %tmp.688 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.690 = mul nsw i64 %tmp.689, %tmp., !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %in2.addr.36 = getelementptr [19 x i64]* %in2, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  %in2.load.24 = load i64* %in2.addr.36, align 8, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.691 = trunc i64 %in2.load.24 to i32, !dbg !400 ; [#uses=2 type=i32] [debug line = 168:3]
  %tmp.692 = sext i32 %tmp.691 to i64, !dbg !400  ; [#uses=9 type=i64] [debug line = 168:3]
  %tmp.695 = mul nsw i64 %tmp.384, %tmp.692, !dbg !400 ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp27 = add i64 %tmp.655, %tmp.650, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp29 = add i64 %tmp.665, %tmp.670, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp28 = add i64 %tmp29, %tmp.660, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp26 = add i64 %tmp28, %tmp27, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp31 = add i64 %tmp.675, %tmp.680, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp33 = add i64 %tmp.690, %tmp.695, !dbg !400  ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp32 = add i64 %tmp33, %tmp.685, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp30 = add i64 %tmp32, %tmp31, !dbg !400      ; [#uses=1 type=i64] [debug line = 168:3]
  %tmp.704 = add i64 %tmp30, %tmp26, !dbg !400    ; [#uses=1 type=i64] [debug line = 168:3]
  %output.addr.138 = getelementptr [19 x i64]* %output, i64 0, i64 9, !dbg !400 ; [#uses=1 type=i64*] [debug line = 168:3]
  store i64 %tmp.704, i64* %output.addr.138, align 8, !dbg !400 ; [debug line = 168:3]
  %tmp.709 = mul nsw i64 %tmp.491, %tmp.494, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.714 = mul nsw i64 %tmp.578, %tmp.431, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.719 = mul nsw i64 %tmp.428, %tmp.581, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.724 = mul nsw i64 %tmp.689, %tmp.392, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.729 = mul nsw i64 %tmp.389, %tmp.692, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp34 = add i64 %tmp.714, %tmp.709, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp36 = add i64 %tmp.724, %tmp.729, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp35 = add i64 %tmp36, %tmp.719, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.156 = trunc i64 %tmp35 to i63              ; [#uses=1 type=i63]
  %tmp.157 = trunc i64 %tmp34 to i63              ; [#uses=1 type=i63]
  %tmp.771 = add i63 %tmp.157, %tmp.156, !dbg !401 ; [#uses=1 type=i63] [debug line = 178:3]
  %tmp.772 = zext i63 %tmp.771 to i64, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.734 = shl nuw i64 %tmp.772, 1, !dbg !401   ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.739 = mul nsw i64 %tmp.534, %tmp.461, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.744 = mul nsw i64 %tmp.458, %tmp.537, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.749 = mul nsw i64 %tmp.634, %tmp.409, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.754 = mul nsw i64 %tmp.406, %tmp.637, !dbg !401 ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp37 = add i64 %tmp.739, %tmp.734, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp39 = add i64 %tmp.749, %tmp.754, !dbg !401  ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp38 = add i64 %tmp39, %tmp.744, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %tmp.758 = add i64 %tmp38, %tmp37, !dbg !401    ; [#uses=1 type=i64] [debug line = 178:3]
  %output.addr.139 = getelementptr [19 x i64]* %output, i64 0, i64 10, !dbg !401 ; [#uses=1 type=i64*] [debug line = 178:3]
  store i64 %tmp.758, i64* %output.addr.139, align 8, !dbg !401 ; [debug line = 178:3]
  %tmp.763 = mul nsw i64 %tmp.534, %tmp.494, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.768 = mul nsw i64 %tmp.491, %tmp.537, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.773 = mul nsw i64 %tmp.578, %tmp.461, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.774 = mul nsw i64 %tmp.458, %tmp.581, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.775 = mul nsw i64 %tmp.634, %tmp.431, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.776 = mul nsw i64 %tmp.428, %tmp.637, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.777 = mul nsw i64 %tmp.689, %tmp.409, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.778 = mul nsw i64 %tmp.406, %tmp.692, !dbg !402 ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp41 = add i64 %tmp.768, %tmp.763, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp42 = add i64 %tmp.773, %tmp.774, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp40 = add i64 %tmp42, %tmp41, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp44 = add i64 %tmp.775, %tmp.776, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp45 = add i64 %tmp.777, %tmp.778, !dbg !402  ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp43 = add i64 %tmp45, %tmp44, !dbg !402      ; [#uses=1 type=i64] [debug line = 187:3]
  %tmp.779 = add i64 %tmp43, %tmp40, !dbg !402    ; [#uses=1 type=i64] [debug line = 187:3]
  %output.addr.140 = getelementptr [19 x i64]* %output, i64 0, i64 11, !dbg !402 ; [#uses=1 type=i64*] [debug line = 187:3]
  store i64 %tmp.779, i64* %output.addr.140, align 8, !dbg !402 ; [debug line = 187:3]
  %tmp.780 = mul nsw i64 %tmp.534, %tmp.537, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.781 = mul nsw i64 %tmp.578, %tmp.494, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.782 = mul nsw i64 %tmp.491, %tmp.581, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.783 = mul nsw i64 %tmp.689, %tmp.431, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.784 = mul nsw i64 %tmp.428, %tmp.692, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp46 = add i64 %tmp.782, %tmp.781, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp47 = add i64 %tmp.783, %tmp.784, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.158 = trunc i64 %tmp47 to i63              ; [#uses=1 type=i63]
  %tmp.159 = trunc i64 %tmp46 to i63              ; [#uses=1 type=i63]
  %tmp.785 = add i63 %tmp.159, %tmp.158, !dbg !403 ; [#uses=1 type=i63] [debug line = 195:3]
  %tmp.786 = zext i63 %tmp.785 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.787 = shl nuw i64 %tmp.786, 1, !dbg !403   ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.788 = mul nsw i64 %tmp.634, %tmp.461, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.789 = mul nsw i64 %tmp.458, %tmp.637, !dbg !403 ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp48 = add i64 %tmp.787, %tmp.780, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp49 = add i64 %tmp.788, %tmp.789, !dbg !403  ; [#uses=1 type=i64] [debug line = 195:3]
  %tmp.790 = add i64 %tmp49, %tmp48, !dbg !403    ; [#uses=1 type=i64] [debug line = 195:3]
  %output.addr.141 = getelementptr [19 x i64]* %output, i64 0, i64 12, !dbg !403 ; [#uses=1 type=i64*] [debug line = 195:3]
  store i64 %tmp.790, i64* %output.addr.141, align 8, !dbg !403 ; [debug line = 195:3]
  %tmp.791 = mul nsw i64 %tmp.578, %tmp.537, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.792 = mul nsw i64 %tmp.534, %tmp.581, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.793 = mul nsw i64 %tmp.634, %tmp.494, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.794 = mul nsw i64 %tmp.491, %tmp.637, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.795 = mul nsw i64 %tmp.689, %tmp.461, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.796 = mul nsw i64 %tmp.458, %tmp.692, !dbg !404 ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp51 = add i64 %tmp.791, %tmp.793, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp50 = add i64 %tmp51, %tmp.792, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp53 = add i64 %tmp.795, %tmp.796, !dbg !404  ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp52 = add i64 %tmp53, %tmp.794, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %tmp.797 = add i64 %tmp52, %tmp50, !dbg !404    ; [#uses=1 type=i64] [debug line = 202:3]
  %output.addr.142 = getelementptr [19 x i64]* %output, i64 0, i64 13, !dbg !404 ; [#uses=1 type=i64*] [debug line = 202:3]
  store i64 %tmp.797, i64* %output.addr.142, align 8, !dbg !404 ; [debug line = 202:3]
  %tmp.798 = mul nsw i64 %tmp.578, %tmp.581, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.799 = mul nsw i64 %tmp.689, %tmp.494, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.800 = mul nsw i64 %tmp.491, %tmp.692, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp54 = add i64 %tmp.798, %tmp.800, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.801 = add i64 %tmp54, %tmp.799, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.802 = trunc i64 %tmp.801 to i63, !dbg !405 ; [#uses=1 type=i63] [debug line = 208:3]
  %tmp.803 = zext i63 %tmp.802 to i64, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.804 = shl nuw i64 %tmp.803, 1, !dbg !405   ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.805 = mul nsw i64 %tmp.634, %tmp.537, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.806 = mul nsw i64 %tmp.534, %tmp.637, !dbg !405 ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp55 = add i64 %tmp.804, %tmp.806, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %tmp.807 = add i64 %tmp55, %tmp.805, !dbg !405  ; [#uses=1 type=i64] [debug line = 208:3]
  %output.addr.143 = getelementptr [19 x i64]* %output, i64 0, i64 14, !dbg !405 ; [#uses=1 type=i64*] [debug line = 208:3]
  store i64 %tmp.807, i64* %output.addr.143, align 8, !dbg !405 ; [debug line = 208:3]
  %tmp.808 = mul nsw i64 %tmp.634, %tmp.581, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.809 = mul nsw i64 %tmp.578, %tmp.637, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.810 = mul nsw i64 %tmp.689, %tmp.537, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.811 = mul nsw i64 %tmp.534, %tmp.692, !dbg !406 ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp56 = add i64 %tmp.809, %tmp.808, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp57 = add i64 %tmp.810, %tmp.811, !dbg !406  ; [#uses=1 type=i64] [debug line = 213:3]
  %tmp.812 = add i64 %tmp57, %tmp56, !dbg !406    ; [#uses=1 type=i64] [debug line = 213:3]
  %output.addr.144 = getelementptr [19 x i64]* %output, i64 0, i64 15, !dbg !406 ; [#uses=1 type=i64*] [debug line = 213:3]
  store i64 %tmp.812, i64* %output.addr.144, align 8, !dbg !406 ; [debug line = 213:3]
  %tmp.813 = mul nsw i64 %tmp.634, %tmp.637, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.814 = mul nsw i64 %tmp.689, %tmp.581, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.815 = mul nsw i64 %tmp.578, %tmp.692, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.816 = add nsw i64 %tmp.815, %tmp.814, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.817 = trunc i64 %tmp.816 to i63, !dbg !407 ; [#uses=1 type=i63] [debug line = 217:3]
  %tmp.818 = zext i63 %tmp.817 to i64, !dbg !407  ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.819 = shl nuw i64 %tmp.818, 1, !dbg !407   ; [#uses=1 type=i64] [debug line = 217:3]
  %tmp.820 = add nsw i64 %tmp.819, %tmp.813, !dbg !407 ; [#uses=1 type=i64] [debug line = 217:3]
  %output.addr.145 = getelementptr [19 x i64]* %output, i64 0, i64 16, !dbg !407 ; [#uses=1 type=i64*] [debug line = 217:3]
  store i64 %tmp.820, i64* %output.addr.145, align 8, !dbg !407 ; [debug line = 217:3]
  %tmp.821 = mul nsw i64 %tmp.689, %tmp.637, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.822 = mul nsw i64 %tmp.634, %tmp.692, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %tmp.823 = add nsw i64 %tmp.822, %tmp.821, !dbg !408 ; [#uses=1 type=i64] [debug line = 220:3]
  %output.addr.146 = getelementptr [19 x i64]* %output, i64 0, i64 17, !dbg !408 ; [#uses=1 type=i64*] [debug line = 220:3]
  store i64 %tmp.823, i64* %output.addr.146, align 8, !dbg !408 ; [debug line = 220:3]
  %tmp.363 = sext i32 %tmp.691 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.364 = sext i32 %tmp.688 to i63, !dbg !409  ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.824 = mul i63 %tmp.364, %tmp.363, !dbg !409 ; [#uses=1 type=i63] [debug line = 222:3]
  %tmp.825 = zext i63 %tmp.824 to i64, !dbg !409  ; [#uses=1 type=i64] [debug line = 222:3]
  %tmp.826 = shl nuw i64 %tmp.825, 1, !dbg !409   ; [#uses=1 type=i64] [debug line = 222:3]
  %output.addr.147 = getelementptr [19 x i64]* %output, i64 0, i64 18, !dbg !409 ; [#uses=1 type=i64*] [debug line = 222:3]
  store i64 %tmp.826, i64* %output.addr.147, align 8, !dbg !409 ; [debug line = 222:3]
  ret void, !dbg !410                             ; [debug line = 223:1]
}

; [#uses=1]
define internal fastcc void @fmul.2([11 x i64]* nocapture %output, [10 x i64]* nocapture %in, [10 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16                ; [#uses=26 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !417), !dbg !419 ; [debug line = 353:8] [debug variable = t]
  call fastcc void @fproduct.2([19 x i64]* %t, [10 x i64]* %in, [10 x i64]* %in2), !dbg !420 ; [debug line = 354:3]
  %t.addr.4 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !421), !dbg !423 ; [debug line = 229:34@356:3] [debug variable = output]
  %output.assign.addr.59 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !424 ; [#uses=1 type=i64*] [debug line = 234:3@356:3]
  %output.assign.load.61 = load i64* %output.assign.addr.59, align 16, !dbg !424 ; [#uses=3 type=i64] [debug line = 234:3@356:3]
  %tmp.i1 = shl i64 %output.assign.load.61, 4, !dbg !424 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %output.assign.addr.60 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !424 ; [#uses=2 type=i64*] [debug line = 234:3@356:3]
  %output.assign.load.62 = load i64* %output.assign.addr.60, align 16, !dbg !424 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %tmp.323.i = shl i64 %output.assign.load.61, 1, !dbg !425 ; [#uses=1 type=i64] [debug line = 235:3@356:3]
  %tmp = add i64 %output.assign.load.61, %output.assign.load.62, !dbg !426 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp3 = add i64 %tmp.323.i, %tmp.i1, !dbg !426  ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp.325.i = add nsw i64 %tmp, %tmp3, !dbg !426 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  store i64 %tmp.325.i, i64* %output.assign.addr.60, align 16, !dbg !426 ; [debug line = 236:3@356:3]
  %output.assign.addr.61 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !427 ; [#uses=1 type=i64*] [debug line = 237:3@356:3]
  %output.assign.load.63 = load i64* %output.assign.addr.61, align 8, !dbg !427 ; [#uses=3 type=i64] [debug line = 237:3@356:3]
  %tmp.326.i = shl i64 %output.assign.load.63, 4, !dbg !427 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %output.assign.addr.62 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !427 ; [#uses=2 type=i64*] [debug line = 237:3@356:3]
  %output.assign.load.64 = load i64* %output.assign.addr.62, align 8, !dbg !427 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %tmp.328.i = shl i64 %output.assign.load.63, 1, !dbg !428 ; [#uses=1 type=i64] [debug line = 238:3@356:3]
  %tmp4 = add i64 %output.assign.load.63, %output.assign.load.64, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp5 = add i64 %tmp.328.i, %tmp.326.i, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp.330.i = add nsw i64 %tmp4, %tmp5, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  store i64 %tmp.330.i, i64* %output.assign.addr.62, align 8, !dbg !429 ; [debug line = 239:3@356:3]
  %output.assign.addr.63 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !430 ; [#uses=1 type=i64*] [debug line = 240:3@356:3]
  %output.assign.load.65 = load i64* %output.assign.addr.63, align 16, !dbg !430 ; [#uses=3 type=i64] [debug line = 240:3@356:3]
  %tmp.331.i = shl i64 %output.assign.load.65, 4, !dbg !430 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %output.assign.addr.64 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !430 ; [#uses=2 type=i64*] [debug line = 240:3@356:3]
  %output.assign.load.66 = load i64* %output.assign.addr.64, align 16, !dbg !430 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %tmp.333.i = shl i64 %output.assign.load.65, 1, !dbg !431 ; [#uses=1 type=i64] [debug line = 241:3@356:3]
  %tmp6 = add i64 %output.assign.load.65, %output.assign.load.66, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp7 = add i64 %tmp.333.i, %tmp.331.i, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp.335.i = add nsw i64 %tmp6, %tmp7, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  store i64 %tmp.335.i, i64* %output.assign.addr.64, align 16, !dbg !432 ; [debug line = 242:3@356:3]
  %output.assign.addr.65 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !433 ; [#uses=1 type=i64*] [debug line = 243:3@356:3]
  %output.assign.load.67 = load i64* %output.assign.addr.65, align 8, !dbg !433 ; [#uses=3 type=i64] [debug line = 243:3@356:3]
  %tmp.336.i = shl i64 %output.assign.load.67, 4, !dbg !433 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %output.assign.addr.66 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !433 ; [#uses=2 type=i64*] [debug line = 243:3@356:3]
  %output.assign.load.68 = load i64* %output.assign.addr.66, align 8, !dbg !433 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %tmp.338.i = shl i64 %output.assign.load.67, 1, !dbg !434 ; [#uses=1 type=i64] [debug line = 244:3@356:3]
  %tmp8 = add i64 %output.assign.load.67, %output.assign.load.68, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp9 = add i64 %tmp.338.i, %tmp.336.i, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp.340.i = add nsw i64 %tmp8, %tmp9, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  store i64 %tmp.340.i, i64* %output.assign.addr.66, align 8, !dbg !435 ; [debug line = 245:3@356:3]
  %output.assign.addr.67 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !436 ; [#uses=1 type=i64*] [debug line = 246:3@356:3]
  %output.assign.load.69 = load i64* %output.assign.addr.67, align 16, !dbg !436 ; [#uses=3 type=i64] [debug line = 246:3@356:3]
  %tmp.341.i = shl i64 %output.assign.load.69, 4, !dbg !436 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %output.assign.addr.68 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !436 ; [#uses=2 type=i64*] [debug line = 246:3@356:3]
  %output.assign.load.70 = load i64* %output.assign.addr.68, align 16, !dbg !436 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %tmp.343.i = shl i64 %output.assign.load.69, 1, !dbg !437 ; [#uses=1 type=i64] [debug line = 247:3@356:3]
  %tmp10 = add i64 %output.assign.load.69, %output.assign.load.70, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp11 = add i64 %tmp.343.i, %tmp.341.i, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp.345.i = add nsw i64 %tmp10, %tmp11, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  store i64 %tmp.345.i, i64* %output.assign.addr.68, align 16, !dbg !438 ; [debug line = 248:3@356:3]
  %output.assign.addr.69 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !439 ; [#uses=1 type=i64*] [debug line = 249:3@356:3]
  %output.assign.load.71 = load i64* %output.assign.addr.69, align 8, !dbg !439 ; [#uses=3 type=i64] [debug line = 249:3@356:3]
  %tmp.346.i = shl i64 %output.assign.load.71, 4, !dbg !439 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %output.assign.addr.70 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !439 ; [#uses=2 type=i64*] [debug line = 249:3@356:3]
  %output.assign.load.72 = load i64* %output.assign.addr.70, align 8, !dbg !439 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %tmp.348.i = shl i64 %output.assign.load.71, 1, !dbg !440 ; [#uses=1 type=i64] [debug line = 250:3@356:3]
  %tmp12 = add i64 %output.assign.load.71, %output.assign.load.72, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp13 = add i64 %tmp.348.i, %tmp.346.i, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp.350.i = add nsw i64 %tmp12, %tmp13, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  store i64 %tmp.350.i, i64* %output.assign.addr.70, align 8, !dbg !441 ; [debug line = 251:3@356:3]
  %output.assign.addr.71 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !442 ; [#uses=1 type=i64*] [debug line = 252:3@356:3]
  %output.assign.load.73 = load i64* %output.assign.addr.71, align 16, !dbg !442 ; [#uses=3 type=i64] [debug line = 252:3@356:3]
  %tmp.351.i = shl i64 %output.assign.load.73, 4, !dbg !442 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %output.assign.addr.72 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !442 ; [#uses=2 type=i64*] [debug line = 252:3@356:3]
  %output.assign.load.74 = load i64* %output.assign.addr.72, align 16, !dbg !442 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %tmp.353.i = shl i64 %output.assign.load.73, 1, !dbg !443 ; [#uses=1 type=i64] [debug line = 253:3@356:3]
  %tmp14 = add i64 %output.assign.load.73, %output.assign.load.74, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp15 = add i64 %tmp.353.i, %tmp.351.i, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp.355.i = add nsw i64 %tmp14, %tmp15, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  store i64 %tmp.355.i, i64* %output.assign.addr.72, align 16, !dbg !444 ; [debug line = 254:3@356:3]
  %output.assign.addr.73 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !445 ; [#uses=1 type=i64*] [debug line = 255:3@356:3]
  %output.assign.load.75 = load i64* %output.assign.addr.73, align 8, !dbg !445 ; [#uses=3 type=i64] [debug line = 255:3@356:3]
  %tmp.356.i = shl i64 %output.assign.load.75, 4, !dbg !445 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %output.assign.addr.74 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !445 ; [#uses=2 type=i64*] [debug line = 255:3@356:3]
  %output.assign.load.76 = load i64* %output.assign.addr.74, align 8, !dbg !445 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %tmp.358.i = shl i64 %output.assign.load.75, 1, !dbg !446 ; [#uses=1 type=i64] [debug line = 256:3@356:3]
  %tmp16 = add i64 %output.assign.load.75, %output.assign.load.76, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp17 = add i64 %tmp.358.i, %tmp.356.i, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp.360.i = add nsw i64 %tmp16, %tmp17, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  store i64 %tmp.360.i, i64* %output.assign.addr.74, align 8, !dbg !447 ; [debug line = 257:3@356:3]
  %output.assign.addr.75 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !448 ; [#uses=1 type=i64*] [debug line = 258:3@356:3]
  %output.assign.load.77 = load i64* %output.assign.addr.75, align 16, !dbg !448 ; [#uses=3 type=i64] [debug line = 258:3@356:3]
  %tmp.361.i = shl i64 %output.assign.load.77, 4, !dbg !448 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %t.load.4 = load i64* %t.addr.4, align 16, !dbg !448 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %tmp.363.i = shl i64 %output.assign.load.77, 1, !dbg !449 ; [#uses=1 type=i64] [debug line = 259:3@356:3]
  %tmp18 = add i64 %output.assign.load.77, %t.load.4, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp19 = add i64 %tmp.363.i, %tmp.361.i, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp.365.i = add nsw i64 %tmp18, %tmp19, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  store i64 %tmp.365.i, i64* %t.addr.4, align 16, !dbg !450 ; [debug line = 260:3@356:3]
  %output.assign.addr.76 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !451), !dbg !453 ; [debug line = 302:40@357:3] [debug variable = output]
  %output.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !454 ; [#uses=3 type=i64*] [debug line = 305:3@357:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !454 ; [debug line = 305:3@357:3]
  br label %1, !dbg !455                          ; [debug line = 307:8@357:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i4]
  %tmp.i = icmp ult i4 %i.i, -6, !dbg !455        ; [#uses=1 type=i1] [debug line = 307:8@357:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %3, label %freduce_coefficients.exit, !dbg !455 ; [debug line = 307:8@357:3]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i4 %i.i to i64, !dbg !456        ; [#uses=1 type=i64] [debug line = 308:17@357:3]
  %output.assign.addr.14 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp..i, !dbg !456 ; [#uses=2 type=i64*] [debug line = 308:17@357:3]
  %v.assign = load i64* %output.assign.addr.14, align 16, !dbg !456 ; [#uses=3 type=i64] [debug line = 308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !457), !dbg !458 ; [debug line = 271:24@308:17@357:3] [debug variable = v]
  %tmp.i.i = lshr i64 %v.assign, 63, !dbg !459    ; [#uses=1 type=i64] [debug line = 274:62@308:17@357:3]
  %highword1.i.i = trunc i64 %tmp.i.i to i1, !dbg !460 ; [#uses=1 type=i1] [debug line = 276:50@308:17@357:3]
  %tmp..i.i.cast = select i1 %highword1.i.i, i64 67108863, i64 0, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.1064.i.i = add nsw i64 %tmp..i.i.cast, %v.assign, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.396.i.i = lshr i64 %tmp.1064.i.i, 26, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.397.i.i = trunc i64 %tmp.396.i.i to i38, !dbg !461 ; [#uses=1 type=i38] [debug line = 280:3@308:17@357:3]
  %over = sext i38 %tmp.397.i.i to i64, !dbg !461 ; [#uses=2 type=i64] [debug line = 280:3@308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !462), !dbg !456 ; [debug line = 308:17@357:3] [debug variable = over]
  %tmp.366.i = shl nsw i64 %over, 26, !dbg !463   ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  %tmp.367.i = sub nsw i64 %v.assign, %tmp.366.i, !dbg !463 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  store i64 %tmp.367.i, i64* %output.assign.addr.14, align 16, !dbg !463 ; [debug line = 313:5@357:3]
  %tmp.368.i = or i4 %i.i, 1, !dbg !464           ; [#uses=1 type=i4] [debug line = 314:5@357:3]
  %tmp.369.i = zext i4 %tmp.368.i to i64, !dbg !464 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %output.assign.addr.15 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.369.i, !dbg !464 ; [#uses=2 type=i64*] [debug line = 314:5@357:3]
  %output.assign.load = load i64* %output.assign.addr.15, align 8, !dbg !464 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %v.assign.9 = add nsw i64 %over, %output.assign.load, !dbg !464 ; [#uses=3 type=i64] [debug line = 314:5@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.9}, i64 0, metadata !465), !dbg !467 ; [debug line = 287:24@322:12@357:3] [debug variable = v]
  %tmp.i8.i = lshr i64 %v.assign.9, 63, !dbg !468 ; [#uses=1 type=i64] [debug line = 290:62@322:12@357:3]
  %highword1.i9.i = trunc i64 %tmp.i8.i to i1, !dbg !469 ; [#uses=1 type=i1] [debug line = 292:50@322:12@357:3]
  %tmp..i10.i.cast = select i1 %highword1.i9.i, i64 33554431, i64 0, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.1066.i.i = add nsw i64 %v.assign.9, %tmp..i10.i.cast, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.398.i.i = lshr i64 %tmp.1066.i.i, 25, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.399.i.i = trunc i64 %tmp.398.i.i to i39, !dbg !470 ; [#uses=1 type=i39] [debug line = 296:3@322:12@357:3]
  %over.9 = sext i39 %tmp.399.i.i to i64, !dbg !470 ; [#uses=2 type=i64] [debug line = 296:3@322:12@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over.9}, i64 0, metadata !462), !dbg !466 ; [debug line = 322:12@357:3] [debug variable = over]
  %tmp.371.i = shl nsw i64 %over.9, 25, !dbg !471 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  %tmp.372.i = sub nsw i64 %v.assign.9, %tmp.371.i, !dbg !471 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  store i64 %tmp.372.i, i64* %output.assign.addr.15, align 8, !dbg !471 ; [debug line = 323:5@357:3]
  %i = add i4 %i.i, 2, !dbg !472                  ; [#uses=2 type=i4] [debug line = 324:5@357:3]
  %tmp.373.i = zext i4 %i to i64, !dbg !472       ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %output.assign.addr.16 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.373.i, !dbg !472 ; [#uses=2 type=i64*] [debug line = 324:5@357:3]
  %output.assign.load.11 = load i64* %output.assign.addr.16, align 16, !dbg !472 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %tmp.374.i = add nsw i64 %over.9, %output.assign.load.11, !dbg !472 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  store i64 %tmp.374.i, i64* %output.assign.addr.16, align 16, !dbg !472 ; [debug line = 324:5@357:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !473), !dbg !474 ; [debug line = 307:23@357:3] [debug variable = i]
  br label %1, !dbg !474                          ; [debug line = 307:23@357:3]

freduce_coefficients.exit:                        ; preds = %1
  %output.assign.load.12 = load i64* %output.assign.addr, align 16, !dbg !475 ; [#uses=3 type=i64] [debug line = 327:3@357:3]
  %tmp.375.i = shl i64 %output.assign.load.12, 4, !dbg !475 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %output.assign.load.79 = load i64* %output.assign.addr.76, align 16, !dbg !475 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %tmp.377.i = shl i64 %output.assign.load.12, 1, !dbg !476 ; [#uses=1 type=i64] [debug line = 328:3@357:3]
  %tmp21 = add i64 %output.assign.load.12, %output.assign.load.79, !dbg !477 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %tmp22 = add i64 %tmp.377.i, %tmp.375.i, !dbg !477 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %v.assign.10 = add nsw i64 %tmp21, %tmp22, !dbg !477 ; [#uses=3 type=i64] [debug line = 329:3@357:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !478 ; [debug line = 331:3@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.10}, i64 0, metadata !479), !dbg !481 ; [debug line = 271:24@336:17@357:3] [debug variable = v]
  %tmp.i11.i = lshr i64 %v.assign.10, 63, !dbg !482 ; [#uses=1 type=i64] [debug line = 274:62@336:17@357:3]
  %highword1.i12.i = trunc i64 %tmp.i11.i to i1, !dbg !483 ; [#uses=1 type=i1] [debug line = 276:50@336:17@357:3]
  %tmp..i13.i.cast = select i1 %highword1.i12.i, i64 67108863, i64 0, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.1064.i14.i = add nsw i64 %v.assign.10, %tmp..i13.i.cast, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.396.i15.i = lshr i64 %tmp.1064.i14.i, 26, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.397.i16.i = trunc i64 %tmp.396.i15.i to i38, !dbg !484 ; [#uses=1 type=i38] [debug line = 280:3@336:17@357:3]
  %over.10 = sext i38 %tmp.397.i16.i to i64, !dbg !484 ; [#uses=2 type=i64] [debug line = 280:3@336:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over.10}, i64 0, metadata !485), !dbg !480 ; [debug line = 336:17@357:3] [debug variable = over]
  %tmp.380.i = shl nsw i64 %over.10, 26, !dbg !486 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  %tmp.381.i = sub nsw i64 %v.assign.10, %tmp.380.i, !dbg !486 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  store i64 %tmp.381.i, i64* %output.assign.addr.76, align 16, !dbg !486 ; [debug line = 337:5@357:3]
  %output.assign.addr.17 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !487 ; [#uses=2 type=i64*] [debug line = 338:5@357:3]
  %output.assign.load.13 = load i64* %output.assign.addr.17, align 8, !dbg !487 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  %tmp.382.i = add nsw i64 %over.10, %output.assign.load.13, !dbg !487 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  store i64 %tmp.382.i, i64* %output.assign.addr.17, align 8, !dbg !487 ; [debug line = 338:5@357:3]
  br label %4, !dbg !488                          ; [debug line = 61:6@359:3]

; <label>:4                                       ; preds = %6, %freduce_coefficients.exit
  %i.i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i.6, %6 ] ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i3, -6, !dbg !488   ; [#uses=1 type=i1] [debug line = 61:6@359:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.2.exit, label %6, !dbg !488 ; [debug line = 61:6@359:3]

; <label>:6                                       ; preds = %4
  %tmp.i4 = zext i4 %i.i3 to i64, !dbg !490       ; [#uses=2 type=i64] [debug line = 62:3@359:3]
  %output.assign.addr.18 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.i4, !dbg !490 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  %output.assign.load.14 = load i64* %output.assign.addr.18, align 8, !dbg !490 ; [#uses=1 type=i64] [debug line = 62:3@359:3]
  %output.addr = getelementptr [11 x i64]* %output, i64 0, i64 %tmp.i4, !dbg !490 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  store i64 %output.assign.load.14, i64* %output.addr, align 8, !dbg !490 ; [debug line = 62:3@359:3]
  %i.6 = add i4 %i.i3, 1, !dbg !491               ; [#uses=1 type=i4] [debug line = 61:18@359:3]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !492), !dbg !491 ; [debug line = 61:18@359:3] [debug variable = i]
  br label %4, !dbg !491                          ; [debug line = 61:18@359:3]

_memcpy.2.exit:                                   ; preds = %4
  ret void, !dbg !493                             ; [debug line = 360:1]
}

; [#uses=1]
define internal fastcc void @fmul.1([10 x i64]* nocapture %output, [10 x i64]* nocapture %in, [11 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16                ; [#uses=26 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !417), !dbg !419 ; [debug line = 353:8] [debug variable = t]
  call fastcc void @fproduct.3([19 x i64]* %t, [10 x i64]* %in, [11 x i64]* %in2), !dbg !420 ; [debug line = 354:3]
  %t.addr.5 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !421), !dbg !423 ; [debug line = 229:34@356:3] [debug variable = output]
  %output.assign.addr.77 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !424 ; [#uses=1 type=i64*] [debug line = 234:3@356:3]
  %output.assign.load.80 = load i64* %output.assign.addr.77, align 16, !dbg !424 ; [#uses=3 type=i64] [debug line = 234:3@356:3]
  %tmp.i1 = shl i64 %output.assign.load.80, 4, !dbg !424 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %output.assign.addr.78 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !424 ; [#uses=2 type=i64*] [debug line = 234:3@356:3]
  %output.assign.load.81 = load i64* %output.assign.addr.78, align 16, !dbg !424 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %tmp.323.i = shl i64 %output.assign.load.80, 1, !dbg !425 ; [#uses=1 type=i64] [debug line = 235:3@356:3]
  %tmp = add i64 %output.assign.load.80, %output.assign.load.81, !dbg !426 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp3 = add i64 %tmp.323.i, %tmp.i1, !dbg !426  ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp.325.i = add nsw i64 %tmp, %tmp3, !dbg !426 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  store i64 %tmp.325.i, i64* %output.assign.addr.78, align 16, !dbg !426 ; [debug line = 236:3@356:3]
  %output.assign.addr.79 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !427 ; [#uses=1 type=i64*] [debug line = 237:3@356:3]
  %output.assign.load.82 = load i64* %output.assign.addr.79, align 8, !dbg !427 ; [#uses=3 type=i64] [debug line = 237:3@356:3]
  %tmp.326.i = shl i64 %output.assign.load.82, 4, !dbg !427 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %output.assign.addr.80 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !427 ; [#uses=2 type=i64*] [debug line = 237:3@356:3]
  %output.assign.load.83 = load i64* %output.assign.addr.80, align 8, !dbg !427 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %tmp.328.i = shl i64 %output.assign.load.82, 1, !dbg !428 ; [#uses=1 type=i64] [debug line = 238:3@356:3]
  %tmp4 = add i64 %output.assign.load.82, %output.assign.load.83, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp5 = add i64 %tmp.328.i, %tmp.326.i, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp.330.i = add nsw i64 %tmp4, %tmp5, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  store i64 %tmp.330.i, i64* %output.assign.addr.80, align 8, !dbg !429 ; [debug line = 239:3@356:3]
  %output.assign.addr.81 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !430 ; [#uses=1 type=i64*] [debug line = 240:3@356:3]
  %output.assign.load.84 = load i64* %output.assign.addr.81, align 16, !dbg !430 ; [#uses=3 type=i64] [debug line = 240:3@356:3]
  %tmp.331.i = shl i64 %output.assign.load.84, 4, !dbg !430 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %output.assign.addr.82 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !430 ; [#uses=2 type=i64*] [debug line = 240:3@356:3]
  %output.assign.load.85 = load i64* %output.assign.addr.82, align 16, !dbg !430 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %tmp.333.i = shl i64 %output.assign.load.84, 1, !dbg !431 ; [#uses=1 type=i64] [debug line = 241:3@356:3]
  %tmp6 = add i64 %output.assign.load.84, %output.assign.load.85, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp7 = add i64 %tmp.333.i, %tmp.331.i, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp.335.i = add nsw i64 %tmp6, %tmp7, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  store i64 %tmp.335.i, i64* %output.assign.addr.82, align 16, !dbg !432 ; [debug line = 242:3@356:3]
  %output.assign.addr.83 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !433 ; [#uses=1 type=i64*] [debug line = 243:3@356:3]
  %output.assign.load.86 = load i64* %output.assign.addr.83, align 8, !dbg !433 ; [#uses=3 type=i64] [debug line = 243:3@356:3]
  %tmp.336.i = shl i64 %output.assign.load.86, 4, !dbg !433 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %output.assign.addr.84 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !433 ; [#uses=2 type=i64*] [debug line = 243:3@356:3]
  %output.assign.load.87 = load i64* %output.assign.addr.84, align 8, !dbg !433 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %tmp.338.i = shl i64 %output.assign.load.86, 1, !dbg !434 ; [#uses=1 type=i64] [debug line = 244:3@356:3]
  %tmp8 = add i64 %output.assign.load.86, %output.assign.load.87, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp9 = add i64 %tmp.338.i, %tmp.336.i, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp.340.i = add nsw i64 %tmp8, %tmp9, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  store i64 %tmp.340.i, i64* %output.assign.addr.84, align 8, !dbg !435 ; [debug line = 245:3@356:3]
  %output.assign.addr.85 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !436 ; [#uses=1 type=i64*] [debug line = 246:3@356:3]
  %output.assign.load.88 = load i64* %output.assign.addr.85, align 16, !dbg !436 ; [#uses=3 type=i64] [debug line = 246:3@356:3]
  %tmp.341.i = shl i64 %output.assign.load.88, 4, !dbg !436 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %output.assign.addr.86 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !436 ; [#uses=2 type=i64*] [debug line = 246:3@356:3]
  %output.assign.load.89 = load i64* %output.assign.addr.86, align 16, !dbg !436 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %tmp.343.i = shl i64 %output.assign.load.88, 1, !dbg !437 ; [#uses=1 type=i64] [debug line = 247:3@356:3]
  %tmp10 = add i64 %output.assign.load.88, %output.assign.load.89, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp11 = add i64 %tmp.343.i, %tmp.341.i, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp.345.i = add nsw i64 %tmp10, %tmp11, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  store i64 %tmp.345.i, i64* %output.assign.addr.86, align 16, !dbg !438 ; [debug line = 248:3@356:3]
  %output.assign.addr.87 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !439 ; [#uses=1 type=i64*] [debug line = 249:3@356:3]
  %output.assign.load.90 = load i64* %output.assign.addr.87, align 8, !dbg !439 ; [#uses=3 type=i64] [debug line = 249:3@356:3]
  %tmp.346.i = shl i64 %output.assign.load.90, 4, !dbg !439 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %output.assign.addr.88 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !439 ; [#uses=2 type=i64*] [debug line = 249:3@356:3]
  %output.assign.load.91 = load i64* %output.assign.addr.88, align 8, !dbg !439 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %tmp.348.i = shl i64 %output.assign.load.90, 1, !dbg !440 ; [#uses=1 type=i64] [debug line = 250:3@356:3]
  %tmp12 = add i64 %output.assign.load.90, %output.assign.load.91, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp13 = add i64 %tmp.348.i, %tmp.346.i, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp.350.i = add nsw i64 %tmp12, %tmp13, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  store i64 %tmp.350.i, i64* %output.assign.addr.88, align 8, !dbg !441 ; [debug line = 251:3@356:3]
  %output.assign.addr.89 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !442 ; [#uses=1 type=i64*] [debug line = 252:3@356:3]
  %output.assign.load.92 = load i64* %output.assign.addr.89, align 16, !dbg !442 ; [#uses=3 type=i64] [debug line = 252:3@356:3]
  %tmp.351.i = shl i64 %output.assign.load.92, 4, !dbg !442 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %output.assign.addr.90 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !442 ; [#uses=2 type=i64*] [debug line = 252:3@356:3]
  %output.assign.load.93 = load i64* %output.assign.addr.90, align 16, !dbg !442 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %tmp.353.i = shl i64 %output.assign.load.92, 1, !dbg !443 ; [#uses=1 type=i64] [debug line = 253:3@356:3]
  %tmp14 = add i64 %output.assign.load.92, %output.assign.load.93, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp15 = add i64 %tmp.353.i, %tmp.351.i, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp.355.i = add nsw i64 %tmp14, %tmp15, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  store i64 %tmp.355.i, i64* %output.assign.addr.90, align 16, !dbg !444 ; [debug line = 254:3@356:3]
  %output.assign.addr.91 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !445 ; [#uses=1 type=i64*] [debug line = 255:3@356:3]
  %output.assign.load.94 = load i64* %output.assign.addr.91, align 8, !dbg !445 ; [#uses=3 type=i64] [debug line = 255:3@356:3]
  %tmp.356.i = shl i64 %output.assign.load.94, 4, !dbg !445 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %output.assign.addr.92 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !445 ; [#uses=2 type=i64*] [debug line = 255:3@356:3]
  %output.assign.load.95 = load i64* %output.assign.addr.92, align 8, !dbg !445 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %tmp.358.i = shl i64 %output.assign.load.94, 1, !dbg !446 ; [#uses=1 type=i64] [debug line = 256:3@356:3]
  %tmp16 = add i64 %output.assign.load.94, %output.assign.load.95, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp17 = add i64 %tmp.358.i, %tmp.356.i, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp.360.i = add nsw i64 %tmp16, %tmp17, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  store i64 %tmp.360.i, i64* %output.assign.addr.92, align 8, !dbg !447 ; [debug line = 257:3@356:3]
  %output.assign.addr.93 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !448 ; [#uses=1 type=i64*] [debug line = 258:3@356:3]
  %output.assign.load.96 = load i64* %output.assign.addr.93, align 16, !dbg !448 ; [#uses=3 type=i64] [debug line = 258:3@356:3]
  %tmp.361.i = shl i64 %output.assign.load.96, 4, !dbg !448 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %t.load.5 = load i64* %t.addr.5, align 16, !dbg !448 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %tmp.363.i = shl i64 %output.assign.load.96, 1, !dbg !449 ; [#uses=1 type=i64] [debug line = 259:3@356:3]
  %tmp18 = add i64 %output.assign.load.96, %t.load.5, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp19 = add i64 %tmp.363.i, %tmp.361.i, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp.365.i = add nsw i64 %tmp18, %tmp19, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  store i64 %tmp.365.i, i64* %t.addr.5, align 16, !dbg !450 ; [debug line = 260:3@356:3]
  %output.assign.addr.94 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !451), !dbg !453 ; [debug line = 302:40@357:3] [debug variable = output]
  %output.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !454 ; [#uses=3 type=i64*] [debug line = 305:3@357:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !454 ; [debug line = 305:3@357:3]
  br label %1, !dbg !455                          ; [debug line = 307:8@357:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i4]
  %tmp.i = icmp ult i4 %i.i, -6, !dbg !455        ; [#uses=1 type=i1] [debug line = 307:8@357:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %3, label %freduce_coefficients.exit, !dbg !455 ; [debug line = 307:8@357:3]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i4 %i.i to i64, !dbg !456        ; [#uses=1 type=i64] [debug line = 308:17@357:3]
  %output.assign.addr.19 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp..i, !dbg !456 ; [#uses=2 type=i64*] [debug line = 308:17@357:3]
  %v.assign = load i64* %output.assign.addr.19, align 16, !dbg !456 ; [#uses=3 type=i64] [debug line = 308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !457), !dbg !458 ; [debug line = 271:24@308:17@357:3] [debug variable = v]
  %tmp.i.i = lshr i64 %v.assign, 63, !dbg !459    ; [#uses=1 type=i64] [debug line = 274:62@308:17@357:3]
  %highword1.i.i = trunc i64 %tmp.i.i to i1, !dbg !460 ; [#uses=1 type=i1] [debug line = 276:50@308:17@357:3]
  %tmp..i.i.cast = select i1 %highword1.i.i, i64 67108863, i64 0, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.1064.i.i = add nsw i64 %tmp..i.i.cast, %v.assign, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.396.i.i = lshr i64 %tmp.1064.i.i, 26, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.397.i.i = trunc i64 %tmp.396.i.i to i38, !dbg !461 ; [#uses=1 type=i38] [debug line = 280:3@308:17@357:3]
  %over = sext i38 %tmp.397.i.i to i64, !dbg !461 ; [#uses=2 type=i64] [debug line = 280:3@308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !462), !dbg !456 ; [debug line = 308:17@357:3] [debug variable = over]
  %tmp.366.i = shl nsw i64 %over, 26, !dbg !463   ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  %tmp.367.i = sub nsw i64 %v.assign, %tmp.366.i, !dbg !463 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  store i64 %tmp.367.i, i64* %output.assign.addr.19, align 16, !dbg !463 ; [debug line = 313:5@357:3]
  %tmp.368.i = or i4 %i.i, 1, !dbg !464           ; [#uses=1 type=i4] [debug line = 314:5@357:3]
  %tmp.369.i = zext i4 %tmp.368.i to i64, !dbg !464 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %output.assign.addr.20 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.369.i, !dbg !464 ; [#uses=2 type=i64*] [debug line = 314:5@357:3]
  %output.assign.load = load i64* %output.assign.addr.20, align 8, !dbg !464 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %v.assign.11 = add nsw i64 %over, %output.assign.load, !dbg !464 ; [#uses=3 type=i64] [debug line = 314:5@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.11}, i64 0, metadata !465), !dbg !467 ; [debug line = 287:24@322:12@357:3] [debug variable = v]
  %tmp.i8.i = lshr i64 %v.assign.11, 63, !dbg !468 ; [#uses=1 type=i64] [debug line = 290:62@322:12@357:3]
  %highword1.i9.i = trunc i64 %tmp.i8.i to i1, !dbg !469 ; [#uses=1 type=i1] [debug line = 292:50@322:12@357:3]
  %tmp..i10.i.cast = select i1 %highword1.i9.i, i64 33554431, i64 0, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.1066.i.i = add nsw i64 %v.assign.11, %tmp..i10.i.cast, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.398.i.i = lshr i64 %tmp.1066.i.i, 25, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.399.i.i = trunc i64 %tmp.398.i.i to i39, !dbg !470 ; [#uses=1 type=i39] [debug line = 296:3@322:12@357:3]
  %over.11 = sext i39 %tmp.399.i.i to i64, !dbg !470 ; [#uses=2 type=i64] [debug line = 296:3@322:12@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over.11}, i64 0, metadata !462), !dbg !466 ; [debug line = 322:12@357:3] [debug variable = over]
  %tmp.371.i = shl nsw i64 %over.11, 25, !dbg !471 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  %tmp.372.i = sub nsw i64 %v.assign.11, %tmp.371.i, !dbg !471 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  store i64 %tmp.372.i, i64* %output.assign.addr.20, align 8, !dbg !471 ; [debug line = 323:5@357:3]
  %i = add i4 %i.i, 2, !dbg !472                  ; [#uses=2 type=i4] [debug line = 324:5@357:3]
  %tmp.373.i = zext i4 %i to i64, !dbg !472       ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %output.assign.addr.21 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.373.i, !dbg !472 ; [#uses=2 type=i64*] [debug line = 324:5@357:3]
  %output.assign.load.15 = load i64* %output.assign.addr.21, align 16, !dbg !472 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %tmp.374.i = add nsw i64 %over.11, %output.assign.load.15, !dbg !472 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  store i64 %tmp.374.i, i64* %output.assign.addr.21, align 16, !dbg !472 ; [debug line = 324:5@357:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !473), !dbg !474 ; [debug line = 307:23@357:3] [debug variable = i]
  br label %1, !dbg !474                          ; [debug line = 307:23@357:3]

freduce_coefficients.exit:                        ; preds = %1
  %output.assign.load.16 = load i64* %output.assign.addr, align 16, !dbg !475 ; [#uses=3 type=i64] [debug line = 327:3@357:3]
  %tmp.375.i = shl i64 %output.assign.load.16, 4, !dbg !475 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %output.assign.load.98 = load i64* %output.assign.addr.94, align 16, !dbg !475 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %tmp.377.i = shl i64 %output.assign.load.16, 1, !dbg !476 ; [#uses=1 type=i64] [debug line = 328:3@357:3]
  %tmp21 = add i64 %output.assign.load.16, %output.assign.load.98, !dbg !477 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %tmp22 = add i64 %tmp.377.i, %tmp.375.i, !dbg !477 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %v.assign.12 = add nsw i64 %tmp21, %tmp22, !dbg !477 ; [#uses=3 type=i64] [debug line = 329:3@357:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !478 ; [debug line = 331:3@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.12}, i64 0, metadata !479), !dbg !481 ; [debug line = 271:24@336:17@357:3] [debug variable = v]
  %tmp.i11.i = lshr i64 %v.assign.12, 63, !dbg !482 ; [#uses=1 type=i64] [debug line = 274:62@336:17@357:3]
  %highword1.i12.i = trunc i64 %tmp.i11.i to i1, !dbg !483 ; [#uses=1 type=i1] [debug line = 276:50@336:17@357:3]
  %tmp..i13.i.cast = select i1 %highword1.i12.i, i64 67108863, i64 0, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.1064.i14.i = add nsw i64 %v.assign.12, %tmp..i13.i.cast, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.396.i15.i = lshr i64 %tmp.1064.i14.i, 26, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.397.i16.i = trunc i64 %tmp.396.i15.i to i38, !dbg !484 ; [#uses=1 type=i38] [debug line = 280:3@336:17@357:3]
  %over.12 = sext i38 %tmp.397.i16.i to i64, !dbg !484 ; [#uses=2 type=i64] [debug line = 280:3@336:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over.12}, i64 0, metadata !485), !dbg !480 ; [debug line = 336:17@357:3] [debug variable = over]
  %tmp.380.i = shl nsw i64 %over.12, 26, !dbg !486 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  %tmp.381.i = sub nsw i64 %v.assign.12, %tmp.380.i, !dbg !486 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  store i64 %tmp.381.i, i64* %output.assign.addr.94, align 16, !dbg !486 ; [debug line = 337:5@357:3]
  %output.assign.addr.22 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !487 ; [#uses=2 type=i64*] [debug line = 338:5@357:3]
  %output.assign.load.17 = load i64* %output.assign.addr.22, align 8, !dbg !487 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  %tmp.382.i = add nsw i64 %over.12, %output.assign.load.17, !dbg !487 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  store i64 %tmp.382.i, i64* %output.assign.addr.22, align 8, !dbg !487 ; [debug line = 338:5@357:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !494), !dbg !495 ; [debug line = 59:20@359:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !496), !dbg !497 ; [debug line = 59:31@359:3] [debug variable = src]
  br label %4, !dbg !488                          ; [debug line = 61:6@359:3]

; <label>:4                                       ; preds = %6, %freduce_coefficients.exit
  %i.i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i.7, %6 ] ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i3, -6, !dbg !488   ; [#uses=1 type=i1] [debug line = 61:6@359:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.exit, label %6, !dbg !488 ; [debug line = 61:6@359:3]

; <label>:6                                       ; preds = %4
  %tmp.i4 = zext i4 %i.i3 to i64, !dbg !490       ; [#uses=2 type=i64] [debug line = 62:3@359:3]
  %src.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.i4, !dbg !490 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  %src.assign.load = load i64* %src.assign.addr, align 8, !dbg !490 ; [#uses=1 type=i64] [debug line = 62:3@359:3]
  %output.addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp.i4, !dbg !490 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  store i64 %src.assign.load, i64* %output.addr, align 8, !dbg !490 ; [debug line = 62:3@359:3]
  %i.7 = add i4 %i.i3, 1, !dbg !491               ; [#uses=1 type=i4] [debug line = 61:18@359:3]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !492), !dbg !491 ; [debug line = 61:18@359:3] [debug variable = i]
  br label %4, !dbg !491                          ; [debug line = 61:18@359:3]

_memcpy.exit:                                     ; preds = %4
  ret void, !dbg !493                             ; [debug line = 360:1]
}

; [#uses=10]
define internal fastcc void @fmul([10 x i64]* nocapture %output, [10 x i64]* nocapture %in, [10 x i64]* nocapture %in2) {
  %t = alloca [19 x i64], align 16                ; [#uses=26 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !498), !dbg !499 ; [debug line = 352:12] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %in}, i64 0, metadata !500), !dbg !502 ; [debug line = 352:32] [debug variable = in]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %in2}, i64 0, metadata !503), !dbg !504 ; [debug line = 352:48] [debug variable = in2]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !417), !dbg !419 ; [debug line = 353:8] [debug variable = t]
  call fastcc void @fproduct.2([19 x i64]* %t, [10 x i64]* %in, [10 x i64]* %in2), !dbg !420 ; [debug line = 354:3]
  %t.addr.6 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !421), !dbg !423 ; [debug line = 229:34@356:3] [debug variable = output]
  %output.assign.addr.95 = getelementptr [19 x i64]* %t, i64 0, i64 18, !dbg !424 ; [#uses=1 type=i64*] [debug line = 234:3@356:3]
  %output.assign.load.99 = load i64* %output.assign.addr.95, align 16, !dbg !424 ; [#uses=3 type=i64] [debug line = 234:3@356:3]
  %tmp.i1 = shl i64 %output.assign.load.99, 4, !dbg !424 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %output.assign.addr.96 = getelementptr [19 x i64]* %t, i64 0, i64 8, !dbg !424 ; [#uses=2 type=i64*] [debug line = 234:3@356:3]
  %output.assign.load.100 = load i64* %output.assign.addr.96, align 16, !dbg !424 ; [#uses=1 type=i64] [debug line = 234:3@356:3]
  %tmp.323.i = shl i64 %output.assign.load.99, 1, !dbg !425 ; [#uses=1 type=i64] [debug line = 235:3@356:3]
  %tmp = add i64 %output.assign.load.99, %output.assign.load.100, !dbg !426 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp3 = add i64 %tmp.323.i, %tmp.i1, !dbg !426  ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  %tmp.325.i = add nsw i64 %tmp, %tmp3, !dbg !426 ; [#uses=1 type=i64] [debug line = 236:3@356:3]
  store i64 %tmp.325.i, i64* %output.assign.addr.96, align 16, !dbg !426 ; [debug line = 236:3@356:3]
  %output.assign.addr.97 = getelementptr [19 x i64]* %t, i64 0, i64 17, !dbg !427 ; [#uses=1 type=i64*] [debug line = 237:3@356:3]
  %output.assign.load.101 = load i64* %output.assign.addr.97, align 8, !dbg !427 ; [#uses=3 type=i64] [debug line = 237:3@356:3]
  %tmp.326.i = shl i64 %output.assign.load.101, 4, !dbg !427 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %output.assign.addr.98 = getelementptr [19 x i64]* %t, i64 0, i64 7, !dbg !427 ; [#uses=2 type=i64*] [debug line = 237:3@356:3]
  %output.assign.load.102 = load i64* %output.assign.addr.98, align 8, !dbg !427 ; [#uses=1 type=i64] [debug line = 237:3@356:3]
  %tmp.328.i = shl i64 %output.assign.load.101, 1, !dbg !428 ; [#uses=1 type=i64] [debug line = 238:3@356:3]
  %tmp4 = add i64 %output.assign.load.101, %output.assign.load.102, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp5 = add i64 %tmp.328.i, %tmp.326.i, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  %tmp.330.i = add nsw i64 %tmp4, %tmp5, !dbg !429 ; [#uses=1 type=i64] [debug line = 239:3@356:3]
  store i64 %tmp.330.i, i64* %output.assign.addr.98, align 8, !dbg !429 ; [debug line = 239:3@356:3]
  %output.assign.addr.99 = getelementptr [19 x i64]* %t, i64 0, i64 16, !dbg !430 ; [#uses=1 type=i64*] [debug line = 240:3@356:3]
  %output.assign.load.103 = load i64* %output.assign.addr.99, align 16, !dbg !430 ; [#uses=3 type=i64] [debug line = 240:3@356:3]
  %tmp.331.i = shl i64 %output.assign.load.103, 4, !dbg !430 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %output.assign.addr.100 = getelementptr [19 x i64]* %t, i64 0, i64 6, !dbg !430 ; [#uses=2 type=i64*] [debug line = 240:3@356:3]
  %output.assign.load.104 = load i64* %output.assign.addr.100, align 16, !dbg !430 ; [#uses=1 type=i64] [debug line = 240:3@356:3]
  %tmp.333.i = shl i64 %output.assign.load.103, 1, !dbg !431 ; [#uses=1 type=i64] [debug line = 241:3@356:3]
  %tmp6 = add i64 %output.assign.load.103, %output.assign.load.104, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp7 = add i64 %tmp.333.i, %tmp.331.i, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  %tmp.335.i = add nsw i64 %tmp6, %tmp7, !dbg !432 ; [#uses=1 type=i64] [debug line = 242:3@356:3]
  store i64 %tmp.335.i, i64* %output.assign.addr.100, align 16, !dbg !432 ; [debug line = 242:3@356:3]
  %output.assign.addr.101 = getelementptr [19 x i64]* %t, i64 0, i64 15, !dbg !433 ; [#uses=1 type=i64*] [debug line = 243:3@356:3]
  %output.assign.load.105 = load i64* %output.assign.addr.101, align 8, !dbg !433 ; [#uses=3 type=i64] [debug line = 243:3@356:3]
  %tmp.336.i = shl i64 %output.assign.load.105, 4, !dbg !433 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %output.assign.addr.102 = getelementptr [19 x i64]* %t, i64 0, i64 5, !dbg !433 ; [#uses=2 type=i64*] [debug line = 243:3@356:3]
  %output.assign.load.106 = load i64* %output.assign.addr.102, align 8, !dbg !433 ; [#uses=1 type=i64] [debug line = 243:3@356:3]
  %tmp.338.i = shl i64 %output.assign.load.105, 1, !dbg !434 ; [#uses=1 type=i64] [debug line = 244:3@356:3]
  %tmp8 = add i64 %output.assign.load.105, %output.assign.load.106, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp9 = add i64 %tmp.338.i, %tmp.336.i, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  %tmp.340.i = add nsw i64 %tmp8, %tmp9, !dbg !435 ; [#uses=1 type=i64] [debug line = 245:3@356:3]
  store i64 %tmp.340.i, i64* %output.assign.addr.102, align 8, !dbg !435 ; [debug line = 245:3@356:3]
  %output.assign.addr.103 = getelementptr [19 x i64]* %t, i64 0, i64 14, !dbg !436 ; [#uses=1 type=i64*] [debug line = 246:3@356:3]
  %output.assign.load.107 = load i64* %output.assign.addr.103, align 16, !dbg !436 ; [#uses=3 type=i64] [debug line = 246:3@356:3]
  %tmp.341.i = shl i64 %output.assign.load.107, 4, !dbg !436 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %output.assign.addr.104 = getelementptr [19 x i64]* %t, i64 0, i64 4, !dbg !436 ; [#uses=2 type=i64*] [debug line = 246:3@356:3]
  %output.assign.load.108 = load i64* %output.assign.addr.104, align 16, !dbg !436 ; [#uses=1 type=i64] [debug line = 246:3@356:3]
  %tmp.343.i = shl i64 %output.assign.load.107, 1, !dbg !437 ; [#uses=1 type=i64] [debug line = 247:3@356:3]
  %tmp10 = add i64 %output.assign.load.107, %output.assign.load.108, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp11 = add i64 %tmp.343.i, %tmp.341.i, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  %tmp.345.i = add nsw i64 %tmp10, %tmp11, !dbg !438 ; [#uses=1 type=i64] [debug line = 248:3@356:3]
  store i64 %tmp.345.i, i64* %output.assign.addr.104, align 16, !dbg !438 ; [debug line = 248:3@356:3]
  %output.assign.addr.105 = getelementptr [19 x i64]* %t, i64 0, i64 13, !dbg !439 ; [#uses=1 type=i64*] [debug line = 249:3@356:3]
  %output.assign.load.109 = load i64* %output.assign.addr.105, align 8, !dbg !439 ; [#uses=3 type=i64] [debug line = 249:3@356:3]
  %tmp.346.i = shl i64 %output.assign.load.109, 4, !dbg !439 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %output.assign.addr.106 = getelementptr [19 x i64]* %t, i64 0, i64 3, !dbg !439 ; [#uses=2 type=i64*] [debug line = 249:3@356:3]
  %output.assign.load.110 = load i64* %output.assign.addr.106, align 8, !dbg !439 ; [#uses=1 type=i64] [debug line = 249:3@356:3]
  %tmp.348.i = shl i64 %output.assign.load.109, 1, !dbg !440 ; [#uses=1 type=i64] [debug line = 250:3@356:3]
  %tmp12 = add i64 %output.assign.load.109, %output.assign.load.110, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp13 = add i64 %tmp.348.i, %tmp.346.i, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  %tmp.350.i = add nsw i64 %tmp12, %tmp13, !dbg !441 ; [#uses=1 type=i64] [debug line = 251:3@356:3]
  store i64 %tmp.350.i, i64* %output.assign.addr.106, align 8, !dbg !441 ; [debug line = 251:3@356:3]
  %output.assign.addr.107 = getelementptr [19 x i64]* %t, i64 0, i64 12, !dbg !442 ; [#uses=1 type=i64*] [debug line = 252:3@356:3]
  %output.assign.load.111 = load i64* %output.assign.addr.107, align 16, !dbg !442 ; [#uses=3 type=i64] [debug line = 252:3@356:3]
  %tmp.351.i = shl i64 %output.assign.load.111, 4, !dbg !442 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %output.assign.addr.108 = getelementptr [19 x i64]* %t, i64 0, i64 2, !dbg !442 ; [#uses=2 type=i64*] [debug line = 252:3@356:3]
  %output.assign.load.112 = load i64* %output.assign.addr.108, align 16, !dbg !442 ; [#uses=1 type=i64] [debug line = 252:3@356:3]
  %tmp.353.i = shl i64 %output.assign.load.111, 1, !dbg !443 ; [#uses=1 type=i64] [debug line = 253:3@356:3]
  %tmp14 = add i64 %output.assign.load.111, %output.assign.load.112, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp15 = add i64 %tmp.353.i, %tmp.351.i, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  %tmp.355.i = add nsw i64 %tmp14, %tmp15, !dbg !444 ; [#uses=1 type=i64] [debug line = 254:3@356:3]
  store i64 %tmp.355.i, i64* %output.assign.addr.108, align 16, !dbg !444 ; [debug line = 254:3@356:3]
  %output.assign.addr.109 = getelementptr [19 x i64]* %t, i64 0, i64 11, !dbg !445 ; [#uses=1 type=i64*] [debug line = 255:3@356:3]
  %output.assign.load.113 = load i64* %output.assign.addr.109, align 8, !dbg !445 ; [#uses=3 type=i64] [debug line = 255:3@356:3]
  %tmp.356.i = shl i64 %output.assign.load.113, 4, !dbg !445 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %output.assign.addr.110 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !445 ; [#uses=2 type=i64*] [debug line = 255:3@356:3]
  %output.assign.load.114 = load i64* %output.assign.addr.110, align 8, !dbg !445 ; [#uses=1 type=i64] [debug line = 255:3@356:3]
  %tmp.358.i = shl i64 %output.assign.load.113, 1, !dbg !446 ; [#uses=1 type=i64] [debug line = 256:3@356:3]
  %tmp16 = add i64 %output.assign.load.113, %output.assign.load.114, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp17 = add i64 %tmp.358.i, %tmp.356.i, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  %tmp.360.i = add nsw i64 %tmp16, %tmp17, !dbg !447 ; [#uses=1 type=i64] [debug line = 257:3@356:3]
  store i64 %tmp.360.i, i64* %output.assign.addr.110, align 8, !dbg !447 ; [debug line = 257:3@356:3]
  %output.assign.addr.111 = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !448 ; [#uses=1 type=i64*] [debug line = 258:3@356:3]
  %output.assign.load.115 = load i64* %output.assign.addr.111, align 16, !dbg !448 ; [#uses=3 type=i64] [debug line = 258:3@356:3]
  %tmp.361.i = shl i64 %output.assign.load.115, 4, !dbg !448 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %t.load.6 = load i64* %t.addr.6, align 16, !dbg !448 ; [#uses=1 type=i64] [debug line = 258:3@356:3]
  %tmp.363.i = shl i64 %output.assign.load.115, 1, !dbg !449 ; [#uses=1 type=i64] [debug line = 259:3@356:3]
  %tmp18 = add i64 %output.assign.load.115, %t.load.6, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp19 = add i64 %tmp.363.i, %tmp.361.i, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  %tmp.365.i = add nsw i64 %tmp18, %tmp19, !dbg !450 ; [#uses=1 type=i64] [debug line = 260:3@356:3]
  store i64 %tmp.365.i, i64* %t.addr.6, align 16, !dbg !450 ; [debug line = 260:3@356:3]
  %output.assign.addr.112 = getelementptr [19 x i64]* %t, i64 0, i64 0 ; [#uses=2 type=i64*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !451), !dbg !453 ; [debug line = 302:40@357:3] [debug variable = output]
  %output.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 10, !dbg !454 ; [#uses=3 type=i64*] [debug line = 305:3@357:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !454 ; [debug line = 305:3@357:3]
  br label %1, !dbg !455                          ; [debug line = 307:8@357:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=4 type=i4]
  %tmp.i = icmp ult i4 %i.i, -6, !dbg !455        ; [#uses=1 type=i1] [debug line = 307:8@357:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %3, label %freduce_coefficients.exit, !dbg !455 ; [debug line = 307:8@357:3]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i4 %i.i to i64, !dbg !456        ; [#uses=1 type=i64] [debug line = 308:17@357:3]
  %output.assign.addr.23 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp..i, !dbg !456 ; [#uses=2 type=i64*] [debug line = 308:17@357:3]
  %v.assign = load i64* %output.assign.addr.23, align 16, !dbg !456 ; [#uses=3 type=i64] [debug line = 308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign}, i64 0, metadata !457), !dbg !458 ; [debug line = 271:24@308:17@357:3] [debug variable = v]
  %tmp.i.i = lshr i64 %v.assign, 63, !dbg !459    ; [#uses=1 type=i64] [debug line = 274:62@308:17@357:3]
  %highword1.i.i = trunc i64 %tmp.i.i to i1, !dbg !460 ; [#uses=1 type=i1] [debug line = 276:50@308:17@357:3]
  %tmp..i.i.cast = select i1 %highword1.i.i, i64 67108863, i64 0, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.1064.i.i = add nsw i64 %tmp..i.i.cast, %v.assign, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.396.i.i = lshr i64 %tmp.1064.i.i, 26, !dbg !461 ; [#uses=1 type=i64] [debug line = 280:3@308:17@357:3]
  %tmp.397.i.i = trunc i64 %tmp.396.i.i to i38, !dbg !461 ; [#uses=1 type=i38] [debug line = 280:3@308:17@357:3]
  %over = sext i38 %tmp.397.i.i to i64, !dbg !461 ; [#uses=2 type=i64] [debug line = 280:3@308:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over}, i64 0, metadata !462), !dbg !456 ; [debug line = 308:17@357:3] [debug variable = over]
  %tmp.366.i = shl nsw i64 %over, 26, !dbg !463   ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  %tmp.367.i = sub nsw i64 %v.assign, %tmp.366.i, !dbg !463 ; [#uses=1 type=i64] [debug line = 313:5@357:3]
  store i64 %tmp.367.i, i64* %output.assign.addr.23, align 16, !dbg !463 ; [debug line = 313:5@357:3]
  %tmp.368.i = or i4 %i.i, 1, !dbg !464           ; [#uses=1 type=i4] [debug line = 314:5@357:3]
  %tmp.369.i = zext i4 %tmp.368.i to i64, !dbg !464 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %output.assign.addr.24 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.369.i, !dbg !464 ; [#uses=2 type=i64*] [debug line = 314:5@357:3]
  %output.assign.load = load i64* %output.assign.addr.24, align 8, !dbg !464 ; [#uses=1 type=i64] [debug line = 314:5@357:3]
  %v.assign.13 = add nsw i64 %over, %output.assign.load, !dbg !464 ; [#uses=3 type=i64] [debug line = 314:5@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.13}, i64 0, metadata !465), !dbg !467 ; [debug line = 287:24@322:12@357:3] [debug variable = v]
  %tmp.i8.i = lshr i64 %v.assign.13, 63, !dbg !468 ; [#uses=1 type=i64] [debug line = 290:62@322:12@357:3]
  %highword1.i9.i = trunc i64 %tmp.i8.i to i1, !dbg !469 ; [#uses=1 type=i1] [debug line = 292:50@322:12@357:3]
  %tmp..i10.i.cast = select i1 %highword1.i9.i, i64 33554431, i64 0, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.1066.i.i = add nsw i64 %v.assign.13, %tmp..i10.i.cast, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.398.i.i = lshr i64 %tmp.1066.i.i, 25, !dbg !470 ; [#uses=1 type=i64] [debug line = 296:3@322:12@357:3]
  %tmp.399.i.i = trunc i64 %tmp.398.i.i to i39, !dbg !470 ; [#uses=1 type=i39] [debug line = 296:3@322:12@357:3]
  %over.13 = sext i39 %tmp.399.i.i to i64, !dbg !470 ; [#uses=2 type=i64] [debug line = 296:3@322:12@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over.13}, i64 0, metadata !462), !dbg !466 ; [debug line = 322:12@357:3] [debug variable = over]
  %tmp.371.i = shl nsw i64 %over.13, 25, !dbg !471 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  %tmp.372.i = sub nsw i64 %v.assign.13, %tmp.371.i, !dbg !471 ; [#uses=1 type=i64] [debug line = 323:5@357:3]
  store i64 %tmp.372.i, i64* %output.assign.addr.24, align 8, !dbg !471 ; [debug line = 323:5@357:3]
  %i = add i4 %i.i, 2, !dbg !472                  ; [#uses=2 type=i4] [debug line = 324:5@357:3]
  %tmp.373.i = zext i4 %i to i64, !dbg !472       ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %output.assign.addr.25 = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.373.i, !dbg !472 ; [#uses=2 type=i64*] [debug line = 324:5@357:3]
  %output.assign.load.18 = load i64* %output.assign.addr.25, align 16, !dbg !472 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  %tmp.374.i = add nsw i64 %over.13, %output.assign.load.18, !dbg !472 ; [#uses=1 type=i64] [debug line = 324:5@357:3]
  store i64 %tmp.374.i, i64* %output.assign.addr.25, align 16, !dbg !472 ; [debug line = 324:5@357:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !473), !dbg !474 ; [debug line = 307:23@357:3] [debug variable = i]
  br label %1, !dbg !474                          ; [debug line = 307:23@357:3]

freduce_coefficients.exit:                        ; preds = %1
  %output.assign.load.19 = load i64* %output.assign.addr, align 16, !dbg !475 ; [#uses=3 type=i64] [debug line = 327:3@357:3]
  %tmp.375.i = shl i64 %output.assign.load.19, 4, !dbg !475 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %output.assign.load.117 = load i64* %output.assign.addr.112, align 16, !dbg !475 ; [#uses=1 type=i64] [debug line = 327:3@357:3]
  %tmp.377.i = shl i64 %output.assign.load.19, 1, !dbg !476 ; [#uses=1 type=i64] [debug line = 328:3@357:3]
  %tmp21 = add i64 %output.assign.load.19, %output.assign.load.117, !dbg !477 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %tmp22 = add i64 %tmp.377.i, %tmp.375.i, !dbg !477 ; [#uses=1 type=i64] [debug line = 329:3@357:3]
  %v.assign.14 = add nsw i64 %tmp21, %tmp22, !dbg !477 ; [#uses=3 type=i64] [debug line = 329:3@357:3]
  store i64 0, i64* %output.assign.addr, align 16, !dbg !478 ; [debug line = 331:3@357:3]
  call void @llvm.dbg.value(metadata !{i64 %v.assign.14}, i64 0, metadata !479), !dbg !481 ; [debug line = 271:24@336:17@357:3] [debug variable = v]
  %tmp.i11.i = lshr i64 %v.assign.14, 63, !dbg !482 ; [#uses=1 type=i64] [debug line = 274:62@336:17@357:3]
  %highword1.i12.i = trunc i64 %tmp.i11.i to i1, !dbg !483 ; [#uses=1 type=i1] [debug line = 276:50@336:17@357:3]
  %tmp..i13.i.cast = select i1 %highword1.i12.i, i64 67108863, i64 0, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.1064.i14.i = add nsw i64 %v.assign.14, %tmp..i13.i.cast, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.396.i15.i = lshr i64 %tmp.1064.i14.i, 26, !dbg !484 ; [#uses=1 type=i64] [debug line = 280:3@336:17@357:3]
  %tmp.397.i16.i = trunc i64 %tmp.396.i15.i to i38, !dbg !484 ; [#uses=1 type=i38] [debug line = 280:3@336:17@357:3]
  %over.14 = sext i38 %tmp.397.i16.i to i64, !dbg !484 ; [#uses=2 type=i64] [debug line = 280:3@336:17@357:3]
  call void @llvm.dbg.value(metadata !{i64 %over.14}, i64 0, metadata !485), !dbg !480 ; [debug line = 336:17@357:3] [debug variable = over]
  %tmp.380.i = shl nsw i64 %over.14, 26, !dbg !486 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  %tmp.381.i = sub nsw i64 %v.assign.14, %tmp.380.i, !dbg !486 ; [#uses=1 type=i64] [debug line = 337:5@357:3]
  store i64 %tmp.381.i, i64* %output.assign.addr.112, align 16, !dbg !486 ; [debug line = 337:5@357:3]
  %output.assign.addr.26 = getelementptr [19 x i64]* %t, i64 0, i64 1, !dbg !487 ; [#uses=2 type=i64*] [debug line = 338:5@357:3]
  %output.assign.load.20 = load i64* %output.assign.addr.26, align 8, !dbg !487 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  %tmp.382.i = add nsw i64 %over.14, %output.assign.load.20, !dbg !487 ; [#uses=1 type=i64] [debug line = 338:5@357:3]
  store i64 %tmp.382.i, i64* %output.assign.addr.26, align 8, !dbg !487 ; [debug line = 338:5@357:3]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %output}, i64 0, metadata !494), !dbg !495 ; [debug line = 59:20@359:3] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %t}, i64 0, metadata !496), !dbg !497 ; [debug line = 59:31@359:3] [debug variable = src]
  br label %4, !dbg !488                          ; [debug line = 61:6@359:3]

; <label>:4                                       ; preds = %6, %freduce_coefficients.exit
  %i.i3 = phi i4 [ 0, %freduce_coefficients.exit ], [ %i.8, %6 ] ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i3, -6, !dbg !488   ; [#uses=1 type=i1] [debug line = 61:6@359:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.exit, label %6, !dbg !488 ; [debug line = 61:6@359:3]

; <label>:6                                       ; preds = %4
  %tmp.i4 = zext i4 %i.i3 to i64, !dbg !490       ; [#uses=2 type=i64] [debug line = 62:3@359:3]
  %src.assign.addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.i4, !dbg !490 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  %src.assign.load = load i64* %src.assign.addr, align 8, !dbg !490 ; [#uses=1 type=i64] [debug line = 62:3@359:3]
  %output.addr = getelementptr [10 x i64]* %output, i64 0, i64 %tmp.i4, !dbg !490 ; [#uses=1 type=i64*] [debug line = 62:3@359:3]
  store i64 %src.assign.load, i64* %output.addr, align 8, !dbg !490 ; [debug line = 62:3@359:3]
  %i.8 = add i4 %i.i3, 1, !dbg !491               ; [#uses=1 type=i4] [debug line = 61:18@359:3]
  call void @llvm.dbg.value(metadata !{i4 %i.8}, i64 0, metadata !492), !dbg !491 ; [debug line = 61:18@359:3] [debug variable = i]
  br label %4, !dbg !491                          ; [debug line = 61:18@359:3]

_memcpy.exit:                                     ; preds = %4
  ret void, !dbg !493                             ; [debug line = 360:1]
}

; [#uses=1]
define internal fastcc void @fmonty([19 x i64]* nocapture %x2, [19 x i64]* nocapture %z2, [19 x i64]* nocapture %x3, [19 x i64]* nocapture %z3, [19 x i64]* nocapture %x, [19 x i64]* nocapture %z, [19 x i64]* nocapture %xprime, [19 x i64]* nocapture %zprime, [10 x i63]* nocapture %qmqp) {
  %origx = alloca [10 x i64], align 16            ; [#uses=2 type=[10 x i64]*]
  %origxprime = alloca [10 x i64], align 16       ; [#uses=4 type=[10 x i64]*]
  %zzz = alloca [19 x i64], align 16              ; [#uses=5 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zzz}, i64 0, metadata !505), !dbg !508 ; [debug line = 107:35@750:3] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zzz}, i64 0, metadata !509), !dbg !511 ; [debug line = 73:20@741:3] [debug variable = dst]
  %xx = alloca [19 x i64], align 16               ; [#uses=4 type=[19 x i64]*]
  %zz = alloca [19 x i64], align 16               ; [#uses=5 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zz}, i64 0, metadata !512), !dbg !513 ; [debug line = 107:55@750:3] [debug variable = in]
  %xxprime = alloca [19 x i64], align 16          ; [#uses=6 type=[19 x i64]*]
  %zzprime = alloca [19 x i64], align 16          ; [#uses=10 type=[19 x i64]*]
  %zzzprime = alloca [19 x i64], align 16         ; [#uses=2 type=[19 x i64]*]
  %xxxprime = alloca [19 x i64], align 16         ; [#uses=2 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %x2}, i64 0, metadata !514), !dbg !515 ; [debug line = 678:26] [debug variable = x2]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %z2}, i64 0, metadata !516), !dbg !517 ; [debug line = 678:36] [debug variable = z2]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %x3}, i64 0, metadata !518), !dbg !519 ; [debug line = 679:26] [debug variable = x3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %z3}, i64 0, metadata !520), !dbg !521 ; [debug line = 679:36] [debug variable = z3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %x}, i64 0, metadata !522), !dbg !523 ; [debug line = 680:26] [debug variable = x]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %z}, i64 0, metadata !524), !dbg !525 ; [debug line = 680:35] [debug variable = z]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %xprime}, i64 0, metadata !526), !dbg !527 ; [debug line = 681:26] [debug variable = xprime]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zprime}, i64 0, metadata !528), !dbg !529 ; [debug line = 681:40] [debug variable = zprime]
  call void @llvm.dbg.value(metadata !{[10 x i63]* %qmqp}, i64 0, metadata !530), !dbg !531 ; [debug line = 682:32] [debug variable = qmqp]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !532 ; [debug line = 683:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !533 ; [debug line = 684:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %origx}, metadata !534), !dbg !536 ; [debug line = 685:7] [debug variable = origx]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %origxprime}, metadata !537), !dbg !538 ; [debug line = 685:18] [debug variable = origxprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzz}, metadata !539), !dbg !540 ; [debug line = 685:34] [debug variable = zzz]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xx}, metadata !541), !dbg !542 ; [debug line = 685:43] [debug variable = xx]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zz}, metadata !543), !dbg !544 ; [debug line = 685:51] [debug variable = zz]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xxprime}, metadata !545), !dbg !546 ; [debug line = 685:59] [debug variable = xxprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzprime}, metadata !547), !dbg !548 ; [debug line = 686:9] [debug variable = zzprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %zzzprime}, metadata !549), !dbg !550 ; [debug line = 686:22] [debug variable = zzzprime]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %xxxprime}, metadata !551), !dbg !552 ; [debug line = 686:36] [debug variable = xxxprime]
  call fastcc void @_memcpy([10 x i64]* %origx, [19 x i64]* %x), !dbg !553 ; [debug line = 690:3]
  call fastcc void @fsum([19 x i64]* %x, [19 x i64]* %z), !dbg !554 ; [debug line = 691:3]
  call fastcc void @fdifference.1([19 x i64]* %z, [10 x i64]* %origx), !dbg !555 ; [debug line = 693:3]
  call fastcc void @_memcpy([10 x i64]* %origxprime, [19 x i64]* %xprime), !dbg !556 ; [debug line = 696:3]
  call fastcc void @fsum([19 x i64]* %xprime, [19 x i64]* %zprime), !dbg !557 ; [debug line = 697:3]
  call fastcc void @fdifference.1([19 x i64]* %zprime, [10 x i64]* %origxprime), !dbg !558 ; [debug line = 699:3]
  call fastcc void @fproduct([19 x i64]* %xxprime, [19 x i64]* %xprime, [19 x i64]* %z), !dbg !559 ; [debug line = 701:3]
  call fastcc void @fproduct([19 x i64]* %zzprime, [19 x i64]* %x, [19 x i64]* %zprime), !dbg !560 ; [debug line = 705:3]
  call fastcc void @freduce_degree([19 x i64]* %xxprime), !dbg !561 ; [debug line = 707:3]
  call fastcc void @freduce_coefficients([19 x i64]* %xxprime), !dbg !562 ; [debug line = 708:3]
  call fastcc void @freduce_degree([19 x i64]* %zzprime), !dbg !563 ; [debug line = 710:3]
  call fastcc void @freduce_coefficients([19 x i64]* %zzprime), !dbg !564 ; [debug line = 711:3]
  call fastcc void @_memcpy([10 x i64]* %origxprime, [19 x i64]* %xxprime), !dbg !565 ; [debug line = 713:3]
  call fastcc void @fsum([19 x i64]* %xxprime, [19 x i64]* %zzprime), !dbg !566 ; [debug line = 714:3]
  call fastcc void @fdifference.1([19 x i64]* %zzprime, [10 x i64]* %origxprime), !dbg !567 ; [debug line = 716:3]
  call fastcc void @fsquare([19 x i64]* %xxxprime, [19 x i64]* %xxprime), !dbg !568 ; [debug line = 718:3]
  call fastcc void @fsquare([19 x i64]* %zzzprime, [19 x i64]* %zzprime), !dbg !569 ; [debug line = 720:3]
  call fastcc void @fproduct.1([19 x i64]* %zzprime, [19 x i64]* %zzzprime, [10 x i63]* %qmqp), !dbg !570 ; [debug line = 722:3]
  call fastcc void @freduce_degree([19 x i64]* %zzprime), !dbg !571 ; [debug line = 724:3]
  call fastcc void @freduce_coefficients([19 x i64]* %zzprime), !dbg !572 ; [debug line = 725:3]
  br label %1, !dbg !573                          ; [debug line = 61:6@727:3]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i4 [ 0, %0 ], [ %i, %3 ]             ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i, -6, !dbg !573    ; [#uses=1 type=i1] [debug line = 61:6@727:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.1.exit.preheader, label %3, !dbg !573 ; [debug line = 61:6@727:3]

_memcpy.1.exit.preheader:                         ; preds = %1
  br label %_memcpy.1.exit, !dbg !575             ; [debug line = 61:6@728:3]

; <label>:3                                       ; preds = %1
  %tmp.i = zext i4 %i.i to i64, !dbg !577         ; [#uses=2 type=i64] [debug line = 62:3@727:3]
  %xxxprime.addr = getelementptr [19 x i64]* %xxxprime, i64 0, i64 %tmp.i, !dbg !577 ; [#uses=1 type=i64*] [debug line = 62:3@727:3]
  %xxxprime.load = load i64* %xxxprime.addr, align 8, !dbg !577 ; [#uses=1 type=i64] [debug line = 62:3@727:3]
  %x3.addr = getelementptr [19 x i64]* %x3, i64 0, i64 %tmp.i, !dbg !577 ; [#uses=1 type=i64*] [debug line = 62:3@727:3]
  store i64 %xxxprime.load, i64* %x3.addr, align 8, !dbg !577 ; [debug line = 62:3@727:3]
  %i = add i4 %i.i, 1, !dbg !578                  ; [#uses=1 type=i4] [debug line = 61:18@727:3]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !579), !dbg !578 ; [debug line = 61:18@727:3] [debug variable = i]
  br label %1, !dbg !578                          ; [debug line = 61:18@727:3]

_memcpy.1.exit:                                   ; preds = %5, %_memcpy.1.exit.preheader
  %i.i9 = phi i4 [ %i.9, %5 ], [ 0, %_memcpy.1.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond.i1 = icmp eq i4 %i.i9, -6, !dbg !575  ; [#uses=1 type=i1] [debug line = 61:6@728:3]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i1, label %_memcpy.1.exit16, label %5, !dbg !575 ; [debug line = 61:6@728:3]

; <label>:5                                       ; preds = %_memcpy.1.exit
  %tmp.i2 = zext i4 %i.i9 to i64, !dbg !580       ; [#uses=2 type=i64] [debug line = 62:3@728:3]
  %zzprime.addr = getelementptr [19 x i64]* %zzprime, i64 0, i64 %tmp.i2, !dbg !580 ; [#uses=1 type=i64*] [debug line = 62:3@728:3]
  %zzprime.load = load i64* %zzprime.addr, align 8, !dbg !580 ; [#uses=1 type=i64] [debug line = 62:3@728:3]
  %z3.addr = getelementptr [19 x i64]* %z3, i64 0, i64 %tmp.i2, !dbg !580 ; [#uses=1 type=i64*] [debug line = 62:3@728:3]
  store i64 %zzprime.load, i64* %z3.addr, align 8, !dbg !580 ; [debug line = 62:3@728:3]
  %i.9 = add i4 %i.i9, 1, !dbg !581               ; [#uses=1 type=i4] [debug line = 61:18@728:3]
  call void @llvm.dbg.value(metadata !{i4 %i.9}, i64 0, metadata !582), !dbg !581 ; [debug line = 61:18@728:3] [debug variable = i]
  br label %_memcpy.1.exit, !dbg !581             ; [debug line = 61:18@728:3]

_memcpy.1.exit16:                                 ; preds = %_memcpy.1.exit
  call fastcc void @fsquare([19 x i64]* %xx, [19 x i64]* %x), !dbg !583 ; [debug line = 730:3]
  call fastcc void @fsquare([19 x i64]* %zz, [19 x i64]* %z), !dbg !584 ; [debug line = 732:3]
  call fastcc void @fproduct([19 x i64]* %x2, [19 x i64]* %xx, [19 x i64]* %zz), !dbg !585 ; [debug line = 734:3]
  call fastcc void @freduce_degree([19 x i64]* %x2), !dbg !586 ; [debug line = 736:3]
  call fastcc void @freduce_coefficients([19 x i64]* %x2), !dbg !587 ; [debug line = 737:3]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %zz}, i64 0, metadata !588), !dbg !590 ; [debug line = 99:31@739:3] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %xx}, i64 0, metadata !591), !dbg !592 ; [debug line = 99:51@739:3] [debug variable = in]
  br label %6, !dbg !593                          ; [debug line = 101:8@739:3]

; <label>:6                                       ; preds = %8, %_memcpy.1.exit16
  %i.i1 = phi i4 [ 0, %_memcpy.1.exit16 ], [ %i.10, %8 ] ; [#uses=3 type=i4]
  %tmp.i3 = icmp eq i4 %i.i1, -6, !dbg !593       ; [#uses=1 type=i1] [debug line = 101:8@739:3]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %tmp.i3, label %fdifference.exit.preheader, label %8, !dbg !593 ; [debug line = 101:8@739:3]

fdifference.exit.preheader:                       ; preds = %6
  br label %fdifference.exit, !dbg !596           ; [debug line = 75:6@741:3]

; <label>:8                                       ; preds = %6
  %tmp..i = zext i4 %i.i1 to i64, !dbg !599       ; [#uses=2 type=i64] [debug line = 102:5@739:3]
  %in.assign.addr = getelementptr [19 x i64]* %xx, i64 0, i64 %tmp..i, !dbg !599 ; [#uses=1 type=i64*] [debug line = 102:5@739:3]
  %in.assign.load = load i64* %in.assign.addr, align 8, !dbg !599 ; [#uses=1 type=i64] [debug line = 102:5@739:3]
  %output.assign.addr = getelementptr [19 x i64]* %zz, i64 0, i64 %tmp..i, !dbg !599 ; [#uses=2 type=i64*] [debug line = 102:5@739:3]
  %output.assign.load = load i64* %output.assign.addr, align 8, !dbg !599 ; [#uses=1 type=i64] [debug line = 102:5@739:3]
  %tmp.930.i = sub nsw i64 %in.assign.load, %output.assign.load, !dbg !599 ; [#uses=1 type=i64] [debug line = 102:5@739:3]
  store i64 %tmp.930.i, i64* %output.assign.addr, align 8, !dbg !599 ; [debug line = 102:5@739:3]
  %i.10 = add i4 %i.i1, 1, !dbg !601              ; [#uses=1 type=i4] [debug line = 101:23@739:3]
  call void @llvm.dbg.value(metadata !{i4 %i.10}, i64 0, metadata !602), !dbg !601 ; [debug line = 101:23@739:3] [debug variable = i]
  br label %6, !dbg !601                          ; [debug line = 101:23@739:3]

fdifference.exit:                                 ; preds = %10, %fdifference.exit.preheader
  %i.i2 = phi i4 [ %i.11, %10 ], [ 0, %fdifference.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond.i2 = icmp eq i4 %i.i2, -7, !dbg !596  ; [#uses=1 type=i1] [debug line = 75:6@741:3]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond.i2, label %_memset.exit.preheader, label %10, !dbg !596 ; [debug line = 75:6@741:3]

_memset.exit.preheader:                           ; preds = %fdifference.exit
  br label %_memset.exit, !dbg !603               ; [debug line = 109:8@750:3]

; <label>:10                                      ; preds = %fdifference.exit
  %tmp.i4.cast = zext i4 %i.i2 to i5              ; [#uses=1 type=i5]
  %sum.i = add i5 %tmp.i4.cast, 10                ; [#uses=1 type=i5]
  %sum.i.cast = zext i5 %sum.i to i64             ; [#uses=1 type=i64]
  %zzz.addr = getelementptr [19 x i64]* %zzz, i64 0, i64 %sum.i.cast, !dbg !606 ; [#uses=1 type=i64*] [debug line = 76:3@741:3]
  store i64 0, i64* %zzz.addr, align 8, !dbg !606 ; [debug line = 76:3@741:3]
  %i.11 = add i4 %i.i2, 1, !dbg !608              ; [#uses=1 type=i4] [debug line = 75:18@741:3]
  call void @llvm.dbg.value(metadata !{i4 %i.11}, i64 0, metadata !609), !dbg !608 ; [debug line = 75:18@741:3] [debug variable = i]
  br label %fdifference.exit, !dbg !608           ; [debug line = 75:18@741:3]

_memset.exit:                                     ; preds = %12, %_memset.exit.preheader
  %i.i3 = phi i4 [ %i.12, %12 ], [ 0, %_memset.exit.preheader ] ; [#uses=3 type=i4]
  %tmp.i5 = icmp eq i4 %i.i3, -6, !dbg !603       ; [#uses=1 type=i1] [debug line = 109:8@750:3]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %tmp.i5, label %fscalar_product.exit, label %12, !dbg !603 ; [debug line = 109:8@750:3]

; <label>:12                                      ; preds = %_memset.exit
  %tmp..i3 = zext i4 %i.i3 to i64, !dbg !610      ; [#uses=2 type=i64] [debug line = 110:5@750:3]
  %output.assign.addr.27 = getelementptr [19 x i64]* %zz, i64 0, i64 %tmp..i3, !dbg !610 ; [#uses=1 type=i64*] [debug line = 110:5@750:3]
  %output.assign.load.21 = load i64* %output.assign.addr.27, align 8, !dbg !610 ; [#uses=1 type=i64] [debug line = 110:5@750:3]
  %tmp.322.i = mul nsw i64 %output.assign.load.21, 121665, !dbg !610 ; [#uses=1 type=i64] [debug line = 110:5@750:3]
  %zzz.addr.1 = getelementptr [19 x i64]* %zzz, i64 0, i64 %tmp..i3, !dbg !610 ; [#uses=1 type=i64*] [debug line = 110:5@750:3]
  store i64 %tmp.322.i, i64* %zzz.addr.1, align 8, !dbg !610 ; [debug line = 110:5@750:3]
  %i.12 = add i4 %i.i3, 1, !dbg !612              ; [#uses=1 type=i4] [debug line = 109:23@750:3]
  call void @llvm.dbg.value(metadata !{i4 %i.12}, i64 0, metadata !613), !dbg !612 ; [debug line = 109:23@750:3] [debug variable = i]
  br label %_memset.exit, !dbg !612               ; [debug line = 109:23@750:3]

fscalar_product.exit:                             ; preds = %_memset.exit
  call fastcc void @freduce_coefficients([19 x i64]* %zzz), !dbg !614 ; [debug line = 754:3]
  call fastcc void @fsum([19 x i64]* %zzz, [19 x i64]* %xx), !dbg !615 ; [debug line = 756:3]
  call fastcc void @fproduct([19 x i64]* %z2, [19 x i64]* %zz, [19 x i64]* %zzz), !dbg !616 ; [debug line = 758:3]
  call fastcc void @freduce_degree([19 x i64]* %z2), !dbg !617 ; [debug line = 760:3]
  call fastcc void @freduce_coefficients([19 x i64]* %z2), !dbg !618 ; [debug line = 761:3]
  ret void, !dbg !619                             ; [debug line = 763:1]
}

; [#uses=1]
define internal fastcc void @fexpand([10 x i63]* nocapture %output, [32 x i8]* %input) {
  %input.addr = getelementptr [32 x i8]* %input, i64 0, i64 0 ; [#uses=1 type=i8*]
  %output.addr11 = getelementptr [10 x i63]* %output, i64 0, i64 0 ; [#uses=1 type=i63*]
  call void @llvm.dbg.value(metadata !{[10 x i63]* %output}, i64 0, metadata !620), !dbg !621 ; [debug line = 478:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %input}, i64 0, metadata !622), !dbg !626 ; [debug line = 478:33] [debug variable = input]
  %input.load = load i8* %input.addr, align 1, !dbg !627 ; [#uses=1 type=i8] [debug line = 484:3]
  %input.addr.1 = getelementptr [32 x i8]* %input, i64 0, i64 1, !dbg !627 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input.load.1 = load i8* %input.addr.1, align 1, !dbg !627 ; [#uses=1 type=i8] [debug line = 484:3]
  %input.addr.2 = getelementptr [32 x i8]* %input, i64 0, i64 2, !dbg !627 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input.load.2 = load i8* %input.addr.2, align 1, !dbg !627 ; [#uses=1 type=i8] [debug line = 484:3]
  %input.addr.3 = getelementptr [32 x i8]* %input, i64 0, i64 3, !dbg !627 ; [#uses=1 type=i8*] [debug line = 484:3]
  %input.load.3 = load i8* %input.addr.3, align 1, !dbg !627 ; [#uses=2 type=i8] [debug line = 484:3]
  %tmp = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %input.load.3, i32 0, i32 1) ; [#uses=1 type=i2]
  %tmp.365 = call i26 @_ssdm_op_BitConcatenate.i26.i2.i8.i8.i8(i2 %tmp, i8 %input.load.2, i8 %input.load.1, i8 %input.load) ; [#uses=1 type=i26]
  %tmp..cast = zext i26 %tmp.365 to i63, !dbg !627 ; [#uses=1 type=i63] [debug line = 484:3]
  store i63 %tmp..cast, i63* %output.addr11, align 8, !dbg !627 ; [debug line = 484:3]
  %input.addr.4 = getelementptr [32 x i8]* %input, i64 0, i64 4, !dbg !629 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input.load.4 = load i8* %input.addr.4, align 1, !dbg !629 ; [#uses=1 type=i8] [debug line = 485:3]
  %input.addr.5 = getelementptr [32 x i8]* %input, i64 0, i64 5, !dbg !629 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input.load.5 = load i8* %input.addr.5, align 1, !dbg !629 ; [#uses=1 type=i8] [debug line = 485:3]
  %input.addr.6 = getelementptr [32 x i8]* %input, i64 0, i64 6, !dbg !629 ; [#uses=1 type=i8*] [debug line = 485:3]
  %input.load.6 = load i8* %input.addr.6, align 1, !dbg !629 ; [#uses=2 type=i8] [debug line = 485:3]
  %tmp.160 = trunc i8 %input.load.6 to i3         ; [#uses=1 type=i3]
  %tmp.905.cast.cast = call i27 @_ssdm_op_BitConcatenate.i27.i3.i8.i8.i8(i3 %tmp.160, i8 %input.load.5, i8 %input.load.4, i8 %input.load.3), !dbg !629 ; [#uses=1 type=i27] [debug line = 485:3]
  %tmp. = lshr i27 %tmp.905.cast.cast, 2, !dbg !629 ; [#uses=1 type=i27] [debug line = 485:3]
  %tmp.906.cast = trunc i27 %tmp. to i25, !dbg !629 ; [#uses=1 type=i25] [debug line = 485:3]
  %output.addr = getelementptr [10 x i63]* %output, i64 0, i64 1, !dbg !629 ; [#uses=1 type=i63*] [debug line = 485:3]
  %tmp.907.cast.cast = zext i25 %tmp.906.cast to i63, !dbg !629 ; [#uses=1 type=i63] [debug line = 485:3]
  store i63 %tmp.907.cast.cast, i63* %output.addr, align 8, !dbg !629 ; [debug line = 485:3]
  %input.addr.7 = getelementptr [32 x i8]* %input, i64 0, i64 7, !dbg !630 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input.load.7 = load i8* %input.addr.7, align 1, !dbg !630 ; [#uses=1 type=i8] [debug line = 486:3]
  %input.addr.8 = getelementptr [32 x i8]* %input, i64 0, i64 8, !dbg !630 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input.load.8 = load i8* %input.addr.8, align 1, !dbg !630 ; [#uses=1 type=i8] [debug line = 486:3]
  %input.addr.9 = getelementptr [32 x i8]* %input, i64 0, i64 9, !dbg !630 ; [#uses=1 type=i8*] [debug line = 486:3]
  %input.load.9 = load i8* %input.addr.9, align 1, !dbg !630 ; [#uses=2 type=i8] [debug line = 486:3]
  %tmp.161 = trunc i8 %input.load.9 to i5         ; [#uses=1 type=i5]
  %tmp.908.cast.cast = call i29 @_ssdm_op_BitConcatenate.i29.i5.i8.i8.i8(i5 %tmp.161, i8 %input.load.8, i8 %input.load.7, i8 %input.load.6), !dbg !630 ; [#uses=1 type=i29] [debug line = 486:3]
  %tmp.827 = lshr i29 %tmp.908.cast.cast, 3, !dbg !630 ; [#uses=1 type=i29] [debug line = 486:3]
  %tmp.909.cast = trunc i29 %tmp.827 to i26, !dbg !630 ; [#uses=1 type=i26] [debug line = 486:3]
  %output.addr.148 = getelementptr [10 x i63]* %output, i64 0, i64 2, !dbg !630 ; [#uses=1 type=i63*] [debug line = 486:3]
  %tmp.910.cast.cast = zext i26 %tmp.909.cast to i63, !dbg !630 ; [#uses=1 type=i63] [debug line = 486:3]
  store i63 %tmp.910.cast.cast, i63* %output.addr.148, align 8, !dbg !630 ; [debug line = 486:3]
  %input.addr.10 = getelementptr [32 x i8]* %input, i64 0, i64 10, !dbg !631 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input.load.10 = load i8* %input.addr.10, align 1, !dbg !631 ; [#uses=1 type=i8] [debug line = 487:3]
  %input.addr.11 = getelementptr [32 x i8]* %input, i64 0, i64 11, !dbg !631 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input.load.11 = load i8* %input.addr.11, align 1, !dbg !631 ; [#uses=1 type=i8] [debug line = 487:3]
  %input.addr.12 = getelementptr [32 x i8]* %input, i64 0, i64 12, !dbg !631 ; [#uses=1 type=i8*] [debug line = 487:3]
  %input.load.12 = load i8* %input.addr.12, align 1, !dbg !631 ; [#uses=2 type=i8] [debug line = 487:3]
  %tmp.162 = trunc i8 %input.load.12 to i6        ; [#uses=1 type=i6]
  %tmp.911.cast.cast = call i30 @_ssdm_op_BitConcatenate.i30.i6.i8.i8.i8(i6 %tmp.162, i8 %input.load.11, i8 %input.load.10, i8 %input.load.9), !dbg !631 ; [#uses=1 type=i30] [debug line = 487:3]
  %tmp.828 = lshr i30 %tmp.911.cast.cast, 5, !dbg !631 ; [#uses=1 type=i30] [debug line = 487:3]
  %tmp.912.cast = trunc i30 %tmp.828 to i25, !dbg !631 ; [#uses=1 type=i25] [debug line = 487:3]
  %output.addr.149 = getelementptr [10 x i63]* %output, i64 0, i64 3, !dbg !631 ; [#uses=1 type=i63*] [debug line = 487:3]
  %tmp.913.cast.cast = zext i25 %tmp.912.cast to i63, !dbg !631 ; [#uses=1 type=i63] [debug line = 487:3]
  store i63 %tmp.913.cast.cast, i63* %output.addr.149, align 8, !dbg !631 ; [debug line = 487:3]
  %input.addr.13 = getelementptr [32 x i8]* %input, i64 0, i64 13, !dbg !632 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input.load.13 = load i8* %input.addr.13, align 1, !dbg !632 ; [#uses=1 type=i8] [debug line = 488:3]
  %input.addr.14 = getelementptr [32 x i8]* %input, i64 0, i64 14, !dbg !632 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input.load.14 = load i8* %input.addr.14, align 1, !dbg !632 ; [#uses=1 type=i8] [debug line = 488:3]
  %input.addr.15 = getelementptr [32 x i8]* %input, i64 0, i64 15, !dbg !632 ; [#uses=1 type=i8*] [debug line = 488:3]
  %input.load.15 = load i8* %input.addr.15, align 1, !dbg !632 ; [#uses=1 type=i8] [debug line = 488:3]
  %tmp.369 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %input.load.15, i8 %input.load.14, i8 %input.load.13, i8 %input.load.12) ; [#uses=1 type=i32]
  %tmp.829 = lshr i32 %tmp.369, 6, !dbg !632      ; [#uses=1 type=i32] [debug line = 488:3]
  %output.addr.150 = getelementptr [10 x i63]* %output, i64 0, i64 4, !dbg !632 ; [#uses=1 type=i63*] [debug line = 488:3]
  %tmp.915.cast.cast = zext i32 %tmp.829 to i63, !dbg !632 ; [#uses=1 type=i63] [debug line = 488:3]
  store i63 %tmp.915.cast.cast, i63* %output.addr.150, align 8, !dbg !632 ; [debug line = 488:3]
  %input.addr.16 = getelementptr [32 x i8]* %input, i64 0, i64 16, !dbg !633 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.16 = load i8* %input.addr.16, align 1, !dbg !633 ; [#uses=1 type=i8] [debug line = 489:3]
  %input.addr.17 = getelementptr [32 x i8]* %input, i64 0, i64 17, !dbg !633 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.17 = load i8* %input.addr.17, align 1, !dbg !633 ; [#uses=1 type=i8] [debug line = 489:3]
  %input.addr.18 = getelementptr [32 x i8]* %input, i64 0, i64 18, !dbg !633 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.18 = load i8* %input.addr.18, align 1, !dbg !633 ; [#uses=1 type=i8] [debug line = 489:3]
  %input.addr.19 = getelementptr [32 x i8]* %input, i64 0, i64 19, !dbg !633 ; [#uses=1 type=i8*] [debug line = 489:3]
  %input.load.19 = load i8* %input.addr.19, align 1, !dbg !633 ; [#uses=2 type=i8] [debug line = 489:3]
  %tmp.370 = call i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8 %input.load.19, i32 0, i32 0) ; [#uses=1 type=i1]
  %tmp.371 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i8.i8.i8(i1 %tmp.370, i8 %input.load.18, i8 %input.load.17, i8 %input.load.16) ; [#uses=1 type=i25]
  %output.addr.151 = getelementptr [10 x i63]* %output, i64 0, i64 5, !dbg !633 ; [#uses=1 type=i63*] [debug line = 489:3]
  %tmp.916.cast = zext i25 %tmp.371 to i63, !dbg !633 ; [#uses=1 type=i63] [debug line = 489:3]
  store i63 %tmp.916.cast, i63* %output.addr.151, align 8, !dbg !633 ; [debug line = 489:3]
  %input.addr.20 = getelementptr [32 x i8]* %input, i64 0, i64 20, !dbg !634 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input.load.20 = load i8* %input.addr.20, align 1, !dbg !634 ; [#uses=1 type=i8] [debug line = 490:3]
  %input.addr.21 = getelementptr [32 x i8]* %input, i64 0, i64 21, !dbg !634 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input.load.21 = load i8* %input.addr.21, align 1, !dbg !634 ; [#uses=1 type=i8] [debug line = 490:3]
  %input.addr.22 = getelementptr [32 x i8]* %input, i64 0, i64 22, !dbg !634 ; [#uses=1 type=i8*] [debug line = 490:3]
  %input.load.22 = load i8* %input.addr.22, align 1, !dbg !634 ; [#uses=2 type=i8] [debug line = 490:3]
  %tmp.163 = trunc i8 %input.load.22 to i3        ; [#uses=1 type=i3]
  %tmp.917.cast.cast = call i27 @_ssdm_op_BitConcatenate.i27.i3.i8.i8.i8(i3 %tmp.163, i8 %input.load.21, i8 %input.load.20, i8 %input.load.19), !dbg !634 ; [#uses=1 type=i27] [debug line = 490:3]
  %tmp.830 = lshr i27 %tmp.917.cast.cast, 1, !dbg !634 ; [#uses=1 type=i27] [debug line = 490:3]
  %tmp.918.cast = trunc i27 %tmp.830 to i26, !dbg !634 ; [#uses=1 type=i26] [debug line = 490:3]
  %output.addr.152 = getelementptr [10 x i63]* %output, i64 0, i64 6, !dbg !634 ; [#uses=1 type=i63*] [debug line = 490:3]
  %tmp.919.cast.cast = zext i26 %tmp.918.cast to i63, !dbg !634 ; [#uses=1 type=i63] [debug line = 490:3]
  store i63 %tmp.919.cast.cast, i63* %output.addr.152, align 8, !dbg !634 ; [debug line = 490:3]
  %input.addr.23 = getelementptr [32 x i8]* %input, i64 0, i64 23, !dbg !635 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input.load.23 = load i8* %input.addr.23, align 1, !dbg !635 ; [#uses=1 type=i8] [debug line = 491:3]
  %input.addr.24 = getelementptr [32 x i8]* %input, i64 0, i64 24, !dbg !635 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input.load.24 = load i8* %input.addr.24, align 1, !dbg !635 ; [#uses=1 type=i8] [debug line = 491:3]
  %input.addr.25 = getelementptr [32 x i8]* %input, i64 0, i64 25, !dbg !635 ; [#uses=1 type=i8*] [debug line = 491:3]
  %input.load.25 = load i8* %input.addr.25, align 1, !dbg !635 ; [#uses=2 type=i8] [debug line = 491:3]
  %tmp.164 = trunc i8 %input.load.25 to i4        ; [#uses=1 type=i4]
  %tmp.920.cast.cast = call i28 @_ssdm_op_BitConcatenate.i28.i4.i8.i8.i8(i4 %tmp.164, i8 %input.load.24, i8 %input.load.23, i8 %input.load.22), !dbg !635 ; [#uses=1 type=i28] [debug line = 491:3]
  %tmp.831 = lshr i28 %tmp.920.cast.cast, 3, !dbg !635 ; [#uses=1 type=i28] [debug line = 491:3]
  %tmp.921.cast = trunc i28 %tmp.831 to i25, !dbg !635 ; [#uses=1 type=i25] [debug line = 491:3]
  %output.addr.153 = getelementptr [10 x i63]* %output, i64 0, i64 7, !dbg !635 ; [#uses=1 type=i63*] [debug line = 491:3]
  %tmp.922.cast.cast = zext i25 %tmp.921.cast to i63, !dbg !635 ; [#uses=1 type=i63] [debug line = 491:3]
  store i63 %tmp.922.cast.cast, i63* %output.addr.153, align 8, !dbg !635 ; [debug line = 491:3]
  %input.addr.26 = getelementptr [32 x i8]* %input, i64 0, i64 26, !dbg !636 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input.load.26 = load i8* %input.addr.26, align 1, !dbg !636 ; [#uses=1 type=i8] [debug line = 492:3]
  %input.addr.27 = getelementptr [32 x i8]* %input, i64 0, i64 27, !dbg !636 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input.load.27 = load i8* %input.addr.27, align 1, !dbg !636 ; [#uses=1 type=i8] [debug line = 492:3]
  %input.addr.28 = getelementptr [32 x i8]* %input, i64 0, i64 28, !dbg !636 ; [#uses=1 type=i8*] [debug line = 492:3]
  %input.load.28 = load i8* %input.addr.28, align 1, !dbg !636 ; [#uses=2 type=i8] [debug line = 492:3]
  %tmp.165 = trunc i8 %input.load.28 to i6        ; [#uses=1 type=i6]
  %tmp.923.cast.cast = call i30 @_ssdm_op_BitConcatenate.i30.i6.i8.i8.i8(i6 %tmp.165, i8 %input.load.27, i8 %input.load.26, i8 %input.load.25), !dbg !636 ; [#uses=1 type=i30] [debug line = 492:3]
  %tmp.832 = lshr i30 %tmp.923.cast.cast, 4, !dbg !636 ; [#uses=1 type=i30] [debug line = 492:3]
  %tmp.924.cast = trunc i30 %tmp.832 to i26, !dbg !636 ; [#uses=1 type=i26] [debug line = 492:3]
  %output.addr.154 = getelementptr [10 x i63]* %output, i64 0, i64 8, !dbg !636 ; [#uses=1 type=i63*] [debug line = 492:3]
  %tmp.925.cast.cast = zext i26 %tmp.924.cast to i63, !dbg !636 ; [#uses=1 type=i63] [debug line = 492:3]
  store i63 %tmp.925.cast.cast, i63* %output.addr.154, align 8, !dbg !636 ; [debug line = 492:3]
  %input.addr.29 = getelementptr [32 x i8]* %input, i64 0, i64 29, !dbg !637 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input.load.29 = load i8* %input.addr.29, align 1, !dbg !637 ; [#uses=1 type=i8] [debug line = 493:3]
  %input.addr.30 = getelementptr [32 x i8]* %input, i64 0, i64 30, !dbg !637 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input.load.30 = load i8* %input.addr.30, align 1, !dbg !637 ; [#uses=1 type=i8] [debug line = 493:3]
  %input.addr.31 = getelementptr [32 x i8]* %input, i64 0, i64 31, !dbg !637 ; [#uses=1 type=i8*] [debug line = 493:3]
  %input.load.31 = load i8* %input.addr.31, align 1, !dbg !637 ; [#uses=1 type=i8] [debug line = 493:3]
  %tmp.166 = trunc i8 %input.load.31 to i7        ; [#uses=1 type=i7]
  %tmp.926.cast.cast = call i31 @_ssdm_op_BitConcatenate.i31.i7.i8.i8.i8(i7 %tmp.166, i8 %input.load.30, i8 %input.load.29, i8 %input.load.28), !dbg !637 ; [#uses=1 type=i31] [debug line = 493:3]
  %tmp.833 = lshr i31 %tmp.926.cast.cast, 6, !dbg !637 ; [#uses=1 type=i31] [debug line = 493:3]
  %tmp.927.cast = trunc i31 %tmp.833 to i25, !dbg !637 ; [#uses=1 type=i25] [debug line = 493:3]
  %output.addr.155 = getelementptr [10 x i63]* %output, i64 0, i64 9, !dbg !637 ; [#uses=1 type=i63*] [debug line = 493:3]
  %tmp.928.cast.cast = zext i25 %tmp.927.cast to i63, !dbg !637 ; [#uses=1 type=i63] [debug line = 493:3]
  store i63 %tmp.928.cast.cast, i63* %output.addr.155, align 8, !dbg !637 ; [debug line = 493:3]
  ret void, !dbg !638                             ; [debug line = 495:1]
}

; [#uses=3]
define internal fastcc void @fdifference.1([19 x i64]* nocapture %output, [10 x i64]* nocapture %in) {
  br label %1, !dbg !639                          ; [debug line = 101:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.5, %3 ]             ; [#uses=3 type=i4]
  %tmp = icmp eq i4 %i, -6, !dbg !639             ; [#uses=1 type=i1] [debug line = 101:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !639       ; [debug line = 101:8]

; <label>:3                                       ; preds = %1
  %tmp. = zext i4 %i to i64, !dbg !640            ; [#uses=2 type=i64] [debug line = 102:5]
  %in.addr = getelementptr [10 x i64]* %in, i64 0, i64 %tmp., !dbg !640 ; [#uses=1 type=i64*] [debug line = 102:5]
  %in.load = load i64* %in.addr, align 8, !dbg !640 ; [#uses=1 type=i64] [debug line = 102:5]
  %output.addr = getelementptr [19 x i64]* %output, i64 0, i64 %tmp., !dbg !640 ; [#uses=2 type=i64*] [debug line = 102:5]
  %output.load = load i64* %output.addr, align 8, !dbg !640 ; [#uses=1 type=i64] [debug line = 102:5]
  %tmp.834 = sub nsw i64 %in.load, %output.load, !dbg !640 ; [#uses=1 type=i64] [debug line = 102:5]
  store i64 %tmp.834, i64* %output.addr, align 8, !dbg !640 ; [debug line = 102:5]
  %i.5 = add i4 %i, 1, !dbg !641                  ; [#uses=1 type=i4] [debug line = 101:23]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !642), !dbg !641 ; [debug line = 101:23] [debug variable = i]
  br label %1, !dbg !641                          ; [debug line = 101:23]

; <label>:4                                       ; preds = %1
  ret void, !dbg !643                             ; [debug line = 104:1]
}

; [#uses=1]
define internal fastcc void @fcontract([32 x i8]* %output, [11 x i64]* nocapture %input_limbs) {
  %output.addr = getelementptr [32 x i8]* %output, i64 0, i64 0 ; [#uses=1 type=i8*]
  %input = alloca [10 x i32], align 16            ; [#uses=19 type=[10 x i32]*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %output}, i64 0, metadata !644), !dbg !646 ; [debug line = 525:15] [debug variable = output]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %input_limbs}, i64 0, metadata !647), !dbg !649 ; [debug line = 525:29] [debug variable = input_limbs]
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %input}, metadata !650), !dbg !653 ; [debug line = 528:7] [debug variable = input]
  br label %1, !dbg !654                          ; [debug line = 532:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.6, %3 ]             ; [#uses=3 type=i4]
  %exitcond6 = icmp eq i4 %i, -6, !dbg !654       ; [#uses=1 type=i1] [debug line = 532:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond6, label %.preheader8.preheader, label %3, !dbg !654 ; [debug line = 532:8]

.preheader8.preheader:                            ; preds = %1
  %input.addr = getelementptr inbounds [10 x i32]* %input, i64 0, i64 9, !dbg !656 ; [#uses=6 type=i32*] [debug line = 556:38]
  %input.addr.31 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 0, !dbg !660 ; [#uses=8 type=i32*] [debug line = 559:7]
  br label %.preheader8, !dbg !661                ; [debug line = 536:8]

; <label>:3                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !662             ; [#uses=2 type=i64] [debug line = 533:5]
  %input_limbs.addr = getelementptr [11 x i64]* %input_limbs, i64 0, i64 %tmp, !dbg !662 ; [#uses=1 type=i64*] [debug line = 533:5]
  %input_limbs.load = load i64* %input_limbs.addr, align 8, !dbg !662 ; [#uses=1 type=i64] [debug line = 533:5]
  %tmp. = trunc i64 %input_limbs.load to i32, !dbg !662 ; [#uses=1 type=i32] [debug line = 533:5]
  %input.addr.32 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp, !dbg !662 ; [#uses=1 type=i32*] [debug line = 533:5]
  store i32 %tmp., i32* %input.addr.32, align 4, !dbg !662 ; [debug line = 533:5]
  %i.6 = add i4 %i, 1, !dbg !664                  ; [#uses=1 type=i4] [debug line = 532:23]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !665), !dbg !664 ; [debug line = 532:23] [debug variable = i]
  br label %1, !dbg !664                          ; [debug line = 532:23]

.preheader8:                                      ; preds = %12, %.preheader8.preheader
  %j = phi i2 [ %j.2, %12 ], [ 0, %.preheader8.preheader ] ; [#uses=2 type=i2]
  %exitcond5 = icmp eq i2 %j, -2, !dbg !661       ; [#uses=1 type=i1] [debug line = 536:8]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %13, label %.preheader7.preheader, !dbg !661 ; [debug line = 536:8]

.preheader7.preheader:                            ; preds = %.preheader8
  %5 = lshr i4 -7, 1                              ; [#uses=0 type=i4]
  %6 = lshr i4 -7, 1                              ; [#uses=0 type=i4]
  br label %.preheader7, !dbg !666                ; [debug line = 537:10]

.preheader7:                                      ; preds = %11, %.preheader7.preheader
  %i.1 = phi i4 [ %i.7, %11 ], [ 0, %.preheader7.preheader ] ; [#uses=6 type=i4]
  %i.1.cast = trunc i4 %i.1 to i1, !dbg !666      ; [#uses=1 type=i1] [debug line = 537:10]
  %exitcond4 = icmp eq i4 %i.1, -7, !dbg !666     ; [#uses=1 type=i1] [debug line = 537:10]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond4, label %12, label %8, !dbg !666 ; [debug line = 537:10]

; <label>:8                                       ; preds = %.preheader7
  %tmp.844 = zext i4 %i.1 to i64, !dbg !668       ; [#uses=1 type=i64] [debug line = 546:40]
  %input.addr.34 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.844, !dbg !668 ; [#uses=3 type=i32*] [debug line = 546:40]
  %input.load.35 = load i32* %input.addr.34, align 4, !dbg !668 ; [#uses=4 type=i32] [debug line = 546:40]
  %tmp.384 = lshr i32 %input.load.35, 31, !dbg !668 ; [#uses=1 type=i32] [debug line = 546:40]
  %tmp.385 = trunc i32 %tmp.384 to i1, !dbg !668  ; [#uses=1 type=i1] [debug line = 546:40]
  %mask.4 = sext i1 %tmp.385 to i32, !dbg !668    ; [#uses=1 type=i32] [debug line = 546:40]
  %tmp.845 = and i32 %input.load.35, %mask.4, !dbg !671 ; [#uses=2 type=i32] [debug line = 547:53]
  br i1 %i.1.cast, label %9, label %10, !dbg !672 ; [debug line = 538:7]

; <label>:9                                       ; preds = %8
  call void @llvm.dbg.value(metadata !{i32 %mask.4}, i64 0, metadata !673), !dbg !675 ; [debug line = 541:40] [debug variable = mask]
  %tmp.388 = lshr i32 %tmp.845, 25, !dbg !676     ; [#uses=1 type=i32] [debug line = 542:53]
  %tmp.389 = trunc i32 %tmp.388 to i7, !dbg !676  ; [#uses=1 type=i7] [debug line = 542:53]
  %tmp.846 = sext i7 %tmp.389 to i32, !dbg !676   ; [#uses=2 type=i32] [debug line = 542:53]
  %_shl = shl nsw i32 %tmp.846, 25, !dbg !677     ; [#uses=1 type=i32] [debug line = 543:9]
  %tmp.847 = sub i32 %input.load.35, %_shl, !dbg !677 ; [#uses=1 type=i32] [debug line = 543:9]
  store i32 %tmp.847, i32* %input.addr.34, align 4, !dbg !677 ; [debug line = 543:9]
  %tmp.848 = add i4 %i.1, 1, !dbg !678            ; [#uses=1 type=i4] [debug line = 544:9]
  %tmp.849 = zext i4 %tmp.848 to i64, !dbg !678   ; [#uses=1 type=i64] [debug line = 544:9]
  %input.addr.36 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.849, !dbg !678 ; [#uses=2 type=i32*] [debug line = 544:9]
  %input.load.37 = load i32* %input.addr.36, align 4, !dbg !678 ; [#uses=1 type=i32] [debug line = 544:9]
  %tmp.850 = add nsw i32 %tmp.846, %input.load.37, !dbg !678 ; [#uses=1 type=i32] [debug line = 544:9]
  store i32 %tmp.850, i32* %input.addr.36, align 4, !dbg !678 ; [debug line = 544:9]
  br label %11, !dbg !679                         ; [debug line = 545:7]

; <label>:10                                      ; preds = %8
  call void @llvm.dbg.value(metadata !{i32 %mask.4}, i64 0, metadata !680), !dbg !668 ; [debug line = 546:40] [debug variable = mask]
  %tmp.386 = lshr i32 %tmp.845, 26, !dbg !671     ; [#uses=1 type=i32] [debug line = 547:53]
  %tmp.387 = trunc i32 %tmp.386 to i6, !dbg !671  ; [#uses=1 type=i6] [debug line = 547:53]
  %tmp.851 = sext i6 %tmp.387 to i32, !dbg !671   ; [#uses=2 type=i32] [debug line = 547:53]
  %_shl3 = shl nsw i32 %tmp.851, 26, !dbg !681    ; [#uses=1 type=i32] [debug line = 548:9]
  %tmp.852 = sub i32 %input.load.35, %_shl3, !dbg !681 ; [#uses=1 type=i32] [debug line = 548:9]
  store i32 %tmp.852, i32* %input.addr.34, align 4, !dbg !681 ; [debug line = 548:9]
  %tmp.853 = add i4 %i.1, 1, !dbg !682            ; [#uses=1 type=i4] [debug line = 549:9]
  %tmp.854 = zext i4 %tmp.853 to i64, !dbg !682   ; [#uses=1 type=i64] [debug line = 549:9]
  %input.addr.35 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.854, !dbg !682 ; [#uses=2 type=i32*] [debug line = 549:9]
  %input.load.36 = load i32* %input.addr.35, align 4, !dbg !682 ; [#uses=1 type=i32] [debug line = 549:9]
  %tmp.855 = add nsw i32 %tmp.851, %input.load.36, !dbg !682 ; [#uses=1 type=i32] [debug line = 549:9]
  store i32 %tmp.855, i32* %input.addr.35, align 4, !dbg !682 ; [debug line = 549:9]
  br label %11

; <label>:11                                      ; preds = %10, %9
  %i.7 = add i4 %i.1, 1, !dbg !683                ; [#uses=1 type=i4] [debug line = 537:24]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !665), !dbg !683 ; [debug line = 537:24] [debug variable = i]
  br label %.preheader7, !dbg !683                ; [debug line = 537:24]

; <label>:12                                      ; preds = %.preheader7
  %input.load.33 = load i32* %input.addr, align 4, !dbg !656 ; [#uses=3 type=i32] [debug line = 556:38]
  %tmp.380 = lshr i32 %input.load.33, 31, !dbg !656 ; [#uses=1 type=i32] [debug line = 556:38]
  %tmp.381 = trunc i32 %tmp.380 to i1, !dbg !656  ; [#uses=1 type=i1] [debug line = 556:38]
  %mask.3 = sext i1 %tmp.381 to i32, !dbg !656    ; [#uses=1 type=i32] [debug line = 556:38]
  call void @llvm.dbg.value(metadata !{i32 %mask.3}, i64 0, metadata !684), !dbg !656 ; [debug line = 556:38] [debug variable = mask]
  %tmp.839 = and i32 %input.load.33, %mask.3, !dbg !685 ; [#uses=1 type=i32] [debug line = 557:51]
  %tmp.382 = lshr i32 %tmp.839, 25, !dbg !685     ; [#uses=1 type=i32] [debug line = 557:51]
  %tmp.383 = trunc i32 %tmp.382 to i7, !dbg !685  ; [#uses=2 type=i7] [debug line = 557:51]
  %tmp.840 = sext i7 %tmp.383 to i32, !dbg !685   ; [#uses=1 type=i32] [debug line = 557:51]
  %tmp.935.cast = sext i7 %tmp.383 to i13, !dbg !686 ; [#uses=1 type=i13] [debug line = 558:7]
  %_shl2 = shl nsw i32 %tmp.840, 25, !dbg !686    ; [#uses=1 type=i32] [debug line = 558:7]
  %tmp.841 = sub i32 %input.load.33, %_shl2, !dbg !686 ; [#uses=1 type=i32] [debug line = 558:7]
  store i32 %tmp.841, i32* %input.addr, align 4, !dbg !686 ; [debug line = 558:7]
  %input.load.34 = load i32* %input.addr.31, align 16, !dbg !660 ; [#uses=1 type=i32] [debug line = 559:7]
  %tmp.842 = mul i13 %tmp.935.cast, 19, !dbg !660 ; [#uses=1 type=i13] [debug line = 559:7]
  %tmp.937.cast = sext i13 %tmp.842 to i32, !dbg !660 ; [#uses=1 type=i32] [debug line = 559:7]
  %tmp.843 = add i32 %input.load.34, %tmp.937.cast, !dbg !660 ; [#uses=1 type=i32] [debug line = 559:7]
  store i32 %tmp.843, i32* %input.addr.31, align 16, !dbg !660 ; [debug line = 559:7]
  %j.2 = add i2 %j, 1, !dbg !687                  ; [#uses=1 type=i2] [debug line = 536:22]
  call void @llvm.dbg.value(metadata !{i2 %j.2}, i64 0, metadata !688), !dbg !687 ; [debug line = 536:22] [debug variable = j]
  br label %.preheader8, !dbg !687                ; [debug line = 536:22]

; <label>:13                                      ; preds = %.preheader8
  %input.load = load i32* %input.addr.31, align 16, !dbg !689 ; [#uses=3 type=i32] [debug line = 580:36]
  %tmp.376 = lshr i32 %input.load, 31, !dbg !689  ; [#uses=1 type=i32] [debug line = 580:36]
  %tmp.377 = trunc i32 %tmp.376 to i1, !dbg !689  ; [#uses=1 type=i1] [debug line = 580:36]
  %mask = sext i1 %tmp.377 to i32, !dbg !689      ; [#uses=1 type=i32] [debug line = 580:36]
  call void @llvm.dbg.value(metadata !{i32 %mask}, i64 0, metadata !691), !dbg !689 ; [debug line = 580:36] [debug variable = mask]
  %tmp.835 = and i32 %input.load, %mask, !dbg !692 ; [#uses=1 type=i32] [debug line = 581:49]
  %tmp.378 = lshr i32 %tmp.835, 26, !dbg !692     ; [#uses=1 type=i32] [debug line = 581:49]
  %tmp.379 = trunc i32 %tmp.378 to i6, !dbg !692  ; [#uses=1 type=i6] [debug line = 581:49]
  %tmp.836 = sext i6 %tmp.379 to i32, !dbg !692   ; [#uses=2 type=i32] [debug line = 581:49]
  %_shl1 = shl nsw i32 %tmp.836, 26, !dbg !693    ; [#uses=1 type=i32] [debug line = 582:5]
  %tmp.837 = sub i32 %input.load, %_shl1, !dbg !693 ; [#uses=2 type=i32] [debug line = 582:5]
  store i32 %tmp.837, i32* %input.addr.31, align 16, !dbg !693 ; [debug line = 582:5]
  %input.addr.33 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 1, !dbg !694 ; [#uses=4 type=i32*] [debug line = 583:5]
  %input.load.32 = load i32* %input.addr.33, align 4, !dbg !694 ; [#uses=1 type=i32] [debug line = 583:5]
  %tmp.838 = add nsw i32 %input.load.32, %tmp.836, !dbg !694 ; [#uses=1 type=i32] [debug line = 583:5]
  store i32 %tmp.838, i32* %input.addr.33, align 4, !dbg !694 ; [debug line = 583:5]
  br label %14, !dbg !695                         ; [debug line = 588:8]

; <label>:14                                      ; preds = %23, %13
  %a.assign = phi i32 [ %tmp.837, %13 ], [ %tmp.860, %23 ] ; [#uses=1 type=i32]
  %j.1 = phi i2 [ 0, %13 ], [ %j.3, %23 ]         ; [#uses=2 type=i2]
  %exitcond3 = icmp eq i2 %j.1, -2, !dbg !695     ; [#uses=1 type=i1] [debug line = 588:8]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %24, label %.preheader.preheader, !dbg !695 ; [debug line = 588:8]

.preheader.preheader:                             ; preds = %14
  %16 = lshr i4 -7, 1                             ; [#uses=0 type=i4]
  %17 = lshr i4 -7, 1                             ; [#uses=0 type=i4]
  br label %.preheader, !dbg !697                 ; [debug line = 589:10]

.preheader:                                       ; preds = %22, %.preheader.preheader
  %i.2 = phi i4 [ %i.9, %22 ], [ 0, %.preheader.preheader ] ; [#uses=6 type=i4]
  %i.2.cast = trunc i4 %i.2 to i1, !dbg !697      ; [#uses=1 type=i1] [debug line = 589:10]
  %exitcond2 = icmp eq i4 %i.2, -7, !dbg !697     ; [#uses=1 type=i1] [debug line = 589:10]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %23, label %19, !dbg !697 ; [debug line = 589:10]

; <label>:19                                      ; preds = %.preheader
  %tmp.861 = zext i4 %i.2 to i64, !dbg !700       ; [#uses=1 type=i64] [debug line = 595:41]
  %input.addr.37 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.861, !dbg !700 ; [#uses=3 type=i32*] [debug line = 595:41]
  %input.load.40 = load i32* %input.addr.37, align 4, !dbg !700 ; [#uses=4 type=i32] [debug line = 595:41]
  %input.load.40.cast1 = trunc i32 %input.load.40 to i26, !dbg !703 ; [#uses=1 type=i26] [debug line = 590:7]
  %input.load.40.cast = trunc i32 %input.load.40 to i25, !dbg !703 ; [#uses=1 type=i25] [debug line = 590:7]
  br i1 %i.2.cast, label %20, label %21, !dbg !703 ; [debug line = 590:7]

; <label>:20                                      ; preds = %19
  %tmp.394 = lshr i32 %input.load.40, 25, !dbg !704 ; [#uses=1 type=i32] [debug line = 591:41]
  %tmp.395 = trunc i32 %tmp.394 to i7, !dbg !704  ; [#uses=1 type=i7] [debug line = 591:41]
  %carry = sext i7 %tmp.395 to i32, !dbg !704     ; [#uses=1 type=i32] [debug line = 591:41]
  call void @llvm.dbg.value(metadata !{i32 %carry}, i64 0, metadata !706), !dbg !704 ; [debug line = 591:41] [debug variable = carry]
  %tmp.968.cast = zext i25 %input.load.40.cast to i32, !dbg !707 ; [#uses=1 type=i32] [debug line = 592:9]
  store i32 %tmp.968.cast, i32* %input.addr.37, align 4, !dbg !707 ; [debug line = 592:9]
  %tmp.862 = add i4 %i.2, 1, !dbg !708            ; [#uses=1 type=i4] [debug line = 593:9]
  %tmp.863 = zext i4 %tmp.862 to i64, !dbg !708   ; [#uses=1 type=i64] [debug line = 593:9]
  %input.addr.40 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.863, !dbg !708 ; [#uses=2 type=i32*] [debug line = 593:9]
  %input.load.43 = load i32* %input.addr.40, align 4, !dbg !708 ; [#uses=1 type=i32] [debug line = 593:9]
  %tmp.864 = add nsw i32 %carry, %input.load.43, !dbg !708 ; [#uses=1 type=i32] [debug line = 593:9]
  store i32 %tmp.864, i32* %input.addr.40, align 4, !dbg !708 ; [debug line = 593:9]
  br label %22, !dbg !709                         ; [debug line = 594:7]

; <label>:21                                      ; preds = %19
  %tmp.392 = lshr i32 %input.load.40, 26, !dbg !700 ; [#uses=1 type=i32] [debug line = 595:41]
  %tmp.393 = trunc i32 %tmp.392 to i6, !dbg !700  ; [#uses=1 type=i6] [debug line = 595:41]
  %carry.1 = sext i6 %tmp.393 to i32, !dbg !700   ; [#uses=1 type=i32] [debug line = 595:41]
  call void @llvm.dbg.value(metadata !{i32 %carry.1}, i64 0, metadata !710), !dbg !700 ; [debug line = 595:41] [debug variable = carry]
  %tmp.964.cast = zext i26 %input.load.40.cast1 to i32, !dbg !711 ; [#uses=1 type=i32] [debug line = 596:9]
  store i32 %tmp.964.cast, i32* %input.addr.37, align 4, !dbg !711 ; [debug line = 596:9]
  %tmp.865 = add i4 %i.2, 1, !dbg !712            ; [#uses=1 type=i4] [debug line = 597:9]
  %tmp.866 = zext i4 %tmp.865 to i64, !dbg !712   ; [#uses=1 type=i64] [debug line = 597:9]
  %input.addr.39 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.866, !dbg !712 ; [#uses=2 type=i32*] [debug line = 597:9]
  %input.load.42 = load i32* %input.addr.39, align 4, !dbg !712 ; [#uses=1 type=i32] [debug line = 597:9]
  %tmp.867 = add nsw i32 %carry.1, %input.load.42, !dbg !712 ; [#uses=1 type=i32] [debug line = 597:9]
  store i32 %tmp.867, i32* %input.addr.39, align 4, !dbg !712 ; [debug line = 597:9]
  br label %22

; <label>:22                                      ; preds = %21, %20
  %i.9 = add i4 %i.2, 1, !dbg !713                ; [#uses=1 type=i4] [debug line = 589:24]
  call void @llvm.dbg.value(metadata !{i4 %i.9}, i64 0, metadata !665), !dbg !713 ; [debug line = 589:24] [debug variable = i]
  br label %.preheader, !dbg !713                 ; [debug line = 589:24]

; <label>:23                                      ; preds = %.preheader
  %input.load.38 = load i32* %input.addr, align 4, !dbg !714 ; [#uses=2 type=i32] [debug line = 602:39]
  %input.load.38.cast = trunc i32 %input.load.38 to i25, !dbg !714 ; [#uses=1 type=i25] [debug line = 602:39]
  %tmp.390 = lshr i32 %input.load.38, 25, !dbg !714 ; [#uses=1 type=i32] [debug line = 602:39]
  %tmp.391 = trunc i32 %tmp.390 to i7, !dbg !714  ; [#uses=1 type=i7] [debug line = 602:39]
  %carry.cast = sext i7 %tmp.391 to i13, !dbg !714 ; [#uses=1 type=i13] [debug line = 602:39]
  %tmp.954.cast = zext i25 %input.load.38.cast to i32, !dbg !716 ; [#uses=1 type=i32] [debug line = 603:7]
  store i32 %tmp.954.cast, i32* %input.addr, align 4, !dbg !716 ; [debug line = 603:7]
  %tmp.859 = mul i13 %carry.cast, 19, !dbg !717   ; [#uses=1 type=i13] [debug line = 604:7]
  %tmp.955.cast = sext i13 %tmp.859 to i32, !dbg !717 ; [#uses=1 type=i32] [debug line = 604:7]
  %input.load.39 = load i32* %input.addr.31, align 16, !dbg !717 ; [#uses=1 type=i32] [debug line = 604:7]
  %tmp.860 = add nsw i32 %tmp.955.cast, %input.load.39, !dbg !717 ; [#uses=2 type=i32] [debug line = 604:7]
  store i32 %tmp.860, i32* %input.addr.31, align 16, !dbg !717 ; [debug line = 604:7]
  %j.3 = add i2 %j.1, 1, !dbg !718                ; [#uses=1 type=i2] [debug line = 588:22]
  call void @llvm.dbg.value(metadata !{i2 %j.3}, i64 0, metadata !688), !dbg !718 ; [debug line = 588:22] [debug variable = j]
  br label %14, !dbg !718                         ; [debug line = 588:22]

; <label>:24                                      ; preds = %14
  %a.assign.lcssa = phi i32 [ %a.assign, %14 ]    ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %a.assign}, i64 0, metadata !719), !dbg !721 ; [debug line = 514:24@618:10] [debug variable = a]
  %a.assign.1 = add nsw i32 %a.assign.lcssa, -67108845, !dbg !722 ; [#uses=1 type=i32] [debug line = 515:3@618:10]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.1}, i64 0, metadata !719), !dbg !722 ; [debug line = 515:3@618:10] [debug variable = a]
  %tmp.i = lshr i32 %a.assign.1, 31, !dbg !724    ; [#uses=1 type=i32] [debug line = 517:3@618:10]
  %tmp.1.i = trunc i32 %tmp.i to i1, !dbg !724    ; [#uses=1 type=i1] [debug line = 517:3@618:10]
  %mask.2 = xor i1 %tmp.1.i, true                 ; [#uses=1 type=i1]
  %mask.2.cast = sext i1 %mask.2 to i32           ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i1 %mask.2}, i64 0, metadata !725), !dbg !720 ; [debug line = 618:10] [debug variable = mask]
  br label %25, !dbg !726                         ; [debug line = 619:8]

; <label>:25                                      ; preds = %_ifconv, %24
  %i.3 = phi i4 [ 1, %24 ], [ %i.8, %_ifconv ]    ; [#uses=4 type=i4]
  %mask4 = phi i32 [ %mask.2.cast, %24 ], [ %mask.1, %_ifconv ] ; [#uses=2 type=i32]
  %i.3.cast = trunc i4 %i.3 to i1, !dbg !726      ; [#uses=1 type=i1] [debug line = 619:8]
  %mask4.cast = trunc i32 %mask4 to i26, !dbg !726 ; [#uses=1 type=i26] [debug line = 619:8]
  %exitcond1 = icmp eq i4 %i.3, -6, !dbg !726     ; [#uses=1 type=i1] [debug line = 619:8]
  %26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %27, label %_ifconv, !dbg !726 ; [debug line = 619:8]

_ifconv:                                          ; preds = %25
  %tmp.858 = zext i4 %i.3 to i64, !dbg !728       ; [#uses=1 type=i64] [debug line = 623:15]
  %input.addr.38 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.858, !dbg !728 ; [#uses=1 type=i32*] [debug line = 623:15]
  %a.assign.2 = load i32* %input.addr.38, align 4, !dbg !728 ; [#uses=2 type=i32] [debug line = 623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.2}, i64 0, metadata !731), !dbg !732 ; [debug line = 502:23@623:15] [debug variable = a]
  %a.assign.3 = xor i32 %a.assign.2, -67108864, !dbg !733 ; [#uses=2 type=i32] [debug line = 503:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.3}, i64 0, metadata !731), !dbg !733 ; [debug line = 503:3@623:15] [debug variable = a]
  %tmp..i = shl i32 %a.assign.3, 16, !dbg !735    ; [#uses=1 type=i32] [debug line = 504:3@623:15]
  %a.assign.4 = and i32 %tmp..i, %a.assign.3, !dbg !735 ; [#uses=2 type=i32] [debug line = 504:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.4}, i64 0, metadata !731), !dbg !735 ; [debug line = 504:3@623:15] [debug variable = a]
  %tmp.1.i1 = shl i32 %a.assign.4, 8, !dbg !736   ; [#uses=1 type=i32] [debug line = 505:3@623:15]
  %a.assign.5 = and i32 %tmp.1.i1, %a.assign.4, !dbg !736 ; [#uses=2 type=i32] [debug line = 505:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.5}, i64 0, metadata !731), !dbg !736 ; [debug line = 505:3@623:15] [debug variable = a]
  %tmp.2.i1 = shl i32 %a.assign.5, 4, !dbg !737   ; [#uses=1 type=i32] [debug line = 506:3@623:15]
  %a.assign.6 = and i32 %tmp.2.i1, %a.assign.5, !dbg !737 ; [#uses=2 type=i32] [debug line = 506:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.6}, i64 0, metadata !731), !dbg !737 ; [debug line = 506:3@623:15] [debug variable = a]
  %tmp.3.i1 = shl i32 %a.assign.6, 2, !dbg !738   ; [#uses=1 type=i32] [debug line = 507:3@623:15]
  %a.assign.7 = and i32 %tmp.3.i1, %a.assign.6, !dbg !738 ; [#uses=2 type=i32] [debug line = 507:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.7}, i64 0, metadata !731), !dbg !738 ; [debug line = 507:3@623:15] [debug variable = a]
  %tmp.4.i1 = shl i32 %a.assign.7, 1, !dbg !739   ; [#uses=1 type=i32] [debug line = 508:3@623:15]
  %a.assign.8 = and i32 %tmp.4.i1, %a.assign.7, !dbg !739 ; [#uses=1 type=i32] [debug line = 508:3@623:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.8}, i64 0, metadata !731), !dbg !739 ; [debug line = 508:3@623:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.2}, i64 0, metadata !740), !dbg !743 ; [debug line = 502:23@621:15] [debug variable = a]
  %a.assign.9 = xor i32 %a.assign.2, -33554432, !dbg !744 ; [#uses=2 type=i32] [debug line = 503:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.9}, i64 0, metadata !740), !dbg !744 ; [debug line = 503:3@621:15] [debug variable = a]
  %tmp..i4 = shl i32 %a.assign.9, 16, !dbg !745   ; [#uses=1 type=i32] [debug line = 504:3@621:15]
  %a.assign.10 = and i32 %tmp..i4, %a.assign.9, !dbg !745 ; [#uses=2 type=i32] [debug line = 504:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.10}, i64 0, metadata !740), !dbg !745 ; [debug line = 504:3@621:15] [debug variable = a]
  %tmp.1.i2 = shl i32 %a.assign.10, 8, !dbg !746  ; [#uses=1 type=i32] [debug line = 505:3@621:15]
  %a.assign.11 = and i32 %tmp.1.i2, %a.assign.10, !dbg !746 ; [#uses=2 type=i32] [debug line = 505:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.11}, i64 0, metadata !740), !dbg !746 ; [debug line = 505:3@621:15] [debug variable = a]
  %tmp.2.i = shl i32 %a.assign.11, 4, !dbg !747   ; [#uses=1 type=i32] [debug line = 506:3@621:15]
  %a.assign.12 = and i32 %tmp.2.i, %a.assign.11, !dbg !747 ; [#uses=2 type=i32] [debug line = 506:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.12}, i64 0, metadata !740), !dbg !747 ; [debug line = 506:3@621:15] [debug variable = a]
  %tmp.3.i = shl i32 %a.assign.12, 2, !dbg !748   ; [#uses=1 type=i32] [debug line = 507:3@621:15]
  %a.assign.13 = and i32 %tmp.3.i, %a.assign.12, !dbg !748 ; [#uses=2 type=i32] [debug line = 507:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.13}, i64 0, metadata !740), !dbg !748 ; [debug line = 507:3@621:15] [debug variable = a]
  %tmp.4.i = shl i32 %a.assign.13, 1, !dbg !749   ; [#uses=1 type=i32] [debug line = 508:3@621:15]
  %a.assign.14 = and i32 %tmp.4.i, %a.assign.13, !dbg !749 ; [#uses=1 type=i32] [debug line = 508:3@621:15]
  call void @llvm.dbg.value(metadata !{i32 %a.assign.14}, i64 0, metadata !740), !dbg !749 ; [debug line = 508:3@621:15] [debug variable = a]
  %.pn.in.in.in = select i1 %i.3.cast, i32 %a.assign.14, i32 %a.assign.8 ; [#uses=1 type=i32]
  %.pn.in.in = lshr i32 %.pn.in.in.in, 31, !dbg !750 ; [#uses=1 type=i32] [debug line = 509:3@623:15]
  %.pn.in = trunc i32 %.pn.in.in to i1, !dbg !750 ; [#uses=1 type=i1] [debug line = 509:3@623:15]
  %.pn = sext i1 %.pn.in to i32, !dbg !750        ; [#uses=1 type=i32] [debug line = 509:3@623:15]
  %mask.1 = and i32 %.pn, %mask4, !dbg !741       ; [#uses=1 type=i32] [debug line = 621:15]
  call void @llvm.dbg.value(metadata !{i32 %mask.1}, i64 0, metadata !725), !dbg !741 ; [debug line = 621:15] [debug variable = mask]
  %i.8 = add i4 %i.3, 1, !dbg !751                ; [#uses=1 type=i4] [debug line = 619:23]
  call void @llvm.dbg.value(metadata !{i4 %i.8}, i64 0, metadata !665), !dbg !751 ; [debug line = 619:23] [debug variable = i]
  br label %25, !dbg !751                         ; [debug line = 619:23]

; <label>:27                                      ; preds = %25
  %mask4.cast.lcssa = phi i26 [ %mask4.cast, %25 ] ; [#uses=2 type=i26]
  %tmp.856 = and i26 %mask4.cast.lcssa, -19, !dbg !752 ; [#uses=1 type=i26] [debug line = 629:3]
  %tmp.953.cast = zext i26 %tmp.856 to i32, !dbg !752 ; [#uses=1 type=i32] [debug line = 629:3]
  %tmp.857 = sub nsw i32 %a.assign.lcssa, %tmp.953.cast, !dbg !752 ; [#uses=1 type=i32] [debug line = 629:3]
  store i32 %tmp.857, i32* %input.addr.31, align 16, !dbg !752 ; [debug line = 629:3]
  br label %28, !dbg !753                         ; [debug line = 631:8]

; <label>:28                                      ; preds = %30, %27
  %i.4 = phi i4 [ 1, %27 ], [ %i.13, %30 ]        ; [#uses=4 type=i4]
  %i.4.cast = trunc i4 %i.4 to i1, !dbg !753      ; [#uses=1 type=i1] [debug line = 631:8]
  %exitcond = icmp eq i4 %i.4, -6, !dbg !753      ; [#uses=1 type=i1] [debug line = 631:8]
  %29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond, label %31, label %30, !dbg !753 ; [debug line = 631:8]

; <label>:30                                      ; preds = %28
  %tmp.954 = zext i4 %i.4 to i64, !dbg !755       ; [#uses=1 type=i64] [debug line = 635:7]
  %input.addr.48 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 %tmp.954, !dbg !755 ; [#uses=2 type=i32*] [debug line = 635:7]
  %input.load.54 = load i32* %input.addr.48, align 4, !dbg !755 ; [#uses=1 type=i32] [debug line = 635:7]
  %tmp.1121.pn.v = select i1 %i.4.cast, i26 33554431, i26 -1, !dbg !758 ; [#uses=1 type=i26] [debug line = 632:5]
  %tmp.1121.pn = and i26 %mask4.cast.lcssa, %tmp.1121.pn.v, !dbg !758 ; [#uses=1 type=i26] [debug line = 632:5]
  %tmp.1121.pn.cast = zext i26 %tmp.1121.pn to i32, !dbg !758 ; [#uses=1 type=i32] [debug line = 632:5]
  %storemerge = sub nsw i32 %input.load.54, %tmp.1121.pn.cast, !dbg !755 ; [#uses=1 type=i32] [debug line = 635:7]
  store i32 %storemerge, i32* %input.addr.48, align 4, !dbg !755 ; [debug line = 635:7]
  %i.13 = add i4 %i.4, 1, !dbg !759               ; [#uses=1 type=i4] [debug line = 631:23]
  call void @llvm.dbg.value(metadata !{i4 %i.13}, i64 0, metadata !665), !dbg !759 ; [debug line = 631:23] [debug variable = i]
  br label %28, !dbg !759                         ; [debug line = 631:23]

; <label>:31                                      ; preds = %28
  %input.load.44 = load i32* %input.addr.33, align 4, !dbg !760 ; [#uses=4 type=i32] [debug line = 639:3]
  %input.load.44.cast1 = trunc i32 %input.load.44 to i30, !dbg !760 ; [#uses=1 type=i30] [debug line = 639:3]
  %input.load.44.cast2 = trunc i32 %input.load.44 to i22, !dbg !760 ; [#uses=1 type=i22] [debug line = 639:3]
  %input.load.44.cast = trunc i32 %input.load.44 to i14, !dbg !760 ; [#uses=1 type=i14] [debug line = 639:3]
  %tmp.868 = shl i32 %input.load.44, 2, !dbg !760 ; [#uses=2 type=i32] [debug line = 639:3]
  store i32 %tmp.868, i32* %input.addr.33, align 4, !dbg !760 ; [debug line = 639:3]
  %input.addr.41 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 2, !dbg !761 ; [#uses=2 type=i32*] [debug line = 640:3]
  %input.load.45 = load i32* %input.addr.41, align 8, !dbg !761 ; [#uses=4 type=i32] [debug line = 640:3]
  %input.load.45.cast1 = trunc i32 %input.load.45 to i29, !dbg !761 ; [#uses=1 type=i29] [debug line = 640:3]
  %input.load.45.cast2 = trunc i32 %input.load.45 to i21, !dbg !761 ; [#uses=1 type=i21] [debug line = 640:3]
  %input.load.45.cast = trunc i32 %input.load.45 to i13, !dbg !761 ; [#uses=1 type=i13] [debug line = 640:3]
  %tmp.869 = shl i32 %input.load.45, 3, !dbg !761 ; [#uses=2 type=i32] [debug line = 640:3]
  store i32 %tmp.869, i32* %input.addr.41, align 8, !dbg !761 ; [debug line = 640:3]
  %input.addr.42 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 3, !dbg !762 ; [#uses=2 type=i32*] [debug line = 641:3]
  %input.load.46 = load i32* %input.addr.42, align 4, !dbg !762 ; [#uses=4 type=i32] [debug line = 641:3]
  %input.load.46.cast1 = trunc i32 %input.load.46 to i27, !dbg !762 ; [#uses=1 type=i27] [debug line = 641:3]
  %input.load.46.cast2 = trunc i32 %input.load.46 to i19, !dbg !762 ; [#uses=1 type=i19] [debug line = 641:3]
  %input.load.46.cast = trunc i32 %input.load.46 to i11, !dbg !762 ; [#uses=1 type=i11] [debug line = 641:3]
  %tmp.870 = shl i32 %input.load.46, 5, !dbg !762 ; [#uses=2 type=i32] [debug line = 641:3]
  store i32 %tmp.870, i32* %input.addr.42, align 4, !dbg !762 ; [debug line = 641:3]
  %input.addr.43 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 4, !dbg !763 ; [#uses=2 type=i32*] [debug line = 642:3]
  %input.load.47 = load i32* %input.addr.43, align 16, !dbg !763 ; [#uses=4 type=i32] [debug line = 642:3]
  %input.load.47.cast1 = trunc i32 %input.load.47 to i26, !dbg !763 ; [#uses=1 type=i26] [debug line = 642:3]
  %input.load.47.cast2 = trunc i32 %input.load.47 to i18, !dbg !763 ; [#uses=1 type=i18] [debug line = 642:3]
  %input.load.47.cast = trunc i32 %input.load.47 to i10, !dbg !763 ; [#uses=1 type=i10] [debug line = 642:3]
  %tmp.871 = shl i32 %input.load.47, 6, !dbg !763 ; [#uses=2 type=i32] [debug line = 642:3]
  store i32 %tmp.871, i32* %input.addr.43, align 16, !dbg !763 ; [debug line = 642:3]
  %input.addr.44 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 6, !dbg !764 ; [#uses=2 type=i32*] [debug line = 643:3]
  %input.load.48 = load i32* %input.addr.44, align 8, !dbg !764 ; [#uses=4 type=i32] [debug line = 643:3]
  %input.load.48.cast1 = trunc i32 %input.load.48 to i31, !dbg !764 ; [#uses=1 type=i31] [debug line = 643:3]
  %input.load.48.cast9 = trunc i32 %input.load.48 to i23, !dbg !764 ; [#uses=1 type=i23] [debug line = 643:3]
  %input.load.48.cast = trunc i32 %input.load.48 to i15, !dbg !764 ; [#uses=1 type=i15] [debug line = 643:3]
  %tmp.872 = shl i32 %input.load.48, 1, !dbg !764 ; [#uses=2 type=i32] [debug line = 643:3]
  store i32 %tmp.872, i32* %input.addr.44, align 8, !dbg !764 ; [debug line = 643:3]
  %input.addr.45 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 7, !dbg !765 ; [#uses=2 type=i32*] [debug line = 644:3]
  %input.load.49 = load i32* %input.addr.45, align 4, !dbg !765 ; [#uses=4 type=i32] [debug line = 644:3]
  %input.load.49.cast8 = trunc i32 %input.load.49 to i29, !dbg !765 ; [#uses=1 type=i29] [debug line = 644:3]
  %input.load.49.cast7 = trunc i32 %input.load.49 to i21, !dbg !765 ; [#uses=1 type=i21] [debug line = 644:3]
  %input.load.49.cast = trunc i32 %input.load.49 to i13, !dbg !765 ; [#uses=1 type=i13] [debug line = 644:3]
  %tmp.873 = shl i32 %input.load.49, 3, !dbg !765 ; [#uses=2 type=i32] [debug line = 644:3]
  store i32 %tmp.873, i32* %input.addr.45, align 4, !dbg !765 ; [debug line = 644:3]
  %input.addr.46 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 8, !dbg !766 ; [#uses=2 type=i32*] [debug line = 645:3]
  %input.load.50 = load i32* %input.addr.46, align 16, !dbg !766 ; [#uses=4 type=i32] [debug line = 645:3]
  %input.load.50.cast6 = trunc i32 %input.load.50 to i28, !dbg !766 ; [#uses=1 type=i28] [debug line = 645:3]
  %input.load.50.cast5 = trunc i32 %input.load.50 to i20, !dbg !766 ; [#uses=1 type=i20] [debug line = 645:3]
  %input.load.50.cast = trunc i32 %input.load.50 to i12, !dbg !766 ; [#uses=1 type=i12] [debug line = 645:3]
  %tmp.874 = shl i32 %input.load.50, 4, !dbg !766 ; [#uses=2 type=i32] [debug line = 645:3]
  store i32 %tmp.874, i32* %input.addr.46, align 16, !dbg !766 ; [debug line = 645:3]
  %input.load.51 = load i32* %input.addr, align 4, !dbg !767 ; [#uses=4 type=i32] [debug line = 646:3]
  %input.load.51.cast4 = trunc i32 %input.load.51 to i26, !dbg !767 ; [#uses=1 type=i26] [debug line = 646:3]
  %input.load.51.cast3 = trunc i32 %input.load.51 to i18, !dbg !767 ; [#uses=1 type=i18] [debug line = 646:3]
  %input.load.51.cast = trunc i32 %input.load.51 to i10, !dbg !767 ; [#uses=1 type=i10] [debug line = 646:3]
  %tmp.875 = shl i32 %input.load.51, 6, !dbg !767 ; [#uses=2 type=i32] [debug line = 646:3]
  store i32 %tmp.875, i32* %input.addr, align 4, !dbg !767 ; [debug line = 646:3]
  %output.addr.156 = getelementptr [32 x i8]* %output, i64 0, i64 16, !dbg !768 ; [#uses=1 type=i8*] [debug line = 653:3]
  %input.load.52 = load i32* %input.addr.31, align 16, !dbg !769 ; [#uses=4 type=i32] [debug line = 654:3]
  %input.load.52.cast2 = trunc i32 %input.load.52 to i24, !dbg !769 ; [#uses=1 type=i24] [debug line = 654:3]
  %input.load.52.cast = trunc i32 %input.load.52 to i16, !dbg !769 ; [#uses=1 type=i16] [debug line = 654:3]
  %tmp.876 = trunc i32 %input.load.52 to i8, !dbg !769 ; [#uses=1 type=i8] [debug line = 654:3]
  store i8 %tmp.876, i8* %output.addr, align 1, !dbg !769 ; [debug line = 654:3]
  %tmp.877 = lshr i16 %input.load.52.cast, 8, !dbg !770 ; [#uses=1 type=i16] [debug line = 654:36]
  %tmp.878 = trunc i16 %tmp.877 to i8, !dbg !770  ; [#uses=1 type=i8] [debug line = 654:36]
  %output.addr.157 = getelementptr [32 x i8]* %output, i64 0, i64 1, !dbg !770 ; [#uses=1 type=i8*] [debug line = 654:36]
  store i8 %tmp.878, i8* %output.addr.157, align 1, !dbg !770 ; [debug line = 654:36]
  %tmp.879 = lshr i24 %input.load.52.cast2, 16, !dbg !771 ; [#uses=1 type=i24] [debug line = 654:75]
  %tmp.880 = trunc i24 %tmp.879 to i8, !dbg !771  ; [#uses=1 type=i8] [debug line = 654:75]
  %output.addr.158 = getelementptr [32 x i8]* %output, i64 0, i64 2, !dbg !771 ; [#uses=1 type=i8*] [debug line = 654:75]
  store i8 %tmp.880, i8* %output.addr.158, align 1, !dbg !771 ; [debug line = 654:75]
  %tmp.881 = lshr i32 %input.load.52, 24, !dbg !772 ; [#uses=1 type=i32] [debug line = 654:115]
  %tmp.882 = trunc i32 %tmp.881 to i8, !dbg !772  ; [#uses=1 type=i8] [debug line = 654:115]
  %output.addr.159 = getelementptr [32 x i8]* %output, i64 0, i64 3, !dbg !772 ; [#uses=1 type=i8*] [debug line = 654:115]
  %tmp.883 = trunc i32 %tmp.868 to i8, !dbg !773  ; [#uses=1 type=i8] [debug line = 655:3]
  %tmp.884 = or i8 %tmp.882, %tmp.883, !dbg !773  ; [#uses=1 type=i8] [debug line = 655:3]
  store i8 %tmp.884, i8* %output.addr.159, align 1, !dbg !773 ; [debug line = 655:3]
  %tmp.885 = lshr i14 %input.load.44.cast, 6, !dbg !774 ; [#uses=1 type=i14] [debug line = 655:36]
  %tmp.886 = trunc i14 %tmp.885 to i8, !dbg !774  ; [#uses=1 type=i8] [debug line = 655:36]
  %output.addr.160 = getelementptr [32 x i8]* %output, i64 0, i64 4, !dbg !774 ; [#uses=1 type=i8*] [debug line = 655:36]
  store i8 %tmp.886, i8* %output.addr.160, align 1, !dbg !774 ; [debug line = 655:36]
  %tmp.887 = lshr i22 %input.load.44.cast2, 14, !dbg !775 ; [#uses=1 type=i22] [debug line = 655:75]
  %tmp.888 = trunc i22 %tmp.887 to i8, !dbg !775  ; [#uses=1 type=i8] [debug line = 655:75]
  %output.addr.161 = getelementptr [32 x i8]* %output, i64 0, i64 5, !dbg !775 ; [#uses=1 type=i8*] [debug line = 655:75]
  store i8 %tmp.888, i8* %output.addr.161, align 1, !dbg !775 ; [debug line = 655:75]
  %tmp.889 = lshr i30 %input.load.44.cast1, 22, !dbg !776 ; [#uses=1 type=i30] [debug line = 655:115]
  %tmp.890 = trunc i30 %tmp.889 to i8, !dbg !776  ; [#uses=1 type=i8] [debug line = 655:115]
  %output.addr.162 = getelementptr [32 x i8]* %output, i64 0, i64 6, !dbg !776 ; [#uses=1 type=i8*] [debug line = 655:115]
  %tmp.891 = trunc i32 %tmp.869 to i8, !dbg !777  ; [#uses=1 type=i8] [debug line = 656:3]
  %tmp.892 = or i8 %tmp.891, %tmp.890, !dbg !777  ; [#uses=1 type=i8] [debug line = 656:3]
  store i8 %tmp.892, i8* %output.addr.162, align 1, !dbg !777 ; [debug line = 656:3]
  %tmp.893 = lshr i13 %input.load.45.cast, 5, !dbg !778 ; [#uses=1 type=i13] [debug line = 656:36]
  %tmp.894 = trunc i13 %tmp.893 to i8, !dbg !778  ; [#uses=1 type=i8] [debug line = 656:36]
  %output.addr.163 = getelementptr [32 x i8]* %output, i64 0, i64 7, !dbg !778 ; [#uses=1 type=i8*] [debug line = 656:36]
  store i8 %tmp.894, i8* %output.addr.163, align 1, !dbg !778 ; [debug line = 656:36]
  %tmp.895 = lshr i21 %input.load.45.cast2, 13, !dbg !779 ; [#uses=1 type=i21] [debug line = 656:75]
  %tmp.896 = trunc i21 %tmp.895 to i8, !dbg !779  ; [#uses=1 type=i8] [debug line = 656:75]
  %output.addr.164 = getelementptr [32 x i8]* %output, i64 0, i64 8, !dbg !779 ; [#uses=1 type=i8*] [debug line = 656:75]
  store i8 %tmp.896, i8* %output.addr.164, align 1, !dbg !779 ; [debug line = 656:75]
  %tmp.897 = lshr i29 %input.load.45.cast1, 21, !dbg !780 ; [#uses=1 type=i29] [debug line = 656:115]
  %tmp.898 = trunc i29 %tmp.897 to i8, !dbg !780  ; [#uses=1 type=i8] [debug line = 656:115]
  %output.addr.165 = getelementptr [32 x i8]* %output, i64 0, i64 9, !dbg !780 ; [#uses=1 type=i8*] [debug line = 656:115]
  %tmp.899 = trunc i32 %tmp.870 to i8, !dbg !781  ; [#uses=1 type=i8] [debug line = 657:3]
  %tmp.900 = or i8 %tmp.899, %tmp.898, !dbg !781  ; [#uses=1 type=i8] [debug line = 657:3]
  store i8 %tmp.900, i8* %output.addr.165, align 1, !dbg !781 ; [debug line = 657:3]
  %tmp.901 = lshr i11 %input.load.46.cast, 3, !dbg !782 ; [#uses=1 type=i11] [debug line = 657:36]
  %tmp.902 = trunc i11 %tmp.901 to i8, !dbg !782  ; [#uses=1 type=i8] [debug line = 657:36]
  %output.addr.166 = getelementptr [32 x i8]* %output, i64 0, i64 10, !dbg !782 ; [#uses=1 type=i8*] [debug line = 657:36]
  store i8 %tmp.902, i8* %output.addr.166, align 1, !dbg !782 ; [debug line = 657:36]
  %tmp.903 = lshr i19 %input.load.46.cast2, 11, !dbg !783 ; [#uses=1 type=i19] [debug line = 657:75]
  %tmp.904 = trunc i19 %tmp.903 to i8, !dbg !783  ; [#uses=1 type=i8] [debug line = 657:75]
  %output.addr.167 = getelementptr [32 x i8]* %output, i64 0, i64 11, !dbg !783 ; [#uses=1 type=i8*] [debug line = 657:75]
  store i8 %tmp.904, i8* %output.addr.167, align 1, !dbg !783 ; [debug line = 657:75]
  %tmp.905 = lshr i27 %input.load.46.cast1, 19, !dbg !784 ; [#uses=1 type=i27] [debug line = 657:115]
  %tmp.906 = trunc i27 %tmp.905 to i8, !dbg !784  ; [#uses=1 type=i8] [debug line = 657:115]
  %output.addr.168 = getelementptr [32 x i8]* %output, i64 0, i64 12, !dbg !784 ; [#uses=1 type=i8*] [debug line = 657:115]
  %tmp.907 = trunc i32 %tmp.871 to i8, !dbg !785  ; [#uses=1 type=i8] [debug line = 658:3]
  %tmp.908 = or i8 %tmp.907, %tmp.906, !dbg !785  ; [#uses=1 type=i8] [debug line = 658:3]
  store i8 %tmp.908, i8* %output.addr.168, align 1, !dbg !785 ; [debug line = 658:3]
  %tmp.909 = lshr i10 %input.load.47.cast, 2, !dbg !786 ; [#uses=1 type=i10] [debug line = 658:37]
  %tmp.910 = trunc i10 %tmp.909 to i8, !dbg !786  ; [#uses=1 type=i8] [debug line = 658:37]
  %output.addr.169 = getelementptr [32 x i8]* %output, i64 0, i64 13, !dbg !786 ; [#uses=1 type=i8*] [debug line = 658:37]
  store i8 %tmp.910, i8* %output.addr.169, align 1, !dbg !786 ; [debug line = 658:37]
  %tmp.911 = lshr i18 %input.load.47.cast2, 10, !dbg !787 ; [#uses=1 type=i18] [debug line = 658:77]
  %tmp.912 = trunc i18 %tmp.911 to i8, !dbg !787  ; [#uses=1 type=i8] [debug line = 658:77]
  %output.addr.170 = getelementptr [32 x i8]* %output, i64 0, i64 14, !dbg !787 ; [#uses=1 type=i8*] [debug line = 658:77]
  store i8 %tmp.912, i8* %output.addr.170, align 1, !dbg !787 ; [debug line = 658:77]
  %tmp.913 = lshr i26 %input.load.47.cast1, 18, !dbg !788 ; [#uses=1 type=i26] [debug line = 658:118]
  %tmp.914 = trunc i26 %tmp.913 to i8, !dbg !788  ; [#uses=1 type=i8] [debug line = 658:118]
  %output.addr.171 = getelementptr [32 x i8]* %output, i64 0, i64 15, !dbg !788 ; [#uses=1 type=i8*] [debug line = 658:118]
  store i8 %tmp.914, i8* %output.addr.171, align 1, !dbg !788 ; [debug line = 658:118]
  %input.addr.47 = getelementptr inbounds [10 x i32]* %input, i64 0, i64 5, !dbg !789 ; [#uses=1 type=i32*] [debug line = 659:3]
  %input.load.53 = load i32* %input.addr.47, align 4, !dbg !789 ; [#uses=4 type=i32] [debug line = 659:3]
  %input.load.53.cast1 = trunc i32 %input.load.53 to i24, !dbg !789 ; [#uses=1 type=i24] [debug line = 659:3]
  %input.load.53.cast = trunc i32 %input.load.53 to i16, !dbg !789 ; [#uses=1 type=i16] [debug line = 659:3]
  %tmp.915 = trunc i32 %input.load.53 to i8, !dbg !789 ; [#uses=1 type=i8] [debug line = 659:3]
  store i8 %tmp.915, i8* %output.addr.156, align 1, !dbg !789 ; [debug line = 659:3]
  %tmp.916 = lshr i16 %input.load.53.cast, 8, !dbg !790 ; [#uses=1 type=i16] [debug line = 659:37]
  %tmp.917 = trunc i16 %tmp.916 to i8, !dbg !790  ; [#uses=1 type=i8] [debug line = 659:37]
  %output.addr.172 = getelementptr [32 x i8]* %output, i64 0, i64 17, !dbg !790 ; [#uses=1 type=i8*] [debug line = 659:37]
  store i8 %tmp.917, i8* %output.addr.172, align 1, !dbg !790 ; [debug line = 659:37]
  %tmp.918 = lshr i24 %input.load.53.cast1, 16, !dbg !791 ; [#uses=1 type=i24] [debug line = 659:77]
  %tmp.919 = trunc i24 %tmp.918 to i8, !dbg !791  ; [#uses=1 type=i8] [debug line = 659:77]
  %output.addr.173 = getelementptr [32 x i8]* %output, i64 0, i64 18, !dbg !791 ; [#uses=1 type=i8*] [debug line = 659:77]
  store i8 %tmp.919, i8* %output.addr.173, align 1, !dbg !791 ; [debug line = 659:77]
  %tmp.920 = lshr i32 %input.load.53, 24, !dbg !792 ; [#uses=1 type=i32] [debug line = 659:118]
  %tmp.921 = trunc i32 %tmp.920 to i8, !dbg !792  ; [#uses=1 type=i8] [debug line = 659:118]
  %output.addr.174 = getelementptr [32 x i8]* %output, i64 0, i64 19, !dbg !792 ; [#uses=1 type=i8*] [debug line = 659:118]
  %tmp.922 = trunc i32 %tmp.872 to i8, !dbg !793  ; [#uses=1 type=i8] [debug line = 660:3]
  %tmp.923 = or i8 %tmp.921, %tmp.922, !dbg !793  ; [#uses=1 type=i8] [debug line = 660:3]
  store i8 %tmp.923, i8* %output.addr.174, align 1, !dbg !793 ; [debug line = 660:3]
  %tmp.924 = lshr i15 %input.load.48.cast, 7, !dbg !794 ; [#uses=1 type=i15] [debug line = 660:37]
  %tmp.925 = trunc i15 %tmp.924 to i8, !dbg !794  ; [#uses=1 type=i8] [debug line = 660:37]
  %output.addr.175 = getelementptr [32 x i8]* %output, i64 0, i64 20, !dbg !794 ; [#uses=1 type=i8*] [debug line = 660:37]
  store i8 %tmp.925, i8* %output.addr.175, align 1, !dbg !794 ; [debug line = 660:37]
  %tmp.926 = lshr i23 %input.load.48.cast9, 15, !dbg !795 ; [#uses=1 type=i23] [debug line = 660:77]
  %tmp.927 = trunc i23 %tmp.926 to i8, !dbg !795  ; [#uses=1 type=i8] [debug line = 660:77]
  %output.addr.176 = getelementptr [32 x i8]* %output, i64 0, i64 21, !dbg !795 ; [#uses=1 type=i8*] [debug line = 660:77]
  store i8 %tmp.927, i8* %output.addr.176, align 1, !dbg !795 ; [debug line = 660:77]
  %tmp.928 = lshr i31 %input.load.48.cast1, 23, !dbg !796 ; [#uses=1 type=i31] [debug line = 660:118]
  %tmp.929 = trunc i31 %tmp.928 to i8, !dbg !796  ; [#uses=1 type=i8] [debug line = 660:118]
  %output.addr.177 = getelementptr [32 x i8]* %output, i64 0, i64 22, !dbg !796 ; [#uses=1 type=i8*] [debug line = 660:118]
  %tmp.930 = trunc i32 %tmp.873 to i8, !dbg !797  ; [#uses=1 type=i8] [debug line = 661:3]
  %tmp.931 = or i8 %tmp.930, %tmp.929, !dbg !797  ; [#uses=1 type=i8] [debug line = 661:3]
  store i8 %tmp.931, i8* %output.addr.177, align 1, !dbg !797 ; [debug line = 661:3]
  %tmp.932 = lshr i13 %input.load.49.cast, 5, !dbg !798 ; [#uses=1 type=i13] [debug line = 661:37]
  %tmp.933 = trunc i13 %tmp.932 to i8, !dbg !798  ; [#uses=1 type=i8] [debug line = 661:37]
  %output.addr.178 = getelementptr [32 x i8]* %output, i64 0, i64 23, !dbg !798 ; [#uses=1 type=i8*] [debug line = 661:37]
  store i8 %tmp.933, i8* %output.addr.178, align 1, !dbg !798 ; [debug line = 661:37]
  %tmp.934 = lshr i21 %input.load.49.cast7, 13, !dbg !799 ; [#uses=1 type=i21] [debug line = 661:77]
  %tmp.935 = trunc i21 %tmp.934 to i8, !dbg !799  ; [#uses=1 type=i8] [debug line = 661:77]
  %output.addr.179 = getelementptr [32 x i8]* %output, i64 0, i64 24, !dbg !799 ; [#uses=1 type=i8*] [debug line = 661:77]
  store i8 %tmp.935, i8* %output.addr.179, align 1, !dbg !799 ; [debug line = 661:77]
  %tmp.936 = lshr i29 %input.load.49.cast8, 21, !dbg !800 ; [#uses=1 type=i29] [debug line = 661:118]
  %tmp.937 = trunc i29 %tmp.936 to i8, !dbg !800  ; [#uses=1 type=i8] [debug line = 661:118]
  %output.addr.180 = getelementptr [32 x i8]* %output, i64 0, i64 25, !dbg !800 ; [#uses=1 type=i8*] [debug line = 661:118]
  %tmp.938 = trunc i32 %tmp.874 to i8, !dbg !801  ; [#uses=1 type=i8] [debug line = 662:3]
  %tmp.939 = or i8 %tmp.938, %tmp.937, !dbg !801  ; [#uses=1 type=i8] [debug line = 662:3]
  store i8 %tmp.939, i8* %output.addr.180, align 1, !dbg !801 ; [debug line = 662:3]
  %tmp.940 = lshr i12 %input.load.50.cast, 4, !dbg !802 ; [#uses=1 type=i12] [debug line = 662:37]
  %tmp.941 = trunc i12 %tmp.940 to i8, !dbg !802  ; [#uses=1 type=i8] [debug line = 662:37]
  %output.addr.181 = getelementptr [32 x i8]* %output, i64 0, i64 26, !dbg !802 ; [#uses=1 type=i8*] [debug line = 662:37]
  store i8 %tmp.941, i8* %output.addr.181, align 1, !dbg !802 ; [debug line = 662:37]
  %tmp.942 = lshr i20 %input.load.50.cast5, 12, !dbg !803 ; [#uses=1 type=i20] [debug line = 662:77]
  %tmp.943 = trunc i20 %tmp.942 to i8, !dbg !803  ; [#uses=1 type=i8] [debug line = 662:77]
  %output.addr.182 = getelementptr [32 x i8]* %output, i64 0, i64 27, !dbg !803 ; [#uses=1 type=i8*] [debug line = 662:77]
  store i8 %tmp.943, i8* %output.addr.182, align 1, !dbg !803 ; [debug line = 662:77]
  %tmp.944 = lshr i28 %input.load.50.cast6, 20, !dbg !804 ; [#uses=1 type=i28] [debug line = 662:118]
  %tmp.945 = trunc i28 %tmp.944 to i8, !dbg !804  ; [#uses=1 type=i8] [debug line = 662:118]
  %output.addr.183 = getelementptr [32 x i8]* %output, i64 0, i64 28, !dbg !804 ; [#uses=1 type=i8*] [debug line = 662:118]
  %tmp.946 = trunc i32 %tmp.875 to i8, !dbg !805  ; [#uses=1 type=i8] [debug line = 663:3]
  %tmp.947 = or i8 %tmp.946, %tmp.945, !dbg !805  ; [#uses=1 type=i8] [debug line = 663:3]
  store i8 %tmp.947, i8* %output.addr.183, align 1, !dbg !805 ; [debug line = 663:3]
  %tmp.948 = lshr i10 %input.load.51.cast, 2, !dbg !806 ; [#uses=1 type=i10] [debug line = 663:37]
  %tmp.949 = trunc i10 %tmp.948 to i8, !dbg !806  ; [#uses=1 type=i8] [debug line = 663:37]
  %output.addr.184 = getelementptr [32 x i8]* %output, i64 0, i64 29, !dbg !806 ; [#uses=1 type=i8*] [debug line = 663:37]
  store i8 %tmp.949, i8* %output.addr.184, align 1, !dbg !806 ; [debug line = 663:37]
  %tmp.950 = lshr i18 %input.load.51.cast3, 10, !dbg !807 ; [#uses=1 type=i18] [debug line = 663:77]
  %tmp.951 = trunc i18 %tmp.950 to i8, !dbg !807  ; [#uses=1 type=i8] [debug line = 663:77]
  %output.addr.185 = getelementptr [32 x i8]* %output, i64 0, i64 30, !dbg !807 ; [#uses=1 type=i8*] [debug line = 663:77]
  store i8 %tmp.951, i8* %output.addr.185, align 1, !dbg !807 ; [debug line = 663:77]
  %tmp.952 = lshr i26 %input.load.51.cast4, 18, !dbg !808 ; [#uses=1 type=i26] [debug line = 663:118]
  %tmp.953 = trunc i26 %tmp.952 to i8, !dbg !808  ; [#uses=1 type=i8] [debug line = 663:118]
  %output.addr.186 = getelementptr [32 x i8]* %output, i64 0, i64 31, !dbg !808 ; [#uses=1 type=i8*] [debug line = 663:118]
  store i8 %tmp.953, i8* %output.addr.186, align 1, !dbg !808 ; [debug line = 663:118]
  ret void, !dbg !809                             ; [debug line = 665:1]
}

; [#uses=0]
define i32 @curve25519_donna([32 x i8]* %mypublic_in, [32 x i8]* %secret_in, [32 x i8]* %basepoint_in, [32 x i8]* %mypublic_out, [32 x i8]* %secret_out, [32 x i8]* %basepoint_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %mypublic_in) nounwind, !map !810
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %secret_in) nounwind, !map !816
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %basepoint_in) nounwind, !map !820
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %mypublic_out) nounwind, !map !824
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %secret_out) nounwind, !map !828
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %basepoint_out) nounwind, !map !832
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !836
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @curve25519_donna.str) nounwind
  %bp = alloca [10 x i63], align 8                ; [#uses=2 type=[10 x i63]*]
  %x = alloca [10 x i64], align 16                ; [#uses=2 type=[10 x i64]*]
  %z = alloca [11 x i64], align 16                ; [#uses=4 type=[11 x i64]*]
  %zmone = alloca [10 x i64], align 16            ; [#uses=2 type=[10 x i64]*]
  %e = alloca [32 x i8], align 16                 ; [#uses=5 type=[32 x i8]*]
  %mypublic = alloca [32 x i8], align 16          ; [#uses=3 type=[32 x i8]*]
  %secret = alloca [32 x i8], align 16            ; [#uses=3 type=[32 x i8]*]
  %basepoint = alloca [32 x i8], align 16         ; [#uses=3 type=[32 x i8]*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %mypublic_in}, i64 0, metadata !842), !dbg !843 ; [debug line = 954:21] [debug variable = mypublic_in]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %secret_in}, i64 0, metadata !844), !dbg !845 ; [debug line = 954:47] [debug variable = secret_in]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %basepoint_in}, i64 0, metadata !846), !dbg !847 ; [debug line = 954:71] [debug variable = basepoint_in]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %mypublic_out}, i64 0, metadata !848), !dbg !849 ; [debug line = 955:9] [debug variable = mypublic_out]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %secret_out}, i64 0, metadata !850), !dbg !851 ; [debug line = 955:36] [debug variable = secret_out]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %basepoint_out}, i64 0, metadata !852), !dbg !853 ; [debug line = 955:61] [debug variable = basepoint_out]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !854 ; [debug line = 956:1]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %basepoint_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %secret_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %mypublic_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %basepoint_out, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %secret_out, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %mypublic_out, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @.str1, [1 x i8]* @.str1, [6 x i8]* @.str2, [1 x i8]* @.str1) nounwind, !dbg !856 ; [debug line = 963:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @.str1, [1 x i8]* @.str1, [8 x i8]* @.str3, [1 x i8]* @.str1) nounwind, !dbg !857 ; [debug line = 964:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @.str1, [1 x i8]* @.str1, [14 x i8]* @.str4, [1 x i8]* @.str1) nounwind, !dbg !858 ; [debug line = 965:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @.str1, [1 x i8]* @.str1, [7 x i8]* @.str5, [1 x i8]* @.str1) nounwind, !dbg !859 ; [debug line = 966:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @.str1, [1 x i8]* @.str1, [9 x i8]* @.str6, [1 x i8]* @.str1) nounwind, !dbg !860 ; [debug line = 967:1]
  call void @llvm.dbg.declare(metadata !{[10 x i63]* %bp}, metadata !861), !dbg !862 ; [debug line = 968:7] [debug variable = bp]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !863), !dbg !864 ; [debug line = 968:15] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{[11 x i64]* %z}, metadata !865), !dbg !867 ; [debug line = 968:22] [debug variable = z]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %zmone}, metadata !868), !dbg !869 ; [debug line = 968:29] [debug variable = zmone]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %e}, metadata !870), !dbg !872 ; [debug line = 969:11] [debug variable = e]
  %e.addr = getelementptr inbounds [32 x i8]* %e, i64 0, i64 0, !dbg !873 ; [#uses=2 type=i8*] [debug line = 969:22]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i5 [ 0, %0 ], [ %indvarinc, %meminst ] ; [#uses=3 type=i5]
  %indvarinc = add i5 %invdar, 1, !dbg !873       ; [#uses=1 type=i5] [debug line = 969:22]
  %tmp = zext i5 %invdar to i64, !dbg !873        ; [#uses=1 type=i64] [debug line = 969:22]
  %e.addr.1 = getelementptr [32 x i8]* %e, i64 0, i64 %tmp, !dbg !873 ; [#uses=1 type=i8*] [debug line = 969:22]
  store i8 0, i8* %e.addr.1, align 1, !dbg !873   ; [debug line = 969:22]
  %tmp. = icmp eq i5 %invdar, -1, !dbg !873       ; [#uses=1 type=i1] [debug line = 969:22]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_e.str) nounwind ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp., label %3, label %meminst, !dbg !873 ; [debug line = 969:22]

; <label>:3                                       ; preds = %meminst
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %mypublic}, metadata !874), !dbg !876 ; [debug line = 971:17] [debug variable = mypublic]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %secret}, metadata !877), !dbg !878 ; [debug line = 971:31] [debug variable = secret]
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %basepoint}, metadata !879), !dbg !880 ; [debug line = 971:43] [debug variable = basepoint]
  call fastcc void @_memcpy_char([32 x i8]* %mypublic, [32 x i8]* %mypublic_in) nounwind, !dbg !881 ; [debug line = 973:3]
  call fastcc void @_memcpy_char([32 x i8]* %secret, [32 x i8]* %secret_in) nounwind, !dbg !882 ; [debug line = 974:3]
  call fastcc void @_memcpy_char([32 x i8]* %basepoint, [32 x i8]* %basepoint_in) nounwind, !dbg !883 ; [debug line = 975:3]
  br label %4, !dbg !884                          ; [debug line = 977:8]

; <label>:4                                       ; preds = %6, %3
  %i = phi i6 [ 0, %3 ], [ %i.14, %6 ]            ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %i, -32, !dbg !884       ; [#uses=1 type=i1] [debug line = 977:8]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %6, !dbg !884  ; [debug line = 977:8]

; <label>:6                                       ; preds = %4
  %tmp.957 = zext i6 %i to i64, !dbg !886         ; [#uses=2 type=i64] [debug line = 978:4]
  %secret.addr = getelementptr inbounds [32 x i8]* %secret, i64 0, i64 %tmp.957, !dbg !886 ; [#uses=1 type=i8*] [debug line = 978:4]
  %secret.load = load i8* %secret.addr, align 1, !dbg !886 ; [#uses=1 type=i8] [debug line = 978:4]
  %e.addr.3 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 %tmp.957, !dbg !886 ; [#uses=1 type=i8*] [debug line = 978:4]
  store i8 %secret.load, i8* %e.addr.3, align 1, !dbg !886 ; [debug line = 978:4]
  %i.14 = add i6 %i, 1, !dbg !888                 ; [#uses=1 type=i6] [debug line = 977:23]
  call void @llvm.dbg.value(metadata !{i6 %i.14}, i64 0, metadata !889), !dbg !888 ; [debug line = 977:23] [debug variable = i]
  br label %4, !dbg !888                          ; [debug line = 977:23]

; <label>:7                                       ; preds = %4
  %e.load = load i8* %e.addr, align 16, !dbg !890 ; [#uses=1 type=i8] [debug line = 980:3]
  %tmp.955 = and i8 %e.load, -8, !dbg !890        ; [#uses=1 type=i8] [debug line = 980:3]
  store i8 %tmp.955, i8* %e.addr, align 16, !dbg !890 ; [debug line = 980:3]
  %e.addr.2 = getelementptr inbounds [32 x i8]* %e, i64 0, i64 31, !dbg !891 ; [#uses=2 type=i8*] [debug line = 981:3]
  %e.load.1 = load i8* %e.addr.2, align 1, !dbg !891 ; [#uses=1 type=i8] [debug line = 981:3]
  %e.load.1.cast = trunc i8 %e.load.1 to i6, !dbg !891 ; [#uses=1 type=i6] [debug line = 981:3]
  %tmp.1062.cast = zext i6 %e.load.1.cast to i7, !dbg !891 ; [#uses=1 type=i7] [debug line = 981:3]
  %tmp.956 = or i7 %tmp.1062.cast, -64, !dbg !892 ; [#uses=1 type=i7] [debug line = 982:3]
  %tmp.1063.cast = zext i7 %tmp.956 to i8, !dbg !892 ; [#uses=1 type=i8] [debug line = 982:3]
  store i8 %tmp.1063.cast, i8* %e.addr.2, align 1, !dbg !892 ; [debug line = 982:3]
  call fastcc void @fexpand([10 x i63]* %bp, [32 x i8]* %basepoint) nounwind, !dbg !893 ; [debug line = 984:3]
  call fastcc void @cmult([10 x i64]* %x, [11 x i64]* %z, [32 x i8]* %e, [10 x i63]* %bp) nounwind, !dbg !894 ; [debug line = 985:3]
  call fastcc void @crecip([10 x i64]* %zmone, [11 x i64]* %z) nounwind, !dbg !895 ; [debug line = 986:3]
  call fastcc void @fmul.2([11 x i64]* %z, [10 x i64]* %x, [10 x i64]* %zmone) nounwind, !dbg !896 ; [debug line = 987:3]
  call fastcc void @fcontract([32 x i8]* %mypublic, [11 x i64]* %z) nounwind, !dbg !897 ; [debug line = 988:3]
  call fastcc void @_memcpy_char([32 x i8]* %mypublic_out, [32 x i8]* %mypublic) nounwind, !dbg !898 ; [debug line = 990:3]
  call fastcc void @_memcpy_char([32 x i8]* %secret_out, [32 x i8]* %secret) nounwind, !dbg !899 ; [debug line = 991:3]
  call fastcc void @_memcpy_char([32 x i8]* %basepoint_out, [32 x i8]* %basepoint) nounwind, !dbg !900 ; [debug line = 992:3]
  ret i32 0, !dbg !901                            ; [debug line = 995:3]
}

; [#uses=1]
define internal fastcc void @crecip([10 x i64]* nocapture %out, [11 x i64]* nocapture %z) {
  %z2 = alloca [10 x i64], align 16               ; [#uses=3 type=[10 x i64]*]
  %z9 = alloca [10 x i64], align 16               ; [#uses=3 type=[10 x i64]*]
  %z11 = alloca [10 x i64], align 16              ; [#uses=3 type=[10 x i64]*]
  %z2_5_0 = alloca [10 x i64], align 16           ; [#uses=3 type=[10 x i64]*]
  %z2_10_0 = alloca [10 x i64], align 16          ; [#uses=4 type=[10 x i64]*]
  %z2_20_0 = alloca [10 x i64], align 16          ; [#uses=3 type=[10 x i64]*]
  %z2_50_0 = alloca [10 x i64], align 16          ; [#uses=4 type=[10 x i64]*]
  %z2_100_0 = alloca [10 x i64], align 16         ; [#uses=3 type=[10 x i64]*]
  %t0 = alloca [10 x i64], align 16               ; [#uses=42 type=[10 x i64]*]
  %t1 = alloca [10 x i64], align 16               ; [#uses=38 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %out}, i64 0, metadata !902), !dbg !903 ; [debug line = 885:14] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %z}, i64 0, metadata !904), !dbg !905 ; [debug line = 885:31] [debug variable = z]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !906 ; [debug line = 886:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !908 ; [debug line = 887:1]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2}, metadata !909), !dbg !910 ; [debug line = 888:7] [debug variable = z2]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z9}, metadata !911), !dbg !912 ; [debug line = 889:8] [debug variable = z9]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z11}, metadata !913), !dbg !914 ; [debug line = 890:8] [debug variable = z11]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_5_0}, metadata !915), !dbg !916 ; [debug line = 891:8] [debug variable = z2_5_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_10_0}, metadata !917), !dbg !918 ; [debug line = 892:8] [debug variable = z2_10_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_20_0}, metadata !919), !dbg !920 ; [debug line = 893:8] [debug variable = z2_20_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_50_0}, metadata !921), !dbg !922 ; [debug line = 894:8] [debug variable = z2_50_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %z2_100_0}, metadata !923), !dbg !924 ; [debug line = 895:8] [debug variable = z2_100_0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %t0}, metadata !925), !dbg !926 ; [debug line = 896:8] [debug variable = t0]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %t1}, metadata !927), !dbg !928 ; [debug line = 897:8] [debug variable = t1]
  call fastcc void @fsquare.2([10 x i64]* %z2, [11 x i64]* %z), !dbg !929 ; [debug line = 900:11]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %z2), !dbg !930 ; [debug line = 901:11]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !931 ; [debug line = 902:11]
  call fastcc void @fmul.1([10 x i64]* %z9, [10 x i64]* %t0, [11 x i64]* %z), !dbg !932 ; [debug line = 903:11]
  call fastcc void @fmul([10 x i64]* %z11, [10 x i64]* %z9, [10 x i64]* %z2), !dbg !933 ; [debug line = 904:12]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z11), !dbg !934 ; [debug line = 905:12]
  call fastcc void @fmul([10 x i64]* %z2_5_0, [10 x i64]* %t0, [10 x i64]* %z9), !dbg !935 ; [debug line = 906:24]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_5_0), !dbg !936 ; [debug line = 908:19]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !937 ; [debug line = 909:19]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !938 ; [debug line = 910:19]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !939 ; [debug line = 911:19]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !940 ; [debug line = 912:20]
  call fastcc void @fmul([10 x i64]* %z2_10_0, [10 x i64]* %t0, [10 x i64]* %z2_5_0), !dbg !941 ; [debug line = 913:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_10_0), !dbg !942 ; [debug line = 915:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !943 ; [debug line = 916:20]
  br label %1, !dbg !944                          ; [debug line = 917:26]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 2, %0 ], [ %i.15, %3 ]            ; [#uses=2 type=i4]
  %tmp = icmp ult i4 %i, -6, !dbg !944            ; [#uses=1 type=i1] [debug line = 917:26]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !944       ; [debug line = 917:26]

; <label>:3                                       ; preds = %1
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !946 ; [debug line = 917:49]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !948 ; [debug line = 917:65]
  %i.15 = add i4 %i, 2, !dbg !949                 ; [#uses=1 type=i4] [debug line = 917:39]
  call void @llvm.dbg.value(metadata !{i4 %i.15}, i64 0, metadata !950), !dbg !949 ; [debug line = 917:39] [debug variable = i]
  br label %1, !dbg !949                          ; [debug line = 917:39]

; <label>:4                                       ; preds = %1
  call fastcc void @fmul([10 x i64]* %z2_20_0, [10 x i64]* %t1, [10 x i64]* %z2_10_0), !dbg !951 ; [debug line = 918:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_20_0), !dbg !952 ; [debug line = 920:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !953 ; [debug line = 921:20]
  br label %5, !dbg !954                          ; [debug line = 922:26]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i5 [ 2, %4 ], [ %i.16, %7 ]          ; [#uses=2 type=i5]
  %tmp. = icmp ult i5 %i.1, -12, !dbg !954        ; [#uses=1 type=i1] [debug line = 922:26]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %tmp., label %7, label %8, !dbg !954      ; [debug line = 922:26]

; <label>:7                                       ; preds = %5
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !956 ; [debug line = 922:49]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !958 ; [debug line = 922:65]
  %i.16 = add i5 %i.1, 2, !dbg !959               ; [#uses=1 type=i5] [debug line = 922:39]
  call void @llvm.dbg.value(metadata !{i5 %i.16}, i64 0, metadata !950), !dbg !959 ; [debug line = 922:39] [debug variable = i]
  br label %5, !dbg !959                          ; [debug line = 922:39]

; <label>:8                                       ; preds = %5
  call fastcc void @fmul([10 x i64]* %t0, [10 x i64]* %t1, [10 x i64]* %z2_20_0), !dbg !960 ; [debug line = 923:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !961 ; [debug line = 925:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !962 ; [debug line = 926:20]
  br label %9, !dbg !963                          ; [debug line = 927:26]

; <label>:9                                       ; preds = %11, %8
  %i.2 = phi i4 [ 2, %8 ], [ %i.17, %11 ]         ; [#uses=2 type=i4]
  %tmp.958 = icmp ult i4 %i.2, -6, !dbg !963      ; [#uses=1 type=i1] [debug line = 927:26]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.958, label %11, label %12, !dbg !963 ; [debug line = 927:26]

; <label>:11                                      ; preds = %9
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !965 ; [debug line = 927:49]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !967 ; [debug line = 927:65]
  %i.17 = add i4 %i.2, 2, !dbg !968               ; [#uses=1 type=i4] [debug line = 927:39]
  call void @llvm.dbg.value(metadata !{i4 %i.17}, i64 0, metadata !950), !dbg !968 ; [debug line = 927:39] [debug variable = i]
  br label %9, !dbg !968                          ; [debug line = 927:39]

; <label>:12                                      ; preds = %9
  call fastcc void @fmul([10 x i64]* %z2_50_0, [10 x i64]* %t0, [10 x i64]* %z2_10_0), !dbg !969 ; [debug line = 928:20]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %z2_50_0), !dbg !970 ; [debug line = 930:20]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !971 ; [debug line = 931:20]
  br label %13, !dbg !972                         ; [debug line = 932:27]

; <label>:13                                      ; preds = %15, %12
  %i.3 = phi i6 [ 2, %12 ], [ %i.18, %15 ]        ; [#uses=2 type=i6]
  %tmp.959 = icmp ult i6 %i.3, -14, !dbg !972     ; [#uses=1 type=i1] [debug line = 932:27]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) ; [#uses=0 type=i32]
  br i1 %tmp.959, label %15, label %16, !dbg !972 ; [debug line = 932:27]

; <label>:15                                      ; preds = %13
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !974 ; [debug line = 932:50]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !976 ; [debug line = 932:66]
  %i.18 = add i6 %i.3, 2, !dbg !977               ; [#uses=1 type=i6] [debug line = 932:40]
  call void @llvm.dbg.value(metadata !{i6 %i.18}, i64 0, metadata !950), !dbg !977 ; [debug line = 932:40] [debug variable = i]
  br label %13, !dbg !977                         ; [debug line = 932:40]

; <label>:16                                      ; preds = %13
  call fastcc void @fmul([10 x i64]* %z2_100_0, [10 x i64]* %t1, [10 x i64]* %z2_50_0), !dbg !978 ; [debug line = 933:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %z2_100_0), !dbg !979 ; [debug line = 935:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !980 ; [debug line = 936:21]
  br label %17, !dbg !981                         ; [debug line = 937:28]

; <label>:17                                      ; preds = %19, %16
  %i.4 = phi i7 [ 2, %16 ], [ %i.19, %19 ]        ; [#uses=2 type=i7]
  %tmp.960 = icmp ult i7 %i.4, -28, !dbg !981     ; [#uses=1 type=i1] [debug line = 937:28]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 49, i64 49, i64 49) ; [#uses=0 type=i32]
  br i1 %tmp.960, label %19, label %20, !dbg !981 ; [debug line = 937:28]

; <label>:19                                      ; preds = %17
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !983 ; [debug line = 937:52]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !985 ; [debug line = 937:68]
  %i.19 = add i7 %i.4, 2, !dbg !986               ; [#uses=1 type=i7] [debug line = 937:42]
  call void @llvm.dbg.value(metadata !{i7 %i.19}, i64 0, metadata !950), !dbg !986 ; [debug line = 937:42] [debug variable = i]
  br label %17, !dbg !986                         ; [debug line = 937:42]

; <label>:20                                      ; preds = %17
  call fastcc void @fmul([10 x i64]* %t1, [10 x i64]* %t0, [10 x i64]* %z2_100_0), !dbg !987 ; [debug line = 938:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !988 ; [debug line = 940:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !989 ; [debug line = 941:21]
  br label %21, !dbg !990                         ; [debug line = 942:27]

; <label>:21                                      ; preds = %23, %20
  %i.5 = phi i6 [ 2, %20 ], [ %i.20, %23 ]        ; [#uses=2 type=i6]
  %tmp.961 = icmp ult i6 %i.5, -14, !dbg !990     ; [#uses=1 type=i1] [debug line = 942:27]
  %22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) ; [#uses=0 type=i32]
  br i1 %tmp.961, label %23, label %24, !dbg !990 ; [debug line = 942:27]

; <label>:23                                      ; preds = %21
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !992 ; [debug line = 942:50]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !994 ; [debug line = 942:66]
  %i.20 = add i6 %i.5, 2, !dbg !995               ; [#uses=1 type=i6] [debug line = 942:40]
  call void @llvm.dbg.value(metadata !{i6 %i.20}, i64 0, metadata !950), !dbg !995 ; [debug line = 942:40] [debug variable = i]
  br label %21, !dbg !995                         ; [debug line = 942:40]

; <label>:24                                      ; preds = %21
  call fastcc void @fmul([10 x i64]* %t0, [10 x i64]* %t1, [10 x i64]* %z2_50_0), !dbg !996 ; [debug line = 943:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !997 ; [debug line = 945:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !998 ; [debug line = 946:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !999 ; [debug line = 947:21]
  call fastcc void @fsquare.1([10 x i64]* %t0, [10 x i64]* %t1), !dbg !1000 ; [debug line = 948:21]
  call fastcc void @fsquare.1([10 x i64]* %t1, [10 x i64]* %t0), !dbg !1001 ; [debug line = 949:21]
  call fastcc void @fmul([10 x i64]* %out, [10 x i64]* %t1, [10 x i64]* %z11), !dbg !1002 ; [debug line = 950:20]
  ret void, !dbg !1003                            ; [debug line = 951:1]
}

; [#uses=1]
define internal fastcc void @cmult([10 x i64]* nocapture %resultx, [11 x i64]* nocapture %resultz, [32 x i8]* nocapture %n, [10 x i63]* nocapture %q) {
  %nqpqx = alloca [19 x i64], align 16            ; [#uses=6 type=[19 x i64]*]
  %nqpqz = alloca [19 x i64], align 16            ; [#uses=6 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqz}, metadata !1004), !dbg !1006 ; [debug line = 797:25] [debug variable = nqpqz]
  %nqx = alloca [19 x i64], align 16              ; [#uses=7 type=[19 x i64]*]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %nqx}, i64 0, metadata !1007), !dbg !1009 ; [debug line = 59:31@877:3] [debug variable = src]
  %nqz = alloca [19 x i64], align 16              ; [#uses=6 type=[19 x i64]*]
  %t = alloca [19 x i64], align 16                ; [#uses=9 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %t}, metadata !1010), !dbg !1011 ; [debug line = 797:72] [debug variable = t]
  %nqpqx2 = alloca [19 x i64], align 16           ; [#uses=5 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqx2}, metadata !1012), !dbg !1013 ; [debug line = 800:8] [debug variable = nqpqx2]
  %nqpqz2 = alloca [19 x i64], align 16           ; [#uses=6 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqz2}, metadata !1014), !dbg !1015 ; [debug line = 800:26] [debug variable = nqpqz2]
  %nqx2 = alloca [19 x i64], align 16             ; [#uses=5 type=[19 x i64]*]
  %nqz2 = alloca [19 x i64], align 16             ; [#uses=6 type=[19 x i64]*]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqz2}, metadata !1016), !dbg !1017 ; [debug line = 800:60] [debug variable = nqz2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %resultx}, i64 0, metadata !1018), !dbg !1019 ; [debug line = 792:13] [debug variable = resultx]
  call void @llvm.dbg.value(metadata !{[11 x i64]* %resultz}, i64 0, metadata !1020), !dbg !1021 ; [debug line = 792:28] [debug variable = resultz]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %n}, i64 0, metadata !1022), !dbg !1023 ; [debug line = 792:47] [debug variable = n]
  call void @llvm.dbg.value(metadata !{[10 x i63]* %q}, i64 0, metadata !1024), !dbg !1025 ; [debug line = 792:62] [debug variable = q]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str7, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !1026 ; [debug line = 793:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str8, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !1027 ; [debug line = 794:1]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqpqx}, metadata !1028), !dbg !1029 ; [debug line = 797:8] [debug variable = nqpqx]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i5 [ 0, %0 ], [ %indvarinc, %meminst ] ; [#uses=3 type=i5]
  %indvarinc = add i5 %invdar, 1, !dbg !1030      ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp = zext i5 %invdar to i64, !dbg !1030       ; [#uses=1 type=i64] [debug line = 797:83]
  %nqpqx.addr = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqpqx.addr, align 8, !dbg !1030 ; [debug line = 797:83]
  %tmp. = icmp eq i5 %invdar, -14, !dbg !1030     ; [#uses=1 type=i1] [debug line = 797:83]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqx.str) nounwind ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp., label %meminst2.preheader, label %meminst, !dbg !1030 ; [debug line = 797:83]

meminst2.preheader:                               ; preds = %meminst
  br label %meminst2, !dbg !1030                  ; [debug line = 797:83]

meminst2:                                         ; preds = %meminst2, %meminst2.preheader
  %invdar3 = phi i5 [ %indvarinc4, %meminst2 ], [ 0, %meminst2.preheader ] ; [#uses=3 type=i5]
  %indvarinc4 = add i5 %invdar3, 1, !dbg !1030    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp.962 = zext i5 %invdar3 to i64, !dbg !1030  ; [#uses=1 type=i64] [debug line = 797:83]
  %nqpqz.addr = getelementptr [19 x i64]* %nqpqz, i64 0, i64 %tmp.962, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqpqz.addr, align 8, !dbg !1030 ; [debug line = 797:83]
  %tmp.963 = icmp eq i5 %invdar3, -14, !dbg !1030 ; [#uses=1 type=i1] [debug line = 797:83]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memset_nqpqz.str) nounwind ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.963, label %5, label %meminst2, !dbg !1030 ; [debug line = 797:83]

; <label>:5                                       ; preds = %meminst2
  %nqpqz.addr.1 = getelementptr [19 x i64]* %nqpqz, i64 0, i64 0, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 1, i64* %nqpqz.addr.1, align 16, !dbg !1030 ; [debug line = 797:83]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqx}, metadata !1031), !dbg !1032 ; [debug line = 797:42] [debug variable = nqx]
  br label %meminst5

meminst5:                                         ; preds = %meminst5, %5
  %invdar6 = phi i5 [ 0, %5 ], [ %indvarinc7, %meminst5 ] ; [#uses=3 type=i5]
  %indvarinc7 = add i5 %invdar6, 1, !dbg !1030    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp.964 = zext i5 %invdar6 to i64, !dbg !1030  ; [#uses=1 type=i64] [debug line = 797:83]
  %nqx.addr = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp.964, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqx.addr, align 8, !dbg !1030 ; [debug line = 797:83]
  %tmp.965 = icmp eq i5 %invdar6, -14, !dbg !1030 ; [#uses=1 type=i1] [debug line = 797:83]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqx.str) nounwind ; [#uses=0 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.965, label %8, label %meminst5, !dbg !1030 ; [debug line = 797:83]

; <label>:8                                       ; preds = %meminst5
  %nqx.addr.1 = getelementptr [19 x i64]* %nqx, i64 0, i64 0, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 1, i64* %nqx.addr.1, align 16, !dbg !1030 ; [debug line = 797:83]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqz}, metadata !1033), !dbg !1034 ; [debug line = 797:57] [debug variable = nqz]
  br label %meminst8

meminst8:                                         ; preds = %meminst8, %8
  %invdar9 = phi i5 [ 0, %8 ], [ %indvarinc1, %meminst8 ] ; [#uses=3 type=i5]
  %indvarinc1 = add i5 %invdar9, 1, !dbg !1030    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp.966 = zext i5 %invdar9 to i64, !dbg !1030  ; [#uses=1 type=i64] [debug line = 797:83]
  %nqz.addr = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp.966, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %nqz.addr, align 8, !dbg !1030 ; [debug line = 797:83]
  %tmp.967 = icmp eq i5 %invdar9, -14, !dbg !1030 ; [#uses=1 type=i1] [debug line = 797:83]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memset_nqz.str) nounwind ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.967, label %meminst11.preheader, label %meminst8, !dbg !1030 ; [debug line = 797:83]

meminst11.preheader:                              ; preds = %meminst8
  br label %meminst11, !dbg !1030                 ; [debug line = 797:83]

meminst11:                                        ; preds = %meminst11, %meminst11.preheader
  %invdar1 = phi i5 [ %indvarinc2, %meminst11 ], [ 0, %meminst11.preheader ] ; [#uses=3 type=i5]
  %indvarinc2 = add i5 %invdar1, 1, !dbg !1030    ; [#uses=1 type=i5] [debug line = 797:83]
  %tmp.968 = zext i5 %invdar1 to i64, !dbg !1030  ; [#uses=1 type=i64] [debug line = 797:83]
  %t.addr = getelementptr [19 x i64]* %t, i64 0, i64 %tmp.968, !dbg !1030 ; [#uses=1 type=i64*] [debug line = 797:83]
  store i64 0, i64* %t.addr, align 8, !dbg !1030  ; [debug line = 797:83]
  %tmp.969 = icmp eq i5 %invdar1, -14, !dbg !1030 ; [#uses=1 type=i1] [debug line = 797:83]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_t.str) nounwind ; [#uses=0 type=i32]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.969, label %meminst14.preheader, label %meminst11, !dbg !1030 ; [debug line = 797:83]

meminst14.preheader:                              ; preds = %meminst11
  br label %meminst14, !dbg !1035                 ; [debug line = 800:74]

meminst14:                                        ; preds = %meminst14, %meminst14.preheader
  %invdar2 = phi i5 [ %indvarinc3, %meminst14 ], [ 0, %meminst14.preheader ] ; [#uses=3 type=i5]
  %indvarinc3 = add i5 %invdar2, 1, !dbg !1035    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp.970 = zext i5 %invdar2 to i64, !dbg !1035  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqpqx2.addr = getelementptr [19 x i64]* %nqpqx2, i64 0, i64 %tmp.970, !dbg !1035 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqpqx2.addr, align 8, !dbg !1035 ; [debug line = 800:74]
  %tmp.971 = icmp eq i5 %invdar2, -14, !dbg !1035 ; [#uses=1 type=i1] [debug line = 800:74]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqx2.str) nounwind ; [#uses=0 type=i32]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.971, label %meminst17.preheader, label %meminst14, !dbg !1035 ; [debug line = 800:74]

meminst17.preheader:                              ; preds = %meminst14
  br label %meminst17, !dbg !1035                 ; [debug line = 800:74]

meminst17:                                        ; preds = %meminst17, %meminst17.preheader
  %invdar4 = phi i5 [ %indvarinc5, %meminst17 ], [ 0, %meminst17.preheader ] ; [#uses=3 type=i5]
  %indvarinc5 = add i5 %invdar4, 1, !dbg !1035    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp.972 = zext i5 %invdar4 to i64, !dbg !1035  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqpqz2.addr = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 %tmp.972, !dbg !1035 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqpqz2.addr, align 8, !dbg !1035 ; [debug line = 800:74]
  %tmp.973 = icmp eq i5 %invdar4, -14, !dbg !1035 ; [#uses=1 type=i1] [debug line = 800:74]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_nqpqz2.str) nounwind ; [#uses=0 type=i32]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.973, label %17, label %meminst17, !dbg !1035 ; [debug line = 800:74]

; <label>:17                                      ; preds = %meminst17
  %nqpqz2.addr.1 = getelementptr [19 x i64]* %nqpqz2, i64 0, i64 0, !dbg !1035 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 1, i64* %nqpqz2.addr.1, align 16, !dbg !1035 ; [debug line = 800:74]
  call void @llvm.dbg.declare(metadata !{[19 x i64]* %nqx2}, metadata !1036), !dbg !1037 ; [debug line = 800:44] [debug variable = nqx2]
  br label %meminst20

meminst20:                                        ; preds = %meminst20, %17
  %invdar5 = phi i5 [ 0, %17 ], [ %indvarinc6, %meminst20 ] ; [#uses=3 type=i5]
  %indvarinc6 = add i5 %invdar5, 1, !dbg !1035    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp.974 = zext i5 %invdar5 to i64, !dbg !1035  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqx2.addr = getelementptr [19 x i64]* %nqx2, i64 0, i64 %tmp.974, !dbg !1035 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqx2.addr, align 8, !dbg !1035 ; [debug line = 800:74]
  %tmp.975 = icmp eq i5 %invdar5, -14, !dbg !1035 ; [#uses=1 type=i1] [debug line = 800:74]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqx2.str) nounwind ; [#uses=0 type=i32]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.975, label %meminst23.preheader, label %meminst20, !dbg !1035 ; [debug line = 800:74]

meminst23.preheader:                              ; preds = %meminst20
  br label %meminst23, !dbg !1035                 ; [debug line = 800:74]

meminst23:                                        ; preds = %meminst23, %meminst23.preheader
  %invdar7 = phi i5 [ %indvarinc8, %meminst23 ], [ 0, %meminst23.preheader ] ; [#uses=3 type=i5]
  %indvarinc8 = add i5 %invdar7, 1, !dbg !1035    ; [#uses=1 type=i5] [debug line = 800:74]
  %tmp.976 = zext i5 %invdar7 to i64, !dbg !1035  ; [#uses=1 type=i64] [debug line = 800:74]
  %nqz2.addr = getelementptr [19 x i64]* %nqz2, i64 0, i64 %tmp.976, !dbg !1035 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 0, i64* %nqz2.addr, align 8, !dbg !1035 ; [debug line = 800:74]
  %tmp.977 = icmp eq i5 %invdar7, -14, !dbg !1035 ; [#uses=1 type=i1] [debug line = 800:74]
  %20 = call i32 (...)* @_ssdm_op_SpecLoopName([12 x i8]* @memset_nqz2.str) nounwind ; [#uses=0 type=i32]
  %21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19) ; [#uses=0 type=i32]
  br i1 %tmp.977, label %22, label %meminst23, !dbg !1035 ; [debug line = 800:74]

; <label>:22                                      ; preds = %meminst23
  %nqz2.addr.1 = getelementptr [19 x i64]* %nqz2, i64 0, i64 0, !dbg !1035 ; [#uses=1 type=i64*] [debug line = 800:74]
  store i64 1, i64* %nqz2.addr.1, align 16, !dbg !1035 ; [debug line = 800:74]
  br label %23, !dbg !1038                        ; [debug line = 61:6@804:3]

; <label>:23                                      ; preds = %25, %22
  %i.i = phi i4 [ 0, %22 ], [ %i.21, %25 ]        ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.i, -6, !dbg !1038   ; [#uses=1 type=i1] [debug line = 61:6@804:3]
  %24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %_memcpy.3.exit.preheader, label %25, !dbg !1038 ; [debug line = 61:6@804:3]

_memcpy.3.exit.preheader:                         ; preds = %23
  br label %_memcpy.3.exit, !dbg !1040            ; [debug line = 806:8]

; <label>:25                                      ; preds = %23
  %tmp.i = zext i4 %i.i to i64, !dbg !1042        ; [#uses=2 type=i64] [debug line = 62:3@804:3]
  %q.addr = getelementptr [10 x i63]* %q, i64 0, i64 %tmp.i, !dbg !1042 ; [#uses=1 type=i63*] [debug line = 62:3@804:3]
  %q.load = load i63* %q.addr, align 8            ; [#uses=1 type=i63]
  %extLd = zext i63 %q.load to i64                ; [#uses=1 type=i64]
  %nqpqx.addr.1 = getelementptr [19 x i64]* %nqpqx, i64 0, i64 %tmp.i, !dbg !1042 ; [#uses=1 type=i64*] [debug line = 62:3@804:3]
  store i64 %extLd, i64* %nqpqx.addr.1, align 8, !dbg !1042 ; [debug line = 62:3@804:3]
  %i.21 = add i4 %i.i, 1, !dbg !1043              ; [#uses=1 type=i4] [debug line = 61:18@804:3]
  call void @llvm.dbg.value(metadata !{i4 %i.21}, i64 0, metadata !1044), !dbg !1043 ; [debug line = 61:18@804:3] [debug variable = i]
  br label %23, !dbg !1043                        ; [debug line = 61:18@804:3]

_memcpy.3.exit:                                   ; preds = %31, %_memcpy.3.exit.preheader
  %i = phi i6 [ %i.23, %31 ], [ 0, %_memcpy.3.exit.preheader ] ; [#uses=3 type=i6]
  %tmp.978 = icmp eq i6 %i, -32, !dbg !1040       ; [#uses=1 type=i1] [debug line = 806:8]
  %26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  br i1 %tmp.978, label %.preheader.preheader, label %27, !dbg !1040 ; [debug line = 806:8]

.preheader.preheader:                             ; preds = %_memcpy.3.exit
  br label %.preheader, !dbg !1045                ; [debug line = 61:6@877:3]

; <label>:27                                      ; preds = %_memcpy.3.exit
  %tmp.979 = sub i6 31, %i, !dbg !1046            ; [#uses=1 type=i6] [debug line = 807:24]
  %tmp.980 = zext i6 %tmp.979 to i64, !dbg !1046  ; [#uses=1 type=i64] [debug line = 807:24]
  %n.addr = getelementptr [32 x i8]* %n, i64 0, i64 %tmp.980, !dbg !1046 ; [#uses=1 type=i8*] [debug line = 807:24]
  %byte = load i8* %n.addr, align 1, !dbg !1046   ; [#uses=1 type=i8] [debug line = 807:24]
  call void @llvm.dbg.value(metadata !{i8 %byte}, i64 0, metadata !1048), !dbg !1046 ; [debug line = 807:24] [debug variable = byte]
  br label %28, !dbg !1049                        ; [debug line = 808:10]

; <label>:28                                      ; preds = %30, %27
  %j = phi i4 [ 0, %27 ], [ %j.4, %30 ]           ; [#uses=2 type=i4]
  %byte1 = phi i8 [ %byte, %27 ], [ %byte.1, %30 ] ; [#uses=2 type=i8]
  %tmp.981 = icmp eq i4 %j, -8, !dbg !1049        ; [#uses=1 type=i1] [debug line = 808:10]
  %29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %tmp.981, label %31, label %30, !dbg !1049 ; [debug line = 808:10]

; <label>:30                                      ; preds = %28
  %tmp.982 = lshr i8 %byte1, 7, !dbg !1051        ; [#uses=4 type=i8] [debug line = 809:33]
  %bit.cast1 = trunc i8 %tmp.982 to i1, !dbg !1053 ; [#uses=1 type=i1] [debug line = 811:7]
  call fastcc void @swap_conditional([19 x i64]* %nqx, [19 x i64]* %nqpqx, i1 %bit.cast1), !dbg !1053 ; [debug line = 811:7]
  %bit.cast2 = trunc i8 %tmp.982 to i1, !dbg !1054 ; [#uses=1 type=i1] [debug line = 812:7]
  call fastcc void @swap_conditional([19 x i64]* %nqz, [19 x i64]* %nqpqz, i1 %bit.cast2), !dbg !1054 ; [debug line = 812:7]
  call fastcc void @fmonty([19 x i64]* %nqx2, [19 x i64]* %nqz2, [19 x i64]* %nqpqx2, [19 x i64]* %nqpqz2, [19 x i64]* %nqx, [19 x i64]* %nqz, [19 x i64]* %nqpqx, [19 x i64]* %nqpqz, [10 x i63]* %q), !dbg !1055 ; [debug line = 813:7]
  %bit.cast3 = trunc i8 %tmp.982 to i1, !dbg !1056 ; [#uses=1 type=i1] [debug line = 818:7]
  call fastcc void @swap_conditional([19 x i64]* %nqx2, [19 x i64]* %nqpqx2, i1 %bit.cast3), !dbg !1056 ; [debug line = 818:7]
  %bit.cast = trunc i8 %tmp.982 to i1, !dbg !1057 ; [#uses=1 type=i1] [debug line = 819:7]
  call fastcc void @swap_conditional([19 x i64]* %nqz2, [19 x i64]* %nqpqz2, i1 %bit.cast), !dbg !1057 ; [debug line = 819:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqx), !dbg !1058 ; [debug line = 822:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqx, [19 x i64]* %nqx2), !dbg !1059 ; [debug line = 833:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqx2, [19 x i64]* %t), !dbg !1060 ; [debug line = 836:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqz), !dbg !1061 ; [debug line = 839:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqz, [19 x i64]* %nqz2), !dbg !1062 ; [debug line = 842:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqz2, [19 x i64]* %t), !dbg !1063 ; [debug line = 845:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqpqx), !dbg !1064 ; [debug line = 848:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqx, [19 x i64]* %nqpqx2), !dbg !1065 ; [debug line = 851:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqx2, [19 x i64]* %t), !dbg !1066 ; [debug line = 854:7]
  call fastcc void @_memcpy.1([19 x i64]* %t, [19 x i64]* %nqpqz), !dbg !1067 ; [debug line = 857:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqz, [19 x i64]* %nqpqz2), !dbg !1068 ; [debug line = 860:7]
  call fastcc void @_memcpy.1([19 x i64]* %nqpqz2, [19 x i64]* %t), !dbg !1069 ; [debug line = 863:7]
  %byte.1 = shl i8 %byte1, 1, !dbg !1070          ; [#uses=1 type=i8] [debug line = 873:7]
  call void @llvm.dbg.value(metadata !{i8 %byte.1}, i64 0, metadata !1048), !dbg !1070 ; [debug line = 873:7] [debug variable = byte]
  %j.4 = add i4 %j, 1, !dbg !1071                 ; [#uses=1 type=i4] [debug line = 808:24]
  call void @llvm.dbg.value(metadata !{i4 %j.4}, i64 0, metadata !1072), !dbg !1071 ; [debug line = 808:24] [debug variable = j]
  br label %28, !dbg !1071                        ; [debug line = 808:24]

; <label>:31                                      ; preds = %28
  %i.23 = add i6 %i, 1, !dbg !1073                ; [#uses=1 type=i6] [debug line = 806:23]
  call void @llvm.dbg.value(metadata !{i6 %i.23}, i64 0, metadata !1074), !dbg !1073 ; [debug line = 806:23] [debug variable = i]
  br label %_memcpy.3.exit, !dbg !1073            ; [debug line = 806:23]

.preheader:                                       ; preds = %33, %.preheader.preheader
  %i.i5 = phi i4 [ %i.22, %33 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond.i6 = icmp eq i4 %i.i5, -6, !dbg !1045 ; [#uses=1 type=i1] [debug line = 61:6@877:3]
  %32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i6, label %_memcpy.exit.preheader, label %33, !dbg !1045 ; [debug line = 61:6@877:3]

_memcpy.exit.preheader:                           ; preds = %.preheader
  br label %_memcpy.exit, !dbg !1075              ; [debug line = 61:6@878:3]

; <label>:33                                      ; preds = %.preheader
  %tmp.i7 = zext i4 %i.i5 to i64, !dbg !1077      ; [#uses=2 type=i64] [debug line = 62:3@877:3]
  %nqx.addr.2 = getelementptr [19 x i64]* %nqx, i64 0, i64 %tmp.i7, !dbg !1077 ; [#uses=1 type=i64*] [debug line = 62:3@877:3]
  %nqx.load = load i64* %nqx.addr.2, align 8, !dbg !1077 ; [#uses=1 type=i64] [debug line = 62:3@877:3]
  %resultx.addr = getelementptr [10 x i64]* %resultx, i64 0, i64 %tmp.i7, !dbg !1077 ; [#uses=1 type=i64*] [debug line = 62:3@877:3]
  store i64 %nqx.load, i64* %resultx.addr, align 8, !dbg !1077 ; [debug line = 62:3@877:3]
  %i.22 = add i4 %i.i5, 1, !dbg !1078             ; [#uses=1 type=i4] [debug line = 61:18@877:3]
  call void @llvm.dbg.value(metadata !{i4 %i.22}, i64 0, metadata !1079), !dbg !1078 ; [debug line = 61:18@877:3] [debug variable = i]
  br label %.preheader, !dbg !1078                ; [debug line = 61:18@877:3]

_memcpy.exit:                                     ; preds = %35, %_memcpy.exit.preheader
  %i.i4 = phi i4 [ %i.24, %35 ], [ 0, %_memcpy.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond.i3 = icmp eq i4 %i.i4, -6, !dbg !1075 ; [#uses=1 type=i1] [debug line = 61:6@878:3]
  %34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond.i3, label %_memcpy.2.exit, label %35, !dbg !1075 ; [debug line = 61:6@878:3]

; <label>:35                                      ; preds = %_memcpy.exit
  %tmp.i6 = zext i4 %i.i4 to i64, !dbg !1080      ; [#uses=2 type=i64] [debug line = 62:3@878:3]
  %nqz.addr.1 = getelementptr [19 x i64]* %nqz, i64 0, i64 %tmp.i6, !dbg !1080 ; [#uses=1 type=i64*] [debug line = 62:3@878:3]
  %nqz.load = load i64* %nqz.addr.1, align 8, !dbg !1080 ; [#uses=1 type=i64] [debug line = 62:3@878:3]
  %resultz.addr = getelementptr [11 x i64]* %resultz, i64 0, i64 %tmp.i6, !dbg !1080 ; [#uses=1 type=i64*] [debug line = 62:3@878:3]
  store i64 %nqz.load, i64* %resultz.addr, align 8, !dbg !1080 ; [debug line = 62:3@878:3]
  %i.24 = add i4 %i.i4, 1, !dbg !1081             ; [#uses=1 type=i4] [debug line = 61:18@878:3]
  call void @llvm.dbg.value(metadata !{i4 %i.24}, i64 0, metadata !1082), !dbg !1081 ; [debug line = 61:18@878:3] [debug variable = i]
  br label %_memcpy.exit, !dbg !1081              ; [debug line = 61:18@878:3]

_memcpy.2.exit:                                   ; preds = %_memcpy.exit
  ret void, !dbg !1083                            ; [debug line = 879:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=31]
declare void @_ssdm_op_SpecResourceLimit(...) nounwind

; [#uses=53]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone

; [#uses=1]
declare i31 @_ssdm_op_BitConcatenate.i31.i7.i8.i8.i8(i7, i8, i8, i8) nounwind readnone

; [#uses=2]
declare i30 @_ssdm_op_BitConcatenate.i30.i6.i8.i8.i8(i6, i8, i8, i8) nounwind readnone

; [#uses=1]
declare i29 @_ssdm_op_BitConcatenate.i29.i5.i8.i8.i8(i5, i8, i8, i8) nounwind readnone

; [#uses=1]
declare i28 @_ssdm_op_BitConcatenate.i28.i4.i8.i8.i8(i4, i8, i8, i8) nounwind readnone

; [#uses=2]
declare i27 @_ssdm_op_BitConcatenate.i27.i3.i8.i8.i8(i3, i8, i8, i8) nounwind readnone

; [#uses=1]
declare i26 @_ssdm_op_BitConcatenate.i26.i2.i8.i8.i8(i2, i8, i8, i8) nounwind readnone

; [#uses=1]
declare i25 @_ssdm_op_BitConcatenate.i25.i1.i8.i8.i8(i1, i8, i8, i8) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=6]
define internal fastcc void @_memcpy_char([32 x i8]* nocapture %dst, [32 x i8]* nocapture %src) {
  call void @llvm.dbg.value(metadata !{[32 x i8]* %dst}, i64 0, metadata !1084), !dbg !1085 ; [debug line = 66:34] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %src}, i64 0, metadata !1086), !dbg !1087 ; [debug line = 66:54] [debug variable = src]
  br label %1, !dbg !1088                         ; [debug line = 68:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i6 [ 0, %0 ], [ %i.25, %3 ]            ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %i, -32, !dbg !1088      ; [#uses=1 type=i1] [debug line = 68:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !1088 ; [debug line = 68:6]

; <label>:3                                       ; preds = %1
  %tmp = zext i6 %i to i64, !dbg !1091            ; [#uses=2 type=i64] [debug line = 69:3]
  %src.addr = getelementptr [32 x i8]* %src, i64 0, i64 %tmp, !dbg !1091 ; [#uses=1 type=i8*] [debug line = 69:3]
  %src.load = load i8* %src.addr, align 1, !dbg !1091 ; [#uses=1 type=i8] [debug line = 69:3]
  %dst.addr = getelementptr [32 x i8]* %dst, i64 0, i64 %tmp, !dbg !1091 ; [#uses=1 type=i8*] [debug line = 69:3]
  store i8 %src.load, i8* %dst.addr, align 1, !dbg !1091 ; [debug line = 69:3]
  %i.25 = add i6 %i, 1, !dbg !1093                ; [#uses=1 type=i6] [debug line = 68:18]
  call void @llvm.dbg.value(metadata !{i6 %i.25}, i64 0, metadata !1094), !dbg !1093 ; [debug line = 68:18] [debug variable = i]
  br label %1, !dbg !1093                         ; [debug line = 68:18]

; <label>:4                                       ; preds = %1
  ret void, !dbg !1095                            ; [debug line = 71:1]
}

; [#uses=12]
define internal fastcc void @_memcpy.1([19 x i64]* nocapture %dst, [19 x i64]* nocapture %src) {
  call void (...)* @_ssdm_SpecKeepAssert(i32 19), !hlsrange !1096
  br label %1, !dbg !1097                         ; [debug line = 61:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.26, %3 ]            ; [#uses=3 type=i5]
  %exitcond = icmp eq i5 %i, -13, !dbg !1097      ; [#uses=1 type=i1] [debug line = 61:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !1097 ; [debug line = 61:6]

; <label>:3                                       ; preds = %1
  %tmp = zext i5 %i to i64, !dbg !1098            ; [#uses=2 type=i64] [debug line = 62:3]
  %src.addr = getelementptr [19 x i64]* %src, i64 0, i64 %tmp, !dbg !1098 ; [#uses=1 type=i64*] [debug line = 62:3]
  %src.load = load i64* %src.addr, align 8, !dbg !1098 ; [#uses=1 type=i64] [debug line = 62:3]
  %dst.addr = getelementptr [19 x i64]* %dst, i64 0, i64 %tmp, !dbg !1098 ; [#uses=1 type=i64*] [debug line = 62:3]
  store i64 %src.load, i64* %dst.addr, align 8, !dbg !1098 ; [debug line = 62:3]
  %i.26 = add i5 %i, 1, !dbg !1099                ; [#uses=1 type=i5] [debug line = 61:18]
  call void @llvm.dbg.value(metadata !{i5 %i.26}, i64 0, metadata !1100), !dbg !1099 ; [debug line = 61:18] [debug variable = i]
  br label %1, !dbg !1099                         ; [debug line = 61:18]

; <label>:4                                       ; preds = %1
  ret void, !dbg !1101                            ; [debug line = 64:1]
}

; [#uses=3]
define internal fastcc void @_memcpy([10 x i64]* nocapture %dst, [19 x i64]* nocapture %src) {
  call void @llvm.dbg.value(metadata !{[10 x i64]* %dst}, i64 0, metadata !1102), !dbg !1103 ; [debug line = 59:20] [debug variable = dst]
  call void @llvm.dbg.value(metadata !{[19 x i64]* %src}, i64 0, metadata !1104), !dbg !1105 ; [debug line = 59:31] [debug variable = src]
  br label %1, !dbg !1097                         ; [debug line = 61:6]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.27, %3 ]            ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -6, !dbg !1097       ; [#uses=1 type=i1] [debug line = 61:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !1097 ; [debug line = 61:6]

; <label>:3                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !1098            ; [#uses=2 type=i64] [debug line = 62:3]
  %src.addr = getelementptr [19 x i64]* %src, i64 0, i64 %tmp, !dbg !1098 ; [#uses=1 type=i64*] [debug line = 62:3]
  %src.load = load i64* %src.addr, align 8, !dbg !1098 ; [#uses=1 type=i64] [debug line = 62:3]
  %dst.addr = getelementptr [10 x i64]* %dst, i64 0, i64 %tmp, !dbg !1098 ; [#uses=1 type=i64*] [debug line = 62:3]
  store i64 %src.load, i64* %dst.addr, align 8, !dbg !1098 ; [debug line = 62:3]
  %i.27 = add i4 %i, 1, !dbg !1099                ; [#uses=1 type=i4] [debug line = 61:18]
  call void @llvm.dbg.value(metadata !{i4 %i.27}, i64 0, metadata !1100), !dbg !1099 ; [debug line = 61:18] [debug variable = i]
  br label %1, !dbg !1099                         ; [debug line = 61:18]

; <label>:4                                       ; preds = %1
  ret void, !dbg !1101                            ; [debug line = 64:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!78, !85, !87, !91, !97, !103, !103, !107, !112, !118, !118, !112, !123, !125, !129, !129, !131, !137, !143, !129, !129, !146, !148}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/curve25519/solution1/.autopilot/db/curve25519-donna.pragma.2.c", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21, metadata !24, metadata !33, metadata !36, metadata !41, metadata !42, metadata !47, metadata !50, metadata !53, metadata !54, metadata !55, metadata !56, metadata !59, metadata !60, metadata !61, metadata !64, metadata !67, metadata !70, metadata !71, metadata !72, metadata !75}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"", metadata !6, i32 59, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 59} ; [ DW_TAG_subprogram ]
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
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"curve25519_donna", metadata !"curve25519_donna", metadata !"", metadata !6, i32 954, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 955} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{metadata !27, metadata !28, metadata !31, metadata !31, metadata !28, metadata !31, metadata !31}
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786454, null, metadata !"u8", metadata !6, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fcontract", metadata !"fcontract", metadata !"", metadata !6, i32 525, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 525} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !28, metadata !9}
!36 = metadata !{i32 786478, i32 0, metadata !6, metadata !"s32_eq", metadata !"s32_eq", metadata !"", metadata !6, i32 502, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 502} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !39, metadata !39, metadata !39}
!39 = metadata !{i32 786454, null, metadata !"s32", metadata !6, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 786454, null, metadata !"int32_t", metadata !6, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 786478, i32 0, metadata !6, metadata !"s32_gte", metadata !"s32_gte", metadata !"", metadata !6, i32 514, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 514} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fmul", metadata !"fmul", metadata !"", metadata !6, i32 352, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 352} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !9, metadata !45, metadata !45}
!45 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786478, i32 0, metadata !6, metadata !"freduce_coefficients", metadata !"freduce_coefficients", metadata !"", metadata !6, i32 302, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 302} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !9}
!50 = metadata !{i32 786478, i32 0, metadata !6, metadata !"div_by_2_25", metadata !"div_by_2_25", metadata !"", metadata !6, i32 287, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 288} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !10, metadata !46}
!53 = metadata !{i32 786478, i32 0, metadata !6, metadata !"div_by_2_26", metadata !"div_by_2_26", metadata !"", metadata !6, i32 271, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 272} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !6, metadata !"freduce_degree", metadata !"freduce_degree", metadata !"", metadata !6, i32 229, metadata !48, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 229} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fproduct", metadata !"fproduct", metadata !"", metadata !6, i32 120, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 120} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786478, i32 0, metadata !6, metadata !"crecip", metadata !"crecip", metadata !"", metadata !6, i32 885, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 885} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !9, metadata !45}
!59 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fsquare", metadata !"fsquare", metadata !"", metadata !6, i32 462, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 462} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fsquare_inner", metadata !"fsquare_inner", metadata !"", metadata !6, i32 368, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 368} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786478, i32 0, metadata !6, metadata !"cmult", metadata !"cmult", metadata !"", metadata !6, i32 792, metadata !62, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 792} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !9, metadata !9, metadata !31, metadata !45}
!64 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fmonty", metadata !"fmonty", metadata !"", metadata !6, i32 678, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 682} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !45}
!67 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fscalar_product", metadata !"fscalar_product", metadata !"", metadata !6, i32 107, metadata !68, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 107} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !9, metadata !45, metadata !46}
!70 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fdifference", metadata !"fdifference", metadata !"", metadata !6, i32 99, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 99} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fsum", metadata !"fsum", metadata !"", metadata !6, i32 89, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 89} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap_conditional", metadata !"swap_conditional", metadata !"", metadata !6, i32 775, metadata !73, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 775} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !9, metadata !9, metadata !10}
!75 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fexpand", metadata !"fexpand", metadata !"", metadata !6, i32 478, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 478} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !9, metadata !31}
!78 = metadata !{null, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
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
!91 = metadata !{null, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !84}
!92 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!93 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*", metadata !"u8*"}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"const", metadata !"", metadata !"const", metadata !"const"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"mypublic_in", metadata !"secret_in", metadata !"basepoint_in", metadata !"mypublic_out", metadata !"secret_out", metadata !"basepoint_out"}
!97 = metadata !{null, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !84}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!99 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"u8*", metadata !"limb*"}
!101 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"input_limbs"}
!103 = metadata !{null, metadata !104, metadata !99, metadata !105, metadata !101, metadata !106, metadata !84}
!104 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"s32", metadata !"s32"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!107 = metadata !{null, metadata !108, metadata !80, metadata !109, metadata !110, metadata !111, metadata !84}
!108 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb*"}
!110 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"const"}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in", metadata !"in2"}
!112 = metadata !{null, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !84}
!113 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!114 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"limb*"}
!116 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"output"}
!118 = metadata !{null, metadata !119, metadata !114, metadata !120, metadata !121, metadata !122, metadata !84}
!119 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"limb"}
!121 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!123 = metadata !{null, metadata !108, metadata !80, metadata !109, metadata !110, metadata !124, metadata !84}
!124 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in2", metadata !"in"}
!125 = metadata !{null, metadata !98, metadata !99, metadata !126, metadata !127, metadata !128, metadata !84}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*"}
!127 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const"}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"z"}
!129 = metadata !{null, metadata !98, metadata !99, metadata !126, metadata !127, metadata !130, metadata !84}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in"}
!131 = metadata !{null, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !84}
!132 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!133 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"u8*", metadata !"limb*"}
!135 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"const", metadata !"const"}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"resultx", metadata !"resultz", metadata !"n", metadata !"q"}
!137 = metadata !{null, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !84}
!138 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!139 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*", metadata !"limb*"}
!141 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"const"}
!142 = metadata !{metadata !"kernel_arg_name", metadata !"x2", metadata !"z2", metadata !"x3", metadata !"z3", metadata !"x", metadata !"z", metadata !"xprime", metadata !"zprime", metadata !"qmqp"}
!143 = metadata !{null, metadata !79, metadata !80, metadata !144, metadata !110, metadata !145, metadata !84}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"limb*", metadata !"limb"}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"in", metadata !"scalar"}
!146 = metadata !{null, metadata !79, metadata !80, metadata !144, metadata !82, metadata !147, metadata !84}
!147 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"iswap"}
!148 = metadata !{null, metadata !98, metadata !99, metadata !149, metadata !127, metadata !150, metadata !84}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"limb*", metadata !"u8*"}
!150 = metadata !{metadata !"kernel_arg_name", metadata !"output", metadata !"input"}
!151 = metadata !{i32 786689, metadata !72, metadata !"a", null, i32 775, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !10, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786465, i64 0, i64 18}      ; [ DW_TAG_subrange_type ]
!155 = metadata !{i32 775, i32 23, metadata !72, null}
!156 = metadata !{i32 786689, metadata !72, metadata !"b", null, i32 775, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 775, i32 35, metadata !72, null}
!158 = metadata !{i32 786689, metadata !72, metadata !"iswap", metadata !6, i32 50332423, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 775, i32 47, metadata !72, null}
!160 = metadata !{i32 777, i32 32, metadata !161, null}
!161 = metadata !{i32 786443, metadata !72, i32 775, i32 54, metadata !6, i32 79} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786688, metadata !161, metadata !"swap", metadata !6, i32 777, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ]
!164 = metadata !{i32 779, i32 8, metadata !165, null}
!165 = metadata !{i32 786443, metadata !161, i32 779, i32 3, metadata !6, i32 80} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 780, i32 55, metadata !167, null}
!167 = metadata !{i32 786443, metadata !165, i32 779, i32 28, metadata !6, i32 81} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786688, metadata !167, metadata !"x", metadata !6, i32 780, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 781, i32 5, metadata !167, null}
!170 = metadata !{i32 782, i32 5, metadata !167, null}
!171 = metadata !{i32 779, i32 23, metadata !165, null}
!172 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !6, i32 776, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 784, i32 1, metadata !161, null}
!174 = metadata !{i32 786689, metadata !71, metadata !"output", null, i32 89, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 89, i32 24, metadata !71, null}
!176 = metadata !{i32 786689, metadata !71, metadata !"in", null, i32 89, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !46, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ]
!178 = metadata !{i32 89, i32 44, metadata !71, null}
!179 = metadata !{i32 91, i32 8, metadata !180, null}
!180 = metadata !{i32 786443, metadata !181, i32 91, i32 3, metadata !6, i32 77} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !71, i32 89, i32 48, metadata !6, i32 76} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 92, i32 5, metadata !183, null}
!183 = metadata !{i32 786443, metadata !180, i32 91, i32 31, metadata !6, i32 78} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 93, i32 5, metadata !183, null}
!185 = metadata !{i32 91, i32 23, metadata !180, null}
!186 = metadata !{i32 786688, metadata !181, metadata !"i", metadata !6, i32 90, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 95, i32 1, metadata !181, null}
!188 = metadata !{i32 369, i32 1, metadata !189, null}
!189 = metadata !{i32 786443, metadata !60, i32 368, i32 57, metadata !6, i32 63} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 370, i32 1, metadata !189, null}
!191 = metadata !{i32 371, i32 53, metadata !189, null}
!192 = metadata !{i32 786688, metadata !189, metadata !"out_1", metadata !6, i32 371, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 374, i32 3, metadata !189, null}
!194 = metadata !{i32 378, i32 3, metadata !189, null}
!195 = metadata !{i32 383, i32 3, metadata !189, null}
!196 = metadata !{i32 386, i32 3, metadata !189, null}
!197 = metadata !{i32 389, i32 3, metadata !189, null}
!198 = metadata !{i32 393, i32 3, metadata !189, null}
!199 = metadata !{i32 397, i32 3, metadata !189, null}
!200 = metadata !{i32 402, i32 3, metadata !189, null}
!201 = metadata !{i32 407, i32 3, metadata !189, null}
!202 = metadata !{i32 413, i32 3, metadata !189, null}
!203 = metadata !{i32 419, i32 3, metadata !189, null}
!204 = metadata !{i32 425, i32 3, metadata !189, null}
!205 = metadata !{i32 430, i32 3, metadata !189, null}
!206 = metadata !{i32 435, i32 3, metadata !189, null}
!207 = metadata !{i32 439, i32 3, metadata !189, null}
!208 = metadata !{i32 443, i32 3, metadata !189, null}
!209 = metadata !{i32 446, i32 3, metadata !189, null}
!210 = metadata !{i32 449, i32 3, metadata !189, null}
!211 = metadata !{i32 451, i32 3, metadata !189, null}
!212 = metadata !{i32 452, i32 1, metadata !189, null}
!213 = metadata !{i32 786689, metadata !60, metadata !"output", null, i32 368, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 368, i32 33, metadata !60, null}
!215 = metadata !{i32 786689, metadata !60, metadata !"in", null, i32 368, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !46, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ]
!219 = metadata !{i32 368, i32 53, metadata !60, null}
!220 = metadata !{i32 463, i32 1, metadata !221, null}
!221 = metadata !{i32 786443, metadata !59, i32 462, i32 39, metadata !6, i32 62} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 464, i32 1, metadata !221, null}
!223 = metadata !{i32 786688, metadata !221, metadata !"t", metadata !6, i32 465, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1216, i64 64, i32 0, i32 0, metadata !10, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ]
!225 = metadata !{i32 465, i32 7, metadata !221, null}
!226 = metadata !{i32 466, i32 3, metadata !221, null}
!227 = metadata !{i32 786689, metadata !54, metadata !"output", null, i32 229, metadata !152, i32 0, metadata !228} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 470, i32 3, metadata !221, null}
!229 = metadata !{i32 229, i32 34, metadata !54, metadata !228}
!230 = metadata !{i32 234, i32 3, metadata !231, metadata !228}
!231 = metadata !{i32 786443, metadata !54, i32 229, i32 42, metadata !6, i32 47} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 235, i32 3, metadata !231, metadata !228}
!233 = metadata !{i32 236, i32 3, metadata !231, metadata !228}
!234 = metadata !{i32 237, i32 3, metadata !231, metadata !228}
!235 = metadata !{i32 238, i32 3, metadata !231, metadata !228}
!236 = metadata !{i32 239, i32 3, metadata !231, metadata !228}
!237 = metadata !{i32 240, i32 3, metadata !231, metadata !228}
!238 = metadata !{i32 241, i32 3, metadata !231, metadata !228}
!239 = metadata !{i32 242, i32 3, metadata !231, metadata !228}
!240 = metadata !{i32 243, i32 3, metadata !231, metadata !228}
!241 = metadata !{i32 244, i32 3, metadata !231, metadata !228}
!242 = metadata !{i32 245, i32 3, metadata !231, metadata !228}
!243 = metadata !{i32 246, i32 3, metadata !231, metadata !228}
!244 = metadata !{i32 247, i32 3, metadata !231, metadata !228}
!245 = metadata !{i32 248, i32 3, metadata !231, metadata !228}
!246 = metadata !{i32 249, i32 3, metadata !231, metadata !228}
!247 = metadata !{i32 250, i32 3, metadata !231, metadata !228}
!248 = metadata !{i32 251, i32 3, metadata !231, metadata !228}
!249 = metadata !{i32 252, i32 3, metadata !231, metadata !228}
!250 = metadata !{i32 253, i32 3, metadata !231, metadata !228}
!251 = metadata !{i32 254, i32 3, metadata !231, metadata !228}
!252 = metadata !{i32 255, i32 3, metadata !231, metadata !228}
!253 = metadata !{i32 256, i32 3, metadata !231, metadata !228}
!254 = metadata !{i32 257, i32 3, metadata !231, metadata !228}
!255 = metadata !{i32 258, i32 3, metadata !231, metadata !228}
!256 = metadata !{i32 259, i32 3, metadata !231, metadata !228}
!257 = metadata !{i32 260, i32 3, metadata !231, metadata !228}
!258 = metadata !{i32 786689, metadata !47, metadata !"output", null, i32 302, metadata !152, i32 0, metadata !259} ; [ DW_TAG_arg_variable ]
!259 = metadata !{i32 471, i32 3, metadata !221, null}
!260 = metadata !{i32 302, i32 40, metadata !47, metadata !259}
!261 = metadata !{i32 305, i32 3, metadata !262, metadata !259}
!262 = metadata !{i32 786443, metadata !47, i32 302, i32 48, metadata !6, i32 41} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 307, i32 8, metadata !264, metadata !259}
!264 = metadata !{i32 786443, metadata !262, i32 307, i32 3, metadata !6, i32 42} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 308, i32 17, metadata !266, metadata !259}
!266 = metadata !{i32 786443, metadata !264, i32 307, i32 31, metadata !6, i32 43} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, metadata !265} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 271, i32 24, metadata !53, metadata !265}
!269 = metadata !{i32 274, i32 62, metadata !270, metadata !265}
!270 = metadata !{i32 786443, metadata !53, i32 272, i32 1, metadata !6, i32 46} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 276, i32 50, metadata !270, metadata !265}
!272 = metadata !{i32 280, i32 3, metadata !270, metadata !265}
!273 = metadata !{i32 786688, metadata !266, metadata !"over", metadata !6, i32 308, metadata !10, i32 0, metadata !259} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 313, i32 5, metadata !266, metadata !259}
!275 = metadata !{i32 314, i32 5, metadata !266, metadata !259}
!276 = metadata !{i32 786689, metadata !50, metadata !"v", metadata !6, i32 16777503, metadata !46, i32 0, metadata !277} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 322, i32 12, metadata !266, metadata !259}
!278 = metadata !{i32 287, i32 24, metadata !50, metadata !277}
!279 = metadata !{i32 290, i32 62, metadata !280, metadata !277}
!280 = metadata !{i32 786443, metadata !50, i32 288, i32 1, metadata !6, i32 45} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 292, i32 50, metadata !280, metadata !277}
!282 = metadata !{i32 296, i32 3, metadata !280, metadata !277}
!283 = metadata !{i32 323, i32 5, metadata !266, metadata !259}
!284 = metadata !{i32 324, i32 5, metadata !266, metadata !259}
!285 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !6, i32 303, metadata !13, i32 0, metadata !259} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 307, i32 23, metadata !264, metadata !259}
!287 = metadata !{i32 327, i32 3, metadata !262, metadata !259}
!288 = metadata !{i32 328, i32 3, metadata !262, metadata !259}
!289 = metadata !{i32 329, i32 3, metadata !262, metadata !259}
!290 = metadata !{i32 331, i32 3, metadata !262, metadata !259}
!291 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, metadata !292} ; [ DW_TAG_arg_variable ]
!292 = metadata !{i32 336, i32 17, metadata !293, metadata !259}
!293 = metadata !{i32 786443, metadata !262, i32 335, i32 3, metadata !6, i32 44} ; [ DW_TAG_lexical_block ]
!294 = metadata !{i32 271, i32 24, metadata !53, metadata !292}
!295 = metadata !{i32 274, i32 62, metadata !270, metadata !292}
!296 = metadata !{i32 276, i32 50, metadata !270, metadata !292}
!297 = metadata !{i32 280, i32 3, metadata !270, metadata !292}
!298 = metadata !{i32 786688, metadata !293, metadata !"over", metadata !6, i32 336, metadata !10, i32 0, metadata !259} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 337, i32 5, metadata !293, metadata !259}
!300 = metadata !{i32 338, i32 5, metadata !293, metadata !259}
!301 = metadata !{i32 786689, metadata !5, metadata !"dst", null, i32 59, metadata !302, i32 0, metadata !305} ; [ DW_TAG_arg_variable ]
!302 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !10, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ]
!303 = metadata !{metadata !304}
!304 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ]
!305 = metadata !{i32 473, i32 3, metadata !221, null}
!306 = metadata !{i32 59, i32 20, metadata !5, metadata !305}
!307 = metadata !{i32 786689, metadata !5, metadata !"src", null, i32 59, metadata !152, i32 0, metadata !305} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 59, i32 31, metadata !5, metadata !305}
!309 = metadata !{i32 61, i32 6, metadata !310, metadata !305}
!310 = metadata !{i32 786443, metadata !311, i32 61, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 786443, metadata !5, i32 59, i32 53, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 62, i32 3, metadata !313, metadata !305}
!313 = metadata !{i32 786443, metadata !310, i32 61, i32 22, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!314 = metadata !{i32 61, i32 18, metadata !310, metadata !305}
!315 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !305} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 474, i32 1, metadata !221, null}
!317 = metadata !{i32 786689, metadata !59, metadata !"output", null, i32 462, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!318 = metadata !{i32 462, i32 15, metadata !59, null}
!319 = metadata !{i32 786689, metadata !59, metadata !"in", null, i32 462, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!320 = metadata !{i32 462, i32 35, metadata !59, null}
!321 = metadata !{i32 786689, metadata !54, metadata !"output", null, i32 229, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!322 = metadata !{i32 229, i32 34, metadata !54, null}
!323 = metadata !{i32 234, i32 3, metadata !231, null}
!324 = metadata !{i32 235, i32 3, metadata !231, null}
!325 = metadata !{i32 236, i32 3, metadata !231, null}
!326 = metadata !{i32 237, i32 3, metadata !231, null}
!327 = metadata !{i32 238, i32 3, metadata !231, null}
!328 = metadata !{i32 239, i32 3, metadata !231, null}
!329 = metadata !{i32 240, i32 3, metadata !231, null}
!330 = metadata !{i32 241, i32 3, metadata !231, null}
!331 = metadata !{i32 242, i32 3, metadata !231, null}
!332 = metadata !{i32 243, i32 3, metadata !231, null}
!333 = metadata !{i32 244, i32 3, metadata !231, null}
!334 = metadata !{i32 245, i32 3, metadata !231, null}
!335 = metadata !{i32 246, i32 3, metadata !231, null}
!336 = metadata !{i32 247, i32 3, metadata !231, null}
!337 = metadata !{i32 248, i32 3, metadata !231, null}
!338 = metadata !{i32 249, i32 3, metadata !231, null}
!339 = metadata !{i32 250, i32 3, metadata !231, null}
!340 = metadata !{i32 251, i32 3, metadata !231, null}
!341 = metadata !{i32 252, i32 3, metadata !231, null}
!342 = metadata !{i32 253, i32 3, metadata !231, null}
!343 = metadata !{i32 254, i32 3, metadata !231, null}
!344 = metadata !{i32 255, i32 3, metadata !231, null}
!345 = metadata !{i32 256, i32 3, metadata !231, null}
!346 = metadata !{i32 257, i32 3, metadata !231, null}
!347 = metadata !{i32 258, i32 3, metadata !231, null}
!348 = metadata !{i32 259, i32 3, metadata !231, null}
!349 = metadata !{i32 260, i32 3, metadata !231, null}
!350 = metadata !{i32 261, i32 1, metadata !231, null}
!351 = metadata !{i32 786689, metadata !47, metadata !"output", null, i32 302, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!352 = metadata !{i32 302, i32 40, metadata !47, null}
!353 = metadata !{i32 305, i32 3, metadata !262, null}
!354 = metadata !{i32 307, i32 8, metadata !264, null}
!355 = metadata !{i32 308, i32 17, metadata !266, null}
!356 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, metadata !355} ; [ DW_TAG_arg_variable ]
!357 = metadata !{i32 271, i32 24, metadata !53, metadata !355}
!358 = metadata !{i32 274, i32 62, metadata !270, metadata !355}
!359 = metadata !{i32 276, i32 50, metadata !270, metadata !355}
!360 = metadata !{i32 280, i32 3, metadata !270, metadata !355}
!361 = metadata !{i32 786688, metadata !266, metadata !"over", metadata !6, i32 308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!362 = metadata !{i32 313, i32 5, metadata !266, null}
!363 = metadata !{i32 314, i32 5, metadata !266, null}
!364 = metadata !{i32 786689, metadata !50, metadata !"v", metadata !6, i32 16777503, metadata !46, i32 0, metadata !365} ; [ DW_TAG_arg_variable ]
!365 = metadata !{i32 322, i32 12, metadata !266, null}
!366 = metadata !{i32 287, i32 24, metadata !50, metadata !365}
!367 = metadata !{i32 290, i32 62, metadata !280, metadata !365}
!368 = metadata !{i32 292, i32 50, metadata !280, metadata !365}
!369 = metadata !{i32 296, i32 3, metadata !280, metadata !365}
!370 = metadata !{i32 323, i32 5, metadata !266, null}
!371 = metadata !{i32 324, i32 5, metadata !266, null}
!372 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !6, i32 303, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!373 = metadata !{i32 307, i32 23, metadata !264, null}
!374 = metadata !{i32 327, i32 3, metadata !262, null}
!375 = metadata !{i32 328, i32 3, metadata !262, null}
!376 = metadata !{i32 329, i32 3, metadata !262, null}
!377 = metadata !{i32 331, i32 3, metadata !262, null}
!378 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, metadata !379} ; [ DW_TAG_arg_variable ]
!379 = metadata !{i32 336, i32 17, metadata !293, null}
!380 = metadata !{i32 271, i32 24, metadata !53, metadata !379}
!381 = metadata !{i32 274, i32 62, metadata !270, metadata !379}
!382 = metadata !{i32 276, i32 50, metadata !270, metadata !379}
!383 = metadata !{i32 280, i32 3, metadata !270, metadata !379}
!384 = metadata !{i32 786688, metadata !293, metadata !"over", metadata !6, i32 336, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!385 = metadata !{i32 337, i32 5, metadata !293, null}
!386 = metadata !{i32 338, i32 5, metadata !293, null}
!387 = metadata !{i32 343, i32 1, metadata !262, null}
!388 = metadata !{i32 121, i32 1, metadata !389, null}
!389 = metadata !{i32 786443, metadata !55, i32 120, i32 69, metadata !6, i32 48} ; [ DW_TAG_lexical_block ]
!390 = metadata !{i32 122, i32 1, metadata !389, null}
!391 = metadata !{i32 123, i32 2, metadata !389, null}
!392 = metadata !{i32 124, i32 3, metadata !389, null}
!393 = metadata !{i32 126, i32 3, metadata !389, null}
!394 = metadata !{i32 129, i32 3, metadata !389, null}
!395 = metadata !{i32 133, i32 3, metadata !389, null}
!396 = metadata !{i32 138, i32 3, metadata !389, null}
!397 = metadata !{i32 144, i32 3, metadata !389, null}
!398 = metadata !{i32 151, i32 3, metadata !389, null}
!399 = metadata !{i32 159, i32 3, metadata !389, null}
!400 = metadata !{i32 168, i32 3, metadata !389, null}
!401 = metadata !{i32 178, i32 3, metadata !389, null}
!402 = metadata !{i32 187, i32 3, metadata !389, null}
!403 = metadata !{i32 195, i32 3, metadata !389, null}
!404 = metadata !{i32 202, i32 3, metadata !389, null}
!405 = metadata !{i32 208, i32 3, metadata !389, null}
!406 = metadata !{i32 213, i32 3, metadata !389, null}
!407 = metadata !{i32 217, i32 3, metadata !389, null}
!408 = metadata !{i32 220, i32 3, metadata !389, null}
!409 = metadata !{i32 222, i32 3, metadata !389, null}
!410 = metadata !{i32 223, i32 1, metadata !389, null}
!411 = metadata !{i32 786689, metadata !55, metadata !"output", null, i32 120, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!412 = metadata !{i32 120, i32 28, metadata !55, null}
!413 = metadata !{i32 786689, metadata !55, metadata !"in2", null, i32 120, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!414 = metadata !{i32 120, i32 48, metadata !55, null}
!415 = metadata !{i32 786689, metadata !55, metadata !"in", null, i32 120, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!416 = metadata !{i32 120, i32 65, metadata !55, null}
!417 = metadata !{i32 786688, metadata !418, metadata !"t", metadata !6, i32 353, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!418 = metadata !{i32 786443, metadata !42, i32 352, i32 53, metadata !6, i32 40} ; [ DW_TAG_lexical_block ]
!419 = metadata !{i32 353, i32 8, metadata !418, null}
!420 = metadata !{i32 354, i32 3, metadata !418, null}
!421 = metadata !{i32 786689, metadata !54, metadata !"output", null, i32 229, metadata !152, i32 0, metadata !422} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 356, i32 3, metadata !418, null}
!423 = metadata !{i32 229, i32 34, metadata !54, metadata !422}
!424 = metadata !{i32 234, i32 3, metadata !231, metadata !422}
!425 = metadata !{i32 235, i32 3, metadata !231, metadata !422}
!426 = metadata !{i32 236, i32 3, metadata !231, metadata !422}
!427 = metadata !{i32 237, i32 3, metadata !231, metadata !422}
!428 = metadata !{i32 238, i32 3, metadata !231, metadata !422}
!429 = metadata !{i32 239, i32 3, metadata !231, metadata !422}
!430 = metadata !{i32 240, i32 3, metadata !231, metadata !422}
!431 = metadata !{i32 241, i32 3, metadata !231, metadata !422}
!432 = metadata !{i32 242, i32 3, metadata !231, metadata !422}
!433 = metadata !{i32 243, i32 3, metadata !231, metadata !422}
!434 = metadata !{i32 244, i32 3, metadata !231, metadata !422}
!435 = metadata !{i32 245, i32 3, metadata !231, metadata !422}
!436 = metadata !{i32 246, i32 3, metadata !231, metadata !422}
!437 = metadata !{i32 247, i32 3, metadata !231, metadata !422}
!438 = metadata !{i32 248, i32 3, metadata !231, metadata !422}
!439 = metadata !{i32 249, i32 3, metadata !231, metadata !422}
!440 = metadata !{i32 250, i32 3, metadata !231, metadata !422}
!441 = metadata !{i32 251, i32 3, metadata !231, metadata !422}
!442 = metadata !{i32 252, i32 3, metadata !231, metadata !422}
!443 = metadata !{i32 253, i32 3, metadata !231, metadata !422}
!444 = metadata !{i32 254, i32 3, metadata !231, metadata !422}
!445 = metadata !{i32 255, i32 3, metadata !231, metadata !422}
!446 = metadata !{i32 256, i32 3, metadata !231, metadata !422}
!447 = metadata !{i32 257, i32 3, metadata !231, metadata !422}
!448 = metadata !{i32 258, i32 3, metadata !231, metadata !422}
!449 = metadata !{i32 259, i32 3, metadata !231, metadata !422}
!450 = metadata !{i32 260, i32 3, metadata !231, metadata !422}
!451 = metadata !{i32 786689, metadata !47, metadata !"output", null, i32 302, metadata !152, i32 0, metadata !452} ; [ DW_TAG_arg_variable ]
!452 = metadata !{i32 357, i32 3, metadata !418, null}
!453 = metadata !{i32 302, i32 40, metadata !47, metadata !452}
!454 = metadata !{i32 305, i32 3, metadata !262, metadata !452}
!455 = metadata !{i32 307, i32 8, metadata !264, metadata !452}
!456 = metadata !{i32 308, i32 17, metadata !266, metadata !452}
!457 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, metadata !456} ; [ DW_TAG_arg_variable ]
!458 = metadata !{i32 271, i32 24, metadata !53, metadata !456}
!459 = metadata !{i32 274, i32 62, metadata !270, metadata !456}
!460 = metadata !{i32 276, i32 50, metadata !270, metadata !456}
!461 = metadata !{i32 280, i32 3, metadata !270, metadata !456}
!462 = metadata !{i32 786688, metadata !266, metadata !"over", metadata !6, i32 308, metadata !10, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!463 = metadata !{i32 313, i32 5, metadata !266, metadata !452}
!464 = metadata !{i32 314, i32 5, metadata !266, metadata !452}
!465 = metadata !{i32 786689, metadata !50, metadata !"v", metadata !6, i32 16777503, metadata !46, i32 0, metadata !466} ; [ DW_TAG_arg_variable ]
!466 = metadata !{i32 322, i32 12, metadata !266, metadata !452}
!467 = metadata !{i32 287, i32 24, metadata !50, metadata !466}
!468 = metadata !{i32 290, i32 62, metadata !280, metadata !466}
!469 = metadata !{i32 292, i32 50, metadata !280, metadata !466}
!470 = metadata !{i32 296, i32 3, metadata !280, metadata !466}
!471 = metadata !{i32 323, i32 5, metadata !266, metadata !452}
!472 = metadata !{i32 324, i32 5, metadata !266, metadata !452}
!473 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !6, i32 303, metadata !13, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 307, i32 23, metadata !264, metadata !452}
!475 = metadata !{i32 327, i32 3, metadata !262, metadata !452}
!476 = metadata !{i32 328, i32 3, metadata !262, metadata !452}
!477 = metadata !{i32 329, i32 3, metadata !262, metadata !452}
!478 = metadata !{i32 331, i32 3, metadata !262, metadata !452}
!479 = metadata !{i32 786689, metadata !53, metadata !"v", metadata !6, i32 16777487, metadata !46, i32 0, metadata !480} ; [ DW_TAG_arg_variable ]
!480 = metadata !{i32 336, i32 17, metadata !293, metadata !452}
!481 = metadata !{i32 271, i32 24, metadata !53, metadata !480}
!482 = metadata !{i32 274, i32 62, metadata !270, metadata !480}
!483 = metadata !{i32 276, i32 50, metadata !270, metadata !480}
!484 = metadata !{i32 280, i32 3, metadata !270, metadata !480}
!485 = metadata !{i32 786688, metadata !293, metadata !"over", metadata !6, i32 336, metadata !10, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!486 = metadata !{i32 337, i32 5, metadata !293, metadata !452}
!487 = metadata !{i32 338, i32 5, metadata !293, metadata !452}
!488 = metadata !{i32 61, i32 6, metadata !310, metadata !489}
!489 = metadata !{i32 359, i32 3, metadata !418, null}
!490 = metadata !{i32 62, i32 3, metadata !313, metadata !489}
!491 = metadata !{i32 61, i32 18, metadata !310, metadata !489}
!492 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !489} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 360, i32 1, metadata !418, null}
!494 = metadata !{i32 786689, metadata !5, metadata !"dst", null, i32 59, metadata !302, i32 0, metadata !489} ; [ DW_TAG_arg_variable ]
!495 = metadata !{i32 59, i32 20, metadata !5, metadata !489}
!496 = metadata !{i32 786689, metadata !5, metadata !"src", null, i32 59, metadata !152, i32 0, metadata !489} ; [ DW_TAG_arg_variable ]
!497 = metadata !{i32 59, i32 31, metadata !5, metadata !489}
!498 = metadata !{i32 786689, metadata !42, metadata !"output", null, i32 352, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!499 = metadata !{i32 352, i32 12, metadata !42, null}
!500 = metadata !{i32 786689, metadata !42, metadata !"in", null, i32 352, metadata !501, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!501 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !46, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ]
!502 = metadata !{i32 352, i32 32, metadata !42, null}
!503 = metadata !{i32 786689, metadata !42, metadata !"in2", null, i32 352, metadata !501, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!504 = metadata !{i32 352, i32 48, metadata !42, null}
!505 = metadata !{i32 786689, metadata !67, metadata !"output", null, i32 107, metadata !152, i32 0, metadata !506} ; [ DW_TAG_arg_variable ]
!506 = metadata !{i32 750, i32 3, metadata !507, null}
!507 = metadata !{i32 786443, metadata !64, i32 682, i32 57, metadata !6, i32 69} ; [ DW_TAG_lexical_block ]
!508 = metadata !{i32 107, i32 35, metadata !67, metadata !506}
!509 = metadata !{i32 786689, metadata !21, metadata !"dst", null, i32 73, metadata !152, i32 0, metadata !510} ; [ DW_TAG_arg_variable ]
!510 = metadata !{i32 741, i32 3, metadata !507, null}
!511 = metadata !{i32 73, i32 20, metadata !21, metadata !510}
!512 = metadata !{i32 786689, metadata !67, metadata !"in", null, i32 107, metadata !177, i32 0, metadata !506} ; [ DW_TAG_arg_variable ]
!513 = metadata !{i32 107, i32 55, metadata !67, metadata !506}
!514 = metadata !{i32 786689, metadata !64, metadata !"x2", null, i32 678, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!515 = metadata !{i32 678, i32 26, metadata !64, null}
!516 = metadata !{i32 786689, metadata !64, metadata !"z2", null, i32 678, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!517 = metadata !{i32 678, i32 36, metadata !64, null}
!518 = metadata !{i32 786689, metadata !64, metadata !"x3", null, i32 679, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!519 = metadata !{i32 679, i32 26, metadata !64, null}
!520 = metadata !{i32 786689, metadata !64, metadata !"z3", null, i32 679, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!521 = metadata !{i32 679, i32 36, metadata !64, null}
!522 = metadata !{i32 786689, metadata !64, metadata !"x", null, i32 680, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!523 = metadata !{i32 680, i32 26, metadata !64, null}
!524 = metadata !{i32 786689, metadata !64, metadata !"z", null, i32 680, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!525 = metadata !{i32 680, i32 35, metadata !64, null}
!526 = metadata !{i32 786689, metadata !64, metadata !"xprime", null, i32 681, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!527 = metadata !{i32 681, i32 26, metadata !64, null}
!528 = metadata !{i32 786689, metadata !64, metadata !"zprime", null, i32 681, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!529 = metadata !{i32 681, i32 40, metadata !64, null}
!530 = metadata !{i32 786689, metadata !64, metadata !"qmqp", null, i32 682, metadata !501, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!531 = metadata !{i32 682, i32 32, metadata !64, null}
!532 = metadata !{i32 683, i32 1, metadata !507, null}
!533 = metadata !{i32 684, i32 1, metadata !507, null}
!534 = metadata !{i32 786688, metadata !507, metadata !"origx", metadata !6, i32 685, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!535 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !10, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ]
!536 = metadata !{i32 685, i32 7, metadata !507, null}
!537 = metadata !{i32 786688, metadata !507, metadata !"origxprime", metadata !6, i32 685, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!538 = metadata !{i32 685, i32 18, metadata !507, null}
!539 = metadata !{i32 786688, metadata !507, metadata !"zzz", metadata !6, i32 685, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!540 = metadata !{i32 685, i32 34, metadata !507, null}
!541 = metadata !{i32 786688, metadata !507, metadata !"xx", metadata !6, i32 685, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!542 = metadata !{i32 685, i32 43, metadata !507, null}
!543 = metadata !{i32 786688, metadata !507, metadata !"zz", metadata !6, i32 685, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!544 = metadata !{i32 685, i32 51, metadata !507, null}
!545 = metadata !{i32 786688, metadata !507, metadata !"xxprime", metadata !6, i32 685, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!546 = metadata !{i32 685, i32 59, metadata !507, null}
!547 = metadata !{i32 786688, metadata !507, metadata !"zzprime", metadata !6, i32 686, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!548 = metadata !{i32 686, i32 9, metadata !507, null}
!549 = metadata !{i32 786688, metadata !507, metadata !"zzzprime", metadata !6, i32 686, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!550 = metadata !{i32 686, i32 22, metadata !507, null}
!551 = metadata !{i32 786688, metadata !507, metadata !"xxxprime", metadata !6, i32 686, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!552 = metadata !{i32 686, i32 36, metadata !507, null}
!553 = metadata !{i32 690, i32 3, metadata !507, null}
!554 = metadata !{i32 691, i32 3, metadata !507, null}
!555 = metadata !{i32 693, i32 3, metadata !507, null}
!556 = metadata !{i32 696, i32 3, metadata !507, null}
!557 = metadata !{i32 697, i32 3, metadata !507, null}
!558 = metadata !{i32 699, i32 3, metadata !507, null}
!559 = metadata !{i32 701, i32 3, metadata !507, null}
!560 = metadata !{i32 705, i32 3, metadata !507, null}
!561 = metadata !{i32 707, i32 3, metadata !507, null}
!562 = metadata !{i32 708, i32 3, metadata !507, null}
!563 = metadata !{i32 710, i32 3, metadata !507, null}
!564 = metadata !{i32 711, i32 3, metadata !507, null}
!565 = metadata !{i32 713, i32 3, metadata !507, null}
!566 = metadata !{i32 714, i32 3, metadata !507, null}
!567 = metadata !{i32 716, i32 3, metadata !507, null}
!568 = metadata !{i32 718, i32 3, metadata !507, null}
!569 = metadata !{i32 720, i32 3, metadata !507, null}
!570 = metadata !{i32 722, i32 3, metadata !507, null}
!571 = metadata !{i32 724, i32 3, metadata !507, null}
!572 = metadata !{i32 725, i32 3, metadata !507, null}
!573 = metadata !{i32 61, i32 6, metadata !310, metadata !574}
!574 = metadata !{i32 727, i32 3, metadata !507, null}
!575 = metadata !{i32 61, i32 6, metadata !310, metadata !576}
!576 = metadata !{i32 728, i32 3, metadata !507, null}
!577 = metadata !{i32 62, i32 3, metadata !313, metadata !574}
!578 = metadata !{i32 61, i32 18, metadata !310, metadata !574}
!579 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !574} ; [ DW_TAG_auto_variable ]
!580 = metadata !{i32 62, i32 3, metadata !313, metadata !576}
!581 = metadata !{i32 61, i32 18, metadata !310, metadata !576}
!582 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !576} ; [ DW_TAG_auto_variable ]
!583 = metadata !{i32 730, i32 3, metadata !507, null}
!584 = metadata !{i32 732, i32 3, metadata !507, null}
!585 = metadata !{i32 734, i32 3, metadata !507, null}
!586 = metadata !{i32 736, i32 3, metadata !507, null}
!587 = metadata !{i32 737, i32 3, metadata !507, null}
!588 = metadata !{i32 786689, metadata !70, metadata !"output", null, i32 99, metadata !152, i32 0, metadata !589} ; [ DW_TAG_arg_variable ]
!589 = metadata !{i32 739, i32 3, metadata !507, null}
!590 = metadata !{i32 99, i32 31, metadata !70, metadata !589}
!591 = metadata !{i32 786689, metadata !70, metadata !"in", null, i32 99, metadata !177, i32 0, metadata !589} ; [ DW_TAG_arg_variable ]
!592 = metadata !{i32 99, i32 51, metadata !70, metadata !589}
!593 = metadata !{i32 101, i32 8, metadata !594, metadata !589}
!594 = metadata !{i32 786443, metadata !595, i32 101, i32 3, metadata !6, i32 74} ; [ DW_TAG_lexical_block ]
!595 = metadata !{i32 786443, metadata !70, i32 99, i32 55, metadata !6, i32 73} ; [ DW_TAG_lexical_block ]
!596 = metadata !{i32 75, i32 6, metadata !597, metadata !510}
!597 = metadata !{i32 786443, metadata !598, i32 75, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!598 = metadata !{i32 786443, metadata !21, i32 73, i32 52, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!599 = metadata !{i32 102, i32 5, metadata !600, metadata !589}
!600 = metadata !{i32 786443, metadata !594, i32 101, i32 28, metadata !6, i32 75} ; [ DW_TAG_lexical_block ]
!601 = metadata !{i32 101, i32 23, metadata !594, metadata !589}
!602 = metadata !{i32 786688, metadata !595, metadata !"i", metadata !6, i32 100, metadata !13, i32 0, metadata !589} ; [ DW_TAG_auto_variable ]
!603 = metadata !{i32 109, i32 8, metadata !604, metadata !506}
!604 = metadata !{i32 786443, metadata !605, i32 109, i32 3, metadata !6, i32 71} ; [ DW_TAG_lexical_block ]
!605 = metadata !{i32 786443, metadata !67, i32 107, i32 78, metadata !6, i32 70} ; [ DW_TAG_lexical_block ]
!606 = metadata !{i32 76, i32 3, metadata !607, metadata !510}
!607 = metadata !{i32 786443, metadata !597, i32 75, i32 22, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!608 = metadata !{i32 75, i32 18, metadata !597, metadata !510}
!609 = metadata !{i32 786688, metadata !598, metadata !"i", metadata !6, i32 74, metadata !27, i32 0, metadata !510} ; [ DW_TAG_auto_variable ]
!610 = metadata !{i32 110, i32 5, metadata !611, metadata !506}
!611 = metadata !{i32 786443, metadata !604, i32 109, i32 28, metadata !6, i32 72} ; [ DW_TAG_lexical_block ]
!612 = metadata !{i32 109, i32 23, metadata !604, metadata !506}
!613 = metadata !{i32 786688, metadata !605, metadata !"i", metadata !6, i32 108, metadata !13, i32 0, metadata !506} ; [ DW_TAG_auto_variable ]
!614 = metadata !{i32 754, i32 3, metadata !507, null}
!615 = metadata !{i32 756, i32 3, metadata !507, null}
!616 = metadata !{i32 758, i32 3, metadata !507, null}
!617 = metadata !{i32 760, i32 3, metadata !507, null}
!618 = metadata !{i32 761, i32 3, metadata !507, null}
!619 = metadata !{i32 763, i32 1, metadata !507, null}
!620 = metadata !{i32 786689, metadata !75, metadata !"output", null, i32 478, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!621 = metadata !{i32 478, i32 15, metadata !75, null}
!622 = metadata !{i32 786689, metadata !75, metadata !"input", null, i32 478, metadata !623, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!623 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !32, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ]
!624 = metadata !{metadata !625}
!625 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!626 = metadata !{i32 478, i32 33, metadata !75, null}
!627 = metadata !{i32 484, i32 3, metadata !628, null}
!628 = metadata !{i32 786443, metadata !75, i32 478, i32 40, metadata !6, i32 82} ; [ DW_TAG_lexical_block ]
!629 = metadata !{i32 485, i32 3, metadata !628, null}
!630 = metadata !{i32 486, i32 3, metadata !628, null}
!631 = metadata !{i32 487, i32 3, metadata !628, null}
!632 = metadata !{i32 488, i32 3, metadata !628, null}
!633 = metadata !{i32 489, i32 3, metadata !628, null}
!634 = metadata !{i32 490, i32 3, metadata !628, null}
!635 = metadata !{i32 491, i32 3, metadata !628, null}
!636 = metadata !{i32 492, i32 3, metadata !628, null}
!637 = metadata !{i32 493, i32 3, metadata !628, null}
!638 = metadata !{i32 495, i32 1, metadata !628, null}
!639 = metadata !{i32 101, i32 8, metadata !594, null}
!640 = metadata !{i32 102, i32 5, metadata !600, null}
!641 = metadata !{i32 101, i32 23, metadata !594, null}
!642 = metadata !{i32 786688, metadata !595, metadata !"i", metadata !6, i32 100, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!643 = metadata !{i32 104, i32 1, metadata !595, null}
!644 = metadata !{i32 786689, metadata !33, metadata !"output", null, i32 525, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!645 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !29, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ]
!646 = metadata !{i32 525, i32 15, metadata !33, null}
!647 = metadata !{i32 786689, metadata !33, metadata !"input_limbs", null, i32 525, metadata !648, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!648 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !10, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ]
!649 = metadata !{i32 525, i32 29, metadata !33, null}
!650 = metadata !{i32 786688, metadata !651, metadata !"input", metadata !6, i32 528, metadata !652, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!651 = metadata !{i32 786443, metadata !33, i32 525, i32 42, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!652 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !39, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ]
!653 = metadata !{i32 528, i32 7, metadata !651, null}
!654 = metadata !{i32 532, i32 8, metadata !655, null}
!655 = metadata !{i32 786443, metadata !651, i32 532, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!656 = metadata !{i32 556, i32 38, metadata !657, null}
!657 = metadata !{i32 786443, metadata !658, i32 555, i32 5, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!658 = metadata !{i32 786443, metadata !659, i32 536, i32 27, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!659 = metadata !{i32 786443, metadata !651, i32 536, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!660 = metadata !{i32 559, i32 7, metadata !657, null}
!661 = metadata !{i32 536, i32 8, metadata !659, null}
!662 = metadata !{i32 533, i32 5, metadata !663, null}
!663 = metadata !{i32 786443, metadata !655, i32 532, i32 28, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!664 = metadata !{i32 532, i32 23, metadata !655, null}
!665 = metadata !{i32 786688, metadata !651, metadata !"i", metadata !6, i32 526, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!666 = metadata !{i32 537, i32 10, metadata !667, null}
!667 = metadata !{i32 786443, metadata !658, i32 537, i32 5, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!668 = metadata !{i32 546, i32 40, metadata !669, null}
!669 = metadata !{i32 786443, metadata !670, i32 545, i32 14, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!670 = metadata !{i32 786443, metadata !667, i32 537, i32 29, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!671 = metadata !{i32 547, i32 53, metadata !669, null}
!672 = metadata !{i32 538, i32 7, metadata !670, null}
!673 = metadata !{i32 786688, metadata !674, metadata !"mask", metadata !6, i32 541, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!674 = metadata !{i32 786443, metadata !670, i32 538, i32 25, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!675 = metadata !{i32 541, i32 40, metadata !674, null}
!676 = metadata !{i32 542, i32 53, metadata !674, null}
!677 = metadata !{i32 543, i32 9, metadata !674, null}
!678 = metadata !{i32 544, i32 9, metadata !674, null}
!679 = metadata !{i32 545, i32 7, metadata !674, null}
!680 = metadata !{i32 786688, metadata !669, metadata !"mask", metadata !6, i32 546, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!681 = metadata !{i32 548, i32 9, metadata !669, null}
!682 = metadata !{i32 549, i32 9, metadata !669, null}
!683 = metadata !{i32 537, i32 24, metadata !667, null}
!684 = metadata !{i32 786688, metadata !657, metadata !"mask", metadata !6, i32 556, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!685 = metadata !{i32 557, i32 51, metadata !657, null}
!686 = metadata !{i32 558, i32 7, metadata !657, null}
!687 = metadata !{i32 536, i32 22, metadata !659, null}
!688 = metadata !{i32 786688, metadata !651, metadata !"j", metadata !6, i32 527, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!689 = metadata !{i32 580, i32 36, metadata !690, null}
!690 = metadata !{i32 786443, metadata !651, i32 579, i32 3, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!691 = metadata !{i32 786688, metadata !690, metadata !"mask", metadata !6, i32 580, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!692 = metadata !{i32 581, i32 49, metadata !690, null}
!693 = metadata !{i32 582, i32 5, metadata !690, null}
!694 = metadata !{i32 583, i32 5, metadata !690, null}
!695 = metadata !{i32 588, i32 8, metadata !696, null}
!696 = metadata !{i32 786443, metadata !651, i32 588, i32 3, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!697 = metadata !{i32 589, i32 10, metadata !698, null}
!698 = metadata !{i32 786443, metadata !699, i32 589, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!699 = metadata !{i32 786443, metadata !696, i32 588, i32 27, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!700 = metadata !{i32 595, i32 41, metadata !701, null}
!701 = metadata !{i32 786443, metadata !702, i32 594, i32 14, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!702 = metadata !{i32 786443, metadata !698, i32 589, i32 29, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!703 = metadata !{i32 590, i32 7, metadata !702, null}
!704 = metadata !{i32 591, i32 41, metadata !705, null}
!705 = metadata !{i32 786443, metadata !702, i32 590, i32 25, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!706 = metadata !{i32 786688, metadata !705, metadata !"carry", metadata !6, i32 591, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!707 = metadata !{i32 592, i32 9, metadata !705, null}
!708 = metadata !{i32 593, i32 9, metadata !705, null}
!709 = metadata !{i32 594, i32 7, metadata !705, null}
!710 = metadata !{i32 786688, metadata !701, metadata !"carry", metadata !6, i32 595, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!711 = metadata !{i32 596, i32 9, metadata !701, null}
!712 = metadata !{i32 597, i32 9, metadata !701, null}
!713 = metadata !{i32 589, i32 24, metadata !698, null}
!714 = metadata !{i32 602, i32 39, metadata !715, null}
!715 = metadata !{i32 786443, metadata !699, i32 601, i32 5, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!716 = metadata !{i32 603, i32 7, metadata !715, null}
!717 = metadata !{i32 604, i32 7, metadata !715, null}
!718 = metadata !{i32 588, i32 22, metadata !696, null}
!719 = metadata !{i32 786689, metadata !41, metadata !"a", metadata !6, i32 16777730, metadata !39, i32 0, metadata !720} ; [ DW_TAG_arg_variable ]
!720 = metadata !{i32 618, i32 10, metadata !651, null}
!721 = metadata !{i32 514, i32 24, metadata !41, metadata !720}
!722 = metadata !{i32 515, i32 3, metadata !723, metadata !720}
!723 = metadata !{i32 786443, metadata !41, i32 514, i32 34, metadata !6, i32 39} ; [ DW_TAG_lexical_block ]
!724 = metadata !{i32 517, i32 3, metadata !723, metadata !720}
!725 = metadata !{i32 786688, metadata !651, metadata !"mask", metadata !6, i32 529, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!726 = metadata !{i32 619, i32 8, metadata !727, null}
!727 = metadata !{i32 786443, metadata !651, i32 619, i32 3, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!728 = metadata !{i32 623, i32 15, metadata !729, null}
!729 = metadata !{i32 786443, metadata !730, i32 622, i32 12, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!730 = metadata !{i32 786443, metadata !727, i32 619, i32 28, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!731 = metadata !{i32 786689, metadata !36, metadata !"a", metadata !6, i32 16777718, metadata !39, i32 0, metadata !728} ; [ DW_TAG_arg_variable ]
!732 = metadata !{i32 502, i32 23, metadata !36, metadata !728}
!733 = metadata !{i32 503, i32 3, metadata !734, metadata !728}
!734 = metadata !{i32 786443, metadata !36, i32 502, i32 33, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!735 = metadata !{i32 504, i32 3, metadata !734, metadata !728}
!736 = metadata !{i32 505, i32 3, metadata !734, metadata !728}
!737 = metadata !{i32 506, i32 3, metadata !734, metadata !728}
!738 = metadata !{i32 507, i32 3, metadata !734, metadata !728}
!739 = metadata !{i32 508, i32 3, metadata !734, metadata !728}
!740 = metadata !{i32 786689, metadata !36, metadata !"a", metadata !6, i32 16777718, metadata !39, i32 0, metadata !741} ; [ DW_TAG_arg_variable ]
!741 = metadata !{i32 621, i32 15, metadata !742, null}
!742 = metadata !{i32 786443, metadata !730, i32 620, i32 23, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!743 = metadata !{i32 502, i32 23, metadata !36, metadata !741}
!744 = metadata !{i32 503, i32 3, metadata !734, metadata !741}
!745 = metadata !{i32 504, i32 3, metadata !734, metadata !741}
!746 = metadata !{i32 505, i32 3, metadata !734, metadata !741}
!747 = metadata !{i32 506, i32 3, metadata !734, metadata !741}
!748 = metadata !{i32 507, i32 3, metadata !734, metadata !741}
!749 = metadata !{i32 508, i32 3, metadata !734, metadata !741}
!750 = metadata !{i32 509, i32 3, metadata !734, metadata !728}
!751 = metadata !{i32 619, i32 23, metadata !727, null}
!752 = metadata !{i32 629, i32 3, metadata !651, null}
!753 = metadata !{i32 631, i32 8, metadata !754, null}
!754 = metadata !{i32 786443, metadata !651, i32 631, i32 3, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!755 = metadata !{i32 635, i32 7, metadata !756, null}
!756 = metadata !{i32 786443, metadata !757, i32 634, i32 12, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!757 = metadata !{i32 786443, metadata !754, i32 631, i32 28, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!758 = metadata !{i32 632, i32 5, metadata !757, null}
!759 = metadata !{i32 631, i32 23, metadata !754, null}
!760 = metadata !{i32 639, i32 3, metadata !651, null}
!761 = metadata !{i32 640, i32 3, metadata !651, null}
!762 = metadata !{i32 641, i32 3, metadata !651, null}
!763 = metadata !{i32 642, i32 3, metadata !651, null}
!764 = metadata !{i32 643, i32 3, metadata !651, null}
!765 = metadata !{i32 644, i32 3, metadata !651, null}
!766 = metadata !{i32 645, i32 3, metadata !651, null}
!767 = metadata !{i32 646, i32 3, metadata !651, null}
!768 = metadata !{i32 653, i32 3, metadata !651, null}
!769 = metadata !{i32 654, i32 3, metadata !651, null}
!770 = metadata !{i32 654, i32 36, metadata !651, null}
!771 = metadata !{i32 654, i32 75, metadata !651, null}
!772 = metadata !{i32 654, i32 115, metadata !651, null}
!773 = metadata !{i32 655, i32 3, metadata !651, null}
!774 = metadata !{i32 655, i32 36, metadata !651, null}
!775 = metadata !{i32 655, i32 75, metadata !651, null}
!776 = metadata !{i32 655, i32 115, metadata !651, null}
!777 = metadata !{i32 656, i32 3, metadata !651, null}
!778 = metadata !{i32 656, i32 36, metadata !651, null}
!779 = metadata !{i32 656, i32 75, metadata !651, null}
!780 = metadata !{i32 656, i32 115, metadata !651, null}
!781 = metadata !{i32 657, i32 3, metadata !651, null}
!782 = metadata !{i32 657, i32 36, metadata !651, null}
!783 = metadata !{i32 657, i32 75, metadata !651, null}
!784 = metadata !{i32 657, i32 115, metadata !651, null}
!785 = metadata !{i32 658, i32 3, metadata !651, null}
!786 = metadata !{i32 658, i32 37, metadata !651, null}
!787 = metadata !{i32 658, i32 77, metadata !651, null}
!788 = metadata !{i32 658, i32 118, metadata !651, null}
!789 = metadata !{i32 659, i32 3, metadata !651, null}
!790 = metadata !{i32 659, i32 37, metadata !651, null}
!791 = metadata !{i32 659, i32 77, metadata !651, null}
!792 = metadata !{i32 659, i32 118, metadata !651, null}
!793 = metadata !{i32 660, i32 3, metadata !651, null}
!794 = metadata !{i32 660, i32 37, metadata !651, null}
!795 = metadata !{i32 660, i32 77, metadata !651, null}
!796 = metadata !{i32 660, i32 118, metadata !651, null}
!797 = metadata !{i32 661, i32 3, metadata !651, null}
!798 = metadata !{i32 661, i32 37, metadata !651, null}
!799 = metadata !{i32 661, i32 77, metadata !651, null}
!800 = metadata !{i32 661, i32 118, metadata !651, null}
!801 = metadata !{i32 662, i32 3, metadata !651, null}
!802 = metadata !{i32 662, i32 37, metadata !651, null}
!803 = metadata !{i32 662, i32 77, metadata !651, null}
!804 = metadata !{i32 662, i32 118, metadata !651, null}
!805 = metadata !{i32 663, i32 3, metadata !651, null}
!806 = metadata !{i32 663, i32 37, metadata !651, null}
!807 = metadata !{i32 663, i32 77, metadata !651, null}
!808 = metadata !{i32 663, i32 118, metadata !651, null}
!809 = metadata !{i32 665, i32 1, metadata !651, null}
!810 = metadata !{metadata !811}
!811 = metadata !{i32 0, i32 7, metadata !812}
!812 = metadata !{metadata !813}
!813 = metadata !{metadata !"mypublic_in", metadata !814, metadata !"unsigned char", i32 0, i32 7}
!814 = metadata !{metadata !815}
!815 = metadata !{i32 0, i32 31, i32 1}
!816 = metadata !{metadata !817}
!817 = metadata !{i32 0, i32 7, metadata !818}
!818 = metadata !{metadata !819}
!819 = metadata !{metadata !"secret_in", metadata !814, metadata !"unsigned char", i32 0, i32 7}
!820 = metadata !{metadata !821}
!821 = metadata !{i32 0, i32 7, metadata !822}
!822 = metadata !{metadata !823}
!823 = metadata !{metadata !"basepoint_in", metadata !814, metadata !"unsigned char", i32 0, i32 7}
!824 = metadata !{metadata !825}
!825 = metadata !{i32 0, i32 7, metadata !826}
!826 = metadata !{metadata !827}
!827 = metadata !{metadata !"mypublic_out", metadata !814, metadata !"unsigned char", i32 0, i32 7}
!828 = metadata !{metadata !829}
!829 = metadata !{i32 0, i32 7, metadata !830}
!830 = metadata !{metadata !831}
!831 = metadata !{metadata !"secret_out", metadata !814, metadata !"unsigned char", i32 0, i32 7}
!832 = metadata !{metadata !833}
!833 = metadata !{i32 0, i32 7, metadata !834}
!834 = metadata !{metadata !835}
!835 = metadata !{metadata !"basepoint_out", metadata !814, metadata !"unsigned char", i32 0, i32 7}
!836 = metadata !{metadata !837}
!837 = metadata !{i32 0, i32 31, metadata !838}
!838 = metadata !{metadata !839}
!839 = metadata !{metadata !"return", metadata !840, metadata !"int", i32 0, i32 31}
!840 = metadata !{metadata !841}
!841 = metadata !{i32 0, i32 1, i32 0}
!842 = metadata !{i32 786689, metadata !24, metadata !"mypublic_in", null, i32 954, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!843 = metadata !{i32 954, i32 21, metadata !24, null}
!844 = metadata !{i32 786689, metadata !24, metadata !"secret_in", null, i32 954, metadata !623, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!845 = metadata !{i32 954, i32 47, metadata !24, null}
!846 = metadata !{i32 786689, metadata !24, metadata !"basepoint_in", null, i32 954, metadata !623, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!847 = metadata !{i32 954, i32 71, metadata !24, null}
!848 = metadata !{i32 786689, metadata !24, metadata !"mypublic_out", null, i32 955, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!849 = metadata !{i32 955, i32 9, metadata !24, null}
!850 = metadata !{i32 786689, metadata !24, metadata !"secret_out", null, i32 955, metadata !623, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!851 = metadata !{i32 955, i32 36, metadata !24, null}
!852 = metadata !{i32 786689, metadata !24, metadata !"basepoint_out", null, i32 955, metadata !623, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!853 = metadata !{i32 955, i32 61, metadata !24, null}
!854 = metadata !{i32 956, i32 1, metadata !855, null}
!855 = metadata !{i32 786443, metadata !24, i32 955, i32 80, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!856 = metadata !{i32 963, i32 1, metadata !855, null}
!857 = metadata !{i32 964, i32 1, metadata !855, null}
!858 = metadata !{i32 965, i32 1, metadata !855, null}
!859 = metadata !{i32 966, i32 1, metadata !855, null}
!860 = metadata !{i32 967, i32 1, metadata !855, null}
!861 = metadata !{i32 786688, metadata !855, metadata !"bp", metadata !6, i32 968, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!862 = metadata !{i32 968, i32 7, metadata !855, null}
!863 = metadata !{i32 786688, metadata !855, metadata !"x", metadata !6, i32 968, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!864 = metadata !{i32 968, i32 15, metadata !855, null}
!865 = metadata !{i32 786688, metadata !855, metadata !"z", metadata !6, i32 968, metadata !866, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!866 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 704, i64 64, i32 0, i32 0, metadata !10, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ]
!867 = metadata !{i32 968, i32 22, metadata !855, null}
!868 = metadata !{i32 786688, metadata !855, metadata !"zmone", metadata !6, i32 968, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!869 = metadata !{i32 968, i32 29, metadata !855, null}
!870 = metadata !{i32 786688, metadata !855, metadata !"e", metadata !6, i32 969, metadata !871, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!871 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !30, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ]
!872 = metadata !{i32 969, i32 11, metadata !855, null}
!873 = metadata !{i32 969, i32 22, metadata !855, null}
!874 = metadata !{i32 786688, metadata !855, metadata !"mypublic", metadata !6, i32 971, metadata !875, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!875 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !20, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ]
!876 = metadata !{i32 971, i32 17, metadata !855, null}
!877 = metadata !{i32 786688, metadata !855, metadata !"secret", metadata !6, i32 971, metadata !875, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!878 = metadata !{i32 971, i32 31, metadata !855, null}
!879 = metadata !{i32 786688, metadata !855, metadata !"basepoint", metadata !6, i32 971, metadata !875, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!880 = metadata !{i32 971, i32 43, metadata !855, null}
!881 = metadata !{i32 973, i32 3, metadata !855, null}
!882 = metadata !{i32 974, i32 3, metadata !855, null}
!883 = metadata !{i32 975, i32 3, metadata !855, null}
!884 = metadata !{i32 977, i32 8, metadata !885, null}
!885 = metadata !{i32 786443, metadata !855, i32 977, i32 3, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!886 = metadata !{i32 978, i32 4, metadata !887, null}
!887 = metadata !{i32 786443, metadata !885, i32 977, i32 27, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!888 = metadata !{i32 977, i32 23, metadata !885, null}
!889 = metadata !{i32 786688, metadata !855, metadata !"i", metadata !6, i32 970, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!890 = metadata !{i32 980, i32 3, metadata !855, null}
!891 = metadata !{i32 981, i32 3, metadata !855, null}
!892 = metadata !{i32 982, i32 3, metadata !855, null}
!893 = metadata !{i32 984, i32 3, metadata !855, null}
!894 = metadata !{i32 985, i32 3, metadata !855, null}
!895 = metadata !{i32 986, i32 3, metadata !855, null}
!896 = metadata !{i32 987, i32 3, metadata !855, null}
!897 = metadata !{i32 988, i32 3, metadata !855, null}
!898 = metadata !{i32 990, i32 3, metadata !855, null}
!899 = metadata !{i32 991, i32 3, metadata !855, null}
!900 = metadata !{i32 992, i32 3, metadata !855, null}
!901 = metadata !{i32 995, i32 3, metadata !855, null}
!902 = metadata !{i32 786689, metadata !56, metadata !"out", null, i32 885, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!903 = metadata !{i32 885, i32 14, metadata !56, null}
!904 = metadata !{i32 786689, metadata !56, metadata !"z", null, i32 885, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!905 = metadata !{i32 885, i32 31, metadata !56, null}
!906 = metadata !{i32 886, i32 1, metadata !907, null}
!907 = metadata !{i32 786443, metadata !56, i32 885, i32 34, metadata !6, i32 49} ; [ DW_TAG_lexical_block ]
!908 = metadata !{i32 887, i32 1, metadata !907, null}
!909 = metadata !{i32 786688, metadata !907, metadata !"z2", metadata !6, i32 888, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!910 = metadata !{i32 888, i32 7, metadata !907, null}
!911 = metadata !{i32 786688, metadata !907, metadata !"z9", metadata !6, i32 889, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!912 = metadata !{i32 889, i32 8, metadata !907, null}
!913 = metadata !{i32 786688, metadata !907, metadata !"z11", metadata !6, i32 890, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!914 = metadata !{i32 890, i32 8, metadata !907, null}
!915 = metadata !{i32 786688, metadata !907, metadata !"z2_5_0", metadata !6, i32 891, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!916 = metadata !{i32 891, i32 8, metadata !907, null}
!917 = metadata !{i32 786688, metadata !907, metadata !"z2_10_0", metadata !6, i32 892, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!918 = metadata !{i32 892, i32 8, metadata !907, null}
!919 = metadata !{i32 786688, metadata !907, metadata !"z2_20_0", metadata !6, i32 893, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!920 = metadata !{i32 893, i32 8, metadata !907, null}
!921 = metadata !{i32 786688, metadata !907, metadata !"z2_50_0", metadata !6, i32 894, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!922 = metadata !{i32 894, i32 8, metadata !907, null}
!923 = metadata !{i32 786688, metadata !907, metadata !"z2_100_0", metadata !6, i32 895, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!924 = metadata !{i32 895, i32 8, metadata !907, null}
!925 = metadata !{i32 786688, metadata !907, metadata !"t0", metadata !6, i32 896, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!926 = metadata !{i32 896, i32 8, metadata !907, null}
!927 = metadata !{i32 786688, metadata !907, metadata !"t1", metadata !6, i32 897, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!928 = metadata !{i32 897, i32 8, metadata !907, null}
!929 = metadata !{i32 900, i32 11, metadata !907, null}
!930 = metadata !{i32 901, i32 11, metadata !907, null}
!931 = metadata !{i32 902, i32 11, metadata !907, null}
!932 = metadata !{i32 903, i32 11, metadata !907, null}
!933 = metadata !{i32 904, i32 12, metadata !907, null}
!934 = metadata !{i32 905, i32 12, metadata !907, null}
!935 = metadata !{i32 906, i32 24, metadata !907, null}
!936 = metadata !{i32 908, i32 19, metadata !907, null}
!937 = metadata !{i32 909, i32 19, metadata !907, null}
!938 = metadata !{i32 910, i32 19, metadata !907, null}
!939 = metadata !{i32 911, i32 19, metadata !907, null}
!940 = metadata !{i32 912, i32 20, metadata !907, null}
!941 = metadata !{i32 913, i32 20, metadata !907, null}
!942 = metadata !{i32 915, i32 20, metadata !907, null}
!943 = metadata !{i32 916, i32 20, metadata !907, null}
!944 = metadata !{i32 917, i32 26, metadata !945, null}
!945 = metadata !{i32 786443, metadata !907, i32 917, i32 21, metadata !6, i32 50} ; [ DW_TAG_lexical_block ]
!946 = metadata !{i32 917, i32 49, metadata !947, null}
!947 = metadata !{i32 786443, metadata !945, i32 917, i32 47, metadata !6, i32 51} ; [ DW_TAG_lexical_block ]
!948 = metadata !{i32 917, i32 65, metadata !947, null}
!949 = metadata !{i32 917, i32 39, metadata !945, null}
!950 = metadata !{i32 786688, metadata !907, metadata !"i", metadata !6, i32 898, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!951 = metadata !{i32 918, i32 20, metadata !907, null}
!952 = metadata !{i32 920, i32 20, metadata !907, null}
!953 = metadata !{i32 921, i32 20, metadata !907, null}
!954 = metadata !{i32 922, i32 26, metadata !955, null}
!955 = metadata !{i32 786443, metadata !907, i32 922, i32 21, metadata !6, i32 52} ; [ DW_TAG_lexical_block ]
!956 = metadata !{i32 922, i32 49, metadata !957, null}
!957 = metadata !{i32 786443, metadata !955, i32 922, i32 47, metadata !6, i32 53} ; [ DW_TAG_lexical_block ]
!958 = metadata !{i32 922, i32 65, metadata !957, null}
!959 = metadata !{i32 922, i32 39, metadata !955, null}
!960 = metadata !{i32 923, i32 20, metadata !907, null}
!961 = metadata !{i32 925, i32 20, metadata !907, null}
!962 = metadata !{i32 926, i32 20, metadata !907, null}
!963 = metadata !{i32 927, i32 26, metadata !964, null}
!964 = metadata !{i32 786443, metadata !907, i32 927, i32 21, metadata !6, i32 54} ; [ DW_TAG_lexical_block ]
!965 = metadata !{i32 927, i32 49, metadata !966, null}
!966 = metadata !{i32 786443, metadata !964, i32 927, i32 47, metadata !6, i32 55} ; [ DW_TAG_lexical_block ]
!967 = metadata !{i32 927, i32 65, metadata !966, null}
!968 = metadata !{i32 927, i32 39, metadata !964, null}
!969 = metadata !{i32 928, i32 20, metadata !907, null}
!970 = metadata !{i32 930, i32 20, metadata !907, null}
!971 = metadata !{i32 931, i32 20, metadata !907, null}
!972 = metadata !{i32 932, i32 27, metadata !973, null}
!973 = metadata !{i32 786443, metadata !907, i32 932, i32 22, metadata !6, i32 56} ; [ DW_TAG_lexical_block ]
!974 = metadata !{i32 932, i32 50, metadata !975, null}
!975 = metadata !{i32 786443, metadata !973, i32 932, i32 48, metadata !6, i32 57} ; [ DW_TAG_lexical_block ]
!976 = metadata !{i32 932, i32 66, metadata !975, null}
!977 = metadata !{i32 932, i32 40, metadata !973, null}
!978 = metadata !{i32 933, i32 21, metadata !907, null}
!979 = metadata !{i32 935, i32 21, metadata !907, null}
!980 = metadata !{i32 936, i32 21, metadata !907, null}
!981 = metadata !{i32 937, i32 28, metadata !982, null}
!982 = metadata !{i32 786443, metadata !907, i32 937, i32 23, metadata !6, i32 58} ; [ DW_TAG_lexical_block ]
!983 = metadata !{i32 937, i32 52, metadata !984, null}
!984 = metadata !{i32 786443, metadata !982, i32 937, i32 50, metadata !6, i32 59} ; [ DW_TAG_lexical_block ]
!985 = metadata !{i32 937, i32 68, metadata !984, null}
!986 = metadata !{i32 937, i32 42, metadata !982, null}
!987 = metadata !{i32 938, i32 21, metadata !907, null}
!988 = metadata !{i32 940, i32 21, metadata !907, null}
!989 = metadata !{i32 941, i32 21, metadata !907, null}
!990 = metadata !{i32 942, i32 27, metadata !991, null}
!991 = metadata !{i32 786443, metadata !907, i32 942, i32 22, metadata !6, i32 60} ; [ DW_TAG_lexical_block ]
!992 = metadata !{i32 942, i32 50, metadata !993, null}
!993 = metadata !{i32 786443, metadata !991, i32 942, i32 48, metadata !6, i32 61} ; [ DW_TAG_lexical_block ]
!994 = metadata !{i32 942, i32 66, metadata !993, null}
!995 = metadata !{i32 942, i32 40, metadata !991, null}
!996 = metadata !{i32 943, i32 21, metadata !907, null}
!997 = metadata !{i32 945, i32 21, metadata !907, null}
!998 = metadata !{i32 946, i32 21, metadata !907, null}
!999 = metadata !{i32 947, i32 21, metadata !907, null}
!1000 = metadata !{i32 948, i32 21, metadata !907, null}
!1001 = metadata !{i32 949, i32 21, metadata !907, null}
!1002 = metadata !{i32 950, i32 20, metadata !907, null}
!1003 = metadata !{i32 951, i32 1, metadata !907, null}
!1004 = metadata !{i32 786688, metadata !1005, metadata !"nqpqz", metadata !6, i32 797, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1005 = metadata !{i32 786443, metadata !61, i32 792, i32 65, metadata !6, i32 64} ; [ DW_TAG_lexical_block ]
!1006 = metadata !{i32 797, i32 25, metadata !1005, null}
!1007 = metadata !{i32 786689, metadata !5, metadata !"src", null, i32 59, metadata !152, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ]
!1008 = metadata !{i32 877, i32 3, metadata !1005, null}
!1009 = metadata !{i32 59, i32 31, metadata !5, metadata !1008}
!1010 = metadata !{i32 786688, metadata !1005, metadata !"t", metadata !6, i32 797, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1011 = metadata !{i32 797, i32 72, metadata !1005, null}
!1012 = metadata !{i32 786688, metadata !1005, metadata !"nqpqx2", metadata !6, i32 800, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1013 = metadata !{i32 800, i32 8, metadata !1005, null}
!1014 = metadata !{i32 786688, metadata !1005, metadata !"nqpqz2", metadata !6, i32 800, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1015 = metadata !{i32 800, i32 26, metadata !1005, null}
!1016 = metadata !{i32 786688, metadata !1005, metadata !"nqz2", metadata !6, i32 800, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1017 = metadata !{i32 800, i32 60, metadata !1005, null}
!1018 = metadata !{i32 786689, metadata !61, metadata !"resultx", null, i32 792, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1019 = metadata !{i32 792, i32 13, metadata !61, null}
!1020 = metadata !{i32 786689, metadata !61, metadata !"resultz", null, i32 792, metadata !648, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1021 = metadata !{i32 792, i32 28, metadata !61, null}
!1022 = metadata !{i32 786689, metadata !61, metadata !"n", null, i32 792, metadata !623, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1023 = metadata !{i32 792, i32 47, metadata !61, null}
!1024 = metadata !{i32 786689, metadata !61, metadata !"q", null, i32 792, metadata !501, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1025 = metadata !{i32 792, i32 62, metadata !61, null}
!1026 = metadata !{i32 793, i32 1, metadata !1005, null}
!1027 = metadata !{i32 794, i32 1, metadata !1005, null}
!1028 = metadata !{i32 786688, metadata !1005, metadata !"nqpqx", metadata !6, i32 797, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1029 = metadata !{i32 797, i32 8, metadata !1005, null}
!1030 = metadata !{i32 797, i32 83, metadata !1005, null}
!1031 = metadata !{i32 786688, metadata !1005, metadata !"nqx", metadata !6, i32 797, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1032 = metadata !{i32 797, i32 42, metadata !1005, null}
!1033 = metadata !{i32 786688, metadata !1005, metadata !"nqz", metadata !6, i32 797, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1034 = metadata !{i32 797, i32 57, metadata !1005, null}
!1035 = metadata !{i32 800, i32 74, metadata !1005, null}
!1036 = metadata !{i32 786688, metadata !1005, metadata !"nqx2", metadata !6, i32 800, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1037 = metadata !{i32 800, i32 44, metadata !1005, null}
!1038 = metadata !{i32 61, i32 6, metadata !310, metadata !1039}
!1039 = metadata !{i32 804, i32 3, metadata !1005, null}
!1040 = metadata !{i32 806, i32 8, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1005, i32 806, i32 3, metadata !6, i32 65} ; [ DW_TAG_lexical_block ]
!1042 = metadata !{i32 62, i32 3, metadata !313, metadata !1039}
!1043 = metadata !{i32 61, i32 18, metadata !310, metadata !1039}
!1044 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !1039} ; [ DW_TAG_auto_variable ]
!1045 = metadata !{i32 61, i32 6, metadata !310, metadata !1008}
!1046 = metadata !{i32 807, i32 24, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !1041, i32 806, i32 28, metadata !6, i32 66} ; [ DW_TAG_lexical_block ]
!1048 = metadata !{i32 786688, metadata !1047, metadata !"byte", metadata !6, i32 807, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1049 = metadata !{i32 808, i32 10, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1047, i32 808, i32 5, metadata !6, i32 67} ; [ DW_TAG_lexical_block ]
!1051 = metadata !{i32 809, i32 33, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1050, i32 808, i32 29, metadata !6, i32 68} ; [ DW_TAG_lexical_block ]
!1053 = metadata !{i32 811, i32 7, metadata !1052, null}
!1054 = metadata !{i32 812, i32 7, metadata !1052, null}
!1055 = metadata !{i32 813, i32 7, metadata !1052, null}
!1056 = metadata !{i32 818, i32 7, metadata !1052, null}
!1057 = metadata !{i32 819, i32 7, metadata !1052, null}
!1058 = metadata !{i32 822, i32 7, metadata !1052, null}
!1059 = metadata !{i32 833, i32 7, metadata !1052, null}
!1060 = metadata !{i32 836, i32 7, metadata !1052, null}
!1061 = metadata !{i32 839, i32 7, metadata !1052, null}
!1062 = metadata !{i32 842, i32 7, metadata !1052, null}
!1063 = metadata !{i32 845, i32 7, metadata !1052, null}
!1064 = metadata !{i32 848, i32 7, metadata !1052, null}
!1065 = metadata !{i32 851, i32 7, metadata !1052, null}
!1066 = metadata !{i32 854, i32 7, metadata !1052, null}
!1067 = metadata !{i32 857, i32 7, metadata !1052, null}
!1068 = metadata !{i32 860, i32 7, metadata !1052, null}
!1069 = metadata !{i32 863, i32 7, metadata !1052, null}
!1070 = metadata !{i32 873, i32 7, metadata !1052, null}
!1071 = metadata !{i32 808, i32 24, metadata !1050, null}
!1072 = metadata !{i32 786688, metadata !1005, metadata !"j", metadata !6, i32 802, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1073 = metadata !{i32 806, i32 23, metadata !1041, null}
!1074 = metadata !{i32 786688, metadata !1005, metadata !"i", metadata !6, i32 802, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1075 = metadata !{i32 61, i32 6, metadata !310, metadata !1076}
!1076 = metadata !{i32 878, i32 3, metadata !1005, null}
!1077 = metadata !{i32 62, i32 3, metadata !313, metadata !1008}
!1078 = metadata !{i32 61, i32 18, metadata !310, metadata !1008}
!1079 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !1008} ; [ DW_TAG_auto_variable ]
!1080 = metadata !{i32 62, i32 3, metadata !313, metadata !1076}
!1081 = metadata !{i32 61, i32 18, metadata !310, metadata !1076}
!1082 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, metadata !1076} ; [ DW_TAG_auto_variable ]
!1083 = metadata !{i32 879, i32 1, metadata !1005, null}
!1084 = metadata !{i32 786689, metadata !16, metadata !"dst", null, i32 66, metadata !875, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1085 = metadata !{i32 66, i32 34, metadata !16, null}
!1086 = metadata !{i32 786689, metadata !16, metadata !"src", null, i32 66, metadata !875, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1087 = metadata !{i32 66, i32 54, metadata !16, null}
!1088 = metadata !{i32 68, i32 6, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1090, i32 68, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!1090 = metadata !{i32 786443, metadata !16, i32 66, i32 76, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!1091 = metadata !{i32 69, i32 3, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1089, i32 68, i32 22, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!1093 = metadata !{i32 68, i32 18, metadata !1089, null}
!1094 = metadata !{i32 786688, metadata !1090, metadata !"i", metadata !6, i32 67, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1095 = metadata !{i32 71, i32 1, metadata !1090, null}
!1096 = metadata !{i32 19, i32 19, i32 19, i32 19}
!1097 = metadata !{i32 61, i32 6, metadata !310, null}
!1098 = metadata !{i32 62, i32 3, metadata !313, null}
!1099 = metadata !{i32 61, i32 18, metadata !310, null}
!1100 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 60, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1101 = metadata !{i32 64, i32 1, metadata !311, null}
!1102 = metadata !{i32 786689, metadata !5, metadata !"dst", null, i32 59, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1103 = metadata !{i32 59, i32 20, metadata !5, null}
!1104 = metadata !{i32 786689, metadata !5, metadata !"src", null, i32 59, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1105 = metadata !{i32 59, i32 31, metadata !5, null}
