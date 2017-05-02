; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_stream/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SHA256 = type { i32, i32, [128 x i8], [8 x i32] }
%"class.hls::stream" = type { i8 }

@_ZN6SHA2568sha256_kE = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=2 type=[64 x i32]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=2]
define void @_Z7_memcpyPhS_j(i8* %dst, i8* %src, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i8* %dst, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !159), !dbg !160 ; [debug line = 3:29] [debug variable = dst]
  store i8* %src, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !161), !dbg !162 ; [debug line = 3:49] [debug variable = src]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !163), !dbg !164 ; [debug line = 3:67] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !165), !dbg !167 ; [debug line = 4:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !168        ; [debug line = 5:6]
  br label %4, !dbg !168                          ; [debug line = 5:6]

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %i, align 4, !dbg !168           ; [#uses=1 type=i32] [debug line = 5:6]
  %6 = load i32* %3, align 4, !dbg !168           ; [#uses=1 type=i32] [debug line = 5:6]
  %7 = icmp ult i32 %5, %6, !dbg !168             ; [#uses=1 type=i1] [debug line = 5:6]
  br i1 %7, label %8, label %21, !dbg !168        ; [debug line = 5:6]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !170           ; [#uses=1 type=i32] [debug line = 6:3]
  %10 = sext i32 %9 to i64, !dbg !170             ; [#uses=1 type=i64] [debug line = 6:3]
  %11 = load i8** %2, align 8, !dbg !170          ; [#uses=1 type=i8*] [debug line = 6:3]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !170 ; [#uses=1 type=i8*] [debug line = 6:3]
  %13 = load i8* %12, align 1, !dbg !170          ; [#uses=1 type=i8] [debug line = 6:3]
  %14 = load i32* %i, align 4, !dbg !170          ; [#uses=1 type=i32] [debug line = 6:3]
  %15 = sext i32 %14 to i64, !dbg !170            ; [#uses=1 type=i64] [debug line = 6:3]
  %16 = load i8** %1, align 8, !dbg !170          ; [#uses=1 type=i8*] [debug line = 6:3]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !170 ; [#uses=1 type=i8*] [debug line = 6:3]
  store i8 %13, i8* %17, align 1, !dbg !170       ; [debug line = 6:3]
  br label %18, !dbg !172                         ; [debug line = 7:2]

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !173          ; [#uses=1 type=i32] [debug line = 5:21]
  %20 = add nsw i32 %19, 1, !dbg !173             ; [#uses=1 type=i32] [debug line = 5:21]
  store i32 %20, i32* %i, align 4, !dbg !173      ; [debug line = 5:21]
  br label %4, !dbg !173                          ; [debug line = 5:21]

; <label>:21                                      ; preds = %4
  ret void, !dbg !174                             ; [debug line = 8:1]
}

; [#uses=44]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define void @_Z7_memsetPhhj(i8* %dst, i8 zeroext %val, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store i8* %dst, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !175), !dbg !176 ; [debug line = 10:29] [debug variable = dst]
  store i8 %val, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !177), !dbg !178 ; [debug line = 10:48] [debug variable = val]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !179), !dbg !180 ; [debug line = 10:66] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !181), !dbg !183 ; [debug line = 11:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !184        ; [debug line = 12:6]
  br label %4, !dbg !184                          ; [debug line = 12:6]

; <label>:4                                       ; preds = %14, %0
  %5 = load i32* %i, align 4, !dbg !184           ; [#uses=1 type=i32] [debug line = 12:6]
  %6 = load i32* %3, align 4, !dbg !184           ; [#uses=1 type=i32] [debug line = 12:6]
  %7 = icmp ult i32 %5, %6, !dbg !184             ; [#uses=1 type=i1] [debug line = 12:6]
  br i1 %7, label %8, label %17, !dbg !184        ; [debug line = 12:6]

; <label>:8                                       ; preds = %4
  %9 = load i8* %2, align 1, !dbg !186            ; [#uses=1 type=i8] [debug line = 13:3]
  %10 = load i32* %i, align 4, !dbg !186          ; [#uses=1 type=i32] [debug line = 13:3]
  %11 = sext i32 %10 to i64, !dbg !186            ; [#uses=1 type=i64] [debug line = 13:3]
  %12 = load i8** %1, align 8, !dbg !186          ; [#uses=1 type=i8*] [debug line = 13:3]
  %13 = getelementptr inbounds i8* %12, i64 %11, !dbg !186 ; [#uses=1 type=i8*] [debug line = 13:3]
  store i8 %9, i8* %13, align 1, !dbg !186        ; [debug line = 13:3]
  br label %14, !dbg !188                         ; [debug line = 14:2]

; <label>:14                                      ; preds = %8
  %15 = load i32* %i, align 4, !dbg !189          ; [#uses=1 type=i32] [debug line = 12:21]
  %16 = add nsw i32 %15, 1, !dbg !189             ; [#uses=1 type=i32] [debug line = 12:21]
  store i32 %16, i32* %i, align 4, !dbg !189      ; [debug line = 12:21]
  br label %4, !dbg !189                          ; [debug line = 12:21]

; <label>:17                                      ; preds = %4
  ret void, !dbg !190                             ; [debug line = 15:1]
}

; [#uses=3]
define void @_ZN6SHA2569transformEPKhj(%class.SHA256* %this, i8* %message, i32 %block_nb) nounwind uwtable align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %w = alloca [64 x i32], align 16                ; [#uses=15 type=[64 x i32]*]
  %wv = alloca [8 x i32], align 16                ; [#uses=40 type=[8 x i32]*]
  %t1 = alloca i32, align 4                       ; [#uses=3 type=i32*]
  %t2 = alloca i32, align 4                       ; [#uses=2 type=i32*]
  %sub_block = alloca i8*, align 8                ; [#uses=5 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=44 type=i32*]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !191), !dbg !193 ; [debug line = 35:14] [debug variable = this]
  store i8* %message, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !194), !dbg !195 ; [debug line = 35:45] [debug variable = message]
  store i32 %block_nb, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !196), !dbg !197 ; [debug line = 35:67] [debug variable = block_nb]
  %4 = load %class.SHA256** %1                    ; [#uses=2 type=%class.SHA256*]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !198), !dbg !201 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !202), !dbg !203 ; [debug line = 38:12] [debug variable = wv]
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !204), !dbg !205 ; [debug line = 39:12] [debug variable = t1]
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !206), !dbg !207 ; [debug line = 39:16] [debug variable = t2]
  call void @llvm.dbg.declare(metadata !{i8** %sub_block}, metadata !208), !dbg !209 ; [debug line = 40:26] [debug variable = sub_block]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !210), !dbg !211 ; [debug line = 41:9] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !212), !dbg !213 ; [debug line = 42:9] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !214        ; [debug line = 43:10]
  br label %5, !dbg !214                          ; [debug line = 43:10]

; <label>:5                                       ; preds = %315, %0
  %6 = load i32* %i, align 4, !dbg !214           ; [#uses=1 type=i32] [debug line = 43:10]
  %7 = load i32* %3, align 4, !dbg !214           ; [#uses=1 type=i32] [debug line = 43:10]
  %8 = icmp slt i32 %6, %7, !dbg !214             ; [#uses=1 type=i1] [debug line = 43:10]
  br i1 %8, label %9, label %318, !dbg !214       ; [debug line = 43:10]

; <label>:9                                       ; preds = %5
  %10 = load i8** %2, align 8, !dbg !216          ; [#uses=1 type=i8*] [debug line = 44:9]
  %11 = load i32* %i, align 4, !dbg !216          ; [#uses=1 type=i32] [debug line = 44:9]
  %12 = shl i32 %11, 6, !dbg !216                 ; [#uses=1 type=i32] [debug line = 44:9]
  %13 = sext i32 %12 to i64, !dbg !216            ; [#uses=1 type=i64] [debug line = 44:9]
  %14 = getelementptr inbounds i8* %10, i64 %13, !dbg !216 ; [#uses=1 type=i8*] [debug line = 44:9]
  store i8* %14, i8** %sub_block, align 8, !dbg !216 ; [debug line = 44:9]
  store i32 0, i32* %j, align 4, !dbg !218        ; [debug line = 45:14]
  br label %15, !dbg !218                         ; [debug line = 45:14]

; <label>:15                                      ; preds = %60, %9
  %16 = load i32* %j, align 4, !dbg !218          ; [#uses=1 type=i32] [debug line = 45:14]
  %17 = icmp slt i32 %16, 16, !dbg !218           ; [#uses=1 type=i1] [debug line = 45:14]
  br i1 %17, label %18, label %63, !dbg !218      ; [debug line = 45:14]

; <label>:18                                      ; preds = %15
  %19 = load i32* %j, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 46:15]
  %20 = shl i32 %19, 2, !dbg !220                 ; [#uses=1 type=i32] [debug line = 46:15]
  %21 = sext i32 %20 to i64, !dbg !220            ; [#uses=1 type=i64] [debug line = 46:15]
  %22 = load i8** %sub_block, align 8, !dbg !220  ; [#uses=1 type=i8*] [debug line = 46:15]
  %23 = getelementptr inbounds i8* %22, i64 %21, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %24 = getelementptr inbounds i8* %23, i64 3, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %25 = load i8* %24, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 46:15]
  %26 = zext i8 %25 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 46:15]
  %27 = load i32* %j, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 46:15]
  %28 = shl i32 %27, 2, !dbg !220                 ; [#uses=1 type=i32] [debug line = 46:15]
  %29 = sext i32 %28 to i64, !dbg !220            ; [#uses=1 type=i64] [debug line = 46:15]
  %30 = load i8** %sub_block, align 8, !dbg !220  ; [#uses=1 type=i8*] [debug line = 46:15]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %32 = getelementptr inbounds i8* %31, i64 2, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %33 = load i8* %32, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 46:15]
  %34 = zext i8 %33 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 46:15]
  %35 = shl i32 %34, 8, !dbg !220                 ; [#uses=1 type=i32] [debug line = 46:15]
  %36 = or i32 %26, %35, !dbg !220                ; [#uses=1 type=i32] [debug line = 46:15]
  %37 = load i32* %j, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 46:15]
  %38 = shl i32 %37, 2, !dbg !220                 ; [#uses=1 type=i32] [debug line = 46:15]
  %39 = sext i32 %38 to i64, !dbg !220            ; [#uses=1 type=i64] [debug line = 46:15]
  %40 = load i8** %sub_block, align 8, !dbg !220  ; [#uses=1 type=i8*] [debug line = 46:15]
  %41 = getelementptr inbounds i8* %40, i64 %39, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %42 = getelementptr inbounds i8* %41, i64 1, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %43 = load i8* %42, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 46:15]
  %44 = zext i8 %43 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 46:15]
  %45 = shl i32 %44, 16, !dbg !220                ; [#uses=1 type=i32] [debug line = 46:15]
  %46 = or i32 %36, %45, !dbg !220                ; [#uses=1 type=i32] [debug line = 46:15]
  %47 = load i32* %j, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 46:15]
  %48 = shl i32 %47, 2, !dbg !220                 ; [#uses=1 type=i32] [debug line = 46:15]
  %49 = sext i32 %48 to i64, !dbg !220            ; [#uses=1 type=i64] [debug line = 46:15]
  %50 = load i8** %sub_block, align 8, !dbg !220  ; [#uses=1 type=i8*] [debug line = 46:15]
  %51 = getelementptr inbounds i8* %50, i64 %49, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %52 = getelementptr inbounds i8* %51, i64 0, !dbg !220 ; [#uses=1 type=i8*] [debug line = 46:15]
  %53 = load i8* %52, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 46:15]
  %54 = zext i8 %53 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 46:15]
  %55 = shl i32 %54, 24, !dbg !220                ; [#uses=1 type=i32] [debug line = 46:15]
  %56 = or i32 %46, %55, !dbg !220                ; [#uses=1 type=i32] [debug line = 46:15]
  %57 = load i32* %j, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 46:15]
  %58 = sext i32 %57 to i64, !dbg !220            ; [#uses=1 type=i64] [debug line = 46:15]
  %59 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %58, !dbg !220 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %56, i32* %59, align 4, !dbg !220     ; [debug line = 46:15]
  br label %60, !dbg !223                         ; [debug line = 47:9]

; <label>:60                                      ; preds = %18
  %61 = load i32* %j, align 4, !dbg !224          ; [#uses=1 type=i32] [debug line = 45:29]
  %62 = add nsw i32 %61, 1, !dbg !224             ; [#uses=1 type=i32] [debug line = 45:29]
  store i32 %62, i32* %j, align 4, !dbg !224      ; [debug line = 45:29]
  br label %15, !dbg !224                         ; [debug line = 45:29]

; <label>:63                                      ; preds = %15
  store i32 16, i32* %j, align 4, !dbg !225       ; [debug line = 48:14]
  br label %64, !dbg !225                         ; [debug line = 48:14]

; <label>:64                                      ; preds = %152, %63
  %65 = load i32* %j, align 4, !dbg !225          ; [#uses=1 type=i32] [debug line = 48:14]
  %66 = icmp slt i32 %65, 64, !dbg !225           ; [#uses=1 type=i1] [debug line = 48:14]
  br i1 %66, label %67, label %155, !dbg !225     ; [debug line = 48:14]

; <label>:67                                      ; preds = %64
  %68 = load i32* %j, align 4, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %69 = sub nsw i32 %68, 2, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %70 = sext i32 %69 to i64, !dbg !227            ; [#uses=1 type=i64] [debug line = 49:13]
  %71 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %70, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %72 = load i32* %71, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %73 = lshr i32 %72, 17, !dbg !227               ; [#uses=1 type=i32] [debug line = 49:13]
  %74 = load i32* %j, align 4, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %75 = sub nsw i32 %74, 2, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %76 = sext i32 %75 to i64, !dbg !227            ; [#uses=1 type=i64] [debug line = 49:13]
  %77 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %76, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %78 = load i32* %77, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %79 = shl i32 %78, 15, !dbg !227                ; [#uses=1 type=i32] [debug line = 49:13]
  %80 = or i32 %73, %79, !dbg !227                ; [#uses=1 type=i32] [debug line = 49:13]
  %81 = load i32* %j, align 4, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %82 = sub nsw i32 %81, 2, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %83 = sext i32 %82 to i64, !dbg !227            ; [#uses=1 type=i64] [debug line = 49:13]
  %84 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %83, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %85 = load i32* %84, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %86 = lshr i32 %85, 19, !dbg !227               ; [#uses=1 type=i32] [debug line = 49:13]
  %87 = load i32* %j, align 4, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %88 = sub nsw i32 %87, 2, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %89 = sext i32 %88 to i64, !dbg !227            ; [#uses=1 type=i64] [debug line = 49:13]
  %90 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %89, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %91 = load i32* %90, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %92 = shl i32 %91, 13, !dbg !227                ; [#uses=1 type=i32] [debug line = 49:13]
  %93 = or i32 %86, %92, !dbg !227                ; [#uses=1 type=i32] [debug line = 49:13]
  %94 = xor i32 %80, %93, !dbg !227               ; [#uses=1 type=i32] [debug line = 49:13]
  %95 = load i32* %j, align 4, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %96 = sub nsw i32 %95, 2, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %97 = sext i32 %96 to i64, !dbg !227            ; [#uses=1 type=i64] [debug line = 49:13]
  %98 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %97, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %99 = load i32* %98, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %100 = lshr i32 %99, 10, !dbg !227              ; [#uses=1 type=i32] [debug line = 49:13]
  %101 = xor i32 %94, %100, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %102 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %103 = sub nsw i32 %102, 7, !dbg !227           ; [#uses=1 type=i32] [debug line = 49:13]
  %104 = sext i32 %103 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %105 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %104, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %106 = load i32* %105, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %107 = add i32 %101, %106, !dbg !227            ; [#uses=1 type=i32] [debug line = 49:13]
  %108 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %109 = sub nsw i32 %108, 15, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %110 = sext i32 %109 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %111 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %110, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %112 = load i32* %111, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %113 = lshr i32 %112, 7, !dbg !227              ; [#uses=1 type=i32] [debug line = 49:13]
  %114 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %115 = sub nsw i32 %114, 15, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %116 = sext i32 %115 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %117 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %116, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %118 = load i32* %117, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %119 = shl i32 %118, 25, !dbg !227              ; [#uses=1 type=i32] [debug line = 49:13]
  %120 = or i32 %113, %119, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %121 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %122 = sub nsw i32 %121, 15, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %123 = sext i32 %122 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %124 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %123, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %125 = load i32* %124, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %126 = lshr i32 %125, 18, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %127 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %128 = sub nsw i32 %127, 15, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %129 = sext i32 %128 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %130 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %129, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %131 = load i32* %130, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %132 = shl i32 %131, 14, !dbg !227              ; [#uses=1 type=i32] [debug line = 49:13]
  %133 = or i32 %126, %132, !dbg !227             ; [#uses=1 type=i32] [debug line = 49:13]
  %134 = xor i32 %120, %133, !dbg !227            ; [#uses=1 type=i32] [debug line = 49:13]
  %135 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %136 = sub nsw i32 %135, 15, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %137 = sext i32 %136 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %138 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %137, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %139 = load i32* %138, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %140 = lshr i32 %139, 3, !dbg !227              ; [#uses=1 type=i32] [debug line = 49:13]
  %141 = xor i32 %134, %140, !dbg !227            ; [#uses=1 type=i32] [debug line = 49:13]
  %142 = add i32 %107, %141, !dbg !227            ; [#uses=1 type=i32] [debug line = 49:13]
  %143 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %144 = sub nsw i32 %143, 16, !dbg !227          ; [#uses=1 type=i32] [debug line = 49:13]
  %145 = sext i32 %144 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %146 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %145, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  %147 = load i32* %146, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 49:13]
  %148 = add i32 %142, %147, !dbg !227            ; [#uses=1 type=i32] [debug line = 49:13]
  %149 = load i32* %j, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 49:13]
  %150 = sext i32 %149 to i64, !dbg !227          ; [#uses=1 type=i64] [debug line = 49:13]
  %151 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %150, !dbg !227 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %148, i32* %151, align 4, !dbg !227   ; [debug line = 49:13]
  br label %152, !dbg !229                        ; [debug line = 50:9]

; <label>:152                                     ; preds = %67
  %153 = load i32* %j, align 4, !dbg !230         ; [#uses=1 type=i32] [debug line = 48:30]
  %154 = add nsw i32 %153, 1, !dbg !230           ; [#uses=1 type=i32] [debug line = 48:30]
  store i32 %154, i32* %j, align 4, !dbg !230     ; [debug line = 48:30]
  br label %64, !dbg !230                         ; [debug line = 48:30]

; <label>:155                                     ; preds = %64
  store i32 0, i32* %j, align 4, !dbg !231        ; [debug line = 51:14]
  br label %156, !dbg !231                        ; [debug line = 51:14]

; <label>:156                                     ; preds = %168, %155
  %157 = load i32* %j, align 4, !dbg !231         ; [#uses=1 type=i32] [debug line = 51:14]
  %158 = icmp slt i32 %157, 8, !dbg !231          ; [#uses=1 type=i1] [debug line = 51:14]
  br i1 %158, label %159, label %171, !dbg !231   ; [debug line = 51:14]

; <label>:159                                     ; preds = %156
  %160 = load i32* %j, align 4, !dbg !233         ; [#uses=1 type=i32] [debug line = 52:13]
  %161 = sext i32 %160 to i64, !dbg !233          ; [#uses=1 type=i64] [debug line = 52:13]
  %162 = getelementptr inbounds %class.SHA256* %4, i32 0, i32 3, !dbg !233 ; [#uses=1 type=[8 x i32]*] [debug line = 52:13]
  %163 = getelementptr inbounds [8 x i32]* %162, i32 0, i64 %161, !dbg !233 ; [#uses=1 type=i32*] [debug line = 52:13]
  %164 = load i32* %163, align 4, !dbg !233       ; [#uses=1 type=i32] [debug line = 52:13]
  %165 = load i32* %j, align 4, !dbg !233         ; [#uses=1 type=i32] [debug line = 52:13]
  %166 = sext i32 %165 to i64, !dbg !233          ; [#uses=1 type=i64] [debug line = 52:13]
  %167 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 %166, !dbg !233 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %164, i32* %167, align 4, !dbg !233   ; [debug line = 52:13]
  br label %168, !dbg !235                        ; [debug line = 53:9]

; <label>:168                                     ; preds = %159
  %169 = load i32* %j, align 4, !dbg !236         ; [#uses=1 type=i32] [debug line = 51:28]
  %170 = add nsw i32 %169, 1, !dbg !236           ; [#uses=1 type=i32] [debug line = 51:28]
  store i32 %170, i32* %j, align 4, !dbg !236     ; [debug line = 51:28]
  br label %156, !dbg !236                        ; [debug line = 51:28]

; <label>:171                                     ; preds = %156
  store i32 0, i32* %j, align 4, !dbg !237        ; [debug line = 54:14]
  br label %172, !dbg !237                        ; [debug line = 54:14]

; <label>:172                                     ; preds = %293, %171
  %173 = load i32* %j, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 54:14]
  %174 = icmp slt i32 %173, 64, !dbg !237         ; [#uses=1 type=i1] [debug line = 54:14]
  br i1 %174, label %175, label %296, !dbg !237   ; [debug line = 54:14]

; <label>:175                                     ; preds = %172
  %176 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 7, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %177 = load i32* %176, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %178 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %179 = load i32* %178, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %180 = lshr i32 %179, 6, !dbg !239              ; [#uses=1 type=i32] [debug line = 55:13]
  %181 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %182 = load i32* %181, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %183 = shl i32 %182, 26, !dbg !239              ; [#uses=1 type=i32] [debug line = 55:13]
  %184 = or i32 %180, %183, !dbg !239             ; [#uses=1 type=i32] [debug line = 55:13]
  %185 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %186 = load i32* %185, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %187 = lshr i32 %186, 11, !dbg !239             ; [#uses=1 type=i32] [debug line = 55:13]
  %188 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %189 = load i32* %188, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %190 = shl i32 %189, 21, !dbg !239              ; [#uses=1 type=i32] [debug line = 55:13]
  %191 = or i32 %187, %190, !dbg !239             ; [#uses=1 type=i32] [debug line = 55:13]
  %192 = xor i32 %184, %191, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %193 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %194 = load i32* %193, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %195 = lshr i32 %194, 25, !dbg !239             ; [#uses=1 type=i32] [debug line = 55:13]
  %196 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %197 = load i32* %196, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %198 = shl i32 %197, 7, !dbg !239               ; [#uses=1 type=i32] [debug line = 55:13]
  %199 = or i32 %195, %198, !dbg !239             ; [#uses=1 type=i32] [debug line = 55:13]
  %200 = xor i32 %192, %199, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %201 = add i32 %177, %200, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %202 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %203 = load i32* %202, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %204 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 5, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %205 = load i32* %204, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %206 = and i32 %203, %205, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %207 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %208 = load i32* %207, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %209 = xor i32 %208, -1, !dbg !239              ; [#uses=1 type=i32] [debug line = 55:13]
  %210 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 6, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %211 = load i32* %210, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %212 = and i32 %209, %211, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %213 = xor i32 %206, %212, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %214 = add i32 %201, %213, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %215 = load i32* %j, align 4, !dbg !239         ; [#uses=1 type=i32] [debug line = 55:13]
  %216 = sext i32 %215 to i64, !dbg !239          ; [#uses=1 type=i64] [debug line = 55:13]
  %217 = getelementptr inbounds [64 x i32]* @_ZN6SHA2568sha256_kE, i32 0, i64 %216, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %218 = load i32* %217, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %219 = add i32 %214, %218, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  %220 = load i32* %j, align 4, !dbg !239         ; [#uses=1 type=i32] [debug line = 55:13]
  %221 = sext i32 %220 to i64, !dbg !239          ; [#uses=1 type=i64] [debug line = 55:13]
  %222 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %221, !dbg !239 ; [#uses=1 type=i32*] [debug line = 55:13]
  %223 = load i32* %222, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 55:13]
  %224 = add i32 %219, %223, !dbg !239            ; [#uses=1 type=i32] [debug line = 55:13]
  store i32 %224, i32* %t1, align 4, !dbg !239    ; [debug line = 55:13]
  %225 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %226 = load i32* %225, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %227 = lshr i32 %226, 2, !dbg !241              ; [#uses=1 type=i32] [debug line = 57:13]
  %228 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %229 = load i32* %228, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %230 = shl i32 %229, 30, !dbg !241              ; [#uses=1 type=i32] [debug line = 57:13]
  %231 = or i32 %227, %230, !dbg !241             ; [#uses=1 type=i32] [debug line = 57:13]
  %232 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %233 = load i32* %232, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %234 = lshr i32 %233, 13, !dbg !241             ; [#uses=1 type=i32] [debug line = 57:13]
  %235 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %236 = load i32* %235, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %237 = shl i32 %236, 19, !dbg !241              ; [#uses=1 type=i32] [debug line = 57:13]
  %238 = or i32 %234, %237, !dbg !241             ; [#uses=1 type=i32] [debug line = 57:13]
  %239 = xor i32 %231, %238, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %240 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %241 = load i32* %240, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %242 = lshr i32 %241, 22, !dbg !241             ; [#uses=1 type=i32] [debug line = 57:13]
  %243 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %244 = load i32* %243, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %245 = shl i32 %244, 10, !dbg !241              ; [#uses=1 type=i32] [debug line = 57:13]
  %246 = or i32 %242, %245, !dbg !241             ; [#uses=1 type=i32] [debug line = 57:13]
  %247 = xor i32 %239, %246, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %248 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %249 = load i32* %248, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %250 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %251 = load i32* %250, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %252 = and i32 %249, %251, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %253 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %254 = load i32* %253, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %255 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %256 = load i32* %255, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %257 = and i32 %254, %256, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %258 = xor i32 %252, %257, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %259 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %260 = load i32* %259, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %261 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !241 ; [#uses=1 type=i32*] [debug line = 57:13]
  %262 = load i32* %261, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 57:13]
  %263 = and i32 %260, %262, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %264 = xor i32 %258, %263, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  %265 = add i32 %247, %264, !dbg !241            ; [#uses=1 type=i32] [debug line = 57:13]
  store i32 %265, i32* %t2, align 4, !dbg !241    ; [debug line = 57:13]
  %266 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 6, !dbg !242 ; [#uses=1 type=i32*] [debug line = 58:13]
  %267 = load i32* %266, align 4, !dbg !242       ; [#uses=1 type=i32] [debug line = 58:13]
  %268 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 7, !dbg !242 ; [#uses=1 type=i32*] [debug line = 58:13]
  store i32 %267, i32* %268, align 4, !dbg !242   ; [debug line = 58:13]
  %269 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 5, !dbg !243 ; [#uses=1 type=i32*] [debug line = 59:13]
  %270 = load i32* %269, align 4, !dbg !243       ; [#uses=1 type=i32] [debug line = 59:13]
  %271 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 6, !dbg !243 ; [#uses=1 type=i32*] [debug line = 59:13]
  store i32 %270, i32* %271, align 4, !dbg !243   ; [debug line = 59:13]
  %272 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !244 ; [#uses=1 type=i32*] [debug line = 60:13]
  %273 = load i32* %272, align 4, !dbg !244       ; [#uses=1 type=i32] [debug line = 60:13]
  %274 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 5, !dbg !244 ; [#uses=1 type=i32*] [debug line = 60:13]
  store i32 %273, i32* %274, align 4, !dbg !244   ; [debug line = 60:13]
  %275 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 3, !dbg !245 ; [#uses=1 type=i32*] [debug line = 61:13]
  %276 = load i32* %275, align 4, !dbg !245       ; [#uses=1 type=i32] [debug line = 61:13]
  %277 = load i32* %t1, align 4, !dbg !245        ; [#uses=1 type=i32] [debug line = 61:13]
  %278 = add i32 %276, %277, !dbg !245            ; [#uses=1 type=i32] [debug line = 61:13]
  %279 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !245 ; [#uses=1 type=i32*] [debug line = 61:13]
  store i32 %278, i32* %279, align 4, !dbg !245   ; [debug line = 61:13]
  %280 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !246 ; [#uses=1 type=i32*] [debug line = 62:13]
  %281 = load i32* %280, align 4, !dbg !246       ; [#uses=1 type=i32] [debug line = 62:13]
  %282 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 3, !dbg !246 ; [#uses=1 type=i32*] [debug line = 62:13]
  store i32 %281, i32* %282, align 4, !dbg !246   ; [debug line = 62:13]
  %283 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !247 ; [#uses=1 type=i32*] [debug line = 63:13]
  %284 = load i32* %283, align 4, !dbg !247       ; [#uses=1 type=i32] [debug line = 63:13]
  %285 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !247 ; [#uses=1 type=i32*] [debug line = 63:13]
  store i32 %284, i32* %285, align 4, !dbg !247   ; [debug line = 63:13]
  %286 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !248 ; [#uses=1 type=i32*] [debug line = 64:13]
  %287 = load i32* %286, align 4, !dbg !248       ; [#uses=1 type=i32] [debug line = 64:13]
  %288 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !248 ; [#uses=1 type=i32*] [debug line = 64:13]
  store i32 %287, i32* %288, align 4, !dbg !248   ; [debug line = 64:13]
  %289 = load i32* %t1, align 4, !dbg !249        ; [#uses=1 type=i32] [debug line = 65:13]
  %290 = load i32* %t2, align 4, !dbg !249        ; [#uses=1 type=i32] [debug line = 65:13]
  %291 = add i32 %289, %290, !dbg !249            ; [#uses=1 type=i32] [debug line = 65:13]
  %292 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !249 ; [#uses=1 type=i32*] [debug line = 65:13]
  store i32 %291, i32* %292, align 4, !dbg !249   ; [debug line = 65:13]
  br label %293, !dbg !250                        ; [debug line = 66:9]

; <label>:293                                     ; preds = %175
  %294 = load i32* %j, align 4, !dbg !251         ; [#uses=1 type=i32] [debug line = 54:29]
  %295 = add nsw i32 %294, 1, !dbg !251           ; [#uses=1 type=i32] [debug line = 54:29]
  store i32 %295, i32* %j, align 4, !dbg !251     ; [debug line = 54:29]
  br label %172, !dbg !251                        ; [debug line = 54:29]

; <label>:296                                     ; preds = %172
  store i32 0, i32* %j, align 4, !dbg !252        ; [debug line = 67:14]
  br label %297, !dbg !252                        ; [debug line = 67:14]

; <label>:297                                     ; preds = %311, %296
  %298 = load i32* %j, align 4, !dbg !252         ; [#uses=1 type=i32] [debug line = 67:14]
  %299 = icmp slt i32 %298, 8, !dbg !252          ; [#uses=1 type=i1] [debug line = 67:14]
  br i1 %299, label %300, label %314, !dbg !252   ; [debug line = 67:14]

; <label>:300                                     ; preds = %297
  %301 = load i32* %j, align 4, !dbg !254         ; [#uses=1 type=i32] [debug line = 68:13]
  %302 = sext i32 %301 to i64, !dbg !254          ; [#uses=1 type=i64] [debug line = 68:13]
  %303 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 %302, !dbg !254 ; [#uses=1 type=i32*] [debug line = 68:13]
  %304 = load i32* %303, align 4, !dbg !254       ; [#uses=1 type=i32] [debug line = 68:13]
  %305 = load i32* %j, align 4, !dbg !254         ; [#uses=1 type=i32] [debug line = 68:13]
  %306 = sext i32 %305 to i64, !dbg !254          ; [#uses=1 type=i64] [debug line = 68:13]
  %307 = getelementptr inbounds %class.SHA256* %4, i32 0, i32 3, !dbg !254 ; [#uses=1 type=[8 x i32]*] [debug line = 68:13]
  %308 = getelementptr inbounds [8 x i32]* %307, i32 0, i64 %306, !dbg !254 ; [#uses=2 type=i32*] [debug line = 68:13]
  %309 = load i32* %308, align 4, !dbg !254       ; [#uses=1 type=i32] [debug line = 68:13]
  %310 = add i32 %309, %304, !dbg !254            ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %310, i32* %308, align 4, !dbg !254   ; [debug line = 68:13]
  br label %311, !dbg !256                        ; [debug line = 69:9]

; <label>:311                                     ; preds = %300
  %312 = load i32* %j, align 4, !dbg !257         ; [#uses=1 type=i32] [debug line = 67:28]
  %313 = add nsw i32 %312, 1, !dbg !257           ; [#uses=1 type=i32] [debug line = 67:28]
  store i32 %313, i32* %j, align 4, !dbg !257     ; [debug line = 67:28]
  br label %297, !dbg !257                        ; [debug line = 67:28]

; <label>:314                                     ; preds = %297
  br label %315, !dbg !258                        ; [debug line = 70:5]

; <label>:315                                     ; preds = %314
  %316 = load i32* %i, align 4, !dbg !259         ; [#uses=1 type=i32] [debug line = 43:37]
  %317 = add nsw i32 %316, 1, !dbg !259           ; [#uses=1 type=i32] [debug line = 43:37]
  store i32 %317, i32* %i, align 4, !dbg !259     ; [debug line = 43:37]
  br label %5, !dbg !259                          ; [debug line = 43:37]

; <label>:318                                     ; preds = %5
  ret void, !dbg !260                             ; [debug line = 71:1]
}

; [#uses=1]
define void @_ZN6SHA2564initEv(%class.SHA256* %this) nounwind uwtable align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !261), !dbg !262 ; [debug line = 73:14] [debug variable = this]
  %2 = load %class.SHA256** %1                    ; [#uses=10 type=%class.SHA256*]
  %3 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !263 ; [#uses=1 type=[8 x i32]*] [debug line = 75:5]
  %4 = getelementptr inbounds [8 x i32]* %3, i32 0, i64 0, !dbg !263 ; [#uses=1 type=i32*] [debug line = 75:5]
  store i32 1779033703, i32* %4, align 4, !dbg !263 ; [debug line = 75:5]
  %5 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !265 ; [#uses=1 type=[8 x i32]*] [debug line = 76:5]
  %6 = getelementptr inbounds [8 x i32]* %5, i32 0, i64 1, !dbg !265 ; [#uses=1 type=i32*] [debug line = 76:5]
  store i32 -1150833019, i32* %6, align 4, !dbg !265 ; [debug line = 76:5]
  %7 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !266 ; [#uses=1 type=[8 x i32]*] [debug line = 77:5]
  %8 = getelementptr inbounds [8 x i32]* %7, i32 0, i64 2, !dbg !266 ; [#uses=1 type=i32*] [debug line = 77:5]
  store i32 1013904242, i32* %8, align 4, !dbg !266 ; [debug line = 77:5]
  %9 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !267 ; [#uses=1 type=[8 x i32]*] [debug line = 78:5]
  %10 = getelementptr inbounds [8 x i32]* %9, i32 0, i64 3, !dbg !267 ; [#uses=1 type=i32*] [debug line = 78:5]
  store i32 -1521486534, i32* %10, align 4, !dbg !267 ; [debug line = 78:5]
  %11 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !268 ; [#uses=1 type=[8 x i32]*] [debug line = 79:5]
  %12 = getelementptr inbounds [8 x i32]* %11, i32 0, i64 4, !dbg !268 ; [#uses=1 type=i32*] [debug line = 79:5]
  store i32 1359893119, i32* %12, align 4, !dbg !268 ; [debug line = 79:5]
  %13 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !269 ; [#uses=1 type=[8 x i32]*] [debug line = 80:5]
  %14 = getelementptr inbounds [8 x i32]* %13, i32 0, i64 5, !dbg !269 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 -1694144372, i32* %14, align 4, !dbg !269 ; [debug line = 80:5]
  %15 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !270 ; [#uses=1 type=[8 x i32]*] [debug line = 81:5]
  %16 = getelementptr inbounds [8 x i32]* %15, i32 0, i64 6, !dbg !270 ; [#uses=1 type=i32*] [debug line = 81:5]
  store i32 528734635, i32* %16, align 4, !dbg !270 ; [debug line = 81:5]
  %17 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !271 ; [#uses=1 type=[8 x i32]*] [debug line = 82:5]
  %18 = getelementptr inbounds [8 x i32]* %17, i32 0, i64 7, !dbg !271 ; [#uses=1 type=i32*] [debug line = 82:5]
  store i32 1541459225, i32* %18, align 4, !dbg !271 ; [debug line = 82:5]
  %19 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 1, !dbg !272 ; [#uses=1 type=i32*] [debug line = 83:5]
  store i32 0, i32* %19, align 4, !dbg !272       ; [debug line = 83:5]
  %20 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 0, !dbg !273 ; [#uses=1 type=i32*] [debug line = 84:5]
  store i32 0, i32* %20, align 4, !dbg !273       ; [debug line = 84:5]
  ret void, !dbg !274                             ; [debug line = 85:1]
}

; [#uses=1]
define void @_ZN6SHA2566updateEPKh(%class.SHA256* %this, i8* %message) nounwind uwtable align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %block_nb = alloca i32, align 4                 ; [#uses=4 type=i32*]
  %new_len = alloca i32, align 4                  ; [#uses=3 type=i32*]
  %rem_len = alloca i32, align 4                  ; [#uses=7 type=i32*]
  %tmp_len = alloca i32, align 4                  ; [#uses=3 type=i32*]
  %len = alloca i32, align 4                      ; [#uses=6 type=i32*]
  %shifted_message = alloca i8*, align 8          ; [#uses=3 type=i8**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !275), !dbg !276 ; [debug line = 87:14] [debug variable = this]
  store i8* %message, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !277), !dbg !278 ; [debug line = 87:41] [debug variable = message]
  %3 = load %class.SHA256** %1                    ; [#uses=11 type=%class.SHA256*]
  %4 = load i8** %2, align 8, !dbg !279           ; [#uses=1 type=i8*] [debug line = 88:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 64) nounwind, !dbg !279 ; [debug line = 88:2]
  call void @llvm.dbg.declare(metadata !{i32* %block_nb}, metadata !281), !dbg !282 ; [debug line = 89:18] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{i32* %new_len}, metadata !283), !dbg !284 ; [debug line = 90:18] [debug variable = new_len]
  call void @llvm.dbg.declare(metadata !{i32* %rem_len}, metadata !285), !dbg !286 ; [debug line = 90:27] [debug variable = rem_len]
  call void @llvm.dbg.declare(metadata !{i32* %tmp_len}, metadata !287), !dbg !288 ; [debug line = 90:36] [debug variable = tmp_len]
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !289), !dbg !290 ; [debug line = 90:45] [debug variable = len]
  store i32 64, i32* %len, align 4, !dbg !291     ; [debug line = 90:53]
  call void @llvm.dbg.declare(metadata !{i8** %shifted_message}, metadata !292), !dbg !293 ; [debug line = 91:26] [debug variable = shifted_message]
  %5 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !294 ; [#uses=1 type=i32*] [debug line = 92:5]
  %6 = load i32* %5, align 4, !dbg !294           ; [#uses=1 type=i32] [debug line = 92:5]
  %7 = sub i32 64, %6, !dbg !294                  ; [#uses=1 type=i32] [debug line = 92:5]
  store i32 %7, i32* %tmp_len, align 4, !dbg !294 ; [debug line = 92:5]
  %8 = load i32* %len, align 4, !dbg !295         ; [#uses=1 type=i32] [debug line = 93:5]
  %9 = load i32* %tmp_len, align 4, !dbg !295     ; [#uses=1 type=i32] [debug line = 93:5]
  %10 = icmp ult i32 %8, %9, !dbg !295            ; [#uses=1 type=i1] [debug line = 93:5]
  %11 = load i32* %len, align 4, !dbg !295        ; [#uses=1 type=i32] [debug line = 93:5]
  %12 = load i32* %tmp_len, align 4, !dbg !295    ; [#uses=1 type=i32] [debug line = 93:5]
  %13 = select i1 %10, i32 %11, i32 %12, !dbg !295 ; [#uses=1 type=i32] [debug line = 93:5]
  store i32 %13, i32* %rem_len, align 4, !dbg !295 ; [debug line = 93:5]
  %14 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !296 ; [#uses=1 type=i32*] [debug line = 94:5]
  %15 = load i32* %14, align 4, !dbg !296         ; [#uses=1 type=i32] [debug line = 94:5]
  %16 = zext i32 %15 to i64, !dbg !296            ; [#uses=1 type=i64] [debug line = 94:5]
  %17 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !296 ; [#uses=1 type=[128 x i8]*] [debug line = 94:5]
  %18 = getelementptr inbounds [128 x i8]* %17, i32 0, i64 %16, !dbg !296 ; [#uses=1 type=i8*] [debug line = 94:5]
  %19 = load i8** %2, align 8, !dbg !296          ; [#uses=1 type=i8*] [debug line = 94:5]
  %20 = load i32* %rem_len, align 4, !dbg !296    ; [#uses=1 type=i32] [debug line = 94:5]
  call void @_Z7_memcpyPhS_j(i8* %18, i8* %19, i32 %20), !dbg !296 ; [debug line = 94:5]
  %21 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !297 ; [#uses=1 type=i32*] [debug line = 95:5]
  %22 = load i32* %21, align 4, !dbg !297         ; [#uses=1 type=i32] [debug line = 95:5]
  %23 = load i32* %len, align 4, !dbg !297        ; [#uses=1 type=i32] [debug line = 95:5]
  %24 = add i32 %22, %23, !dbg !297               ; [#uses=1 type=i32] [debug line = 95:5]
  %25 = icmp ult i32 %24, 64, !dbg !297           ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %25, label %26, label %31, !dbg !297      ; [debug line = 95:5]

; <label>:26                                      ; preds = %0
  %27 = load i32* %len, align 4, !dbg !298        ; [#uses=1 type=i32] [debug line = 96:9]
  %28 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !298 ; [#uses=2 type=i32*] [debug line = 96:9]
  %29 = load i32* %28, align 4, !dbg !298         ; [#uses=1 type=i32] [debug line = 96:9]
  %30 = add i32 %29, %27, !dbg !298               ; [#uses=1 type=i32] [debug line = 96:9]
  store i32 %30, i32* %28, align 4, !dbg !298     ; [debug line = 96:9]
  br label %63, !dbg !300                         ; [debug line = 97:9]

; <label>:31                                      ; preds = %0
  %32 = load i32* %len, align 4, !dbg !301        ; [#uses=1 type=i32] [debug line = 99:5]
  %33 = load i32* %rem_len, align 4, !dbg !301    ; [#uses=1 type=i32] [debug line = 99:5]
  %34 = sub i32 %32, %33, !dbg !301               ; [#uses=1 type=i32] [debug line = 99:5]
  store i32 %34, i32* %new_len, align 4, !dbg !301 ; [debug line = 99:5]
  %35 = load i32* %new_len, align 4, !dbg !302    ; [#uses=1 type=i32] [debug line = 100:5]
  %36 = udiv i32 %35, 64, !dbg !302               ; [#uses=1 type=i32] [debug line = 100:5]
  store i32 %36, i32* %block_nb, align 4, !dbg !302 ; [debug line = 100:5]
  %37 = load i8** %2, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 101:5]
  %38 = load i32* %rem_len, align 4, !dbg !303    ; [#uses=1 type=i32] [debug line = 101:5]
  %39 = zext i32 %38 to i64, !dbg !303            ; [#uses=1 type=i64] [debug line = 101:5]
  %40 = getelementptr inbounds i8* %37, i64 %39, !dbg !303 ; [#uses=1 type=i8*] [debug line = 101:5]
  store i8* %40, i8** %shifted_message, align 8, !dbg !303 ; [debug line = 101:5]
  %41 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !304 ; [#uses=1 type=[128 x i8]*] [debug line = 102:5]
  %42 = getelementptr inbounds [128 x i8]* %41, i32 0, i32 0, !dbg !304 ; [#uses=1 type=i8*] [debug line = 102:5]
  call void @_ZN6SHA2569transformEPKhj(%class.SHA256* %3, i8* %42, i32 1), !dbg !304 ; [debug line = 102:5]
  %43 = load i8** %shifted_message, align 8, !dbg !305 ; [#uses=1 type=i8*] [debug line = 103:5]
  %44 = load i32* %block_nb, align 4, !dbg !305   ; [#uses=1 type=i32] [debug line = 103:5]
  call void @_ZN6SHA2569transformEPKhj(%class.SHA256* %3, i8* %43, i32 %44), !dbg !305 ; [debug line = 103:5]
  %45 = load i32* %new_len, align 4, !dbg !306    ; [#uses=1 type=i32] [debug line = 104:5]
  %46 = urem i32 %45, 64, !dbg !306               ; [#uses=1 type=i32] [debug line = 104:5]
  store i32 %46, i32* %rem_len, align 4, !dbg !306 ; [debug line = 104:5]
  %47 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !307 ; [#uses=1 type=[128 x i8]*] [debug line = 105:5]
  %48 = getelementptr inbounds [128 x i8]* %47, i32 0, i32 0, !dbg !307 ; [#uses=1 type=i8*] [debug line = 105:5]
  %49 = load i32* %block_nb, align 4, !dbg !307   ; [#uses=1 type=i32] [debug line = 105:5]
  %50 = shl i32 %49, 6, !dbg !307                 ; [#uses=1 type=i32] [debug line = 105:5]
  %51 = zext i32 %50 to i64, !dbg !307            ; [#uses=1 type=i64] [debug line = 105:5]
  %52 = load i8** %shifted_message, align 8, !dbg !307 ; [#uses=1 type=i8*] [debug line = 105:5]
  %53 = getelementptr inbounds i8* %52, i64 %51, !dbg !307 ; [#uses=1 type=i8*] [debug line = 105:5]
  %54 = load i32* %rem_len, align 4, !dbg !307    ; [#uses=1 type=i32] [debug line = 105:5]
  call void @_Z7_memcpyPhS_j(i8* %48, i8* %53, i32 %54), !dbg !307 ; [debug line = 105:5]
  %55 = load i32* %rem_len, align 4, !dbg !308    ; [#uses=1 type=i32] [debug line = 106:5]
  %56 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !308 ; [#uses=1 type=i32*] [debug line = 106:5]
  store i32 %55, i32* %56, align 4, !dbg !308     ; [debug line = 106:5]
  %57 = load i32* %block_nb, align 4, !dbg !309   ; [#uses=1 type=i32] [debug line = 107:5]
  %58 = add i32 %57, 1, !dbg !309                 ; [#uses=1 type=i32] [debug line = 107:5]
  %59 = shl i32 %58, 6, !dbg !309                 ; [#uses=1 type=i32] [debug line = 107:5]
  %60 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 0, !dbg !309 ; [#uses=2 type=i32*] [debug line = 107:5]
  %61 = load i32* %60, align 4, !dbg !309         ; [#uses=1 type=i32] [debug line = 107:5]
  %62 = add i32 %61, %59, !dbg !309               ; [#uses=1 type=i32] [debug line = 107:5]
  store i32 %62, i32* %60, align 4, !dbg !309     ; [debug line = 107:5]
  br label %63, !dbg !310                         ; [debug line = 108:1]

; <label>:63                                      ; preds = %31, %26
  ret void, !dbg !310                             ; [debug line = 108:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define void @_ZN6SHA2565finalEPh(%class.SHA256* %this, i8* %digest) nounwind uwtable align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  %2 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %block_nb = alloca i32, align 4                 ; [#uses=3 type=i32*]
  %pm_len = alloca i32, align 4                   ; [#uses=6 type=i32*]
  %len_b = alloca i32, align 4                    ; [#uses=5 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=12 type=i32*]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !311), !dbg !312 ; [debug line = 110:14] [debug variable = this]
  store i8* %digest, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !313), !dbg !314 ; [debug line = 110:35] [debug variable = digest]
  %3 = load %class.SHA256** %1                    ; [#uses=18 type=%class.SHA256*]
  call void @llvm.dbg.declare(metadata !{i32* %block_nb}, metadata !315), !dbg !317 ; [debug line = 112:18] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{i32* %pm_len}, metadata !318), !dbg !319 ; [debug line = 113:18] [debug variable = pm_len]
  call void @llvm.dbg.declare(metadata !{i32* %len_b}, metadata !320), !dbg !321 ; [debug line = 114:18] [debug variable = len_b]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !322), !dbg !323 ; [debug line = 115:9] [debug variable = i]
  %4 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !324 ; [#uses=1 type=i32*] [debug line = 116:5]
  %5 = load i32* %4, align 4, !dbg !324           ; [#uses=1 type=i32] [debug line = 116:5]
  %6 = urem i32 %5, 64, !dbg !324                 ; [#uses=1 type=i32] [debug line = 116:5]
  %7 = icmp ult i32 55, %6, !dbg !324             ; [#uses=1 type=i1] [debug line = 116:5]
  %8 = zext i1 %7 to i32, !dbg !324               ; [#uses=1 type=i32] [debug line = 116:5]
  %9 = add nsw i32 1, %8, !dbg !324               ; [#uses=1 type=i32] [debug line = 116:5]
  store i32 %9, i32* %block_nb, align 4, !dbg !324 ; [debug line = 116:5]
  %10 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 0, !dbg !325 ; [#uses=1 type=i32*] [debug line = 118:5]
  %11 = load i32* %10, align 4, !dbg !325         ; [#uses=1 type=i32] [debug line = 118:5]
  %12 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !325 ; [#uses=1 type=i32*] [debug line = 118:5]
  %13 = load i32* %12, align 4, !dbg !325         ; [#uses=1 type=i32] [debug line = 118:5]
  %14 = add i32 %11, %13, !dbg !325               ; [#uses=1 type=i32] [debug line = 118:5]
  %15 = shl i32 %14, 3, !dbg !325                 ; [#uses=1 type=i32] [debug line = 118:5]
  store i32 %15, i32* %len_b, align 4, !dbg !325  ; [debug line = 118:5]
  %16 = load i32* %block_nb, align 4, !dbg !326   ; [#uses=1 type=i32] [debug line = 119:5]
  %17 = shl i32 %16, 6, !dbg !326                 ; [#uses=1 type=i32] [debug line = 119:5]
  store i32 %17, i32* %pm_len, align 4, !dbg !326 ; [debug line = 119:5]
  %18 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !327 ; [#uses=1 type=[128 x i8]*] [debug line = 120:5]
  %19 = getelementptr inbounds [128 x i8]* %18, i32 0, i32 0, !dbg !327 ; [#uses=1 type=i8*] [debug line = 120:5]
  %20 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !327 ; [#uses=1 type=i32*] [debug line = 120:5]
  %21 = load i32* %20, align 4, !dbg !327         ; [#uses=1 type=i32] [debug line = 120:5]
  %22 = zext i32 %21 to i64, !dbg !327            ; [#uses=1 type=i64] [debug line = 120:5]
  %23 = getelementptr inbounds i8* %19, i64 %22, !dbg !327 ; [#uses=1 type=i8*] [debug line = 120:5]
  %24 = load i32* %pm_len, align 4, !dbg !327     ; [#uses=1 type=i32] [debug line = 120:5]
  %25 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !327 ; [#uses=1 type=i32*] [debug line = 120:5]
  %26 = load i32* %25, align 4, !dbg !327         ; [#uses=1 type=i32] [debug line = 120:5]
  %27 = sub i32 %24, %26, !dbg !327               ; [#uses=1 type=i32] [debug line = 120:5]
  call void @_Z7_memsetPhhj(i8* %23, i8 zeroext 0, i32 %27), !dbg !327 ; [debug line = 120:5]
  %28 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !328 ; [#uses=1 type=i32*] [debug line = 121:5]
  %29 = load i32* %28, align 4, !dbg !328         ; [#uses=1 type=i32] [debug line = 121:5]
  %30 = zext i32 %29 to i64, !dbg !328            ; [#uses=1 type=i64] [debug line = 121:5]
  %31 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !328 ; [#uses=1 type=[128 x i8]*] [debug line = 121:5]
  %32 = getelementptr inbounds [128 x i8]* %31, i32 0, i64 %30, !dbg !328 ; [#uses=1 type=i8*] [debug line = 121:5]
  store i8 -128, i8* %32, align 1, !dbg !328      ; [debug line = 121:5]
  %33 = load i32* %len_b, align 4, !dbg !329      ; [#uses=1 type=i32] [debug line = 122:7]
  %34 = trunc i32 %33 to i8, !dbg !329            ; [#uses=1 type=i8] [debug line = 122:7]
  %35 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !329 ; [#uses=1 type=[128 x i8]*] [debug line = 122:7]
  %36 = getelementptr inbounds [128 x i8]* %35, i32 0, i32 0, !dbg !329 ; [#uses=1 type=i8*] [debug line = 122:7]
  %37 = load i32* %pm_len, align 4, !dbg !329     ; [#uses=1 type=i32] [debug line = 122:7]
  %38 = zext i32 %37 to i64, !dbg !329            ; [#uses=1 type=i64] [debug line = 122:7]
  %39 = getelementptr inbounds i8* %36, i64 %38, !dbg !329 ; [#uses=1 type=i8*] [debug line = 122:7]
  %40 = getelementptr inbounds i8* %39, i64 -4, !dbg !329 ; [#uses=1 type=i8*] [debug line = 122:7]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !329 ; [#uses=1 type=i8*] [debug line = 122:7]
  store i8 %34, i8* %41, align 1, !dbg !329       ; [debug line = 122:7]
  %42 = load i32* %len_b, align 4, !dbg !331      ; [#uses=1 type=i32] [debug line = 122:59]
  %43 = lshr i32 %42, 8, !dbg !331                ; [#uses=1 type=i32] [debug line = 122:59]
  %44 = trunc i32 %43 to i8, !dbg !331            ; [#uses=1 type=i8] [debug line = 122:59]
  %45 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !331 ; [#uses=1 type=[128 x i8]*] [debug line = 122:59]
  %46 = getelementptr inbounds [128 x i8]* %45, i32 0, i32 0, !dbg !331 ; [#uses=1 type=i8*] [debug line = 122:59]
  %47 = load i32* %pm_len, align 4, !dbg !331     ; [#uses=1 type=i32] [debug line = 122:59]
  %48 = zext i32 %47 to i64, !dbg !331            ; [#uses=1 type=i64] [debug line = 122:59]
  %49 = getelementptr inbounds i8* %46, i64 %48, !dbg !331 ; [#uses=1 type=i8*] [debug line = 122:59]
  %50 = getelementptr inbounds i8* %49, i64 -4, !dbg !331 ; [#uses=1 type=i8*] [debug line = 122:59]
  %51 = getelementptr inbounds i8* %50, i64 2, !dbg !331 ; [#uses=1 type=i8*] [debug line = 122:59]
  store i8 %44, i8* %51, align 1, !dbg !331       ; [debug line = 122:59]
  %52 = load i32* %len_b, align 4, !dbg !332      ; [#uses=1 type=i32] [debug line = 122:115]
  %53 = lshr i32 %52, 16, !dbg !332               ; [#uses=1 type=i32] [debug line = 122:115]
  %54 = trunc i32 %53 to i8, !dbg !332            ; [#uses=1 type=i8] [debug line = 122:115]
  %55 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !332 ; [#uses=1 type=[128 x i8]*] [debug line = 122:115]
  %56 = getelementptr inbounds [128 x i8]* %55, i32 0, i32 0, !dbg !332 ; [#uses=1 type=i8*] [debug line = 122:115]
  %57 = load i32* %pm_len, align 4, !dbg !332     ; [#uses=1 type=i32] [debug line = 122:115]
  %58 = zext i32 %57 to i64, !dbg !332            ; [#uses=1 type=i64] [debug line = 122:115]
  %59 = getelementptr inbounds i8* %56, i64 %58, !dbg !332 ; [#uses=1 type=i8*] [debug line = 122:115]
  %60 = getelementptr inbounds i8* %59, i64 -4, !dbg !332 ; [#uses=1 type=i8*] [debug line = 122:115]
  %61 = getelementptr inbounds i8* %60, i64 1, !dbg !332 ; [#uses=1 type=i8*] [debug line = 122:115]
  store i8 %54, i8* %61, align 1, !dbg !332       ; [debug line = 122:115]
  %62 = load i32* %len_b, align 4, !dbg !333      ; [#uses=1 type=i32] [debug line = 122:172]
  %63 = lshr i32 %62, 24, !dbg !333               ; [#uses=1 type=i32] [debug line = 122:172]
  %64 = trunc i32 %63 to i8, !dbg !333            ; [#uses=1 type=i8] [debug line = 122:172]
  %65 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !333 ; [#uses=1 type=[128 x i8]*] [debug line = 122:172]
  %66 = getelementptr inbounds [128 x i8]* %65, i32 0, i32 0, !dbg !333 ; [#uses=1 type=i8*] [debug line = 122:172]
  %67 = load i32* %pm_len, align 4, !dbg !333     ; [#uses=1 type=i32] [debug line = 122:172]
  %68 = zext i32 %67 to i64, !dbg !333            ; [#uses=1 type=i64] [debug line = 122:172]
  %69 = getelementptr inbounds i8* %66, i64 %68, !dbg !333 ; [#uses=1 type=i8*] [debug line = 122:172]
  %70 = getelementptr inbounds i8* %69, i64 -4, !dbg !333 ; [#uses=1 type=i8*] [debug line = 122:172]
  %71 = getelementptr inbounds i8* %70, i64 0, !dbg !333 ; [#uses=1 type=i8*] [debug line = 122:172]
  store i8 %64, i8* %71, align 1, !dbg !333       ; [debug line = 122:172]
  %72 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !334 ; [#uses=1 type=[128 x i8]*] [debug line = 123:5]
  %73 = getelementptr inbounds [128 x i8]* %72, i32 0, i32 0, !dbg !334 ; [#uses=1 type=i8*] [debug line = 123:5]
  %74 = load i32* %block_nb, align 4, !dbg !334   ; [#uses=1 type=i32] [debug line = 123:5]
  call void @_ZN6SHA2569transformEPKhj(%class.SHA256* %3, i8* %73, i32 %74), !dbg !334 ; [debug line = 123:5]
  store i32 0, i32* %i, align 4, !dbg !335        ; [debug line = 124:10]
  br label %75, !dbg !335                         ; [debug line = 124:10]

; <label>:75                                      ; preds = %130, %0
  %76 = load i32* %i, align 4, !dbg !335          ; [#uses=1 type=i32] [debug line = 124:10]
  %77 = icmp slt i32 %76, 8, !dbg !335            ; [#uses=1 type=i1] [debug line = 124:10]
  br i1 %77, label %78, label %133, !dbg !335     ; [debug line = 124:10]

; <label>:78                                      ; preds = %75
  %79 = load i32* %i, align 4, !dbg !337          ; [#uses=1 type=i32] [debug line = 125:11]
  %80 = sext i32 %79 to i64, !dbg !337            ; [#uses=1 type=i64] [debug line = 125:11]
  %81 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !337 ; [#uses=1 type=[8 x i32]*] [debug line = 125:11]
  %82 = getelementptr inbounds [8 x i32]* %81, i32 0, i64 %80, !dbg !337 ; [#uses=1 type=i32*] [debug line = 125:11]
  %83 = load i32* %82, align 4, !dbg !337         ; [#uses=1 type=i32] [debug line = 125:11]
  %84 = trunc i32 %83 to i8, !dbg !337            ; [#uses=1 type=i8] [debug line = 125:11]
  %85 = load i32* %i, align 4, !dbg !337          ; [#uses=1 type=i32] [debug line = 125:11]
  %86 = shl i32 %85, 2, !dbg !337                 ; [#uses=1 type=i32] [debug line = 125:11]
  %87 = sext i32 %86 to i64, !dbg !337            ; [#uses=1 type=i64] [debug line = 125:11]
  %88 = load i8** %2, align 8, !dbg !337          ; [#uses=1 type=i8*] [debug line = 125:11]
  %89 = getelementptr inbounds i8* %88, i64 %87, !dbg !337 ; [#uses=1 type=i8*] [debug line = 125:11]
  %90 = getelementptr inbounds i8* %89, i64 3, !dbg !337 ; [#uses=1 type=i8*] [debug line = 125:11]
  store i8 %84, i8* %90, align 1, !dbg !337       ; [debug line = 125:11]
  %91 = load i32* %i, align 4, !dbg !340          ; [#uses=1 type=i32] [debug line = 125:59]
  %92 = sext i32 %91 to i64, !dbg !340            ; [#uses=1 type=i64] [debug line = 125:59]
  %93 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !340 ; [#uses=1 type=[8 x i32]*] [debug line = 125:59]
  %94 = getelementptr inbounds [8 x i32]* %93, i32 0, i64 %92, !dbg !340 ; [#uses=1 type=i32*] [debug line = 125:59]
  %95 = load i32* %94, align 4, !dbg !340         ; [#uses=1 type=i32] [debug line = 125:59]
  %96 = lshr i32 %95, 8, !dbg !340                ; [#uses=1 type=i32] [debug line = 125:59]
  %97 = trunc i32 %96 to i8, !dbg !340            ; [#uses=1 type=i8] [debug line = 125:59]
  %98 = load i32* %i, align 4, !dbg !340          ; [#uses=1 type=i32] [debug line = 125:59]
  %99 = shl i32 %98, 2, !dbg !340                 ; [#uses=1 type=i32] [debug line = 125:59]
  %100 = sext i32 %99 to i64, !dbg !340           ; [#uses=1 type=i64] [debug line = 125:59]
  %101 = load i8** %2, align 8, !dbg !340         ; [#uses=1 type=i8*] [debug line = 125:59]
  %102 = getelementptr inbounds i8* %101, i64 %100, !dbg !340 ; [#uses=1 type=i8*] [debug line = 125:59]
  %103 = getelementptr inbounds i8* %102, i64 2, !dbg !340 ; [#uses=1 type=i8*] [debug line = 125:59]
  store i8 %97, i8* %103, align 1, !dbg !340      ; [debug line = 125:59]
  %104 = load i32* %i, align 4, !dbg !341         ; [#uses=1 type=i32] [debug line = 125:111]
  %105 = sext i32 %104 to i64, !dbg !341          ; [#uses=1 type=i64] [debug line = 125:111]
  %106 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !341 ; [#uses=1 type=[8 x i32]*] [debug line = 125:111]
  %107 = getelementptr inbounds [8 x i32]* %106, i32 0, i64 %105, !dbg !341 ; [#uses=1 type=i32*] [debug line = 125:111]
  %108 = load i32* %107, align 4, !dbg !341       ; [#uses=1 type=i32] [debug line = 125:111]
  %109 = lshr i32 %108, 16, !dbg !341             ; [#uses=1 type=i32] [debug line = 125:111]
  %110 = trunc i32 %109 to i8, !dbg !341          ; [#uses=1 type=i8] [debug line = 125:111]
  %111 = load i32* %i, align 4, !dbg !341         ; [#uses=1 type=i32] [debug line = 125:111]
  %112 = shl i32 %111, 2, !dbg !341               ; [#uses=1 type=i32] [debug line = 125:111]
  %113 = sext i32 %112 to i64, !dbg !341          ; [#uses=1 type=i64] [debug line = 125:111]
  %114 = load i8** %2, align 8, !dbg !341         ; [#uses=1 type=i8*] [debug line = 125:111]
  %115 = getelementptr inbounds i8* %114, i64 %113, !dbg !341 ; [#uses=1 type=i8*] [debug line = 125:111]
  %116 = getelementptr inbounds i8* %115, i64 1, !dbg !341 ; [#uses=1 type=i8*] [debug line = 125:111]
  store i8 %110, i8* %116, align 1, !dbg !341     ; [debug line = 125:111]
  %117 = load i32* %i, align 4, !dbg !342         ; [#uses=1 type=i32] [debug line = 125:164]
  %118 = sext i32 %117 to i64, !dbg !342          ; [#uses=1 type=i64] [debug line = 125:164]
  %119 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !342 ; [#uses=1 type=[8 x i32]*] [debug line = 125:164]
  %120 = getelementptr inbounds [8 x i32]* %119, i32 0, i64 %118, !dbg !342 ; [#uses=1 type=i32*] [debug line = 125:164]
  %121 = load i32* %120, align 4, !dbg !342       ; [#uses=1 type=i32] [debug line = 125:164]
  %122 = lshr i32 %121, 24, !dbg !342             ; [#uses=1 type=i32] [debug line = 125:164]
  %123 = trunc i32 %122 to i8, !dbg !342          ; [#uses=1 type=i8] [debug line = 125:164]
  %124 = load i32* %i, align 4, !dbg !342         ; [#uses=1 type=i32] [debug line = 125:164]
  %125 = shl i32 %124, 2, !dbg !342               ; [#uses=1 type=i32] [debug line = 125:164]
  %126 = sext i32 %125 to i64, !dbg !342          ; [#uses=1 type=i64] [debug line = 125:164]
  %127 = load i8** %2, align 8, !dbg !342         ; [#uses=1 type=i8*] [debug line = 125:164]
  %128 = getelementptr inbounds i8* %127, i64 %126, !dbg !342 ; [#uses=1 type=i8*] [debug line = 125:164]
  %129 = getelementptr inbounds i8* %128, i64 0, !dbg !342 ; [#uses=1 type=i8*] [debug line = 125:164]
  store i8 %123, i8* %129, align 1, !dbg !342     ; [debug line = 125:164]
  br label %130, !dbg !343                        ; [debug line = 126:5]

; <label>:130                                     ; preds = %78
  %131 = load i32* %i, align 4, !dbg !344         ; [#uses=1 type=i32] [debug line = 124:25]
  %132 = add nsw i32 %131, 1, !dbg !344           ; [#uses=1 type=i32] [debug line = 124:25]
  store i32 %132, i32* %i, align 4, !dbg !344     ; [debug line = 124:25]
  br label %75, !dbg !344                         ; [debug line = 124:25]

; <label>:133                                     ; preds = %75
  ret void, !dbg !345                             ; [debug line = 127:1]
}

; [#uses=0]
define void @_Z6sha256N3hls6streamIhEEiPh(%"class.hls::stream"* %stream_in, i32 %num_blocks, i8* %digest_out) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %data_buffer = alloca [64 x i8], align 16       ; [#uses=2 type=[64 x i8]*]
  %block_counter = alloca i32, align 4            ; [#uses=4 type=i32*]
  %data_index = alloca i32, align 4               ; [#uses=6 type=i32*]
  %cipher = alloca %class.SHA256, align 4         ; [#uses=4 type=%class.SHA256*]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %stream_in}, metadata !346), !dbg !348 ; [debug line = 129:24] [debug variable = stream_in]
  store i32 %num_blocks, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !349), !dbg !350 ; [debug line = 129:39] [debug variable = num_blocks]
  store i8* %digest_out, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !351), !dbg !352 ; [debug line = 129:65] [debug variable = digest_out]
  %3 = load i8** %2, align 8, !dbg !353           ; [#uses=1 type=i8*] [debug line = 129:81]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %3, i32 32) nounwind, !dbg !353 ; [debug line = 129:81]
  %4 = load i32* %1, align 4, !dbg !355           ; [#uses=1 type=i32] [debug line = 130:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %4, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !355 ; [debug line = 130:1]
  %5 = load i8** %2, align 8, !dbg !356           ; [#uses=1 type=i8*] [debug line = 131:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !356 ; [debug line = 131:1]
  %6 = load i32* %1, align 4, !dbg !357           ; [#uses=1 type=i32] [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %6, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !357 ; [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %stream_in, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !358 ; [debug line = 133:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %data_buffer}, metadata !359), !dbg !361 ; [debug line = 134:16] [debug variable = data_buffer]
  call void @llvm.dbg.declare(metadata !{i32* %block_counter}, metadata !362), !dbg !363 ; [debug line = 135:6] [debug variable = block_counter]
  call void @llvm.dbg.declare(metadata !{i32* %data_index}, metadata !364), !dbg !365 ; [debug line = 135:21] [debug variable = data_index]
  call void @llvm.dbg.declare(metadata !{%class.SHA256* %cipher}, metadata !366), !dbg !367 ; [debug line = 136:9] [debug variable = cipher]
  call void @_ZN6SHA256C1Ev(%class.SHA256* %cipher), !dbg !368 ; [debug line = 136:15]
  call void @_ZN6SHA2564initEv(%class.SHA256* %cipher), !dbg !369 ; [debug line = 138:2]
  store i32 0, i32* %block_counter, align 4, !dbg !370 ; [debug line = 140:6]
  br label %7, !dbg !370                          ; [debug line = 140:6]

; <label>:7                                       ; preds = %25, %0
  %8 = load i32* %block_counter, align 4, !dbg !370 ; [#uses=1 type=i32] [debug line = 140:6]
  %9 = load i32* %1, align 4, !dbg !370           ; [#uses=1 type=i32] [debug line = 140:6]
  %10 = icmp slt i32 %8, %9, !dbg !370            ; [#uses=1 type=i1] [debug line = 140:6]
  br i1 %10, label %11, label %28, !dbg !370      ; [debug line = 140:6]

; <label>:11                                      ; preds = %7
  store i32 0, i32* %data_index, align 4, !dbg !372 ; [debug line = 141:3]
  store i32 0, i32* %data_index, align 4, !dbg !374 ; [debug line = 142:7]
  br label %12, !dbg !374                         ; [debug line = 142:7]

; <label>:12                                      ; preds = %20, %11
  %13 = load i32* %data_index, align 4, !dbg !374 ; [#uses=1 type=i32] [debug line = 142:7]
  %14 = icmp slt i32 %13, 64, !dbg !374           ; [#uses=1 type=i1] [debug line = 142:7]
  br i1 %14, label %15, label %23, !dbg !374      ; [debug line = 142:7]

; <label>:15                                      ; preds = %12
  %16 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %stream_in), !dbg !376 ; [#uses=1 type=i8] [debug line = 143:30]
  %17 = load i32* %data_index, align 4, !dbg !376 ; [#uses=1 type=i32] [debug line = 143:30]
  %18 = sext i32 %17 to i64, !dbg !376            ; [#uses=1 type=i64] [debug line = 143:30]
  %19 = getelementptr inbounds [64 x i8]* %data_buffer, i32 0, i64 %18, !dbg !376 ; [#uses=1 type=i8*] [debug line = 143:30]
  store i8 %16, i8* %19, align 1, !dbg !376       ; [debug line = 143:30]
  br label %20, !dbg !378                         ; [debug line = 144:3]

; <label>:20                                      ; preds = %15
  %21 = load i32* %data_index, align 4, !dbg !379 ; [#uses=1 type=i32] [debug line = 142:36]
  %22 = add nsw i32 %21, 1, !dbg !379             ; [#uses=1 type=i32] [debug line = 142:36]
  store i32 %22, i32* %data_index, align 4, !dbg !379 ; [debug line = 142:36]
  br label %12, !dbg !379                         ; [debug line = 142:36]

; <label>:23                                      ; preds = %12
  %24 = getelementptr inbounds [64 x i8]* %data_buffer, i32 0, i32 0, !dbg !380 ; [#uses=1 type=i8*] [debug line = 145:3]
  call void @_ZN6SHA2566updateEPKh(%class.SHA256* %cipher, i8* %24), !dbg !380 ; [debug line = 145:3]
  br label %25, !dbg !381                         ; [debug line = 146:2]

; <label>:25                                      ; preds = %23
  %26 = load i32* %block_counter, align 4, !dbg !382 ; [#uses=1 type=i32] [debug line = 140:49]
  %27 = add nsw i32 %26, 1, !dbg !382             ; [#uses=1 type=i32] [debug line = 140:49]
  store i32 %27, i32* %block_counter, align 4, !dbg !382 ; [debug line = 140:49]
  br label %7, !dbg !382                          ; [debug line = 140:49]

; <label>:28                                      ; preds = %7
  %29 = load i8** %2, align 8, !dbg !383          ; [#uses=1 type=i8*] [debug line = 147:2]
  call void @_ZN6SHA2565finalEPh(%class.SHA256* %cipher, i8* %29), !dbg !383 ; [debug line = 147:2]
  ret void, !dbg !384                             ; [debug line = 148:1]
}

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN6SHA256C1Ev(%class.SHA256* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !385), !dbg !386 ; [debug line = 38:39] [debug variable = this]
  %2 = load %class.SHA256** %1                    ; [#uses=1 type=%class.SHA256*]
  call void @_ZN6SHA256C2Ev(%class.SHA256* %2), !dbg !387 ; [debug line = 38:80]
  ret void, !dbg !387                             ; [debug line = 38:80]
}

; [#uses=1]
define linkonce_odr zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !388), !dbg !390 ; [debug line = 129:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !391), !dbg !393 ; [debug line = 130:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !394 ; [#uses=1 type=i8*] [debug line = 131:9]
  call void (...)* @_ssdm_StreamRead(i8* %3, i8* %tmp) nounwind, !dbg !394 ; [debug line = 131:9]
  %4 = load i8* %tmp, align 1, !dbg !395          ; [#uses=1 type=i8] [debug line = 132:9]
  ret i8 %4, !dbg !395                            ; [debug line = 132:9]
}

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN6SHA256C2Ev(%class.SHA256* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !396), !dbg !397 ; [debug line = 38:39] [debug variable = this]
  %2 = load %class.SHA256** %1                    ; [#uses=0 type=%class.SHA256*]
  call void (...)* @_ssdm_SpecConstant(i32* getelementptr inbounds ([64 x i32]* @_ZN6SHA2568sha256_kE, i32 0, i32 0)) nounwind, !dbg !398 ; [debug line = 38:50]
  ret void, !dbg !400                             ; [debug line = 38:80]
}

; [#uses=1]
declare void @_ssdm_SpecConstant(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!120, !127, !131, !137, !143, !149, !152, !156, !157, !158}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_stream/solution1/.autopilot/db/sha256_stream.pragma.2.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !113} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !17, metadata !48, metadata !49, metadata !50, metadata !51, metadata !110, metadata !111, metadata !112}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_j", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_Z7_memcpyPhS_j, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sha256_stream/src/sha256_stream.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memset", metadata !"_memset", metadata !"_Z7_memsetPhhj", metadata !6, i32 10, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8, i32)* @_Z7_memsetPhhj, null, null, metadata !12, i32 10} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !9, metadata !10, metadata !11}
!17 = metadata !{i32 786478, i32 0, null, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !6, i32 35, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*, i8*, i32)* @_ZN6SHA2569transformEPKhj, null, metadata !46, metadata !12, i32 36} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20, metadata !41, metadata !11}
!20 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786434, null, metadata !"SHA256", metadata !22, i32 14, i64 1344, i64 32, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_class_type ]
!22 = metadata !{i32 786473, metadata !"sha256_stream/src/sha256_stream.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !30, metadata !35, metadata !38, metadata !43, metadata !46, metadata !47}
!24 = metadata !{i32 786445, metadata !21, metadata !"m_tot_len", metadata !22, i32 32, i64 32, i64 32, i64 0, i32 2, metadata !11} ; [ DW_TAG_member ]
!25 = metadata !{i32 786445, metadata !21, metadata !"m_len", metadata !22, i32 33, i64 32, i64 32, i64 32, i32 2, metadata !11} ; [ DW_TAG_member ]
!26 = metadata !{i32 786445, metadata !21, metadata !"m_block", metadata !22, i32 34, i64 1024, i64 8, i64 64, i32 2, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !10, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 786445, metadata !21, metadata !"m_h", metadata !22, i32 35, i64 256, i64 32, i64 1088, i32 2, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !32, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{i32 786454, metadata !21, metadata !"uint32", metadata !22, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 786478, i32 0, metadata !21, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !22, i32 24, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 24} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !20}
!38 = metadata !{i32 786478, i32 0, metadata !21, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !22, i32 26, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 26} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !20, metadata !41}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!43 = metadata !{i32 786478, i32 0, metadata !21, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !22, i32 27, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 27} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !20, metadata !9}
!46 = metadata !{i32 786478, i32 0, metadata !21, metadata !"transform", metadata !"transform", metadata !"_ZN6SHA2569transformEPKhj", metadata !22, i32 31, metadata !18, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, metadata !12, i32 31} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786478, i32 0, metadata !21, metadata !"SHA256", metadata !"SHA256", metadata !"", metadata !22, i32 38, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786478, i32 0, null, metadata !"init", metadata !"init", metadata !"_ZN6SHA2564initEv", metadata !6, i32 73, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*)* @_ZN6SHA2564initEv, null, metadata !35, metadata !12, i32 74} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786478, i32 0, null, metadata !"update", metadata !"update", metadata !"_ZN6SHA2566updateEPKh", metadata !6, i32 87, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*, i8*)* @_ZN6SHA2566updateEPKh, null, metadata !38, metadata !12, i32 88} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786478, i32 0, null, metadata !"final", metadata !"final", metadata !"_ZN6SHA2565finalEPh", metadata !6, i32 110, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*, i8*)* @_ZN6SHA2565finalEPh, null, metadata !43, metadata !12, i32 111} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256", metadata !"sha256", metadata !"_Z6sha256N3hls6streamIhEEiPh", metadata !6, i32 129, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32, i8*)* @_Z6sha256N3hls6streamIhEEiPh, null, null, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !54, metadata !109, metadata !9}
!54 = metadata !{i32 786454, null, metadata !"mem_stream", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 786434, metadata !56, metadata !"stream<unsigned char>", metadata !57, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!56 = metadata !{i32 786489, null, metadata !"hls", metadata !57, i32 69} ; [ DW_TAG_namespace ]
!57 = metadata !{i32 786473, metadata !"/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
!58 = metadata !{metadata !59, metadata !60, metadata !64, metadata !70, metadata !75, metadata !79, metadata !83, metadata !87, metadata !92, metadata !93, metadata !94, metadata !97, metadata !100, metadata !101, metadata !104}
!59 = metadata !{i32 786445, metadata !55, metadata !"V", metadata !57, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!60 = metadata !{i32 786478, i32 0, metadata !55, metadata !"stream", metadata !"stream", metadata !"", metadata !57, i32 83, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 83} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63}
!63 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !55} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786478, i32 0, metadata !55, metadata !"stream", metadata !"stream", metadata !"", metadata !57, i32 86, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 86} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !63, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !55, metadata !"stream", metadata !"stream", metadata !"", metadata !57, i32 91, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 91} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !63, metadata !73}
!73 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ]
!75 = metadata !{i32 786478, i32 0, metadata !55, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !57, i32 94, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !78, metadata !63, metadata !73}
!78 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_reference_type ]
!79 = metadata !{i32 786478, i32 0, metadata !55, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !57, i32 101, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 101} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !63, metadata !82}
!82 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!83 = metadata !{i32 786478, i32 0, metadata !55, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !57, i32 105, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 105} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !63, metadata !86}
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_reference_type ]
!87 = metadata !{i32 786478, i32 0, metadata !55, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !57, i32 112, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 112} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786478, i32 0, metadata !55, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !57, i32 117, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 117} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !57, i32 123, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 123} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !57, i32 129, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !10, metadata !63}
!97 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !57, i32 136, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 136} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !90, metadata !63, metadata !82}
!100 = metadata !{i32 786478, i32 0, metadata !55, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !57, i32 144, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 144} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786478, i32 0, metadata !55, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !57, i32 150, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 150} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !90, metadata !63, metadata !86}
!104 = metadata !{i32 786478, i32 0, metadata !55, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !57, i32 157, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !12, i32 157} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !11, metadata !63}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!109 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !56, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !57, i32 129, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, null, metadata !94, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C1Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*)* @_ZN6SHA256C1Ev, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C2Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*)* @_ZN6SHA256C2Ev, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786484, i32 0, metadata !21, metadata !"sha256_k", metadata !"sha256_k", metadata !"_ZN6SHA2568sha256_kE", metadata !6, i32 17, metadata !116, i32 0, i32 1, [64 x i32]* @_ZN6SHA2568sha256_kE} ; [ DW_TAG_variable ]
!116 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !117, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ]
!117 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!120 = metadata !{void (i8*, i8*, i32)* @_Z7_memcpyPhS_j, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!121 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!122 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!124 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"length"}
!126 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!127 = metadata !{void (i8*, i8, i32)* @_Z7_memsetPhhj, metadata !128, metadata !122, metadata !129, metadata !124, metadata !130, metadata !126}
!128 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar", metadata !"uint"}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"length"}
!131 = metadata !{void (%class.SHA256*, i8*, i32)* @_ZN6SHA2569transformEPKhj, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !126}
!132 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!133 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint"}
!135 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"message", metadata !"block_nb"}
!137 = metadata !{void (%class.SHA256*)* @_ZN6SHA2564initEv, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !126}
!138 = metadata !{metadata !"kernel_arg_addr_space"}
!139 = metadata !{metadata !"kernel_arg_access_qual"}
!140 = metadata !{metadata !"kernel_arg_type"}
!141 = metadata !{metadata !"kernel_arg_type_qual"}
!142 = metadata !{metadata !"kernel_arg_name"}
!143 = metadata !{void (%class.SHA256*, i8*)* @_ZN6SHA2566updateEPKh, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !126}
!144 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!145 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!147 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!148 = metadata !{metadata !"kernel_arg_name", metadata !"message"}
!149 = metadata !{void (%class.SHA256*, i8*)* @_ZN6SHA2565finalEPh, metadata !144, metadata !145, metadata !146, metadata !150, metadata !151, metadata !126}
!150 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!151 = metadata !{metadata !"kernel_arg_name", metadata !"digest"}
!152 = metadata !{void (%"class.hls::stream"*, i32, i8*)* @_Z6sha256N3hls6streamIhEEiPh, metadata !153, metadata !122, metadata !154, metadata !124, metadata !155, metadata !126}
!153 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"mem_stream", metadata !"int", metadata !"uchar*"}
!155 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"num_blocks", metadata !"digest_out"}
!156 = metadata !{i8 (%"class.hls::stream"*)* @_ZN3hls6streamIhE4readEv, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !126}
!157 = metadata !{void (%class.SHA256*)* @_ZN6SHA256C1Ev, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !126}
!158 = metadata !{void (%class.SHA256*)* @_ZN6SHA256C2Ev, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !126}
!159 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 3, i32 29, metadata !5, null}
!161 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 3, i32 49, metadata !5, null}
!163 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 3, i32 67, metadata !5, null}
!165 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !6, i32 4, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 786443, metadata !5, i32 3, i32 74, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 4, i32 6, metadata !166, null}
!168 = metadata !{i32 5, i32 6, metadata !169, null}
!169 = metadata !{i32 786443, metadata !166, i32 5, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 6, i32 3, metadata !171, null}
!171 = metadata !{i32 786443, metadata !169, i32 5, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 7, i32 2, metadata !171, null}
!173 = metadata !{i32 5, i32 21, metadata !169, null}
!174 = metadata !{i32 8, i32 1, metadata !166, null}
!175 = metadata !{i32 786689, metadata !14, metadata !"dst", metadata !6, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 10, i32 29, metadata !14, null}
!177 = metadata !{i32 786689, metadata !14, metadata !"val", metadata !6, i32 33554442, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 10, i32 48, metadata !14, null}
!179 = metadata !{i32 786689, metadata !14, metadata !"length", metadata !6, i32 50331658, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 10, i32 66, metadata !14, null}
!181 = metadata !{i32 786688, metadata !182, metadata !"i", metadata !6, i32 11, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 786443, metadata !14, i32 10, i32 73, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 11, i32 6, metadata !182, null}
!184 = metadata !{i32 12, i32 6, metadata !185, null}
!185 = metadata !{i32 786443, metadata !182, i32 12, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 13, i32 3, metadata !187, null}
!187 = metadata !{i32 786443, metadata !185, i32 12, i32 25, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 14, i32 2, metadata !187, null}
!189 = metadata !{i32 12, i32 21, metadata !185, null}
!190 = metadata !{i32 15, i32 1, metadata !182, null}
!191 = metadata !{i32 786689, metadata !17, metadata !"this", metadata !6, i32 16777251, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!193 = metadata !{i32 35, i32 14, metadata !17, null}
!194 = metadata !{i32 786689, metadata !17, metadata !"message", metadata !6, i32 33554467, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 35, i32 45, metadata !17, null}
!196 = metadata !{i32 786689, metadata !17, metadata !"block_nb", metadata !6, i32 50331683, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 35, i32 67, metadata !17, null}
!198 = metadata !{i32 786688, metadata !199, metadata !"w", metadata !6, i32 37, metadata !200, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 786443, metadata !17, i32 36, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !32, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ]
!201 = metadata !{i32 37, i32 12, metadata !199, null}
!202 = metadata !{i32 786688, metadata !199, metadata !"wv", metadata !6, i32 38, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 38, i32 12, metadata !199, null}
!204 = metadata !{i32 786688, metadata !199, metadata !"t1", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 39, i32 12, metadata !199, null}
!206 = metadata !{i32 786688, metadata !199, metadata !"t2", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 39, i32 16, metadata !199, null}
!208 = metadata !{i32 786688, metadata !199, metadata !"sub_block", metadata !6, i32 40, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 40, i32 26, metadata !199, null}
!210 = metadata !{i32 786688, metadata !199, metadata !"i", metadata !6, i32 41, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 41, i32 9, metadata !199, null}
!212 = metadata !{i32 786688, metadata !199, metadata !"j", metadata !6, i32 42, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 42, i32 9, metadata !199, null}
!214 = metadata !{i32 43, i32 10, metadata !215, null}
!215 = metadata !{i32 786443, metadata !199, i32 43, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 44, i32 9, metadata !217, null}
!217 = metadata !{i32 786443, metadata !215, i32 43, i32 42, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 45, i32 14, metadata !219, null}
!219 = metadata !{i32 786443, metadata !217, i32 45, i32 9, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 46, i32 15, metadata !221, null}
!221 = metadata !{i32 786443, metadata !222, i32 46, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786443, metadata !219, i32 45, i32 34, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 47, i32 9, metadata !222, null}
!224 = metadata !{i32 45, i32 29, metadata !219, null}
!225 = metadata !{i32 48, i32 14, metadata !226, null}
!226 = metadata !{i32 786443, metadata !217, i32 48, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 49, i32 13, metadata !228, null}
!228 = metadata !{i32 786443, metadata !226, i32 48, i32 35, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 50, i32 9, metadata !228, null}
!230 = metadata !{i32 48, i32 30, metadata !226, null}
!231 = metadata !{i32 51, i32 14, metadata !232, null}
!232 = metadata !{i32 786443, metadata !217, i32 51, i32 9, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 52, i32 13, metadata !234, null}
!234 = metadata !{i32 786443, metadata !232, i32 51, i32 33, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 53, i32 9, metadata !234, null}
!236 = metadata !{i32 51, i32 28, metadata !232, null}
!237 = metadata !{i32 54, i32 14, metadata !238, null}
!238 = metadata !{i32 786443, metadata !217, i32 54, i32 9, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 55, i32 13, metadata !240, null}
!240 = metadata !{i32 786443, metadata !238, i32 54, i32 34, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 57, i32 13, metadata !240, null}
!242 = metadata !{i32 58, i32 13, metadata !240, null}
!243 = metadata !{i32 59, i32 13, metadata !240, null}
!244 = metadata !{i32 60, i32 13, metadata !240, null}
!245 = metadata !{i32 61, i32 13, metadata !240, null}
!246 = metadata !{i32 62, i32 13, metadata !240, null}
!247 = metadata !{i32 63, i32 13, metadata !240, null}
!248 = metadata !{i32 64, i32 13, metadata !240, null}
!249 = metadata !{i32 65, i32 13, metadata !240, null}
!250 = metadata !{i32 66, i32 9, metadata !240, null}
!251 = metadata !{i32 54, i32 29, metadata !238, null}
!252 = metadata !{i32 67, i32 14, metadata !253, null}
!253 = metadata !{i32 786443, metadata !217, i32 67, i32 9, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 68, i32 13, metadata !255, null}
!255 = metadata !{i32 786443, metadata !253, i32 67, i32 33, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 69, i32 9, metadata !255, null}
!257 = metadata !{i32 67, i32 28, metadata !253, null}
!258 = metadata !{i32 70, i32 5, metadata !217, null}
!259 = metadata !{i32 43, i32 37, metadata !215, null}
!260 = metadata !{i32 71, i32 1, metadata !199, null}
!261 = metadata !{i32 786689, metadata !48, metadata !"this", metadata !6, i32 16777289, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 73, i32 14, metadata !48, null}
!263 = metadata !{i32 75, i32 5, metadata !264, null}
!264 = metadata !{i32 786443, metadata !48, i32 74, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 76, i32 5, metadata !264, null}
!266 = metadata !{i32 77, i32 5, metadata !264, null}
!267 = metadata !{i32 78, i32 5, metadata !264, null}
!268 = metadata !{i32 79, i32 5, metadata !264, null}
!269 = metadata !{i32 80, i32 5, metadata !264, null}
!270 = metadata !{i32 81, i32 5, metadata !264, null}
!271 = metadata !{i32 82, i32 5, metadata !264, null}
!272 = metadata !{i32 83, i32 5, metadata !264, null}
!273 = metadata !{i32 84, i32 5, metadata !264, null}
!274 = metadata !{i32 85, i32 1, metadata !264, null}
!275 = metadata !{i32 786689, metadata !49, metadata !"this", metadata !6, i32 16777303, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!276 = metadata !{i32 87, i32 14, metadata !49, null}
!277 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !6, i32 33554519, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 87, i32 41, metadata !49, null}
!279 = metadata !{i32 88, i32 2, metadata !280, null}
!280 = metadata !{i32 786443, metadata !49, i32 88, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 786688, metadata !280, metadata !"block_nb", metadata !6, i32 89, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 89, i32 18, metadata !280, null}
!283 = metadata !{i32 786688, metadata !280, metadata !"new_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 90, i32 18, metadata !280, null}
!285 = metadata !{i32 786688, metadata !280, metadata !"rem_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 90, i32 27, metadata !280, null}
!287 = metadata !{i32 786688, metadata !280, metadata !"tmp_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 90, i32 36, metadata !280, null}
!289 = metadata !{i32 786688, metadata !280, metadata !"len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 90, i32 45, metadata !280, null}
!291 = metadata !{i32 90, i32 53, metadata !280, null}
!292 = metadata !{i32 786688, metadata !280, metadata !"shifted_message", metadata !6, i32 91, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 91, i32 26, metadata !280, null}
!294 = metadata !{i32 92, i32 5, metadata !280, null}
!295 = metadata !{i32 93, i32 5, metadata !280, null}
!296 = metadata !{i32 94, i32 5, metadata !280, null}
!297 = metadata !{i32 95, i32 5, metadata !280, null}
!298 = metadata !{i32 96, i32 9, metadata !299, null}
!299 = metadata !{i32 786443, metadata !280, i32 95, i32 27, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 97, i32 9, metadata !299, null}
!301 = metadata !{i32 99, i32 5, metadata !280, null}
!302 = metadata !{i32 100, i32 5, metadata !280, null}
!303 = metadata !{i32 101, i32 5, metadata !280, null}
!304 = metadata !{i32 102, i32 5, metadata !280, null}
!305 = metadata !{i32 103, i32 5, metadata !280, null}
!306 = metadata !{i32 104, i32 5, metadata !280, null}
!307 = metadata !{i32 105, i32 5, metadata !280, null}
!308 = metadata !{i32 106, i32 5, metadata !280, null}
!309 = metadata !{i32 107, i32 5, metadata !280, null}
!310 = metadata !{i32 108, i32 1, metadata !280, null}
!311 = metadata !{i32 786689, metadata !50, metadata !"this", metadata !6, i32 16777326, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!312 = metadata !{i32 110, i32 14, metadata !50, null}
!313 = metadata !{i32 786689, metadata !50, metadata !"digest", metadata !6, i32 33554542, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!314 = metadata !{i32 110, i32 35, metadata !50, null}
!315 = metadata !{i32 786688, metadata !316, metadata !"block_nb", metadata !6, i32 112, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 786443, metadata !50, i32 111, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 112, i32 18, metadata !316, null}
!318 = metadata !{i32 786688, metadata !316, metadata !"pm_len", metadata !6, i32 113, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 113, i32 18, metadata !316, null}
!320 = metadata !{i32 786688, metadata !316, metadata !"len_b", metadata !6, i32 114, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 114, i32 18, metadata !316, null}
!322 = metadata !{i32 786688, metadata !316, metadata !"i", metadata !6, i32 115, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!323 = metadata !{i32 115, i32 9, metadata !316, null}
!324 = metadata !{i32 116, i32 5, metadata !316, null}
!325 = metadata !{i32 118, i32 5, metadata !316, null}
!326 = metadata !{i32 119, i32 5, metadata !316, null}
!327 = metadata !{i32 120, i32 5, metadata !316, null}
!328 = metadata !{i32 121, i32 5, metadata !316, null}
!329 = metadata !{i32 122, i32 7, metadata !330, null}
!330 = metadata !{i32 786443, metadata !316, i32 122, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!331 = metadata !{i32 122, i32 59, metadata !330, null}
!332 = metadata !{i32 122, i32 115, metadata !330, null}
!333 = metadata !{i32 122, i32 172, metadata !330, null}
!334 = metadata !{i32 123, i32 5, metadata !316, null}
!335 = metadata !{i32 124, i32 10, metadata !336, null}
!336 = metadata !{i32 786443, metadata !316, i32 124, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 125, i32 11, metadata !338, null}
!338 = metadata !{i32 786443, metadata !339, i32 125, i32 9, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!339 = metadata !{i32 786443, metadata !336, i32 124, i32 30, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 125, i32 59, metadata !338, null}
!341 = metadata !{i32 125, i32 111, metadata !338, null}
!342 = metadata !{i32 125, i32 164, metadata !338, null}
!343 = metadata !{i32 126, i32 5, metadata !339, null}
!344 = metadata !{i32 124, i32 25, metadata !336, null}
!345 = metadata !{i32 127, i32 1, metadata !316, null}
!346 = metadata !{i32 786689, metadata !51, metadata !"stream_in", metadata !6, i32 16777345, metadata !347, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!347 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!348 = metadata !{i32 129, i32 24, metadata !51, null}
!349 = metadata !{i32 786689, metadata !51, metadata !"num_blocks", metadata !6, i32 33554561, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!350 = metadata !{i32 129, i32 39, metadata !51, null}
!351 = metadata !{i32 786689, metadata !51, metadata !"digest_out", metadata !6, i32 50331777, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!352 = metadata !{i32 129, i32 65, metadata !51, null}
!353 = metadata !{i32 129, i32 81, metadata !354, null}
!354 = metadata !{i32 786443, metadata !51, i32 129, i32 80, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!355 = metadata !{i32 130, i32 1, metadata !354, null}
!356 = metadata !{i32 131, i32 1, metadata !354, null}
!357 = metadata !{i32 132, i32 1, metadata !354, null}
!358 = metadata !{i32 133, i32 1, metadata !354, null}
!359 = metadata !{i32 786688, metadata !354, metadata !"data_buffer", metadata !6, i32 134, metadata !360, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!360 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ]
!361 = metadata !{i32 134, i32 16, metadata !354, null}
!362 = metadata !{i32 786688, metadata !354, metadata !"block_counter", metadata !6, i32 135, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!363 = metadata !{i32 135, i32 6, metadata !354, null}
!364 = metadata !{i32 786688, metadata !354, metadata !"data_index", metadata !6, i32 135, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!365 = metadata !{i32 135, i32 21, metadata !354, null}
!366 = metadata !{i32 786688, metadata !354, metadata !"cipher", metadata !6, i32 136, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!367 = metadata !{i32 136, i32 9, metadata !354, null}
!368 = metadata !{i32 136, i32 15, metadata !354, null}
!369 = metadata !{i32 138, i32 2, metadata !354, null}
!370 = metadata !{i32 140, i32 6, metadata !371, null}
!371 = metadata !{i32 786443, metadata !354, i32 140, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!372 = metadata !{i32 141, i32 3, metadata !373, null}
!373 = metadata !{i32 786443, metadata !371, i32 140, i32 65, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 142, i32 7, metadata !375, null}
!375 = metadata !{i32 786443, metadata !373, i32 142, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!376 = metadata !{i32 143, i32 30, metadata !377, null}
!377 = metadata !{i32 786443, metadata !375, i32 142, i32 49, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!378 = metadata !{i32 144, i32 3, metadata !377, null}
!379 = metadata !{i32 142, i32 36, metadata !375, null}
!380 = metadata !{i32 145, i32 3, metadata !373, null}
!381 = metadata !{i32 146, i32 2, metadata !373, null}
!382 = metadata !{i32 140, i32 49, metadata !371, null}
!383 = metadata !{i32 147, i32 2, metadata !354, null}
!384 = metadata !{i32 148, i32 1, metadata !354, null}
!385 = metadata !{i32 786689, metadata !111, metadata !"this", metadata !22, i32 16777254, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 38, i32 39, metadata !111, null}
!387 = metadata !{i32 38, i32 80, metadata !111, null}
!388 = metadata !{i32 786689, metadata !110, metadata !"this", metadata !57, i32 16777345, metadata !389, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!389 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!390 = metadata !{i32 129, i32 56, metadata !110, null}
!391 = metadata !{i32 786688, metadata !392, metadata !"tmp", metadata !57, i32 130, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!392 = metadata !{i32 786443, metadata !110, i32 129, i32 63, metadata !57, i32 33} ; [ DW_TAG_lexical_block ]
!393 = metadata !{i32 130, i32 22, metadata !392, null}
!394 = metadata !{i32 131, i32 9, metadata !392, null}
!395 = metadata !{i32 132, i32 9, metadata !392, null}
!396 = metadata !{i32 786689, metadata !112, metadata !"this", metadata !22, i32 16777254, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!397 = metadata !{i32 38, i32 39, metadata !112, null}
!398 = metadata !{i32 38, i32 50, metadata !399, null}
!399 = metadata !{i32 786443, metadata !112, i32 38, i32 48, metadata !22, i32 34} ; [ DW_TAG_lexical_block ]
!400 = metadata !{i32 38, i32 80, metadata !399, null}
