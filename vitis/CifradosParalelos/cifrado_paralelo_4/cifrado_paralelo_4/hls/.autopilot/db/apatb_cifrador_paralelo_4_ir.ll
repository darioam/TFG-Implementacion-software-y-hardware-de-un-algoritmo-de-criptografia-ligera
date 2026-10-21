; ModuleID = 'C:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrado_paralelo_4/cifrado_paralelo_4/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_cifrador_paralelo_4_ir(%"struct.ap_uint<32>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" "partition" %plaintext, %"struct.ap_uint<64>"* nocapture readonly %key, %"struct.ap_uint<32>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" "partition" %ciphertext) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %plaintext to [4 x %"struct.ap_uint<32>"]*
  %plaintext_copy_0 = alloca i32, align 512
  %plaintext_copy_1 = alloca i32, align 512
  %plaintext_copy_2 = alloca i32, align 512
  %plaintext_copy_3 = alloca i32, align 512
  %1 = bitcast %"struct.ap_uint<32>"* %ciphertext to [4 x %"struct.ap_uint<32>"]*
  %ciphertext_copy_0 = alloca i32, align 512
  %ciphertext_copy_1 = alloca i32, align 512
  %ciphertext_copy_2 = alloca i32, align 512
  %ciphertext_copy_3 = alloca i32, align 512
  call void @copy_in([4 x %"struct.ap_uint<32>"]* nonnull %0, i32* nonnull align 512 %plaintext_copy_0, i32* nonnull align 512 %plaintext_copy_1, i32* nonnull align 512 %plaintext_copy_2, i32* nonnull align 512 %plaintext_copy_3, [4 x %"struct.ap_uint<32>"]* nonnull %1, i32* nonnull align 512 %ciphertext_copy_0, i32* nonnull align 512 %ciphertext_copy_1, i32* nonnull align 512 %ciphertext_copy_2, i32* nonnull align 512 %ciphertext_copy_3)
  call void @apatb_cifrador_paralelo_4_hw(i32* %plaintext_copy_0, i32* %plaintext_copy_1, i32* %plaintext_copy_2, i32* %plaintext_copy_3, %"struct.ap_uint<64>"* %key, i32* %ciphertext_copy_0, i32* %ciphertext_copy_1, i32* %ciphertext_copy_2, i32* %ciphertext_copy_3)
  call void @copy_back([4 x %"struct.ap_uint<32>"]* %0, i32* %plaintext_copy_0, i32* %plaintext_copy_1, i32* %plaintext_copy_2, i32* %plaintext_copy_3, [4 x %"struct.ap_uint<32>"]* %1, i32* %ciphertext_copy_0, i32* %ciphertext_copy_1, i32* %ciphertext_copy_2, i32* %ciphertext_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4struct.ap_uint<32>.21"(i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, [4 x %"struct.ap_uint<32>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [4 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [4 x %"struct.ap_uint<32>"], [4 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  switch i64 %for.loop.idx2, label %dst.addr.0.0.06.exit [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
    i64 3, label %dst.addr.0.0.06.case.3
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i32 %1, i32* %dst_0, align 4
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i32 %1, i32* %dst_1, align 4
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i32 %1, i32* %dst_2, align 4
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i32 %1, i32* %dst_3, align 4
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0, %for.loop
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a4struct.ap_uint<32>.18"(i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, [4 x %"struct.ap_uint<32>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [4 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4struct.ap_uint<32>.21"(i32* %dst_0, i32* %dst_1, i32* %dst_2, i32* %dst_3, [4 x %"struct.ap_uint<32>"]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([4 x %"struct.ap_uint<32>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_2, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_3, [4 x %"struct.ap_uint<32>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_12, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_23, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_34) #3 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_uint<32>.18"(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, [4 x %"struct.ap_uint<32>"]* %0)
  call void @"onebyonecpy_hls.p0a4struct.ap_uint<32>.18"(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, [4 x %"struct.ap_uint<32>"]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4struct.ap_uint<32>.14"([4 x %"struct.ap_uint<32>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [4 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [4 x %"struct.ap_uint<32>"], [4 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx2, label %src.addr.0.0.05.exit [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
    i64 3, label %src.addr.0.0.05.case.3
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i32, i32* %src_0, align 4
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %_1 = load i32, i32* %src_1, align 4
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %_2 = load i32, i32* %src_2, align 4
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %_3 = load i32, i32* %src_3, align 4
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0, %for.loop
  %1 = phi i32 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ], [ %_2, %src.addr.0.0.05.case.2 ], [ %_3, %src.addr.0.0.05.case.3 ], [ undef, %for.loop ]
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a4struct.ap_uint<32>"([4 x %"struct.ap_uint<32>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3) #2 {
entry:
  %0 = icmp eq [4 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4struct.ap_uint<32>.14"([4 x %"struct.ap_uint<32>"]* nonnull %dst, i32* %src_0, i32* %src_1, i32* %src_2, i32* %src_3, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([4 x %"struct.ap_uint<32>"]* noalias "orig.arg.no"="0" "unpacked"="0", i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_2, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_3, [4 x %"struct.ap_uint<32>"]* noalias "orig.arg.no"="2" "unpacked"="2", i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01, i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_12, i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_23, i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_34) #4 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_uint<32>"([4 x %"struct.ap_uint<32>"]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3)
  call void @"onebyonecpy_hls.p0a4struct.ap_uint<32>"([4 x %"struct.ap_uint<32>"]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34)
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_cifrador_paralelo_4_hw(i32*, i32*, i32*, i32*, %"struct.ap_uint<64>"*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([4 x %"struct.ap_uint<32>"]* noalias "orig.arg.no"="0" "unpacked"="0", i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_2, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_3, [4 x %"struct.ap_uint<32>"]* noalias "orig.arg.no"="2" "unpacked"="2", i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01, i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_12, i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_23, i32* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_34) #4 {
entry:
  call void @"onebyonecpy_hls.p0a4struct.ap_uint<32>"([4 x %"struct.ap_uint<32>"]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34)
  ret void
}

declare void @cifrador_paralelo_4_hw_stub(%"struct.ap_uint<32>"* noalias nocapture nonnull readonly, %"struct.ap_uint<64>"* nocapture readonly, %"struct.ap_uint<32>"* noalias nocapture nonnull)

define void @cifrador_paralelo_4_hw_stub_wrapper(i32*, i32*, i32*, i32*, %"struct.ap_uint<64>"*, i32*, i32*, i32*, i32*) #5 {
entry:
  %9 = call i8* @malloc(i64 16)
  %10 = bitcast i8* %9 to [4 x %"struct.ap_uint<32>"]*
  %11 = call i8* @malloc(i64 16)
  %12 = bitcast i8* %11 to [4 x %"struct.ap_uint<32>"]*
  call void @copy_out([4 x %"struct.ap_uint<32>"]* %10, i32* %0, i32* %1, i32* %2, i32* %3, [4 x %"struct.ap_uint<32>"]* %12, i32* %5, i32* %6, i32* %7, i32* %8)
  %13 = bitcast [4 x %"struct.ap_uint<32>"]* %10 to %"struct.ap_uint<32>"*
  %14 = bitcast [4 x %"struct.ap_uint<32>"]* %12 to %"struct.ap_uint<32>"*
  call void @cifrador_paralelo_4_hw_stub(%"struct.ap_uint<32>"* %13, %"struct.ap_uint<64>"* %4, %"struct.ap_uint<32>"* %14)
  call void @copy_in([4 x %"struct.ap_uint<32>"]* %10, i32* %0, i32* %1, i32* %2, i32* %3, [4 x %"struct.ap_uint<32>"]* %12, i32* %5, i32* %6, i32* %7, i32* %8)
  call void @free(i8* %9)
  call void @free(i8* %11)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}
!datalayout.transforms.on.top = !{!6, !16}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
!6 = !{!7, !9, !11}
!7 = !{!8}
!8 = !{!"0.0", [4 x i32]* null}
!9 = !{!10}
!10 = !{!"array_partition", !"type=Complete", !"dim=1"}
!11 = !{!12, !13, !14, !15}
!12 = !{!"0.0.0", i32* null}
!13 = !{!"0.0.1", i32* null}
!14 = !{!"0.0.2", i32* null}
!15 = !{!"0.0.3", i32* null}
!16 = !{!17, !9, !19}
!17 = !{!18}
!18 = !{!"2.0", [4 x i32]* null}
!19 = !{!20, !21, !22, !23}
!20 = !{!"2.0.0", i32* null}
!21 = !{!"2.0.1", i32* null}
!22 = !{!"2.0.2", i32* null}
!23 = !{!"2.0.3", i32* null}
