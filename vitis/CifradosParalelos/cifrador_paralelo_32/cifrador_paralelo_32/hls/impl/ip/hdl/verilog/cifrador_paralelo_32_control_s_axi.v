// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) module cifrador_paralelo_32_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   plaintext_0,
    output wire [31:0]                   plaintext_1,
    output wire [31:0]                   plaintext_2,
    output wire [31:0]                   plaintext_3,
    output wire [31:0]                   plaintext_4,
    output wire [31:0]                   plaintext_5,
    output wire [31:0]                   plaintext_6,
    output wire [31:0]                   plaintext_7,
    output wire [31:0]                   plaintext_8,
    output wire [31:0]                   plaintext_9,
    output wire [31:0]                   plaintext_10,
    output wire [31:0]                   plaintext_11,
    output wire [31:0]                   plaintext_12,
    output wire [31:0]                   plaintext_13,
    output wire [31:0]                   plaintext_14,
    output wire [31:0]                   plaintext_15,
    output wire [31:0]                   plaintext_16,
    output wire [31:0]                   plaintext_17,
    output wire [31:0]                   plaintext_18,
    output wire [31:0]                   plaintext_19,
    output wire [31:0]                   plaintext_20,
    output wire [31:0]                   plaintext_21,
    output wire [31:0]                   plaintext_22,
    output wire [31:0]                   plaintext_23,
    output wire [31:0]                   plaintext_24,
    output wire [31:0]                   plaintext_25,
    output wire [31:0]                   plaintext_26,
    output wire [31:0]                   plaintext_27,
    output wire [31:0]                   plaintext_28,
    output wire [31:0]                   plaintext_29,
    output wire [31:0]                   plaintext_30,
    output wire [31:0]                   plaintext_31,
    output wire [63:0]                   key,
    input  wire [31:0]                   ciphertext_0,
    input  wire                          ciphertext_0_ap_vld,
    input  wire [31:0]                   ciphertext_1,
    input  wire                          ciphertext_1_ap_vld,
    input  wire [31:0]                   ciphertext_2,
    input  wire                          ciphertext_2_ap_vld,
    input  wire [31:0]                   ciphertext_3,
    input  wire                          ciphertext_3_ap_vld,
    input  wire [31:0]                   ciphertext_4,
    input  wire                          ciphertext_4_ap_vld,
    input  wire [31:0]                   ciphertext_5,
    input  wire                          ciphertext_5_ap_vld,
    input  wire [31:0]                   ciphertext_6,
    input  wire                          ciphertext_6_ap_vld,
    input  wire [31:0]                   ciphertext_7,
    input  wire                          ciphertext_7_ap_vld,
    input  wire [31:0]                   ciphertext_8,
    input  wire                          ciphertext_8_ap_vld,
    input  wire [31:0]                   ciphertext_9,
    input  wire                          ciphertext_9_ap_vld,
    input  wire [31:0]                   ciphertext_10,
    input  wire                          ciphertext_10_ap_vld,
    input  wire [31:0]                   ciphertext_11,
    input  wire                          ciphertext_11_ap_vld,
    input  wire [31:0]                   ciphertext_12,
    input  wire                          ciphertext_12_ap_vld,
    input  wire [31:0]                   ciphertext_13,
    input  wire                          ciphertext_13_ap_vld,
    input  wire [31:0]                   ciphertext_14,
    input  wire                          ciphertext_14_ap_vld,
    input  wire [31:0]                   ciphertext_15,
    input  wire                          ciphertext_15_ap_vld,
    input  wire [31:0]                   ciphertext_16,
    input  wire                          ciphertext_16_ap_vld,
    input  wire [31:0]                   ciphertext_17,
    input  wire                          ciphertext_17_ap_vld,
    input  wire [31:0]                   ciphertext_18,
    input  wire                          ciphertext_18_ap_vld,
    input  wire [31:0]                   ciphertext_19,
    input  wire                          ciphertext_19_ap_vld,
    input  wire [31:0]                   ciphertext_20,
    input  wire                          ciphertext_20_ap_vld,
    input  wire [31:0]                   ciphertext_21,
    input  wire                          ciphertext_21_ap_vld,
    input  wire [31:0]                   ciphertext_22,
    input  wire                          ciphertext_22_ap_vld,
    input  wire [31:0]                   ciphertext_23,
    input  wire                          ciphertext_23_ap_vld,
    input  wire [31:0]                   ciphertext_24,
    input  wire                          ciphertext_24_ap_vld,
    input  wire [31:0]                   ciphertext_25,
    input  wire                          ciphertext_25_ap_vld,
    input  wire [31:0]                   ciphertext_26,
    input  wire                          ciphertext_26_ap_vld,
    input  wire [31:0]                   ciphertext_27,
    input  wire                          ciphertext_27_ap_vld,
    input  wire [31:0]                   ciphertext_28,
    input  wire                          ciphertext_28_ap_vld,
    input  wire [31:0]                   ciphertext_29,
    input  wire                          ciphertext_29_ap_vld,
    input  wire [31:0]                   ciphertext_30,
    input  wire                          ciphertext_30_ap_vld,
    input  wire [31:0]                   ciphertext_31,
    input  wire                          ciphertext_31_ap_vld,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
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
// 0x090 : Data signal of plaintext_16
//         bit 31~0 - plaintext_16[31:0] (Read/Write)
// 0x094 : reserved
// 0x098 : Data signal of plaintext_17
//         bit 31~0 - plaintext_17[31:0] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of plaintext_18
//         bit 31~0 - plaintext_18[31:0] (Read/Write)
// 0x0a4 : reserved
// 0x0a8 : Data signal of plaintext_19
//         bit 31~0 - plaintext_19[31:0] (Read/Write)
// 0x0ac : reserved
// 0x0b0 : Data signal of plaintext_20
//         bit 31~0 - plaintext_20[31:0] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of plaintext_21
//         bit 31~0 - plaintext_21[31:0] (Read/Write)
// 0x0bc : reserved
// 0x0c0 : Data signal of plaintext_22
//         bit 31~0 - plaintext_22[31:0] (Read/Write)
// 0x0c4 : reserved
// 0x0c8 : Data signal of plaintext_23
//         bit 31~0 - plaintext_23[31:0] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of plaintext_24
//         bit 31~0 - plaintext_24[31:0] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of plaintext_25
//         bit 31~0 - plaintext_25[31:0] (Read/Write)
// 0x0dc : reserved
// 0x0e0 : Data signal of plaintext_26
//         bit 31~0 - plaintext_26[31:0] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of plaintext_27
//         bit 31~0 - plaintext_27[31:0] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of plaintext_28
//         bit 31~0 - plaintext_28[31:0] (Read/Write)
// 0x0f4 : reserved
// 0x0f8 : Data signal of plaintext_29
//         bit 31~0 - plaintext_29[31:0] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of plaintext_30
//         bit 31~0 - plaintext_30[31:0] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of plaintext_31
//         bit 31~0 - plaintext_31[31:0] (Read/Write)
// 0x10c : reserved
// 0x110 : Data signal of key
//         bit 31~0 - key[31:0] (Read/Write)
// 0x114 : Data signal of key
//         bit 31~0 - key[63:32] (Read/Write)
// 0x118 : reserved
// 0x11c : Data signal of ciphertext_0
//         bit 31~0 - ciphertext_0[31:0] (Read)
// 0x120 : Control signal of ciphertext_0
//         bit 0  - ciphertext_0_ap_vld (Read/COR)
//         others - reserved
// 0x12c : Data signal of ciphertext_1
//         bit 31~0 - ciphertext_1[31:0] (Read)
// 0x130 : Control signal of ciphertext_1
//         bit 0  - ciphertext_1_ap_vld (Read/COR)
//         others - reserved
// 0x13c : Data signal of ciphertext_2
//         bit 31~0 - ciphertext_2[31:0] (Read)
// 0x140 : Control signal of ciphertext_2
//         bit 0  - ciphertext_2_ap_vld (Read/COR)
//         others - reserved
// 0x14c : Data signal of ciphertext_3
//         bit 31~0 - ciphertext_3[31:0] (Read)
// 0x150 : Control signal of ciphertext_3
//         bit 0  - ciphertext_3_ap_vld (Read/COR)
//         others - reserved
// 0x15c : Data signal of ciphertext_4
//         bit 31~0 - ciphertext_4[31:0] (Read)
// 0x160 : Control signal of ciphertext_4
//         bit 0  - ciphertext_4_ap_vld (Read/COR)
//         others - reserved
// 0x16c : Data signal of ciphertext_5
//         bit 31~0 - ciphertext_5[31:0] (Read)
// 0x170 : Control signal of ciphertext_5
//         bit 0  - ciphertext_5_ap_vld (Read/COR)
//         others - reserved
// 0x17c : Data signal of ciphertext_6
//         bit 31~0 - ciphertext_6[31:0] (Read)
// 0x180 : Control signal of ciphertext_6
//         bit 0  - ciphertext_6_ap_vld (Read/COR)
//         others - reserved
// 0x18c : Data signal of ciphertext_7
//         bit 31~0 - ciphertext_7[31:0] (Read)
// 0x190 : Control signal of ciphertext_7
//         bit 0  - ciphertext_7_ap_vld (Read/COR)
//         others - reserved
// 0x19c : Data signal of ciphertext_8
//         bit 31~0 - ciphertext_8[31:0] (Read)
// 0x1a0 : Control signal of ciphertext_8
//         bit 0  - ciphertext_8_ap_vld (Read/COR)
//         others - reserved
// 0x1ac : Data signal of ciphertext_9
//         bit 31~0 - ciphertext_9[31:0] (Read)
// 0x1b0 : Control signal of ciphertext_9
//         bit 0  - ciphertext_9_ap_vld (Read/COR)
//         others - reserved
// 0x1bc : Data signal of ciphertext_10
//         bit 31~0 - ciphertext_10[31:0] (Read)
// 0x1c0 : Control signal of ciphertext_10
//         bit 0  - ciphertext_10_ap_vld (Read/COR)
//         others - reserved
// 0x1cc : Data signal of ciphertext_11
//         bit 31~0 - ciphertext_11[31:0] (Read)
// 0x1d0 : Control signal of ciphertext_11
//         bit 0  - ciphertext_11_ap_vld (Read/COR)
//         others - reserved
// 0x1dc : Data signal of ciphertext_12
//         bit 31~0 - ciphertext_12[31:0] (Read)
// 0x1e0 : Control signal of ciphertext_12
//         bit 0  - ciphertext_12_ap_vld (Read/COR)
//         others - reserved
// 0x1ec : Data signal of ciphertext_13
//         bit 31~0 - ciphertext_13[31:0] (Read)
// 0x1f0 : Control signal of ciphertext_13
//         bit 0  - ciphertext_13_ap_vld (Read/COR)
//         others - reserved
// 0x1fc : Data signal of ciphertext_14
//         bit 31~0 - ciphertext_14[31:0] (Read)
// 0x200 : Control signal of ciphertext_14
//         bit 0  - ciphertext_14_ap_vld (Read/COR)
//         others - reserved
// 0x20c : Data signal of ciphertext_15
//         bit 31~0 - ciphertext_15[31:0] (Read)
// 0x210 : Control signal of ciphertext_15
//         bit 0  - ciphertext_15_ap_vld (Read/COR)
//         others - reserved
// 0x21c : Data signal of ciphertext_16
//         bit 31~0 - ciphertext_16[31:0] (Read)
// 0x220 : Control signal of ciphertext_16
//         bit 0  - ciphertext_16_ap_vld (Read/COR)
//         others - reserved
// 0x22c : Data signal of ciphertext_17
//         bit 31~0 - ciphertext_17[31:0] (Read)
// 0x230 : Control signal of ciphertext_17
//         bit 0  - ciphertext_17_ap_vld (Read/COR)
//         others - reserved
// 0x23c : Data signal of ciphertext_18
//         bit 31~0 - ciphertext_18[31:0] (Read)
// 0x240 : Control signal of ciphertext_18
//         bit 0  - ciphertext_18_ap_vld (Read/COR)
//         others - reserved
// 0x24c : Data signal of ciphertext_19
//         bit 31~0 - ciphertext_19[31:0] (Read)
// 0x250 : Control signal of ciphertext_19
//         bit 0  - ciphertext_19_ap_vld (Read/COR)
//         others - reserved
// 0x25c : Data signal of ciphertext_20
//         bit 31~0 - ciphertext_20[31:0] (Read)
// 0x260 : Control signal of ciphertext_20
//         bit 0  - ciphertext_20_ap_vld (Read/COR)
//         others - reserved
// 0x26c : Data signal of ciphertext_21
//         bit 31~0 - ciphertext_21[31:0] (Read)
// 0x270 : Control signal of ciphertext_21
//         bit 0  - ciphertext_21_ap_vld (Read/COR)
//         others - reserved
// 0x27c : Data signal of ciphertext_22
//         bit 31~0 - ciphertext_22[31:0] (Read)
// 0x280 : Control signal of ciphertext_22
//         bit 0  - ciphertext_22_ap_vld (Read/COR)
//         others - reserved
// 0x28c : Data signal of ciphertext_23
//         bit 31~0 - ciphertext_23[31:0] (Read)
// 0x290 : Control signal of ciphertext_23
//         bit 0  - ciphertext_23_ap_vld (Read/COR)
//         others - reserved
// 0x29c : Data signal of ciphertext_24
//         bit 31~0 - ciphertext_24[31:0] (Read)
// 0x2a0 : Control signal of ciphertext_24
//         bit 0  - ciphertext_24_ap_vld (Read/COR)
//         others - reserved
// 0x2ac : Data signal of ciphertext_25
//         bit 31~0 - ciphertext_25[31:0] (Read)
// 0x2b0 : Control signal of ciphertext_25
//         bit 0  - ciphertext_25_ap_vld (Read/COR)
//         others - reserved
// 0x2bc : Data signal of ciphertext_26
//         bit 31~0 - ciphertext_26[31:0] (Read)
// 0x2c0 : Control signal of ciphertext_26
//         bit 0  - ciphertext_26_ap_vld (Read/COR)
//         others - reserved
// 0x2cc : Data signal of ciphertext_27
//         bit 31~0 - ciphertext_27[31:0] (Read)
// 0x2d0 : Control signal of ciphertext_27
//         bit 0  - ciphertext_27_ap_vld (Read/COR)
//         others - reserved
// 0x2dc : Data signal of ciphertext_28
//         bit 31~0 - ciphertext_28[31:0] (Read)
// 0x2e0 : Control signal of ciphertext_28
//         bit 0  - ciphertext_28_ap_vld (Read/COR)
//         others - reserved
// 0x2ec : Data signal of ciphertext_29
//         bit 31~0 - ciphertext_29[31:0] (Read)
// 0x2f0 : Control signal of ciphertext_29
//         bit 0  - ciphertext_29_ap_vld (Read/COR)
//         others - reserved
// 0x2fc : Data signal of ciphertext_30
//         bit 31~0 - ciphertext_30[31:0] (Read)
// 0x300 : Control signal of ciphertext_30
//         bit 0  - ciphertext_30_ap_vld (Read/COR)
//         others - reserved
// 0x30c : Data signal of ciphertext_31
//         bit 31~0 - ciphertext_31[31:0] (Read)
// 0x310 : Control signal of ciphertext_31
//         bit 0  - ciphertext_31_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL              = 10'h000,
    ADDR_GIE                  = 10'h004,
    ADDR_IER                  = 10'h008,
    ADDR_ISR                  = 10'h00c,
    ADDR_PLAINTEXT_0_DATA_0   = 10'h010,
    ADDR_PLAINTEXT_0_CTRL     = 10'h014,
    ADDR_PLAINTEXT_1_DATA_0   = 10'h018,
    ADDR_PLAINTEXT_1_CTRL     = 10'h01c,
    ADDR_PLAINTEXT_2_DATA_0   = 10'h020,
    ADDR_PLAINTEXT_2_CTRL     = 10'h024,
    ADDR_PLAINTEXT_3_DATA_0   = 10'h028,
    ADDR_PLAINTEXT_3_CTRL     = 10'h02c,
    ADDR_PLAINTEXT_4_DATA_0   = 10'h030,
    ADDR_PLAINTEXT_4_CTRL     = 10'h034,
    ADDR_PLAINTEXT_5_DATA_0   = 10'h038,
    ADDR_PLAINTEXT_5_CTRL     = 10'h03c,
    ADDR_PLAINTEXT_6_DATA_0   = 10'h040,
    ADDR_PLAINTEXT_6_CTRL     = 10'h044,
    ADDR_PLAINTEXT_7_DATA_0   = 10'h048,
    ADDR_PLAINTEXT_7_CTRL     = 10'h04c,
    ADDR_PLAINTEXT_8_DATA_0   = 10'h050,
    ADDR_PLAINTEXT_8_CTRL     = 10'h054,
    ADDR_PLAINTEXT_9_DATA_0   = 10'h058,
    ADDR_PLAINTEXT_9_CTRL     = 10'h05c,
    ADDR_PLAINTEXT_10_DATA_0  = 10'h060,
    ADDR_PLAINTEXT_10_CTRL    = 10'h064,
    ADDR_PLAINTEXT_11_DATA_0  = 10'h068,
    ADDR_PLAINTEXT_11_CTRL    = 10'h06c,
    ADDR_PLAINTEXT_12_DATA_0  = 10'h070,
    ADDR_PLAINTEXT_12_CTRL    = 10'h074,
    ADDR_PLAINTEXT_13_DATA_0  = 10'h078,
    ADDR_PLAINTEXT_13_CTRL    = 10'h07c,
    ADDR_PLAINTEXT_14_DATA_0  = 10'h080,
    ADDR_PLAINTEXT_14_CTRL    = 10'h084,
    ADDR_PLAINTEXT_15_DATA_0  = 10'h088,
    ADDR_PLAINTEXT_15_CTRL    = 10'h08c,
    ADDR_PLAINTEXT_16_DATA_0  = 10'h090,
    ADDR_PLAINTEXT_16_CTRL    = 10'h094,
    ADDR_PLAINTEXT_17_DATA_0  = 10'h098,
    ADDR_PLAINTEXT_17_CTRL    = 10'h09c,
    ADDR_PLAINTEXT_18_DATA_0  = 10'h0a0,
    ADDR_PLAINTEXT_18_CTRL    = 10'h0a4,
    ADDR_PLAINTEXT_19_DATA_0  = 10'h0a8,
    ADDR_PLAINTEXT_19_CTRL    = 10'h0ac,
    ADDR_PLAINTEXT_20_DATA_0  = 10'h0b0,
    ADDR_PLAINTEXT_20_CTRL    = 10'h0b4,
    ADDR_PLAINTEXT_21_DATA_0  = 10'h0b8,
    ADDR_PLAINTEXT_21_CTRL    = 10'h0bc,
    ADDR_PLAINTEXT_22_DATA_0  = 10'h0c0,
    ADDR_PLAINTEXT_22_CTRL    = 10'h0c4,
    ADDR_PLAINTEXT_23_DATA_0  = 10'h0c8,
    ADDR_PLAINTEXT_23_CTRL    = 10'h0cc,
    ADDR_PLAINTEXT_24_DATA_0  = 10'h0d0,
    ADDR_PLAINTEXT_24_CTRL    = 10'h0d4,
    ADDR_PLAINTEXT_25_DATA_0  = 10'h0d8,
    ADDR_PLAINTEXT_25_CTRL    = 10'h0dc,
    ADDR_PLAINTEXT_26_DATA_0  = 10'h0e0,
    ADDR_PLAINTEXT_26_CTRL    = 10'h0e4,
    ADDR_PLAINTEXT_27_DATA_0  = 10'h0e8,
    ADDR_PLAINTEXT_27_CTRL    = 10'h0ec,
    ADDR_PLAINTEXT_28_DATA_0  = 10'h0f0,
    ADDR_PLAINTEXT_28_CTRL    = 10'h0f4,
    ADDR_PLAINTEXT_29_DATA_0  = 10'h0f8,
    ADDR_PLAINTEXT_29_CTRL    = 10'h0fc,
    ADDR_PLAINTEXT_30_DATA_0  = 10'h100,
    ADDR_PLAINTEXT_30_CTRL    = 10'h104,
    ADDR_PLAINTEXT_31_DATA_0  = 10'h108,
    ADDR_PLAINTEXT_31_CTRL    = 10'h10c,
    ADDR_KEY_DATA_0           = 10'h110,
    ADDR_KEY_DATA_1           = 10'h114,
    ADDR_KEY_CTRL             = 10'h118,
    ADDR_CIPHERTEXT_0_DATA_0  = 10'h11c,
    ADDR_CIPHERTEXT_0_CTRL    = 10'h120,
    ADDR_CIPHERTEXT_1_DATA_0  = 10'h12c,
    ADDR_CIPHERTEXT_1_CTRL    = 10'h130,
    ADDR_CIPHERTEXT_2_DATA_0  = 10'h13c,
    ADDR_CIPHERTEXT_2_CTRL    = 10'h140,
    ADDR_CIPHERTEXT_3_DATA_0  = 10'h14c,
    ADDR_CIPHERTEXT_3_CTRL    = 10'h150,
    ADDR_CIPHERTEXT_4_DATA_0  = 10'h15c,
    ADDR_CIPHERTEXT_4_CTRL    = 10'h160,
    ADDR_CIPHERTEXT_5_DATA_0  = 10'h16c,
    ADDR_CIPHERTEXT_5_CTRL    = 10'h170,
    ADDR_CIPHERTEXT_6_DATA_0  = 10'h17c,
    ADDR_CIPHERTEXT_6_CTRL    = 10'h180,
    ADDR_CIPHERTEXT_7_DATA_0  = 10'h18c,
    ADDR_CIPHERTEXT_7_CTRL    = 10'h190,
    ADDR_CIPHERTEXT_8_DATA_0  = 10'h19c,
    ADDR_CIPHERTEXT_8_CTRL    = 10'h1a0,
    ADDR_CIPHERTEXT_9_DATA_0  = 10'h1ac,
    ADDR_CIPHERTEXT_9_CTRL    = 10'h1b0,
    ADDR_CIPHERTEXT_10_DATA_0 = 10'h1bc,
    ADDR_CIPHERTEXT_10_CTRL   = 10'h1c0,
    ADDR_CIPHERTEXT_11_DATA_0 = 10'h1cc,
    ADDR_CIPHERTEXT_11_CTRL   = 10'h1d0,
    ADDR_CIPHERTEXT_12_DATA_0 = 10'h1dc,
    ADDR_CIPHERTEXT_12_CTRL   = 10'h1e0,
    ADDR_CIPHERTEXT_13_DATA_0 = 10'h1ec,
    ADDR_CIPHERTEXT_13_CTRL   = 10'h1f0,
    ADDR_CIPHERTEXT_14_DATA_0 = 10'h1fc,
    ADDR_CIPHERTEXT_14_CTRL   = 10'h200,
    ADDR_CIPHERTEXT_15_DATA_0 = 10'h20c,
    ADDR_CIPHERTEXT_15_CTRL   = 10'h210,
    ADDR_CIPHERTEXT_16_DATA_0 = 10'h21c,
    ADDR_CIPHERTEXT_16_CTRL   = 10'h220,
    ADDR_CIPHERTEXT_17_DATA_0 = 10'h22c,
    ADDR_CIPHERTEXT_17_CTRL   = 10'h230,
    ADDR_CIPHERTEXT_18_DATA_0 = 10'h23c,
    ADDR_CIPHERTEXT_18_CTRL   = 10'h240,
    ADDR_CIPHERTEXT_19_DATA_0 = 10'h24c,
    ADDR_CIPHERTEXT_19_CTRL   = 10'h250,
    ADDR_CIPHERTEXT_20_DATA_0 = 10'h25c,
    ADDR_CIPHERTEXT_20_CTRL   = 10'h260,
    ADDR_CIPHERTEXT_21_DATA_0 = 10'h26c,
    ADDR_CIPHERTEXT_21_CTRL   = 10'h270,
    ADDR_CIPHERTEXT_22_DATA_0 = 10'h27c,
    ADDR_CIPHERTEXT_22_CTRL   = 10'h280,
    ADDR_CIPHERTEXT_23_DATA_0 = 10'h28c,
    ADDR_CIPHERTEXT_23_CTRL   = 10'h290,
    ADDR_CIPHERTEXT_24_DATA_0 = 10'h29c,
    ADDR_CIPHERTEXT_24_CTRL   = 10'h2a0,
    ADDR_CIPHERTEXT_25_DATA_0 = 10'h2ac,
    ADDR_CIPHERTEXT_25_CTRL   = 10'h2b0,
    ADDR_CIPHERTEXT_26_DATA_0 = 10'h2bc,
    ADDR_CIPHERTEXT_26_CTRL   = 10'h2c0,
    ADDR_CIPHERTEXT_27_DATA_0 = 10'h2cc,
    ADDR_CIPHERTEXT_27_CTRL   = 10'h2d0,
    ADDR_CIPHERTEXT_28_DATA_0 = 10'h2dc,
    ADDR_CIPHERTEXT_28_CTRL   = 10'h2e0,
    ADDR_CIPHERTEXT_29_DATA_0 = 10'h2ec,
    ADDR_CIPHERTEXT_29_CTRL   = 10'h2f0,
    ADDR_CIPHERTEXT_30_DATA_0 = 10'h2fc,
    ADDR_CIPHERTEXT_30_CTRL   = 10'h300,
    ADDR_CIPHERTEXT_31_DATA_0 = 10'h30c,
    ADDR_CIPHERTEXT_31_CTRL   = 10'h310,
    WRIDLE                    = 2'd0,
    WRDATA                    = 2'd1,
    WRRESP                    = 2'd2,
    WRRESET                   = 2'd3,
    RDIDLE                    = 2'd0,
    RDDATA                    = 2'd1,
    RDRESET                   = 2'd2,
    ADDR_BITS                = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_plaintext_0 = 'b0;
    reg  [31:0]                   int_plaintext_1 = 'b0;
    reg  [31:0]                   int_plaintext_2 = 'b0;
    reg  [31:0]                   int_plaintext_3 = 'b0;
    reg  [31:0]                   int_plaintext_4 = 'b0;
    reg  [31:0]                   int_plaintext_5 = 'b0;
    reg  [31:0]                   int_plaintext_6 = 'b0;
    reg  [31:0]                   int_plaintext_7 = 'b0;
    reg  [31:0]                   int_plaintext_8 = 'b0;
    reg  [31:0]                   int_plaintext_9 = 'b0;
    reg  [31:0]                   int_plaintext_10 = 'b0;
    reg  [31:0]                   int_plaintext_11 = 'b0;
    reg  [31:0]                   int_plaintext_12 = 'b0;
    reg  [31:0]                   int_plaintext_13 = 'b0;
    reg  [31:0]                   int_plaintext_14 = 'b0;
    reg  [31:0]                   int_plaintext_15 = 'b0;
    reg  [31:0]                   int_plaintext_16 = 'b0;
    reg  [31:0]                   int_plaintext_17 = 'b0;
    reg  [31:0]                   int_plaintext_18 = 'b0;
    reg  [31:0]                   int_plaintext_19 = 'b0;
    reg  [31:0]                   int_plaintext_20 = 'b0;
    reg  [31:0]                   int_plaintext_21 = 'b0;
    reg  [31:0]                   int_plaintext_22 = 'b0;
    reg  [31:0]                   int_plaintext_23 = 'b0;
    reg  [31:0]                   int_plaintext_24 = 'b0;
    reg  [31:0]                   int_plaintext_25 = 'b0;
    reg  [31:0]                   int_plaintext_26 = 'b0;
    reg  [31:0]                   int_plaintext_27 = 'b0;
    reg  [31:0]                   int_plaintext_28 = 'b0;
    reg  [31:0]                   int_plaintext_29 = 'b0;
    reg  [31:0]                   int_plaintext_30 = 'b0;
    reg  [31:0]                   int_plaintext_31 = 'b0;
    reg  [63:0]                   int_key = 'b0;
    reg                           int_ciphertext_0_ap_vld;
    reg  [31:0]                   int_ciphertext_0 = 'b0;
    reg                           int_ciphertext_1_ap_vld;
    reg  [31:0]                   int_ciphertext_1 = 'b0;
    reg                           int_ciphertext_2_ap_vld;
    reg  [31:0]                   int_ciphertext_2 = 'b0;
    reg                           int_ciphertext_3_ap_vld;
    reg  [31:0]                   int_ciphertext_3 = 'b0;
    reg                           int_ciphertext_4_ap_vld;
    reg  [31:0]                   int_ciphertext_4 = 'b0;
    reg                           int_ciphertext_5_ap_vld;
    reg  [31:0]                   int_ciphertext_5 = 'b0;
    reg                           int_ciphertext_6_ap_vld;
    reg  [31:0]                   int_ciphertext_6 = 'b0;
    reg                           int_ciphertext_7_ap_vld;
    reg  [31:0]                   int_ciphertext_7 = 'b0;
    reg                           int_ciphertext_8_ap_vld;
    reg  [31:0]                   int_ciphertext_8 = 'b0;
    reg                           int_ciphertext_9_ap_vld;
    reg  [31:0]                   int_ciphertext_9 = 'b0;
    reg                           int_ciphertext_10_ap_vld;
    reg  [31:0]                   int_ciphertext_10 = 'b0;
    reg                           int_ciphertext_11_ap_vld;
    reg  [31:0]                   int_ciphertext_11 = 'b0;
    reg                           int_ciphertext_12_ap_vld;
    reg  [31:0]                   int_ciphertext_12 = 'b0;
    reg                           int_ciphertext_13_ap_vld;
    reg  [31:0]                   int_ciphertext_13 = 'b0;
    reg                           int_ciphertext_14_ap_vld;
    reg  [31:0]                   int_ciphertext_14 = 'b0;
    reg                           int_ciphertext_15_ap_vld;
    reg  [31:0]                   int_ciphertext_15 = 'b0;
    reg                           int_ciphertext_16_ap_vld;
    reg  [31:0]                   int_ciphertext_16 = 'b0;
    reg                           int_ciphertext_17_ap_vld;
    reg  [31:0]                   int_ciphertext_17 = 'b0;
    reg                           int_ciphertext_18_ap_vld;
    reg  [31:0]                   int_ciphertext_18 = 'b0;
    reg                           int_ciphertext_19_ap_vld;
    reg  [31:0]                   int_ciphertext_19 = 'b0;
    reg                           int_ciphertext_20_ap_vld;
    reg  [31:0]                   int_ciphertext_20 = 'b0;
    reg                           int_ciphertext_21_ap_vld;
    reg  [31:0]                   int_ciphertext_21 = 'b0;
    reg                           int_ciphertext_22_ap_vld;
    reg  [31:0]                   int_ciphertext_22 = 'b0;
    reg                           int_ciphertext_23_ap_vld;
    reg  [31:0]                   int_ciphertext_23 = 'b0;
    reg                           int_ciphertext_24_ap_vld;
    reg  [31:0]                   int_ciphertext_24 = 'b0;
    reg                           int_ciphertext_25_ap_vld;
    reg  [31:0]                   int_ciphertext_25 = 'b0;
    reg                           int_ciphertext_26_ap_vld;
    reg  [31:0]                   int_ciphertext_26 = 'b0;
    reg                           int_ciphertext_27_ap_vld;
    reg  [31:0]                   int_ciphertext_27 = 'b0;
    reg                           int_ciphertext_28_ap_vld;
    reg  [31:0]                   int_ciphertext_28 = 'b0;
    reg                           int_ciphertext_29_ap_vld;
    reg  [31:0]                   int_ciphertext_29 = 'b0;
    reg                           int_ciphertext_30_ap_vld;
    reg  [31:0]                   int_ciphertext_30 = 'b0;
    reg                           int_ciphertext_31_ap_vld;
    reg  [31:0]                   int_ciphertext_31 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BVALID  = (wstate == WRRESP);
assign BRESP   = 2'b00;  // OKAY
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY & BVALID)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_PLAINTEXT_0_DATA_0: begin
                    rdata <= int_plaintext_0[31:0];
                end
                ADDR_PLAINTEXT_1_DATA_0: begin
                    rdata <= int_plaintext_1[31:0];
                end
                ADDR_PLAINTEXT_2_DATA_0: begin
                    rdata <= int_plaintext_2[31:0];
                end
                ADDR_PLAINTEXT_3_DATA_0: begin
                    rdata <= int_plaintext_3[31:0];
                end
                ADDR_PLAINTEXT_4_DATA_0: begin
                    rdata <= int_plaintext_4[31:0];
                end
                ADDR_PLAINTEXT_5_DATA_0: begin
                    rdata <= int_plaintext_5[31:0];
                end
                ADDR_PLAINTEXT_6_DATA_0: begin
                    rdata <= int_plaintext_6[31:0];
                end
                ADDR_PLAINTEXT_7_DATA_0: begin
                    rdata <= int_plaintext_7[31:0];
                end
                ADDR_PLAINTEXT_8_DATA_0: begin
                    rdata <= int_plaintext_8[31:0];
                end
                ADDR_PLAINTEXT_9_DATA_0: begin
                    rdata <= int_plaintext_9[31:0];
                end
                ADDR_PLAINTEXT_10_DATA_0: begin
                    rdata <= int_plaintext_10[31:0];
                end
                ADDR_PLAINTEXT_11_DATA_0: begin
                    rdata <= int_plaintext_11[31:0];
                end
                ADDR_PLAINTEXT_12_DATA_0: begin
                    rdata <= int_plaintext_12[31:0];
                end
                ADDR_PLAINTEXT_13_DATA_0: begin
                    rdata <= int_plaintext_13[31:0];
                end
                ADDR_PLAINTEXT_14_DATA_0: begin
                    rdata <= int_plaintext_14[31:0];
                end
                ADDR_PLAINTEXT_15_DATA_0: begin
                    rdata <= int_plaintext_15[31:0];
                end
                ADDR_PLAINTEXT_16_DATA_0: begin
                    rdata <= int_plaintext_16[31:0];
                end
                ADDR_PLAINTEXT_17_DATA_0: begin
                    rdata <= int_plaintext_17[31:0];
                end
                ADDR_PLAINTEXT_18_DATA_0: begin
                    rdata <= int_plaintext_18[31:0];
                end
                ADDR_PLAINTEXT_19_DATA_0: begin
                    rdata <= int_plaintext_19[31:0];
                end
                ADDR_PLAINTEXT_20_DATA_0: begin
                    rdata <= int_plaintext_20[31:0];
                end
                ADDR_PLAINTEXT_21_DATA_0: begin
                    rdata <= int_plaintext_21[31:0];
                end
                ADDR_PLAINTEXT_22_DATA_0: begin
                    rdata <= int_plaintext_22[31:0];
                end
                ADDR_PLAINTEXT_23_DATA_0: begin
                    rdata <= int_plaintext_23[31:0];
                end
                ADDR_PLAINTEXT_24_DATA_0: begin
                    rdata <= int_plaintext_24[31:0];
                end
                ADDR_PLAINTEXT_25_DATA_0: begin
                    rdata <= int_plaintext_25[31:0];
                end
                ADDR_PLAINTEXT_26_DATA_0: begin
                    rdata <= int_plaintext_26[31:0];
                end
                ADDR_PLAINTEXT_27_DATA_0: begin
                    rdata <= int_plaintext_27[31:0];
                end
                ADDR_PLAINTEXT_28_DATA_0: begin
                    rdata <= int_plaintext_28[31:0];
                end
                ADDR_PLAINTEXT_29_DATA_0: begin
                    rdata <= int_plaintext_29[31:0];
                end
                ADDR_PLAINTEXT_30_DATA_0: begin
                    rdata <= int_plaintext_30[31:0];
                end
                ADDR_PLAINTEXT_31_DATA_0: begin
                    rdata <= int_plaintext_31[31:0];
                end
                ADDR_KEY_DATA_0: begin
                    rdata <= int_key[31:0];
                end
                ADDR_KEY_DATA_1: begin
                    rdata <= int_key[63:32];
                end
                ADDR_CIPHERTEXT_0_DATA_0: begin
                    rdata <= int_ciphertext_0[31:0];
                end
                ADDR_CIPHERTEXT_0_CTRL: begin
                    rdata[0] <= int_ciphertext_0_ap_vld;
                end
                ADDR_CIPHERTEXT_1_DATA_0: begin
                    rdata <= int_ciphertext_1[31:0];
                end
                ADDR_CIPHERTEXT_1_CTRL: begin
                    rdata[0] <= int_ciphertext_1_ap_vld;
                end
                ADDR_CIPHERTEXT_2_DATA_0: begin
                    rdata <= int_ciphertext_2[31:0];
                end
                ADDR_CIPHERTEXT_2_CTRL: begin
                    rdata[0] <= int_ciphertext_2_ap_vld;
                end
                ADDR_CIPHERTEXT_3_DATA_0: begin
                    rdata <= int_ciphertext_3[31:0];
                end
                ADDR_CIPHERTEXT_3_CTRL: begin
                    rdata[0] <= int_ciphertext_3_ap_vld;
                end
                ADDR_CIPHERTEXT_4_DATA_0: begin
                    rdata <= int_ciphertext_4[31:0];
                end
                ADDR_CIPHERTEXT_4_CTRL: begin
                    rdata[0] <= int_ciphertext_4_ap_vld;
                end
                ADDR_CIPHERTEXT_5_DATA_0: begin
                    rdata <= int_ciphertext_5[31:0];
                end
                ADDR_CIPHERTEXT_5_CTRL: begin
                    rdata[0] <= int_ciphertext_5_ap_vld;
                end
                ADDR_CIPHERTEXT_6_DATA_0: begin
                    rdata <= int_ciphertext_6[31:0];
                end
                ADDR_CIPHERTEXT_6_CTRL: begin
                    rdata[0] <= int_ciphertext_6_ap_vld;
                end
                ADDR_CIPHERTEXT_7_DATA_0: begin
                    rdata <= int_ciphertext_7[31:0];
                end
                ADDR_CIPHERTEXT_7_CTRL: begin
                    rdata[0] <= int_ciphertext_7_ap_vld;
                end
                ADDR_CIPHERTEXT_8_DATA_0: begin
                    rdata <= int_ciphertext_8[31:0];
                end
                ADDR_CIPHERTEXT_8_CTRL: begin
                    rdata[0] <= int_ciphertext_8_ap_vld;
                end
                ADDR_CIPHERTEXT_9_DATA_0: begin
                    rdata <= int_ciphertext_9[31:0];
                end
                ADDR_CIPHERTEXT_9_CTRL: begin
                    rdata[0] <= int_ciphertext_9_ap_vld;
                end
                ADDR_CIPHERTEXT_10_DATA_0: begin
                    rdata <= int_ciphertext_10[31:0];
                end
                ADDR_CIPHERTEXT_10_CTRL: begin
                    rdata[0] <= int_ciphertext_10_ap_vld;
                end
                ADDR_CIPHERTEXT_11_DATA_0: begin
                    rdata <= int_ciphertext_11[31:0];
                end
                ADDR_CIPHERTEXT_11_CTRL: begin
                    rdata[0] <= int_ciphertext_11_ap_vld;
                end
                ADDR_CIPHERTEXT_12_DATA_0: begin
                    rdata <= int_ciphertext_12[31:0];
                end
                ADDR_CIPHERTEXT_12_CTRL: begin
                    rdata[0] <= int_ciphertext_12_ap_vld;
                end
                ADDR_CIPHERTEXT_13_DATA_0: begin
                    rdata <= int_ciphertext_13[31:0];
                end
                ADDR_CIPHERTEXT_13_CTRL: begin
                    rdata[0] <= int_ciphertext_13_ap_vld;
                end
                ADDR_CIPHERTEXT_14_DATA_0: begin
                    rdata <= int_ciphertext_14[31:0];
                end
                ADDR_CIPHERTEXT_14_CTRL: begin
                    rdata[0] <= int_ciphertext_14_ap_vld;
                end
                ADDR_CIPHERTEXT_15_DATA_0: begin
                    rdata <= int_ciphertext_15[31:0];
                end
                ADDR_CIPHERTEXT_15_CTRL: begin
                    rdata[0] <= int_ciphertext_15_ap_vld;
                end
                ADDR_CIPHERTEXT_16_DATA_0: begin
                    rdata <= int_ciphertext_16[31:0];
                end
                ADDR_CIPHERTEXT_16_CTRL: begin
                    rdata[0] <= int_ciphertext_16_ap_vld;
                end
                ADDR_CIPHERTEXT_17_DATA_0: begin
                    rdata <= int_ciphertext_17[31:0];
                end
                ADDR_CIPHERTEXT_17_CTRL: begin
                    rdata[0] <= int_ciphertext_17_ap_vld;
                end
                ADDR_CIPHERTEXT_18_DATA_0: begin
                    rdata <= int_ciphertext_18[31:0];
                end
                ADDR_CIPHERTEXT_18_CTRL: begin
                    rdata[0] <= int_ciphertext_18_ap_vld;
                end
                ADDR_CIPHERTEXT_19_DATA_0: begin
                    rdata <= int_ciphertext_19[31:0];
                end
                ADDR_CIPHERTEXT_19_CTRL: begin
                    rdata[0] <= int_ciphertext_19_ap_vld;
                end
                ADDR_CIPHERTEXT_20_DATA_0: begin
                    rdata <= int_ciphertext_20[31:0];
                end
                ADDR_CIPHERTEXT_20_CTRL: begin
                    rdata[0] <= int_ciphertext_20_ap_vld;
                end
                ADDR_CIPHERTEXT_21_DATA_0: begin
                    rdata <= int_ciphertext_21[31:0];
                end
                ADDR_CIPHERTEXT_21_CTRL: begin
                    rdata[0] <= int_ciphertext_21_ap_vld;
                end
                ADDR_CIPHERTEXT_22_DATA_0: begin
                    rdata <= int_ciphertext_22[31:0];
                end
                ADDR_CIPHERTEXT_22_CTRL: begin
                    rdata[0] <= int_ciphertext_22_ap_vld;
                end
                ADDR_CIPHERTEXT_23_DATA_0: begin
                    rdata <= int_ciphertext_23[31:0];
                end
                ADDR_CIPHERTEXT_23_CTRL: begin
                    rdata[0] <= int_ciphertext_23_ap_vld;
                end
                ADDR_CIPHERTEXT_24_DATA_0: begin
                    rdata <= int_ciphertext_24[31:0];
                end
                ADDR_CIPHERTEXT_24_CTRL: begin
                    rdata[0] <= int_ciphertext_24_ap_vld;
                end
                ADDR_CIPHERTEXT_25_DATA_0: begin
                    rdata <= int_ciphertext_25[31:0];
                end
                ADDR_CIPHERTEXT_25_CTRL: begin
                    rdata[0] <= int_ciphertext_25_ap_vld;
                end
                ADDR_CIPHERTEXT_26_DATA_0: begin
                    rdata <= int_ciphertext_26[31:0];
                end
                ADDR_CIPHERTEXT_26_CTRL: begin
                    rdata[0] <= int_ciphertext_26_ap_vld;
                end
                ADDR_CIPHERTEXT_27_DATA_0: begin
                    rdata <= int_ciphertext_27[31:0];
                end
                ADDR_CIPHERTEXT_27_CTRL: begin
                    rdata[0] <= int_ciphertext_27_ap_vld;
                end
                ADDR_CIPHERTEXT_28_DATA_0: begin
                    rdata <= int_ciphertext_28[31:0];
                end
                ADDR_CIPHERTEXT_28_CTRL: begin
                    rdata[0] <= int_ciphertext_28_ap_vld;
                end
                ADDR_CIPHERTEXT_29_DATA_0: begin
                    rdata <= int_ciphertext_29[31:0];
                end
                ADDR_CIPHERTEXT_29_CTRL: begin
                    rdata[0] <= int_ciphertext_29_ap_vld;
                end
                ADDR_CIPHERTEXT_30_DATA_0: begin
                    rdata <= int_ciphertext_30[31:0];
                end
                ADDR_CIPHERTEXT_30_CTRL: begin
                    rdata[0] <= int_ciphertext_30_ap_vld;
                end
                ADDR_CIPHERTEXT_31_DATA_0: begin
                    rdata <= int_ciphertext_31[31:0];
                end
                ADDR_CIPHERTEXT_31_CTRL: begin
                    rdata[0] <= int_ciphertext_31_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign plaintext_0       = int_plaintext_0;
assign plaintext_1       = int_plaintext_1;
assign plaintext_2       = int_plaintext_2;
assign plaintext_3       = int_plaintext_3;
assign plaintext_4       = int_plaintext_4;
assign plaintext_5       = int_plaintext_5;
assign plaintext_6       = int_plaintext_6;
assign plaintext_7       = int_plaintext_7;
assign plaintext_8       = int_plaintext_8;
assign plaintext_9       = int_plaintext_9;
assign plaintext_10      = int_plaintext_10;
assign plaintext_11      = int_plaintext_11;
assign plaintext_12      = int_plaintext_12;
assign plaintext_13      = int_plaintext_13;
assign plaintext_14      = int_plaintext_14;
assign plaintext_15      = int_plaintext_15;
assign plaintext_16      = int_plaintext_16;
assign plaintext_17      = int_plaintext_17;
assign plaintext_18      = int_plaintext_18;
assign plaintext_19      = int_plaintext_19;
assign plaintext_20      = int_plaintext_20;
assign plaintext_21      = int_plaintext_21;
assign plaintext_22      = int_plaintext_22;
assign plaintext_23      = int_plaintext_23;
assign plaintext_24      = int_plaintext_24;
assign plaintext_25      = int_plaintext_25;
assign plaintext_26      = int_plaintext_26;
assign plaintext_27      = int_plaintext_27;
assign plaintext_28      = int_plaintext_28;
assign plaintext_29      = int_plaintext_29;
assign plaintext_30      = int_plaintext_30;
assign plaintext_31      = int_plaintext_31;
assign key               = int_key;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_plaintext_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_0_DATA_0)
            int_plaintext_0[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_0[31:0] & ~wmask);
    end
end

// int_plaintext_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_1_DATA_0)
            int_plaintext_1[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_1[31:0] & ~wmask);
    end
end

// int_plaintext_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_2_DATA_0)
            int_plaintext_2[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_2[31:0] & ~wmask);
    end
end

// int_plaintext_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_3_DATA_0)
            int_plaintext_3[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_3[31:0] & ~wmask);
    end
end

// int_plaintext_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_4_DATA_0)
            int_plaintext_4[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_4[31:0] & ~wmask);
    end
end

// int_plaintext_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_5_DATA_0)
            int_plaintext_5[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_5[31:0] & ~wmask);
    end
end

// int_plaintext_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_6_DATA_0)
            int_plaintext_6[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_6[31:0] & ~wmask);
    end
end

// int_plaintext_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_7_DATA_0)
            int_plaintext_7[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_7[31:0] & ~wmask);
    end
end

// int_plaintext_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_8_DATA_0)
            int_plaintext_8[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_8[31:0] & ~wmask);
    end
end

// int_plaintext_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_9_DATA_0)
            int_plaintext_9[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_9[31:0] & ~wmask);
    end
end

// int_plaintext_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_10_DATA_0)
            int_plaintext_10[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_10[31:0] & ~wmask);
    end
end

// int_plaintext_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_11_DATA_0)
            int_plaintext_11[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_11[31:0] & ~wmask);
    end
end

// int_plaintext_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_12_DATA_0)
            int_plaintext_12[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_12[31:0] & ~wmask);
    end
end

// int_plaintext_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_13_DATA_0)
            int_plaintext_13[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_13[31:0] & ~wmask);
    end
end

// int_plaintext_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_14_DATA_0)
            int_plaintext_14[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_14[31:0] & ~wmask);
    end
end

// int_plaintext_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_15_DATA_0)
            int_plaintext_15[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_15[31:0] & ~wmask);
    end
end

// int_plaintext_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_16_DATA_0)
            int_plaintext_16[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_16[31:0] & ~wmask);
    end
end

// int_plaintext_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_17_DATA_0)
            int_plaintext_17[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_17[31:0] & ~wmask);
    end
end

// int_plaintext_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_18_DATA_0)
            int_plaintext_18[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_18[31:0] & ~wmask);
    end
end

// int_plaintext_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_19_DATA_0)
            int_plaintext_19[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_19[31:0] & ~wmask);
    end
end

// int_plaintext_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_20_DATA_0)
            int_plaintext_20[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_20[31:0] & ~wmask);
    end
end

// int_plaintext_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_21_DATA_0)
            int_plaintext_21[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_21[31:0] & ~wmask);
    end
end

// int_plaintext_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_22_DATA_0)
            int_plaintext_22[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_22[31:0] & ~wmask);
    end
end

// int_plaintext_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_23_DATA_0)
            int_plaintext_23[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_23[31:0] & ~wmask);
    end
end

// int_plaintext_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_24_DATA_0)
            int_plaintext_24[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_24[31:0] & ~wmask);
    end
end

// int_plaintext_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_25_DATA_0)
            int_plaintext_25[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_25[31:0] & ~wmask);
    end
end

// int_plaintext_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_26_DATA_0)
            int_plaintext_26[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_26[31:0] & ~wmask);
    end
end

// int_plaintext_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_27_DATA_0)
            int_plaintext_27[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_27[31:0] & ~wmask);
    end
end

// int_plaintext_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_28_DATA_0)
            int_plaintext_28[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_28[31:0] & ~wmask);
    end
end

// int_plaintext_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_29_DATA_0)
            int_plaintext_29[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_29[31:0] & ~wmask);
    end
end

// int_plaintext_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_30_DATA_0)
            int_plaintext_30[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_30[31:0] & ~wmask);
    end
end

// int_plaintext_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_plaintext_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PLAINTEXT_31_DATA_0)
            int_plaintext_31[31:0] <= (WDATA[31:0] & wmask) | (int_plaintext_31[31:0] & ~wmask);
    end
end

// int_key[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_key[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KEY_DATA_0)
            int_key[31:0] <= (WDATA[31:0] & wmask) | (int_key[31:0] & ~wmask);
    end
end

// int_key[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_key[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KEY_DATA_1)
            int_key[63:32] <= (WDATA[31:0] & wmask) | (int_key[63:32] & ~wmask);
    end
end

// int_ciphertext_0
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_0 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_0_ap_vld)
            int_ciphertext_0 <= ciphertext_0;
    end
end

// int_ciphertext_0_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_0_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_0_ap_vld)
            int_ciphertext_0_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_0_CTRL)
            int_ciphertext_0_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_1
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_1 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_1_ap_vld)
            int_ciphertext_1 <= ciphertext_1;
    end
end

// int_ciphertext_1_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_1_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_1_ap_vld)
            int_ciphertext_1_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_1_CTRL)
            int_ciphertext_1_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_2
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_2 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_2_ap_vld)
            int_ciphertext_2 <= ciphertext_2;
    end
end

// int_ciphertext_2_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_2_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_2_ap_vld)
            int_ciphertext_2_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_2_CTRL)
            int_ciphertext_2_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_3
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_3 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_3_ap_vld)
            int_ciphertext_3 <= ciphertext_3;
    end
end

// int_ciphertext_3_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_3_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_3_ap_vld)
            int_ciphertext_3_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_3_CTRL)
            int_ciphertext_3_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_4
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_4 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_4_ap_vld)
            int_ciphertext_4 <= ciphertext_4;
    end
end

// int_ciphertext_4_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_4_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_4_ap_vld)
            int_ciphertext_4_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_4_CTRL)
            int_ciphertext_4_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_5
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_5 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_5_ap_vld)
            int_ciphertext_5 <= ciphertext_5;
    end
end

// int_ciphertext_5_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_5_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_5_ap_vld)
            int_ciphertext_5_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_5_CTRL)
            int_ciphertext_5_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_6
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_6 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_6_ap_vld)
            int_ciphertext_6 <= ciphertext_6;
    end
end

// int_ciphertext_6_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_6_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_6_ap_vld)
            int_ciphertext_6_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_6_CTRL)
            int_ciphertext_6_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_7
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_7 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_7_ap_vld)
            int_ciphertext_7 <= ciphertext_7;
    end
end

// int_ciphertext_7_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_7_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_7_ap_vld)
            int_ciphertext_7_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_7_CTRL)
            int_ciphertext_7_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_8
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_8 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_8_ap_vld)
            int_ciphertext_8 <= ciphertext_8;
    end
end

// int_ciphertext_8_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_8_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_8_ap_vld)
            int_ciphertext_8_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_8_CTRL)
            int_ciphertext_8_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_9
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_9 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_9_ap_vld)
            int_ciphertext_9 <= ciphertext_9;
    end
end

// int_ciphertext_9_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_9_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_9_ap_vld)
            int_ciphertext_9_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_9_CTRL)
            int_ciphertext_9_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_10
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_10 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_10_ap_vld)
            int_ciphertext_10 <= ciphertext_10;
    end
end

// int_ciphertext_10_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_10_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_10_ap_vld)
            int_ciphertext_10_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_10_CTRL)
            int_ciphertext_10_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_11
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_11 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_11_ap_vld)
            int_ciphertext_11 <= ciphertext_11;
    end
end

// int_ciphertext_11_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_11_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_11_ap_vld)
            int_ciphertext_11_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_11_CTRL)
            int_ciphertext_11_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_12
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_12 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_12_ap_vld)
            int_ciphertext_12 <= ciphertext_12;
    end
end

// int_ciphertext_12_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_12_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_12_ap_vld)
            int_ciphertext_12_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_12_CTRL)
            int_ciphertext_12_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_13
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_13 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_13_ap_vld)
            int_ciphertext_13 <= ciphertext_13;
    end
end

// int_ciphertext_13_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_13_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_13_ap_vld)
            int_ciphertext_13_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_13_CTRL)
            int_ciphertext_13_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_14
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_14 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_14_ap_vld)
            int_ciphertext_14 <= ciphertext_14;
    end
end

// int_ciphertext_14_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_14_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_14_ap_vld)
            int_ciphertext_14_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_14_CTRL)
            int_ciphertext_14_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_15
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_15 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_15_ap_vld)
            int_ciphertext_15 <= ciphertext_15;
    end
end

// int_ciphertext_15_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_15_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_15_ap_vld)
            int_ciphertext_15_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_15_CTRL)
            int_ciphertext_15_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_16
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_16 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_16_ap_vld)
            int_ciphertext_16 <= ciphertext_16;
    end
end

// int_ciphertext_16_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_16_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_16_ap_vld)
            int_ciphertext_16_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_16_CTRL)
            int_ciphertext_16_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_17
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_17 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_17_ap_vld)
            int_ciphertext_17 <= ciphertext_17;
    end
end

// int_ciphertext_17_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_17_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_17_ap_vld)
            int_ciphertext_17_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_17_CTRL)
            int_ciphertext_17_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_18
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_18 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_18_ap_vld)
            int_ciphertext_18 <= ciphertext_18;
    end
end

// int_ciphertext_18_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_18_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_18_ap_vld)
            int_ciphertext_18_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_18_CTRL)
            int_ciphertext_18_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_19
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_19 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_19_ap_vld)
            int_ciphertext_19 <= ciphertext_19;
    end
end

// int_ciphertext_19_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_19_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_19_ap_vld)
            int_ciphertext_19_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_19_CTRL)
            int_ciphertext_19_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_20
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_20 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_20_ap_vld)
            int_ciphertext_20 <= ciphertext_20;
    end
end

// int_ciphertext_20_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_20_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_20_ap_vld)
            int_ciphertext_20_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_20_CTRL)
            int_ciphertext_20_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_21
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_21 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_21_ap_vld)
            int_ciphertext_21 <= ciphertext_21;
    end
end

// int_ciphertext_21_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_21_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_21_ap_vld)
            int_ciphertext_21_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_21_CTRL)
            int_ciphertext_21_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_22
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_22 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_22_ap_vld)
            int_ciphertext_22 <= ciphertext_22;
    end
end

// int_ciphertext_22_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_22_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_22_ap_vld)
            int_ciphertext_22_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_22_CTRL)
            int_ciphertext_22_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_23
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_23 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_23_ap_vld)
            int_ciphertext_23 <= ciphertext_23;
    end
end

// int_ciphertext_23_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_23_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_23_ap_vld)
            int_ciphertext_23_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_23_CTRL)
            int_ciphertext_23_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_24
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_24 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_24_ap_vld)
            int_ciphertext_24 <= ciphertext_24;
    end
end

// int_ciphertext_24_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_24_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_24_ap_vld)
            int_ciphertext_24_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_24_CTRL)
            int_ciphertext_24_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_25
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_25 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_25_ap_vld)
            int_ciphertext_25 <= ciphertext_25;
    end
end

// int_ciphertext_25_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_25_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_25_ap_vld)
            int_ciphertext_25_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_25_CTRL)
            int_ciphertext_25_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_26
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_26 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_26_ap_vld)
            int_ciphertext_26 <= ciphertext_26;
    end
end

// int_ciphertext_26_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_26_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_26_ap_vld)
            int_ciphertext_26_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_26_CTRL)
            int_ciphertext_26_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_27
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_27 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_27_ap_vld)
            int_ciphertext_27 <= ciphertext_27;
    end
end

// int_ciphertext_27_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_27_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_27_ap_vld)
            int_ciphertext_27_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_27_CTRL)
            int_ciphertext_27_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_28
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_28 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_28_ap_vld)
            int_ciphertext_28 <= ciphertext_28;
    end
end

// int_ciphertext_28_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_28_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_28_ap_vld)
            int_ciphertext_28_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_28_CTRL)
            int_ciphertext_28_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_29
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_29 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_29_ap_vld)
            int_ciphertext_29 <= ciphertext_29;
    end
end

// int_ciphertext_29_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_29_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_29_ap_vld)
            int_ciphertext_29_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_29_CTRL)
            int_ciphertext_29_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_30
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_30 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_30_ap_vld)
            int_ciphertext_30 <= ciphertext_30;
    end
end

// int_ciphertext_30_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_30_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_30_ap_vld)
            int_ciphertext_30_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_30_CTRL)
            int_ciphertext_30_ap_vld <= 1'b0; // clear on read
    end
end

// int_ciphertext_31
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_31 <= 0;
    else if (ACLK_EN) begin
        if (ciphertext_31_ap_vld)
            int_ciphertext_31 <= ciphertext_31;
    end
end

// int_ciphertext_31_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_ciphertext_31_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (ciphertext_31_ap_vld)
            int_ciphertext_31_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CIPHERTEXT_31_CTRL)
            int_ciphertext_31_ap_vld <= 1'b0; // clear on read
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
