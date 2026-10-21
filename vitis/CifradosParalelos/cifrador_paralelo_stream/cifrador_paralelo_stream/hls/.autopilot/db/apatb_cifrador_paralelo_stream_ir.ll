; ModuleID = 'C:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_stream/cifrador_paralelo_stream/hls/.autopilot/db/a.g.ld.5.gdce.bc'
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
define void @apatb_cifrador_paralelo_stream_ir(%"struct.ap_uint<32>"* nocapture readonly %plaintext0, %"struct.ap_uint<32>"* nocapture readonly %plaintext1, %"struct.ap_uint<32>"* nocapture readonly %plaintext2, %"struct.ap_uint<32>"* nocapture readonly %plaintext3, %"struct.ap_uint<64>"* nocapture readonly %key, %"struct.ap_uint<32>"* noalias nocapture nonnull align 4 dereferenceable(4) %ciphertext0, %"struct.ap_uint<32>"* noalias nocapture nonnull align 4 dereferenceable(4) %ciphertext1, %"struct.ap_uint<32>"* noalias nocapture nonnull align 4 dereferenceable(4) %ciphertext2, %"struct.ap_uint<32>"* noalias nocapture nonnull align 4 dereferenceable(4) %ciphertext3) local_unnamed_addr #0 {
entry:
  %ciphertext0_copy = alloca i32, align 512
  %ciphertext1_copy = alloca i32, align 512
  %ciphertext2_copy = alloca i32, align 512
  %ciphertext3_copy = alloca i32, align 512
  call fastcc void @copy_in(%"struct.ap_uint<32>"* nonnull %ciphertext0, i32* nonnull align 512 %ciphertext0_copy, %"struct.ap_uint<32>"* nonnull %ciphertext1, i32* nonnull align 512 %ciphertext1_copy, %"struct.ap_uint<32>"* nonnull %ciphertext2, i32* nonnull align 512 %ciphertext2_copy, %"struct.ap_uint<32>"* nonnull %ciphertext3, i32* nonnull align 512 %ciphertext3_copy)
  call void @apatb_cifrador_paralelo_stream_hw(%"struct.ap_uint<32>"* %plaintext0, %"struct.ap_uint<32>"* %plaintext1, %"struct.ap_uint<32>"* %plaintext2, %"struct.ap_uint<32>"* %plaintext3, %"struct.ap_uint<64>"* %key, i32* %ciphertext0_copy, i32* %ciphertext1_copy, i32* %ciphertext2_copy, i32* %ciphertext3_copy)
  call void @copy_back(%"struct.ap_uint<32>"* %ciphertext0, i32* %ciphertext0_copy, %"struct.ap_uint<32>"* %ciphertext1, i32* %ciphertext1_copy, %"struct.ap_uint<32>"* %ciphertext2, i32* %ciphertext2_copy, %"struct.ap_uint<32>"* %ciphertext3, i32* %ciphertext3_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<32>"* noalias readonly "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.30"(i32* align 512 %1, %"struct.ap_uint<32>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.30"(i32* align 512 %3, %"struct.ap_uint<32>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.30"(i32* align 512 %5, %"struct.ap_uint<32>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.30"(i32* align 512 %7, %"struct.ap_uint<32>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<32>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<32>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<32>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<32>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %6, i32* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<32>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.30"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<32>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_cifrador_paralelo_stream_hw(%"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<64>"*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<32>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<32>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<32>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<32>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %6, i32* align 512 %7)
  ret void
}

declare void @cifrador_paralelo_stream_hw_stub(%"struct.ap_uint<32>"* nocapture readonly, %"struct.ap_uint<32>"* nocapture readonly, %"struct.ap_uint<32>"* nocapture readonly, %"struct.ap_uint<32>"* nocapture readonly, %"struct.ap_uint<64>"* nocapture readonly, %"struct.ap_uint<32>"* noalias nocapture nonnull, %"struct.ap_uint<32>"* noalias nocapture nonnull, %"struct.ap_uint<32>"* noalias nocapture nonnull, %"struct.ap_uint<32>"* noalias nocapture nonnull)

define void @cifrador_paralelo_stream_hw_stub_wrapper(%"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<64>"*, i32*, i32*, i32*, i32*) #4 {
entry:
  %9 = call i8* @malloc(i64 4)
  %10 = bitcast i8* %9 to %"struct.ap_uint<32>"*
  %11 = call i8* @malloc(i64 4)
  %12 = bitcast i8* %11 to %"struct.ap_uint<32>"*
  %13 = call i8* @malloc(i64 4)
  %14 = bitcast i8* %13 to %"struct.ap_uint<32>"*
  %15 = call i8* @malloc(i64 4)
  %16 = bitcast i8* %15 to %"struct.ap_uint<32>"*
  call void @copy_out(%"struct.ap_uint<32>"* %10, i32* %5, %"struct.ap_uint<32>"* %12, i32* %6, %"struct.ap_uint<32>"* %14, i32* %7, %"struct.ap_uint<32>"* %16, i32* %8)
  call void @cifrador_paralelo_stream_hw_stub(%"struct.ap_uint<32>"* %0, %"struct.ap_uint<32>"* %1, %"struct.ap_uint<32>"* %2, %"struct.ap_uint<32>"* %3, %"struct.ap_uint<64>"* %4, %"struct.ap_uint<32>"* %10, %"struct.ap_uint<32>"* %12, %"struct.ap_uint<32>"* %14, %"struct.ap_uint<32>"* %16)
  call void @copy_in(%"struct.ap_uint<32>"* %10, i32* %5, %"struct.ap_uint<32>"* %12, i32* %6, %"struct.ap_uint<32>"* %14, i32* %7, %"struct.ap_uint<32>"* %16, i32* %8)
  call void @free(i8* %9)
  call void @free(i8* %11)
  call void @free(i8* %13)
  call void @free(i8* %15)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
