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

#define CONTROL_ADDR_AP_CTRL            0x000
#define CONTROL_ADDR_GIE                0x004
#define CONTROL_ADDR_IER                0x008
#define CONTROL_ADDR_ISR                0x00c
#define CONTROL_ADDR_PLAINTEXT_0_DATA   0x010
#define CONTROL_BITS_PLAINTEXT_0_DATA   32
#define CONTROL_ADDR_PLAINTEXT_1_DATA   0x018
#define CONTROL_BITS_PLAINTEXT_1_DATA   32
#define CONTROL_ADDR_PLAINTEXT_2_DATA   0x020
#define CONTROL_BITS_PLAINTEXT_2_DATA   32
#define CONTROL_ADDR_PLAINTEXT_3_DATA   0x028
#define CONTROL_BITS_PLAINTEXT_3_DATA   32
#define CONTROL_ADDR_PLAINTEXT_4_DATA   0x030
#define CONTROL_BITS_PLAINTEXT_4_DATA   32
#define CONTROL_ADDR_PLAINTEXT_5_DATA   0x038
#define CONTROL_BITS_PLAINTEXT_5_DATA   32
#define CONTROL_ADDR_PLAINTEXT_6_DATA   0x040
#define CONTROL_BITS_PLAINTEXT_6_DATA   32
#define CONTROL_ADDR_PLAINTEXT_7_DATA   0x048
#define CONTROL_BITS_PLAINTEXT_7_DATA   32
#define CONTROL_ADDR_PLAINTEXT_8_DATA   0x050
#define CONTROL_BITS_PLAINTEXT_8_DATA   32
#define CONTROL_ADDR_PLAINTEXT_9_DATA   0x058
#define CONTROL_BITS_PLAINTEXT_9_DATA   32
#define CONTROL_ADDR_PLAINTEXT_10_DATA  0x060
#define CONTROL_BITS_PLAINTEXT_10_DATA  32
#define CONTROL_ADDR_PLAINTEXT_11_DATA  0x068
#define CONTROL_BITS_PLAINTEXT_11_DATA  32
#define CONTROL_ADDR_PLAINTEXT_12_DATA  0x070
#define CONTROL_BITS_PLAINTEXT_12_DATA  32
#define CONTROL_ADDR_PLAINTEXT_13_DATA  0x078
#define CONTROL_BITS_PLAINTEXT_13_DATA  32
#define CONTROL_ADDR_PLAINTEXT_14_DATA  0x080
#define CONTROL_BITS_PLAINTEXT_14_DATA  32
#define CONTROL_ADDR_PLAINTEXT_15_DATA  0x088
#define CONTROL_BITS_PLAINTEXT_15_DATA  32
#define CONTROL_ADDR_PLAINTEXT_16_DATA  0x090
#define CONTROL_BITS_PLAINTEXT_16_DATA  32
#define CONTROL_ADDR_PLAINTEXT_17_DATA  0x098
#define CONTROL_BITS_PLAINTEXT_17_DATA  32
#define CONTROL_ADDR_PLAINTEXT_18_DATA  0x0a0
#define CONTROL_BITS_PLAINTEXT_18_DATA  32
#define CONTROL_ADDR_PLAINTEXT_19_DATA  0x0a8
#define CONTROL_BITS_PLAINTEXT_19_DATA  32
#define CONTROL_ADDR_PLAINTEXT_20_DATA  0x0b0
#define CONTROL_BITS_PLAINTEXT_20_DATA  32
#define CONTROL_ADDR_PLAINTEXT_21_DATA  0x0b8
#define CONTROL_BITS_PLAINTEXT_21_DATA  32
#define CONTROL_ADDR_PLAINTEXT_22_DATA  0x0c0
#define CONTROL_BITS_PLAINTEXT_22_DATA  32
#define CONTROL_ADDR_PLAINTEXT_23_DATA  0x0c8
#define CONTROL_BITS_PLAINTEXT_23_DATA  32
#define CONTROL_ADDR_PLAINTEXT_24_DATA  0x0d0
#define CONTROL_BITS_PLAINTEXT_24_DATA  32
#define CONTROL_ADDR_PLAINTEXT_25_DATA  0x0d8
#define CONTROL_BITS_PLAINTEXT_25_DATA  32
#define CONTROL_ADDR_PLAINTEXT_26_DATA  0x0e0
#define CONTROL_BITS_PLAINTEXT_26_DATA  32
#define CONTROL_ADDR_PLAINTEXT_27_DATA  0x0e8
#define CONTROL_BITS_PLAINTEXT_27_DATA  32
#define CONTROL_ADDR_PLAINTEXT_28_DATA  0x0f0
#define CONTROL_BITS_PLAINTEXT_28_DATA  32
#define CONTROL_ADDR_PLAINTEXT_29_DATA  0x0f8
#define CONTROL_BITS_PLAINTEXT_29_DATA  32
#define CONTROL_ADDR_PLAINTEXT_30_DATA  0x100
#define CONTROL_BITS_PLAINTEXT_30_DATA  32
#define CONTROL_ADDR_PLAINTEXT_31_DATA  0x108
#define CONTROL_BITS_PLAINTEXT_31_DATA  32
#define CONTROL_ADDR_KEY_DATA           0x110
#define CONTROL_BITS_KEY_DATA           64
#define CONTROL_ADDR_CIPHERTEXT_0_DATA  0x11c
#define CONTROL_BITS_CIPHERTEXT_0_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_0_CTRL  0x120
#define CONTROL_ADDR_CIPHERTEXT_1_DATA  0x12c
#define CONTROL_BITS_CIPHERTEXT_1_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_1_CTRL  0x130
#define CONTROL_ADDR_CIPHERTEXT_2_DATA  0x13c
#define CONTROL_BITS_CIPHERTEXT_2_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_2_CTRL  0x140
#define CONTROL_ADDR_CIPHERTEXT_3_DATA  0x14c
#define CONTROL_BITS_CIPHERTEXT_3_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_3_CTRL  0x150
#define CONTROL_ADDR_CIPHERTEXT_4_DATA  0x15c
#define CONTROL_BITS_CIPHERTEXT_4_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_4_CTRL  0x160
#define CONTROL_ADDR_CIPHERTEXT_5_DATA  0x16c
#define CONTROL_BITS_CIPHERTEXT_5_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_5_CTRL  0x170
#define CONTROL_ADDR_CIPHERTEXT_6_DATA  0x17c
#define CONTROL_BITS_CIPHERTEXT_6_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_6_CTRL  0x180
#define CONTROL_ADDR_CIPHERTEXT_7_DATA  0x18c
#define CONTROL_BITS_CIPHERTEXT_7_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_7_CTRL  0x190
#define CONTROL_ADDR_CIPHERTEXT_8_DATA  0x19c
#define CONTROL_BITS_CIPHERTEXT_8_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_8_CTRL  0x1a0
#define CONTROL_ADDR_CIPHERTEXT_9_DATA  0x1ac
#define CONTROL_BITS_CIPHERTEXT_9_DATA  32
#define CONTROL_ADDR_CIPHERTEXT_9_CTRL  0x1b0
#define CONTROL_ADDR_CIPHERTEXT_10_DATA 0x1bc
#define CONTROL_BITS_CIPHERTEXT_10_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_10_CTRL 0x1c0
#define CONTROL_ADDR_CIPHERTEXT_11_DATA 0x1cc
#define CONTROL_BITS_CIPHERTEXT_11_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_11_CTRL 0x1d0
#define CONTROL_ADDR_CIPHERTEXT_12_DATA 0x1dc
#define CONTROL_BITS_CIPHERTEXT_12_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_12_CTRL 0x1e0
#define CONTROL_ADDR_CIPHERTEXT_13_DATA 0x1ec
#define CONTROL_BITS_CIPHERTEXT_13_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_13_CTRL 0x1f0
#define CONTROL_ADDR_CIPHERTEXT_14_DATA 0x1fc
#define CONTROL_BITS_CIPHERTEXT_14_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_14_CTRL 0x200
#define CONTROL_ADDR_CIPHERTEXT_15_DATA 0x20c
#define CONTROL_BITS_CIPHERTEXT_15_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_15_CTRL 0x210
#define CONTROL_ADDR_CIPHERTEXT_16_DATA 0x21c
#define CONTROL_BITS_CIPHERTEXT_16_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_16_CTRL 0x220
#define CONTROL_ADDR_CIPHERTEXT_17_DATA 0x22c
#define CONTROL_BITS_CIPHERTEXT_17_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_17_CTRL 0x230
#define CONTROL_ADDR_CIPHERTEXT_18_DATA 0x23c
#define CONTROL_BITS_CIPHERTEXT_18_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_18_CTRL 0x240
#define CONTROL_ADDR_CIPHERTEXT_19_DATA 0x24c
#define CONTROL_BITS_CIPHERTEXT_19_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_19_CTRL 0x250
#define CONTROL_ADDR_CIPHERTEXT_20_DATA 0x25c
#define CONTROL_BITS_CIPHERTEXT_20_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_20_CTRL 0x260
#define CONTROL_ADDR_CIPHERTEXT_21_DATA 0x26c
#define CONTROL_BITS_CIPHERTEXT_21_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_21_CTRL 0x270
#define CONTROL_ADDR_CIPHERTEXT_22_DATA 0x27c
#define CONTROL_BITS_CIPHERTEXT_22_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_22_CTRL 0x280
#define CONTROL_ADDR_CIPHERTEXT_23_DATA 0x28c
#define CONTROL_BITS_CIPHERTEXT_23_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_23_CTRL 0x290
#define CONTROL_ADDR_CIPHERTEXT_24_DATA 0x29c
#define CONTROL_BITS_CIPHERTEXT_24_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_24_CTRL 0x2a0
#define CONTROL_ADDR_CIPHERTEXT_25_DATA 0x2ac
#define CONTROL_BITS_CIPHERTEXT_25_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_25_CTRL 0x2b0
#define CONTROL_ADDR_CIPHERTEXT_26_DATA 0x2bc
#define CONTROL_BITS_CIPHERTEXT_26_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_26_CTRL 0x2c0
#define CONTROL_ADDR_CIPHERTEXT_27_DATA 0x2cc
#define CONTROL_BITS_CIPHERTEXT_27_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_27_CTRL 0x2d0
#define CONTROL_ADDR_CIPHERTEXT_28_DATA 0x2dc
#define CONTROL_BITS_CIPHERTEXT_28_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_28_CTRL 0x2e0
#define CONTROL_ADDR_CIPHERTEXT_29_DATA 0x2ec
#define CONTROL_BITS_CIPHERTEXT_29_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_29_CTRL 0x2f0
#define CONTROL_ADDR_CIPHERTEXT_30_DATA 0x2fc
#define CONTROL_BITS_CIPHERTEXT_30_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_30_CTRL 0x300
#define CONTROL_ADDR_CIPHERTEXT_31_DATA 0x30c
#define CONTROL_BITS_CIPHERTEXT_31_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_31_CTRL 0x310
