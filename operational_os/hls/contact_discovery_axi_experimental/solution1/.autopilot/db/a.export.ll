; ModuleID = '/home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@db_stream_OC_V_str = internal unnamed_addr constant [12 x i8] c"db_stream.V\00"
@db_stream_V = internal global i8 0
@db_item_OC_V_str = internal unnamed_addr constant [10 x i8] c"db_item.V\00"
@contacts_size = internal unnamed_addr global i32 0, align 4
@contacts = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16
@contact_discovery_st = internal unnamed_addr constant [18 x i8] c"contact_discovery\00"
@contact_OC_V_str = internal unnamed_addr constant [10 x i8] c"contact.V\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

define internal fastcc zeroext i1 @match_db_contact() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecInterface(i8* @db_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str31, i32 0, i32 0, [1 x i8]* @p_str32, [1 x i8]* @p_str33, [1 x i8]* @p_str34, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str35, [1 x i8]* @p_str36)
  %results_local = alloca [64 x i1], align 16
  %local_results = alloca [128 x i1], align 16
  %db_item_temp = alloca [64 x i8], align 16
  %contact_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @contact_OC_V_str, i32 1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, i32 128, i32 128, i8* %contact_V, i8* %contact_V) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %contact_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str13, [1 x i8]* @p_str14, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str15, [1 x i8]* @p_str16)
  %db_item_V = alloca i8, align 1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @db_item_OC_V_str, i32 1, [1 x i8]* @p_str17, [1 x i8]* @p_str17, i32 128, i32 128, i8* %db_item_V, i8* %db_item_V) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %db_item_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str18, i32 0, i32 0, [1 x i8]* @p_str19, [1 x i8]* @p_str20, [1 x i8]* @p_str21, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str22, [1 x i8]* @p_str23)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_2, %2 ]
  %exitcond1 = icmp eq i7 %i, -64
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_2 = add i7 %i, 1
  br i1 %exitcond1, label %.preheader11.preheader, label %2

.preheader11.preheader:                           ; preds = %1
  br label %.preheader11

; <label>:2                                       ; preds = %1
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* @db_stream_V) nounwind
  %tmp_1 = zext i7 %i to i64
  %db_item_temp_addr = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp_1
  store i8 %tmp, i8* %db_item_temp_addr, align 1
  br label %1

.preheader11:                                     ; preds = %.preheader11.preheader, %compare.exit
  %contacts_index = phi i8 [ %contacts_index_3, %compare.exit ], [ 0, %.preheader11.preheader ]
  %exitcond9 = icmp eq i8 %contacts_index, -128
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %contacts_index_3 = add i8 %contacts_index, 1
  br i1 %exitcond9, label %.preheader.preheader, label %3

.preheader.preheader:                             ; preds = %.preheader11
  br label %.preheader

; <label>:3                                       ; preds = %.preheader11
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  %tmp_5 = trunc i8 %contacts_index to i7
  %tmp_3 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_5, i6 0)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i7 [ 0, %3 ], [ %i_3, %5 ]
  %i_1_cast5 = zext i7 %i_1 to i13
  %exitcond8 = icmp eq i7 %i_1, -64
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_3 = add i7 %i_1, 1
  br i1 %exitcond8, label %.preheader3.preheader, label %5

.preheader3.preheader:                            ; preds = %4
  br label %.preheader3

; <label>:5                                       ; preds = %4
  %tmp_s = add i13 %tmp_3, %i_1_cast5
  %tmp_2 = zext i13 %tmp_s to i64
  %contacts_addr = getelementptr inbounds [8192 x i8]* @contacts, i64 0, i64 %tmp_2
  %tmp_7 = load i8* %contacts_addr, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %contact_V, i8 %tmp_7) nounwind
  %tmp_9 = zext i7 %i_1 to i64
  %db_item_temp_addr_1 = getelementptr inbounds [64 x i8]* %db_item_temp, i64 0, i64 %tmp_9
  %tmp_10 = load i8* %db_item_temp_addr_1, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %db_item_V, i8 %tmp_10) nounwind
  br label %4

.preheader3:                                      ; preds = %.preheader3.preheader, %6
  %i_i = phi i7 [ %i_4, %6 ], [ 0, %.preheader3.preheader ]
  %exitcond3_i = icmp eq i7 %i_i, -64
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_4 = add i7 %i_i, 1
  br i1 %exitcond3_i, label %.preheader.i.preheader, label %6

.preheader.i.preheader:                           ; preds = %.preheader3
  br label %.preheader.i

; <label>:6                                       ; preds = %.preheader3
  %tmp_11 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %contact_V) nounwind
  %tmp_12 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %db_item_V) nounwind
  %tmp_i = icmp eq i8 %tmp_11, %tmp_12
  %tmp_5_i = zext i7 %i_i to i64
  %results_local_addr = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp_5_i
  store i1 %tmp_i, i1* %results_local_addr, align 1
  br label %.preheader3

.preheader.i:                                     ; preds = %.preheader.i.preheader, %7
  %i_1_i = phi i7 [ %i_5, %7 ], [ 0, %.preheader.i.preheader ]
  %found_i = phi i1 [ %found, %7 ], [ true, %.preheader.i.preheader ]
  %exitcond_i = icmp eq i7 %i_1_i, -64
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i_5 = add i7 %i_1_i, 1
  br i1 %exitcond_i, label %compare.exit, label %7

; <label>:7                                       ; preds = %.preheader.i
  %tmp_6_i = zext i7 %i_1_i to i64
  %results_local_addr_1 = getelementptr inbounds [64 x i1]* %results_local, i64 0, i64 %tmp_6_i
  %results_local_load = load i1* %results_local_addr_1, align 1
  %found = and i1 %results_local_load, %found_i
  br label %.preheader.i

compare.exit:                                     ; preds = %.preheader.i
  %tmp_8 = zext i8 %contacts_index to i64
  %local_results_addr_1 = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp_8
  store i1 %found_i, i1* %local_results_addr_1, align 1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_6) nounwind
  br label %.preheader11

.preheader:                                       ; preds = %.preheader.preheader, %8
  %contacts_index_1 = phi i8 [ %contacts_index_2, %8 ], [ 0, %.preheader.preheader ]
  %matched = phi i1 [ %matched_1, %8 ], [ false, %.preheader.preheader ]
  %exitcond = icmp eq i8 %contacts_index_1, -128
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %contacts_index_2 = add i8 %contacts_index_1, 1
  br i1 %exitcond, label %9, label %8

; <label>:8                                       ; preds = %.preheader
  %tmp_4 = zext i8 %contacts_index_1 to i64
  %local_results_addr = getelementptr inbounds [128 x i1]* %local_results, i64 0, i64 %tmp_4
  %local_results_load = load i1* %local_results_addr, align 1
  %matched_1 = or i1 %local_results_load, %matched
  br label %.preheader

; <label>:9                                       ; preds = %.preheader
  ret i1 %matched
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @contact_discovery(i32 %operation, [64 x i8]* %contact_in, i8* %db_in_V, i32 %db_size_in, i32* %error_out, i32* %contacts_size_out, i32* %results_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @db_stream_OC_V_str, i32 1, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 128, i32 128, i8* @db_stream_V, i8* @db_stream_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* @db_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str31, i32 0, i32 0, [1 x i8]* @p_str32, [1 x i8]* @p_str33, [1 x i8]* @p_str34, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str35, [1 x i8]* @p_str36)
  call void (...)* @_ssdm_op_SpecInterface(i32* %results_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str24, i32 0, i32 0, [1 x i8]* @p_str25, [1 x i8]* @p_str26, [1 x i8]* @p_str27, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str28, [1 x i8]* @p_str29)
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %contact_in), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %db_in_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %db_size_in), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %error_out), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %contacts_size_out), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %results_out_V), !map !69
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @contact_discovery_st) nounwind
  %db_size_in_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %db_size_in)
  %operation_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %operation)
  call void (...)* @_ssdm_op_SpecInterface(i8* %db_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %db_size_in, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [7 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %contacts_size_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [8 x i8]* @p_str4, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %error_out, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str5, i32 1, i32 1, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_15 = call i32 (...)* @_ssdm_op_SpecMemCore([64 x i8]* %contact_in, [1 x i8]* @p_str7, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str7, i32 -1, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7, [1 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %contact_in, [10 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %contacts_size_load = load i32* @contacts_size, align 4
  switch i32 %operation_read, label %12 [
    i32 0, label %1
    i32 1, label %7
    i32 2, label %11
  ]

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  %tmp = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %contacts_size_load, i32 7, i32 31)
  %icmp = icmp sgt i25 %tmp, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 1)
  br label %6

; <label>:3                                       ; preds = %1
  %tmp_13 = trunc i32 %contacts_size_load to i9
  %tmp_1_cast = call i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9 %tmp_13, i6 0)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_i = phi i7 [ 0, %3 ], [ %i_6, %5 ]
  %exitcond_i = icmp eq i7 %i_i, -64
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_6 = add i7 %i_i, 1
  br i1 %exitcond_i, label %_memcpy.exit, label %5

; <label>:5                                       ; preds = %4
  %tmp_i = zext i7 %i_i to i64
  %tmp_i_cast = zext i7 %i_i to i15
  %contact_in_addr = getelementptr [64 x i8]* %contact_in, i64 0, i64 %tmp_i
  %contact_in_load = load i8* %contact_in_addr, align 1
  %sum_i = add i15 %tmp_i_cast, %tmp_1_cast
  %sum_i_cast = sext i15 %sum_i to i64
  %contacts_addr = getelementptr [8192 x i8]* @contacts, i64 0, i64 %sum_i_cast
  store i8 %contact_in_load, i8* %contacts_addr, align 1
  br label %4

_memcpy.exit:                                     ; preds = %4
  %tmp_2 = add nsw i32 %contacts_size_load, 1
  store i32 %tmp_2, i32* @contacts_size, align 4
  br label %6

; <label>:6                                       ; preds = %_memcpy.exit, %2
  %storemerge = phi i32 [ %tmp_2, %_memcpy.exit ], [ %contacts_size_load, %2 ]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %storemerge)
  br label %.loopexit

; <label>:7                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  br label %8

; <label>:8                                       ; preds = %10, %7
  %database_index = phi i32 [ 0, %7 ], [ %database_index_1, %10 ]
  %exitcond4 = icmp eq i32 %database_index, %db_size_in_read
  %database_index_1 = add nsw i32 %database_index, 1
  br i1 %exitcond4, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %9
  %i = phi i7 [ %i_4, %9 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i7 %i, -64
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_4 = add i7 %i, 1
  br i1 %exitcond, label %10, label %9

; <label>:9                                       ; preds = %.preheader
  %tmp_14 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %db_in_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* @db_stream_V, i8 %tmp_14)
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  %tmp_3 = call fastcc zeroext i1 @match_db_contact()
  %tmp_4 = zext i1 %tmp_3 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %results_out_V, i32 %tmp_4)
  br label %8

; <label>:11                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 0)
  store i32 0, i32* @contacts_size, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 0)
  br label %.loopexit

; <label>:12                                      ; preds = %0
  call void @_ssdm_op_Write.ap_none.i32P(i32* %contacts_size_out, i32 %contacts_size_load)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %error_out, i32 3)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %12, %11, %6
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i25
  ret i25 %empty_18
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i9.i6(i9, i6) nounwind readnone {
entry:
  %empty = zext i9 %0 to i15
  %empty_19 = zext i6 %1 to i15
  %empty_20 = shl i15 %empty, 6
  %empty_21 = or i15 %empty_20, %empty_19
  ret i15 %empty_21
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_22 = zext i6 %1 to i13
  %empty_23 = shl i13 %empty, 6
  %empty_24 = or i13 %empty_23, %empty_22
  ret i13 %empty_24
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i8 @_autotb_FifoRead_i8(i8*)

!hls.encrypted.func = !{}
!opencl.kernels = !{!0, !7, !13, !19, !25, !31, !33, !33, !33}
!llvm.map.gv = !{!34}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dest", metadata !"src", metadata !"length"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uchar> &", metadata !"hls::stream<uchar> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"contact", metadata !"db_item"}
!13 = metadata !{i1 ()* @match_db_contact, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*", metadata !"hls::stream<uchar> &", metadata !"uint", metadata !"int*", metadata !"int*", metadata !"hls::stream<uint> &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"operation", metadata !"contact_in", metadata !"db_in", metadata !"db_size_in", metadata !"error_out", metadata !"contacts_size_out", metadata !"results_out"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!31 = metadata !{null, metadata !26, metadata !27, metadata !32, metadata !29, metadata !30, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!33 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!34 = metadata !{metadata !35, [0 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"operation", metadata !45, metadata !"int", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, i32 0}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 7, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"contact_in", metadata !51, metadata !"unsigned char", i32 0, i32 7}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 7, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"db_in.V", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"db_size_in", metadata !45, metadata !"unsigned int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"error_out", metadata !39, metadata !"int", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"contacts_size_out", metadata !39, metadata !"int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"results_out.V", metadata !39, metadata !"unsigned int", i32 0, i32 31}
