; ModuleID = '/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_mem/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.SHA256 = type { i32, i32, [128 x i8], [8 x i32] }

@_ZN6SHA2568sha256_kE = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=2 type=[64 x i32]*]
@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
define void @_Z7_memcpyPhS_j(i8* %dst, i8* %src, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i8* %dst, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !105), !dbg !106 ; [debug line = 3:29] [debug variable = dst]
  store i8* %src, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !107), !dbg !108 ; [debug line = 3:49] [debug variable = src]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !109), !dbg !110 ; [debug line = 3:67] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !111), !dbg !114 ; [debug line = 4:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !115        ; [debug line = 5:6]
  br label %4, !dbg !115                          ; [debug line = 5:6]

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %i, align 4, !dbg !115           ; [#uses=1 type=i32] [debug line = 5:6]
  %6 = load i32* %3, align 4, !dbg !115           ; [#uses=1 type=i32] [debug line = 5:6]
  %7 = icmp ult i32 %5, %6, !dbg !115             ; [#uses=1 type=i1] [debug line = 5:6]
  br i1 %7, label %8, label %21, !dbg !115        ; [debug line = 5:6]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !117           ; [#uses=1 type=i32] [debug line = 6:3]
  %10 = sext i32 %9 to i64, !dbg !117             ; [#uses=1 type=i64] [debug line = 6:3]
  %11 = load i8** %2, align 8, !dbg !117          ; [#uses=1 type=i8*] [debug line = 6:3]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !117 ; [#uses=1 type=i8*] [debug line = 6:3]
  %13 = load i8* %12, align 1, !dbg !117          ; [#uses=1 type=i8] [debug line = 6:3]
  %14 = load i32* %i, align 4, !dbg !117          ; [#uses=1 type=i32] [debug line = 6:3]
  %15 = sext i32 %14 to i64, !dbg !117            ; [#uses=1 type=i64] [debug line = 6:3]
  %16 = load i8** %1, align 8, !dbg !117          ; [#uses=1 type=i8*] [debug line = 6:3]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !117 ; [#uses=1 type=i8*] [debug line = 6:3]
  store i8 %13, i8* %17, align 1, !dbg !117       ; [debug line = 6:3]
  br label %18, !dbg !119                         ; [debug line = 7:2]

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !120          ; [#uses=1 type=i32] [debug line = 5:21]
  %20 = add nsw i32 %19, 1, !dbg !120             ; [#uses=1 type=i32] [debug line = 5:21]
  store i32 %20, i32* %i, align 4, !dbg !120      ; [debug line = 5:21]
  br label %4, !dbg !120                          ; [debug line = 5:21]

; <label>:21                                      ; preds = %4
  ret void, !dbg !121                             ; [debug line = 8:1]
}

; [#uses=45]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define void @_Z7_memsetPhhj(i8* %dst, i8 zeroext %val, i32 %length) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store i8* %dst, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !122), !dbg !123 ; [debug line = 10:29] [debug variable = dst]
  store i8 %val, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !124), !dbg !125 ; [debug line = 10:48] [debug variable = val]
  store i32 %length, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !126), !dbg !127 ; [debug line = 10:66] [debug variable = length]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !128), !dbg !130 ; [debug line = 11:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !131        ; [debug line = 12:6]
  br label %4, !dbg !131                          ; [debug line = 12:6]

; <label>:4                                       ; preds = %14, %0
  %5 = load i32* %i, align 4, !dbg !131           ; [#uses=1 type=i32] [debug line = 12:6]
  %6 = load i32* %3, align 4, !dbg !131           ; [#uses=1 type=i32] [debug line = 12:6]
  %7 = icmp ult i32 %5, %6, !dbg !131             ; [#uses=1 type=i1] [debug line = 12:6]
  br i1 %7, label %8, label %17, !dbg !131        ; [debug line = 12:6]

; <label>:8                                       ; preds = %4
  %9 = load i8* %2, align 1, !dbg !133            ; [#uses=1 type=i8] [debug line = 13:3]
  %10 = load i32* %i, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 13:3]
  %11 = sext i32 %10 to i64, !dbg !133            ; [#uses=1 type=i64] [debug line = 13:3]
  %12 = load i8** %1, align 8, !dbg !133          ; [#uses=1 type=i8*] [debug line = 13:3]
  %13 = getelementptr inbounds i8* %12, i64 %11, !dbg !133 ; [#uses=1 type=i8*] [debug line = 13:3]
  store i8 %9, i8* %13, align 1, !dbg !133        ; [debug line = 13:3]
  br label %14, !dbg !135                         ; [debug line = 14:2]

; <label>:14                                      ; preds = %8
  %15 = load i32* %i, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 12:21]
  %16 = add nsw i32 %15, 1, !dbg !136             ; [#uses=1 type=i32] [debug line = 12:21]
  store i32 %16, i32* %i, align 4, !dbg !136      ; [debug line = 12:21]
  br label %4, !dbg !136                          ; [debug line = 12:21]

; <label>:17                                      ; preds = %4
  ret void, !dbg !137                             ; [debug line = 15:1]
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
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !138), !dbg !140 ; [debug line = 35:14] [debug variable = this]
  store i8* %message, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !141), !dbg !142 ; [debug line = 35:45] [debug variable = message]
  store i32 %block_nb, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !143), !dbg !144 ; [debug line = 35:67] [debug variable = block_nb]
  %4 = load %class.SHA256** %1                    ; [#uses=2 type=%class.SHA256*]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %w}, metadata !145), !dbg !148 ; [debug line = 37:12] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[8 x i32]* %wv}, metadata !149), !dbg !150 ; [debug line = 38:12] [debug variable = wv]
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !151), !dbg !152 ; [debug line = 39:12] [debug variable = t1]
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !153), !dbg !154 ; [debug line = 39:16] [debug variable = t2]
  call void @llvm.dbg.declare(metadata !{i8** %sub_block}, metadata !155), !dbg !156 ; [debug line = 40:26] [debug variable = sub_block]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !157), !dbg !158 ; [debug line = 41:9] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !159), !dbg !160 ; [debug line = 42:9] [debug variable = j]
  store i32 0, i32* %i, align 4, !dbg !161        ; [debug line = 43:10]
  br label %5, !dbg !161                          ; [debug line = 43:10]

; <label>:5                                       ; preds = %315, %0
  %6 = load i32* %i, align 4, !dbg !161           ; [#uses=1 type=i32] [debug line = 43:10]
  %7 = load i32* %3, align 4, !dbg !161           ; [#uses=1 type=i32] [debug line = 43:10]
  %8 = icmp slt i32 %6, %7, !dbg !161             ; [#uses=1 type=i1] [debug line = 43:10]
  br i1 %8, label %9, label %318, !dbg !161       ; [debug line = 43:10]

; <label>:9                                       ; preds = %5
  %10 = load i8** %2, align 8, !dbg !163          ; [#uses=1 type=i8*] [debug line = 44:9]
  %11 = load i32* %i, align 4, !dbg !163          ; [#uses=1 type=i32] [debug line = 44:9]
  %12 = shl i32 %11, 6, !dbg !163                 ; [#uses=1 type=i32] [debug line = 44:9]
  %13 = sext i32 %12 to i64, !dbg !163            ; [#uses=1 type=i64] [debug line = 44:9]
  %14 = getelementptr inbounds i8* %10, i64 %13, !dbg !163 ; [#uses=1 type=i8*] [debug line = 44:9]
  store i8* %14, i8** %sub_block, align 8, !dbg !163 ; [debug line = 44:9]
  store i32 0, i32* %j, align 4, !dbg !165        ; [debug line = 45:14]
  br label %15, !dbg !165                         ; [debug line = 45:14]

; <label>:15                                      ; preds = %60, %9
  %16 = load i32* %j, align 4, !dbg !165          ; [#uses=1 type=i32] [debug line = 45:14]
  %17 = icmp slt i32 %16, 16, !dbg !165           ; [#uses=1 type=i1] [debug line = 45:14]
  br i1 %17, label %18, label %63, !dbg !165      ; [debug line = 45:14]

; <label>:18                                      ; preds = %15
  %19 = load i32* %j, align 4, !dbg !167          ; [#uses=1 type=i32] [debug line = 46:15]
  %20 = shl i32 %19, 2, !dbg !167                 ; [#uses=1 type=i32] [debug line = 46:15]
  %21 = sext i32 %20 to i64, !dbg !167            ; [#uses=1 type=i64] [debug line = 46:15]
  %22 = load i8** %sub_block, align 8, !dbg !167  ; [#uses=1 type=i8*] [debug line = 46:15]
  %23 = getelementptr inbounds i8* %22, i64 %21, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %24 = getelementptr inbounds i8* %23, i64 3, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %25 = load i8* %24, align 1, !dbg !167          ; [#uses=1 type=i8] [debug line = 46:15]
  %26 = zext i8 %25 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 46:15]
  %27 = load i32* %j, align 4, !dbg !167          ; [#uses=1 type=i32] [debug line = 46:15]
  %28 = shl i32 %27, 2, !dbg !167                 ; [#uses=1 type=i32] [debug line = 46:15]
  %29 = sext i32 %28 to i64, !dbg !167            ; [#uses=1 type=i64] [debug line = 46:15]
  %30 = load i8** %sub_block, align 8, !dbg !167  ; [#uses=1 type=i8*] [debug line = 46:15]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %32 = getelementptr inbounds i8* %31, i64 2, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %33 = load i8* %32, align 1, !dbg !167          ; [#uses=1 type=i8] [debug line = 46:15]
  %34 = zext i8 %33 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 46:15]
  %35 = shl i32 %34, 8, !dbg !167                 ; [#uses=1 type=i32] [debug line = 46:15]
  %36 = or i32 %26, %35, !dbg !167                ; [#uses=1 type=i32] [debug line = 46:15]
  %37 = load i32* %j, align 4, !dbg !167          ; [#uses=1 type=i32] [debug line = 46:15]
  %38 = shl i32 %37, 2, !dbg !167                 ; [#uses=1 type=i32] [debug line = 46:15]
  %39 = sext i32 %38 to i64, !dbg !167            ; [#uses=1 type=i64] [debug line = 46:15]
  %40 = load i8** %sub_block, align 8, !dbg !167  ; [#uses=1 type=i8*] [debug line = 46:15]
  %41 = getelementptr inbounds i8* %40, i64 %39, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %42 = getelementptr inbounds i8* %41, i64 1, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %43 = load i8* %42, align 1, !dbg !167          ; [#uses=1 type=i8] [debug line = 46:15]
  %44 = zext i8 %43 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 46:15]
  %45 = shl i32 %44, 16, !dbg !167                ; [#uses=1 type=i32] [debug line = 46:15]
  %46 = or i32 %36, %45, !dbg !167                ; [#uses=1 type=i32] [debug line = 46:15]
  %47 = load i32* %j, align 4, !dbg !167          ; [#uses=1 type=i32] [debug line = 46:15]
  %48 = shl i32 %47, 2, !dbg !167                 ; [#uses=1 type=i32] [debug line = 46:15]
  %49 = sext i32 %48 to i64, !dbg !167            ; [#uses=1 type=i64] [debug line = 46:15]
  %50 = load i8** %sub_block, align 8, !dbg !167  ; [#uses=1 type=i8*] [debug line = 46:15]
  %51 = getelementptr inbounds i8* %50, i64 %49, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %52 = getelementptr inbounds i8* %51, i64 0, !dbg !167 ; [#uses=1 type=i8*] [debug line = 46:15]
  %53 = load i8* %52, align 1, !dbg !167          ; [#uses=1 type=i8] [debug line = 46:15]
  %54 = zext i8 %53 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 46:15]
  %55 = shl i32 %54, 24, !dbg !167                ; [#uses=1 type=i32] [debug line = 46:15]
  %56 = or i32 %46, %55, !dbg !167                ; [#uses=1 type=i32] [debug line = 46:15]
  %57 = load i32* %j, align 4, !dbg !167          ; [#uses=1 type=i32] [debug line = 46:15]
  %58 = sext i32 %57 to i64, !dbg !167            ; [#uses=1 type=i64] [debug line = 46:15]
  %59 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %58, !dbg !167 ; [#uses=1 type=i32*] [debug line = 46:15]
  store i32 %56, i32* %59, align 4, !dbg !167     ; [debug line = 46:15]
  br label %60, !dbg !170                         ; [debug line = 47:9]

; <label>:60                                      ; preds = %18
  %61 = load i32* %j, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 45:29]
  %62 = add nsw i32 %61, 1, !dbg !171             ; [#uses=1 type=i32] [debug line = 45:29]
  store i32 %62, i32* %j, align 4, !dbg !171      ; [debug line = 45:29]
  br label %15, !dbg !171                         ; [debug line = 45:29]

; <label>:63                                      ; preds = %15
  store i32 16, i32* %j, align 4, !dbg !172       ; [debug line = 48:14]
  br label %64, !dbg !172                         ; [debug line = 48:14]

; <label>:64                                      ; preds = %152, %63
  %65 = load i32* %j, align 4, !dbg !172          ; [#uses=1 type=i32] [debug line = 48:14]
  %66 = icmp slt i32 %65, 64, !dbg !172           ; [#uses=1 type=i1] [debug line = 48:14]
  br i1 %66, label %67, label %155, !dbg !172     ; [debug line = 48:14]

; <label>:67                                      ; preds = %64
  %68 = load i32* %j, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %69 = sub nsw i32 %68, 2, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %70 = sext i32 %69 to i64, !dbg !174            ; [#uses=1 type=i64] [debug line = 49:13]
  %71 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %70, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %72 = load i32* %71, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %73 = lshr i32 %72, 17, !dbg !174               ; [#uses=1 type=i32] [debug line = 49:13]
  %74 = load i32* %j, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %75 = sub nsw i32 %74, 2, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %76 = sext i32 %75 to i64, !dbg !174            ; [#uses=1 type=i64] [debug line = 49:13]
  %77 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %76, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %78 = load i32* %77, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %79 = shl i32 %78, 15, !dbg !174                ; [#uses=1 type=i32] [debug line = 49:13]
  %80 = or i32 %73, %79, !dbg !174                ; [#uses=1 type=i32] [debug line = 49:13]
  %81 = load i32* %j, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %82 = sub nsw i32 %81, 2, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %83 = sext i32 %82 to i64, !dbg !174            ; [#uses=1 type=i64] [debug line = 49:13]
  %84 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %83, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %85 = load i32* %84, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %86 = lshr i32 %85, 19, !dbg !174               ; [#uses=1 type=i32] [debug line = 49:13]
  %87 = load i32* %j, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %88 = sub nsw i32 %87, 2, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %89 = sext i32 %88 to i64, !dbg !174            ; [#uses=1 type=i64] [debug line = 49:13]
  %90 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %89, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %91 = load i32* %90, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %92 = shl i32 %91, 13, !dbg !174                ; [#uses=1 type=i32] [debug line = 49:13]
  %93 = or i32 %86, %92, !dbg !174                ; [#uses=1 type=i32] [debug line = 49:13]
  %94 = xor i32 %80, %93, !dbg !174               ; [#uses=1 type=i32] [debug line = 49:13]
  %95 = load i32* %j, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %96 = sub nsw i32 %95, 2, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %97 = sext i32 %96 to i64, !dbg !174            ; [#uses=1 type=i64] [debug line = 49:13]
  %98 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %97, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %99 = load i32* %98, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %100 = lshr i32 %99, 10, !dbg !174              ; [#uses=1 type=i32] [debug line = 49:13]
  %101 = xor i32 %94, %100, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %102 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %103 = sub nsw i32 %102, 7, !dbg !174           ; [#uses=1 type=i32] [debug line = 49:13]
  %104 = sext i32 %103 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %105 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %104, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %106 = load i32* %105, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %107 = add i32 %101, %106, !dbg !174            ; [#uses=1 type=i32] [debug line = 49:13]
  %108 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %109 = sub nsw i32 %108, 15, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %110 = sext i32 %109 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %111 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %110, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %112 = load i32* %111, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %113 = lshr i32 %112, 7, !dbg !174              ; [#uses=1 type=i32] [debug line = 49:13]
  %114 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %115 = sub nsw i32 %114, 15, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %116 = sext i32 %115 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %117 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %116, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %118 = load i32* %117, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %119 = shl i32 %118, 25, !dbg !174              ; [#uses=1 type=i32] [debug line = 49:13]
  %120 = or i32 %113, %119, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %121 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %122 = sub nsw i32 %121, 15, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %123 = sext i32 %122 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %124 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %123, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %125 = load i32* %124, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %126 = lshr i32 %125, 18, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %127 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %128 = sub nsw i32 %127, 15, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %129 = sext i32 %128 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %130 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %129, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %131 = load i32* %130, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %132 = shl i32 %131, 14, !dbg !174              ; [#uses=1 type=i32] [debug line = 49:13]
  %133 = or i32 %126, %132, !dbg !174             ; [#uses=1 type=i32] [debug line = 49:13]
  %134 = xor i32 %120, %133, !dbg !174            ; [#uses=1 type=i32] [debug line = 49:13]
  %135 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %136 = sub nsw i32 %135, 15, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %137 = sext i32 %136 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %138 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %137, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %139 = load i32* %138, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %140 = lshr i32 %139, 3, !dbg !174              ; [#uses=1 type=i32] [debug line = 49:13]
  %141 = xor i32 %134, %140, !dbg !174            ; [#uses=1 type=i32] [debug line = 49:13]
  %142 = add i32 %107, %141, !dbg !174            ; [#uses=1 type=i32] [debug line = 49:13]
  %143 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %144 = sub nsw i32 %143, 16, !dbg !174          ; [#uses=1 type=i32] [debug line = 49:13]
  %145 = sext i32 %144 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %146 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %145, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  %147 = load i32* %146, align 4, !dbg !174       ; [#uses=1 type=i32] [debug line = 49:13]
  %148 = add i32 %142, %147, !dbg !174            ; [#uses=1 type=i32] [debug line = 49:13]
  %149 = load i32* %j, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 49:13]
  %150 = sext i32 %149 to i64, !dbg !174          ; [#uses=1 type=i64] [debug line = 49:13]
  %151 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %150, !dbg !174 ; [#uses=1 type=i32*] [debug line = 49:13]
  store i32 %148, i32* %151, align 4, !dbg !174   ; [debug line = 49:13]
  br label %152, !dbg !176                        ; [debug line = 50:9]

; <label>:152                                     ; preds = %67
  %153 = load i32* %j, align 4, !dbg !177         ; [#uses=1 type=i32] [debug line = 48:30]
  %154 = add nsw i32 %153, 1, !dbg !177           ; [#uses=1 type=i32] [debug line = 48:30]
  store i32 %154, i32* %j, align 4, !dbg !177     ; [debug line = 48:30]
  br label %64, !dbg !177                         ; [debug line = 48:30]

; <label>:155                                     ; preds = %64
  store i32 0, i32* %j, align 4, !dbg !178        ; [debug line = 51:14]
  br label %156, !dbg !178                        ; [debug line = 51:14]

; <label>:156                                     ; preds = %168, %155
  %157 = load i32* %j, align 4, !dbg !178         ; [#uses=1 type=i32] [debug line = 51:14]
  %158 = icmp slt i32 %157, 8, !dbg !178          ; [#uses=1 type=i1] [debug line = 51:14]
  br i1 %158, label %159, label %171, !dbg !178   ; [debug line = 51:14]

; <label>:159                                     ; preds = %156
  %160 = load i32* %j, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 52:13]
  %161 = sext i32 %160 to i64, !dbg !180          ; [#uses=1 type=i64] [debug line = 52:13]
  %162 = getelementptr inbounds %class.SHA256* %4, i32 0, i32 3, !dbg !180 ; [#uses=1 type=[8 x i32]*] [debug line = 52:13]
  %163 = getelementptr inbounds [8 x i32]* %162, i32 0, i64 %161, !dbg !180 ; [#uses=1 type=i32*] [debug line = 52:13]
  %164 = load i32* %163, align 4, !dbg !180       ; [#uses=1 type=i32] [debug line = 52:13]
  %165 = load i32* %j, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 52:13]
  %166 = sext i32 %165 to i64, !dbg !180          ; [#uses=1 type=i64] [debug line = 52:13]
  %167 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 %166, !dbg !180 ; [#uses=1 type=i32*] [debug line = 52:13]
  store i32 %164, i32* %167, align 4, !dbg !180   ; [debug line = 52:13]
  br label %168, !dbg !182                        ; [debug line = 53:9]

; <label>:168                                     ; preds = %159
  %169 = load i32* %j, align 4, !dbg !183         ; [#uses=1 type=i32] [debug line = 51:28]
  %170 = add nsw i32 %169, 1, !dbg !183           ; [#uses=1 type=i32] [debug line = 51:28]
  store i32 %170, i32* %j, align 4, !dbg !183     ; [debug line = 51:28]
  br label %156, !dbg !183                        ; [debug line = 51:28]

; <label>:171                                     ; preds = %156
  store i32 0, i32* %j, align 4, !dbg !184        ; [debug line = 54:14]
  br label %172, !dbg !184                        ; [debug line = 54:14]

; <label>:172                                     ; preds = %293, %171
  %173 = load i32* %j, align 4, !dbg !184         ; [#uses=1 type=i32] [debug line = 54:14]
  %174 = icmp slt i32 %173, 64, !dbg !184         ; [#uses=1 type=i1] [debug line = 54:14]
  br i1 %174, label %175, label %296, !dbg !184   ; [debug line = 54:14]

; <label>:175                                     ; preds = %172
  %176 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 7, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %177 = load i32* %176, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %178 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %179 = load i32* %178, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %180 = lshr i32 %179, 6, !dbg !186              ; [#uses=1 type=i32] [debug line = 55:13]
  %181 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %182 = load i32* %181, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %183 = shl i32 %182, 26, !dbg !186              ; [#uses=1 type=i32] [debug line = 55:13]
  %184 = or i32 %180, %183, !dbg !186             ; [#uses=1 type=i32] [debug line = 55:13]
  %185 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %186 = load i32* %185, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %187 = lshr i32 %186, 11, !dbg !186             ; [#uses=1 type=i32] [debug line = 55:13]
  %188 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %189 = load i32* %188, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %190 = shl i32 %189, 21, !dbg !186              ; [#uses=1 type=i32] [debug line = 55:13]
  %191 = or i32 %187, %190, !dbg !186             ; [#uses=1 type=i32] [debug line = 55:13]
  %192 = xor i32 %184, %191, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %193 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %194 = load i32* %193, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %195 = lshr i32 %194, 25, !dbg !186             ; [#uses=1 type=i32] [debug line = 55:13]
  %196 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %197 = load i32* %196, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %198 = shl i32 %197, 7, !dbg !186               ; [#uses=1 type=i32] [debug line = 55:13]
  %199 = or i32 %195, %198, !dbg !186             ; [#uses=1 type=i32] [debug line = 55:13]
  %200 = xor i32 %192, %199, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %201 = add i32 %177, %200, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %202 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %203 = load i32* %202, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %204 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 5, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %205 = load i32* %204, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %206 = and i32 %203, %205, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %207 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %208 = load i32* %207, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %209 = xor i32 %208, -1, !dbg !186              ; [#uses=1 type=i32] [debug line = 55:13]
  %210 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 6, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %211 = load i32* %210, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %212 = and i32 %209, %211, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %213 = xor i32 %206, %212, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %214 = add i32 %201, %213, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %215 = load i32* %j, align 4, !dbg !186         ; [#uses=1 type=i32] [debug line = 55:13]
  %216 = sext i32 %215 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 55:13]
  %217 = getelementptr inbounds [64 x i32]* @_ZN6SHA2568sha256_kE, i32 0, i64 %216, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %218 = load i32* %217, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %219 = add i32 %214, %218, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  %220 = load i32* %j, align 4, !dbg !186         ; [#uses=1 type=i32] [debug line = 55:13]
  %221 = sext i32 %220 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 55:13]
  %222 = getelementptr inbounds [64 x i32]* %w, i32 0, i64 %221, !dbg !186 ; [#uses=1 type=i32*] [debug line = 55:13]
  %223 = load i32* %222, align 4, !dbg !186       ; [#uses=1 type=i32] [debug line = 55:13]
  %224 = add i32 %219, %223, !dbg !186            ; [#uses=1 type=i32] [debug line = 55:13]
  store i32 %224, i32* %t1, align 4, !dbg !186    ; [debug line = 55:13]
  %225 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %226 = load i32* %225, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %227 = lshr i32 %226, 2, !dbg !188              ; [#uses=1 type=i32] [debug line = 57:13]
  %228 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %229 = load i32* %228, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %230 = shl i32 %229, 30, !dbg !188              ; [#uses=1 type=i32] [debug line = 57:13]
  %231 = or i32 %227, %230, !dbg !188             ; [#uses=1 type=i32] [debug line = 57:13]
  %232 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %233 = load i32* %232, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %234 = lshr i32 %233, 13, !dbg !188             ; [#uses=1 type=i32] [debug line = 57:13]
  %235 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %236 = load i32* %235, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %237 = shl i32 %236, 19, !dbg !188              ; [#uses=1 type=i32] [debug line = 57:13]
  %238 = or i32 %234, %237, !dbg !188             ; [#uses=1 type=i32] [debug line = 57:13]
  %239 = xor i32 %231, %238, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %240 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %241 = load i32* %240, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %242 = lshr i32 %241, 22, !dbg !188             ; [#uses=1 type=i32] [debug line = 57:13]
  %243 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %244 = load i32* %243, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %245 = shl i32 %244, 10, !dbg !188              ; [#uses=1 type=i32] [debug line = 57:13]
  %246 = or i32 %242, %245, !dbg !188             ; [#uses=1 type=i32] [debug line = 57:13]
  %247 = xor i32 %239, %246, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %248 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %249 = load i32* %248, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %250 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %251 = load i32* %250, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %252 = and i32 %249, %251, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %253 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %254 = load i32* %253, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %255 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %256 = load i32* %255, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %257 = and i32 %254, %256, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %258 = xor i32 %252, %257, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %259 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %260 = load i32* %259, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %261 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !188 ; [#uses=1 type=i32*] [debug line = 57:13]
  %262 = load i32* %261, align 4, !dbg !188       ; [#uses=1 type=i32] [debug line = 57:13]
  %263 = and i32 %260, %262, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %264 = xor i32 %258, %263, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  %265 = add i32 %247, %264, !dbg !188            ; [#uses=1 type=i32] [debug line = 57:13]
  store i32 %265, i32* %t2, align 4, !dbg !188    ; [debug line = 57:13]
  %266 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 6, !dbg !189 ; [#uses=1 type=i32*] [debug line = 58:13]
  %267 = load i32* %266, align 4, !dbg !189       ; [#uses=1 type=i32] [debug line = 58:13]
  %268 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 7, !dbg !189 ; [#uses=1 type=i32*] [debug line = 58:13]
  store i32 %267, i32* %268, align 4, !dbg !189   ; [debug line = 58:13]
  %269 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 5, !dbg !190 ; [#uses=1 type=i32*] [debug line = 59:13]
  %270 = load i32* %269, align 4, !dbg !190       ; [#uses=1 type=i32] [debug line = 59:13]
  %271 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 6, !dbg !190 ; [#uses=1 type=i32*] [debug line = 59:13]
  store i32 %270, i32* %271, align 4, !dbg !190   ; [debug line = 59:13]
  %272 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !191 ; [#uses=1 type=i32*] [debug line = 60:13]
  %273 = load i32* %272, align 4, !dbg !191       ; [#uses=1 type=i32] [debug line = 60:13]
  %274 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 5, !dbg !191 ; [#uses=1 type=i32*] [debug line = 60:13]
  store i32 %273, i32* %274, align 4, !dbg !191   ; [debug line = 60:13]
  %275 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 3, !dbg !192 ; [#uses=1 type=i32*] [debug line = 61:13]
  %276 = load i32* %275, align 4, !dbg !192       ; [#uses=1 type=i32] [debug line = 61:13]
  %277 = load i32* %t1, align 4, !dbg !192        ; [#uses=1 type=i32] [debug line = 61:13]
  %278 = add i32 %276, %277, !dbg !192            ; [#uses=1 type=i32] [debug line = 61:13]
  %279 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 4, !dbg !192 ; [#uses=1 type=i32*] [debug line = 61:13]
  store i32 %278, i32* %279, align 4, !dbg !192   ; [debug line = 61:13]
  %280 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !193 ; [#uses=1 type=i32*] [debug line = 62:13]
  %281 = load i32* %280, align 4, !dbg !193       ; [#uses=1 type=i32] [debug line = 62:13]
  %282 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 3, !dbg !193 ; [#uses=1 type=i32*] [debug line = 62:13]
  store i32 %281, i32* %282, align 4, !dbg !193   ; [debug line = 62:13]
  %283 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !194 ; [#uses=1 type=i32*] [debug line = 63:13]
  %284 = load i32* %283, align 4, !dbg !194       ; [#uses=1 type=i32] [debug line = 63:13]
  %285 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 2, !dbg !194 ; [#uses=1 type=i32*] [debug line = 63:13]
  store i32 %284, i32* %285, align 4, !dbg !194   ; [debug line = 63:13]
  %286 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !195 ; [#uses=1 type=i32*] [debug line = 64:13]
  %287 = load i32* %286, align 4, !dbg !195       ; [#uses=1 type=i32] [debug line = 64:13]
  %288 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 1, !dbg !195 ; [#uses=1 type=i32*] [debug line = 64:13]
  store i32 %287, i32* %288, align 4, !dbg !195   ; [debug line = 64:13]
  %289 = load i32* %t1, align 4, !dbg !196        ; [#uses=1 type=i32] [debug line = 65:13]
  %290 = load i32* %t2, align 4, !dbg !196        ; [#uses=1 type=i32] [debug line = 65:13]
  %291 = add i32 %289, %290, !dbg !196            ; [#uses=1 type=i32] [debug line = 65:13]
  %292 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 0, !dbg !196 ; [#uses=1 type=i32*] [debug line = 65:13]
  store i32 %291, i32* %292, align 4, !dbg !196   ; [debug line = 65:13]
  br label %293, !dbg !197                        ; [debug line = 66:9]

; <label>:293                                     ; preds = %175
  %294 = load i32* %j, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 54:29]
  %295 = add nsw i32 %294, 1, !dbg !198           ; [#uses=1 type=i32] [debug line = 54:29]
  store i32 %295, i32* %j, align 4, !dbg !198     ; [debug line = 54:29]
  br label %172, !dbg !198                        ; [debug line = 54:29]

; <label>:296                                     ; preds = %172
  store i32 0, i32* %j, align 4, !dbg !199        ; [debug line = 67:14]
  br label %297, !dbg !199                        ; [debug line = 67:14]

; <label>:297                                     ; preds = %311, %296
  %298 = load i32* %j, align 4, !dbg !199         ; [#uses=1 type=i32] [debug line = 67:14]
  %299 = icmp slt i32 %298, 8, !dbg !199          ; [#uses=1 type=i1] [debug line = 67:14]
  br i1 %299, label %300, label %314, !dbg !199   ; [debug line = 67:14]

; <label>:300                                     ; preds = %297
  %301 = load i32* %j, align 4, !dbg !201         ; [#uses=1 type=i32] [debug line = 68:13]
  %302 = sext i32 %301 to i64, !dbg !201          ; [#uses=1 type=i64] [debug line = 68:13]
  %303 = getelementptr inbounds [8 x i32]* %wv, i32 0, i64 %302, !dbg !201 ; [#uses=1 type=i32*] [debug line = 68:13]
  %304 = load i32* %303, align 4, !dbg !201       ; [#uses=1 type=i32] [debug line = 68:13]
  %305 = load i32* %j, align 4, !dbg !201         ; [#uses=1 type=i32] [debug line = 68:13]
  %306 = sext i32 %305 to i64, !dbg !201          ; [#uses=1 type=i64] [debug line = 68:13]
  %307 = getelementptr inbounds %class.SHA256* %4, i32 0, i32 3, !dbg !201 ; [#uses=1 type=[8 x i32]*] [debug line = 68:13]
  %308 = getelementptr inbounds [8 x i32]* %307, i32 0, i64 %306, !dbg !201 ; [#uses=2 type=i32*] [debug line = 68:13]
  %309 = load i32* %308, align 4, !dbg !201       ; [#uses=1 type=i32] [debug line = 68:13]
  %310 = add i32 %309, %304, !dbg !201            ; [#uses=1 type=i32] [debug line = 68:13]
  store i32 %310, i32* %308, align 4, !dbg !201   ; [debug line = 68:13]
  br label %311, !dbg !203                        ; [debug line = 69:9]

; <label>:311                                     ; preds = %300
  %312 = load i32* %j, align 4, !dbg !204         ; [#uses=1 type=i32] [debug line = 67:28]
  %313 = add nsw i32 %312, 1, !dbg !204           ; [#uses=1 type=i32] [debug line = 67:28]
  store i32 %313, i32* %j, align 4, !dbg !204     ; [debug line = 67:28]
  br label %297, !dbg !204                        ; [debug line = 67:28]

; <label>:314                                     ; preds = %297
  br label %315, !dbg !205                        ; [debug line = 70:5]

; <label>:315                                     ; preds = %314
  %316 = load i32* %i, align 4, !dbg !206         ; [#uses=1 type=i32] [debug line = 43:37]
  %317 = add nsw i32 %316, 1, !dbg !206           ; [#uses=1 type=i32] [debug line = 43:37]
  store i32 %317, i32* %i, align 4, !dbg !206     ; [debug line = 43:37]
  br label %5, !dbg !206                          ; [debug line = 43:37]

; <label>:318                                     ; preds = %5
  ret void, !dbg !207                             ; [debug line = 71:1]
}

; [#uses=1]
define void @_ZN6SHA2564initEv(%class.SHA256* %this) nounwind uwtable align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !208), !dbg !209 ; [debug line = 73:14] [debug variable = this]
  %2 = load %class.SHA256** %1                    ; [#uses=10 type=%class.SHA256*]
  %3 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !210 ; [#uses=1 type=[8 x i32]*] [debug line = 75:5]
  %4 = getelementptr inbounds [8 x i32]* %3, i32 0, i64 0, !dbg !210 ; [#uses=1 type=i32*] [debug line = 75:5]
  store i32 1779033703, i32* %4, align 4, !dbg !210 ; [debug line = 75:5]
  %5 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !212 ; [#uses=1 type=[8 x i32]*] [debug line = 76:5]
  %6 = getelementptr inbounds [8 x i32]* %5, i32 0, i64 1, !dbg !212 ; [#uses=1 type=i32*] [debug line = 76:5]
  store i32 -1150833019, i32* %6, align 4, !dbg !212 ; [debug line = 76:5]
  %7 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !213 ; [#uses=1 type=[8 x i32]*] [debug line = 77:5]
  %8 = getelementptr inbounds [8 x i32]* %7, i32 0, i64 2, !dbg !213 ; [#uses=1 type=i32*] [debug line = 77:5]
  store i32 1013904242, i32* %8, align 4, !dbg !213 ; [debug line = 77:5]
  %9 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !214 ; [#uses=1 type=[8 x i32]*] [debug line = 78:5]
  %10 = getelementptr inbounds [8 x i32]* %9, i32 0, i64 3, !dbg !214 ; [#uses=1 type=i32*] [debug line = 78:5]
  store i32 -1521486534, i32* %10, align 4, !dbg !214 ; [debug line = 78:5]
  %11 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !215 ; [#uses=1 type=[8 x i32]*] [debug line = 79:5]
  %12 = getelementptr inbounds [8 x i32]* %11, i32 0, i64 4, !dbg !215 ; [#uses=1 type=i32*] [debug line = 79:5]
  store i32 1359893119, i32* %12, align 4, !dbg !215 ; [debug line = 79:5]
  %13 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !216 ; [#uses=1 type=[8 x i32]*] [debug line = 80:5]
  %14 = getelementptr inbounds [8 x i32]* %13, i32 0, i64 5, !dbg !216 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 -1694144372, i32* %14, align 4, !dbg !216 ; [debug line = 80:5]
  %15 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !217 ; [#uses=1 type=[8 x i32]*] [debug line = 81:5]
  %16 = getelementptr inbounds [8 x i32]* %15, i32 0, i64 6, !dbg !217 ; [#uses=1 type=i32*] [debug line = 81:5]
  store i32 528734635, i32* %16, align 4, !dbg !217 ; [debug line = 81:5]
  %17 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 3, !dbg !218 ; [#uses=1 type=[8 x i32]*] [debug line = 82:5]
  %18 = getelementptr inbounds [8 x i32]* %17, i32 0, i64 7, !dbg !218 ; [#uses=1 type=i32*] [debug line = 82:5]
  store i32 1541459225, i32* %18, align 4, !dbg !218 ; [debug line = 82:5]
  %19 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 1, !dbg !219 ; [#uses=1 type=i32*] [debug line = 83:5]
  store i32 0, i32* %19, align 4, !dbg !219       ; [debug line = 83:5]
  %20 = getelementptr inbounds %class.SHA256* %2, i32 0, i32 0, !dbg !220 ; [#uses=1 type=i32*] [debug line = 84:5]
  store i32 0, i32* %20, align 4, !dbg !220       ; [debug line = 84:5]
  ret void, !dbg !221                             ; [debug line = 85:1]
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
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !222), !dbg !223 ; [debug line = 87:14] [debug variable = this]
  store i8* %message, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !224), !dbg !225 ; [debug line = 87:41] [debug variable = message]
  %3 = load %class.SHA256** %1                    ; [#uses=11 type=%class.SHA256*]
  %4 = load i8** %2, align 8, !dbg !226           ; [#uses=1 type=i8*] [debug line = 88:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 64) nounwind, !dbg !226 ; [debug line = 88:2]
  call void @llvm.dbg.declare(metadata !{i32* %block_nb}, metadata !228), !dbg !229 ; [debug line = 89:18] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{i32* %new_len}, metadata !230), !dbg !231 ; [debug line = 90:18] [debug variable = new_len]
  call void @llvm.dbg.declare(metadata !{i32* %rem_len}, metadata !232), !dbg !233 ; [debug line = 90:27] [debug variable = rem_len]
  call void @llvm.dbg.declare(metadata !{i32* %tmp_len}, metadata !234), !dbg !235 ; [debug line = 90:36] [debug variable = tmp_len]
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !236), !dbg !237 ; [debug line = 90:45] [debug variable = len]
  store i32 64, i32* %len, align 4, !dbg !238     ; [debug line = 90:53]
  call void @llvm.dbg.declare(metadata !{i8** %shifted_message}, metadata !239), !dbg !240 ; [debug line = 91:26] [debug variable = shifted_message]
  %5 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !241 ; [#uses=1 type=i32*] [debug line = 92:5]
  %6 = load i32* %5, align 4, !dbg !241           ; [#uses=1 type=i32] [debug line = 92:5]
  %7 = sub i32 64, %6, !dbg !241                  ; [#uses=1 type=i32] [debug line = 92:5]
  store i32 %7, i32* %tmp_len, align 4, !dbg !241 ; [debug line = 92:5]
  %8 = load i32* %len, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 93:5]
  %9 = load i32* %tmp_len, align 4, !dbg !242     ; [#uses=1 type=i32] [debug line = 93:5]
  %10 = icmp ult i32 %8, %9, !dbg !242            ; [#uses=1 type=i1] [debug line = 93:5]
  %11 = load i32* %len, align 4, !dbg !242        ; [#uses=1 type=i32] [debug line = 93:5]
  %12 = load i32* %tmp_len, align 4, !dbg !242    ; [#uses=1 type=i32] [debug line = 93:5]
  %13 = select i1 %10, i32 %11, i32 %12, !dbg !242 ; [#uses=1 type=i32] [debug line = 93:5]
  store i32 %13, i32* %rem_len, align 4, !dbg !242 ; [debug line = 93:5]
  %14 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !243 ; [#uses=1 type=i32*] [debug line = 94:5]
  %15 = load i32* %14, align 4, !dbg !243         ; [#uses=1 type=i32] [debug line = 94:5]
  %16 = zext i32 %15 to i64, !dbg !243            ; [#uses=1 type=i64] [debug line = 94:5]
  %17 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !243 ; [#uses=1 type=[128 x i8]*] [debug line = 94:5]
  %18 = getelementptr inbounds [128 x i8]* %17, i32 0, i64 %16, !dbg !243 ; [#uses=1 type=i8*] [debug line = 94:5]
  %19 = load i8** %2, align 8, !dbg !243          ; [#uses=1 type=i8*] [debug line = 94:5]
  %20 = load i32* %rem_len, align 4, !dbg !243    ; [#uses=1 type=i32] [debug line = 94:5]
  call void @_Z7_memcpyPhS_j(i8* %18, i8* %19, i32 %20), !dbg !243 ; [debug line = 94:5]
  %21 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !244 ; [#uses=1 type=i32*] [debug line = 95:5]
  %22 = load i32* %21, align 4, !dbg !244         ; [#uses=1 type=i32] [debug line = 95:5]
  %23 = load i32* %len, align 4, !dbg !244        ; [#uses=1 type=i32] [debug line = 95:5]
  %24 = add i32 %22, %23, !dbg !244               ; [#uses=1 type=i32] [debug line = 95:5]
  %25 = icmp ult i32 %24, 64, !dbg !244           ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %25, label %26, label %31, !dbg !244      ; [debug line = 95:5]

; <label>:26                                      ; preds = %0
  %27 = load i32* %len, align 4, !dbg !245        ; [#uses=1 type=i32] [debug line = 96:9]
  %28 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !245 ; [#uses=2 type=i32*] [debug line = 96:9]
  %29 = load i32* %28, align 4, !dbg !245         ; [#uses=1 type=i32] [debug line = 96:9]
  %30 = add i32 %29, %27, !dbg !245               ; [#uses=1 type=i32] [debug line = 96:9]
  store i32 %30, i32* %28, align 4, !dbg !245     ; [debug line = 96:9]
  br label %63, !dbg !247                         ; [debug line = 97:9]

; <label>:31                                      ; preds = %0
  %32 = load i32* %len, align 4, !dbg !248        ; [#uses=1 type=i32] [debug line = 99:5]
  %33 = load i32* %rem_len, align 4, !dbg !248    ; [#uses=1 type=i32] [debug line = 99:5]
  %34 = sub i32 %32, %33, !dbg !248               ; [#uses=1 type=i32] [debug line = 99:5]
  store i32 %34, i32* %new_len, align 4, !dbg !248 ; [debug line = 99:5]
  %35 = load i32* %new_len, align 4, !dbg !249    ; [#uses=1 type=i32] [debug line = 100:5]
  %36 = udiv i32 %35, 64, !dbg !249               ; [#uses=1 type=i32] [debug line = 100:5]
  store i32 %36, i32* %block_nb, align 4, !dbg !249 ; [debug line = 100:5]
  %37 = load i8** %2, align 8, !dbg !250          ; [#uses=1 type=i8*] [debug line = 101:5]
  %38 = load i32* %rem_len, align 4, !dbg !250    ; [#uses=1 type=i32] [debug line = 101:5]
  %39 = zext i32 %38 to i64, !dbg !250            ; [#uses=1 type=i64] [debug line = 101:5]
  %40 = getelementptr inbounds i8* %37, i64 %39, !dbg !250 ; [#uses=1 type=i8*] [debug line = 101:5]
  store i8* %40, i8** %shifted_message, align 8, !dbg !250 ; [debug line = 101:5]
  %41 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !251 ; [#uses=1 type=[128 x i8]*] [debug line = 102:5]
  %42 = getelementptr inbounds [128 x i8]* %41, i32 0, i32 0, !dbg !251 ; [#uses=1 type=i8*] [debug line = 102:5]
  call void @_ZN6SHA2569transformEPKhj(%class.SHA256* %3, i8* %42, i32 1), !dbg !251 ; [debug line = 102:5]
  %43 = load i8** %shifted_message, align 8, !dbg !252 ; [#uses=1 type=i8*] [debug line = 103:5]
  %44 = load i32* %block_nb, align 4, !dbg !252   ; [#uses=1 type=i32] [debug line = 103:5]
  call void @_ZN6SHA2569transformEPKhj(%class.SHA256* %3, i8* %43, i32 %44), !dbg !252 ; [debug line = 103:5]
  %45 = load i32* %new_len, align 4, !dbg !253    ; [#uses=1 type=i32] [debug line = 104:5]
  %46 = urem i32 %45, 64, !dbg !253               ; [#uses=1 type=i32] [debug line = 104:5]
  store i32 %46, i32* %rem_len, align 4, !dbg !253 ; [debug line = 104:5]
  %47 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !254 ; [#uses=1 type=[128 x i8]*] [debug line = 105:5]
  %48 = getelementptr inbounds [128 x i8]* %47, i32 0, i32 0, !dbg !254 ; [#uses=1 type=i8*] [debug line = 105:5]
  %49 = load i32* %block_nb, align 4, !dbg !254   ; [#uses=1 type=i32] [debug line = 105:5]
  %50 = shl i32 %49, 6, !dbg !254                 ; [#uses=1 type=i32] [debug line = 105:5]
  %51 = zext i32 %50 to i64, !dbg !254            ; [#uses=1 type=i64] [debug line = 105:5]
  %52 = load i8** %shifted_message, align 8, !dbg !254 ; [#uses=1 type=i8*] [debug line = 105:5]
  %53 = getelementptr inbounds i8* %52, i64 %51, !dbg !254 ; [#uses=1 type=i8*] [debug line = 105:5]
  %54 = load i32* %rem_len, align 4, !dbg !254    ; [#uses=1 type=i32] [debug line = 105:5]
  call void @_Z7_memcpyPhS_j(i8* %48, i8* %53, i32 %54), !dbg !254 ; [debug line = 105:5]
  %55 = load i32* %rem_len, align 4, !dbg !255    ; [#uses=1 type=i32] [debug line = 106:5]
  %56 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !255 ; [#uses=1 type=i32*] [debug line = 106:5]
  store i32 %55, i32* %56, align 4, !dbg !255     ; [debug line = 106:5]
  %57 = load i32* %block_nb, align 4, !dbg !256   ; [#uses=1 type=i32] [debug line = 107:5]
  %58 = add i32 %57, 1, !dbg !256                 ; [#uses=1 type=i32] [debug line = 107:5]
  %59 = shl i32 %58, 6, !dbg !256                 ; [#uses=1 type=i32] [debug line = 107:5]
  %60 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 0, !dbg !256 ; [#uses=2 type=i32*] [debug line = 107:5]
  %61 = load i32* %60, align 4, !dbg !256         ; [#uses=1 type=i32] [debug line = 107:5]
  %62 = add i32 %61, %59, !dbg !256               ; [#uses=1 type=i32] [debug line = 107:5]
  store i32 %62, i32* %60, align 4, !dbg !256     ; [debug line = 107:5]
  br label %63, !dbg !257                         ; [debug line = 108:1]

; <label>:63                                      ; preds = %31, %26
  ret void, !dbg !257                             ; [debug line = 108:1]
}

; [#uses=3]
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
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !258), !dbg !259 ; [debug line = 110:14] [debug variable = this]
  store i8* %digest, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !260), !dbg !261 ; [debug line = 110:35] [debug variable = digest]
  %3 = load %class.SHA256** %1                    ; [#uses=18 type=%class.SHA256*]
  call void @llvm.dbg.declare(metadata !{i32* %block_nb}, metadata !262), !dbg !264 ; [debug line = 112:18] [debug variable = block_nb]
  call void @llvm.dbg.declare(metadata !{i32* %pm_len}, metadata !265), !dbg !266 ; [debug line = 113:18] [debug variable = pm_len]
  call void @llvm.dbg.declare(metadata !{i32* %len_b}, metadata !267), !dbg !268 ; [debug line = 114:18] [debug variable = len_b]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !269), !dbg !270 ; [debug line = 115:9] [debug variable = i]
  %4 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !271 ; [#uses=1 type=i32*] [debug line = 116:5]
  %5 = load i32* %4, align 4, !dbg !271           ; [#uses=1 type=i32] [debug line = 116:5]
  %6 = urem i32 %5, 64, !dbg !271                 ; [#uses=1 type=i32] [debug line = 116:5]
  %7 = icmp ult i32 55, %6, !dbg !271             ; [#uses=1 type=i1] [debug line = 116:5]
  %8 = zext i1 %7 to i32, !dbg !271               ; [#uses=1 type=i32] [debug line = 116:5]
  %9 = add nsw i32 1, %8, !dbg !271               ; [#uses=1 type=i32] [debug line = 116:5]
  store i32 %9, i32* %block_nb, align 4, !dbg !271 ; [debug line = 116:5]
  %10 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 0, !dbg !272 ; [#uses=1 type=i32*] [debug line = 118:5]
  %11 = load i32* %10, align 4, !dbg !272         ; [#uses=1 type=i32] [debug line = 118:5]
  %12 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !272 ; [#uses=1 type=i32*] [debug line = 118:5]
  %13 = load i32* %12, align 4, !dbg !272         ; [#uses=1 type=i32] [debug line = 118:5]
  %14 = add i32 %11, %13, !dbg !272               ; [#uses=1 type=i32] [debug line = 118:5]
  %15 = shl i32 %14, 3, !dbg !272                 ; [#uses=1 type=i32] [debug line = 118:5]
  store i32 %15, i32* %len_b, align 4, !dbg !272  ; [debug line = 118:5]
  %16 = load i32* %block_nb, align 4, !dbg !273   ; [#uses=1 type=i32] [debug line = 119:5]
  %17 = shl i32 %16, 6, !dbg !273                 ; [#uses=1 type=i32] [debug line = 119:5]
  store i32 %17, i32* %pm_len, align 4, !dbg !273 ; [debug line = 119:5]
  %18 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !274 ; [#uses=1 type=[128 x i8]*] [debug line = 120:5]
  %19 = getelementptr inbounds [128 x i8]* %18, i32 0, i32 0, !dbg !274 ; [#uses=1 type=i8*] [debug line = 120:5]
  %20 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !274 ; [#uses=1 type=i32*] [debug line = 120:5]
  %21 = load i32* %20, align 4, !dbg !274         ; [#uses=1 type=i32] [debug line = 120:5]
  %22 = zext i32 %21 to i64, !dbg !274            ; [#uses=1 type=i64] [debug line = 120:5]
  %23 = getelementptr inbounds i8* %19, i64 %22, !dbg !274 ; [#uses=1 type=i8*] [debug line = 120:5]
  %24 = load i32* %pm_len, align 4, !dbg !274     ; [#uses=1 type=i32] [debug line = 120:5]
  %25 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !274 ; [#uses=1 type=i32*] [debug line = 120:5]
  %26 = load i32* %25, align 4, !dbg !274         ; [#uses=1 type=i32] [debug line = 120:5]
  %27 = sub i32 %24, %26, !dbg !274               ; [#uses=1 type=i32] [debug line = 120:5]
  call void @_Z7_memsetPhhj(i8* %23, i8 zeroext 0, i32 %27), !dbg !274 ; [debug line = 120:5]
  %28 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 1, !dbg !275 ; [#uses=1 type=i32*] [debug line = 121:5]
  %29 = load i32* %28, align 4, !dbg !275         ; [#uses=1 type=i32] [debug line = 121:5]
  %30 = zext i32 %29 to i64, !dbg !275            ; [#uses=1 type=i64] [debug line = 121:5]
  %31 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !275 ; [#uses=1 type=[128 x i8]*] [debug line = 121:5]
  %32 = getelementptr inbounds [128 x i8]* %31, i32 0, i64 %30, !dbg !275 ; [#uses=1 type=i8*] [debug line = 121:5]
  store i8 -128, i8* %32, align 1, !dbg !275      ; [debug line = 121:5]
  %33 = load i32* %len_b, align 4, !dbg !276      ; [#uses=1 type=i32] [debug line = 122:7]
  %34 = trunc i32 %33 to i8, !dbg !276            ; [#uses=1 type=i8] [debug line = 122:7]
  %35 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !276 ; [#uses=1 type=[128 x i8]*] [debug line = 122:7]
  %36 = getelementptr inbounds [128 x i8]* %35, i32 0, i32 0, !dbg !276 ; [#uses=1 type=i8*] [debug line = 122:7]
  %37 = load i32* %pm_len, align 4, !dbg !276     ; [#uses=1 type=i32] [debug line = 122:7]
  %38 = zext i32 %37 to i64, !dbg !276            ; [#uses=1 type=i64] [debug line = 122:7]
  %39 = getelementptr inbounds i8* %36, i64 %38, !dbg !276 ; [#uses=1 type=i8*] [debug line = 122:7]
  %40 = getelementptr inbounds i8* %39, i64 -4, !dbg !276 ; [#uses=1 type=i8*] [debug line = 122:7]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !276 ; [#uses=1 type=i8*] [debug line = 122:7]
  store i8 %34, i8* %41, align 1, !dbg !276       ; [debug line = 122:7]
  %42 = load i32* %len_b, align 4, !dbg !278      ; [#uses=1 type=i32] [debug line = 122:59]
  %43 = lshr i32 %42, 8, !dbg !278                ; [#uses=1 type=i32] [debug line = 122:59]
  %44 = trunc i32 %43 to i8, !dbg !278            ; [#uses=1 type=i8] [debug line = 122:59]
  %45 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !278 ; [#uses=1 type=[128 x i8]*] [debug line = 122:59]
  %46 = getelementptr inbounds [128 x i8]* %45, i32 0, i32 0, !dbg !278 ; [#uses=1 type=i8*] [debug line = 122:59]
  %47 = load i32* %pm_len, align 4, !dbg !278     ; [#uses=1 type=i32] [debug line = 122:59]
  %48 = zext i32 %47 to i64, !dbg !278            ; [#uses=1 type=i64] [debug line = 122:59]
  %49 = getelementptr inbounds i8* %46, i64 %48, !dbg !278 ; [#uses=1 type=i8*] [debug line = 122:59]
  %50 = getelementptr inbounds i8* %49, i64 -4, !dbg !278 ; [#uses=1 type=i8*] [debug line = 122:59]
  %51 = getelementptr inbounds i8* %50, i64 2, !dbg !278 ; [#uses=1 type=i8*] [debug line = 122:59]
  store i8 %44, i8* %51, align 1, !dbg !278       ; [debug line = 122:59]
  %52 = load i32* %len_b, align 4, !dbg !279      ; [#uses=1 type=i32] [debug line = 122:115]
  %53 = lshr i32 %52, 16, !dbg !279               ; [#uses=1 type=i32] [debug line = 122:115]
  %54 = trunc i32 %53 to i8, !dbg !279            ; [#uses=1 type=i8] [debug line = 122:115]
  %55 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !279 ; [#uses=1 type=[128 x i8]*] [debug line = 122:115]
  %56 = getelementptr inbounds [128 x i8]* %55, i32 0, i32 0, !dbg !279 ; [#uses=1 type=i8*] [debug line = 122:115]
  %57 = load i32* %pm_len, align 4, !dbg !279     ; [#uses=1 type=i32] [debug line = 122:115]
  %58 = zext i32 %57 to i64, !dbg !279            ; [#uses=1 type=i64] [debug line = 122:115]
  %59 = getelementptr inbounds i8* %56, i64 %58, !dbg !279 ; [#uses=1 type=i8*] [debug line = 122:115]
  %60 = getelementptr inbounds i8* %59, i64 -4, !dbg !279 ; [#uses=1 type=i8*] [debug line = 122:115]
  %61 = getelementptr inbounds i8* %60, i64 1, !dbg !279 ; [#uses=1 type=i8*] [debug line = 122:115]
  store i8 %54, i8* %61, align 1, !dbg !279       ; [debug line = 122:115]
  %62 = load i32* %len_b, align 4, !dbg !280      ; [#uses=1 type=i32] [debug line = 122:172]
  %63 = lshr i32 %62, 24, !dbg !280               ; [#uses=1 type=i32] [debug line = 122:172]
  %64 = trunc i32 %63 to i8, !dbg !280            ; [#uses=1 type=i8] [debug line = 122:172]
  %65 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !280 ; [#uses=1 type=[128 x i8]*] [debug line = 122:172]
  %66 = getelementptr inbounds [128 x i8]* %65, i32 0, i32 0, !dbg !280 ; [#uses=1 type=i8*] [debug line = 122:172]
  %67 = load i32* %pm_len, align 4, !dbg !280     ; [#uses=1 type=i32] [debug line = 122:172]
  %68 = zext i32 %67 to i64, !dbg !280            ; [#uses=1 type=i64] [debug line = 122:172]
  %69 = getelementptr inbounds i8* %66, i64 %68, !dbg !280 ; [#uses=1 type=i8*] [debug line = 122:172]
  %70 = getelementptr inbounds i8* %69, i64 -4, !dbg !280 ; [#uses=1 type=i8*] [debug line = 122:172]
  %71 = getelementptr inbounds i8* %70, i64 0, !dbg !280 ; [#uses=1 type=i8*] [debug line = 122:172]
  store i8 %64, i8* %71, align 1, !dbg !280       ; [debug line = 122:172]
  %72 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 2, !dbg !281 ; [#uses=1 type=[128 x i8]*] [debug line = 123:5]
  %73 = getelementptr inbounds [128 x i8]* %72, i32 0, i32 0, !dbg !281 ; [#uses=1 type=i8*] [debug line = 123:5]
  %74 = load i32* %block_nb, align 4, !dbg !281   ; [#uses=1 type=i32] [debug line = 123:5]
  call void @_ZN6SHA2569transformEPKhj(%class.SHA256* %3, i8* %73, i32 %74), !dbg !281 ; [debug line = 123:5]
  store i32 0, i32* %i, align 4, !dbg !282        ; [debug line = 124:10]
  br label %75, !dbg !282                         ; [debug line = 124:10]

; <label>:75                                      ; preds = %130, %0
  %76 = load i32* %i, align 4, !dbg !282          ; [#uses=1 type=i32] [debug line = 124:10]
  %77 = icmp slt i32 %76, 8, !dbg !282            ; [#uses=1 type=i1] [debug line = 124:10]
  br i1 %77, label %78, label %133, !dbg !282     ; [debug line = 124:10]

; <label>:78                                      ; preds = %75
  %79 = load i32* %i, align 4, !dbg !284          ; [#uses=1 type=i32] [debug line = 125:11]
  %80 = sext i32 %79 to i64, !dbg !284            ; [#uses=1 type=i64] [debug line = 125:11]
  %81 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !284 ; [#uses=1 type=[8 x i32]*] [debug line = 125:11]
  %82 = getelementptr inbounds [8 x i32]* %81, i32 0, i64 %80, !dbg !284 ; [#uses=1 type=i32*] [debug line = 125:11]
  %83 = load i32* %82, align 4, !dbg !284         ; [#uses=1 type=i32] [debug line = 125:11]
  %84 = trunc i32 %83 to i8, !dbg !284            ; [#uses=1 type=i8] [debug line = 125:11]
  %85 = load i32* %i, align 4, !dbg !284          ; [#uses=1 type=i32] [debug line = 125:11]
  %86 = shl i32 %85, 2, !dbg !284                 ; [#uses=1 type=i32] [debug line = 125:11]
  %87 = sext i32 %86 to i64, !dbg !284            ; [#uses=1 type=i64] [debug line = 125:11]
  %88 = load i8** %2, align 8, !dbg !284          ; [#uses=1 type=i8*] [debug line = 125:11]
  %89 = getelementptr inbounds i8* %88, i64 %87, !dbg !284 ; [#uses=1 type=i8*] [debug line = 125:11]
  %90 = getelementptr inbounds i8* %89, i64 3, !dbg !284 ; [#uses=1 type=i8*] [debug line = 125:11]
  store i8 %84, i8* %90, align 1, !dbg !284       ; [debug line = 125:11]
  %91 = load i32* %i, align 4, !dbg !287          ; [#uses=1 type=i32] [debug line = 125:59]
  %92 = sext i32 %91 to i64, !dbg !287            ; [#uses=1 type=i64] [debug line = 125:59]
  %93 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !287 ; [#uses=1 type=[8 x i32]*] [debug line = 125:59]
  %94 = getelementptr inbounds [8 x i32]* %93, i32 0, i64 %92, !dbg !287 ; [#uses=1 type=i32*] [debug line = 125:59]
  %95 = load i32* %94, align 4, !dbg !287         ; [#uses=1 type=i32] [debug line = 125:59]
  %96 = lshr i32 %95, 8, !dbg !287                ; [#uses=1 type=i32] [debug line = 125:59]
  %97 = trunc i32 %96 to i8, !dbg !287            ; [#uses=1 type=i8] [debug line = 125:59]
  %98 = load i32* %i, align 4, !dbg !287          ; [#uses=1 type=i32] [debug line = 125:59]
  %99 = shl i32 %98, 2, !dbg !287                 ; [#uses=1 type=i32] [debug line = 125:59]
  %100 = sext i32 %99 to i64, !dbg !287           ; [#uses=1 type=i64] [debug line = 125:59]
  %101 = load i8** %2, align 8, !dbg !287         ; [#uses=1 type=i8*] [debug line = 125:59]
  %102 = getelementptr inbounds i8* %101, i64 %100, !dbg !287 ; [#uses=1 type=i8*] [debug line = 125:59]
  %103 = getelementptr inbounds i8* %102, i64 2, !dbg !287 ; [#uses=1 type=i8*] [debug line = 125:59]
  store i8 %97, i8* %103, align 1, !dbg !287      ; [debug line = 125:59]
  %104 = load i32* %i, align 4, !dbg !288         ; [#uses=1 type=i32] [debug line = 125:111]
  %105 = sext i32 %104 to i64, !dbg !288          ; [#uses=1 type=i64] [debug line = 125:111]
  %106 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !288 ; [#uses=1 type=[8 x i32]*] [debug line = 125:111]
  %107 = getelementptr inbounds [8 x i32]* %106, i32 0, i64 %105, !dbg !288 ; [#uses=1 type=i32*] [debug line = 125:111]
  %108 = load i32* %107, align 4, !dbg !288       ; [#uses=1 type=i32] [debug line = 125:111]
  %109 = lshr i32 %108, 16, !dbg !288             ; [#uses=1 type=i32] [debug line = 125:111]
  %110 = trunc i32 %109 to i8, !dbg !288          ; [#uses=1 type=i8] [debug line = 125:111]
  %111 = load i32* %i, align 4, !dbg !288         ; [#uses=1 type=i32] [debug line = 125:111]
  %112 = shl i32 %111, 2, !dbg !288               ; [#uses=1 type=i32] [debug line = 125:111]
  %113 = sext i32 %112 to i64, !dbg !288          ; [#uses=1 type=i64] [debug line = 125:111]
  %114 = load i8** %2, align 8, !dbg !288         ; [#uses=1 type=i8*] [debug line = 125:111]
  %115 = getelementptr inbounds i8* %114, i64 %113, !dbg !288 ; [#uses=1 type=i8*] [debug line = 125:111]
  %116 = getelementptr inbounds i8* %115, i64 1, !dbg !288 ; [#uses=1 type=i8*] [debug line = 125:111]
  store i8 %110, i8* %116, align 1, !dbg !288     ; [debug line = 125:111]
  %117 = load i32* %i, align 4, !dbg !289         ; [#uses=1 type=i32] [debug line = 125:164]
  %118 = sext i32 %117 to i64, !dbg !289          ; [#uses=1 type=i64] [debug line = 125:164]
  %119 = getelementptr inbounds %class.SHA256* %3, i32 0, i32 3, !dbg !289 ; [#uses=1 type=[8 x i32]*] [debug line = 125:164]
  %120 = getelementptr inbounds [8 x i32]* %119, i32 0, i64 %118, !dbg !289 ; [#uses=1 type=i32*] [debug line = 125:164]
  %121 = load i32* %120, align 4, !dbg !289       ; [#uses=1 type=i32] [debug line = 125:164]
  %122 = lshr i32 %121, 24, !dbg !289             ; [#uses=1 type=i32] [debug line = 125:164]
  %123 = trunc i32 %122 to i8, !dbg !289          ; [#uses=1 type=i8] [debug line = 125:164]
  %124 = load i32* %i, align 4, !dbg !289         ; [#uses=1 type=i32] [debug line = 125:164]
  %125 = shl i32 %124, 2, !dbg !289               ; [#uses=1 type=i32] [debug line = 125:164]
  %126 = sext i32 %125 to i64, !dbg !289          ; [#uses=1 type=i64] [debug line = 125:164]
  %127 = load i8** %2, align 8, !dbg !289         ; [#uses=1 type=i8*] [debug line = 125:164]
  %128 = getelementptr inbounds i8* %127, i64 %126, !dbg !289 ; [#uses=1 type=i8*] [debug line = 125:164]
  %129 = getelementptr inbounds i8* %128, i64 0, !dbg !289 ; [#uses=1 type=i8*] [debug line = 125:164]
  store i8 %123, i8* %129, align 1, !dbg !289     ; [debug line = 125:164]
  br label %130, !dbg !290                        ; [debug line = 126:5]

; <label>:130                                     ; preds = %78
  %131 = load i32* %i, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 124:25]
  %132 = add nsw i32 %131, 1, !dbg !291           ; [#uses=1 type=i32] [debug line = 124:25]
  store i32 %132, i32* %i, align 4, !dbg !291     ; [debug line = 124:25]
  br label %75, !dbg !291                         ; [debug line = 124:25]

; <label>:133                                     ; preds = %75
  ret void, !dbg !292                             ; [debug line = 127:1]
}

; [#uses=0]
define void @_Z10sha256_memPhjjS_Pb(i8* %mem, i32 %message_addr, i32 %num_blocks, i8* %digest_out, i1* %digest_valid) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %2 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %4 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %5 = alloca i1*, align 8                        ; [#uses=3 type=i1**]
  %data_buffer = alloca [64 x i8], align 16       ; [#uses=2 type=[64 x i8]*]
  %block_counter = alloca i32, align 4            ; [#uses=4 type=i32*]
  %data_index = alloca i32, align 4               ; [#uses=4 type=i32*]
  %buffer_index = alloca i32, align 4             ; [#uses=5 type=i32*]
  %cipher = alloca %class.SHA256, align 4         ; [#uses=4 type=%class.SHA256*]
  store i8* %mem, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !293), !dbg !294 ; [debug line = 129:31] [debug variable = mem]
  store i32 %message_addr, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !295), !dbg !296 ; [debug line = 129:58] [debug variable = message_addr]
  store i32 %num_blocks, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !297), !dbg !298 ; [debug line = 129:85] [debug variable = num_blocks]
  store i8* %digest_out, i8** %4, align 8
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !299), !dbg !300 ; [debug line = 129:111] [debug variable = digest_out]
  store i1* %digest_valid, i1** %5, align 8
  call void @llvm.dbg.declare(metadata !{i1** %5}, metadata !301), !dbg !302 ; [debug line = 129:133] [debug variable = digest_valid]
  %6 = load i8** %1, align 8, !dbg !303           ; [#uses=1 type=i8*] [debug line = 129:147]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %6, i32 131072) nounwind, !dbg !303 ; [debug line = 129:147]
  %7 = load i8** %4, align 8, !dbg !305           ; [#uses=1 type=i8*] [debug line = 129:183]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %7, i32 32) nounwind, !dbg !305 ; [debug line = 129:183]
  %8 = load i1** %5, align 8, !dbg !306           ; [#uses=1 type=i1*] [debug line = 130:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %8, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !306 ; [debug line = 130:1]
  %9 = load i8** %4, align 8, !dbg !307           ; [#uses=1 type=i8*] [debug line = 131:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %9, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !307 ; [debug line = 131:1]
  %10 = load i32* %2, align 4, !dbg !308          ; [#uses=1 type=i32] [debug line = 132:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %10, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !308 ; [debug line = 132:1]
  %11 = load i32* %2, align 4, !dbg !309          ; [#uses=1 type=i32] [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !309 ; [debug line = 133:1]
  %12 = load i8** %1, align 8, !dbg !310          ; [#uses=1 type=i8*] [debug line = 134:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %12, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 131072, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !310 ; [debug line = 134:1]
  %13 = load i32* %3, align 4, !dbg !311          ; [#uses=1 type=i32] [debug line = 135:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %13, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !311 ; [debug line = 135:1]
  %14 = load i32* %3, align 4, !dbg !312          ; [#uses=1 type=i32] [debug line = 136:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %14, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !312 ; [debug line = 136:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %data_buffer}, metadata !313), !dbg !315 ; [debug line = 137:16] [debug variable = data_buffer]
  call void @llvm.dbg.declare(metadata !{i32* %block_counter}, metadata !316), !dbg !317 ; [debug line = 138:6] [debug variable = block_counter]
  call void @llvm.dbg.declare(metadata !{i32* %data_index}, metadata !318), !dbg !319 ; [debug line = 138:21] [debug variable = data_index]
  store i32 0, i32* %data_index, align 4, !dbg !320 ; [debug line = 138:49]
  call void @llvm.dbg.declare(metadata !{i32* %buffer_index}, metadata !321), !dbg !322 ; [debug line = 138:37] [debug variable = buffer_index]
  call void @llvm.dbg.declare(metadata !{%class.SHA256* %cipher}, metadata !323), !dbg !324 ; [debug line = 139:9] [debug variable = cipher]
  call void @_ZN6SHA256C1Ev(%class.SHA256* %cipher), !dbg !325 ; [debug line = 139:15]
  call void @_ZN6SHA2564initEv(%class.SHA256* %cipher), !dbg !326 ; [debug line = 141:2]
  store i32 0, i32* %block_counter, align 4, !dbg !327 ; [debug line = 143:6]
  br label %15, !dbg !327                         ; [debug line = 143:6]

; <label>:15                                      ; preds = %41, %0
  %16 = load i32* %block_counter, align 4, !dbg !327 ; [#uses=1 type=i32] [debug line = 143:6]
  %17 = load i32* %3, align 4, !dbg !327          ; [#uses=1 type=i32] [debug line = 143:6]
  %18 = icmp ult i32 %16, %17, !dbg !327          ; [#uses=1 type=i1] [debug line = 143:6]
  br i1 %18, label %19, label %44, !dbg !327      ; [debug line = 143:6]

; <label>:19                                      ; preds = %15
  store i32 0, i32* %buffer_index, align 4, !dbg !329 ; [debug line = 144:7]
  br label %20, !dbg !329                         ; [debug line = 144:7]

; <label>:20                                      ; preds = %36, %19
  %21 = load i32* %buffer_index, align 4, !dbg !329 ; [#uses=1 type=i32] [debug line = 144:7]
  %22 = icmp slt i32 %21, 64, !dbg !329           ; [#uses=1 type=i1] [debug line = 144:7]
  br i1 %22, label %23, label %39, !dbg !329      ; [debug line = 144:7]

; <label>:23                                      ; preds = %20
  %24 = load i32* %2, align 4, !dbg !332          ; [#uses=1 type=i32] [debug line = 145:4]
  %25 = load i32* %data_index, align 4, !dbg !332 ; [#uses=1 type=i32] [debug line = 145:4]
  %26 = add i32 %24, %25, !dbg !332               ; [#uses=1 type=i32] [debug line = 145:4]
  %27 = zext i32 %26 to i64, !dbg !332            ; [#uses=1 type=i64] [debug line = 145:4]
  %28 = load i8** %1, align 8, !dbg !332          ; [#uses=1 type=i8*] [debug line = 145:4]
  %29 = getelementptr inbounds i8* %28, i64 %27, !dbg !332 ; [#uses=1 type=i8*] [debug line = 145:4]
  %30 = load i8* %29, align 1, !dbg !332          ; [#uses=1 type=i8] [debug line = 145:4]
  %31 = load i32* %buffer_index, align 4, !dbg !332 ; [#uses=1 type=i32] [debug line = 145:4]
  %32 = sext i32 %31 to i64, !dbg !332            ; [#uses=1 type=i64] [debug line = 145:4]
  %33 = getelementptr inbounds [64 x i8]* %data_buffer, i32 0, i64 %32, !dbg !332 ; [#uses=1 type=i8*] [debug line = 145:4]
  store i8 %30, i8* %33, align 1, !dbg !332       ; [debug line = 145:4]
  %34 = load i32* %data_index, align 4, !dbg !334 ; [#uses=1 type=i32] [debug line = 146:4]
  %35 = add nsw i32 %34, 1, !dbg !334             ; [#uses=1 type=i32] [debug line = 146:4]
  store i32 %35, i32* %data_index, align 4, !dbg !334 ; [debug line = 146:4]
  br label %36, !dbg !335                         ; [debug line = 147:3]

; <label>:36                                      ; preds = %23
  %37 = load i32* %buffer_index, align 4, !dbg !336 ; [#uses=1 type=i32] [debug line = 144:40]
  %38 = add nsw i32 %37, 1, !dbg !336             ; [#uses=1 type=i32] [debug line = 144:40]
  store i32 %38, i32* %buffer_index, align 4, !dbg !336 ; [debug line = 144:40]
  br label %20, !dbg !336                         ; [debug line = 144:40]

; <label>:39                                      ; preds = %20
  %40 = getelementptr inbounds [64 x i8]* %data_buffer, i32 0, i32 0, !dbg !337 ; [#uses=1 type=i8*] [debug line = 148:3]
  call void @_ZN6SHA2566updateEPKh(%class.SHA256* %cipher, i8* %40), !dbg !337 ; [debug line = 148:3]
  br label %41, !dbg !338                         ; [debug line = 149:2]

; <label>:41                                      ; preds = %39
  %42 = load i32* %block_counter, align 4, !dbg !339 ; [#uses=1 type=i32] [debug line = 143:49]
  %43 = add nsw i32 %42, 1, !dbg !339             ; [#uses=1 type=i32] [debug line = 143:49]
  store i32 %43, i32* %block_counter, align 4, !dbg !339 ; [debug line = 143:49]
  br label %15, !dbg !339                         ; [debug line = 143:49]

; <label>:44                                      ; preds = %15
  %45 = load i8** %4, align 8, !dbg !340          ; [#uses=1 type=i8*] [debug line = 150:2]
  call void @_ZN6SHA2565finalEPh(%class.SHA256* %cipher, i8* %45), !dbg !340 ; [debug line = 150:2]
  %46 = load i1** %5, align 8, !dbg !341          ; [#uses=1 type=i1*] [debug line = 151:2]
  store i1 true, i1* %46, align 1, !dbg !341      ; [debug line = 151:2]
  ret void, !dbg !342                             ; [debug line = 152:1]
}

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN6SHA256C1Ev(%class.SHA256* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !343), !dbg !344 ; [debug line = 38:39] [debug variable = this]
  %2 = load %class.SHA256** %1                    ; [#uses=1 type=%class.SHA256*]
  call void @_ZN6SHA256C2Ev(%class.SHA256* %2), !dbg !345 ; [debug line = 38:80]
  ret void, !dbg !345                             ; [debug line = 38:80]
}

; [#uses=1]
define linkonce_odr void @_ZN6SHA256C2Ev(%class.SHA256* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.SHA256*, align 8             ; [#uses=2 type=%class.SHA256**]
  store %class.SHA256* %this, %class.SHA256** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.SHA256** %1}, metadata !346), !dbg !347 ; [debug line = 38:39] [debug variable = this]
  %2 = load %class.SHA256** %1                    ; [#uses=0 type=%class.SHA256*]
  call void (...)* @_ssdm_SpecConstant(i32* getelementptr inbounds ([64 x i32]* @_ZN6SHA2568sha256_kE, i32 0, i32 0)) nounwind, !dbg !348 ; [debug line = 38:50]
  ret void, !dbg !350                             ; [debug line = 38:80]
}

; [#uses=1]
declare void @_ssdm_SpecConstant(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!65, !72, !76, !82, !88, !94, !97, !103, !104}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/sha256_mem/solution1/.autopilot/db/sha256_mem.pragma.2.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !58} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !17, metadata !48, metadata !49, metadata !50, metadata !51, metadata !56, metadata !57}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"_memcpy", metadata !"_memcpy", metadata !"_Z7_memcpyPhS_j", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @_Z7_memcpyPhS_j, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sha256_mem/src/sha256_mem.cpp", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
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
!22 = metadata !{i32 786473, metadata !"sha256_mem/src/sha256_mem.h", metadata !"/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls", null} ; [ DW_TAG_file_type ]
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
!51 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_mem", metadata !"sha256_mem", metadata !"_Z10sha256_memPhjjS_Pb", metadata !6, i32 129, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32, i32, i8*, i1*)* @_Z10sha256_memPhjjS_Pb, null, null, metadata !12, i32 129} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !9, metadata !54}
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C1Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*)* @_ZN6SHA256C1Ev, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786478, i32 0, null, metadata !"SHA256", metadata !"SHA256", metadata !"_ZN6SHA256C2Ev", metadata !22, i32 38, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.SHA256*)* @_ZN6SHA256C2Ev, null, metadata !47, metadata !12, i32 38} ; [ DW_TAG_subprogram ]
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786484, i32 0, metadata !21, metadata !"sha256_k", metadata !"sha256_k", metadata !"_ZN6SHA2568sha256_kE", metadata !6, i32 17, metadata !61, i32 0, i32 1, [64 x i32]* @_ZN6SHA2568sha256_kE} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !62, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!65 = metadata !{void (i8*, i8*, i32)* @_Z7_memcpyPhS_j, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!66 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!67 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!69 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"length"}
!71 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!72 = metadata !{void (i8*, i8, i32)* @_Z7_memsetPhhj, metadata !73, metadata !67, metadata !74, metadata !69, metadata !75, metadata !71}
!73 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar", metadata !"uint"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"length"}
!76 = metadata !{void (%class.SHA256*, i8*, i32)* @_ZN6SHA2569transformEPKhj, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !71}
!77 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!78 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint"}
!80 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"message", metadata !"block_nb"}
!82 = metadata !{void (%class.SHA256*)* @_ZN6SHA2564initEv, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !71}
!83 = metadata !{metadata !"kernel_arg_addr_space"}
!84 = metadata !{metadata !"kernel_arg_access_qual"}
!85 = metadata !{metadata !"kernel_arg_type"}
!86 = metadata !{metadata !"kernel_arg_type_qual"}
!87 = metadata !{metadata !"kernel_arg_name"}
!88 = metadata !{void (%class.SHA256*, i8*)* @_ZN6SHA2566updateEPKh, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !71}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!90 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!92 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"message"}
!94 = metadata !{void (%class.SHA256*, i8*)* @_ZN6SHA2565finalEPh, metadata !89, metadata !90, metadata !91, metadata !95, metadata !96, metadata !71}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"digest"}
!97 = metadata !{void (i8*, i32, i32, i8*, i1*)* @_Z10sha256_memPhjjS_Pb, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !71}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1, i32 1}
!99 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*", metadata !"_Bool*"}
!101 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"message_addr", metadata !"num_blocks", metadata !"digest_out", metadata !"digest_valid"}
!103 = metadata !{void (%class.SHA256*)* @_ZN6SHA256C1Ev, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !71}
!104 = metadata !{void (%class.SHA256*)* @_ZN6SHA256C2Ev, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !71}
!105 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 3, i32 29, metadata !5, null}
!107 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 3, i32 49, metadata !5, null}
!109 = metadata !{i32 786689, metadata !5, metadata !"length", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 3, i32 67, metadata !5, null}
!111 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !6, i32 4, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786443, metadata !5, i32 3, i32 74, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!114 = metadata !{i32 4, i32 6, metadata !112, null}
!115 = metadata !{i32 5, i32 6, metadata !116, null}
!116 = metadata !{i32 786443, metadata !112, i32 5, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 6, i32 3, metadata !118, null}
!118 = metadata !{i32 786443, metadata !116, i32 5, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 7, i32 2, metadata !118, null}
!120 = metadata !{i32 5, i32 21, metadata !116, null}
!121 = metadata !{i32 8, i32 1, metadata !112, null}
!122 = metadata !{i32 786689, metadata !14, metadata !"dst", metadata !6, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 10, i32 29, metadata !14, null}
!124 = metadata !{i32 786689, metadata !14, metadata !"val", metadata !6, i32 33554442, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 10, i32 48, metadata !14, null}
!126 = metadata !{i32 786689, metadata !14, metadata !"length", metadata !6, i32 50331658, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 10, i32 66, metadata !14, null}
!128 = metadata !{i32 786688, metadata !129, metadata !"i", metadata !6, i32 11, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 786443, metadata !14, i32 10, i32 73, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 11, i32 6, metadata !129, null}
!131 = metadata !{i32 12, i32 6, metadata !132, null}
!132 = metadata !{i32 786443, metadata !129, i32 12, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 13, i32 3, metadata !134, null}
!134 = metadata !{i32 786443, metadata !132, i32 12, i32 25, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 14, i32 2, metadata !134, null}
!136 = metadata !{i32 12, i32 21, metadata !132, null}
!137 = metadata !{i32 15, i32 1, metadata !129, null}
!138 = metadata !{i32 786689, metadata !17, metadata !"this", metadata !6, i32 16777251, metadata !139, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!140 = metadata !{i32 35, i32 14, metadata !17, null}
!141 = metadata !{i32 786689, metadata !17, metadata !"message", metadata !6, i32 33554467, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 35, i32 45, metadata !17, null}
!143 = metadata !{i32 786689, metadata !17, metadata !"block_nb", metadata !6, i32 50331683, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 35, i32 67, metadata !17, null}
!145 = metadata !{i32 786688, metadata !146, metadata !"w", metadata !6, i32 37, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786443, metadata !17, i32 36, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !32, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!148 = metadata !{i32 37, i32 12, metadata !146, null}
!149 = metadata !{i32 786688, metadata !146, metadata !"wv", metadata !6, i32 38, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 38, i32 12, metadata !146, null}
!151 = metadata !{i32 786688, metadata !146, metadata !"t1", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 39, i32 12, metadata !146, null}
!153 = metadata !{i32 786688, metadata !146, metadata !"t2", metadata !6, i32 39, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 39, i32 16, metadata !146, null}
!155 = metadata !{i32 786688, metadata !146, metadata !"sub_block", metadata !6, i32 40, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 40, i32 26, metadata !146, null}
!157 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !6, i32 41, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 41, i32 9, metadata !146, null}
!159 = metadata !{i32 786688, metadata !146, metadata !"j", metadata !6, i32 42, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 42, i32 9, metadata !146, null}
!161 = metadata !{i32 43, i32 10, metadata !162, null}
!162 = metadata !{i32 786443, metadata !146, i32 43, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 44, i32 9, metadata !164, null}
!164 = metadata !{i32 786443, metadata !162, i32 43, i32 42, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 45, i32 14, metadata !166, null}
!166 = metadata !{i32 786443, metadata !164, i32 45, i32 9, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 46, i32 15, metadata !168, null}
!168 = metadata !{i32 786443, metadata !169, i32 46, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786443, metadata !166, i32 45, i32 34, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 47, i32 9, metadata !169, null}
!171 = metadata !{i32 45, i32 29, metadata !166, null}
!172 = metadata !{i32 48, i32 14, metadata !173, null}
!173 = metadata !{i32 786443, metadata !164, i32 48, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 49, i32 13, metadata !175, null}
!175 = metadata !{i32 786443, metadata !173, i32 48, i32 35, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 50, i32 9, metadata !175, null}
!177 = metadata !{i32 48, i32 30, metadata !173, null}
!178 = metadata !{i32 51, i32 14, metadata !179, null}
!179 = metadata !{i32 786443, metadata !164, i32 51, i32 9, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 52, i32 13, metadata !181, null}
!181 = metadata !{i32 786443, metadata !179, i32 51, i32 33, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 53, i32 9, metadata !181, null}
!183 = metadata !{i32 51, i32 28, metadata !179, null}
!184 = metadata !{i32 54, i32 14, metadata !185, null}
!185 = metadata !{i32 786443, metadata !164, i32 54, i32 9, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 55, i32 13, metadata !187, null}
!187 = metadata !{i32 786443, metadata !185, i32 54, i32 34, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 57, i32 13, metadata !187, null}
!189 = metadata !{i32 58, i32 13, metadata !187, null}
!190 = metadata !{i32 59, i32 13, metadata !187, null}
!191 = metadata !{i32 60, i32 13, metadata !187, null}
!192 = metadata !{i32 61, i32 13, metadata !187, null}
!193 = metadata !{i32 62, i32 13, metadata !187, null}
!194 = metadata !{i32 63, i32 13, metadata !187, null}
!195 = metadata !{i32 64, i32 13, metadata !187, null}
!196 = metadata !{i32 65, i32 13, metadata !187, null}
!197 = metadata !{i32 66, i32 9, metadata !187, null}
!198 = metadata !{i32 54, i32 29, metadata !185, null}
!199 = metadata !{i32 67, i32 14, metadata !200, null}
!200 = metadata !{i32 786443, metadata !164, i32 67, i32 9, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 68, i32 13, metadata !202, null}
!202 = metadata !{i32 786443, metadata !200, i32 67, i32 33, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 69, i32 9, metadata !202, null}
!204 = metadata !{i32 67, i32 28, metadata !200, null}
!205 = metadata !{i32 70, i32 5, metadata !164, null}
!206 = metadata !{i32 43, i32 37, metadata !162, null}
!207 = metadata !{i32 71, i32 1, metadata !146, null}
!208 = metadata !{i32 786689, metadata !48, metadata !"this", metadata !6, i32 16777289, metadata !139, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 73, i32 14, metadata !48, null}
!210 = metadata !{i32 75, i32 5, metadata !211, null}
!211 = metadata !{i32 786443, metadata !48, i32 74, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 76, i32 5, metadata !211, null}
!213 = metadata !{i32 77, i32 5, metadata !211, null}
!214 = metadata !{i32 78, i32 5, metadata !211, null}
!215 = metadata !{i32 79, i32 5, metadata !211, null}
!216 = metadata !{i32 80, i32 5, metadata !211, null}
!217 = metadata !{i32 81, i32 5, metadata !211, null}
!218 = metadata !{i32 82, i32 5, metadata !211, null}
!219 = metadata !{i32 83, i32 5, metadata !211, null}
!220 = metadata !{i32 84, i32 5, metadata !211, null}
!221 = metadata !{i32 85, i32 1, metadata !211, null}
!222 = metadata !{i32 786689, metadata !49, metadata !"this", metadata !6, i32 16777303, metadata !139, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 87, i32 14, metadata !49, null}
!224 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !6, i32 33554519, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 87, i32 41, metadata !49, null}
!226 = metadata !{i32 88, i32 2, metadata !227, null}
!227 = metadata !{i32 786443, metadata !49, i32 88, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 786688, metadata !227, metadata !"block_nb", metadata !6, i32 89, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 89, i32 18, metadata !227, null}
!230 = metadata !{i32 786688, metadata !227, metadata !"new_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 90, i32 18, metadata !227, null}
!232 = metadata !{i32 786688, metadata !227, metadata !"rem_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 90, i32 27, metadata !227, null}
!234 = metadata !{i32 786688, metadata !227, metadata !"tmp_len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 90, i32 36, metadata !227, null}
!236 = metadata !{i32 786688, metadata !227, metadata !"len", metadata !6, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 90, i32 45, metadata !227, null}
!238 = metadata !{i32 90, i32 53, metadata !227, null}
!239 = metadata !{i32 786688, metadata !227, metadata !"shifted_message", metadata !6, i32 91, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 91, i32 26, metadata !227, null}
!241 = metadata !{i32 92, i32 5, metadata !227, null}
!242 = metadata !{i32 93, i32 5, metadata !227, null}
!243 = metadata !{i32 94, i32 5, metadata !227, null}
!244 = metadata !{i32 95, i32 5, metadata !227, null}
!245 = metadata !{i32 96, i32 9, metadata !246, null}
!246 = metadata !{i32 786443, metadata !227, i32 95, i32 27, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 97, i32 9, metadata !246, null}
!248 = metadata !{i32 99, i32 5, metadata !227, null}
!249 = metadata !{i32 100, i32 5, metadata !227, null}
!250 = metadata !{i32 101, i32 5, metadata !227, null}
!251 = metadata !{i32 102, i32 5, metadata !227, null}
!252 = metadata !{i32 103, i32 5, metadata !227, null}
!253 = metadata !{i32 104, i32 5, metadata !227, null}
!254 = metadata !{i32 105, i32 5, metadata !227, null}
!255 = metadata !{i32 106, i32 5, metadata !227, null}
!256 = metadata !{i32 107, i32 5, metadata !227, null}
!257 = metadata !{i32 108, i32 1, metadata !227, null}
!258 = metadata !{i32 786689, metadata !50, metadata !"this", metadata !6, i32 16777326, metadata !139, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!259 = metadata !{i32 110, i32 14, metadata !50, null}
!260 = metadata !{i32 786689, metadata !50, metadata !"digest", metadata !6, i32 33554542, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 110, i32 35, metadata !50, null}
!262 = metadata !{i32 786688, metadata !263, metadata !"block_nb", metadata !6, i32 112, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 786443, metadata !50, i32 111, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 112, i32 18, metadata !263, null}
!265 = metadata !{i32 786688, metadata !263, metadata !"pm_len", metadata !6, i32 113, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 113, i32 18, metadata !263, null}
!267 = metadata !{i32 786688, metadata !263, metadata !"len_b", metadata !6, i32 114, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 114, i32 18, metadata !263, null}
!269 = metadata !{i32 786688, metadata !263, metadata !"i", metadata !6, i32 115, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 115, i32 9, metadata !263, null}
!271 = metadata !{i32 116, i32 5, metadata !263, null}
!272 = metadata !{i32 118, i32 5, metadata !263, null}
!273 = metadata !{i32 119, i32 5, metadata !263, null}
!274 = metadata !{i32 120, i32 5, metadata !263, null}
!275 = metadata !{i32 121, i32 5, metadata !263, null}
!276 = metadata !{i32 122, i32 7, metadata !277, null}
!277 = metadata !{i32 786443, metadata !263, i32 122, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!278 = metadata !{i32 122, i32 59, metadata !277, null}
!279 = metadata !{i32 122, i32 115, metadata !277, null}
!280 = metadata !{i32 122, i32 172, metadata !277, null}
!281 = metadata !{i32 123, i32 5, metadata !263, null}
!282 = metadata !{i32 124, i32 10, metadata !283, null}
!283 = metadata !{i32 786443, metadata !263, i32 124, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 125, i32 11, metadata !285, null}
!285 = metadata !{i32 786443, metadata !286, i32 125, i32 9, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 786443, metadata !283, i32 124, i32 30, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 125, i32 59, metadata !285, null}
!288 = metadata !{i32 125, i32 111, metadata !285, null}
!289 = metadata !{i32 125, i32 164, metadata !285, null}
!290 = metadata !{i32 126, i32 5, metadata !286, null}
!291 = metadata !{i32 124, i32 25, metadata !283, null}
!292 = metadata !{i32 127, i32 1, metadata !263, null}
!293 = metadata !{i32 786689, metadata !51, metadata !"mem", metadata !6, i32 16777345, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!294 = metadata !{i32 129, i32 31, metadata !51, null}
!295 = metadata !{i32 786689, metadata !51, metadata !"message_addr", metadata !6, i32 33554561, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!296 = metadata !{i32 129, i32 58, metadata !51, null}
!297 = metadata !{i32 786689, metadata !51, metadata !"num_blocks", metadata !6, i32 50331777, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!298 = metadata !{i32 129, i32 85, metadata !51, null}
!299 = metadata !{i32 786689, metadata !51, metadata !"digest_out", metadata !6, i32 67108993, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!300 = metadata !{i32 129, i32 111, metadata !51, null}
!301 = metadata !{i32 786689, metadata !51, metadata !"digest_valid", metadata !6, i32 83886209, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!302 = metadata !{i32 129, i32 133, metadata !51, null}
!303 = metadata !{i32 129, i32 147, metadata !304, null}
!304 = metadata !{i32 786443, metadata !51, i32 129, i32 146, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!305 = metadata !{i32 129, i32 183, metadata !304, null}
!306 = metadata !{i32 130, i32 1, metadata !304, null}
!307 = metadata !{i32 131, i32 1, metadata !304, null}
!308 = metadata !{i32 132, i32 1, metadata !304, null}
!309 = metadata !{i32 133, i32 1, metadata !304, null}
!310 = metadata !{i32 134, i32 1, metadata !304, null}
!311 = metadata !{i32 135, i32 1, metadata !304, null}
!312 = metadata !{i32 136, i32 1, metadata !304, null}
!313 = metadata !{i32 786688, metadata !304, metadata !"data_buffer", metadata !6, i32 137, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!314 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!315 = metadata !{i32 137, i32 16, metadata !304, null}
!316 = metadata !{i32 786688, metadata !304, metadata !"block_counter", metadata !6, i32 138, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!317 = metadata !{i32 138, i32 6, metadata !304, null}
!318 = metadata !{i32 786688, metadata !304, metadata !"data_index", metadata !6, i32 138, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 138, i32 21, metadata !304, null}
!320 = metadata !{i32 138, i32 49, metadata !304, null}
!321 = metadata !{i32 786688, metadata !304, metadata !"buffer_index", metadata !6, i32 138, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!322 = metadata !{i32 138, i32 37, metadata !304, null}
!323 = metadata !{i32 786688, metadata !304, metadata !"cipher", metadata !6, i32 139, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 139, i32 9, metadata !304, null}
!325 = metadata !{i32 139, i32 15, metadata !304, null}
!326 = metadata !{i32 141, i32 2, metadata !304, null}
!327 = metadata !{i32 143, i32 6, metadata !328, null}
!328 = metadata !{i32 786443, metadata !304, i32 143, i32 2, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!329 = metadata !{i32 144, i32 7, metadata !330, null}
!330 = metadata !{i32 786443, metadata !331, i32 144, i32 3, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!331 = metadata !{i32 786443, metadata !328, i32 143, i32 65, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 145, i32 4, metadata !333, null}
!333 = metadata !{i32 786443, metadata !330, i32 144, i32 55, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!334 = metadata !{i32 146, i32 4, metadata !333, null}
!335 = metadata !{i32 147, i32 3, metadata !333, null}
!336 = metadata !{i32 144, i32 40, metadata !330, null}
!337 = metadata !{i32 148, i32 3, metadata !331, null}
!338 = metadata !{i32 149, i32 2, metadata !331, null}
!339 = metadata !{i32 143, i32 49, metadata !328, null}
!340 = metadata !{i32 150, i32 2, metadata !304, null}
!341 = metadata !{i32 151, i32 2, metadata !304, null}
!342 = metadata !{i32 152, i32 1, metadata !304, null}
!343 = metadata !{i32 786689, metadata !56, metadata !"this", metadata !22, i32 16777254, metadata !139, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!344 = metadata !{i32 38, i32 39, metadata !56, null}
!345 = metadata !{i32 38, i32 80, metadata !56, null}
!346 = metadata !{i32 786689, metadata !57, metadata !"this", metadata !22, i32 16777254, metadata !139, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!347 = metadata !{i32 38, i32 39, metadata !57, null}
!348 = metadata !{i32 38, i32 50, metadata !349, null}
!349 = metadata !{i32 786443, metadata !57, i32 38, i32 48, metadata !22, i32 33} ; [ DW_TAG_lexical_block ]
!350 = metadata !{i32 38, i32 80, metadata !349, null}
