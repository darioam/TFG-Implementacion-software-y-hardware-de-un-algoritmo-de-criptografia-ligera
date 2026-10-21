// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of plaintext0
//        bit 31~0 - plaintext0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of plaintext1
//        bit 31~0 - plaintext1[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of plaintext2
//        bit 31~0 - plaintext2[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of plaintext3
//        bit 31~0 - plaintext3[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of key
//        bit 31~0 - key[31:0] (Read/Write)
// 0x34 : Data signal of key
//        bit 31~0 - key[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of ciphertext0
//        bit 31~0 - ciphertext0[31:0] (Read)
// 0x40 : Control signal of ciphertext0
//        bit 0  - ciphertext0_ap_vld (Read/COR)
//        others - reserved
// 0x4c : Data signal of ciphertext1
//        bit 31~0 - ciphertext1[31:0] (Read)
// 0x50 : Control signal of ciphertext1
//        bit 0  - ciphertext1_ap_vld (Read/COR)
//        others - reserved
// 0x5c : Data signal of ciphertext2
//        bit 31~0 - ciphertext2[31:0] (Read)
// 0x60 : Control signal of ciphertext2
//        bit 0  - ciphertext2_ap_vld (Read/COR)
//        others - reserved
// 0x6c : Data signal of ciphertext3
//        bit 31~0 - ciphertext3[31:0] (Read)
// 0x70 : Control signal of ciphertext3
//        bit 0  - ciphertext3_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL          0x00
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_GIE              0x04
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_IER              0x08
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_ISR              0x0c
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT0_DATA  0x10
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_PLAINTEXT0_DATA  32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT1_DATA  0x18
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_PLAINTEXT1_DATA  32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT2_DATA  0x20
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_PLAINTEXT2_DATA  32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT3_DATA  0x28
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_PLAINTEXT3_DATA  32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_KEY_DATA         0x30
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_KEY_DATA         64
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT0_DATA 0x3c
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_CIPHERTEXT0_DATA 32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT0_CTRL 0x40
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT1_DATA 0x4c
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_CIPHERTEXT1_DATA 32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT1_CTRL 0x50
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT2_DATA 0x5c
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_CIPHERTEXT2_DATA 32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT2_CTRL 0x60
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT3_DATA 0x6c
#define XCIFRADOR_PARALELO_STREAM_CONTROL_BITS_CIPHERTEXT3_DATA 32
#define XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT3_CTRL 0x70

