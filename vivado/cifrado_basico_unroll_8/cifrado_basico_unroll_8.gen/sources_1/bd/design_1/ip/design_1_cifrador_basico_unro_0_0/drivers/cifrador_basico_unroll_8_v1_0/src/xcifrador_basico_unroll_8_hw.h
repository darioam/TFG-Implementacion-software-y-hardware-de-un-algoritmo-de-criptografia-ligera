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
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of plaintext
//        bit 31~0 - plaintext[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of key
//        bit 31~0 - key[31:0] (Read/Write)
// 0x24 : Data signal of key
//        bit 31~0 - key[63:32] (Read/Write)
// 0x28 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_AP_CTRL        0x00
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_GIE            0x04
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_IER            0x08
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_ISR            0x0c
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_AP_RETURN      0x10
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_BITS_AP_RETURN      32
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_PLAINTEXT_DATA 0x18
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_BITS_PLAINTEXT_DATA 32
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_ADDR_KEY_DATA       0x20
#define XCIFRADOR_BASICO_UNROLL_8_CONTROL_BITS_KEY_DATA       64

