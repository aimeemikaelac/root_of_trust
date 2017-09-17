; ModuleID = '/home/michael/xilinx_workspace/secure_enclave_key_store/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secure_enclave_key_store_str = internal unnamed_addr constant [25 x i8] c"secure_enclave_key_store\00"
@sboxes_9 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_8 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_7 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_6 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_5 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_4 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_3 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_2 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_19 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_18 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_17 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_16 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_15 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_14 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_13 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_12 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_11 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_10 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_1 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@sboxes_0 = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a19]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@p_str511 = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str410 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str28 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define void @secure_enclave_key_store(i32 %device_key_ocm_addr, i128* %ocm_V, i128 %iv_V, [256 x i128]* %encrypted_header_old_V, i128 %tag_header_old_V, [256 x i128]* %encrypted_header_new_V, i128 %tag_header_new_V, i128* %user_key_V, i1* %user_key_valid, i1 zeroext %writing_done_in, i128* %derived_key_out_V, i1* %derived_key_valid, i128* %master_key_out_V, i1* %master_key_out_valid, i128 %iv_out_V, i1* %iv_out_valid, i1* %decrypted_new_header_out, i1* %decrypted_new_header_out_valid, i1* %reset_key_out) {
arrayctor.loop1.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %device_key_ocm_addr), !map !196
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %ocm_V), !map !202
  call void (...)* @_ssdm_op_SpecBitsMap(i128 %iv_V), !map !208
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i128]* %encrypted_header_old_V), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(i128 %tag_header_old_V), !map !218
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i128]* %encrypted_header_new_V), !map !222
  call void (...)* @_ssdm_op_SpecBitsMap(i128 %tag_header_new_V), !map !226
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %user_key_V), !map !230
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %user_key_valid), !map !234
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %writing_done_in), !map !238
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %derived_key_out_V), !map !242
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %derived_key_valid), !map !246
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %master_key_out_V), !map !250
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %master_key_out_valid), !map !254
  call void (...)* @_ssdm_op_SpecBitsMap(i128 %iv_out_V), !map !258
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %iv_out_valid), !map !262
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %decrypted_new_header_out), !map !266
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %decrypted_new_header_out_valid), !map !270
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_key_out), !map !274
  call void (...)* @_ssdm_op_SpecTopModule([25 x i8]* @secure_enclave_key_store_str) nounwind
  %tag_header_new_V_read = call i128 @_ssdm_op_Read.ap_vld.i128(i128 %tag_header_new_V)
  %tag_header_old_V_read = call i128 @_ssdm_op_Read.ap_vld.i128(i128 %tag_header_old_V)
  %iv_V_read = call i128 @_ssdm_op_Read.ap_vld.i128(i128 %iv_V)
  %device_key_ocm_addr_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %device_key_ocm_addr)
  %encrypted_header_old_storage_V = alloca [256 x i128], align 8
  %encrypted_header_new_storage_V = alloca [256 x i128], align 8
  %decrypted_header_storage_V = alloca [256 x i128], align 8
  %ct_V_assign = alloca [256 x i128], align 8
  call void (...)* @_ssdm_op_SpecInterface(i1* %reset_key_out, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %decrypted_new_header_out_valid, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %decrypted_new_header_out, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %iv_out_valid, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %iv_out_V, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %master_key_out_valid, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %master_key_out_V, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %derived_key_valid, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %derived_key_out_V, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %writing_done_in, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %user_key_valid, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %user_key_V, [8 x i8]* @p_str28, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %tag_header_new_V, [7 x i8]* @p_str410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i128]* %encrypted_header_new_V, [7 x i8]* @p_str410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %tag_header_old_V, [7 x i8]* @p_str410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i128]* %encrypted_header_old_V, [7 x i8]* @p_str410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128 %iv_V, [7 x i8]* @p_str410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %ocm_V, [7 x i8]* @p_str511, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39)
  call void (...)* @_ssdm_op_SpecInterface(i32 %device_key_ocm_addr, [7 x i8]* @p_str410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str39, [1 x i8]* @p_str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39) nounwind
  %tmp_1 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %device_key_ocm_addr_read, i32 4, i32 31)
  %tmp_2 = zext i28 %tmp_1 to i64
  %ocm_V_addr = getelementptr i128* %ocm_V, i64 %tmp_2
  %master_key_old_storage_V_req = call i1 @_ssdm_op_ReadReq.ap_bus.i128P(i128* %ocm_V_addr, i32 1)
  %master_key_old_storage_V = call i128 @_ssdm_op_Read.ap_bus.volatile.i128P(i128* %ocm_V_addr)
  br label %0

; <label>:0                                       ; preds = %1, %arrayctor.loop1.preheader
  %i = phi i9 [ 0, %arrayctor.loop1.preheader ], [ %i_2, %1 ]
  %exitcond1 = icmp eq i9 %i, -256
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_2 = add i9 %i, 1
  br i1 %exitcond1, label %.preheader, label %1

; <label>:1                                       ; preds = %0
  %tmp_3 = zext i9 %i to i64
  %encrypted_header_old_V_addr = getelementptr [256 x i128]* %encrypted_header_old_V, i64 0, i64 %tmp_3
  %encrypted_header_old_V_load = load i128* %encrypted_header_old_V_addr, align 16
  %encrypted_header_old_storage_V_1 = getelementptr [256 x i128]* %encrypted_header_old_storage_V, i64 0, i64 %tmp_3
  store i128 %encrypted_header_old_V_load, i128* %encrypted_header_old_storage_V_1, align 16
  br label %0

.preheader:                                       ; preds = %0, %2
  %i_1 = phi i9 [ %i_3, %2 ], [ 0, %0 ]
  %exitcond = icmp eq i9 %i_1, -256
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_3 = add i9 %i_1, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_6 = zext i9 %i_1 to i64
  %encrypted_header_new_V_addr = getelementptr [256 x i128]* %encrypted_header_new_V, i64 0, i64 %tmp_6
  %encrypted_header_new_V_load = load i128* %encrypted_header_new_V_addr, align 16
  %encrypted_header_new_storage_V_1 = getelementptr [256 x i128]* %encrypted_header_new_storage_V, i64 0, i64 %tmp_6
  store i128 %encrypted_header_new_V_load, i128* %encrypted_header_new_storage_V_1, align 16
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %tmp = call fastcc i1 @secure_enclave_key_store_aes_gcm_d(i128 %master_key_old_storage_V, i128 %iv_V_read, [256 x i128]* %encrypted_header_old_storage_V, [256 x i128]* %decrypted_header_storage_V, i128 %tag_header_old_V_read)
  br i1 %tmp, label %4, label %._crit_edge

; <label>:4                                       ; preds = %3
  %empty_8 = call fastcc i1 @secure_enclave_key_store_aes_gcm_d(i128 %master_key_old_storage_V, i128 %iv_V_read, [256 x i128]* %encrypted_header_new_storage_V, [256 x i128]* %decrypted_header_storage_V, i128 %tag_header_new_V_read)
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  %decrypted_new_header = phi i1 [ true, %4 ], [ false, %3 ]
  %key_attempts = alloca i32
  %hash_key_V = call fastcc i128 @secure_enclave_key_store_aes(i128 0, i128 %master_key_old_storage_V)
  %ghash_2_V = call fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %hash_key_V, i128 0, i128 0)
  %ghash_3_V = call fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %hash_key_V, i128 undef, i128 %ghash_2_V)
  %ghash_out_V = call fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %hash_key_V, i128 2361183241434822606976, i128 %ghash_3_V)
  %encrypted_counter_zero_V_i = call fastcc i128 @secure_enclave_key_store_aes(i128 %ghash_out_V, i128 %master_key_old_storage_V)
  %ghash_prev_V_i = call fastcc i128 @secure_enclave_key_store_aes_gcm_cipher(i128 %master_key_old_storage_V, [256 x i128]* %decrypted_header_storage_V, [256 x i128]* %ct_V_assign, i128 %ghash_out_V, i128 %hash_key_V, i1 true)
  call void @_ssdm_op_Write.ap_none.i128P(i128* %master_key_out_V, i128 %master_key_old_storage_V)
  call void @_ssdm_op_Write.ap_none.i1P(i1* %master_key_out_valid, i1 true)
  call void @_ssdm_op_Write.ap_none.i1P(i1* %iv_out_valid, i1 true)
  call void @_ssdm_op_Write.ap_none.i1P(i1* %decrypted_new_header_out, i1 %decrypted_new_header)
  call void @_ssdm_op_Write.ap_none.i1P(i1* %decrypted_new_header_out_valid, i1 true)
  %decrypted_header_storage_V_add = getelementptr [256 x i128]* %decrypted_header_storage_V, i64 0, i64 0
  %decrypted_header_storage_V_add_1 = getelementptr [256 x i128]* %decrypted_header_storage_V, i64 0, i64 1
  %p_Val2_s = load i128* %decrypted_header_storage_V_add, align 16
  %lhs_V = load i128* %decrypted_header_storage_V_add_1, align 16
  store i32 0, i32* %key_attempts
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %._crit_edge
  %user_key_valid_read = call i1 @_ssdm_op_Read.ap_none.i1P(i1* %user_key_valid)
  br i1 %user_key_valid_read, label %5, label %.backedge.backedge

; <label>:5                                       ; preds = %.backedge
  %key_attempts_load_1 = load i32* %key_attempts
  %tmp_8 = icmp sgt i32 %key_attempts_load_1, 2
  br i1 %tmp_8, label %6, label %7

; <label>:6                                       ; preds = %5
  call void @_ssdm_op_Write.ap_none.i1P(i1* %reset_key_out, i1 true)
  ret void

; <label>:7                                       ; preds = %5
  call void @_ssdm_op_Write.ap_none.i1P(i1* %user_key_valid, i1 false)
  call void @_ssdm_op_Write.ap_none.i1P(i1* %derived_key_valid, i1 false)
  %user_key_storage_V = call i128 @_ssdm_op_Read.ap_none.i128P(i128* %user_key_V)
  %tmp_4 = trunc i128 %p_Val2_s to i24
  %out_V = call i128 @_ssdm_op_BitConcatenate.i128.i104.i24(i104 0, i24 %tmp_4)
  %tmp_9 = icmp eq i128 %out_V, %user_key_storage_V
  br i1 %tmp_9, label %9, label %8

; <label>:8                                       ; preds = %7
  %key_attempts_load = load i32* %key_attempts
  %key_attempts_1 = add nsw i32 %key_attempts_load, 1
  store i32 %key_attempts_1, i32* %key_attempts
  br label %.backedge.backedge

; <label>:9                                       ; preds = %7
  %r_V = xor i128 %lhs_V, %user_key_storage_V
  call void @_ssdm_op_Write.ap_none.i128P(i128* %derived_key_out_V, i128 %r_V)
  call void @_ssdm_op_Write.ap_none.i1P(i1* %derived_key_valid, i1 true)
  store i32 0, i32* %key_attempts
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %9, %8, %.backedge
  br label %.backedge
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %h_V, i128 %d_V, i128 %x_prev_V) readnone {
  %x_prev_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %x_prev_V)
  %d_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %d_V)
  %h_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %h_V)
  %r_V_3 = xor i128 %d_V_read, %x_prev_V_read
  br label %1

; <label>:1                                       ; preds = %._crit_edge.i, %0
  %agg_result_V_i = phi i128 [ 0, %0 ], [ %agg_result_V_0_r_V_i, %._crit_edge.i ]
  %lhs_V = phi i128 [ 0, %0 ], [ %lhs_V_r_V_i, %._crit_edge.i ]
  %rhs_V = phi i128 [ %r_V_3, %0 ], [ %r_V_2, %._crit_edge.i ]
  %i_assign = phi i8 [ 0, %0 ], [ %i, %._crit_edge.i ]
  %i_assign_cast1 = zext i8 %i_assign to i32
  %exitcond_i = icmp eq i8 %i_assign, -128
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i = add i8 %i_assign, 1
  br i1 %exitcond_i, label %gf_mult.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %1
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %h_V_read, i32 %i_assign_cast1)
  %z_V = xor i128 %lhs_V, %rhs_V
  %agg_result_V_0_r_V_i = select i1 %tmp, i128 %z_V, i128 %agg_result_V_i
  %lhs_V_r_V_i = select i1 %tmp, i128 %z_V, i128 %lhs_V
  %r_V_1 = call i127 @_ssdm_op_PartSelect.i127.i128.i32.i32(i128 %rhs_V, i32 1, i32 127)
  %r_V_2 = zext i127 %r_V_1 to i128
  br label %1

gf_mult.exit:                                     ; preds = %1
  ret i128 %agg_result_V_i
}

define internal fastcc i1 @secure_enclave_key_store_aes_gcm_d(i128 %key_V, i128 %iv_V, [256 x i128]* nocapture %ct_V, [256 x i128]* nocapture %pt_V, i128 %tag_in_V) {
  %tag_in_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %tag_in_V)
  %iv_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %iv_V)
  %key_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %key_V)
  %hash_key_V = call fastcc i128 @secure_enclave_key_store_aes(i128 0, i128 %key_V_read)
  %ghash_2_V = call fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %hash_key_V, i128 0, i128 0)
  %ghash_3_V = call fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %hash_key_V, i128 %iv_V_read, i128 %ghash_2_V)
  %ghash_out_V = call fastcc i128 @secure_enclave_key_store_ghash_iteration(i128 %hash_key_V, i128 2361183241434822606976, i128 %ghash_3_V)
  %encrypted_counter_zero_V = call fastcc i128 @secure_enclave_key_store_aes(i128 %ghash_out_V, i128 %key_V_read)
  %ghash_prev_V = call fastcc i128 @secure_enclave_key_store_aes_gcm_cipher(i128 %key_V_read, [256 x i128]* %ct_V, [256 x i128]* %pt_V, i128 %ghash_out_V, i128 %hash_key_V, i1 false)
  %r_V_6 = xor i128 %ghash_prev_V, 524288
  br label %1

; <label>:1                                       ; preds = %._crit_edge.i.i.i, %0
  %ghash_final_out_V = phi i128 [ 0, %0 ], [ %agg_result_V_0_r_V_i_i_i, %._crit_edge.i.i.i ]
  %lhs_V_1 = phi i128 [ 0, %0 ], [ %lhs_V_r_V_i_i_i, %._crit_edge.i.i.i ]
  %rhs_V = phi i128 [ %r_V_6, %0 ], [ %r_V_5, %._crit_edge.i.i.i ]
  %i_assign = phi i8 [ 0, %0 ], [ %i, %._crit_edge.i.i.i ]
  %i_assign_cast1 = zext i8 %i_assign to i32
  %exitcond_i_i_i = icmp eq i8 %i_assign, -128
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i = add i8 %i_assign, 1
  br i1 %exitcond_i_i_i, label %finalize_ghash.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %1
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %hash_key_V, i32 %i_assign_cast1)
  %z_V = xor i128 %lhs_V_1, %rhs_V
  %agg_result_V_0_r_V_i_i_i = select i1 %tmp_5, i128 %z_V, i128 %ghash_final_out_V
  %lhs_V_r_V_i_i_i = select i1 %tmp_5, i128 %z_V, i128 %lhs_V_1
  %r_V_3 = call i127 @_ssdm_op_PartSelect.i127.i128.i32.i32(i128 %rhs_V, i32 1, i32 127)
  %r_V_5 = zext i127 %r_V_3 to i128
  br label %1

finalize_ghash.exit:                              ; preds = %1
  %r_V = xor i128 %ghash_final_out_V, %encrypted_counter_zero_V
  %tmp = icmp eq i128 %r_V, %tag_in_V_read
  ret i1 %tmp
}

define internal fastcc i128 @secure_enclave_key_store_aes_gcm_cipher(i128 %key_V, [256 x i128]* nocapture %data_in_V, [256 x i128]* nocapture %data_out_V, i128 %counter_V, i128 %hash_key_V, i1 zeroext %encrypt) {
  %encrypt_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %encrypt)
  %hash_key_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %hash_key_V)
  %counter_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %counter_V)
  %key_V_read = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %key_V)
  br label %ghash_iteration.exit

ghash_iteration.exit:                             ; preds = %3, %5, %0
  %p_Val2_s = phi i128 [ %counter_V_read, %0 ], [ %agg_result_V_i, %5 ], [ %agg_result_V_i, %3 ]
  %lhs_V_3 = phi i128 [ 0, %0 ], [ %agg_result_V_i_i3, %5 ], [ %agg_result_V_i_i, %3 ]
  %encrypt_iterations = phi i13 [ 0, %0 ], [ %encrypt_iterations_1, %5 ], [ %encrypt_iterations_1, %3 ]
  %exitcond = icmp eq i13 %encrypt_iterations, -4096
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %encrypt_iterations_1 = add i13 %encrypt_iterations, 1
  br i1 %exitcond, label %6, label %1

; <label>:1                                       ; preds = %ghash_iteration.exit
  %tmp_6 = trunc i128 %p_Val2_s to i1
  %tmp_i_cast = zext i1 %tmp_6 to i6
  %r_V_14 = xor i6 %tmp_i_cast, -31
  %agg_result_V_i = zext i6 %r_V_14 to i128
  %encrypted_counter_out_V = call fastcc i128 @secure_enclave_key_store_aes(i128 %agg_result_V_i, i128 %key_V_read)
  %tmp = zext i13 %encrypt_iterations to i64
  %data_in_V_addr = getelementptr [256 x i128]* %data_in_V, i64 0, i64 %tmp
  %rhs_V = load i128* %data_in_V_addr, align 8
  %r_V_15 = xor i128 %rhs_V, %encrypted_counter_out_V
  %data_out_V_addr = getelementptr [256 x i128]* %data_out_V, i64 0, i64 %tmp
  store i128 %r_V_15, i128* %data_out_V_addr, align 16
  br i1 %encrypt_read, label %2, label %4

; <label>:2                                       ; preds = %1
  %r_V_16 = xor i128 %r_V_15, %lhs_V_3
  br label %3

; <label>:3                                       ; preds = %._crit_edge.i.i, %2
  %agg_result_V_i_i = phi i128 [ 0, %2 ], [ %agg_result_V_0_r_V_i_i, %._crit_edge.i.i ]
  %lhs_V_4 = phi i128 [ 0, %2 ], [ %lhs_V_r_V_i_i, %._crit_edge.i.i ]
  %rhs_V_3 = phi i128 [ %r_V_16, %2 ], [ %r_V_11, %._crit_edge.i.i ]
  %i_assign = phi i8 [ 0, %2 ], [ %i, %._crit_edge.i.i ]
  %i_assign_cast2 = zext i8 %i_assign to i32
  %exitcond_i_i = icmp eq i8 %i_assign, -128
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i = add i8 %i_assign, 1
  br i1 %exitcond_i_i, label %ghash_iteration.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %3
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %hash_key_V_read, i32 %i_assign_cast2)
  %z_V = xor i128 %lhs_V_4, %rhs_V_3
  %agg_result_V_0_r_V_i_i = select i1 %tmp_7, i128 %z_V, i128 %agg_result_V_i_i
  %lhs_V_r_V_i_i = select i1 %tmp_7, i128 %z_V, i128 %lhs_V_4
  %r_V_6 = call i127 @_ssdm_op_PartSelect.i127.i128.i32.i32(i128 %rhs_V_3, i32 1, i32 127)
  %r_V_11 = zext i127 %r_V_6 to i128
  br label %3

; <label>:4                                       ; preds = %1
  %r_V = xor i128 %rhs_V, %lhs_V_3
  br label %5

; <label>:5                                       ; preds = %._crit_edge.i.i16, %4
  %agg_result_V_i_i3 = phi i128 [ 0, %4 ], [ %agg_result_V_0_r_V_i_i1, %._crit_edge.i.i16 ]
  %lhs_V_5 = phi i128 [ 0, %4 ], [ %lhs_V_r_V_i_i1, %._crit_edge.i.i16 ]
  %rhs_V_4 = phi i128 [ %r_V, %4 ], [ %r_V_13, %._crit_edge.i.i16 ]
  %i_assign_1 = phi i8 [ 0, %4 ], [ %i_4, %._crit_edge.i.i16 ]
  %i_assign_1_cast1 = zext i8 %i_assign_1 to i32
  %exitcond_i_i7 = icmp eq i8 %i_assign_1, -128
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i_4 = add i8 %i_assign_1, 1
  br i1 %exitcond_i_i7, label %ghash_iteration.exit, label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %5
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %hash_key_V_read, i32 %i_assign_1_cast1)
  %z_V_1 = xor i128 %lhs_V_5, %rhs_V_4
  %agg_result_V_0_r_V_i_i1 = select i1 %tmp_8, i128 %z_V_1, i128 %agg_result_V_i_i3
  %lhs_V_r_V_i_i1 = select i1 %tmp_8, i128 %z_V_1, i128 %lhs_V_5
  %r_V_8 = call i127 @_ssdm_op_PartSelect.i127.i128.i32.i32(i128 %rhs_V_4, i32 1, i32 127)
  %r_V_13 = zext i127 %r_V_8 to i128
  br label %5

; <label>:6                                       ; preds = %ghash_iteration.exit
  ret i128 %lhs_V_3
}

define internal fastcc i128 @secure_enclave_key_store_aes(i128 %inptext_V_read, i128 %key_V_read) readnone {
.preheader86.preheader:
  %key_V_read_1 = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %key_V_read)
  %inptext_V_read_1 = call i128 @_ssdm_op_Read.ap_auto.i128(i128 %inptext_V_read)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 120, i32 127)
  %p_Result_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 120, i32 127)
  %p_Result_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 112, i32 119)
  %p_Result_6_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 112, i32 119)
  %p_Result_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 104, i32 111)
  %p_Result_6_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 104, i32 111)
  %p_Result_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 96, i32 103)
  %p_Result_6_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 96, i32 103)
  %p_Result_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 88, i32 95)
  %p_Result_6_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 88, i32 95)
  %p_Result_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 80, i32 87)
  %p_Result_6_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 80, i32 87)
  %p_Result_s_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 72, i32 79)
  %p_Result_6_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 72, i32 79)
  %p_Result_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 64, i32 71)
  %p_Result_6_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 64, i32 71)
  %p_Result_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 56, i32 63)
  %p_Result_6_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 56, i32 63)
  %p_Result_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 48, i32 55)
  %p_Result_6_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 48, i32 55)
  %p_Result_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 40, i32 47)
  %p_Result_6_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 40, i32 47)
  %p_Result_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 32, i32 39)
  %p_Result_6_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 32, i32 39)
  %p_Result_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 24, i32 31)
  %p_Result_6_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 24, i32 31)
  %p_Result_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 16, i32 23)
  %p_Result_6_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 16, i32 23)
  %p_Result_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inptext_V_read_1, i32 8, i32 15)
  %p_Result_6_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %key_V_read_1, i32 8, i32 15)
  %tmp_12 = trunc i128 %inptext_V_read_1 to i8
  %tmp_13 = trunc i128 %key_V_read_1 to i8
  %tmp_1 = xor i8 %p_Result_s, %p_Result_6
  %tmp_6_1 = xor i8 %p_Result_1, %p_Result_6_1
  %tmp_6_2 = xor i8 %p_Result_2, %p_Result_6_2
  %tmp_6_3 = xor i8 %p_Result_3, %p_Result_6_3
  %tmp_6_4 = xor i8 %p_Result_4, %p_Result_6_4
  %tmp_6_5 = xor i8 %p_Result_5, %p_Result_6_5
  %tmp_6_6 = xor i8 %p_Result_s_11, %p_Result_6_6
  %tmp_6_7 = xor i8 %p_Result_7, %p_Result_6_7
  %tmp_6_8 = xor i8 %p_Result_8, %p_Result_6_8
  %tmp_6_9 = xor i8 %p_Result_9, %p_Result_6_9
  %tmp_6_s = xor i8 %p_Result_10, %p_Result_6_s
  %tmp_6_10 = xor i8 %p_Result_11, %p_Result_6_10
  %tmp_6_11 = xor i8 %p_Result_12, %p_Result_6_11
  %tmp_6_12 = xor i8 %p_Result_13, %p_Result_6_12
  %tmp_6_13 = xor i8 %p_Result_14, %p_Result_6_13
  %tmp_6_14 = xor i8 %tmp_12, %tmp_13
  %tmp_6 = zext i8 %tmp_1 to i64
  %sboxes_0_addr = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_6
  %sboxes_0_load = load i8* %sboxes_0_addr, align 1
  %tmp_31_0_1 = zext i8 %tmp_6_1 to i64
  %sboxes_1_addr = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_0_1
  %sboxes_1_load = load i8* %sboxes_1_addr, align 1
  %tmp_31_0_2 = zext i8 %tmp_6_2 to i64
  %sboxes_2_addr = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_0_2
  %sboxes_2_load = load i8* %sboxes_2_addr, align 1
  %tmp_31_0_3 = zext i8 %tmp_6_3 to i64
  %sboxes_3_addr = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_0_3
  %sboxes_3_load = load i8* %sboxes_3_addr, align 1
  %tmp_31_0_4 = zext i8 %tmp_6_4 to i64
  %sboxes_4_addr = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_0_4
  %sboxes_4_load = load i8* %sboxes_4_addr, align 1
  %tmp_31_0_5 = zext i8 %tmp_6_5 to i64
  %sboxes_5_addr = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_0_5
  %sboxes_5_load = load i8* %sboxes_5_addr, align 1
  %tmp_31_0_6 = zext i8 %tmp_6_6 to i64
  %sboxes_6_addr = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_0_6
  %sboxes_6_load = load i8* %sboxes_6_addr, align 1
  %tmp_31_0_7 = zext i8 %tmp_6_7 to i64
  %sboxes_7_addr = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_0_7
  %sboxes_7_load = load i8* %sboxes_7_addr, align 1
  %tmp_31_0_8 = zext i8 %tmp_6_8 to i64
  %sboxes_8_addr = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_0_8
  %sboxes_8_load = load i8* %sboxes_8_addr, align 1
  %tmp_31_0_9 = zext i8 %tmp_6_9 to i64
  %sboxes_9_addr = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_0_9
  %sboxes_9_load = load i8* %sboxes_9_addr, align 1
  %tmp_31_0_s = zext i8 %tmp_6_s to i64
  %sboxes_10_addr = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_0_s
  %sboxes_10_load = load i8* %sboxes_10_addr, align 1
  %tmp_31_0_10 = zext i8 %tmp_6_10 to i64
  %sboxes_11_addr = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_0_10
  %sboxes_11_load = load i8* %sboxes_11_addr, align 1
  %tmp_31_0_11 = zext i8 %tmp_6_11 to i64
  %sboxes_12_addr = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_0_11
  %sboxes_12_load = load i8* %sboxes_12_addr, align 1
  %tmp_31_0_12 = zext i8 %tmp_6_12 to i64
  %sboxes_13_addr = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_0_12
  %sboxes_13_load = load i8* %sboxes_13_addr, align 1
  %tmp_31_0_13 = zext i8 %tmp_6_13 to i64
  %sboxes_14_addr = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_0_13
  %sboxes_14_load = load i8* %sboxes_14_addr, align 1
  %tmp_31_0_14 = zext i8 %tmp_6_14 to i64
  %sboxes_15_addr = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_0_14
  %sboxes_15_load = load i8* %sboxes_15_addr, align 1
  %x_assign = xor i8 %sboxes_5_load, %sboxes_0_load
  %tmp_11 = xor i8 %sboxes_10_load, %x_assign
  %e = xor i8 %sboxes_15_load, %tmp_11
  %tmp_14 = shl i8 %x_assign, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7)
  %rv_1 = xor i8 %tmp_14, 27
  %rv_2 = select i1 %tmp_19, i8 %rv_1, i8 %tmp_14
  %x_assign_1 = xor i8 %sboxes_10_load, %sboxes_5_load
  %tmp_39 = shl i8 %x_assign_1, 1
  %tmp_40 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %rv_4 = xor i8 %tmp_39, 27
  %rv_5 = select i1 %tmp_40, i8 %rv_4, i8 %tmp_39
  %x_assign_2 = xor i8 %sboxes_15_load, %sboxes_10_load
  %tmp_41 = shl i8 %x_assign_2, 1
  %tmp_42 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2, i32 7)
  %rv_7 = xor i8 %tmp_41, 27
  %rv_8 = select i1 %tmp_42, i8 %rv_7, i8 %tmp_41
  %x_assign_3 = xor i8 %sboxes_15_load, %sboxes_0_load
  %tmp_43 = shl i8 %x_assign_3, 1
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7)
  %rv_s = xor i8 %tmp_43, 27
  %rv_3 = select i1 %tmp_44, i8 %rv_s, i8 %tmp_43
  %x_assign_0_1 = xor i8 %sboxes_9_load, %sboxes_4_load
  %tmp_43_0_1 = xor i8 %sboxes_14_load, %x_assign_0_1
  %e_0_1 = xor i8 %sboxes_3_load, %tmp_43_0_1
  %tmp_45 = shl i8 %x_assign_0_1, 1
  %tmp_46 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_0_1, i32 7)
  %rv_1_0_1 = xor i8 %tmp_45, 27
  %rv_2_0_1 = select i1 %tmp_46, i8 %rv_1_0_1, i8 %tmp_45
  %x_assign_1_0_1 = xor i8 %sboxes_14_load, %sboxes_9_load
  %tmp_47 = shl i8 %x_assign_1_0_1, 1
  %tmp_48 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_0_1, i32 7)
  %rv_4_0_1 = xor i8 %tmp_47, 27
  %rv_5_0_1 = select i1 %tmp_48, i8 %rv_4_0_1, i8 %tmp_47
  %x_assign_2_0_1 = xor i8 %sboxes_3_load, %sboxes_14_load
  %tmp_49 = shl i8 %x_assign_2_0_1, 1
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_0_1, i32 7)
  %rv_7_0_1 = xor i8 %tmp_49, 27
  %rv_8_0_1 = select i1 %tmp_50, i8 %rv_7_0_1, i8 %tmp_49
  %x_assign_3_0_1 = xor i8 %sboxes_3_load, %sboxes_4_load
  %tmp_51 = shl i8 %x_assign_3_0_1, 1
  %tmp_52 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_0_1, i32 7)
  %rv_10_0_1 = xor i8 %tmp_51, 27
  %rv_11_0_1 = select i1 %tmp_52, i8 %rv_10_0_1, i8 %tmp_51
  %x_assign_0_2 = xor i8 %sboxes_13_load, %sboxes_8_load
  %tmp_43_0_2 = xor i8 %sboxes_2_load, %x_assign_0_2
  %e_0_2 = xor i8 %sboxes_7_load, %tmp_43_0_2
  %tmp_53 = shl i8 %x_assign_0_2, 1
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_0_2, i32 7)
  %rv_1_0_2 = xor i8 %tmp_53, 27
  %rv_2_0_2 = select i1 %tmp_54, i8 %rv_1_0_2, i8 %tmp_53
  %x_assign_1_0_2 = xor i8 %sboxes_2_load, %sboxes_13_load
  %tmp_55 = shl i8 %x_assign_1_0_2, 1
  %tmp_56 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_0_2, i32 7)
  %rv_4_0_2 = xor i8 %tmp_55, 27
  %rv_5_0_2 = select i1 %tmp_56, i8 %rv_4_0_2, i8 %tmp_55
  %x_assign_2_0_2 = xor i8 %sboxes_7_load, %sboxes_2_load
  %tmp_57 = shl i8 %x_assign_2_0_2, 1
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_0_2, i32 7)
  %rv_7_0_2 = xor i8 %tmp_57, 27
  %rv_8_0_2 = select i1 %tmp_58, i8 %rv_7_0_2, i8 %tmp_57
  %x_assign_3_0_2 = xor i8 %sboxes_7_load, %sboxes_8_load
  %tmp_59 = shl i8 %x_assign_3_0_2, 1
  %tmp_60 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_0_2, i32 7)
  %rv_10_0_2 = xor i8 %tmp_59, 27
  %rv_11_0_2 = select i1 %tmp_60, i8 %rv_10_0_2, i8 %tmp_59
  %x_assign_0_3 = xor i8 %sboxes_1_load, %sboxes_12_load
  %tmp_43_0_3 = xor i8 %sboxes_6_load, %x_assign_0_3
  %e_0_3 = xor i8 %sboxes_11_load, %tmp_43_0_3
  %tmp_61 = shl i8 %x_assign_0_3, 1
  %tmp_62 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_0_3, i32 7)
  %rv_1_0_3 = xor i8 %tmp_61, 27
  %rv_2_0_3 = select i1 %tmp_62, i8 %rv_1_0_3, i8 %tmp_61
  %x_assign_1_0_3 = xor i8 %sboxes_6_load, %sboxes_1_load
  %tmp_63 = shl i8 %x_assign_1_0_3, 1
  %tmp_64 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_0_3, i32 7)
  %rv_4_0_3 = xor i8 %tmp_63, 27
  %rv_5_0_3 = select i1 %tmp_64, i8 %rv_4_0_3, i8 %tmp_63
  %x_assign_2_0_3 = xor i8 %sboxes_11_load, %sboxes_6_load
  %tmp_65 = shl i8 %x_assign_2_0_3, 1
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_0_3, i32 7)
  %rv_7_0_3 = xor i8 %tmp_65, 27
  %rv_8_0_3 = select i1 %tmp_66, i8 %rv_7_0_3, i8 %tmp_65
  %x_assign_3_0_3 = xor i8 %sboxes_11_load, %sboxes_12_load
  %tmp_67 = shl i8 %x_assign_3_0_3, 1
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_0_3, i32 7)
  %rv_10_0_3 = xor i8 %tmp_67, 27
  %rv_11_0_3 = select i1 %tmp_68, i8 %rv_10_0_3, i8 %tmp_67
  %tmp_2 = zext i8 %p_Result_6_12 to i64
  %sboxes_16_addr = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_2
  %sboxes_16_load = load i8* %sboxes_16_addr, align 1
  %tmp_3 = zext i8 %p_Result_6_13 to i64
  %sboxes_17_addr = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_3
  %sboxes_17_load = load i8* %sboxes_17_addr, align 1
  %tmp_4 = zext i8 %tmp_13 to i64
  %sboxes_18_addr = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_4
  %sboxes_18_load = load i8* %sboxes_18_addr, align 1
  %tmp_5 = zext i8 %p_Result_6_11 to i64
  %sboxes_19_addr = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_5
  %sboxes_19_load = load i8* %sboxes_19_addr, align 1
  %tmp = xor i8 %p_Result_6, 1
  %tmp_20 = xor i8 %tmp, %sboxes_16_load
  %tmp_21 = xor i8 %sboxes_17_load, %p_Result_6_1
  %tmp_22 = xor i8 %sboxes_18_load, %p_Result_6_2
  %tmp_23 = xor i8 %sboxes_19_load, %p_Result_6_3
  %tmp_24 = xor i8 %p_Result_6_4, %tmp_20
  %tmp_25 = xor i8 %p_Result_6_5, %tmp_21
  %tmp_26 = xor i8 %p_Result_6_6, %tmp_22
  %tmp_27 = xor i8 %p_Result_6_7, %tmp_23
  %tmp_28 = xor i8 %p_Result_6_8, %tmp_24
  %tmp_29 = xor i8 %p_Result_6_9, %tmp_25
  %tmp_30 = xor i8 %p_Result_6_s, %tmp_26
  %tmp_31 = xor i8 %p_Result_6_10, %tmp_27
  %tmp_32 = xor i8 %tmp_28, %p_Result_6_11
  %tmp_33 = xor i8 %tmp_29, %p_Result_6_12
  %tmp_34 = xor i8 %tmp_30, %p_Result_6_13
  %tmp_35 = xor i8 %tmp_31, %tmp_13
  %tmp1 = xor i8 %sboxes_0_load, %rv_2
  %tmp2 = xor i8 %e, %tmp_20
  %tmp_36 = xor i8 %tmp2, %tmp1
  %tmp3 = xor i8 %sboxes_5_load, %e
  %tmp4 = xor i8 %rv_5, %tmp_21
  %tmp_81_0_1 = xor i8 %tmp4, %tmp3
  %tmp5 = xor i8 %sboxes_15_load, %x_assign
  %tmp6 = xor i8 %rv_8, %tmp_22
  %tmp_81_0_2 = xor i8 %tmp6, %tmp5
  %tmp7 = xor i8 %tmp_11, %tmp_23
  %tmp_81_0_3 = xor i8 %tmp7, %rv_3
  %tmp8 = xor i8 %sboxes_4_load, %rv_2_0_1
  %tmp9 = xor i8 %e_0_1, %tmp_24
  %tmp_81_0_4 = xor i8 %tmp9, %tmp8
  %tmp10 = xor i8 %sboxes_9_load, %e_0_1
  %tmp11 = xor i8 %rv_5_0_1, %tmp_25
  %tmp_81_0_5 = xor i8 %tmp11, %tmp10
  %tmp12 = xor i8 %sboxes_3_load, %x_assign_0_1
  %tmp13 = xor i8 %rv_8_0_1, %tmp_26
  %tmp_81_0_6 = xor i8 %tmp13, %tmp12
  %tmp14 = xor i8 %tmp_43_0_1, %tmp_27
  %tmp_81_0_7 = xor i8 %tmp14, %rv_11_0_1
  %tmp15 = xor i8 %sboxes_8_load, %rv_2_0_2
  %tmp16 = xor i8 %e_0_2, %tmp_28
  %tmp_81_0_8 = xor i8 %tmp16, %tmp15
  %tmp17 = xor i8 %sboxes_13_load, %e_0_2
  %tmp18 = xor i8 %rv_5_0_2, %tmp_29
  %tmp_81_0_9 = xor i8 %tmp18, %tmp17
  %tmp19 = xor i8 %sboxes_7_load, %x_assign_0_2
  %tmp20 = xor i8 %rv_8_0_2, %tmp_30
  %tmp_81_0_s = xor i8 %tmp20, %tmp19
  %tmp21 = xor i8 %tmp_43_0_2, %tmp_31
  %tmp_81_0_10 = xor i8 %tmp21, %rv_11_0_2
  %tmp22 = xor i8 %sboxes_12_load, %rv_2_0_3
  %tmp23 = xor i8 %e_0_3, %tmp_32
  %tmp_81_0_11 = xor i8 %tmp23, %tmp22
  %tmp24 = xor i8 %sboxes_1_load, %e_0_3
  %tmp25 = xor i8 %rv_5_0_3, %tmp_33
  %tmp_81_0_12 = xor i8 %tmp25, %tmp24
  %tmp26 = xor i8 %sboxes_11_load, %x_assign_0_3
  %tmp27 = xor i8 %rv_8_0_3, %tmp_34
  %tmp_81_0_13 = xor i8 %tmp27, %tmp26
  %tmp28 = xor i8 %tmp_43_0_3, %tmp_35
  %tmp_81_0_14 = xor i8 %tmp28, %rv_11_0_3
  %tmp_31_1 = zext i8 %tmp_36 to i64
  %sboxes_0_addr_1 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_1
  %sboxes_0_load_1 = load i8* %sboxes_0_addr_1, align 1
  %tmp_31_1_1 = zext i8 %tmp_81_0_1 to i64
  %sboxes_1_addr_1 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_1_1
  %sboxes_1_load_1 = load i8* %sboxes_1_addr_1, align 1
  %tmp_31_1_2 = zext i8 %tmp_81_0_2 to i64
  %sboxes_2_addr_1 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_1_2
  %sboxes_2_load_1 = load i8* %sboxes_2_addr_1, align 1
  %tmp_31_1_3 = zext i8 %tmp_81_0_3 to i64
  %sboxes_3_addr_1 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_1_3
  %sboxes_3_load_1 = load i8* %sboxes_3_addr_1, align 1
  %tmp_31_1_4 = zext i8 %tmp_81_0_4 to i64
  %sboxes_4_addr_1 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_1_4
  %sboxes_4_load_1 = load i8* %sboxes_4_addr_1, align 1
  %tmp_31_1_5 = zext i8 %tmp_81_0_5 to i64
  %sboxes_5_addr_1 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_1_5
  %sboxes_5_load_1 = load i8* %sboxes_5_addr_1, align 1
  %tmp_31_1_6 = zext i8 %tmp_81_0_6 to i64
  %sboxes_6_addr_1 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_1_6
  %sboxes_6_load_1 = load i8* %sboxes_6_addr_1, align 1
  %tmp_31_1_7 = zext i8 %tmp_81_0_7 to i64
  %sboxes_7_addr_1 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_1_7
  %sboxes_7_load_1 = load i8* %sboxes_7_addr_1, align 1
  %tmp_31_1_8 = zext i8 %tmp_81_0_8 to i64
  %sboxes_8_addr_1 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_1_8
  %sboxes_8_load_1 = load i8* %sboxes_8_addr_1, align 1
  %tmp_31_1_9 = zext i8 %tmp_81_0_9 to i64
  %sboxes_9_addr_1 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_1_9
  %sboxes_9_load_1 = load i8* %sboxes_9_addr_1, align 1
  %tmp_31_1_s = zext i8 %tmp_81_0_s to i64
  %sboxes_10_addr_1 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_1_s
  %sboxes_10_load_1 = load i8* %sboxes_10_addr_1, align 1
  %tmp_31_1_10 = zext i8 %tmp_81_0_10 to i64
  %sboxes_11_addr_1 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_1_10
  %sboxes_11_load_1 = load i8* %sboxes_11_addr_1, align 1
  %tmp_31_1_11 = zext i8 %tmp_81_0_11 to i64
  %sboxes_12_addr_1 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_1_11
  %sboxes_12_load_1 = load i8* %sboxes_12_addr_1, align 1
  %tmp_31_1_12 = zext i8 %tmp_81_0_12 to i64
  %sboxes_13_addr_1 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_1_12
  %sboxes_13_load_1 = load i8* %sboxes_13_addr_1, align 1
  %tmp_31_1_13 = zext i8 %tmp_81_0_13 to i64
  %sboxes_14_addr_1 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_1_13
  %sboxes_14_load_1 = load i8* %sboxes_14_addr_1, align 1
  %tmp_31_1_14 = zext i8 %tmp_81_0_14 to i64
  %sboxes_15_addr_1 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_1_14
  %sboxes_15_load_1 = load i8* %sboxes_15_addr_1, align 1
  %x_assign_s = xor i8 %sboxes_5_load_1, %sboxes_0_load_1
  %tmp_43_1 = xor i8 %sboxes_10_load_1, %x_assign_s
  %e_1 = xor i8 %sboxes_15_load_1, %tmp_43_1
  %tmp_69 = shl i8 %x_assign_s, 1
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7)
  %rv_1_1 = xor i8 %tmp_69, 27
  %rv_2_1 = select i1 %tmp_70, i8 %rv_1_1, i8 %tmp_69
  %x_assign_1_1 = xor i8 %sboxes_10_load_1, %sboxes_5_load_1
  %tmp_71 = shl i8 %x_assign_1_1, 1
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_1, i32 7)
  %rv_4_1 = xor i8 %tmp_71, 27
  %rv_5_1 = select i1 %tmp_72, i8 %rv_4_1, i8 %tmp_71
  %x_assign_2_1 = xor i8 %sboxes_15_load_1, %sboxes_10_load_1
  %tmp_73 = shl i8 %x_assign_2_1, 1
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_1, i32 7)
  %rv_7_1 = xor i8 %tmp_73, 27
  %rv_8_1 = select i1 %tmp_74, i8 %rv_7_1, i8 %tmp_73
  %x_assign_3_1 = xor i8 %sboxes_15_load_1, %sboxes_0_load_1
  %tmp_75 = shl i8 %x_assign_3_1, 1
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_1, i32 7)
  %rv_10_1 = xor i8 %tmp_75, 27
  %rv_11_1 = select i1 %tmp_76, i8 %rv_10_1, i8 %tmp_75
  %x_assign_175_1 = xor i8 %sboxes_9_load_1, %sboxes_4_load_1
  %tmp_43_1_1 = xor i8 %sboxes_14_load_1, %x_assign_175_1
  %e_1_1 = xor i8 %sboxes_3_load_1, %tmp_43_1_1
  %tmp_77 = shl i8 %x_assign_175_1, 1
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_175_1, i32 7)
  %rv_1_1_1 = xor i8 %tmp_77, 27
  %rv_2_1_1 = select i1 %tmp_78, i8 %rv_1_1_1, i8 %tmp_77
  %x_assign_1_1_1 = xor i8 %sboxes_14_load_1, %sboxes_9_load_1
  %tmp_79 = shl i8 %x_assign_1_1_1, 1
  %tmp_80 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_1_1, i32 7)
  %rv_4_1_1 = xor i8 %tmp_79, 27
  %rv_5_1_1 = select i1 %tmp_80, i8 %rv_4_1_1, i8 %tmp_79
  %x_assign_2_1_1 = xor i8 %sboxes_3_load_1, %sboxes_14_load_1
  %tmp_81 = shl i8 %x_assign_2_1_1, 1
  %tmp_82 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_1_1, i32 7)
  %rv_7_1_1 = xor i8 %tmp_81, 27
  %rv_8_1_1 = select i1 %tmp_82, i8 %rv_7_1_1, i8 %tmp_81
  %x_assign_3_1_1 = xor i8 %sboxes_3_load_1, %sboxes_4_load_1
  %tmp_83 = shl i8 %x_assign_3_1_1, 1
  %tmp_84 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_1_1, i32 7)
  %rv_10_1_1 = xor i8 %tmp_83, 27
  %rv_11_1_1 = select i1 %tmp_84, i8 %rv_10_1_1, i8 %tmp_83
  %x_assign_175_2 = xor i8 %sboxes_13_load_1, %sboxes_8_load_1
  %tmp_43_1_2 = xor i8 %sboxes_2_load_1, %x_assign_175_2
  %e_1_2 = xor i8 %sboxes_7_load_1, %tmp_43_1_2
  %tmp_85 = shl i8 %x_assign_175_2, 1
  %tmp_86 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_175_2, i32 7)
  %rv_1_1_2 = xor i8 %tmp_85, 27
  %rv_2_1_2 = select i1 %tmp_86, i8 %rv_1_1_2, i8 %tmp_85
  %x_assign_1_1_2 = xor i8 %sboxes_2_load_1, %sboxes_13_load_1
  %tmp_87 = shl i8 %x_assign_1_1_2, 1
  %tmp_88 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_1_2, i32 7)
  %rv_4_1_2 = xor i8 %tmp_87, 27
  %rv_5_1_2 = select i1 %tmp_88, i8 %rv_4_1_2, i8 %tmp_87
  %x_assign_2_1_2 = xor i8 %sboxes_7_load_1, %sboxes_2_load_1
  %tmp_89 = shl i8 %x_assign_2_1_2, 1
  %tmp_90 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_1_2, i32 7)
  %rv_7_1_2 = xor i8 %tmp_89, 27
  %rv_8_1_2 = select i1 %tmp_90, i8 %rv_7_1_2, i8 %tmp_89
  %x_assign_3_1_2 = xor i8 %sboxes_7_load_1, %sboxes_8_load_1
  %tmp_91 = shl i8 %x_assign_3_1_2, 1
  %tmp_92 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_1_2, i32 7)
  %rv_10_1_2 = xor i8 %tmp_91, 27
  %rv_11_1_2 = select i1 %tmp_92, i8 %rv_10_1_2, i8 %tmp_91
  %x_assign_175_3 = xor i8 %sboxes_1_load_1, %sboxes_12_load_1
  %tmp_43_1_3 = xor i8 %sboxes_6_load_1, %x_assign_175_3
  %e_1_3 = xor i8 %sboxes_11_load_1, %tmp_43_1_3
  %tmp_93 = shl i8 %x_assign_175_3, 1
  %tmp_94 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_175_3, i32 7)
  %rv_1_1_3 = xor i8 %tmp_93, 27
  %rv_2_1_3 = select i1 %tmp_94, i8 %rv_1_1_3, i8 %tmp_93
  %x_assign_1_1_3 = xor i8 %sboxes_6_load_1, %sboxes_1_load_1
  %tmp_95 = shl i8 %x_assign_1_1_3, 1
  %tmp_96 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_1_3, i32 7)
  %rv_4_1_3 = xor i8 %tmp_95, 27
  %rv_5_1_3 = select i1 %tmp_96, i8 %rv_4_1_3, i8 %tmp_95
  %x_assign_2_1_3 = xor i8 %sboxes_11_load_1, %sboxes_6_load_1
  %tmp_97 = shl i8 %x_assign_2_1_3, 1
  %tmp_98 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_1_3, i32 7)
  %rv_7_1_3 = xor i8 %tmp_97, 27
  %rv_8_1_3 = select i1 %tmp_98, i8 %rv_7_1_3, i8 %tmp_97
  %x_assign_3_1_3 = xor i8 %sboxes_11_load_1, %sboxes_12_load_1
  %tmp_99 = shl i8 %x_assign_3_1_3, 1
  %tmp_100 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_1_3, i32 7)
  %rv_10_1_3 = xor i8 %tmp_99, 27
  %rv_11_1_3 = select i1 %tmp_100, i8 %rv_10_1_3, i8 %tmp_99
  %tmp_56_1 = zext i8 %tmp_33 to i64
  %sboxes_16_addr_1 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_1
  %sboxes_16_load_1 = load i8* %sboxes_16_addr_1, align 1
  %tmp_57_1 = zext i8 %tmp_34 to i64
  %sboxes_17_addr_1 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_1
  %sboxes_17_load_1 = load i8* %sboxes_17_addr_1, align 1
  %tmp_58_1 = zext i8 %tmp_35 to i64
  %sboxes_18_addr_1 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_1
  %sboxes_18_load_1 = load i8* %sboxes_18_addr_1, align 1
  %tmp_59_1 = zext i8 %tmp_32 to i64
  %sboxes_19_addr_1 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_1
  %sboxes_19_load_1 = load i8* %sboxes_19_addr_1, align 1
  %tmp_60_1 = xor i8 %sboxes_16_load_1, 2
  %tmp_61_1 = xor i8 %tmp_60_1, %tmp_20
  %tmp_62_1 = xor i8 %sboxes_17_load_1, %tmp_21
  %tmp_63_1 = xor i8 %sboxes_18_load_1, %tmp_22
  %tmp_64_1 = xor i8 %sboxes_19_load_1, %tmp_23
  %tmp_65_1 = xor i8 %p_Result_6_4, %tmp_60_1
  %tmp_66_1 = xor i8 %sboxes_17_load_1, %p_Result_6_5
  %tmp_67_1 = xor i8 %sboxes_18_load_1, %p_Result_6_6
  %tmp_68_1 = xor i8 %sboxes_19_load_1, %p_Result_6_7
  %tmp_73_1 = xor i8 %tmp_65_1, %p_Result_6_11
  %tmp_74_1 = xor i8 %tmp_66_1, %p_Result_6_12
  %tmp_75_1 = xor i8 %tmp_67_1, %p_Result_6_13
  %tmp_76_1 = xor i8 %tmp_68_1, %tmp_13
  %tmp29 = xor i8 %sboxes_0_load_1, %rv_2_1
  %tmp30 = xor i8 %e_1, %tmp_61_1
  %tmp_81_1 = xor i8 %tmp30, %tmp29
  %tmp31 = xor i8 %sboxes_5_load_1, %e_1
  %tmp32 = xor i8 %rv_5_1, %tmp_62_1
  %tmp_81_1_1 = xor i8 %tmp32, %tmp31
  %tmp33 = xor i8 %sboxes_15_load_1, %x_assign_s
  %tmp34 = xor i8 %rv_8_1, %tmp_63_1
  %tmp_81_1_2 = xor i8 %tmp34, %tmp33
  %tmp35 = xor i8 %tmp_43_1, %tmp_64_1
  %tmp_81_1_3 = xor i8 %tmp35, %rv_11_1
  %tmp36 = xor i8 %sboxes_4_load_1, %rv_2_1_1
  %tmp37 = xor i8 %e_1_1, %tmp_65_1
  %tmp_81_1_4 = xor i8 %tmp37, %tmp36
  %tmp38 = xor i8 %sboxes_9_load_1, %e_1_1
  %tmp39 = xor i8 %rv_5_1_1, %tmp_66_1
  %tmp_81_1_5 = xor i8 %tmp39, %tmp38
  %tmp40 = xor i8 %sboxes_3_load_1, %x_assign_175_1
  %tmp41 = xor i8 %rv_8_1_1, %tmp_67_1
  %tmp_81_1_6 = xor i8 %tmp41, %tmp40
  %tmp42 = xor i8 %tmp_43_1_1, %tmp_68_1
  %tmp_81_1_7 = xor i8 %tmp42, %rv_11_1_1
  %tmp43 = xor i8 %sboxes_8_load_1, %rv_2_1_2
  %tmp45 = xor i8 %tmp_65_1, %tmp_28
  %tmp44 = xor i8 %tmp45, %e_1_2
  %tmp_81_1_8 = xor i8 %tmp44, %tmp43
  %tmp46 = xor i8 %sboxes_13_load_1, %e_1_2
  %tmp48 = xor i8 %tmp_66_1, %tmp_29
  %tmp47 = xor i8 %tmp48, %rv_5_1_2
  %tmp_81_1_9 = xor i8 %tmp47, %tmp46
  %tmp49 = xor i8 %sboxes_7_load_1, %x_assign_175_2
  %tmp51 = xor i8 %tmp_67_1, %tmp_30
  %tmp50 = xor i8 %tmp51, %rv_8_1_2
  %tmp_81_1_s = xor i8 %tmp50, %tmp49
  %tmp52 = xor i8 %rv_11_1_2, %tmp_43_1_2
  %tmp53 = xor i8 %tmp_68_1, %tmp_31
  %tmp_81_1_10 = xor i8 %tmp53, %tmp52
  %tmp54 = xor i8 %sboxes_12_load_1, %rv_2_1_3
  %tmp55 = xor i8 %e_1_3, %tmp_73_1
  %tmp_81_1_11 = xor i8 %tmp55, %tmp54
  %tmp56 = xor i8 %sboxes_1_load_1, %e_1_3
  %tmp57 = xor i8 %rv_5_1_3, %tmp_74_1
  %tmp_81_1_12 = xor i8 %tmp57, %tmp56
  %tmp58 = xor i8 %sboxes_11_load_1, %x_assign_175_3
  %tmp59 = xor i8 %rv_8_1_3, %tmp_75_1
  %tmp_81_1_13 = xor i8 %tmp59, %tmp58
  %tmp60 = xor i8 %tmp_43_1_3, %tmp_76_1
  %tmp_81_1_14 = xor i8 %tmp60, %rv_11_1_3
  %tmp_31_2 = zext i8 %tmp_81_1 to i64
  %sboxes_0_addr_2 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_2
  %sboxes_0_load_2 = load i8* %sboxes_0_addr_2, align 1
  %tmp_31_2_1 = zext i8 %tmp_81_1_1 to i64
  %sboxes_1_addr_2 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_2_1
  %sboxes_1_load_2 = load i8* %sboxes_1_addr_2, align 1
  %tmp_31_2_2 = zext i8 %tmp_81_1_2 to i64
  %sboxes_2_addr_2 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_2_2
  %sboxes_2_load_2 = load i8* %sboxes_2_addr_2, align 1
  %tmp_31_2_3 = zext i8 %tmp_81_1_3 to i64
  %sboxes_3_addr_2 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_2_3
  %sboxes_3_load_2 = load i8* %sboxes_3_addr_2, align 1
  %tmp_31_2_4 = zext i8 %tmp_81_1_4 to i64
  %sboxes_4_addr_2 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_2_4
  %sboxes_4_load_2 = load i8* %sboxes_4_addr_2, align 1
  %tmp_31_2_5 = zext i8 %tmp_81_1_5 to i64
  %sboxes_5_addr_2 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_2_5
  %sboxes_5_load_2 = load i8* %sboxes_5_addr_2, align 1
  %tmp_31_2_6 = zext i8 %tmp_81_1_6 to i64
  %sboxes_6_addr_2 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_2_6
  %sboxes_6_load_2 = load i8* %sboxes_6_addr_2, align 1
  %tmp_31_2_7 = zext i8 %tmp_81_1_7 to i64
  %sboxes_7_addr_2 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_2_7
  %sboxes_7_load_2 = load i8* %sboxes_7_addr_2, align 1
  %tmp_31_2_8 = zext i8 %tmp_81_1_8 to i64
  %sboxes_8_addr_2 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_2_8
  %sboxes_8_load_2 = load i8* %sboxes_8_addr_2, align 1
  %tmp_31_2_9 = zext i8 %tmp_81_1_9 to i64
  %sboxes_9_addr_2 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_2_9
  %sboxes_9_load_2 = load i8* %sboxes_9_addr_2, align 1
  %tmp_31_2_s = zext i8 %tmp_81_1_s to i64
  %sboxes_10_addr_2 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_2_s
  %sboxes_10_load_2 = load i8* %sboxes_10_addr_2, align 1
  %tmp_31_2_10 = zext i8 %tmp_81_1_10 to i64
  %sboxes_11_addr_2 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_2_10
  %sboxes_11_load_2 = load i8* %sboxes_11_addr_2, align 1
  %tmp_31_2_11 = zext i8 %tmp_81_1_11 to i64
  %sboxes_12_addr_2 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_2_11
  %sboxes_12_load_2 = load i8* %sboxes_12_addr_2, align 1
  %tmp_31_2_12 = zext i8 %tmp_81_1_12 to i64
  %sboxes_13_addr_2 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_2_12
  %sboxes_13_load_2 = load i8* %sboxes_13_addr_2, align 1
  %tmp_31_2_13 = zext i8 %tmp_81_1_13 to i64
  %sboxes_14_addr_2 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_2_13
  %sboxes_14_load_2 = load i8* %sboxes_14_addr_2, align 1
  %tmp_31_2_14 = zext i8 %tmp_81_1_14 to i64
  %sboxes_15_addr_2 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_2_14
  %sboxes_15_load_2 = load i8* %sboxes_15_addr_2, align 1
  %x_assign_9 = xor i8 %sboxes_5_load_2, %sboxes_0_load_2
  %tmp_43_2 = xor i8 %sboxes_10_load_2, %x_assign_9
  %e_2 = xor i8 %sboxes_15_load_2, %tmp_43_2
  %tmp_101 = shl i8 %x_assign_9, 1
  %tmp_102 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7)
  %rv_1_2 = xor i8 %tmp_101, 27
  %rv_2_2 = select i1 %tmp_102, i8 %rv_1_2, i8 %tmp_101
  %x_assign_1_2 = xor i8 %sboxes_10_load_2, %sboxes_5_load_2
  %tmp_103 = shl i8 %x_assign_1_2, 1
  %tmp_104 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_2, i32 7)
  %rv_4_2 = xor i8 %tmp_103, 27
  %rv_5_2 = select i1 %tmp_104, i8 %rv_4_2, i8 %tmp_103
  %x_assign_2_2 = xor i8 %sboxes_15_load_2, %sboxes_10_load_2
  %tmp_105 = shl i8 %x_assign_2_2, 1
  %tmp_106 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_2, i32 7)
  %rv_7_2 = xor i8 %tmp_105, 27
  %rv_8_2 = select i1 %tmp_106, i8 %rv_7_2, i8 %tmp_105
  %x_assign_3_2 = xor i8 %sboxes_15_load_2, %sboxes_0_load_2
  %tmp_107 = shl i8 %x_assign_3_2, 1
  %tmp_108 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_2, i32 7)
  %rv_10_2 = xor i8 %tmp_107, 27
  %rv_11_2 = select i1 %tmp_108, i8 %rv_10_2, i8 %tmp_107
  %x_assign_277_1 = xor i8 %sboxes_9_load_2, %sboxes_4_load_2
  %tmp_43_2_1 = xor i8 %sboxes_14_load_2, %x_assign_277_1
  %e_2_1 = xor i8 %sboxes_3_load_2, %tmp_43_2_1
  %tmp_109 = shl i8 %x_assign_277_1, 1
  %tmp_110 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_277_1, i32 7)
  %rv_1_2_1 = xor i8 %tmp_109, 27
  %rv_2_2_1 = select i1 %tmp_110, i8 %rv_1_2_1, i8 %tmp_109
  %x_assign_1_2_1 = xor i8 %sboxes_14_load_2, %sboxes_9_load_2
  %tmp_111 = shl i8 %x_assign_1_2_1, 1
  %tmp_112 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_2_1, i32 7)
  %rv_4_2_1 = xor i8 %tmp_111, 27
  %rv_5_2_1 = select i1 %tmp_112, i8 %rv_4_2_1, i8 %tmp_111
  %x_assign_2_2_1 = xor i8 %sboxes_3_load_2, %sboxes_14_load_2
  %tmp_113 = shl i8 %x_assign_2_2_1, 1
  %tmp_114 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_2_1, i32 7)
  %rv_7_2_1 = xor i8 %tmp_113, 27
  %rv_8_2_1 = select i1 %tmp_114, i8 %rv_7_2_1, i8 %tmp_113
  %x_assign_3_2_1 = xor i8 %sboxes_3_load_2, %sboxes_4_load_2
  %tmp_115 = shl i8 %x_assign_3_2_1, 1
  %tmp_116 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_2_1, i32 7)
  %rv_10_2_1 = xor i8 %tmp_115, 27
  %rv_11_2_1 = select i1 %tmp_116, i8 %rv_10_2_1, i8 %tmp_115
  %x_assign_277_2 = xor i8 %sboxes_13_load_2, %sboxes_8_load_2
  %tmp_43_2_2 = xor i8 %sboxes_2_load_2, %x_assign_277_2
  %e_2_2 = xor i8 %sboxes_7_load_2, %tmp_43_2_2
  %tmp_117 = shl i8 %x_assign_277_2, 1
  %tmp_118 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_277_2, i32 7)
  %rv_1_2_2 = xor i8 %tmp_117, 27
  %rv_2_2_2 = select i1 %tmp_118, i8 %rv_1_2_2, i8 %tmp_117
  %x_assign_1_2_2 = xor i8 %sboxes_2_load_2, %sboxes_13_load_2
  %tmp_119 = shl i8 %x_assign_1_2_2, 1
  %tmp_120 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_2_2, i32 7)
  %rv_4_2_2 = xor i8 %tmp_119, 27
  %rv_5_2_2 = select i1 %tmp_120, i8 %rv_4_2_2, i8 %tmp_119
  %x_assign_2_2_2 = xor i8 %sboxes_7_load_2, %sboxes_2_load_2
  %tmp_121 = shl i8 %x_assign_2_2_2, 1
  %tmp_122 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_2_2, i32 7)
  %rv_7_2_2 = xor i8 %tmp_121, 27
  %rv_8_2_2 = select i1 %tmp_122, i8 %rv_7_2_2, i8 %tmp_121
  %x_assign_3_2_2 = xor i8 %sboxes_7_load_2, %sboxes_8_load_2
  %tmp_123 = shl i8 %x_assign_3_2_2, 1
  %tmp_124 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_2_2, i32 7)
  %rv_10_2_2 = xor i8 %tmp_123, 27
  %rv_11_2_2 = select i1 %tmp_124, i8 %rv_10_2_2, i8 %tmp_123
  %x_assign_277_3 = xor i8 %sboxes_1_load_2, %sboxes_12_load_2
  %tmp_43_2_3 = xor i8 %sboxes_6_load_2, %x_assign_277_3
  %e_2_3 = xor i8 %sboxes_11_load_2, %tmp_43_2_3
  %tmp_125 = shl i8 %x_assign_277_3, 1
  %tmp_126 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_277_3, i32 7)
  %rv_1_2_3 = xor i8 %tmp_125, 27
  %rv_2_2_3 = select i1 %tmp_126, i8 %rv_1_2_3, i8 %tmp_125
  %x_assign_1_2_3 = xor i8 %sboxes_6_load_2, %sboxes_1_load_2
  %tmp_127 = shl i8 %x_assign_1_2_3, 1
  %tmp_128 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_2_3, i32 7)
  %rv_4_2_3 = xor i8 %tmp_127, 27
  %rv_5_2_3 = select i1 %tmp_128, i8 %rv_4_2_3, i8 %tmp_127
  %x_assign_2_2_3 = xor i8 %sboxes_11_load_2, %sboxes_6_load_2
  %tmp_129 = shl i8 %x_assign_2_2_3, 1
  %tmp_130 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_2_3, i32 7)
  %rv_7_2_3 = xor i8 %tmp_129, 27
  %rv_8_2_3 = select i1 %tmp_130, i8 %rv_7_2_3, i8 %tmp_129
  %x_assign_3_2_3 = xor i8 %sboxes_11_load_2, %sboxes_12_load_2
  %tmp_131 = shl i8 %x_assign_3_2_3, 1
  %tmp_132 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_2_3, i32 7)
  %rv_10_2_3 = xor i8 %tmp_131, 27
  %rv_11_2_3 = select i1 %tmp_132, i8 %rv_10_2_3, i8 %tmp_131
  %tmp_56_2 = zext i8 %tmp_74_1 to i64
  %sboxes_16_addr_2 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_2
  %sboxes_16_load_2 = load i8* %sboxes_16_addr_2, align 1
  %tmp_57_2 = zext i8 %tmp_75_1 to i64
  %sboxes_17_addr_2 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_2
  %sboxes_17_load_2 = load i8* %sboxes_17_addr_2, align 1
  %tmp_58_2 = zext i8 %tmp_76_1 to i64
  %sboxes_18_addr_2 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_2
  %sboxes_18_load_2 = load i8* %sboxes_18_addr_2, align 1
  %tmp_59_2 = zext i8 %tmp_73_1 to i64
  %sboxes_19_addr_2 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_2
  %sboxes_19_load_2 = load i8* %sboxes_19_addr_2, align 1
  %tmp61 = xor i8 %tmp_61_1, 4
  %tmp_61_2 = xor i8 %tmp61, %sboxes_16_load_2
  %tmp_62_2 = xor i8 %sboxes_17_load_2, %tmp_62_1
  %tmp_63_2 = xor i8 %sboxes_18_load_2, %tmp_63_1
  %tmp_64_2 = xor i8 %sboxes_19_load_2, %tmp_64_1
  %tmp_69_2 = xor i8 %tmp_28, %tmp_61_2
  %tmp_70_2 = xor i8 %tmp_29, %tmp_62_2
  %tmp_71_2 = xor i8 %tmp_30, %tmp_63_2
  %tmp_72_2 = xor i8 %tmp_31, %tmp_64_2
  %tmp_73_2 = xor i8 %tmp_69_2, %tmp_73_1
  %tmp_74_2 = xor i8 %tmp_70_2, %tmp_74_1
  %tmp_75_2 = xor i8 %tmp_71_2, %tmp_75_1
  %tmp_76_2 = xor i8 %tmp_72_2, %tmp_76_1
  %tmp62 = xor i8 %sboxes_0_load_2, %rv_2_2
  %tmp63 = xor i8 %e_2, %tmp_61_2
  %tmp_81_2 = xor i8 %tmp63, %tmp62
  %tmp64 = xor i8 %sboxes_5_load_2, %e_2
  %tmp65 = xor i8 %rv_5_2, %tmp_62_2
  %tmp_81_2_1 = xor i8 %tmp65, %tmp64
  %tmp66 = xor i8 %sboxes_15_load_2, %x_assign_9
  %tmp67 = xor i8 %rv_8_2, %tmp_63_2
  %tmp_81_2_2 = xor i8 %tmp67, %tmp66
  %tmp68 = xor i8 %tmp_43_2, %tmp_64_2
  %tmp_81_2_3 = xor i8 %tmp68, %rv_11_2
  %tmp69 = xor i8 %sboxes_4_load_2, %rv_2_2_1
  %tmp71 = xor i8 %tmp_61_2, %tmp_65_1
  %tmp70 = xor i8 %tmp71, %e_2_1
  %tmp_81_2_4 = xor i8 %tmp70, %tmp69
  %tmp72 = xor i8 %sboxes_9_load_2, %e_2_1
  %tmp74 = xor i8 %tmp_62_2, %tmp_66_1
  %tmp73 = xor i8 %tmp74, %rv_5_2_1
  %tmp_81_2_5 = xor i8 %tmp73, %tmp72
  %tmp75 = xor i8 %sboxes_3_load_2, %x_assign_277_1
  %tmp77 = xor i8 %tmp_63_2, %tmp_67_1
  %tmp76 = xor i8 %tmp77, %rv_8_2_1
  %tmp_81_2_6 = xor i8 %tmp76, %tmp75
  %tmp78 = xor i8 %rv_11_2_1, %tmp_43_2_1
  %tmp79 = xor i8 %tmp_64_2, %tmp_68_1
  %tmp_81_2_7 = xor i8 %tmp79, %tmp78
  %tmp80 = xor i8 %sboxes_8_load_2, %rv_2_2_2
  %tmp81 = xor i8 %e_2_2, %tmp_69_2
  %tmp_81_2_8 = xor i8 %tmp81, %tmp80
  %tmp82 = xor i8 %sboxes_13_load_2, %e_2_2
  %tmp83 = xor i8 %rv_5_2_2, %tmp_70_2
  %tmp_81_2_9 = xor i8 %tmp83, %tmp82
  %tmp84 = xor i8 %sboxes_7_load_2, %x_assign_277_2
  %tmp85 = xor i8 %rv_8_2_2, %tmp_71_2
  %tmp_81_2_s = xor i8 %tmp85, %tmp84
  %tmp86 = xor i8 %tmp_43_2_2, %tmp_72_2
  %tmp_81_2_10 = xor i8 %tmp86, %rv_11_2_2
  %tmp87 = xor i8 %sboxes_12_load_2, %rv_2_2_3
  %tmp88 = xor i8 %e_2_3, %tmp_73_2
  %tmp_81_2_11 = xor i8 %tmp88, %tmp87
  %tmp89 = xor i8 %sboxes_1_load_2, %e_2_3
  %tmp90 = xor i8 %rv_5_2_3, %tmp_74_2
  %tmp_81_2_12 = xor i8 %tmp90, %tmp89
  %tmp91 = xor i8 %sboxes_11_load_2, %x_assign_277_3
  %tmp92 = xor i8 %rv_8_2_3, %tmp_75_2
  %tmp_81_2_13 = xor i8 %tmp92, %tmp91
  %tmp93 = xor i8 %tmp_43_2_3, %tmp_76_2
  %tmp_81_2_14 = xor i8 %tmp93, %rv_11_2_3
  %tmp_31_3 = zext i8 %tmp_81_2 to i64
  %sboxes_0_addr_3 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_3
  %sboxes_0_load_3 = load i8* %sboxes_0_addr_3, align 1
  %tmp_31_3_1 = zext i8 %tmp_81_2_1 to i64
  %sboxes_1_addr_3 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_3_1
  %sboxes_1_load_3 = load i8* %sboxes_1_addr_3, align 1
  %tmp_31_3_2 = zext i8 %tmp_81_2_2 to i64
  %sboxes_2_addr_3 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_3_2
  %sboxes_2_load_3 = load i8* %sboxes_2_addr_3, align 1
  %tmp_31_3_3 = zext i8 %tmp_81_2_3 to i64
  %sboxes_3_addr_3 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_3_3
  %sboxes_3_load_3 = load i8* %sboxes_3_addr_3, align 1
  %tmp_31_3_4 = zext i8 %tmp_81_2_4 to i64
  %sboxes_4_addr_3 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_3_4
  %sboxes_4_load_3 = load i8* %sboxes_4_addr_3, align 1
  %tmp_31_3_5 = zext i8 %tmp_81_2_5 to i64
  %sboxes_5_addr_3 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_3_5
  %sboxes_5_load_3 = load i8* %sboxes_5_addr_3, align 1
  %tmp_31_3_6 = zext i8 %tmp_81_2_6 to i64
  %sboxes_6_addr_3 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_3_6
  %sboxes_6_load_3 = load i8* %sboxes_6_addr_3, align 1
  %tmp_31_3_7 = zext i8 %tmp_81_2_7 to i64
  %sboxes_7_addr_3 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_3_7
  %sboxes_7_load_3 = load i8* %sboxes_7_addr_3, align 1
  %tmp_31_3_8 = zext i8 %tmp_81_2_8 to i64
  %sboxes_8_addr_3 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_3_8
  %sboxes_8_load_3 = load i8* %sboxes_8_addr_3, align 1
  %tmp_31_3_9 = zext i8 %tmp_81_2_9 to i64
  %sboxes_9_addr_3 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_3_9
  %sboxes_9_load_3 = load i8* %sboxes_9_addr_3, align 1
  %tmp_31_3_s = zext i8 %tmp_81_2_s to i64
  %sboxes_10_addr_3 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_3_s
  %sboxes_10_load_3 = load i8* %sboxes_10_addr_3, align 1
  %tmp_31_3_10 = zext i8 %tmp_81_2_10 to i64
  %sboxes_11_addr_3 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_3_10
  %sboxes_11_load_3 = load i8* %sboxes_11_addr_3, align 1
  %tmp_31_3_11 = zext i8 %tmp_81_2_11 to i64
  %sboxes_12_addr_3 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_3_11
  %sboxes_12_load_3 = load i8* %sboxes_12_addr_3, align 1
  %tmp_31_3_12 = zext i8 %tmp_81_2_12 to i64
  %sboxes_13_addr_3 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_3_12
  %sboxes_13_load_3 = load i8* %sboxes_13_addr_3, align 1
  %tmp_31_3_13 = zext i8 %tmp_81_2_13 to i64
  %sboxes_14_addr_3 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_3_13
  %sboxes_14_load_3 = load i8* %sboxes_14_addr_3, align 1
  %tmp_31_3_14 = zext i8 %tmp_81_2_14 to i64
  %sboxes_15_addr_3 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_3_14
  %sboxes_15_load_3 = load i8* %sboxes_15_addr_3, align 1
  %x_assign_10 = xor i8 %sboxes_5_load_3, %sboxes_0_load_3
  %tmp_43_3 = xor i8 %sboxes_10_load_3, %x_assign_10
  %e_3 = xor i8 %sboxes_15_load_3, %tmp_43_3
  %tmp_133 = shl i8 %x_assign_10, 1
  %tmp_134 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_10, i32 7)
  %rv_1_3 = xor i8 %tmp_133, 27
  %rv_2_3 = select i1 %tmp_134, i8 %rv_1_3, i8 %tmp_133
  %x_assign_1_3 = xor i8 %sboxes_10_load_3, %sboxes_5_load_3
  %tmp_135 = shl i8 %x_assign_1_3, 1
  %tmp_136 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_3, i32 7)
  %rv_4_3 = xor i8 %tmp_135, 27
  %rv_5_3 = select i1 %tmp_136, i8 %rv_4_3, i8 %tmp_135
  %x_assign_2_3 = xor i8 %sboxes_15_load_3, %sboxes_10_load_3
  %tmp_137 = shl i8 %x_assign_2_3, 1
  %tmp_138 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_3, i32 7)
  %rv_7_3 = xor i8 %tmp_137, 27
  %rv_8_3 = select i1 %tmp_138, i8 %rv_7_3, i8 %tmp_137
  %x_assign_3_3 = xor i8 %sboxes_15_load_3, %sboxes_0_load_3
  %tmp_139 = shl i8 %x_assign_3_3, 1
  %tmp_140 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_3, i32 7)
  %rv_10_3 = xor i8 %tmp_139, 27
  %rv_11_3 = select i1 %tmp_140, i8 %rv_10_3, i8 %tmp_139
  %x_assign_379_1 = xor i8 %sboxes_9_load_3, %sboxes_4_load_3
  %tmp_43_3_1 = xor i8 %sboxes_14_load_3, %x_assign_379_1
  %e_3_1 = xor i8 %sboxes_3_load_3, %tmp_43_3_1
  %tmp_141 = shl i8 %x_assign_379_1, 1
  %tmp_142 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_379_1, i32 7)
  %rv_1_3_1 = xor i8 %tmp_141, 27
  %rv_2_3_1 = select i1 %tmp_142, i8 %rv_1_3_1, i8 %tmp_141
  %x_assign_1_3_1 = xor i8 %sboxes_14_load_3, %sboxes_9_load_3
  %tmp_143 = shl i8 %x_assign_1_3_1, 1
  %tmp_144 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_3_1, i32 7)
  %rv_4_3_1 = xor i8 %tmp_143, 27
  %rv_5_3_1 = select i1 %tmp_144, i8 %rv_4_3_1, i8 %tmp_143
  %x_assign_2_3_1 = xor i8 %sboxes_3_load_3, %sboxes_14_load_3
  %tmp_145 = shl i8 %x_assign_2_3_1, 1
  %tmp_146 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_3_1, i32 7)
  %rv_7_3_1 = xor i8 %tmp_145, 27
  %rv_8_3_1 = select i1 %tmp_146, i8 %rv_7_3_1, i8 %tmp_145
  %x_assign_3_3_1 = xor i8 %sboxes_3_load_3, %sboxes_4_load_3
  %tmp_147 = shl i8 %x_assign_3_3_1, 1
  %tmp_148 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_3_1, i32 7)
  %rv_10_3_1 = xor i8 %tmp_147, 27
  %rv_11_3_1 = select i1 %tmp_148, i8 %rv_10_3_1, i8 %tmp_147
  %x_assign_379_2 = xor i8 %sboxes_13_load_3, %sboxes_8_load_3
  %tmp_43_3_2 = xor i8 %sboxes_2_load_3, %x_assign_379_2
  %e_3_2 = xor i8 %sboxes_7_load_3, %tmp_43_3_2
  %tmp_149 = shl i8 %x_assign_379_2, 1
  %tmp_150 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_379_2, i32 7)
  %rv_1_3_2 = xor i8 %tmp_149, 27
  %rv_2_3_2 = select i1 %tmp_150, i8 %rv_1_3_2, i8 %tmp_149
  %x_assign_1_3_2 = xor i8 %sboxes_2_load_3, %sboxes_13_load_3
  %tmp_151 = shl i8 %x_assign_1_3_2, 1
  %tmp_152 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_3_2, i32 7)
  %rv_4_3_2 = xor i8 %tmp_151, 27
  %rv_5_3_2 = select i1 %tmp_152, i8 %rv_4_3_2, i8 %tmp_151
  %x_assign_2_3_2 = xor i8 %sboxes_7_load_3, %sboxes_2_load_3
  %tmp_153 = shl i8 %x_assign_2_3_2, 1
  %tmp_154 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_3_2, i32 7)
  %rv_7_3_2 = xor i8 %tmp_153, 27
  %rv_8_3_2 = select i1 %tmp_154, i8 %rv_7_3_2, i8 %tmp_153
  %x_assign_3_3_2 = xor i8 %sboxes_7_load_3, %sboxes_8_load_3
  %tmp_155 = shl i8 %x_assign_3_3_2, 1
  %tmp_156 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_3_2, i32 7)
  %rv_10_3_2 = xor i8 %tmp_155, 27
  %rv_11_3_2 = select i1 %tmp_156, i8 %rv_10_3_2, i8 %tmp_155
  %x_assign_379_3 = xor i8 %sboxes_1_load_3, %sboxes_12_load_3
  %tmp_43_3_3 = xor i8 %sboxes_6_load_3, %x_assign_379_3
  %e_3_3 = xor i8 %sboxes_11_load_3, %tmp_43_3_3
  %tmp_157 = shl i8 %x_assign_379_3, 1
  %tmp_158 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_379_3, i32 7)
  %rv_1_3_3 = xor i8 %tmp_157, 27
  %rv_2_3_3 = select i1 %tmp_158, i8 %rv_1_3_3, i8 %tmp_157
  %x_assign_1_3_3 = xor i8 %sboxes_6_load_3, %sboxes_1_load_3
  %tmp_159 = shl i8 %x_assign_1_3_3, 1
  %tmp_160 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_3_3, i32 7)
  %rv_4_3_3 = xor i8 %tmp_159, 27
  %rv_5_3_3 = select i1 %tmp_160, i8 %rv_4_3_3, i8 %tmp_159
  %x_assign_2_3_3 = xor i8 %sboxes_11_load_3, %sboxes_6_load_3
  %tmp_161 = shl i8 %x_assign_2_3_3, 1
  %tmp_162 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_3_3, i32 7)
  %rv_7_3_3 = xor i8 %tmp_161, 27
  %rv_8_3_3 = select i1 %tmp_162, i8 %rv_7_3_3, i8 %tmp_161
  %x_assign_3_3_3 = xor i8 %sboxes_11_load_3, %sboxes_12_load_3
  %tmp_163 = shl i8 %x_assign_3_3_3, 1
  %tmp_164 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_3_3, i32 7)
  %rv_10_3_3 = xor i8 %tmp_163, 27
  %rv_11_3_3 = select i1 %tmp_164, i8 %rv_10_3_3, i8 %tmp_163
  %tmp_56_3 = zext i8 %tmp_74_2 to i64
  %sboxes_16_addr_3 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_3
  %sboxes_16_load_3 = load i8* %sboxes_16_addr_3, align 1
  %tmp_57_3 = zext i8 %tmp_75_2 to i64
  %sboxes_17_addr_3 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_3
  %sboxes_17_load_3 = load i8* %sboxes_17_addr_3, align 1
  %tmp_58_3 = zext i8 %tmp_76_2 to i64
  %sboxes_18_addr_3 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_3
  %sboxes_18_load_3 = load i8* %sboxes_18_addr_3, align 1
  %tmp_59_3 = zext i8 %tmp_73_2 to i64
  %sboxes_19_addr_3 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_3
  %sboxes_19_load_3 = load i8* %sboxes_19_addr_3, align 1
  %tmp_60_3 = xor i8 %sboxes_16_load_3, 8
  %tmp_61_3 = xor i8 %tmp_60_3, %tmp_61_2
  %tmp_62_3 = xor i8 %sboxes_17_load_3, %tmp_62_2
  %tmp_63_3 = xor i8 %sboxes_18_load_3, %tmp_63_2
  %tmp_64_3 = xor i8 %sboxes_19_load_3, %tmp_64_2
  %tmp_65_3 = xor i8 %tmp_65_1, %tmp_60_3
  %tmp_66_3 = xor i8 %sboxes_17_load_3, %tmp_66_1
  %tmp_67_3 = xor i8 %sboxes_18_load_3, %tmp_67_1
  %tmp_68_3 = xor i8 %sboxes_19_load_3, %tmp_68_1
  %tmp_73_3 = xor i8 %tmp_60_3, %p_Result_6_11
  %tmp_74_3 = xor i8 %sboxes_17_load_3, %p_Result_6_12
  %tmp_75_3 = xor i8 %sboxes_18_load_3, %p_Result_6_13
  %tmp_76_3 = xor i8 %sboxes_19_load_3, %tmp_13
  %tmp94 = xor i8 %sboxes_0_load_3, %rv_2_3
  %tmp95 = xor i8 %e_3, %tmp_61_3
  %tmp_81_3 = xor i8 %tmp95, %tmp94
  %tmp96 = xor i8 %sboxes_5_load_3, %e_3
  %tmp97 = xor i8 %rv_5_3, %tmp_62_3
  %tmp_81_3_1 = xor i8 %tmp97, %tmp96
  %tmp98 = xor i8 %sboxes_15_load_3, %x_assign_10
  %tmp99 = xor i8 %rv_8_3, %tmp_63_3
  %tmp_81_3_2 = xor i8 %tmp99, %tmp98
  %tmp100 = xor i8 %tmp_43_3, %tmp_64_3
  %tmp_81_3_3 = xor i8 %tmp100, %rv_11_3
  %tmp101 = xor i8 %sboxes_4_load_3, %rv_2_3_1
  %tmp102 = xor i8 %e_3_1, %tmp_65_3
  %tmp_81_3_4 = xor i8 %tmp102, %tmp101
  %tmp103 = xor i8 %sboxes_9_load_3, %e_3_1
  %tmp104 = xor i8 %rv_5_3_1, %tmp_66_3
  %tmp_81_3_5 = xor i8 %tmp104, %tmp103
  %tmp105 = xor i8 %sboxes_3_load_3, %x_assign_379_1
  %tmp106 = xor i8 %rv_8_3_1, %tmp_67_3
  %tmp_81_3_6 = xor i8 %tmp106, %tmp105
  %tmp107 = xor i8 %tmp_43_3_1, %tmp_68_3
  %tmp_81_3_7 = xor i8 %tmp107, %rv_11_3_1
  %tmp108 = xor i8 %sboxes_8_load_3, %rv_2_3_2
  %tmp110 = xor i8 %tmp_65_3, %tmp_69_2
  %tmp109 = xor i8 %tmp110, %e_3_2
  %tmp_81_3_8 = xor i8 %tmp109, %tmp108
  %tmp111 = xor i8 %sboxes_13_load_3, %e_3_2
  %tmp113 = xor i8 %tmp_66_3, %tmp_70_2
  %tmp112 = xor i8 %tmp113, %rv_5_3_2
  %tmp_81_3_9 = xor i8 %tmp112, %tmp111
  %tmp114 = xor i8 %sboxes_7_load_3, %x_assign_379_2
  %tmp116 = xor i8 %tmp_67_3, %tmp_71_2
  %tmp115 = xor i8 %tmp116, %rv_8_3_2
  %tmp_81_3_s = xor i8 %tmp115, %tmp114
  %tmp117 = xor i8 %rv_11_3_2, %tmp_43_3_2
  %tmp118 = xor i8 %tmp_68_3, %tmp_72_2
  %tmp_81_3_10 = xor i8 %tmp118, %tmp117
  %tmp119 = xor i8 %sboxes_12_load_3, %rv_2_3_3
  %tmp120 = xor i8 %e_3_3, %tmp_73_3
  %tmp_81_3_11 = xor i8 %tmp120, %tmp119
  %tmp121 = xor i8 %sboxes_1_load_3, %e_3_3
  %tmp122 = xor i8 %rv_5_3_3, %tmp_74_3
  %tmp_81_3_12 = xor i8 %tmp122, %tmp121
  %tmp123 = xor i8 %sboxes_11_load_3, %x_assign_379_3
  %tmp124 = xor i8 %rv_8_3_3, %tmp_75_3
  %tmp_81_3_13 = xor i8 %tmp124, %tmp123
  %tmp125 = xor i8 %tmp_43_3_3, %tmp_76_3
  %tmp_81_3_14 = xor i8 %tmp125, %rv_11_3_3
  %tmp_31_4 = zext i8 %tmp_81_3 to i64
  %sboxes_0_addr_4 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_4
  %sboxes_0_load_4 = load i8* %sboxes_0_addr_4, align 1
  %tmp_31_4_1 = zext i8 %tmp_81_3_1 to i64
  %sboxes_1_addr_4 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_4_1
  %sboxes_1_load_4 = load i8* %sboxes_1_addr_4, align 1
  %tmp_31_4_2 = zext i8 %tmp_81_3_2 to i64
  %sboxes_2_addr_4 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_4_2
  %sboxes_2_load_4 = load i8* %sboxes_2_addr_4, align 1
  %tmp_31_4_3 = zext i8 %tmp_81_3_3 to i64
  %sboxes_3_addr_4 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_4_3
  %sboxes_3_load_4 = load i8* %sboxes_3_addr_4, align 1
  %tmp_31_4_4 = zext i8 %tmp_81_3_4 to i64
  %sboxes_4_addr_4 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_4_4
  %sboxes_4_load_4 = load i8* %sboxes_4_addr_4, align 1
  %tmp_31_4_5 = zext i8 %tmp_81_3_5 to i64
  %sboxes_5_addr_4 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_4_5
  %sboxes_5_load_4 = load i8* %sboxes_5_addr_4, align 1
  %tmp_31_4_6 = zext i8 %tmp_81_3_6 to i64
  %sboxes_6_addr_4 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_4_6
  %sboxes_6_load_4 = load i8* %sboxes_6_addr_4, align 1
  %tmp_31_4_7 = zext i8 %tmp_81_3_7 to i64
  %sboxes_7_addr_4 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_4_7
  %sboxes_7_load_4 = load i8* %sboxes_7_addr_4, align 1
  %tmp_31_4_8 = zext i8 %tmp_81_3_8 to i64
  %sboxes_8_addr_4 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_4_8
  %sboxes_8_load_4 = load i8* %sboxes_8_addr_4, align 1
  %tmp_31_4_9 = zext i8 %tmp_81_3_9 to i64
  %sboxes_9_addr_4 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_4_9
  %sboxes_9_load_4 = load i8* %sboxes_9_addr_4, align 1
  %tmp_31_4_s = zext i8 %tmp_81_3_s to i64
  %sboxes_10_addr_4 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_4_s
  %sboxes_10_load_4 = load i8* %sboxes_10_addr_4, align 1
  %tmp_31_4_10 = zext i8 %tmp_81_3_10 to i64
  %sboxes_11_addr_4 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_4_10
  %sboxes_11_load_4 = load i8* %sboxes_11_addr_4, align 1
  %tmp_31_4_11 = zext i8 %tmp_81_3_11 to i64
  %sboxes_12_addr_4 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_4_11
  %sboxes_12_load_4 = load i8* %sboxes_12_addr_4, align 1
  %tmp_31_4_12 = zext i8 %tmp_81_3_12 to i64
  %sboxes_13_addr_4 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_4_12
  %sboxes_13_load_4 = load i8* %sboxes_13_addr_4, align 1
  %tmp_31_4_13 = zext i8 %tmp_81_3_13 to i64
  %sboxes_14_addr_4 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_4_13
  %sboxes_14_load_4 = load i8* %sboxes_14_addr_4, align 1
  %tmp_31_4_14 = zext i8 %tmp_81_3_14 to i64
  %sboxes_15_addr_4 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_4_14
  %sboxes_15_load_4 = load i8* %sboxes_15_addr_4, align 1
  %x_assign_4 = xor i8 %sboxes_5_load_4, %sboxes_0_load_4
  %tmp_43_4 = xor i8 %sboxes_10_load_4, %x_assign_4
  %e_4 = xor i8 %sboxes_15_load_4, %tmp_43_4
  %tmp_165 = shl i8 %x_assign_4, 1
  %tmp_166 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_4, i32 7)
  %rv_1_4 = xor i8 %tmp_165, 27
  %rv_2_4 = select i1 %tmp_166, i8 %rv_1_4, i8 %tmp_165
  %x_assign_1_4 = xor i8 %sboxes_10_load_4, %sboxes_5_load_4
  %tmp_167 = shl i8 %x_assign_1_4, 1
  %tmp_168 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_4, i32 7)
  %rv_4_4 = xor i8 %tmp_167, 27
  %rv_5_4 = select i1 %tmp_168, i8 %rv_4_4, i8 %tmp_167
  %x_assign_2_4 = xor i8 %sboxes_15_load_4, %sboxes_10_load_4
  %tmp_169 = shl i8 %x_assign_2_4, 1
  %tmp_170 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_4, i32 7)
  %rv_7_4 = xor i8 %tmp_169, 27
  %rv_8_4 = select i1 %tmp_170, i8 %rv_7_4, i8 %tmp_169
  %x_assign_3_4 = xor i8 %sboxes_15_load_4, %sboxes_0_load_4
  %tmp_171 = shl i8 %x_assign_3_4, 1
  %tmp_172 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_4, i32 7)
  %rv_10_4 = xor i8 %tmp_171, 27
  %rv_11_4 = select i1 %tmp_172, i8 %rv_10_4, i8 %tmp_171
  %x_assign_4_1 = xor i8 %sboxes_9_load_4, %sboxes_4_load_4
  %tmp_43_4_1 = xor i8 %sboxes_14_load_4, %x_assign_4_1
  %e_4_1 = xor i8 %sboxes_3_load_4, %tmp_43_4_1
  %tmp_173 = shl i8 %x_assign_4_1, 1
  %tmp_174 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_4_1, i32 7)
  %rv_1_4_1 = xor i8 %tmp_173, 27
  %rv_2_4_1 = select i1 %tmp_174, i8 %rv_1_4_1, i8 %tmp_173
  %x_assign_1_4_1 = xor i8 %sboxes_14_load_4, %sboxes_9_load_4
  %tmp_175 = shl i8 %x_assign_1_4_1, 1
  %tmp_176 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_4_1, i32 7)
  %rv_4_4_1 = xor i8 %tmp_175, 27
  %rv_5_4_1 = select i1 %tmp_176, i8 %rv_4_4_1, i8 %tmp_175
  %x_assign_2_4_1 = xor i8 %sboxes_3_load_4, %sboxes_14_load_4
  %tmp_177 = shl i8 %x_assign_2_4_1, 1
  %tmp_178 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_4_1, i32 7)
  %rv_7_4_1 = xor i8 %tmp_177, 27
  %rv_8_4_1 = select i1 %tmp_178, i8 %rv_7_4_1, i8 %tmp_177
  %x_assign_3_4_1 = xor i8 %sboxes_3_load_4, %sboxes_4_load_4
  %tmp_179 = shl i8 %x_assign_3_4_1, 1
  %tmp_180 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_4_1, i32 7)
  %rv_10_4_1 = xor i8 %tmp_179, 27
  %rv_11_4_1 = select i1 %tmp_180, i8 %rv_10_4_1, i8 %tmp_179
  %x_assign_4_2 = xor i8 %sboxes_13_load_4, %sboxes_8_load_4
  %tmp_43_4_2 = xor i8 %sboxes_2_load_4, %x_assign_4_2
  %e_4_2 = xor i8 %sboxes_7_load_4, %tmp_43_4_2
  %tmp_181 = shl i8 %x_assign_4_2, 1
  %tmp_182 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_4_2, i32 7)
  %rv_1_4_2 = xor i8 %tmp_181, 27
  %rv_2_4_2 = select i1 %tmp_182, i8 %rv_1_4_2, i8 %tmp_181
  %x_assign_1_4_2 = xor i8 %sboxes_2_load_4, %sboxes_13_load_4
  %tmp_183 = shl i8 %x_assign_1_4_2, 1
  %tmp_184 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_4_2, i32 7)
  %rv_4_4_2 = xor i8 %tmp_183, 27
  %rv_5_4_2 = select i1 %tmp_184, i8 %rv_4_4_2, i8 %tmp_183
  %x_assign_2_4_2 = xor i8 %sboxes_7_load_4, %sboxes_2_load_4
  %tmp_185 = shl i8 %x_assign_2_4_2, 1
  %tmp_186 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_4_2, i32 7)
  %rv_7_4_2 = xor i8 %tmp_185, 27
  %rv_8_4_2 = select i1 %tmp_186, i8 %rv_7_4_2, i8 %tmp_185
  %x_assign_3_4_2 = xor i8 %sboxes_7_load_4, %sboxes_8_load_4
  %tmp_187 = shl i8 %x_assign_3_4_2, 1
  %tmp_188 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_4_2, i32 7)
  %rv_10_4_2 = xor i8 %tmp_187, 27
  %rv_11_4_2 = select i1 %tmp_188, i8 %rv_10_4_2, i8 %tmp_187
  %x_assign_4_3 = xor i8 %sboxes_1_load_4, %sboxes_12_load_4
  %tmp_43_4_3 = xor i8 %sboxes_6_load_4, %x_assign_4_3
  %e_4_3 = xor i8 %sboxes_11_load_4, %tmp_43_4_3
  %tmp_189 = shl i8 %x_assign_4_3, 1
  %tmp_190 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_4_3, i32 7)
  %rv_1_4_3 = xor i8 %tmp_189, 27
  %rv_2_4_3 = select i1 %tmp_190, i8 %rv_1_4_3, i8 %tmp_189
  %x_assign_1_4_3 = xor i8 %sboxes_6_load_4, %sboxes_1_load_4
  %tmp_191 = shl i8 %x_assign_1_4_3, 1
  %tmp_192 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_4_3, i32 7)
  %rv_4_4_3 = xor i8 %tmp_191, 27
  %rv_5_4_3 = select i1 %tmp_192, i8 %rv_4_4_3, i8 %tmp_191
  %x_assign_2_4_3 = xor i8 %sboxes_11_load_4, %sboxes_6_load_4
  %tmp_193 = shl i8 %x_assign_2_4_3, 1
  %tmp_194 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_4_3, i32 7)
  %rv_7_4_3 = xor i8 %tmp_193, 27
  %rv_8_4_3 = select i1 %tmp_194, i8 %rv_7_4_3, i8 %tmp_193
  %x_assign_3_4_3 = xor i8 %sboxes_11_load_4, %sboxes_12_load_4
  %tmp_195 = shl i8 %x_assign_3_4_3, 1
  %tmp_196 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_4_3, i32 7)
  %rv_10_4_3 = xor i8 %tmp_195, 27
  %rv_11_4_3 = select i1 %tmp_196, i8 %rv_10_4_3, i8 %tmp_195
  %tmp_56_4 = zext i8 %tmp_74_3 to i64
  %sboxes_16_addr_4 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_4
  %sboxes_16_load_4 = load i8* %sboxes_16_addr_4, align 1
  %tmp_57_4 = zext i8 %tmp_75_3 to i64
  %sboxes_17_addr_4 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_4
  %sboxes_17_load_4 = load i8* %sboxes_17_addr_4, align 1
  %tmp_58_4 = zext i8 %tmp_76_3 to i64
  %sboxes_18_addr_4 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_4
  %sboxes_18_load_4 = load i8* %sboxes_18_addr_4, align 1
  %tmp_59_4 = zext i8 %tmp_73_3 to i64
  %sboxes_19_addr_4 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_4
  %sboxes_19_load_4 = load i8* %sboxes_19_addr_4, align 1
  %tmp126 = xor i8 %tmp_61_3, 16
  %tmp_61_4 = xor i8 %tmp126, %sboxes_16_load_4
  %tmp_62_4 = xor i8 %sboxes_17_load_4, %tmp_62_3
  %tmp_63_4 = xor i8 %sboxes_18_load_4, %tmp_63_3
  %tmp_64_4 = xor i8 %sboxes_19_load_4, %tmp_64_3
  %tmp_69_4 = xor i8 %tmp_69_2, %tmp_61_4
  %tmp_70_4 = xor i8 %tmp_70_2, %tmp_62_4
  %tmp_71_4 = xor i8 %tmp_71_2, %tmp_63_4
  %tmp_72_4 = xor i8 %tmp_72_2, %tmp_64_4
  %tmp_73_4 = xor i8 %tmp_69_4, %tmp_73_3
  %tmp_74_4 = xor i8 %tmp_70_4, %tmp_74_3
  %tmp_75_4 = xor i8 %tmp_71_4, %tmp_75_3
  %tmp_76_4 = xor i8 %tmp_72_4, %tmp_76_3
  %tmp127 = xor i8 %sboxes_0_load_4, %rv_2_4
  %tmp128 = xor i8 %e_4, %tmp_61_4
  %tmp_81_4 = xor i8 %tmp128, %tmp127
  %tmp129 = xor i8 %sboxes_5_load_4, %e_4
  %tmp130 = xor i8 %rv_5_4, %tmp_62_4
  %tmp_81_4_1 = xor i8 %tmp130, %tmp129
  %tmp131 = xor i8 %sboxes_15_load_4, %x_assign_4
  %tmp132 = xor i8 %rv_8_4, %tmp_63_4
  %tmp_81_4_2 = xor i8 %tmp132, %tmp131
  %tmp133 = xor i8 %tmp_43_4, %tmp_64_4
  %tmp_81_4_3 = xor i8 %tmp133, %rv_11_4
  %tmp134 = xor i8 %sboxes_4_load_4, %rv_2_4_1
  %tmp136 = xor i8 %tmp_61_4, %tmp_65_3
  %tmp135 = xor i8 %tmp136, %e_4_1
  %tmp_81_4_4 = xor i8 %tmp135, %tmp134
  %tmp137 = xor i8 %sboxes_9_load_4, %e_4_1
  %tmp139 = xor i8 %tmp_62_4, %tmp_66_3
  %tmp138 = xor i8 %tmp139, %rv_5_4_1
  %tmp_81_4_5 = xor i8 %tmp138, %tmp137
  %tmp140 = xor i8 %sboxes_3_load_4, %x_assign_4_1
  %tmp142 = xor i8 %tmp_63_4, %tmp_67_3
  %tmp141 = xor i8 %tmp142, %rv_8_4_1
  %tmp_81_4_6 = xor i8 %tmp141, %tmp140
  %tmp143 = xor i8 %rv_11_4_1, %tmp_43_4_1
  %tmp144 = xor i8 %tmp_64_4, %tmp_68_3
  %tmp_81_4_7 = xor i8 %tmp144, %tmp143
  %tmp145 = xor i8 %sboxes_8_load_4, %rv_2_4_2
  %tmp146 = xor i8 %e_4_2, %tmp_69_4
  %tmp_81_4_8 = xor i8 %tmp146, %tmp145
  %tmp147 = xor i8 %sboxes_13_load_4, %e_4_2
  %tmp148 = xor i8 %rv_5_4_2, %tmp_70_4
  %tmp_81_4_9 = xor i8 %tmp148, %tmp147
  %tmp149 = xor i8 %sboxes_7_load_4, %x_assign_4_2
  %tmp150 = xor i8 %rv_8_4_2, %tmp_71_4
  %tmp_81_4_s = xor i8 %tmp150, %tmp149
  %tmp151 = xor i8 %tmp_43_4_2, %tmp_72_4
  %tmp_81_4_10 = xor i8 %tmp151, %rv_11_4_2
  %tmp152 = xor i8 %sboxes_12_load_4, %rv_2_4_3
  %tmp153 = xor i8 %e_4_3, %tmp_73_4
  %tmp_81_4_11 = xor i8 %tmp153, %tmp152
  %tmp154 = xor i8 %sboxes_1_load_4, %e_4_3
  %tmp155 = xor i8 %rv_5_4_3, %tmp_74_4
  %tmp_81_4_12 = xor i8 %tmp155, %tmp154
  %tmp156 = xor i8 %sboxes_11_load_4, %x_assign_4_3
  %tmp157 = xor i8 %rv_8_4_3, %tmp_75_4
  %tmp_81_4_13 = xor i8 %tmp157, %tmp156
  %tmp158 = xor i8 %tmp_43_4_3, %tmp_76_4
  %tmp_81_4_14 = xor i8 %tmp158, %rv_11_4_3
  %tmp_31_5 = zext i8 %tmp_81_4 to i64
  %sboxes_0_addr_5 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_5
  %sboxes_0_load_5 = load i8* %sboxes_0_addr_5, align 1
  %tmp_31_5_1 = zext i8 %tmp_81_4_1 to i64
  %sboxes_1_addr_5 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_5_1
  %sboxes_1_load_5 = load i8* %sboxes_1_addr_5, align 1
  %tmp_31_5_2 = zext i8 %tmp_81_4_2 to i64
  %sboxes_2_addr_5 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_5_2
  %sboxes_2_load_5 = load i8* %sboxes_2_addr_5, align 1
  %tmp_31_5_3 = zext i8 %tmp_81_4_3 to i64
  %sboxes_3_addr_5 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_5_3
  %sboxes_3_load_5 = load i8* %sboxes_3_addr_5, align 1
  %tmp_31_5_4 = zext i8 %tmp_81_4_4 to i64
  %sboxes_4_addr_5 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_5_4
  %sboxes_4_load_5 = load i8* %sboxes_4_addr_5, align 1
  %tmp_31_5_5 = zext i8 %tmp_81_4_5 to i64
  %sboxes_5_addr_5 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_5_5
  %sboxes_5_load_5 = load i8* %sboxes_5_addr_5, align 1
  %tmp_31_5_6 = zext i8 %tmp_81_4_6 to i64
  %sboxes_6_addr_5 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_5_6
  %sboxes_6_load_5 = load i8* %sboxes_6_addr_5, align 1
  %tmp_31_5_7 = zext i8 %tmp_81_4_7 to i64
  %sboxes_7_addr_5 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_5_7
  %sboxes_7_load_5 = load i8* %sboxes_7_addr_5, align 1
  %tmp_31_5_8 = zext i8 %tmp_81_4_8 to i64
  %sboxes_8_addr_5 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_5_8
  %sboxes_8_load_5 = load i8* %sboxes_8_addr_5, align 1
  %tmp_31_5_9 = zext i8 %tmp_81_4_9 to i64
  %sboxes_9_addr_5 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_5_9
  %sboxes_9_load_5 = load i8* %sboxes_9_addr_5, align 1
  %tmp_31_5_s = zext i8 %tmp_81_4_s to i64
  %sboxes_10_addr_5 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_5_s
  %sboxes_10_load_5 = load i8* %sboxes_10_addr_5, align 1
  %tmp_31_5_10 = zext i8 %tmp_81_4_10 to i64
  %sboxes_11_addr_5 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_5_10
  %sboxes_11_load_5 = load i8* %sboxes_11_addr_5, align 1
  %tmp_31_5_11 = zext i8 %tmp_81_4_11 to i64
  %sboxes_12_addr_5 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_5_11
  %sboxes_12_load_5 = load i8* %sboxes_12_addr_5, align 1
  %tmp_31_5_12 = zext i8 %tmp_81_4_12 to i64
  %sboxes_13_addr_5 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_5_12
  %sboxes_13_load_5 = load i8* %sboxes_13_addr_5, align 1
  %tmp_31_5_13 = zext i8 %tmp_81_4_13 to i64
  %sboxes_14_addr_5 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_5_13
  %sboxes_14_load_5 = load i8* %sboxes_14_addr_5, align 1
  %tmp_31_5_14 = zext i8 %tmp_81_4_14 to i64
  %sboxes_15_addr_5 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_5_14
  %sboxes_15_load_5 = load i8* %sboxes_15_addr_5, align 1
  %x_assign_5 = xor i8 %sboxes_5_load_5, %sboxes_0_load_5
  %tmp_43_5 = xor i8 %sboxes_10_load_5, %x_assign_5
  %e_5 = xor i8 %sboxes_15_load_5, %tmp_43_5
  %tmp_197 = shl i8 %x_assign_5, 1
  %tmp_198 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7)
  %rv_1_5 = xor i8 %tmp_197, 27
  %rv_2_5 = select i1 %tmp_198, i8 %rv_1_5, i8 %tmp_197
  %x_assign_1_5 = xor i8 %sboxes_10_load_5, %sboxes_5_load_5
  %tmp_199 = shl i8 %x_assign_1_5, 1
  %tmp_200 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_5, i32 7)
  %rv_4_5 = xor i8 %tmp_199, 27
  %rv_5_5 = select i1 %tmp_200, i8 %rv_4_5, i8 %tmp_199
  %x_assign_2_5 = xor i8 %sboxes_15_load_5, %sboxes_10_load_5
  %tmp_201 = shl i8 %x_assign_2_5, 1
  %tmp_202 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_5, i32 7)
  %rv_7_5 = xor i8 %tmp_201, 27
  %rv_8_5 = select i1 %tmp_202, i8 %rv_7_5, i8 %tmp_201
  %x_assign_3_5 = xor i8 %sboxes_15_load_5, %sboxes_0_load_5
  %tmp_203 = shl i8 %x_assign_3_5, 1
  %tmp_204 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_5, i32 7)
  %rv_10_5 = xor i8 %tmp_203, 27
  %rv_11_5 = select i1 %tmp_204, i8 %rv_10_5, i8 %tmp_203
  %x_assign_5_1 = xor i8 %sboxes_9_load_5, %sboxes_4_load_5
  %tmp_43_5_1 = xor i8 %sboxes_14_load_5, %x_assign_5_1
  %e_5_1 = xor i8 %sboxes_3_load_5, %tmp_43_5_1
  %tmp_205 = shl i8 %x_assign_5_1, 1
  %tmp_206 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5_1, i32 7)
  %rv_1_5_1 = xor i8 %tmp_205, 27
  %rv_2_5_1 = select i1 %tmp_206, i8 %rv_1_5_1, i8 %tmp_205
  %x_assign_1_5_1 = xor i8 %sboxes_14_load_5, %sboxes_9_load_5
  %tmp_207 = shl i8 %x_assign_1_5_1, 1
  %tmp_208 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_5_1, i32 7)
  %rv_4_5_1 = xor i8 %tmp_207, 27
  %rv_5_5_1 = select i1 %tmp_208, i8 %rv_4_5_1, i8 %tmp_207
  %x_assign_2_5_1 = xor i8 %sboxes_3_load_5, %sboxes_14_load_5
  %tmp_209 = shl i8 %x_assign_2_5_1, 1
  %tmp_210 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_5_1, i32 7)
  %rv_7_5_1 = xor i8 %tmp_209, 27
  %rv_8_5_1 = select i1 %tmp_210, i8 %rv_7_5_1, i8 %tmp_209
  %x_assign_3_5_1 = xor i8 %sboxes_3_load_5, %sboxes_4_load_5
  %tmp_211 = shl i8 %x_assign_3_5_1, 1
  %tmp_212 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_5_1, i32 7)
  %rv_10_5_1 = xor i8 %tmp_211, 27
  %rv_11_5_1 = select i1 %tmp_212, i8 %rv_10_5_1, i8 %tmp_211
  %x_assign_5_2 = xor i8 %sboxes_13_load_5, %sboxes_8_load_5
  %tmp_43_5_2 = xor i8 %sboxes_2_load_5, %x_assign_5_2
  %e_5_2 = xor i8 %sboxes_7_load_5, %tmp_43_5_2
  %tmp_213 = shl i8 %x_assign_5_2, 1
  %tmp_214 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5_2, i32 7)
  %rv_1_5_2 = xor i8 %tmp_213, 27
  %rv_2_5_2 = select i1 %tmp_214, i8 %rv_1_5_2, i8 %tmp_213
  %x_assign_1_5_2 = xor i8 %sboxes_2_load_5, %sboxes_13_load_5
  %tmp_215 = shl i8 %x_assign_1_5_2, 1
  %tmp_216 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_5_2, i32 7)
  %rv_4_5_2 = xor i8 %tmp_215, 27
  %rv_5_5_2 = select i1 %tmp_216, i8 %rv_4_5_2, i8 %tmp_215
  %x_assign_2_5_2 = xor i8 %sboxes_7_load_5, %sboxes_2_load_5
  %tmp_217 = shl i8 %x_assign_2_5_2, 1
  %tmp_218 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_5_2, i32 7)
  %rv_7_5_2 = xor i8 %tmp_217, 27
  %rv_8_5_2 = select i1 %tmp_218, i8 %rv_7_5_2, i8 %tmp_217
  %x_assign_3_5_2 = xor i8 %sboxes_7_load_5, %sboxes_8_load_5
  %tmp_219 = shl i8 %x_assign_3_5_2, 1
  %tmp_220 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_5_2, i32 7)
  %rv_10_5_2 = xor i8 %tmp_219, 27
  %rv_11_5_2 = select i1 %tmp_220, i8 %rv_10_5_2, i8 %tmp_219
  %x_assign_5_3 = xor i8 %sboxes_1_load_5, %sboxes_12_load_5
  %tmp_43_5_3 = xor i8 %sboxes_6_load_5, %x_assign_5_3
  %e_5_3 = xor i8 %sboxes_11_load_5, %tmp_43_5_3
  %tmp_221 = shl i8 %x_assign_5_3, 1
  %tmp_222 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5_3, i32 7)
  %rv_1_5_3 = xor i8 %tmp_221, 27
  %rv_2_5_3 = select i1 %tmp_222, i8 %rv_1_5_3, i8 %tmp_221
  %x_assign_1_5_3 = xor i8 %sboxes_6_load_5, %sboxes_1_load_5
  %tmp_223 = shl i8 %x_assign_1_5_3, 1
  %tmp_224 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_5_3, i32 7)
  %rv_4_5_3 = xor i8 %tmp_223, 27
  %rv_5_5_3 = select i1 %tmp_224, i8 %rv_4_5_3, i8 %tmp_223
  %x_assign_2_5_3 = xor i8 %sboxes_11_load_5, %sboxes_6_load_5
  %tmp_225 = shl i8 %x_assign_2_5_3, 1
  %tmp_226 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_5_3, i32 7)
  %rv_7_5_3 = xor i8 %tmp_225, 27
  %rv_8_5_3 = select i1 %tmp_226, i8 %rv_7_5_3, i8 %tmp_225
  %x_assign_3_5_3 = xor i8 %sboxes_11_load_5, %sboxes_12_load_5
  %tmp_227 = shl i8 %x_assign_3_5_3, 1
  %tmp_228 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_5_3, i32 7)
  %rv_10_5_3 = xor i8 %tmp_227, 27
  %rv_11_5_3 = select i1 %tmp_228, i8 %rv_10_5_3, i8 %tmp_227
  %tmp_56_5 = zext i8 %tmp_74_4 to i64
  %sboxes_16_addr_5 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_5
  %sboxes_16_load_5 = load i8* %sboxes_16_addr_5, align 1
  %tmp_57_5 = zext i8 %tmp_75_4 to i64
  %sboxes_17_addr_5 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_5
  %sboxes_17_load_5 = load i8* %sboxes_17_addr_5, align 1
  %tmp_58_5 = zext i8 %tmp_76_4 to i64
  %sboxes_18_addr_5 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_5
  %sboxes_18_load_5 = load i8* %sboxes_18_addr_5, align 1
  %tmp_59_5 = zext i8 %tmp_73_4 to i64
  %sboxes_19_addr_5 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_5
  %sboxes_19_load_5 = load i8* %sboxes_19_addr_5, align 1
  %tmp_60_5 = xor i8 %sboxes_16_load_5, 32
  %tmp_61_5 = xor i8 %tmp_60_5, %tmp_61_4
  %tmp_62_5 = xor i8 %sboxes_17_load_5, %tmp_62_4
  %tmp_63_5 = xor i8 %sboxes_18_load_5, %tmp_63_4
  %tmp_64_5 = xor i8 %sboxes_19_load_5, %tmp_64_4
  %tmp_65_5 = xor i8 %tmp_65_3, %tmp_60_5
  %tmp_66_5 = xor i8 %sboxes_17_load_5, %tmp_66_3
  %tmp_67_5 = xor i8 %sboxes_18_load_5, %tmp_67_3
  %tmp_68_5 = xor i8 %sboxes_19_load_5, %tmp_68_3
  %tmp_73_5 = xor i8 %tmp_65_5, %tmp_73_3
  %tmp_74_5 = xor i8 %tmp_66_5, %tmp_74_3
  %tmp_75_5 = xor i8 %tmp_67_5, %tmp_75_3
  %tmp_76_5 = xor i8 %tmp_68_5, %tmp_76_3
  %tmp159 = xor i8 %sboxes_0_load_5, %rv_2_5
  %tmp160 = xor i8 %e_5, %tmp_61_5
  %tmp_81_5 = xor i8 %tmp160, %tmp159
  %tmp161 = xor i8 %sboxes_5_load_5, %e_5
  %tmp162 = xor i8 %rv_5_5, %tmp_62_5
  %tmp_81_5_1 = xor i8 %tmp162, %tmp161
  %tmp163 = xor i8 %sboxes_15_load_5, %x_assign_5
  %tmp164 = xor i8 %rv_8_5, %tmp_63_5
  %tmp_81_5_2 = xor i8 %tmp164, %tmp163
  %tmp165 = xor i8 %tmp_43_5, %tmp_64_5
  %tmp_81_5_3 = xor i8 %tmp165, %rv_11_5
  %tmp166 = xor i8 %sboxes_4_load_5, %rv_2_5_1
  %tmp167 = xor i8 %e_5_1, %tmp_65_5
  %tmp_81_5_4 = xor i8 %tmp167, %tmp166
  %tmp168 = xor i8 %sboxes_9_load_5, %e_5_1
  %tmp169 = xor i8 %rv_5_5_1, %tmp_66_5
  %tmp_81_5_5 = xor i8 %tmp169, %tmp168
  %tmp170 = xor i8 %sboxes_3_load_5, %x_assign_5_1
  %tmp171 = xor i8 %rv_8_5_1, %tmp_67_5
  %tmp_81_5_6 = xor i8 %tmp171, %tmp170
  %tmp172 = xor i8 %tmp_43_5_1, %tmp_68_5
  %tmp_81_5_7 = xor i8 %tmp172, %rv_11_5_1
  %tmp173 = xor i8 %sboxes_8_load_5, %rv_2_5_2
  %tmp175 = xor i8 %tmp_65_5, %tmp_69_4
  %tmp174 = xor i8 %tmp175, %e_5_2
  %tmp_81_5_8 = xor i8 %tmp174, %tmp173
  %tmp176 = xor i8 %sboxes_13_load_5, %e_5_2
  %tmp178 = xor i8 %tmp_66_5, %tmp_70_4
  %tmp177 = xor i8 %tmp178, %rv_5_5_2
  %tmp_81_5_9 = xor i8 %tmp177, %tmp176
  %tmp179 = xor i8 %sboxes_7_load_5, %x_assign_5_2
  %tmp181 = xor i8 %tmp_67_5, %tmp_71_4
  %tmp180 = xor i8 %tmp181, %rv_8_5_2
  %tmp_81_5_s = xor i8 %tmp180, %tmp179
  %tmp182 = xor i8 %rv_11_5_2, %tmp_43_5_2
  %tmp183 = xor i8 %tmp_68_5, %tmp_72_4
  %tmp_81_5_10 = xor i8 %tmp183, %tmp182
  %tmp184 = xor i8 %sboxes_12_load_5, %rv_2_5_3
  %tmp185 = xor i8 %e_5_3, %tmp_73_5
  %tmp_81_5_11 = xor i8 %tmp185, %tmp184
  %tmp186 = xor i8 %sboxes_1_load_5, %e_5_3
  %tmp187 = xor i8 %rv_5_5_3, %tmp_74_5
  %tmp_81_5_12 = xor i8 %tmp187, %tmp186
  %tmp188 = xor i8 %sboxes_11_load_5, %x_assign_5_3
  %tmp189 = xor i8 %rv_8_5_3, %tmp_75_5
  %tmp_81_5_13 = xor i8 %tmp189, %tmp188
  %tmp190 = xor i8 %tmp_43_5_3, %tmp_76_5
  %tmp_81_5_14 = xor i8 %tmp190, %rv_11_5_3
  %tmp_31_6 = zext i8 %tmp_81_5 to i64
  %sboxes_0_addr_6 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_6
  %sboxes_0_load_6 = load i8* %sboxes_0_addr_6, align 1
  %tmp_31_6_1 = zext i8 %tmp_81_5_1 to i64
  %sboxes_1_addr_6 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_6_1
  %sboxes_1_load_6 = load i8* %sboxes_1_addr_6, align 1
  %tmp_31_6_2 = zext i8 %tmp_81_5_2 to i64
  %sboxes_2_addr_6 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_6_2
  %sboxes_2_load_6 = load i8* %sboxes_2_addr_6, align 1
  %tmp_31_6_3 = zext i8 %tmp_81_5_3 to i64
  %sboxes_3_addr_6 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_6_3
  %sboxes_3_load_6 = load i8* %sboxes_3_addr_6, align 1
  %tmp_31_6_4 = zext i8 %tmp_81_5_4 to i64
  %sboxes_4_addr_6 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_6_4
  %sboxes_4_load_6 = load i8* %sboxes_4_addr_6, align 1
  %tmp_31_6_5 = zext i8 %tmp_81_5_5 to i64
  %sboxes_5_addr_6 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_6_5
  %sboxes_5_load_6 = load i8* %sboxes_5_addr_6, align 1
  %tmp_31_6_6 = zext i8 %tmp_81_5_6 to i64
  %sboxes_6_addr_6 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_6_6
  %sboxes_6_load_6 = load i8* %sboxes_6_addr_6, align 1
  %tmp_31_6_7 = zext i8 %tmp_81_5_7 to i64
  %sboxes_7_addr_6 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_6_7
  %sboxes_7_load_6 = load i8* %sboxes_7_addr_6, align 1
  %tmp_31_6_8 = zext i8 %tmp_81_5_8 to i64
  %sboxes_8_addr_6 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_6_8
  %sboxes_8_load_6 = load i8* %sboxes_8_addr_6, align 1
  %tmp_31_6_9 = zext i8 %tmp_81_5_9 to i64
  %sboxes_9_addr_6 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_6_9
  %sboxes_9_load_6 = load i8* %sboxes_9_addr_6, align 1
  %tmp_31_6_s = zext i8 %tmp_81_5_s to i64
  %sboxes_10_addr_6 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_6_s
  %sboxes_10_load_6 = load i8* %sboxes_10_addr_6, align 1
  %tmp_31_6_10 = zext i8 %tmp_81_5_10 to i64
  %sboxes_11_addr_6 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_6_10
  %sboxes_11_load_6 = load i8* %sboxes_11_addr_6, align 1
  %tmp_31_6_11 = zext i8 %tmp_81_5_11 to i64
  %sboxes_12_addr_6 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_6_11
  %sboxes_12_load_6 = load i8* %sboxes_12_addr_6, align 1
  %tmp_31_6_12 = zext i8 %tmp_81_5_12 to i64
  %sboxes_13_addr_6 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_6_12
  %sboxes_13_load_6 = load i8* %sboxes_13_addr_6, align 1
  %tmp_31_6_13 = zext i8 %tmp_81_5_13 to i64
  %sboxes_14_addr_6 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_6_13
  %sboxes_14_load_6 = load i8* %sboxes_14_addr_6, align 1
  %tmp_31_6_14 = zext i8 %tmp_81_5_14 to i64
  %sboxes_15_addr_6 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_6_14
  %sboxes_15_load_6 = load i8* %sboxes_15_addr_6, align 1
  %x_assign_6 = xor i8 %sboxes_5_load_6, %sboxes_0_load_6
  %tmp_43_6 = xor i8 %sboxes_10_load_6, %x_assign_6
  %e_6 = xor i8 %sboxes_15_load_6, %tmp_43_6
  %tmp_229 = shl i8 %x_assign_6, 1
  %tmp_230 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7)
  %rv_1_6 = xor i8 %tmp_229, 27
  %rv_2_6 = select i1 %tmp_230, i8 %rv_1_6, i8 %tmp_229
  %x_assign_1_6 = xor i8 %sboxes_10_load_6, %sboxes_5_load_6
  %tmp_231 = shl i8 %x_assign_1_6, 1
  %tmp_232 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_6, i32 7)
  %rv_4_6 = xor i8 %tmp_231, 27
  %rv_5_6 = select i1 %tmp_232, i8 %rv_4_6, i8 %tmp_231
  %x_assign_2_6 = xor i8 %sboxes_15_load_6, %sboxes_10_load_6
  %tmp_233 = shl i8 %x_assign_2_6, 1
  %tmp_234 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_6, i32 7)
  %rv_7_6 = xor i8 %tmp_233, 27
  %rv_8_6 = select i1 %tmp_234, i8 %rv_7_6, i8 %tmp_233
  %x_assign_3_6 = xor i8 %sboxes_15_load_6, %sboxes_0_load_6
  %tmp_235 = shl i8 %x_assign_3_6, 1
  %tmp_236 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_6, i32 7)
  %rv_10_6 = xor i8 %tmp_235, 27
  %rv_11_6 = select i1 %tmp_236, i8 %rv_10_6, i8 %tmp_235
  %x_assign_6_1 = xor i8 %sboxes_9_load_6, %sboxes_4_load_6
  %tmp_43_6_1 = xor i8 %sboxes_14_load_6, %x_assign_6_1
  %e_6_1 = xor i8 %sboxes_3_load_6, %tmp_43_6_1
  %tmp_237 = shl i8 %x_assign_6_1, 1
  %tmp_238 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6_1, i32 7)
  %rv_1_6_1 = xor i8 %tmp_237, 27
  %rv_2_6_1 = select i1 %tmp_238, i8 %rv_1_6_1, i8 %tmp_237
  %x_assign_1_6_1 = xor i8 %sboxes_14_load_6, %sboxes_9_load_6
  %tmp_239 = shl i8 %x_assign_1_6_1, 1
  %tmp_240 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_6_1, i32 7)
  %rv_4_6_1 = xor i8 %tmp_239, 27
  %rv_5_6_1 = select i1 %tmp_240, i8 %rv_4_6_1, i8 %tmp_239
  %x_assign_2_6_1 = xor i8 %sboxes_3_load_6, %sboxes_14_load_6
  %tmp_241 = shl i8 %x_assign_2_6_1, 1
  %tmp_242 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_6_1, i32 7)
  %rv_7_6_1 = xor i8 %tmp_241, 27
  %rv_8_6_1 = select i1 %tmp_242, i8 %rv_7_6_1, i8 %tmp_241
  %x_assign_3_6_1 = xor i8 %sboxes_3_load_6, %sboxes_4_load_6
  %tmp_243 = shl i8 %x_assign_3_6_1, 1
  %tmp_244 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_6_1, i32 7)
  %rv_10_6_1 = xor i8 %tmp_243, 27
  %rv_11_6_1 = select i1 %tmp_244, i8 %rv_10_6_1, i8 %tmp_243
  %x_assign_6_2 = xor i8 %sboxes_13_load_6, %sboxes_8_load_6
  %tmp_43_6_2 = xor i8 %sboxes_2_load_6, %x_assign_6_2
  %e_6_2 = xor i8 %sboxes_7_load_6, %tmp_43_6_2
  %tmp_245 = shl i8 %x_assign_6_2, 1
  %tmp_246 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6_2, i32 7)
  %rv_1_6_2 = xor i8 %tmp_245, 27
  %rv_2_6_2 = select i1 %tmp_246, i8 %rv_1_6_2, i8 %tmp_245
  %x_assign_1_6_2 = xor i8 %sboxes_2_load_6, %sboxes_13_load_6
  %tmp_247 = shl i8 %x_assign_1_6_2, 1
  %tmp_248 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_6_2, i32 7)
  %rv_4_6_2 = xor i8 %tmp_247, 27
  %rv_5_6_2 = select i1 %tmp_248, i8 %rv_4_6_2, i8 %tmp_247
  %x_assign_2_6_2 = xor i8 %sboxes_7_load_6, %sboxes_2_load_6
  %tmp_249 = shl i8 %x_assign_2_6_2, 1
  %tmp_250 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_6_2, i32 7)
  %rv_7_6_2 = xor i8 %tmp_249, 27
  %rv_8_6_2 = select i1 %tmp_250, i8 %rv_7_6_2, i8 %tmp_249
  %x_assign_3_6_2 = xor i8 %sboxes_7_load_6, %sboxes_8_load_6
  %tmp_251 = shl i8 %x_assign_3_6_2, 1
  %tmp_252 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_6_2, i32 7)
  %rv_10_6_2 = xor i8 %tmp_251, 27
  %rv_11_6_2 = select i1 %tmp_252, i8 %rv_10_6_2, i8 %tmp_251
  %x_assign_6_3 = xor i8 %sboxes_1_load_6, %sboxes_12_load_6
  %tmp_43_6_3 = xor i8 %sboxes_6_load_6, %x_assign_6_3
  %e_6_3 = xor i8 %sboxes_11_load_6, %tmp_43_6_3
  %tmp_253 = shl i8 %x_assign_6_3, 1
  %tmp_254 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6_3, i32 7)
  %rv_1_6_3 = xor i8 %tmp_253, 27
  %rv_2_6_3 = select i1 %tmp_254, i8 %rv_1_6_3, i8 %tmp_253
  %x_assign_1_6_3 = xor i8 %sboxes_6_load_6, %sboxes_1_load_6
  %tmp_255 = shl i8 %x_assign_1_6_3, 1
  %tmp_256 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_6_3, i32 7)
  %rv_4_6_3 = xor i8 %tmp_255, 27
  %rv_5_6_3 = select i1 %tmp_256, i8 %rv_4_6_3, i8 %tmp_255
  %x_assign_2_6_3 = xor i8 %sboxes_11_load_6, %sboxes_6_load_6
  %tmp_257 = shl i8 %x_assign_2_6_3, 1
  %tmp_258 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_6_3, i32 7)
  %rv_7_6_3 = xor i8 %tmp_257, 27
  %rv_8_6_3 = select i1 %tmp_258, i8 %rv_7_6_3, i8 %tmp_257
  %x_assign_3_6_3 = xor i8 %sboxes_11_load_6, %sboxes_12_load_6
  %tmp_259 = shl i8 %x_assign_3_6_3, 1
  %tmp_260 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_6_3, i32 7)
  %rv_10_6_3 = xor i8 %tmp_259, 27
  %rv_11_6_3 = select i1 %tmp_260, i8 %rv_10_6_3, i8 %tmp_259
  %tmp_56_6 = zext i8 %tmp_74_5 to i64
  %sboxes_16_addr_6 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_6
  %sboxes_16_load_6 = load i8* %sboxes_16_addr_6, align 1
  %tmp_57_6 = zext i8 %tmp_75_5 to i64
  %sboxes_17_addr_6 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_6
  %sboxes_17_load_6 = load i8* %sboxes_17_addr_6, align 1
  %tmp_58_6 = zext i8 %tmp_76_5 to i64
  %sboxes_18_addr_6 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_6
  %sboxes_18_load_6 = load i8* %sboxes_18_addr_6, align 1
  %tmp_59_6 = zext i8 %tmp_73_5 to i64
  %sboxes_19_addr_6 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_6
  %sboxes_19_load_6 = load i8* %sboxes_19_addr_6, align 1
  %tmp191 = xor i8 %tmp_61_5, 64
  %tmp_61_6 = xor i8 %tmp191, %sboxes_16_load_6
  %tmp_62_6 = xor i8 %sboxes_17_load_6, %tmp_62_5
  %tmp_63_6 = xor i8 %sboxes_18_load_6, %tmp_63_5
  %tmp_64_6 = xor i8 %sboxes_19_load_6, %tmp_64_5
  %tmp_69_6 = xor i8 %tmp_69_4, %tmp_61_6
  %tmp_70_6 = xor i8 %tmp_70_4, %tmp_62_6
  %tmp_71_6 = xor i8 %tmp_71_4, %tmp_63_6
  %tmp_72_6 = xor i8 %tmp_72_4, %tmp_64_6
  %tmp_73_6 = xor i8 %tmp_69_6, %tmp_73_5
  %tmp_74_6 = xor i8 %tmp_70_6, %tmp_74_5
  %tmp_75_6 = xor i8 %tmp_71_6, %tmp_75_5
  %tmp_76_6 = xor i8 %tmp_72_6, %tmp_76_5
  %tmp192 = xor i8 %sboxes_0_load_6, %rv_2_6
  %tmp193 = xor i8 %e_6, %tmp_61_6
  %tmp_81_6 = xor i8 %tmp193, %tmp192
  %tmp194 = xor i8 %sboxes_5_load_6, %e_6
  %tmp195 = xor i8 %rv_5_6, %tmp_62_6
  %tmp_81_6_1 = xor i8 %tmp195, %tmp194
  %tmp196 = xor i8 %sboxes_15_load_6, %x_assign_6
  %tmp197 = xor i8 %rv_8_6, %tmp_63_6
  %tmp_81_6_2 = xor i8 %tmp197, %tmp196
  %tmp198 = xor i8 %tmp_43_6, %tmp_64_6
  %tmp_81_6_3 = xor i8 %tmp198, %rv_11_6
  %tmp199 = xor i8 %sboxes_4_load_6, %rv_2_6_1
  %tmp201 = xor i8 %tmp_61_6, %tmp_65_5
  %tmp200 = xor i8 %tmp201, %e_6_1
  %tmp_81_6_4 = xor i8 %tmp200, %tmp199
  %tmp202 = xor i8 %sboxes_9_load_6, %e_6_1
  %tmp204 = xor i8 %tmp_62_6, %tmp_66_5
  %tmp203 = xor i8 %tmp204, %rv_5_6_1
  %tmp_81_6_5 = xor i8 %tmp203, %tmp202
  %tmp205 = xor i8 %sboxes_3_load_6, %x_assign_6_1
  %tmp207 = xor i8 %tmp_63_6, %tmp_67_5
  %tmp206 = xor i8 %tmp207, %rv_8_6_1
  %tmp_81_6_6 = xor i8 %tmp206, %tmp205
  %tmp208 = xor i8 %rv_11_6_1, %tmp_43_6_1
  %tmp209 = xor i8 %tmp_64_6, %tmp_68_5
  %tmp_81_6_7 = xor i8 %tmp209, %tmp208
  %tmp210 = xor i8 %sboxes_8_load_6, %rv_2_6_2
  %tmp211 = xor i8 %e_6_2, %tmp_69_6
  %tmp_81_6_8 = xor i8 %tmp211, %tmp210
  %tmp212 = xor i8 %sboxes_13_load_6, %e_6_2
  %tmp213 = xor i8 %rv_5_6_2, %tmp_70_6
  %tmp_81_6_9 = xor i8 %tmp213, %tmp212
  %tmp214 = xor i8 %sboxes_7_load_6, %x_assign_6_2
  %tmp215 = xor i8 %rv_8_6_2, %tmp_71_6
  %tmp_81_6_s = xor i8 %tmp215, %tmp214
  %tmp216 = xor i8 %tmp_43_6_2, %tmp_72_6
  %tmp_81_6_10 = xor i8 %tmp216, %rv_11_6_2
  %tmp217 = xor i8 %sboxes_12_load_6, %rv_2_6_3
  %tmp218 = xor i8 %e_6_3, %tmp_73_6
  %tmp_81_6_11 = xor i8 %tmp218, %tmp217
  %tmp219 = xor i8 %sboxes_1_load_6, %e_6_3
  %tmp220 = xor i8 %rv_5_6_3, %tmp_74_6
  %tmp_81_6_12 = xor i8 %tmp220, %tmp219
  %tmp221 = xor i8 %sboxes_11_load_6, %x_assign_6_3
  %tmp222 = xor i8 %rv_8_6_3, %tmp_75_6
  %tmp_81_6_13 = xor i8 %tmp222, %tmp221
  %tmp223 = xor i8 %tmp_43_6_3, %tmp_76_6
  %tmp_81_6_14 = xor i8 %tmp223, %rv_11_6_3
  %tmp_31_7 = zext i8 %tmp_81_6 to i64
  %sboxes_0_addr_7 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_7
  %sboxes_0_load_7 = load i8* %sboxes_0_addr_7, align 1
  %tmp_31_7_1 = zext i8 %tmp_81_6_1 to i64
  %sboxes_1_addr_7 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_7_1
  %sboxes_1_load_7 = load i8* %sboxes_1_addr_7, align 1
  %tmp_31_7_2 = zext i8 %tmp_81_6_2 to i64
  %sboxes_2_addr_7 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_7_2
  %sboxes_2_load_7 = load i8* %sboxes_2_addr_7, align 1
  %tmp_31_7_3 = zext i8 %tmp_81_6_3 to i64
  %sboxes_3_addr_7 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_7_3
  %sboxes_3_load_7 = load i8* %sboxes_3_addr_7, align 1
  %tmp_31_7_4 = zext i8 %tmp_81_6_4 to i64
  %sboxes_4_addr_7 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_7_4
  %sboxes_4_load_7 = load i8* %sboxes_4_addr_7, align 1
  %tmp_31_7_5 = zext i8 %tmp_81_6_5 to i64
  %sboxes_5_addr_7 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_7_5
  %sboxes_5_load_7 = load i8* %sboxes_5_addr_7, align 1
  %tmp_31_7_6 = zext i8 %tmp_81_6_6 to i64
  %sboxes_6_addr_7 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_7_6
  %sboxes_6_load_7 = load i8* %sboxes_6_addr_7, align 1
  %tmp_31_7_7 = zext i8 %tmp_81_6_7 to i64
  %sboxes_7_addr_7 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_7_7
  %sboxes_7_load_7 = load i8* %sboxes_7_addr_7, align 1
  %tmp_31_7_8 = zext i8 %tmp_81_6_8 to i64
  %sboxes_8_addr_7 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_7_8
  %sboxes_8_load_7 = load i8* %sboxes_8_addr_7, align 1
  %tmp_31_7_9 = zext i8 %tmp_81_6_9 to i64
  %sboxes_9_addr_7 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_7_9
  %sboxes_9_load_7 = load i8* %sboxes_9_addr_7, align 1
  %tmp_31_7_s = zext i8 %tmp_81_6_s to i64
  %sboxes_10_addr_7 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_7_s
  %sboxes_10_load_7 = load i8* %sboxes_10_addr_7, align 1
  %tmp_31_7_10 = zext i8 %tmp_81_6_10 to i64
  %sboxes_11_addr_7 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_7_10
  %sboxes_11_load_7 = load i8* %sboxes_11_addr_7, align 1
  %tmp_31_7_11 = zext i8 %tmp_81_6_11 to i64
  %sboxes_12_addr_7 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_7_11
  %sboxes_12_load_7 = load i8* %sboxes_12_addr_7, align 1
  %tmp_31_7_12 = zext i8 %tmp_81_6_12 to i64
  %sboxes_13_addr_7 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_7_12
  %sboxes_13_load_7 = load i8* %sboxes_13_addr_7, align 1
  %tmp_31_7_13 = zext i8 %tmp_81_6_13 to i64
  %sboxes_14_addr_7 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_7_13
  %sboxes_14_load_7 = load i8* %sboxes_14_addr_7, align 1
  %tmp_31_7_14 = zext i8 %tmp_81_6_14 to i64
  %sboxes_15_addr_7 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_7_14
  %sboxes_15_load_7 = load i8* %sboxes_15_addr_7, align 1
  %x_assign_7 = xor i8 %sboxes_5_load_7, %sboxes_0_load_7
  %tmp_43_7 = xor i8 %sboxes_10_load_7, %x_assign_7
  %e_7 = xor i8 %sboxes_15_load_7, %tmp_43_7
  %tmp_261 = shl i8 %x_assign_7, 1
  %tmp_262 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7)
  %rv_1_7 = xor i8 %tmp_261, 27
  %rv_2_7 = select i1 %tmp_262, i8 %rv_1_7, i8 %tmp_261
  %x_assign_1_7 = xor i8 %sboxes_10_load_7, %sboxes_5_load_7
  %tmp_263 = shl i8 %x_assign_1_7, 1
  %tmp_264 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_7, i32 7)
  %rv_4_7 = xor i8 %tmp_263, 27
  %rv_5_7 = select i1 %tmp_264, i8 %rv_4_7, i8 %tmp_263
  %x_assign_2_7 = xor i8 %sboxes_15_load_7, %sboxes_10_load_7
  %tmp_265 = shl i8 %x_assign_2_7, 1
  %tmp_266 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_7, i32 7)
  %rv_7_7 = xor i8 %tmp_265, 27
  %rv_8_7 = select i1 %tmp_266, i8 %rv_7_7, i8 %tmp_265
  %x_assign_3_7 = xor i8 %sboxes_15_load_7, %sboxes_0_load_7
  %tmp_267 = shl i8 %x_assign_3_7, 1
  %tmp_268 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_7, i32 7)
  %rv_10_7 = xor i8 %tmp_267, 27
  %rv_11_7 = select i1 %tmp_268, i8 %rv_10_7, i8 %tmp_267
  %x_assign_7_1 = xor i8 %sboxes_9_load_7, %sboxes_4_load_7
  %tmp_43_7_1 = xor i8 %sboxes_14_load_7, %x_assign_7_1
  %e_7_1 = xor i8 %sboxes_3_load_7, %tmp_43_7_1
  %tmp_269 = shl i8 %x_assign_7_1, 1
  %tmp_270 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7_1, i32 7)
  %rv_1_7_1 = xor i8 %tmp_269, 27
  %rv_2_7_1 = select i1 %tmp_270, i8 %rv_1_7_1, i8 %tmp_269
  %x_assign_1_7_1 = xor i8 %sboxes_14_load_7, %sboxes_9_load_7
  %tmp_271 = shl i8 %x_assign_1_7_1, 1
  %tmp_272 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_7_1, i32 7)
  %rv_4_7_1 = xor i8 %tmp_271, 27
  %rv_5_7_1 = select i1 %tmp_272, i8 %rv_4_7_1, i8 %tmp_271
  %x_assign_2_7_1 = xor i8 %sboxes_3_load_7, %sboxes_14_load_7
  %tmp_273 = shl i8 %x_assign_2_7_1, 1
  %tmp_274 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_7_1, i32 7)
  %rv_7_7_1 = xor i8 %tmp_273, 27
  %rv_8_7_1 = select i1 %tmp_274, i8 %rv_7_7_1, i8 %tmp_273
  %x_assign_3_7_1 = xor i8 %sboxes_3_load_7, %sboxes_4_load_7
  %tmp_275 = shl i8 %x_assign_3_7_1, 1
  %tmp_276 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_7_1, i32 7)
  %rv_10_7_1 = xor i8 %tmp_275, 27
  %rv_11_7_1 = select i1 %tmp_276, i8 %rv_10_7_1, i8 %tmp_275
  %x_assign_7_2 = xor i8 %sboxes_13_load_7, %sboxes_8_load_7
  %tmp_43_7_2 = xor i8 %sboxes_2_load_7, %x_assign_7_2
  %e_7_2 = xor i8 %sboxes_7_load_7, %tmp_43_7_2
  %tmp_277 = shl i8 %x_assign_7_2, 1
  %tmp_278 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7_2, i32 7)
  %rv_1_7_2 = xor i8 %tmp_277, 27
  %rv_2_7_2 = select i1 %tmp_278, i8 %rv_1_7_2, i8 %tmp_277
  %x_assign_1_7_2 = xor i8 %sboxes_2_load_7, %sboxes_13_load_7
  %tmp_279 = shl i8 %x_assign_1_7_2, 1
  %tmp_280 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_7_2, i32 7)
  %rv_4_7_2 = xor i8 %tmp_279, 27
  %rv_5_7_2 = select i1 %tmp_280, i8 %rv_4_7_2, i8 %tmp_279
  %x_assign_2_7_2 = xor i8 %sboxes_7_load_7, %sboxes_2_load_7
  %tmp_281 = shl i8 %x_assign_2_7_2, 1
  %tmp_282 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_7_2, i32 7)
  %rv_7_7_2 = xor i8 %tmp_281, 27
  %rv_8_7_2 = select i1 %tmp_282, i8 %rv_7_7_2, i8 %tmp_281
  %x_assign_3_7_2 = xor i8 %sboxes_7_load_7, %sboxes_8_load_7
  %tmp_283 = shl i8 %x_assign_3_7_2, 1
  %tmp_284 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_7_2, i32 7)
  %rv_10_7_2 = xor i8 %tmp_283, 27
  %rv_11_7_2 = select i1 %tmp_284, i8 %rv_10_7_2, i8 %tmp_283
  %x_assign_7_3 = xor i8 %sboxes_1_load_7, %sboxes_12_load_7
  %tmp_43_7_3 = xor i8 %sboxes_6_load_7, %x_assign_7_3
  %e_7_3 = xor i8 %sboxes_11_load_7, %tmp_43_7_3
  %tmp_285 = shl i8 %x_assign_7_3, 1
  %tmp_286 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7_3, i32 7)
  %rv_1_7_3 = xor i8 %tmp_285, 27
  %rv_2_7_3 = select i1 %tmp_286, i8 %rv_1_7_3, i8 %tmp_285
  %x_assign_1_7_3 = xor i8 %sboxes_6_load_7, %sboxes_1_load_7
  %tmp_287 = shl i8 %x_assign_1_7_3, 1
  %tmp_288 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_7_3, i32 7)
  %rv_4_7_3 = xor i8 %tmp_287, 27
  %rv_5_7_3 = select i1 %tmp_288, i8 %rv_4_7_3, i8 %tmp_287
  %x_assign_2_7_3 = xor i8 %sboxes_11_load_7, %sboxes_6_load_7
  %tmp_289 = shl i8 %x_assign_2_7_3, 1
  %tmp_290 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_7_3, i32 7)
  %rv_7_7_3 = xor i8 %tmp_289, 27
  %rv_8_7_3 = select i1 %tmp_290, i8 %rv_7_7_3, i8 %tmp_289
  %x_assign_3_7_3 = xor i8 %sboxes_11_load_7, %sboxes_12_load_7
  %tmp_291 = shl i8 %x_assign_3_7_3, 1
  %tmp_292 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_7_3, i32 7)
  %rv_10_7_3 = xor i8 %tmp_291, 27
  %rv_11_7_3 = select i1 %tmp_292, i8 %rv_10_7_3, i8 %tmp_291
  %tmp_56_7 = zext i8 %tmp_74_6 to i64
  %sboxes_16_addr_7 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_7
  %sboxes_16_load_7 = load i8* %sboxes_16_addr_7, align 1
  %tmp_57_7 = zext i8 %tmp_75_6 to i64
  %sboxes_17_addr_7 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_7
  %sboxes_17_load_7 = load i8* %sboxes_17_addr_7, align 1
  %tmp_58_7 = zext i8 %tmp_76_6 to i64
  %sboxes_18_addr_7 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_7
  %sboxes_18_load_7 = load i8* %sboxes_18_addr_7, align 1
  %tmp_59_7 = zext i8 %tmp_73_6 to i64
  %sboxes_19_addr_7 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_7
  %sboxes_19_load_7 = load i8* %sboxes_19_addr_7, align 1
  %tmp_60_7 = xor i8 %sboxes_16_load_7, -128
  %tmp_61_7 = xor i8 %tmp_60_7, %tmp_61_6
  %tmp_62_7 = xor i8 %sboxes_17_load_7, %tmp_62_6
  %tmp_63_7 = xor i8 %sboxes_18_load_7, %tmp_63_6
  %tmp_64_7 = xor i8 %sboxes_19_load_7, %tmp_64_6
  %tmp_65_7 = xor i8 %tmp_65_5, %tmp_60_7
  %tmp_66_7 = xor i8 %sboxes_17_load_7, %tmp_66_5
  %tmp_67_7 = xor i8 %sboxes_18_load_7, %tmp_67_5
  %tmp_68_7 = xor i8 %sboxes_19_load_7, %tmp_68_5
  %tmp_73_7 = xor i8 %tmp_60_7, %tmp_73_3
  %tmp_74_7 = xor i8 %sboxes_17_load_7, %tmp_74_3
  %tmp_75_7 = xor i8 %sboxes_18_load_7, %tmp_75_3
  %tmp_76_7 = xor i8 %sboxes_19_load_7, %tmp_76_3
  %tmp224 = xor i8 %sboxes_0_load_7, %rv_2_7
  %tmp225 = xor i8 %e_7, %tmp_61_7
  %tmp_81_7 = xor i8 %tmp225, %tmp224
  %tmp226 = xor i8 %sboxes_5_load_7, %e_7
  %tmp227 = xor i8 %rv_5_7, %tmp_62_7
  %tmp_81_7_1 = xor i8 %tmp227, %tmp226
  %tmp228 = xor i8 %sboxes_15_load_7, %x_assign_7
  %tmp229 = xor i8 %rv_8_7, %tmp_63_7
  %tmp_81_7_2 = xor i8 %tmp229, %tmp228
  %tmp230 = xor i8 %tmp_43_7, %tmp_64_7
  %tmp_81_7_3 = xor i8 %tmp230, %rv_11_7
  %tmp231 = xor i8 %sboxes_4_load_7, %rv_2_7_1
  %tmp232 = xor i8 %e_7_1, %tmp_65_7
  %tmp_81_7_4 = xor i8 %tmp232, %tmp231
  %tmp233 = xor i8 %sboxes_9_load_7, %e_7_1
  %tmp234 = xor i8 %rv_5_7_1, %tmp_66_7
  %tmp_81_7_5 = xor i8 %tmp234, %tmp233
  %tmp235 = xor i8 %sboxes_3_load_7, %x_assign_7_1
  %tmp236 = xor i8 %rv_8_7_1, %tmp_67_7
  %tmp_81_7_6 = xor i8 %tmp236, %tmp235
  %tmp237 = xor i8 %tmp_43_7_1, %tmp_68_7
  %tmp_81_7_7 = xor i8 %tmp237, %rv_11_7_1
  %tmp238 = xor i8 %sboxes_8_load_7, %rv_2_7_2
  %tmp240 = xor i8 %tmp_65_7, %tmp_69_6
  %tmp239 = xor i8 %tmp240, %e_7_2
  %tmp_81_7_8 = xor i8 %tmp239, %tmp238
  %tmp241 = xor i8 %sboxes_13_load_7, %e_7_2
  %tmp243 = xor i8 %tmp_66_7, %tmp_70_6
  %tmp242 = xor i8 %tmp243, %rv_5_7_2
  %tmp_81_7_9 = xor i8 %tmp242, %tmp241
  %tmp244 = xor i8 %sboxes_7_load_7, %x_assign_7_2
  %tmp246 = xor i8 %tmp_67_7, %tmp_71_6
  %tmp245 = xor i8 %tmp246, %rv_8_7_2
  %tmp_81_7_s = xor i8 %tmp245, %tmp244
  %tmp247 = xor i8 %rv_11_7_2, %tmp_43_7_2
  %tmp248 = xor i8 %tmp_68_7, %tmp_72_6
  %tmp_81_7_10 = xor i8 %tmp248, %tmp247
  %tmp249 = xor i8 %sboxes_12_load_7, %rv_2_7_3
  %tmp250 = xor i8 %e_7_3, %tmp_73_7
  %tmp_81_7_11 = xor i8 %tmp250, %tmp249
  %tmp251 = xor i8 %sboxes_1_load_7, %e_7_3
  %tmp252 = xor i8 %rv_5_7_3, %tmp_74_7
  %tmp_81_7_12 = xor i8 %tmp252, %tmp251
  %tmp253 = xor i8 %sboxes_11_load_7, %x_assign_7_3
  %tmp254 = xor i8 %rv_8_7_3, %tmp_75_7
  %tmp_81_7_13 = xor i8 %tmp254, %tmp253
  %tmp255 = xor i8 %tmp_43_7_3, %tmp_76_7
  %tmp_81_7_14 = xor i8 %tmp255, %rv_11_7_3
  %tmp_31_8 = zext i8 %tmp_81_7 to i64
  %sboxes_0_addr_8 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_31_8
  %sboxes_0_load_8 = load i8* %sboxes_0_addr_8, align 1
  %tmp_31_8_1 = zext i8 %tmp_81_7_1 to i64
  %sboxes_1_addr_8 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_31_8_1
  %sboxes_1_load_8 = load i8* %sboxes_1_addr_8, align 1
  %tmp_31_8_2 = zext i8 %tmp_81_7_2 to i64
  %sboxes_2_addr_8 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_31_8_2
  %sboxes_2_load_8 = load i8* %sboxes_2_addr_8, align 1
  %tmp_31_8_3 = zext i8 %tmp_81_7_3 to i64
  %sboxes_3_addr_8 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_31_8_3
  %sboxes_3_load_8 = load i8* %sboxes_3_addr_8, align 1
  %tmp_31_8_4 = zext i8 %tmp_81_7_4 to i64
  %sboxes_4_addr_8 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_31_8_4
  %sboxes_4_load_8 = load i8* %sboxes_4_addr_8, align 1
  %tmp_31_8_5 = zext i8 %tmp_81_7_5 to i64
  %sboxes_5_addr_8 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_31_8_5
  %sboxes_5_load_8 = load i8* %sboxes_5_addr_8, align 1
  %tmp_31_8_6 = zext i8 %tmp_81_7_6 to i64
  %sboxes_6_addr_8 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_31_8_6
  %sboxes_6_load_8 = load i8* %sboxes_6_addr_8, align 1
  %tmp_31_8_7 = zext i8 %tmp_81_7_7 to i64
  %sboxes_7_addr_8 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_31_8_7
  %sboxes_7_load_8 = load i8* %sboxes_7_addr_8, align 1
  %tmp_31_8_8 = zext i8 %tmp_81_7_8 to i64
  %sboxes_8_addr_8 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_31_8_8
  %sboxes_8_load_8 = load i8* %sboxes_8_addr_8, align 1
  %tmp_31_8_9 = zext i8 %tmp_81_7_9 to i64
  %sboxes_9_addr_8 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_31_8_9
  %sboxes_9_load_8 = load i8* %sboxes_9_addr_8, align 1
  %tmp_31_8_s = zext i8 %tmp_81_7_s to i64
  %sboxes_10_addr_8 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_31_8_s
  %sboxes_10_load_8 = load i8* %sboxes_10_addr_8, align 1
  %tmp_31_8_10 = zext i8 %tmp_81_7_10 to i64
  %sboxes_11_addr_8 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_31_8_10
  %sboxes_11_load_8 = load i8* %sboxes_11_addr_8, align 1
  %tmp_31_8_11 = zext i8 %tmp_81_7_11 to i64
  %sboxes_12_addr_8 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_31_8_11
  %sboxes_12_load_8 = load i8* %sboxes_12_addr_8, align 1
  %tmp_31_8_12 = zext i8 %tmp_81_7_12 to i64
  %sboxes_13_addr_8 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_31_8_12
  %sboxes_13_load_8 = load i8* %sboxes_13_addr_8, align 1
  %tmp_31_8_13 = zext i8 %tmp_81_7_13 to i64
  %sboxes_14_addr_8 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_31_8_13
  %sboxes_14_load_8 = load i8* %sboxes_14_addr_8, align 1
  %tmp_31_8_14 = zext i8 %tmp_81_7_14 to i64
  %sboxes_15_addr_8 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_31_8_14
  %sboxes_15_load_8 = load i8* %sboxes_15_addr_8, align 1
  %x_assign_8 = xor i8 %sboxes_5_load_8, %sboxes_0_load_8
  %tmp_43_8 = xor i8 %sboxes_10_load_8, %x_assign_8
  %e_8 = xor i8 %sboxes_15_load_8, %tmp_43_8
  %tmp_293 = shl i8 %x_assign_8, 1
  %tmp_294 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7)
  %rv_1_8 = xor i8 %tmp_293, 27
  %rv_2_8 = select i1 %tmp_294, i8 %rv_1_8, i8 %tmp_293
  %x_assign_1_8 = xor i8 %sboxes_10_load_8, %sboxes_5_load_8
  %tmp_295 = shl i8 %x_assign_1_8, 1
  %tmp_296 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_8, i32 7)
  %rv_4_8 = xor i8 %tmp_295, 27
  %rv_5_8 = select i1 %tmp_296, i8 %rv_4_8, i8 %tmp_295
  %x_assign_2_8 = xor i8 %sboxes_15_load_8, %sboxes_10_load_8
  %tmp_297 = shl i8 %x_assign_2_8, 1
  %tmp_298 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_8, i32 7)
  %rv_7_8 = xor i8 %tmp_297, 27
  %rv_8_8 = select i1 %tmp_298, i8 %rv_7_8, i8 %tmp_297
  %x_assign_3_8 = xor i8 %sboxes_15_load_8, %sboxes_0_load_8
  %tmp_299 = shl i8 %x_assign_3_8, 1
  %tmp_300 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_8, i32 7)
  %rv_10_8 = xor i8 %tmp_299, 27
  %rv_11_8 = select i1 %tmp_300, i8 %rv_10_8, i8 %tmp_299
  %x_assign_8_1 = xor i8 %sboxes_9_load_8, %sboxes_4_load_8
  %tmp_43_8_1 = xor i8 %sboxes_14_load_8, %x_assign_8_1
  %e_8_1 = xor i8 %sboxes_3_load_8, %tmp_43_8_1
  %tmp_301 = shl i8 %x_assign_8_1, 1
  %tmp_302 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8_1, i32 7)
  %rv_1_8_1 = xor i8 %tmp_301, 27
  %rv_2_8_1 = select i1 %tmp_302, i8 %rv_1_8_1, i8 %tmp_301
  %x_assign_1_8_1 = xor i8 %sboxes_14_load_8, %sboxes_9_load_8
  %tmp_303 = shl i8 %x_assign_1_8_1, 1
  %tmp_304 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_8_1, i32 7)
  %rv_4_8_1 = xor i8 %tmp_303, 27
  %rv_5_8_1 = select i1 %tmp_304, i8 %rv_4_8_1, i8 %tmp_303
  %x_assign_2_8_1 = xor i8 %sboxes_3_load_8, %sboxes_14_load_8
  %tmp_305 = shl i8 %x_assign_2_8_1, 1
  %tmp_306 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_8_1, i32 7)
  %rv_7_8_1 = xor i8 %tmp_305, 27
  %rv_8_8_1 = select i1 %tmp_306, i8 %rv_7_8_1, i8 %tmp_305
  %x_assign_3_8_1 = xor i8 %sboxes_3_load_8, %sboxes_4_load_8
  %tmp_307 = shl i8 %x_assign_3_8_1, 1
  %tmp_308 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_8_1, i32 7)
  %rv_10_8_1 = xor i8 %tmp_307, 27
  %rv_11_8_1 = select i1 %tmp_308, i8 %rv_10_8_1, i8 %tmp_307
  %x_assign_8_2 = xor i8 %sboxes_13_load_8, %sboxes_8_load_8
  %tmp_43_8_2 = xor i8 %sboxes_2_load_8, %x_assign_8_2
  %e_8_2 = xor i8 %sboxes_7_load_8, %tmp_43_8_2
  %tmp_309 = shl i8 %x_assign_8_2, 1
  %tmp_310 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8_2, i32 7)
  %rv_1_8_2 = xor i8 %tmp_309, 27
  %rv_2_8_2 = select i1 %tmp_310, i8 %rv_1_8_2, i8 %tmp_309
  %x_assign_1_8_2 = xor i8 %sboxes_2_load_8, %sboxes_13_load_8
  %tmp_311 = shl i8 %x_assign_1_8_2, 1
  %tmp_312 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_8_2, i32 7)
  %rv_4_8_2 = xor i8 %tmp_311, 27
  %rv_5_8_2 = select i1 %tmp_312, i8 %rv_4_8_2, i8 %tmp_311
  %x_assign_2_8_2 = xor i8 %sboxes_7_load_8, %sboxes_2_load_8
  %tmp_313 = shl i8 %x_assign_2_8_2, 1
  %tmp_314 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_8_2, i32 7)
  %rv_7_8_2 = xor i8 %tmp_313, 27
  %rv_8_8_2 = select i1 %tmp_314, i8 %rv_7_8_2, i8 %tmp_313
  %x_assign_3_8_2 = xor i8 %sboxes_7_load_8, %sboxes_8_load_8
  %tmp_315 = shl i8 %x_assign_3_8_2, 1
  %tmp_316 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_8_2, i32 7)
  %rv_10_8_2 = xor i8 %tmp_315, 27
  %rv_11_8_2 = select i1 %tmp_316, i8 %rv_10_8_2, i8 %tmp_315
  %x_assign_8_3 = xor i8 %sboxes_1_load_8, %sboxes_12_load_8
  %tmp_43_8_3 = xor i8 %sboxes_6_load_8, %x_assign_8_3
  %e_8_3 = xor i8 %sboxes_11_load_8, %tmp_43_8_3
  %tmp_317 = shl i8 %x_assign_8_3, 1
  %tmp_318 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8_3, i32 7)
  %rv_1_8_3 = xor i8 %tmp_317, 27
  %rv_2_8_3 = select i1 %tmp_318, i8 %rv_1_8_3, i8 %tmp_317
  %x_assign_1_8_3 = xor i8 %sboxes_6_load_8, %sboxes_1_load_8
  %tmp_319 = shl i8 %x_assign_1_8_3, 1
  %tmp_320 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1_8_3, i32 7)
  %rv_4_8_3 = xor i8 %tmp_319, 27
  %rv_5_8_3 = select i1 %tmp_320, i8 %rv_4_8_3, i8 %tmp_319
  %x_assign_2_8_3 = xor i8 %sboxes_11_load_8, %sboxes_6_load_8
  %tmp_321 = shl i8 %x_assign_2_8_3, 1
  %tmp_322 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2_8_3, i32 7)
  %rv_7_8_3 = xor i8 %tmp_321, 27
  %rv_8_8_3 = select i1 %tmp_322, i8 %rv_7_8_3, i8 %tmp_321
  %x_assign_3_8_3 = xor i8 %sboxes_11_load_8, %sboxes_12_load_8
  %tmp_323 = shl i8 %x_assign_3_8_3, 1
  %tmp_324 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3_8_3, i32 7)
  %rv_10_8_3 = xor i8 %tmp_323, 27
  %rv_11_8_3 = select i1 %tmp_324, i8 %rv_10_8_3, i8 %tmp_323
  %tmp_56_8 = zext i8 %tmp_74_7 to i64
  %sboxes_16_addr_8 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_56_8
  %sboxes_16_load_8 = load i8* %sboxes_16_addr_8, align 1
  %tmp_57_8 = zext i8 %tmp_75_7 to i64
  %sboxes_17_addr_8 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_57_8
  %sboxes_17_load_8 = load i8* %sboxes_17_addr_8, align 1
  %tmp_58_8 = zext i8 %tmp_76_7 to i64
  %sboxes_18_addr_8 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_58_8
  %sboxes_18_load_8 = load i8* %sboxes_18_addr_8, align 1
  %tmp_59_8 = zext i8 %tmp_73_7 to i64
  %sboxes_19_addr_8 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_59_8
  %sboxes_19_load_8 = load i8* %sboxes_19_addr_8, align 1
  %tmp256 = xor i8 %tmp_61_7, 27
  %tmp_61_8 = xor i8 %tmp256, %sboxes_16_load_8
  %tmp_62_8 = xor i8 %sboxes_17_load_8, %tmp_62_7
  %tmp_63_8 = xor i8 %sboxes_18_load_8, %tmp_63_7
  %tmp_64_8 = xor i8 %sboxes_19_load_8, %tmp_64_7
  %tmp_69_8 = xor i8 %tmp_69_6, %tmp_61_8
  %tmp_70_8 = xor i8 %tmp_70_6, %tmp_62_8
  %tmp_71_8 = xor i8 %tmp_71_6, %tmp_63_8
  %tmp_72_8 = xor i8 %tmp_72_6, %tmp_64_8
  %tmp_73_8 = xor i8 %tmp_69_8, %tmp_73_7
  %tmp_74_8 = xor i8 %tmp_70_8, %tmp_74_7
  %tmp_75_8 = xor i8 %tmp_71_8, %tmp_75_7
  %tmp_76_8 = xor i8 %tmp_72_8, %tmp_76_7
  %tmp257 = xor i8 %sboxes_0_load_8, %rv_2_8
  %tmp258 = xor i8 %e_8, %tmp_61_8
  %tmp_81_8 = xor i8 %tmp258, %tmp257
  %tmp259 = xor i8 %sboxes_5_load_8, %e_8
  %tmp260 = xor i8 %rv_5_8, %tmp_62_8
  %tmp_81_8_1 = xor i8 %tmp260, %tmp259
  %tmp261 = xor i8 %sboxes_15_load_8, %x_assign_8
  %tmp262 = xor i8 %rv_8_8, %tmp_63_8
  %tmp_81_8_2 = xor i8 %tmp262, %tmp261
  %tmp263 = xor i8 %tmp_43_8, %tmp_64_8
  %tmp_81_8_3 = xor i8 %tmp263, %rv_11_8
  %tmp264 = xor i8 %sboxes_4_load_8, %rv_2_8_1
  %tmp266 = xor i8 %tmp_61_8, %tmp_65_7
  %tmp265 = xor i8 %tmp266, %e_8_1
  %tmp_81_8_4 = xor i8 %tmp265, %tmp264
  %tmp267 = xor i8 %sboxes_9_load_8, %e_8_1
  %tmp269 = xor i8 %tmp_62_8, %tmp_66_7
  %tmp268 = xor i8 %tmp269, %rv_5_8_1
  %tmp_81_8_5 = xor i8 %tmp268, %tmp267
  %tmp270 = xor i8 %sboxes_3_load_8, %x_assign_8_1
  %tmp272 = xor i8 %tmp_63_8, %tmp_67_7
  %tmp271 = xor i8 %tmp272, %rv_8_8_1
  %tmp_81_8_6 = xor i8 %tmp271, %tmp270
  %tmp273 = xor i8 %rv_11_8_1, %tmp_43_8_1
  %tmp274 = xor i8 %tmp_64_8, %tmp_68_7
  %tmp_81_8_7 = xor i8 %tmp274, %tmp273
  %tmp275 = xor i8 %sboxes_8_load_8, %rv_2_8_2
  %tmp276 = xor i8 %e_8_2, %tmp_69_8
  %tmp_81_8_8 = xor i8 %tmp276, %tmp275
  %tmp277 = xor i8 %sboxes_13_load_8, %e_8_2
  %tmp278 = xor i8 %rv_5_8_2, %tmp_70_8
  %tmp_81_8_9 = xor i8 %tmp278, %tmp277
  %tmp279 = xor i8 %sboxes_7_load_8, %x_assign_8_2
  %tmp280 = xor i8 %rv_8_8_2, %tmp_71_8
  %tmp_81_8_s = xor i8 %tmp280, %tmp279
  %tmp281 = xor i8 %tmp_43_8_2, %tmp_72_8
  %tmp_81_8_10 = xor i8 %tmp281, %rv_11_8_2
  %tmp282 = xor i8 %sboxes_12_load_8, %rv_2_8_3
  %tmp283 = xor i8 %e_8_3, %tmp_73_8
  %tmp_81_8_11 = xor i8 %tmp283, %tmp282
  %tmp284 = xor i8 %sboxes_1_load_8, %e_8_3
  %tmp285 = xor i8 %rv_5_8_3, %tmp_74_8
  %tmp_81_8_12 = xor i8 %tmp285, %tmp284
  %tmp286 = xor i8 %sboxes_11_load_8, %x_assign_8_3
  %tmp287 = xor i8 %rv_8_8_3, %tmp_75_8
  %tmp_81_8_13 = xor i8 %tmp287, %tmp286
  %tmp288 = xor i8 %tmp_43_8_3, %tmp_76_8
  %tmp_81_8_14 = xor i8 %tmp288, %rv_11_8_3
  %tmp_37 = zext i8 %tmp_81_8 to i64
  %sboxes_0_addr_9 = getelementptr [256 x i8]* @sboxes_0, i64 0, i64 %tmp_37
  %sboxes_0_load_9 = load i8* %sboxes_0_addr_9, align 1
  %tmp_29_1 = zext i8 %tmp_81_8_1 to i64
  %sboxes_1_addr_9 = getelementptr [256 x i8]* @sboxes_1, i64 0, i64 %tmp_29_1
  %temp = load i8* %sboxes_1_addr_9, align 1
  %tmp_29_2 = zext i8 %tmp_81_8_2 to i64
  %sboxes_2_addr_9 = getelementptr [256 x i8]* @sboxes_2, i64 0, i64 %tmp_29_2
  %sboxes_2_load_9 = load i8* %sboxes_2_addr_9, align 1
  %tmp_29_3 = zext i8 %tmp_81_8_3 to i64
  %sboxes_3_addr_9 = getelementptr [256 x i8]* @sboxes_3, i64 0, i64 %tmp_29_3
  %temp_3 = load i8* %sboxes_3_addr_9, align 1
  %tmp_29_4 = zext i8 %tmp_81_8_4 to i64
  %sboxes_4_addr_9 = getelementptr [256 x i8]* @sboxes_4, i64 0, i64 %tmp_29_4
  %sboxes_4_load_9 = load i8* %sboxes_4_addr_9, align 1
  %tmp_29_5 = zext i8 %tmp_81_8_5 to i64
  %sboxes_5_addr_9 = getelementptr [256 x i8]* @sboxes_5, i64 0, i64 %tmp_29_5
  %sboxes_5_load_9 = load i8* %sboxes_5_addr_9, align 1
  %tmp_29_6 = zext i8 %tmp_81_8_6 to i64
  %sboxes_6_addr_9 = getelementptr [256 x i8]* @sboxes_6, i64 0, i64 %tmp_29_6
  %sboxes_6_load_9 = load i8* %sboxes_6_addr_9, align 1
  %tmp_29_7 = zext i8 %tmp_81_8_7 to i64
  %sboxes_7_addr_9 = getelementptr [256 x i8]* @sboxes_7, i64 0, i64 %tmp_29_7
  %sboxes_7_load_9 = load i8* %sboxes_7_addr_9, align 1
  %tmp_29_8 = zext i8 %tmp_81_8_8 to i64
  %sboxes_8_addr_9 = getelementptr [256 x i8]* @sboxes_8, i64 0, i64 %tmp_29_8
  %sboxes_8_load_9 = load i8* %sboxes_8_addr_9, align 1
  %tmp_29_9 = zext i8 %tmp_81_8_9 to i64
  %sboxes_9_addr_9 = getelementptr [256 x i8]* @sboxes_9, i64 0, i64 %tmp_29_9
  %sboxes_9_load_9 = load i8* %sboxes_9_addr_9, align 1
  %tmp_29_s = zext i8 %tmp_81_8_s to i64
  %sboxes_10_addr_9 = getelementptr [256 x i8]* @sboxes_10, i64 0, i64 %tmp_29_s
  %temp_1 = load i8* %sboxes_10_addr_9, align 1
  %tmp_29_10 = zext i8 %tmp_81_8_10 to i64
  %sboxes_11_addr_9 = getelementptr [256 x i8]* @sboxes_11, i64 0, i64 %tmp_29_10
  %sboxes_11_load_9 = load i8* %sboxes_11_addr_9, align 1
  %tmp_29_11 = zext i8 %tmp_81_8_11 to i64
  %sboxes_12_addr_9 = getelementptr [256 x i8]* @sboxes_12, i64 0, i64 %tmp_29_11
  %sboxes_12_load_9 = load i8* %sboxes_12_addr_9, align 1
  %tmp_29_12 = zext i8 %tmp_81_8_12 to i64
  %sboxes_13_addr_9 = getelementptr [256 x i8]* @sboxes_13, i64 0, i64 %tmp_29_12
  %sboxes_13_load_9 = load i8* %sboxes_13_addr_9, align 1
  %tmp_29_13 = zext i8 %tmp_81_8_13 to i64
  %sboxes_14_addr_9 = getelementptr [256 x i8]* @sboxes_14, i64 0, i64 %tmp_29_13
  %temp_2 = load i8* %sboxes_14_addr_9, align 1
  %tmp_29_14 = zext i8 %tmp_81_8_14 to i64
  %sboxes_15_addr_9 = getelementptr [256 x i8]* @sboxes_15, i64 0, i64 %tmp_29_14
  %sboxes_15_load_9 = load i8* %sboxes_15_addr_9, align 1
  %tmp_7 = zext i8 %tmp_74_8 to i64
  %sboxes_16_addr_9 = getelementptr [256 x i8]* @sboxes_16, i64 0, i64 %tmp_7
  %buf0 = load i8* %sboxes_16_addr_9, align 1
  %tmp_8 = zext i8 %tmp_75_8 to i64
  %sboxes_17_addr_9 = getelementptr [256 x i8]* @sboxes_17, i64 0, i64 %tmp_8
  %buf1 = load i8* %sboxes_17_addr_9, align 1
  %tmp_9 = zext i8 %tmp_76_8 to i64
  %sboxes_18_addr_9 = getelementptr [256 x i8]* @sboxes_18, i64 0, i64 %tmp_9
  %buf2 = load i8* %sboxes_18_addr_9, align 1
  %tmp_s = zext i8 %tmp_73_8 to i64
  %sboxes_19_addr_9 = getelementptr [256 x i8]* @sboxes_19, i64 0, i64 %tmp_s
  %buf3 = load i8* %sboxes_19_addr_9, align 1
  %tmp_10 = xor i8 %buf0, 54
  %tmp_15 = xor i8 %tmp_65_7, %tmp_10
  %tmp_16 = xor i8 %buf1, %tmp_66_7
  %tmp_17 = xor i8 %buf2, %tmp_67_7
  %tmp_18 = xor i8 %buf3, %tmp_68_7
  %tmp289 = xor i8 %tmp_10, %tmp_61_8
  %tmp_38 = xor i8 %tmp289, %sboxes_0_load_9
  %tmp290 = xor i8 %sboxes_5_load_9, %tmp_62_8
  %tmp_34_1 = xor i8 %tmp290, %buf1
  %tmp291 = xor i8 %temp_1, %tmp_63_8
  %tmp_34_2 = xor i8 %tmp291, %buf2
  %tmp292 = xor i8 %sboxes_15_load_9, %tmp_64_8
  %tmp_34_3 = xor i8 %tmp292, %buf3
  %tmp_34_4 = xor i8 %sboxes_4_load_9, %tmp_15
  %tmp_34_5 = xor i8 %sboxes_9_load_9, %tmp_16
  %tmp_34_6 = xor i8 %temp_2, %tmp_17
  %tmp_34_7 = xor i8 %temp_3, %tmp_18
  %tmp293 = xor i8 %tmp_69_8, %tmp_15
  %tmp_34_8 = xor i8 %tmp293, %sboxes_8_load_9
  %tmp294 = xor i8 %tmp_70_8, %tmp_16
  %tmp_34_9 = xor i8 %tmp294, %sboxes_13_load_9
  %tmp295 = xor i8 %tmp_71_8, %tmp_17
  %tmp_34_s = xor i8 %tmp295, %sboxes_2_load_9
  %tmp296 = xor i8 %tmp_72_8, %tmp_18
  %tmp_34_10 = xor i8 %tmp296, %sboxes_7_load_9
  %tmp297 = xor i8 %tmp_15, %tmp_73_7
  %tmp_34_11 = xor i8 %tmp297, %sboxes_12_load_9
  %tmp298 = xor i8 %tmp_16, %tmp_74_7
  %tmp_34_12 = xor i8 %tmp298, %temp
  %tmp299 = xor i8 %tmp_17, %tmp_75_7
  %tmp_34_13 = xor i8 %tmp299, %sboxes_6_load_9
  %tmp300 = xor i8 %tmp_18, %tmp_76_7
  %tmp_34_14 = xor i8 %tmp300, %sboxes_11_load_9
  %p_Result_8_s = call i128 @_ssdm_op_BitConcatenate.i128.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_38, i8 %tmp_34_1, i8 %tmp_34_2, i8 %tmp_34_3, i8 %tmp_34_4, i8 %tmp_34_5, i8 %tmp_34_6, i8 %tmp_34_7, i8 %tmp_34_8, i8 %tmp_34_9, i8 %tmp_34_s, i8 %tmp_34_10, i8 %tmp_34_11, i8 %tmp_34_12, i8 %tmp_34_13, i8 %tmp_34_14)
  ret i128 %p_Result_8_s
}

define weak void @_ssdm_op_Write.ap_none.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i128P(i128*, i128) {
entry:
  store i128 %1, i128* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.ap_bus.i128P(i128*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak i128 @_ssdm_op_Read.ap_vld.i128(i128) {
entry:
  ret i128 %0
}

define weak i1 @_ssdm_op_Read.ap_none.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i128 @_ssdm_op_Read.ap_none.i128P(i128*) {
entry:
  %empty = load i128* %0
  ret i128 %empty
}

define weak i128 @_ssdm_op_Read.ap_bus.volatile.i128P(i128*) {
entry:
  %empty = load i128* %0
  ret i128 %empty
}

define weak i128 @_ssdm_op_Read.ap_auto.i128(i128) {
entry:
  ret i128 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_12 = trunc i128 %empty to i8
  ret i8 %empty_12
}

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i28
  ret i28 %empty_13
}

declare i24 @_ssdm_op_PartSelect.i24.i128.i32.i32(i128, i32, i32) nounwind readnone

define weak i127 @_ssdm_op_PartSelect.i127.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_14 = trunc i128 %empty to i127
  ret i127 %empty_14
}

declare i1 @_ssdm_op_PartSelect.i1.i128.i32.i32(i128, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_15 = shl i8 1, %empty
  %empty_16 = and i8 %0, %empty_15
  %empty_17 = icmp ne i8 %empty_16, 0
  ret i1 %empty_17
}

define weak i1 @_ssdm_op_BitSelect.i1.i128.i32(i128, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i128
  %empty_18 = shl i128 1, %empty
  %empty_19 = and i128 %0, %empty_18
  %empty_20 = icmp ne i128 %empty_19, 0
  ret i1 %empty_20
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i128 @_ssdm_op_BitConcatenate.i128.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %14 to i16
  %empty_21 = zext i8 %15 to i16
  %empty_22 = shl i16 %empty, 8
  %empty_23 = or i16 %empty_22, %empty_21
  %empty_24 = zext i8 %13 to i24
  %empty_25 = zext i16 %empty_23 to i24
  %empty_26 = shl i24 %empty_24, 16
  %empty_27 = or i24 %empty_26, %empty_25
  %empty_28 = zext i8 %12 to i32
  %empty_29 = zext i24 %empty_27 to i32
  %empty_30 = shl i32 %empty_28, 24
  %empty_31 = or i32 %empty_30, %empty_29
  %empty_32 = zext i8 %11 to i40
  %empty_33 = zext i32 %empty_31 to i40
  %empty_34 = shl i40 %empty_32, 32
  %empty_35 = or i40 %empty_34, %empty_33
  %empty_36 = zext i8 %10 to i48
  %empty_37 = zext i40 %empty_35 to i48
  %empty_38 = shl i48 %empty_36, 40
  %empty_39 = or i48 %empty_38, %empty_37
  %empty_40 = zext i8 %9 to i56
  %empty_41 = zext i48 %empty_39 to i56
  %empty_42 = shl i56 %empty_40, 48
  %empty_43 = or i56 %empty_42, %empty_41
  %empty_44 = zext i8 %8 to i64
  %empty_45 = zext i56 %empty_43 to i64
  %empty_46 = shl i64 %empty_44, 56
  %empty_47 = or i64 %empty_46, %empty_45
  %empty_48 = zext i8 %7 to i72
  %empty_49 = zext i64 %empty_47 to i72
  %empty_50 = shl i72 %empty_48, 64
  %empty_51 = or i72 %empty_50, %empty_49
  %empty_52 = zext i8 %6 to i80
  %empty_53 = zext i72 %empty_51 to i80
  %empty_54 = shl i80 %empty_52, 72
  %empty_55 = or i80 %empty_54, %empty_53
  %empty_56 = zext i8 %5 to i88
  %empty_57 = zext i80 %empty_55 to i88
  %empty_58 = shl i88 %empty_56, 80
  %empty_59 = or i88 %empty_58, %empty_57
  %empty_60 = zext i8 %4 to i96
  %empty_61 = zext i88 %empty_59 to i96
  %empty_62 = shl i96 %empty_60, 88
  %empty_63 = or i96 %empty_62, %empty_61
  %empty_64 = zext i8 %3 to i104
  %empty_65 = zext i96 %empty_63 to i104
  %empty_66 = shl i104 %empty_64, 96
  %empty_67 = or i104 %empty_66, %empty_65
  %empty_68 = zext i8 %2 to i112
  %empty_69 = zext i104 %empty_67 to i112
  %empty_70 = shl i112 %empty_68, 104
  %empty_71 = or i112 %empty_70, %empty_69
  %empty_72 = zext i8 %1 to i120
  %empty_73 = zext i112 %empty_71 to i120
  %empty_74 = shl i120 %empty_72, 112
  %empty_75 = or i120 %empty_74, %empty_73
  %empty_76 = zext i8 %0 to i128
  %empty_77 = zext i120 %empty_75 to i128
  %empty_78 = shl i128 %empty_76, 120
  %empty_79 = or i128 %empty_78, %empty_77
  ret i128 %empty_79
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i104.i24(i104, i24) nounwind readnone {
entry:
  %empty = zext i104 %0 to i128
  %empty_80 = zext i24 %1 to i128
  %empty_81 = shl i128 %empty, 24
  %empty_82 = or i128 %empty_81, %empty_80
  ret i128 %empty_82
}

declare void @_GLOBAL__I_a19() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !0, !7, !0, !13, !15, !21, !24, !27, !27, !0, !0, !0, !0, !0, !0, !30, !36, !36, !40, !40, !40, !0, !0, !45, !48, !51, !57, !61, !64, !67, !71, !74, !78, !81, !85, !87, !89, !91, !97, !103, !107, !111, !117, !120, !120, !123, !123, !0, !0, !125, !125, !0, !0, !127, !30, !129, !129, !131, !131, !0, !0, !132, !132, !134, !135, !138, !138, !0, !140, !0, !0, !143, !145, !147, !149, !0, !0, !0, !132, !132, !151, !151, !152, !152, !152, !0, !0, !155, !155, !155, !0, !0, !138, !138, !157, !159, !159, !160, !163, !165, !167, !169, !169, !171, !173, !171, !0, !0, !0, !169, !169, !174, !0, !0, !176, !176, !176, !0, !152, !152, !0, !0, !138, !138, !0, !178, !179, !179, !30, !36, !36, !159, !159, !0, !0, !181, !181, !181, !0, !0, !0, !138, !138, !0, !21, !183, !185, !185, !187, !187, !0, !0, !159, !159, !40, !40, !40, !0, !0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!189}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"byte"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"rcon"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"inptext", metadata !"key", metadata !"outtext"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<128> &"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!30 = metadata !{null, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !6}
!31 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!32 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!34 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!36 = metadata !{null, metadata !37, metadata !17, metadata !38, metadata !19, metadata !39, metadata !6}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, false>*", metadata !"int", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!40 = metadata !{null, metadata !41, metadata !9, metadata !42, metadata !43, metadata !44, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!45 = metadata !{null, metadata !41, metadata !9, metadata !46, metadata !11, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"user_key_raw"}
!51 = metadata !{null, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !6}
!52 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1}
!53 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"ap_uint<128>*", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"_Bool*", metadata !"_Bool", metadata !"ap_uint<128>*", metadata !"_Bool*", metadata !"ap_uint<128>*", metadata !"_Bool*", metadata !"ap_uint<128>", metadata !"_Bool*", metadata !"_Bool*", metadata !"_Bool*", metadata !"_Bool*"}
!55 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"device_key_ocm_addr", metadata !"ocm", metadata !"iv", metadata !"encrypted_header_old", metadata !"tag_header_old", metadata !"encrypted_header_new", metadata !"tag_header_new", metadata !"user_key", metadata !"user_key_valid", metadata !"writing_done_in", metadata !"derived_key_out", metadata !"derived_key_valid", metadata !"master_key_out", metadata !"master_key_out_valid", metadata !"iv_out", metadata !"iv_out_valid", metadata !"decrypted_new_header_out", metadata !"decrypted_new_header_out_valid", metadata !"reset_key_out"}
!57 = metadata !{null, metadata !58, metadata !17, metadata !59, metadata !19, metadata !60, metadata !6}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"char*", metadata !"int"}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"one", metadata !"two", metadata !"length"}
!61 = metadata !{null, metadata !37, metadata !17, metadata !62, metadata !19, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar", metadata !"uint"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"val", metadata !"length"}
!64 = metadata !{null, metadata !58, metadata !17, metadata !65, metadata !19, metadata !66, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uint"}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"src", metadata !"length"}
!67 = metadata !{null, metadata !68, metadata !32, metadata !69, metadata !34, metadata !70, metadata !6}
!68 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"int"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"bit"}
!71 = metadata !{null, metadata !16, metadata !17, metadata !72, metadata !19, metadata !73, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"out"}
!74 = metadata !{null, metadata !75, metadata !32, metadata !76, metadata !34, metadata !77, metadata !6}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"out"}
!78 = metadata !{null, metadata !31, metadata !32, metadata !79, metadata !34, metadata !80, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>", metadata !"ap_uint<128>"}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!81 = metadata !{null, metadata !82, metadata !17, metadata !83, metadata !19, metadata !84, metadata !6}
!82 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"ap_uint<128>"}
!84 = metadata !{metadata !"kernel_arg_name", metadata !"h", metadata !"d", metadata !"x_prev"}
!85 = metadata !{null, metadata !31, metadata !32, metadata !79, metadata !34, metadata !86, metadata !6}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"hash_key", metadata !"iv"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !88, metadata !6}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"counter"}
!89 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !90, metadata !6}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"key"}
!91 = metadata !{null, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !6}
!92 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 0}
!93 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"uint"}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"hash_key_out", metadata !"ghash_out", metadata !"aad", metadata !"aad_length"}
!97 = metadata !{null, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !6}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0}
!99 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"uint", metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"_Bool"}
!101 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"data_in", metadata !"data_out", metadata !"length", metadata !"counter", metadata !"hash_key", metadata !"ghash_prev", metadata !"encrypt"}
!103 = metadata !{null, metadata !104, metadata !93, metadata !105, metadata !95, metadata !106, metadata !6}
!104 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"uint", metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"ap_uint<128>"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"aad_length", metadata !"data_length", metadata !"hash_key", metadata !"ghash_prev", metadata !"encrypted_counter_zero"}
!107 = metadata !{null, metadata !108, metadata !99, metadata !109, metadata !101, metadata !110, metadata !6}
!108 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"uint", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"uint", metadata !"ap_uint<128>"}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"iv", metadata !"ct", metadata !"length", metadata !"pt", metadata !"aad", metadata !"aad_length", metadata !"tag_in"}
!111 = metadata !{null, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !6}
!112 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0}
!113 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<128>", metadata !"ap_uint<128>", metadata !"ap_uint<128>*", metadata !"uint", metadata !"ap_uint<128>*", metadata !"ap_uint<128>*", metadata !"uint"}
!115 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"key", metadata !"iv", metadata !"pt", metadata !"length", metadata !"ct", metadata !"aad", metadata !"aad_length"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !119, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false> &"}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!120 = metadata !{null, metadata !31, metadata !32, metadata !121, metadata !34, metadata !122, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<64, false, true> &", metadata !"struct ap_int_base<64, false, true> &"}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!123 = metadata !{null, metadata !8, metadata !9, metadata !124, metadata !11, metadata !26, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!125 = metadata !{null, metadata !8, metadata !9, metadata !126, metadata !11, metadata !29, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!127 = metadata !{null, metadata !8, metadata !9, metadata !128, metadata !11, metadata !26, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!129 = metadata !{null, metadata !37, metadata !17, metadata !130, metadata !19, metadata !39, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!131 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !29, metadata !6}
!132 = metadata !{null, metadata !8, metadata !9, metadata !133, metadata !11, metadata !29, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!134 = metadata !{null, metadata !8, metadata !9, metadata !126, metadata !11, metadata !23, metadata !6}
!135 = metadata !{null, metadata !31, metadata !32, metadata !136, metadata !34, metadata !137, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!137 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!138 = metadata !{null, metadata !8, metadata !9, metadata !139, metadata !11, metadata !29, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!140 = metadata !{null, metadata !31, metadata !32, metadata !141, metadata !34, metadata !142, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!142 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!143 = metadata !{null, metadata !31, metadata !32, metadata !144, metadata !34, metadata !137, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &", metadata !"int"}
!145 = metadata !{null, metadata !31, metadata !32, metadata !146, metadata !34, metadata !142, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &", metadata !"const ap_int_base<32, true> &"}
!147 = metadata !{null, metadata !31, metadata !32, metadata !148, metadata !34, metadata !137, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!149 = metadata !{null, metadata !31, metadata !32, metadata !150, metadata !34, metadata !142, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!151 = metadata !{null, metadata !8, metadata !9, metadata !128, metadata !11, metadata !29, metadata !6}
!152 = metadata !{null, metadata !8, metadata !9, metadata !153, metadata !11, metadata !154, metadata !6}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, false> &"}
!154 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!155 = metadata !{null, metadata !8, metadata !9, metadata !156, metadata !11, metadata !154, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<64, struct ap_int_base<64, false, true>, 64, struct ap_int_base<64, false, true> > &"}
!157 = metadata !{null, metadata !8, metadata !9, metadata !158, metadata !11, metadata !119, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !139, metadata !11, metadata !26, metadata !6}
!160 = metadata !{null, metadata !31, metadata !32, metadata !161, metadata !34, metadata !162, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"signed char", metadata !"_Bool"}
!162 = metadata !{metadata !"kernel_arg_name", metadata !"mode", metadata !"sign"}
!163 = metadata !{null, metadata !31, metadata !32, metadata !164, metadata !34, metadata !162, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"enum BaseMode", metadata !"_Bool"}
!165 = metadata !{null, metadata !31, metadata !32, metadata !166, metadata !34, metadata !142, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &", metadata !"int"}
!167 = metadata !{null, metadata !8, metadata !9, metadata !139, metadata !11, metadata !168, metadata !6}
!168 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!169 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !29, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &"}
!171 = metadata !{null, metadata !31, metadata !32, metadata !172, metadata !34, metadata !142, metadata !6}
!172 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &", metadata !"const ap_int_base<128, false> &"}
!173 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !23, metadata !6}
!174 = metadata !{null, metadata !8, metadata !9, metadata !175, metadata !11, metadata !23, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile ap_uint<128> &"}
!176 = metadata !{null, metadata !8, metadata !9, metadata !177, metadata !11, metadata !154, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<104, struct ap_int_base<104, false, false>, 128, struct ap_range_ref<128, false> > &"}
!178 = metadata !{null, metadata !8, metadata !9, metadata !153, metadata !11, metadata !119, metadata !6}
!179 = metadata !{null, metadata !31, metadata !32, metadata !180, metadata !34, metadata !122, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<104, false, false> &", metadata !"struct ap_range_ref<128, false> &"}
!181 = metadata !{null, metadata !8, metadata !9, metadata !182, metadata !11, metadata !154, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<128, struct ap_int_base<128, false, false>, 8, struct ap_int_base<8, false, true> > &"}
!183 = metadata !{null, metadata !8, metadata !9, metadata !184, metadata !11, metadata !119, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!185 = metadata !{null, metadata !31, metadata !32, metadata !186, metadata !34, metadata !122, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<128, false, false> &", metadata !"struct ap_int_base<8, false, true> &"}
!187 = metadata !{null, metadata !8, metadata !9, metadata !188, metadata !11, metadata !26, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!189 = metadata !{metadata !190, [2 x i32]* @llvm_global_ctors_0}
!190 = metadata !{metadata !191}
!191 = metadata !{i32 0, i32 31, metadata !192}
!192 = metadata !{metadata !193}
!193 = metadata !{metadata !"llvm.global_ctors.0", metadata !194, metadata !"", i32 0, i32 31}
!194 = metadata !{metadata !195}
!195 = metadata !{i32 0, i32 1, i32 1}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 0, i32 31, metadata !198}
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !"device_key_ocm_addr", metadata !200, metadata !"unsigned int", i32 0, i32 31}
!200 = metadata !{metadata !201}
!201 = metadata !{i32 0, i32 0, i32 0}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 127, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"ocm.V", metadata !206, metadata !"uint128", i32 0, i32 127}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 0, i32 1}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 0, i32 127, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"iv.V", metadata !200, metadata !"uint128", i32 0, i32 127}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 127, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"encrypted_header_old.V", metadata !216, metadata !"uint128", i32 0, i32 127}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 255, i32 1}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 127, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"tag_header_old.V", metadata !200, metadata !"uint128", i32 0, i32 127}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 0, i32 127, metadata !224}
!224 = metadata !{metadata !225}
!225 = metadata !{metadata !"encrypted_header_new.V", metadata !216, metadata !"uint128", i32 0, i32 127}
!226 = metadata !{metadata !227}
!227 = metadata !{i32 0, i32 127, metadata !228}
!228 = metadata !{metadata !229}
!229 = metadata !{metadata !"tag_header_new.V", metadata !200, metadata !"uint128", i32 0, i32 127}
!230 = metadata !{metadata !231}
!231 = metadata !{i32 0, i32 127, metadata !232}
!232 = metadata !{metadata !233}
!233 = metadata !{metadata !"user_key.V", metadata !206, metadata !"uint128", i32 0, i32 127}
!234 = metadata !{metadata !235}
!235 = metadata !{i32 0, i32 0, metadata !236}
!236 = metadata !{metadata !237}
!237 = metadata !{metadata !"user_key_valid", metadata !206, metadata !"bool", i32 0, i32 0}
!238 = metadata !{metadata !239}
!239 = metadata !{i32 0, i32 0, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"writing_done_in", metadata !200, metadata !"bool", i32 0, i32 0}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 0, i32 127, metadata !244}
!244 = metadata !{metadata !245}
!245 = metadata !{metadata !"derived_key_out.V", metadata !206, metadata !"uint128", i32 0, i32 127}
!246 = metadata !{metadata !247}
!247 = metadata !{i32 0, i32 0, metadata !248}
!248 = metadata !{metadata !249}
!249 = metadata !{metadata !"derived_key_valid", metadata !206, metadata !"bool", i32 0, i32 0}
!250 = metadata !{metadata !251}
!251 = metadata !{i32 0, i32 127, metadata !252}
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !"master_key_out.V", metadata !206, metadata !"uint128", i32 0, i32 127}
!254 = metadata !{metadata !255}
!255 = metadata !{i32 0, i32 0, metadata !256}
!256 = metadata !{metadata !257}
!257 = metadata !{metadata !"master_key_out_valid", metadata !206, metadata !"bool", i32 0, i32 0}
!258 = metadata !{metadata !259}
!259 = metadata !{i32 0, i32 127, metadata !260}
!260 = metadata !{metadata !261}
!261 = metadata !{metadata !"iv_out.V", metadata !200, metadata !"uint128", i32 0, i32 127}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 0, i32 0, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"iv_out_valid", metadata !206, metadata !"bool", i32 0, i32 0}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 0, i32 0, metadata !268}
!268 = metadata !{metadata !269}
!269 = metadata !{metadata !"decrypted_new_header_out", metadata !206, metadata !"bool", i32 0, i32 0}
!270 = metadata !{metadata !271}
!271 = metadata !{i32 0, i32 0, metadata !272}
!272 = metadata !{metadata !273}
!273 = metadata !{metadata !"decrypted_new_header_out_valid", metadata !206, metadata !"bool", i32 0, i32 0}
!274 = metadata !{metadata !275}
!275 = metadata !{i32 0, i32 0, metadata !276}
!276 = metadata !{metadata !277}
!277 = metadata !{metadata !"reset_key_out", metadata !206, metadata !"bool", i32 0, i32 0}
