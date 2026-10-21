// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of plaintext_0
//         bit 31~0 - plaintext_0[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of plaintext_1
//         bit 31~0 - plaintext_1[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of plaintext_2
//         bit 31~0 - plaintext_2[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of plaintext_3
//         bit 31~0 - plaintext_3[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of plaintext_4
//         bit 31~0 - plaintext_4[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of plaintext_5
//         bit 31~0 - plaintext_5[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of plaintext_6
//         bit 31~0 - plaintext_6[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of plaintext_7
//         bit 31~0 - plaintext_7[31:0] (Read/Write)
// 0x04c : reserved
// 0x050 : Data signal of plaintext_8
//         bit 31~0 - plaintext_8[31:0] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of plaintext_9
//         bit 31~0 - plaintext_9[31:0] (Read/Write)
// 0x05c : reserved
// 0x060 : Data signal of plaintext_10
//         bit 31~0 - plaintext_10[31:0] (Read/Write)
// 0x064 : reserved
// 0x068 : Data signal of plaintext_11
//         bit 31~0 - plaintext_11[31:0] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of plaintext_12
//         bit 31~0 - plaintext_12[31:0] (Read/Write)
// 0x074 : reserved
// 0x078 : Data signal of plaintext_13
//         bit 31~0 - plaintext_13[31:0] (Read/Write)
// 0x07c : reserved
// 0x080 : Data signal of plaintext_14
//         bit 31~0 - plaintext_14[31:0] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of plaintext_15
//         bit 31~0 - plaintext_15[31:0] (Read/Write)
// 0x08c : reserved
// 0x090 : Data signal of key
//         bit 31~0 - key[31:0] (Read/Write)
// 0x094 : Data signal of key
//         bit 31~0 - key[63:32] (Read/Write)
// 0x098 : reserved
// 0x09c : Data signal of ciphertext_0
//         bit 31~0 - ciphertext_0[31:0] (Read)
// 0x0a0 : Control signal of ciphertext_0
//         bit 0  - ciphertext_0_ap_vld (Read/COR)
//         others - reserved
// 0x0ac : Data signal of ciphertext_1
//         bit 31~0 - ciphertext_1[31:0] (Read)
// 0x0b0 : Control signal of ciphertext_1
//         bit 0  - ciphertext_1_ap_vld (Read/COR)
//         others - reserved
// 0x0bc : Data signal of ciphertext_2
//         bit 31~0 - ciphertext_2[31:0] (Read)
// 0x0c0 : Control signal of ciphertext_2
//         bit 0  - ciphertext_2_ap_vld (Read/COR)
//         others - reserved
// 0x0cc : Data signal of ciphertext_3
//         bit 31~0 - ciphertext_3[31:0] (Read)
// 0x0d0 : Control signal of ciphertext_3
//         bit 0  - ciphertext_3_ap_vld (Read/COR)
//         others - reserved
// 0x0dc : Data signal of ciphertext_4
//         bit 31~0 - ciphertext_4[31:0] (Read)
// 0x0e0 : Control signal of ciphertext_4
//         bit 0  - ciphertext_4_ap_vld (Read/COR)
//         others - reserved
// 0x0ec : Data signal of ciphertext_5
//         bit 31~0 - ciphertext_5[31:0] (Read)
// 0x0f0 : Control signal of ciphertext_5
//         bit 0  - ciphertext_5_ap_vld (Read/COR)
//         others - reserved
// 0x0fc : Data signal of ciphertext_6
//         bit 31~0 - ciphertext_6[31:0] (Read)
// 0x100 : Control signal of ciphertext_6
//         bit 0  - ciphertext_6_ap_vld (Read/COR)
//         others - reserved
// 0x10c : Data signal of ciphertext_7
//         bit 31~0 - ciphertext_7[31:0] (Read)
// 0x110 : Control signal of ciphertext_7
//         bit 0  - ciphertext_7_ap_vld (Read/COR)
//         others - reserved
// 0x11c : Data signal of ciphertext_8
//         bit 31~0 - ciphertext_8[31:0] (Read)
// 0x120 : Control signal of ciphertext_8
//         bit 0  - ciphertext_8_ap_vld (Read/COR)
//         others - reserved
// 0x12c : Data signal of ciphertext_9
//         bit 31~0 - ciphertext_9[31:0] (Read)
// 0x130 : Control signal of ciphertext_9
//         bit 0  - ciphertext_9_ap_vld (Read/COR)
//         others - reserved
// 0x13c : Data signal of ciphertext_10
//         bit 31~0 - ciphertext_10[31:0] (Read)
// 0x140 : Control signal of ciphertext_10
//         bit 0  - ciphertext_10_ap_vld (Read/COR)
//         others - reserved
// 0x14c : Data signal of ciphertext_11
//         bit 31~0 - ciphertext_11[31:0] (Read)
// 0x150 : Control signal of ciphertext_11
//         bit 0  - ciphertext_11_ap_vld (Read/COR)
//         others - reserved
// 0x15c : Data signal of ciphertext_12
//         bit 31~0 - ciphertext_12[31:0] (Read)
// 0x160 : Control signal of ciphertext_12
//         bit 0  - ciphertext_12_ap_vld (Read/COR)
//         others - reserved
// 0x16c : Data signal of ciphertext_13
//         bit 31~0 - ciphertext_13[31:0] (Read)
// 0x170 : Control signal of ciphertext_13
//         bit 0  - ciphertext_13_ap_vld (Read/COR)
//         others - reserved
// 0x17c : Data signal of ciphertext_14
//         bit 31~0 - ciphertext_14[31:0] (Read)
// 0x180 : Control signal of ciphertext_14
//         bit 0  - ciphertext_14_ap_vld (Read/COR)
//         others - reserved
// 0x18c : Data signal of ciphertext_15
//         bit 31~0 - ciphertext_15[31:0] (Read)
// 0x190 : Control signal of ciphertext_15
//         bit 0  - ciphertext_15_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL            0x000
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_GIE                0x004
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_IER                0x008
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_ISR                0x00c
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_0_DATA   0x010
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_0_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_1_DATA   0x018
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_1_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_2_DATA   0x020
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_2_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_3_DATA   0x028
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_3_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_4_DATA   0x030
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_4_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_5_DATA   0x038
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_5_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_6_DATA   0x040
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_6_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_7_DATA   0x048
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_7_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_8_DATA   0x050
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_8_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_9_DATA   0x058
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_9_DATA   32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_10_DATA  0x060
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_10_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_11_DATA  0x068
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_11_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_12_DATA  0x070
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_12_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_13_DATA  0x078
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_13_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_14_DATA  0x080
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_14_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_15_DATA  0x088
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_PLAINTEXT_15_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_KEY_DATA           0x090
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_KEY_DATA           64
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_0_DATA  0x09c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_0_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_0_CTRL  0x0a0
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_1_DATA  0x0ac
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_1_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_1_CTRL  0x0b0
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_2_DATA  0x0bc
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_2_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_2_CTRL  0x0c0
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_3_DATA  0x0cc
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_3_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_3_CTRL  0x0d0
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_4_DATA  0x0dc
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_4_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_4_CTRL  0x0e0
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_5_DATA  0x0ec
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_5_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_5_CTRL  0x0f0
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_6_DATA  0x0fc
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_6_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_6_CTRL  0x100
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_7_DATA  0x10c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_7_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_7_CTRL  0x110
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_8_DATA  0x11c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_8_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_8_CTRL  0x120
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_9_DATA  0x12c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_9_DATA  32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_9_CTRL  0x130
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_10_DATA 0x13c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_10_DATA 32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_10_CTRL 0x140
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_11_DATA 0x14c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_11_DATA 32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_11_CTRL 0x150
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_12_DATA 0x15c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_12_DATA 32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_12_CTRL 0x160
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_13_DATA 0x16c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_13_DATA 32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_13_CTRL 0x170
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_14_DATA 0x17c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_14_DATA 32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_14_CTRL 0x180
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_15_DATA 0x18c
#define XCIFRADOR_PARALELO_16_CONTROL_BITS_CIPHERTEXT_15_DATA 32
#define XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_15_CTRL 0x190

