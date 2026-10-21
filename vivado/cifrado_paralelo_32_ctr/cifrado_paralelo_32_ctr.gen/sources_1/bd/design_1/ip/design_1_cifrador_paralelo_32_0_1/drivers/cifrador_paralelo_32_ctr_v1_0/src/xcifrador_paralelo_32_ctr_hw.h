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
// 0x010 : Data signal of ap_return
//         bit 31~0 - ap_return[31:0] (Read)
// 0x018 : Data signal of plaintext_0
//         bit 31~0 - plaintext_0[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of plaintext_1
//         bit 31~0 - plaintext_1[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of plaintext_2
//         bit 31~0 - plaintext_2[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of plaintext_3
//         bit 31~0 - plaintext_3[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of plaintext_4
//         bit 31~0 - plaintext_4[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of plaintext_5
//         bit 31~0 - plaintext_5[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of plaintext_6
//         bit 31~0 - plaintext_6[31:0] (Read/Write)
// 0x04c : reserved
// 0x050 : Data signal of plaintext_7
//         bit 31~0 - plaintext_7[31:0] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of plaintext_8
//         bit 31~0 - plaintext_8[31:0] (Read/Write)
// 0x05c : reserved
// 0x060 : Data signal of plaintext_9
//         bit 31~0 - plaintext_9[31:0] (Read/Write)
// 0x064 : reserved
// 0x068 : Data signal of plaintext_10
//         bit 31~0 - plaintext_10[31:0] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of plaintext_11
//         bit 31~0 - plaintext_11[31:0] (Read/Write)
// 0x074 : reserved
// 0x078 : Data signal of plaintext_12
//         bit 31~0 - plaintext_12[31:0] (Read/Write)
// 0x07c : reserved
// 0x080 : Data signal of plaintext_13
//         bit 31~0 - plaintext_13[31:0] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of plaintext_14
//         bit 31~0 - plaintext_14[31:0] (Read/Write)
// 0x08c : reserved
// 0x090 : Data signal of plaintext_15
//         bit 31~0 - plaintext_15[31:0] (Read/Write)
// 0x094 : reserved
// 0x098 : Data signal of plaintext_16
//         bit 31~0 - plaintext_16[31:0] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of plaintext_17
//         bit 31~0 - plaintext_17[31:0] (Read/Write)
// 0x0a4 : reserved
// 0x0a8 : Data signal of plaintext_18
//         bit 31~0 - plaintext_18[31:0] (Read/Write)
// 0x0ac : reserved
// 0x0b0 : Data signal of plaintext_19
//         bit 31~0 - plaintext_19[31:0] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of plaintext_20
//         bit 31~0 - plaintext_20[31:0] (Read/Write)
// 0x0bc : reserved
// 0x0c0 : Data signal of plaintext_21
//         bit 31~0 - plaintext_21[31:0] (Read/Write)
// 0x0c4 : reserved
// 0x0c8 : Data signal of plaintext_22
//         bit 31~0 - plaintext_22[31:0] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of plaintext_23
//         bit 31~0 - plaintext_23[31:0] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of plaintext_24
//         bit 31~0 - plaintext_24[31:0] (Read/Write)
// 0x0dc : reserved
// 0x0e0 : Data signal of plaintext_25
//         bit 31~0 - plaintext_25[31:0] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of plaintext_26
//         bit 31~0 - plaintext_26[31:0] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of plaintext_27
//         bit 31~0 - plaintext_27[31:0] (Read/Write)
// 0x0f4 : reserved
// 0x0f8 : Data signal of plaintext_28
//         bit 31~0 - plaintext_28[31:0] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of plaintext_29
//         bit 31~0 - plaintext_29[31:0] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of plaintext_30
//         bit 31~0 - plaintext_30[31:0] (Read/Write)
// 0x10c : reserved
// 0x110 : Data signal of plaintext_31
//         bit 31~0 - plaintext_31[31:0] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of key
//         bit 31~0 - key[31:0] (Read/Write)
// 0x11c : Data signal of key
//         bit 31~0 - key[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of ciphertext_0
//         bit 31~0 - ciphertext_0[31:0] (Read)
// 0x128 : Control signal of ciphertext_0
//         bit 0  - ciphertext_0_ap_vld (Read/COR)
//         others - reserved
// 0x134 : Data signal of ciphertext_1
//         bit 31~0 - ciphertext_1[31:0] (Read)
// 0x138 : Control signal of ciphertext_1
//         bit 0  - ciphertext_1_ap_vld (Read/COR)
//         others - reserved
// 0x144 : Data signal of ciphertext_2
//         bit 31~0 - ciphertext_2[31:0] (Read)
// 0x148 : Control signal of ciphertext_2
//         bit 0  - ciphertext_2_ap_vld (Read/COR)
//         others - reserved
// 0x154 : Data signal of ciphertext_3
//         bit 31~0 - ciphertext_3[31:0] (Read)
// 0x158 : Control signal of ciphertext_3
//         bit 0  - ciphertext_3_ap_vld (Read/COR)
//         others - reserved
// 0x164 : Data signal of ciphertext_4
//         bit 31~0 - ciphertext_4[31:0] (Read)
// 0x168 : Control signal of ciphertext_4
//         bit 0  - ciphertext_4_ap_vld (Read/COR)
//         others - reserved
// 0x174 : Data signal of ciphertext_5
//         bit 31~0 - ciphertext_5[31:0] (Read)
// 0x178 : Control signal of ciphertext_5
//         bit 0  - ciphertext_5_ap_vld (Read/COR)
//         others - reserved
// 0x184 : Data signal of ciphertext_6
//         bit 31~0 - ciphertext_6[31:0] (Read)
// 0x188 : Control signal of ciphertext_6
//         bit 0  - ciphertext_6_ap_vld (Read/COR)
//         others - reserved
// 0x194 : Data signal of ciphertext_7
//         bit 31~0 - ciphertext_7[31:0] (Read)
// 0x198 : Control signal of ciphertext_7
//         bit 0  - ciphertext_7_ap_vld (Read/COR)
//         others - reserved
// 0x1a4 : Data signal of ciphertext_8
//         bit 31~0 - ciphertext_8[31:0] (Read)
// 0x1a8 : Control signal of ciphertext_8
//         bit 0  - ciphertext_8_ap_vld (Read/COR)
//         others - reserved
// 0x1b4 : Data signal of ciphertext_9
//         bit 31~0 - ciphertext_9[31:0] (Read)
// 0x1b8 : Control signal of ciphertext_9
//         bit 0  - ciphertext_9_ap_vld (Read/COR)
//         others - reserved
// 0x1c4 : Data signal of ciphertext_10
//         bit 31~0 - ciphertext_10[31:0] (Read)
// 0x1c8 : Control signal of ciphertext_10
//         bit 0  - ciphertext_10_ap_vld (Read/COR)
//         others - reserved
// 0x1d4 : Data signal of ciphertext_11
//         bit 31~0 - ciphertext_11[31:0] (Read)
// 0x1d8 : Control signal of ciphertext_11
//         bit 0  - ciphertext_11_ap_vld (Read/COR)
//         others - reserved
// 0x1e4 : Data signal of ciphertext_12
//         bit 31~0 - ciphertext_12[31:0] (Read)
// 0x1e8 : Control signal of ciphertext_12
//         bit 0  - ciphertext_12_ap_vld (Read/COR)
//         others - reserved
// 0x1f4 : Data signal of ciphertext_13
//         bit 31~0 - ciphertext_13[31:0] (Read)
// 0x1f8 : Control signal of ciphertext_13
//         bit 0  - ciphertext_13_ap_vld (Read/COR)
//         others - reserved
// 0x204 : Data signal of ciphertext_14
//         bit 31~0 - ciphertext_14[31:0] (Read)
// 0x208 : Control signal of ciphertext_14
//         bit 0  - ciphertext_14_ap_vld (Read/COR)
//         others - reserved
// 0x214 : Data signal of ciphertext_15
//         bit 31~0 - ciphertext_15[31:0] (Read)
// 0x218 : Control signal of ciphertext_15
//         bit 0  - ciphertext_15_ap_vld (Read/COR)
//         others - reserved
// 0x224 : Data signal of ciphertext_16
//         bit 31~0 - ciphertext_16[31:0] (Read)
// 0x228 : Control signal of ciphertext_16
//         bit 0  - ciphertext_16_ap_vld (Read/COR)
//         others - reserved
// 0x234 : Data signal of ciphertext_17
//         bit 31~0 - ciphertext_17[31:0] (Read)
// 0x238 : Control signal of ciphertext_17
//         bit 0  - ciphertext_17_ap_vld (Read/COR)
//         others - reserved
// 0x244 : Data signal of ciphertext_18
//         bit 31~0 - ciphertext_18[31:0] (Read)
// 0x248 : Control signal of ciphertext_18
//         bit 0  - ciphertext_18_ap_vld (Read/COR)
//         others - reserved
// 0x254 : Data signal of ciphertext_19
//         bit 31~0 - ciphertext_19[31:0] (Read)
// 0x258 : Control signal of ciphertext_19
//         bit 0  - ciphertext_19_ap_vld (Read/COR)
//         others - reserved
// 0x264 : Data signal of ciphertext_20
//         bit 31~0 - ciphertext_20[31:0] (Read)
// 0x268 : Control signal of ciphertext_20
//         bit 0  - ciphertext_20_ap_vld (Read/COR)
//         others - reserved
// 0x274 : Data signal of ciphertext_21
//         bit 31~0 - ciphertext_21[31:0] (Read)
// 0x278 : Control signal of ciphertext_21
//         bit 0  - ciphertext_21_ap_vld (Read/COR)
//         others - reserved
// 0x284 : Data signal of ciphertext_22
//         bit 31~0 - ciphertext_22[31:0] (Read)
// 0x288 : Control signal of ciphertext_22
//         bit 0  - ciphertext_22_ap_vld (Read/COR)
//         others - reserved
// 0x294 : Data signal of ciphertext_23
//         bit 31~0 - ciphertext_23[31:0] (Read)
// 0x298 : Control signal of ciphertext_23
//         bit 0  - ciphertext_23_ap_vld (Read/COR)
//         others - reserved
// 0x2a4 : Data signal of ciphertext_24
//         bit 31~0 - ciphertext_24[31:0] (Read)
// 0x2a8 : Control signal of ciphertext_24
//         bit 0  - ciphertext_24_ap_vld (Read/COR)
//         others - reserved
// 0x2b4 : Data signal of ciphertext_25
//         bit 31~0 - ciphertext_25[31:0] (Read)
// 0x2b8 : Control signal of ciphertext_25
//         bit 0  - ciphertext_25_ap_vld (Read/COR)
//         others - reserved
// 0x2c4 : Data signal of ciphertext_26
//         bit 31~0 - ciphertext_26[31:0] (Read)
// 0x2c8 : Control signal of ciphertext_26
//         bit 0  - ciphertext_26_ap_vld (Read/COR)
//         others - reserved
// 0x2d4 : Data signal of ciphertext_27
//         bit 31~0 - ciphertext_27[31:0] (Read)
// 0x2d8 : Control signal of ciphertext_27
//         bit 0  - ciphertext_27_ap_vld (Read/COR)
//         others - reserved
// 0x2e4 : Data signal of ciphertext_28
//         bit 31~0 - ciphertext_28[31:0] (Read)
// 0x2e8 : Control signal of ciphertext_28
//         bit 0  - ciphertext_28_ap_vld (Read/COR)
//         others - reserved
// 0x2f4 : Data signal of ciphertext_29
//         bit 31~0 - ciphertext_29[31:0] (Read)
// 0x2f8 : Control signal of ciphertext_29
//         bit 0  - ciphertext_29_ap_vld (Read/COR)
//         others - reserved
// 0x304 : Data signal of ciphertext_30
//         bit 31~0 - ciphertext_30[31:0] (Read)
// 0x308 : Control signal of ciphertext_30
//         bit 0  - ciphertext_30_ap_vld (Read/COR)
//         others - reserved
// 0x314 : Data signal of ciphertext_31
//         bit 31~0 - ciphertext_31[31:0] (Read)
// 0x318 : Control signal of ciphertext_31
//         bit 0  - ciphertext_31_ap_vld (Read/COR)
//         others - reserved
// 0x324 : Data signal of nonce
//         bit 31~0 - nonce[31:0] (Read/Write)
// 0x328 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL            0x000
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_GIE                0x004
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_IER                0x008
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_ISR                0x00c
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_RETURN          0x010
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_AP_RETURN          32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_0_DATA   0x018
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_0_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_1_DATA   0x020
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_1_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_2_DATA   0x028
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_2_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_3_DATA   0x030
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_3_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_4_DATA   0x038
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_4_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_5_DATA   0x040
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_5_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_6_DATA   0x048
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_6_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_7_DATA   0x050
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_7_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_8_DATA   0x058
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_8_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_9_DATA   0x060
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_9_DATA   32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_10_DATA  0x068
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_10_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_11_DATA  0x070
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_11_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_12_DATA  0x078
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_12_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_13_DATA  0x080
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_13_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_14_DATA  0x088
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_14_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_15_DATA  0x090
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_15_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_16_DATA  0x098
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_16_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_17_DATA  0x0a0
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_17_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_18_DATA  0x0a8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_18_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_19_DATA  0x0b0
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_19_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_20_DATA  0x0b8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_20_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_21_DATA  0x0c0
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_21_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_22_DATA  0x0c8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_22_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_23_DATA  0x0d0
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_23_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_24_DATA  0x0d8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_24_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_25_DATA  0x0e0
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_25_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_26_DATA  0x0e8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_26_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_27_DATA  0x0f0
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_27_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_28_DATA  0x0f8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_28_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_29_DATA  0x100
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_29_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_30_DATA  0x108
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_30_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_31_DATA  0x110
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_PLAINTEXT_31_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_KEY_DATA           0x118
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_KEY_DATA           64
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_0_DATA  0x124
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_0_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_0_CTRL  0x128
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_1_DATA  0x134
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_1_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_1_CTRL  0x138
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_2_DATA  0x144
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_2_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_2_CTRL  0x148
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_3_DATA  0x154
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_3_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_3_CTRL  0x158
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_4_DATA  0x164
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_4_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_4_CTRL  0x168
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_5_DATA  0x174
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_5_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_5_CTRL  0x178
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_6_DATA  0x184
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_6_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_6_CTRL  0x188
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_7_DATA  0x194
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_7_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_7_CTRL  0x198
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_8_DATA  0x1a4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_8_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_8_CTRL  0x1a8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_9_DATA  0x1b4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_9_DATA  32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_9_CTRL  0x1b8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_10_DATA 0x1c4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_10_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_10_CTRL 0x1c8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_11_DATA 0x1d4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_11_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_11_CTRL 0x1d8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_12_DATA 0x1e4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_12_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_12_CTRL 0x1e8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_13_DATA 0x1f4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_13_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_13_CTRL 0x1f8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_14_DATA 0x204
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_14_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_14_CTRL 0x208
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_15_DATA 0x214
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_15_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_15_CTRL 0x218
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_16_DATA 0x224
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_16_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_16_CTRL 0x228
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_17_DATA 0x234
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_17_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_17_CTRL 0x238
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_18_DATA 0x244
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_18_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_18_CTRL 0x248
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_19_DATA 0x254
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_19_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_19_CTRL 0x258
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_20_DATA 0x264
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_20_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_20_CTRL 0x268
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_21_DATA 0x274
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_21_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_21_CTRL 0x278
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_22_DATA 0x284
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_22_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_22_CTRL 0x288
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_23_DATA 0x294
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_23_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_23_CTRL 0x298
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_24_DATA 0x2a4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_24_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_24_CTRL 0x2a8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_25_DATA 0x2b4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_25_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_25_CTRL 0x2b8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_26_DATA 0x2c4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_26_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_26_CTRL 0x2c8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_27_DATA 0x2d4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_27_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_27_CTRL 0x2d8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_28_DATA 0x2e4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_28_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_28_CTRL 0x2e8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_29_DATA 0x2f4
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_29_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_29_CTRL 0x2f8
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_30_DATA 0x304
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_30_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_30_CTRL 0x308
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_31_DATA 0x314
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_CIPHERTEXT_31_DATA 32
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_31_CTRL 0x318
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_NONCE_DATA         0x324
#define XCIFRADOR_PARALELO_32_CTR_CONTROL_BITS_NONCE_DATA         32

