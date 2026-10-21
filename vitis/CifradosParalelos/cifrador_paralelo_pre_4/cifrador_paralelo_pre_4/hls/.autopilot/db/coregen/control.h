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
// 0x10 : Data signal of plaintext_0
//        bit 31~0 - plaintext_0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of plaintext_1
//        bit 31~0 - plaintext_1[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of plaintext_2
//        bit 31~0 - plaintext_2[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of plaintext_3
//        bit 31~0 - plaintext_3[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of key
//        bit 31~0 - key[31:0] (Read/Write)
// 0x34 : Data signal of key
//        bit 31~0 - key[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of ciphertext_0
//        bit 31~0 - ciphertext_0[31:0] (Read)
// 0x40 : Control signal of ciphertext_0
//        bit 0  - ciphertext_0_ap_vld (Read/COR)
//        others - reserved
// 0x4c : Data signal of ciphertext_1
//        bit 31~0 - ciphertext_1[31:0] (Read)
// 0x50 : Control signal of ciphertext_1
//        bit 0  - ciphertext_1_ap_vld (Read/COR)
//        others - reserved
// 0x5c : Data signal of ciphertext_2
//        bit 31~0 - ciphertext_2[31:0] (Read)
// 0x60 : Control signal of ciphertext_2
//        bit 0  - ciphertext_2_ap_vld (Read/COR)
//        others - reserved
// 0x6c : Data signal of ciphertext_3
//        bit 31~0 - ciphertext_3[31:0] (Read)
// 0x70 : Control signal of ciphertext_3
//        bit 0  - ciphertext_3_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL           0x00
#define CONTROL_ADDR_GIE               0x04
#define CONTROL_ADDR_IER               0x08
#define CONTROL_ADDR_ISR               0x0c
#define CONTROL_ADDR_PLAINTEXT_0_DATA  0x10
#define CONTROL_BITS_PLAINTEXT_0_DATA  32
#define CONTROL_ADDR_PLAINTEXT_1_DATA  0x18
#define CONTROL_BITS_PLAINTEXT_1_DATA  32
#define CONTROL_ADDR_PLAINTEXT_2_DATA  0x20
#define CONTROL_BITS_PLAINTEXT_2_DATA  32
#define CONTROL_ADDR_PLAINTEXT_3_DATA  0x28
#define CONTROL_BITS_PLAINTEXT_3_DATA  32
#define CONTROL_ADDR_KEY_DATA          0x30
#define CONTROL_BITS_KEY_DATA          64
#define CONTROL_ADDR_CIPHERTEXT_0_DATA 0x3c
#define CONTROL_BITS_CIPHERTEXT_0_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_0_CTRL 0x40
#define CONTROL_ADDR_CIPHERTEXT_1_DATA 0x4c
#define CONTROL_BITS_CIPHERTEXT_1_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_1_CTRL 0x50
#define CONTROL_ADDR_CIPHERTEXT_2_DATA 0x5c
#define CONTROL_BITS_CIPHERTEXT_2_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_2_CTRL 0x60
#define CONTROL_ADDR_CIPHERTEXT_3_DATA 0x6c
#define CONTROL_BITS_CIPHERTEXT_3_DATA 32
#define CONTROL_ADDR_CIPHERTEXT_3_CTRL 0x70
