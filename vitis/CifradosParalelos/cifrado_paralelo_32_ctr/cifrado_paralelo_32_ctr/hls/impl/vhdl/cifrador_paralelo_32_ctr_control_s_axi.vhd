-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
-- Tool Version Limit: 2025.11
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cifrador_paralelo_32_ctr_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 10;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    ap_return             :in   STD_LOGIC_VECTOR(31 downto 0);
    plaintext_0           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_1           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_2           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_3           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_4           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_5           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_6           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_7           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_8           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_9           :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_10          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_11          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_12          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_13          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_14          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_15          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_16          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_17          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_18          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_19          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_20          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_21          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_22          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_23          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_24          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_25          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_26          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_27          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_28          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_29          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_30          :out  STD_LOGIC_VECTOR(31 downto 0);
    plaintext_31          :out  STD_LOGIC_VECTOR(31 downto 0);
    key                   :out  STD_LOGIC_VECTOR(63 downto 0);
    ciphertext_0          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_0_ap_vld   :in   STD_LOGIC;
    ciphertext_1          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_1_ap_vld   :in   STD_LOGIC;
    ciphertext_2          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_2_ap_vld   :in   STD_LOGIC;
    ciphertext_3          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_3_ap_vld   :in   STD_LOGIC;
    ciphertext_4          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_4_ap_vld   :in   STD_LOGIC;
    ciphertext_5          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_5_ap_vld   :in   STD_LOGIC;
    ciphertext_6          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_6_ap_vld   :in   STD_LOGIC;
    ciphertext_7          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_7_ap_vld   :in   STD_LOGIC;
    ciphertext_8          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_8_ap_vld   :in   STD_LOGIC;
    ciphertext_9          :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_9_ap_vld   :in   STD_LOGIC;
    ciphertext_10         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_10_ap_vld  :in   STD_LOGIC;
    ciphertext_11         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_11_ap_vld  :in   STD_LOGIC;
    ciphertext_12         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_12_ap_vld  :in   STD_LOGIC;
    ciphertext_13         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_13_ap_vld  :in   STD_LOGIC;
    ciphertext_14         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_14_ap_vld  :in   STD_LOGIC;
    ciphertext_15         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_15_ap_vld  :in   STD_LOGIC;
    ciphertext_16         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_16_ap_vld  :in   STD_LOGIC;
    ciphertext_17         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_17_ap_vld  :in   STD_LOGIC;
    ciphertext_18         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_18_ap_vld  :in   STD_LOGIC;
    ciphertext_19         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_19_ap_vld  :in   STD_LOGIC;
    ciphertext_20         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_20_ap_vld  :in   STD_LOGIC;
    ciphertext_21         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_21_ap_vld  :in   STD_LOGIC;
    ciphertext_22         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_22_ap_vld  :in   STD_LOGIC;
    ciphertext_23         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_23_ap_vld  :in   STD_LOGIC;
    ciphertext_24         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_24_ap_vld  :in   STD_LOGIC;
    ciphertext_25         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_25_ap_vld  :in   STD_LOGIC;
    ciphertext_26         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_26_ap_vld  :in   STD_LOGIC;
    ciphertext_27         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_27_ap_vld  :in   STD_LOGIC;
    ciphertext_28         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_28_ap_vld  :in   STD_LOGIC;
    ciphertext_29         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_29_ap_vld  :in   STD_LOGIC;
    ciphertext_30         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_30_ap_vld  :in   STD_LOGIC;
    ciphertext_31         :in   STD_LOGIC_VECTOR(31 downto 0);
    ciphertext_31_ap_vld  :in   STD_LOGIC;
    nonce                 :out  STD_LOGIC_VECTOR(31 downto 0)
);
end entity cifrador_paralelo_32_ctr_control_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_hs
--
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read/COR)
--         bit 7  - auto_restart (Read/Write)
--         bit 9  - interrupt (Read)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0 - enable ap_done interrupt (Read/Write)
--         bit 1 - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0 - ap_done (Read/TOW)
--         bit 1 - ap_ready (Read/TOW)
--         others - reserved
-- 0x010 : Data signal of ap_return
--         bit 31~0 - ap_return[31:0] (Read)
-- 0x018 : Data signal of plaintext_0
--         bit 31~0 - plaintext_0[31:0] (Read/Write)
-- 0x01c : reserved
-- 0x020 : Data signal of plaintext_1
--         bit 31~0 - plaintext_1[31:0] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of plaintext_2
--         bit 31~0 - plaintext_2[31:0] (Read/Write)
-- 0x02c : reserved
-- 0x030 : Data signal of plaintext_3
--         bit 31~0 - plaintext_3[31:0] (Read/Write)
-- 0x034 : reserved
-- 0x038 : Data signal of plaintext_4
--         bit 31~0 - plaintext_4[31:0] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of plaintext_5
--         bit 31~0 - plaintext_5[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of plaintext_6
--         bit 31~0 - plaintext_6[31:0] (Read/Write)
-- 0x04c : reserved
-- 0x050 : Data signal of plaintext_7
--         bit 31~0 - plaintext_7[31:0] (Read/Write)
-- 0x054 : reserved
-- 0x058 : Data signal of plaintext_8
--         bit 31~0 - plaintext_8[31:0] (Read/Write)
-- 0x05c : reserved
-- 0x060 : Data signal of plaintext_9
--         bit 31~0 - plaintext_9[31:0] (Read/Write)
-- 0x064 : reserved
-- 0x068 : Data signal of plaintext_10
--         bit 31~0 - plaintext_10[31:0] (Read/Write)
-- 0x06c : reserved
-- 0x070 : Data signal of plaintext_11
--         bit 31~0 - plaintext_11[31:0] (Read/Write)
-- 0x074 : reserved
-- 0x078 : Data signal of plaintext_12
--         bit 31~0 - plaintext_12[31:0] (Read/Write)
-- 0x07c : reserved
-- 0x080 : Data signal of plaintext_13
--         bit 31~0 - plaintext_13[31:0] (Read/Write)
-- 0x084 : reserved
-- 0x088 : Data signal of plaintext_14
--         bit 31~0 - plaintext_14[31:0] (Read/Write)
-- 0x08c : reserved
-- 0x090 : Data signal of plaintext_15
--         bit 31~0 - plaintext_15[31:0] (Read/Write)
-- 0x094 : reserved
-- 0x098 : Data signal of plaintext_16
--         bit 31~0 - plaintext_16[31:0] (Read/Write)
-- 0x09c : reserved
-- 0x0a0 : Data signal of plaintext_17
--         bit 31~0 - plaintext_17[31:0] (Read/Write)
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of plaintext_18
--         bit 31~0 - plaintext_18[31:0] (Read/Write)
-- 0x0ac : reserved
-- 0x0b0 : Data signal of plaintext_19
--         bit 31~0 - plaintext_19[31:0] (Read/Write)
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of plaintext_20
--         bit 31~0 - plaintext_20[31:0] (Read/Write)
-- 0x0bc : reserved
-- 0x0c0 : Data signal of plaintext_21
--         bit 31~0 - plaintext_21[31:0] (Read/Write)
-- 0x0c4 : reserved
-- 0x0c8 : Data signal of plaintext_22
--         bit 31~0 - plaintext_22[31:0] (Read/Write)
-- 0x0cc : reserved
-- 0x0d0 : Data signal of plaintext_23
--         bit 31~0 - plaintext_23[31:0] (Read/Write)
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of plaintext_24
--         bit 31~0 - plaintext_24[31:0] (Read/Write)
-- 0x0dc : reserved
-- 0x0e0 : Data signal of plaintext_25
--         bit 31~0 - plaintext_25[31:0] (Read/Write)
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of plaintext_26
--         bit 31~0 - plaintext_26[31:0] (Read/Write)
-- 0x0ec : reserved
-- 0x0f0 : Data signal of plaintext_27
--         bit 31~0 - plaintext_27[31:0] (Read/Write)
-- 0x0f4 : reserved
-- 0x0f8 : Data signal of plaintext_28
--         bit 31~0 - plaintext_28[31:0] (Read/Write)
-- 0x0fc : reserved
-- 0x100 : Data signal of plaintext_29
--         bit 31~0 - plaintext_29[31:0] (Read/Write)
-- 0x104 : reserved
-- 0x108 : Data signal of plaintext_30
--         bit 31~0 - plaintext_30[31:0] (Read/Write)
-- 0x10c : reserved
-- 0x110 : Data signal of plaintext_31
--         bit 31~0 - plaintext_31[31:0] (Read/Write)
-- 0x114 : reserved
-- 0x118 : Data signal of key
--         bit 31~0 - key[31:0] (Read/Write)
-- 0x11c : Data signal of key
--         bit 31~0 - key[63:32] (Read/Write)
-- 0x120 : reserved
-- 0x124 : Data signal of ciphertext_0
--         bit 31~0 - ciphertext_0[31:0] (Read)
-- 0x128 : Control signal of ciphertext_0
--         bit 0  - ciphertext_0_ap_vld (Read/COR)
--         others - reserved
-- 0x134 : Data signal of ciphertext_1
--         bit 31~0 - ciphertext_1[31:0] (Read)
-- 0x138 : Control signal of ciphertext_1
--         bit 0  - ciphertext_1_ap_vld (Read/COR)
--         others - reserved
-- 0x144 : Data signal of ciphertext_2
--         bit 31~0 - ciphertext_2[31:0] (Read)
-- 0x148 : Control signal of ciphertext_2
--         bit 0  - ciphertext_2_ap_vld (Read/COR)
--         others - reserved
-- 0x154 : Data signal of ciphertext_3
--         bit 31~0 - ciphertext_3[31:0] (Read)
-- 0x158 : Control signal of ciphertext_3
--         bit 0  - ciphertext_3_ap_vld (Read/COR)
--         others - reserved
-- 0x164 : Data signal of ciphertext_4
--         bit 31~0 - ciphertext_4[31:0] (Read)
-- 0x168 : Control signal of ciphertext_4
--         bit 0  - ciphertext_4_ap_vld (Read/COR)
--         others - reserved
-- 0x174 : Data signal of ciphertext_5
--         bit 31~0 - ciphertext_5[31:0] (Read)
-- 0x178 : Control signal of ciphertext_5
--         bit 0  - ciphertext_5_ap_vld (Read/COR)
--         others - reserved
-- 0x184 : Data signal of ciphertext_6
--         bit 31~0 - ciphertext_6[31:0] (Read)
-- 0x188 : Control signal of ciphertext_6
--         bit 0  - ciphertext_6_ap_vld (Read/COR)
--         others - reserved
-- 0x194 : Data signal of ciphertext_7
--         bit 31~0 - ciphertext_7[31:0] (Read)
-- 0x198 : Control signal of ciphertext_7
--         bit 0  - ciphertext_7_ap_vld (Read/COR)
--         others - reserved
-- 0x1a4 : Data signal of ciphertext_8
--         bit 31~0 - ciphertext_8[31:0] (Read)
-- 0x1a8 : Control signal of ciphertext_8
--         bit 0  - ciphertext_8_ap_vld (Read/COR)
--         others - reserved
-- 0x1b4 : Data signal of ciphertext_9
--         bit 31~0 - ciphertext_9[31:0] (Read)
-- 0x1b8 : Control signal of ciphertext_9
--         bit 0  - ciphertext_9_ap_vld (Read/COR)
--         others - reserved
-- 0x1c4 : Data signal of ciphertext_10
--         bit 31~0 - ciphertext_10[31:0] (Read)
-- 0x1c8 : Control signal of ciphertext_10
--         bit 0  - ciphertext_10_ap_vld (Read/COR)
--         others - reserved
-- 0x1d4 : Data signal of ciphertext_11
--         bit 31~0 - ciphertext_11[31:0] (Read)
-- 0x1d8 : Control signal of ciphertext_11
--         bit 0  - ciphertext_11_ap_vld (Read/COR)
--         others - reserved
-- 0x1e4 : Data signal of ciphertext_12
--         bit 31~0 - ciphertext_12[31:0] (Read)
-- 0x1e8 : Control signal of ciphertext_12
--         bit 0  - ciphertext_12_ap_vld (Read/COR)
--         others - reserved
-- 0x1f4 : Data signal of ciphertext_13
--         bit 31~0 - ciphertext_13[31:0] (Read)
-- 0x1f8 : Control signal of ciphertext_13
--         bit 0  - ciphertext_13_ap_vld (Read/COR)
--         others - reserved
-- 0x204 : Data signal of ciphertext_14
--         bit 31~0 - ciphertext_14[31:0] (Read)
-- 0x208 : Control signal of ciphertext_14
--         bit 0  - ciphertext_14_ap_vld (Read/COR)
--         others - reserved
-- 0x214 : Data signal of ciphertext_15
--         bit 31~0 - ciphertext_15[31:0] (Read)
-- 0x218 : Control signal of ciphertext_15
--         bit 0  - ciphertext_15_ap_vld (Read/COR)
--         others - reserved
-- 0x224 : Data signal of ciphertext_16
--         bit 31~0 - ciphertext_16[31:0] (Read)
-- 0x228 : Control signal of ciphertext_16
--         bit 0  - ciphertext_16_ap_vld (Read/COR)
--         others - reserved
-- 0x234 : Data signal of ciphertext_17
--         bit 31~0 - ciphertext_17[31:0] (Read)
-- 0x238 : Control signal of ciphertext_17
--         bit 0  - ciphertext_17_ap_vld (Read/COR)
--         others - reserved
-- 0x244 : Data signal of ciphertext_18
--         bit 31~0 - ciphertext_18[31:0] (Read)
-- 0x248 : Control signal of ciphertext_18
--         bit 0  - ciphertext_18_ap_vld (Read/COR)
--         others - reserved
-- 0x254 : Data signal of ciphertext_19
--         bit 31~0 - ciphertext_19[31:0] (Read)
-- 0x258 : Control signal of ciphertext_19
--         bit 0  - ciphertext_19_ap_vld (Read/COR)
--         others - reserved
-- 0x264 : Data signal of ciphertext_20
--         bit 31~0 - ciphertext_20[31:0] (Read)
-- 0x268 : Control signal of ciphertext_20
--         bit 0  - ciphertext_20_ap_vld (Read/COR)
--         others - reserved
-- 0x274 : Data signal of ciphertext_21
--         bit 31~0 - ciphertext_21[31:0] (Read)
-- 0x278 : Control signal of ciphertext_21
--         bit 0  - ciphertext_21_ap_vld (Read/COR)
--         others - reserved
-- 0x284 : Data signal of ciphertext_22
--         bit 31~0 - ciphertext_22[31:0] (Read)
-- 0x288 : Control signal of ciphertext_22
--         bit 0  - ciphertext_22_ap_vld (Read/COR)
--         others - reserved
-- 0x294 : Data signal of ciphertext_23
--         bit 31~0 - ciphertext_23[31:0] (Read)
-- 0x298 : Control signal of ciphertext_23
--         bit 0  - ciphertext_23_ap_vld (Read/COR)
--         others - reserved
-- 0x2a4 : Data signal of ciphertext_24
--         bit 31~0 - ciphertext_24[31:0] (Read)
-- 0x2a8 : Control signal of ciphertext_24
--         bit 0  - ciphertext_24_ap_vld (Read/COR)
--         others - reserved
-- 0x2b4 : Data signal of ciphertext_25
--         bit 31~0 - ciphertext_25[31:0] (Read)
-- 0x2b8 : Control signal of ciphertext_25
--         bit 0  - ciphertext_25_ap_vld (Read/COR)
--         others - reserved
-- 0x2c4 : Data signal of ciphertext_26
--         bit 31~0 - ciphertext_26[31:0] (Read)
-- 0x2c8 : Control signal of ciphertext_26
--         bit 0  - ciphertext_26_ap_vld (Read/COR)
--         others - reserved
-- 0x2d4 : Data signal of ciphertext_27
--         bit 31~0 - ciphertext_27[31:0] (Read)
-- 0x2d8 : Control signal of ciphertext_27
--         bit 0  - ciphertext_27_ap_vld (Read/COR)
--         others - reserved
-- 0x2e4 : Data signal of ciphertext_28
--         bit 31~0 - ciphertext_28[31:0] (Read)
-- 0x2e8 : Control signal of ciphertext_28
--         bit 0  - ciphertext_28_ap_vld (Read/COR)
--         others - reserved
-- 0x2f4 : Data signal of ciphertext_29
--         bit 31~0 - ciphertext_29[31:0] (Read)
-- 0x2f8 : Control signal of ciphertext_29
--         bit 0  - ciphertext_29_ap_vld (Read/COR)
--         others - reserved
-- 0x304 : Data signal of ciphertext_30
--         bit 31~0 - ciphertext_30[31:0] (Read)
-- 0x308 : Control signal of ciphertext_30
--         bit 0  - ciphertext_30_ap_vld (Read/COR)
--         others - reserved
-- 0x314 : Data signal of ciphertext_31
--         bit 31~0 - ciphertext_31[31:0] (Read)
-- 0x318 : Control signal of ciphertext_31
--         bit 0  - ciphertext_31_ap_vld (Read/COR)
--         others - reserved
-- 0x324 : Data signal of nonce
--         bit 31~0 - nonce[31:0] (Read/Write)
-- 0x328 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of cifrador_paralelo_32_ctr_control_s_axi is
attribute DowngradeIPIdentifiedWarnings : STRING;
attribute DowngradeIPIdentifiedWarnings of behave : architecture is "yes";
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL              : INTEGER := 16#000#;
    constant ADDR_GIE                  : INTEGER := 16#004#;
    constant ADDR_IER                  : INTEGER := 16#008#;
    constant ADDR_ISR                  : INTEGER := 16#00c#;
    constant ADDR_AP_RETURN_0          : INTEGER := 16#010#;
    constant ADDR_PLAINTEXT_0_DATA_0   : INTEGER := 16#018#;
    constant ADDR_PLAINTEXT_0_CTRL     : INTEGER := 16#01c#;
    constant ADDR_PLAINTEXT_1_DATA_0   : INTEGER := 16#020#;
    constant ADDR_PLAINTEXT_1_CTRL     : INTEGER := 16#024#;
    constant ADDR_PLAINTEXT_2_DATA_0   : INTEGER := 16#028#;
    constant ADDR_PLAINTEXT_2_CTRL     : INTEGER := 16#02c#;
    constant ADDR_PLAINTEXT_3_DATA_0   : INTEGER := 16#030#;
    constant ADDR_PLAINTEXT_3_CTRL     : INTEGER := 16#034#;
    constant ADDR_PLAINTEXT_4_DATA_0   : INTEGER := 16#038#;
    constant ADDR_PLAINTEXT_4_CTRL     : INTEGER := 16#03c#;
    constant ADDR_PLAINTEXT_5_DATA_0   : INTEGER := 16#040#;
    constant ADDR_PLAINTEXT_5_CTRL     : INTEGER := 16#044#;
    constant ADDR_PLAINTEXT_6_DATA_0   : INTEGER := 16#048#;
    constant ADDR_PLAINTEXT_6_CTRL     : INTEGER := 16#04c#;
    constant ADDR_PLAINTEXT_7_DATA_0   : INTEGER := 16#050#;
    constant ADDR_PLAINTEXT_7_CTRL     : INTEGER := 16#054#;
    constant ADDR_PLAINTEXT_8_DATA_0   : INTEGER := 16#058#;
    constant ADDR_PLAINTEXT_8_CTRL     : INTEGER := 16#05c#;
    constant ADDR_PLAINTEXT_9_DATA_0   : INTEGER := 16#060#;
    constant ADDR_PLAINTEXT_9_CTRL     : INTEGER := 16#064#;
    constant ADDR_PLAINTEXT_10_DATA_0  : INTEGER := 16#068#;
    constant ADDR_PLAINTEXT_10_CTRL    : INTEGER := 16#06c#;
    constant ADDR_PLAINTEXT_11_DATA_0  : INTEGER := 16#070#;
    constant ADDR_PLAINTEXT_11_CTRL    : INTEGER := 16#074#;
    constant ADDR_PLAINTEXT_12_DATA_0  : INTEGER := 16#078#;
    constant ADDR_PLAINTEXT_12_CTRL    : INTEGER := 16#07c#;
    constant ADDR_PLAINTEXT_13_DATA_0  : INTEGER := 16#080#;
    constant ADDR_PLAINTEXT_13_CTRL    : INTEGER := 16#084#;
    constant ADDR_PLAINTEXT_14_DATA_0  : INTEGER := 16#088#;
    constant ADDR_PLAINTEXT_14_CTRL    : INTEGER := 16#08c#;
    constant ADDR_PLAINTEXT_15_DATA_0  : INTEGER := 16#090#;
    constant ADDR_PLAINTEXT_15_CTRL    : INTEGER := 16#094#;
    constant ADDR_PLAINTEXT_16_DATA_0  : INTEGER := 16#098#;
    constant ADDR_PLAINTEXT_16_CTRL    : INTEGER := 16#09c#;
    constant ADDR_PLAINTEXT_17_DATA_0  : INTEGER := 16#0a0#;
    constant ADDR_PLAINTEXT_17_CTRL    : INTEGER := 16#0a4#;
    constant ADDR_PLAINTEXT_18_DATA_0  : INTEGER := 16#0a8#;
    constant ADDR_PLAINTEXT_18_CTRL    : INTEGER := 16#0ac#;
    constant ADDR_PLAINTEXT_19_DATA_0  : INTEGER := 16#0b0#;
    constant ADDR_PLAINTEXT_19_CTRL    : INTEGER := 16#0b4#;
    constant ADDR_PLAINTEXT_20_DATA_0  : INTEGER := 16#0b8#;
    constant ADDR_PLAINTEXT_20_CTRL    : INTEGER := 16#0bc#;
    constant ADDR_PLAINTEXT_21_DATA_0  : INTEGER := 16#0c0#;
    constant ADDR_PLAINTEXT_21_CTRL    : INTEGER := 16#0c4#;
    constant ADDR_PLAINTEXT_22_DATA_0  : INTEGER := 16#0c8#;
    constant ADDR_PLAINTEXT_22_CTRL    : INTEGER := 16#0cc#;
    constant ADDR_PLAINTEXT_23_DATA_0  : INTEGER := 16#0d0#;
    constant ADDR_PLAINTEXT_23_CTRL    : INTEGER := 16#0d4#;
    constant ADDR_PLAINTEXT_24_DATA_0  : INTEGER := 16#0d8#;
    constant ADDR_PLAINTEXT_24_CTRL    : INTEGER := 16#0dc#;
    constant ADDR_PLAINTEXT_25_DATA_0  : INTEGER := 16#0e0#;
    constant ADDR_PLAINTEXT_25_CTRL    : INTEGER := 16#0e4#;
    constant ADDR_PLAINTEXT_26_DATA_0  : INTEGER := 16#0e8#;
    constant ADDR_PLAINTEXT_26_CTRL    : INTEGER := 16#0ec#;
    constant ADDR_PLAINTEXT_27_DATA_0  : INTEGER := 16#0f0#;
    constant ADDR_PLAINTEXT_27_CTRL    : INTEGER := 16#0f4#;
    constant ADDR_PLAINTEXT_28_DATA_0  : INTEGER := 16#0f8#;
    constant ADDR_PLAINTEXT_28_CTRL    : INTEGER := 16#0fc#;
    constant ADDR_PLAINTEXT_29_DATA_0  : INTEGER := 16#100#;
    constant ADDR_PLAINTEXT_29_CTRL    : INTEGER := 16#104#;
    constant ADDR_PLAINTEXT_30_DATA_0  : INTEGER := 16#108#;
    constant ADDR_PLAINTEXT_30_CTRL    : INTEGER := 16#10c#;
    constant ADDR_PLAINTEXT_31_DATA_0  : INTEGER := 16#110#;
    constant ADDR_PLAINTEXT_31_CTRL    : INTEGER := 16#114#;
    constant ADDR_KEY_DATA_0           : INTEGER := 16#118#;
    constant ADDR_KEY_DATA_1           : INTEGER := 16#11c#;
    constant ADDR_KEY_CTRL             : INTEGER := 16#120#;
    constant ADDR_CIPHERTEXT_0_DATA_0  : INTEGER := 16#124#;
    constant ADDR_CIPHERTEXT_0_CTRL    : INTEGER := 16#128#;
    constant ADDR_CIPHERTEXT_1_DATA_0  : INTEGER := 16#134#;
    constant ADDR_CIPHERTEXT_1_CTRL    : INTEGER := 16#138#;
    constant ADDR_CIPHERTEXT_2_DATA_0  : INTEGER := 16#144#;
    constant ADDR_CIPHERTEXT_2_CTRL    : INTEGER := 16#148#;
    constant ADDR_CIPHERTEXT_3_DATA_0  : INTEGER := 16#154#;
    constant ADDR_CIPHERTEXT_3_CTRL    : INTEGER := 16#158#;
    constant ADDR_CIPHERTEXT_4_DATA_0  : INTEGER := 16#164#;
    constant ADDR_CIPHERTEXT_4_CTRL    : INTEGER := 16#168#;
    constant ADDR_CIPHERTEXT_5_DATA_0  : INTEGER := 16#174#;
    constant ADDR_CIPHERTEXT_5_CTRL    : INTEGER := 16#178#;
    constant ADDR_CIPHERTEXT_6_DATA_0  : INTEGER := 16#184#;
    constant ADDR_CIPHERTEXT_6_CTRL    : INTEGER := 16#188#;
    constant ADDR_CIPHERTEXT_7_DATA_0  : INTEGER := 16#194#;
    constant ADDR_CIPHERTEXT_7_CTRL    : INTEGER := 16#198#;
    constant ADDR_CIPHERTEXT_8_DATA_0  : INTEGER := 16#1a4#;
    constant ADDR_CIPHERTEXT_8_CTRL    : INTEGER := 16#1a8#;
    constant ADDR_CIPHERTEXT_9_DATA_0  : INTEGER := 16#1b4#;
    constant ADDR_CIPHERTEXT_9_CTRL    : INTEGER := 16#1b8#;
    constant ADDR_CIPHERTEXT_10_DATA_0 : INTEGER := 16#1c4#;
    constant ADDR_CIPHERTEXT_10_CTRL   : INTEGER := 16#1c8#;
    constant ADDR_CIPHERTEXT_11_DATA_0 : INTEGER := 16#1d4#;
    constant ADDR_CIPHERTEXT_11_CTRL   : INTEGER := 16#1d8#;
    constant ADDR_CIPHERTEXT_12_DATA_0 : INTEGER := 16#1e4#;
    constant ADDR_CIPHERTEXT_12_CTRL   : INTEGER := 16#1e8#;
    constant ADDR_CIPHERTEXT_13_DATA_0 : INTEGER := 16#1f4#;
    constant ADDR_CIPHERTEXT_13_CTRL   : INTEGER := 16#1f8#;
    constant ADDR_CIPHERTEXT_14_DATA_0 : INTEGER := 16#204#;
    constant ADDR_CIPHERTEXT_14_CTRL   : INTEGER := 16#208#;
    constant ADDR_CIPHERTEXT_15_DATA_0 : INTEGER := 16#214#;
    constant ADDR_CIPHERTEXT_15_CTRL   : INTEGER := 16#218#;
    constant ADDR_CIPHERTEXT_16_DATA_0 : INTEGER := 16#224#;
    constant ADDR_CIPHERTEXT_16_CTRL   : INTEGER := 16#228#;
    constant ADDR_CIPHERTEXT_17_DATA_0 : INTEGER := 16#234#;
    constant ADDR_CIPHERTEXT_17_CTRL   : INTEGER := 16#238#;
    constant ADDR_CIPHERTEXT_18_DATA_0 : INTEGER := 16#244#;
    constant ADDR_CIPHERTEXT_18_CTRL   : INTEGER := 16#248#;
    constant ADDR_CIPHERTEXT_19_DATA_0 : INTEGER := 16#254#;
    constant ADDR_CIPHERTEXT_19_CTRL   : INTEGER := 16#258#;
    constant ADDR_CIPHERTEXT_20_DATA_0 : INTEGER := 16#264#;
    constant ADDR_CIPHERTEXT_20_CTRL   : INTEGER := 16#268#;
    constant ADDR_CIPHERTEXT_21_DATA_0 : INTEGER := 16#274#;
    constant ADDR_CIPHERTEXT_21_CTRL   : INTEGER := 16#278#;
    constant ADDR_CIPHERTEXT_22_DATA_0 : INTEGER := 16#284#;
    constant ADDR_CIPHERTEXT_22_CTRL   : INTEGER := 16#288#;
    constant ADDR_CIPHERTEXT_23_DATA_0 : INTEGER := 16#294#;
    constant ADDR_CIPHERTEXT_23_CTRL   : INTEGER := 16#298#;
    constant ADDR_CIPHERTEXT_24_DATA_0 : INTEGER := 16#2a4#;
    constant ADDR_CIPHERTEXT_24_CTRL   : INTEGER := 16#2a8#;
    constant ADDR_CIPHERTEXT_25_DATA_0 : INTEGER := 16#2b4#;
    constant ADDR_CIPHERTEXT_25_CTRL   : INTEGER := 16#2b8#;
    constant ADDR_CIPHERTEXT_26_DATA_0 : INTEGER := 16#2c4#;
    constant ADDR_CIPHERTEXT_26_CTRL   : INTEGER := 16#2c8#;
    constant ADDR_CIPHERTEXT_27_DATA_0 : INTEGER := 16#2d4#;
    constant ADDR_CIPHERTEXT_27_CTRL   : INTEGER := 16#2d8#;
    constant ADDR_CIPHERTEXT_28_DATA_0 : INTEGER := 16#2e4#;
    constant ADDR_CIPHERTEXT_28_CTRL   : INTEGER := 16#2e8#;
    constant ADDR_CIPHERTEXT_29_DATA_0 : INTEGER := 16#2f4#;
    constant ADDR_CIPHERTEXT_29_CTRL   : INTEGER := 16#2f8#;
    constant ADDR_CIPHERTEXT_30_DATA_0 : INTEGER := 16#304#;
    constant ADDR_CIPHERTEXT_30_CTRL   : INTEGER := 16#308#;
    constant ADDR_CIPHERTEXT_31_DATA_0 : INTEGER := 16#314#;
    constant ADDR_CIPHERTEXT_31_CTRL   : INTEGER := 16#318#;
    constant ADDR_NONCE_DATA_0         : INTEGER := 16#324#;
    constant ADDR_NONCE_CTRL           : INTEGER := 16#328#;
    constant ADDR_BITS         : INTEGER := 10;

    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    signal BVALID_t            : STD_LOGIC;
    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_ap_return       : UNSIGNED(31 downto 0);
    signal int_plaintext_0     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_1     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_2     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_3     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_4     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_5     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_6     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_7     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_8     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_9     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_10    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_11    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_12    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_13    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_14    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_15    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_16    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_17    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_18    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_19    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_20    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_21    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_22    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_23    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_24    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_25    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_26    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_27    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_28    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_29    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_30    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_plaintext_31    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_key             : UNSIGNED(63 downto 0) := (others => '0');
    signal int_ciphertext_0_ap_vld : STD_LOGIC;
    signal int_ciphertext_0    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_1_ap_vld : STD_LOGIC;
    signal int_ciphertext_1    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_2_ap_vld : STD_LOGIC;
    signal int_ciphertext_2    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_3_ap_vld : STD_LOGIC;
    signal int_ciphertext_3    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_4_ap_vld : STD_LOGIC;
    signal int_ciphertext_4    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_5_ap_vld : STD_LOGIC;
    signal int_ciphertext_5    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_6_ap_vld : STD_LOGIC;
    signal int_ciphertext_6    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_7_ap_vld : STD_LOGIC;
    signal int_ciphertext_7    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_8_ap_vld : STD_LOGIC;
    signal int_ciphertext_8    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_9_ap_vld : STD_LOGIC;
    signal int_ciphertext_9    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_10_ap_vld : STD_LOGIC;
    signal int_ciphertext_10   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_11_ap_vld : STD_LOGIC;
    signal int_ciphertext_11   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_12_ap_vld : STD_LOGIC;
    signal int_ciphertext_12   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_13_ap_vld : STD_LOGIC;
    signal int_ciphertext_13   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_14_ap_vld : STD_LOGIC;
    signal int_ciphertext_14   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_15_ap_vld : STD_LOGIC;
    signal int_ciphertext_15   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_16_ap_vld : STD_LOGIC;
    signal int_ciphertext_16   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_17_ap_vld : STD_LOGIC;
    signal int_ciphertext_17   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_18_ap_vld : STD_LOGIC;
    signal int_ciphertext_18   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_19_ap_vld : STD_LOGIC;
    signal int_ciphertext_19   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_20_ap_vld : STD_LOGIC;
    signal int_ciphertext_20   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_21_ap_vld : STD_LOGIC;
    signal int_ciphertext_21   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_22_ap_vld : STD_LOGIC;
    signal int_ciphertext_22   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_23_ap_vld : STD_LOGIC;
    signal int_ciphertext_23   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_24_ap_vld : STD_LOGIC;
    signal int_ciphertext_24   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_25_ap_vld : STD_LOGIC;
    signal int_ciphertext_25   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_26_ap_vld : STD_LOGIC;
    signal int_ciphertext_26   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_27_ap_vld : STD_LOGIC;
    signal int_ciphertext_27   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_28_ap_vld : STD_LOGIC;
    signal int_ciphertext_28   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_29_ap_vld : STD_LOGIC;
    signal int_ciphertext_29   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_30_ap_vld : STD_LOGIC;
    signal int_ciphertext_30   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_ciphertext_31_ap_vld : STD_LOGIC;
    signal int_ciphertext_31   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_nonce           : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BVALID_t  <=  '1' when wstate = wrresp else '0';
    BVALID    <=  BVALID_t;
    BRESP     <=  "00";  -- OKAY
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY, BVALID_t)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1' and BVALID_t = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_AP_RETURN_0 =>
                        rdata_data <= RESIZE(int_ap_return(31 downto 0), 32);
                    when ADDR_PLAINTEXT_0_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_0(31 downto 0), 32);
                    when ADDR_PLAINTEXT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_1(31 downto 0), 32);
                    when ADDR_PLAINTEXT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_2(31 downto 0), 32);
                    when ADDR_PLAINTEXT_3_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_3(31 downto 0), 32);
                    when ADDR_PLAINTEXT_4_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_4(31 downto 0), 32);
                    when ADDR_PLAINTEXT_5_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_5(31 downto 0), 32);
                    when ADDR_PLAINTEXT_6_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_6(31 downto 0), 32);
                    when ADDR_PLAINTEXT_7_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_7(31 downto 0), 32);
                    when ADDR_PLAINTEXT_8_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_8(31 downto 0), 32);
                    when ADDR_PLAINTEXT_9_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_9(31 downto 0), 32);
                    when ADDR_PLAINTEXT_10_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_10(31 downto 0), 32);
                    when ADDR_PLAINTEXT_11_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_11(31 downto 0), 32);
                    when ADDR_PLAINTEXT_12_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_12(31 downto 0), 32);
                    when ADDR_PLAINTEXT_13_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_13(31 downto 0), 32);
                    when ADDR_PLAINTEXT_14_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_14(31 downto 0), 32);
                    when ADDR_PLAINTEXT_15_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_15(31 downto 0), 32);
                    when ADDR_PLAINTEXT_16_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_16(31 downto 0), 32);
                    when ADDR_PLAINTEXT_17_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_17(31 downto 0), 32);
                    when ADDR_PLAINTEXT_18_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_18(31 downto 0), 32);
                    when ADDR_PLAINTEXT_19_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_19(31 downto 0), 32);
                    when ADDR_PLAINTEXT_20_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_20(31 downto 0), 32);
                    when ADDR_PLAINTEXT_21_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_21(31 downto 0), 32);
                    when ADDR_PLAINTEXT_22_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_22(31 downto 0), 32);
                    when ADDR_PLAINTEXT_23_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_23(31 downto 0), 32);
                    when ADDR_PLAINTEXT_24_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_24(31 downto 0), 32);
                    when ADDR_PLAINTEXT_25_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_25(31 downto 0), 32);
                    when ADDR_PLAINTEXT_26_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_26(31 downto 0), 32);
                    when ADDR_PLAINTEXT_27_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_27(31 downto 0), 32);
                    when ADDR_PLAINTEXT_28_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_28(31 downto 0), 32);
                    when ADDR_PLAINTEXT_29_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_29(31 downto 0), 32);
                    when ADDR_PLAINTEXT_30_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_30(31 downto 0), 32);
                    when ADDR_PLAINTEXT_31_DATA_0 =>
                        rdata_data <= RESIZE(int_plaintext_31(31 downto 0), 32);
                    when ADDR_KEY_DATA_0 =>
                        rdata_data <= RESIZE(int_key(31 downto 0), 32);
                    when ADDR_KEY_DATA_1 =>
                        rdata_data <= RESIZE(int_key(63 downto 32), 32);
                    when ADDR_CIPHERTEXT_0_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_0(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_0_CTRL =>
                        rdata_data(0) <= int_ciphertext_0_ap_vld;
                    when ADDR_CIPHERTEXT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_1(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_1_CTRL =>
                        rdata_data(0) <= int_ciphertext_1_ap_vld;
                    when ADDR_CIPHERTEXT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_2(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_2_CTRL =>
                        rdata_data(0) <= int_ciphertext_2_ap_vld;
                    when ADDR_CIPHERTEXT_3_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_3(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_3_CTRL =>
                        rdata_data(0) <= int_ciphertext_3_ap_vld;
                    when ADDR_CIPHERTEXT_4_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_4(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_4_CTRL =>
                        rdata_data(0) <= int_ciphertext_4_ap_vld;
                    when ADDR_CIPHERTEXT_5_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_5(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_5_CTRL =>
                        rdata_data(0) <= int_ciphertext_5_ap_vld;
                    when ADDR_CIPHERTEXT_6_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_6(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_6_CTRL =>
                        rdata_data(0) <= int_ciphertext_6_ap_vld;
                    when ADDR_CIPHERTEXT_7_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_7(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_7_CTRL =>
                        rdata_data(0) <= int_ciphertext_7_ap_vld;
                    when ADDR_CIPHERTEXT_8_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_8(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_8_CTRL =>
                        rdata_data(0) <= int_ciphertext_8_ap_vld;
                    when ADDR_CIPHERTEXT_9_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_9(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_9_CTRL =>
                        rdata_data(0) <= int_ciphertext_9_ap_vld;
                    when ADDR_CIPHERTEXT_10_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_10(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_10_CTRL =>
                        rdata_data(0) <= int_ciphertext_10_ap_vld;
                    when ADDR_CIPHERTEXT_11_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_11(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_11_CTRL =>
                        rdata_data(0) <= int_ciphertext_11_ap_vld;
                    when ADDR_CIPHERTEXT_12_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_12(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_12_CTRL =>
                        rdata_data(0) <= int_ciphertext_12_ap_vld;
                    when ADDR_CIPHERTEXT_13_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_13(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_13_CTRL =>
                        rdata_data(0) <= int_ciphertext_13_ap_vld;
                    when ADDR_CIPHERTEXT_14_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_14(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_14_CTRL =>
                        rdata_data(0) <= int_ciphertext_14_ap_vld;
                    when ADDR_CIPHERTEXT_15_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_15(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_15_CTRL =>
                        rdata_data(0) <= int_ciphertext_15_ap_vld;
                    when ADDR_CIPHERTEXT_16_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_16(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_16_CTRL =>
                        rdata_data(0) <= int_ciphertext_16_ap_vld;
                    when ADDR_CIPHERTEXT_17_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_17(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_17_CTRL =>
                        rdata_data(0) <= int_ciphertext_17_ap_vld;
                    when ADDR_CIPHERTEXT_18_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_18(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_18_CTRL =>
                        rdata_data(0) <= int_ciphertext_18_ap_vld;
                    when ADDR_CIPHERTEXT_19_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_19(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_19_CTRL =>
                        rdata_data(0) <= int_ciphertext_19_ap_vld;
                    when ADDR_CIPHERTEXT_20_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_20(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_20_CTRL =>
                        rdata_data(0) <= int_ciphertext_20_ap_vld;
                    when ADDR_CIPHERTEXT_21_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_21(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_21_CTRL =>
                        rdata_data(0) <= int_ciphertext_21_ap_vld;
                    when ADDR_CIPHERTEXT_22_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_22(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_22_CTRL =>
                        rdata_data(0) <= int_ciphertext_22_ap_vld;
                    when ADDR_CIPHERTEXT_23_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_23(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_23_CTRL =>
                        rdata_data(0) <= int_ciphertext_23_ap_vld;
                    when ADDR_CIPHERTEXT_24_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_24(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_24_CTRL =>
                        rdata_data(0) <= int_ciphertext_24_ap_vld;
                    when ADDR_CIPHERTEXT_25_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_25(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_25_CTRL =>
                        rdata_data(0) <= int_ciphertext_25_ap_vld;
                    when ADDR_CIPHERTEXT_26_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_26(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_26_CTRL =>
                        rdata_data(0) <= int_ciphertext_26_ap_vld;
                    when ADDR_CIPHERTEXT_27_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_27(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_27_CTRL =>
                        rdata_data(0) <= int_ciphertext_27_ap_vld;
                    when ADDR_CIPHERTEXT_28_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_28(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_28_CTRL =>
                        rdata_data(0) <= int_ciphertext_28_ap_vld;
                    when ADDR_CIPHERTEXT_29_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_29(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_29_CTRL =>
                        rdata_data(0) <= int_ciphertext_29_ap_vld;
                    when ADDR_CIPHERTEXT_30_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_30(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_30_CTRL =>
                        rdata_data(0) <= int_ciphertext_30_ap_vld;
                    when ADDR_CIPHERTEXT_31_DATA_0 =>
                        rdata_data <= RESIZE(int_ciphertext_31(31 downto 0), 32);
                    when ADDR_CIPHERTEXT_31_CTRL =>
                        rdata_data(0) <= int_ciphertext_31_ap_vld;
                    when ADDR_NONCE_DATA_0 =>
                        rdata_data <= RESIZE(int_nonce(31 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    plaintext_0          <= STD_LOGIC_VECTOR(int_plaintext_0);
    plaintext_1          <= STD_LOGIC_VECTOR(int_plaintext_1);
    plaintext_2          <= STD_LOGIC_VECTOR(int_plaintext_2);
    plaintext_3          <= STD_LOGIC_VECTOR(int_plaintext_3);
    plaintext_4          <= STD_LOGIC_VECTOR(int_plaintext_4);
    plaintext_5          <= STD_LOGIC_VECTOR(int_plaintext_5);
    plaintext_6          <= STD_LOGIC_VECTOR(int_plaintext_6);
    plaintext_7          <= STD_LOGIC_VECTOR(int_plaintext_7);
    plaintext_8          <= STD_LOGIC_VECTOR(int_plaintext_8);
    plaintext_9          <= STD_LOGIC_VECTOR(int_plaintext_9);
    plaintext_10         <= STD_LOGIC_VECTOR(int_plaintext_10);
    plaintext_11         <= STD_LOGIC_VECTOR(int_plaintext_11);
    plaintext_12         <= STD_LOGIC_VECTOR(int_plaintext_12);
    plaintext_13         <= STD_LOGIC_VECTOR(int_plaintext_13);
    plaintext_14         <= STD_LOGIC_VECTOR(int_plaintext_14);
    plaintext_15         <= STD_LOGIC_VECTOR(int_plaintext_15);
    plaintext_16         <= STD_LOGIC_VECTOR(int_plaintext_16);
    plaintext_17         <= STD_LOGIC_VECTOR(int_plaintext_17);
    plaintext_18         <= STD_LOGIC_VECTOR(int_plaintext_18);
    plaintext_19         <= STD_LOGIC_VECTOR(int_plaintext_19);
    plaintext_20         <= STD_LOGIC_VECTOR(int_plaintext_20);
    plaintext_21         <= STD_LOGIC_VECTOR(int_plaintext_21);
    plaintext_22         <= STD_LOGIC_VECTOR(int_plaintext_22);
    plaintext_23         <= STD_LOGIC_VECTOR(int_plaintext_23);
    plaintext_24         <= STD_LOGIC_VECTOR(int_plaintext_24);
    plaintext_25         <= STD_LOGIC_VECTOR(int_plaintext_25);
    plaintext_26         <= STD_LOGIC_VECTOR(int_plaintext_26);
    plaintext_27         <= STD_LOGIC_VECTOR(int_plaintext_27);
    plaintext_28         <= STD_LOGIC_VECTOR(int_plaintext_28);
    plaintext_29         <= STD_LOGIC_VECTOR(int_plaintext_29);
    plaintext_30         <= STD_LOGIC_VECTOR(int_plaintext_30);
    plaintext_31         <= STD_LOGIC_VECTOR(int_plaintext_31);
    key                  <= STD_LOGIC_VECTOR(int_key);
    nonce                <= STD_LOGIC_VECTOR(int_nonce);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_return <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_return <= UNSIGNED(ap_return);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_0(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_0_DATA_0) then
                    int_plaintext_0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_1_DATA_0) then
                    int_plaintext_1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_2(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_2_DATA_0) then
                    int_plaintext_2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_3(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_3_DATA_0) then
                    int_plaintext_3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_4(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_4_DATA_0) then
                    int_plaintext_4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_5(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_5_DATA_0) then
                    int_plaintext_5(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_5(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_6(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_6_DATA_0) then
                    int_plaintext_6(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_6(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_7(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_7_DATA_0) then
                    int_plaintext_7(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_7(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_8(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_8_DATA_0) then
                    int_plaintext_8(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_8(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_9(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_9_DATA_0) then
                    int_plaintext_9(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_9(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_10(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_10_DATA_0) then
                    int_plaintext_10(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_10(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_11(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_11_DATA_0) then
                    int_plaintext_11(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_11(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_12(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_12_DATA_0) then
                    int_plaintext_12(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_12(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_13(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_13_DATA_0) then
                    int_plaintext_13(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_13(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_14(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_14_DATA_0) then
                    int_plaintext_14(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_14(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_15(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_15_DATA_0) then
                    int_plaintext_15(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_15(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_16(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_16_DATA_0) then
                    int_plaintext_16(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_16(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_17(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_17_DATA_0) then
                    int_plaintext_17(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_17(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_18(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_18_DATA_0) then
                    int_plaintext_18(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_18(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_19(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_19_DATA_0) then
                    int_plaintext_19(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_19(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_20(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_20_DATA_0) then
                    int_plaintext_20(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_20(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_21(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_21_DATA_0) then
                    int_plaintext_21(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_21(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_22(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_22_DATA_0) then
                    int_plaintext_22(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_22(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_23(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_23_DATA_0) then
                    int_plaintext_23(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_23(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_24(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_24_DATA_0) then
                    int_plaintext_24(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_24(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_25(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_25_DATA_0) then
                    int_plaintext_25(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_25(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_26(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_26_DATA_0) then
                    int_plaintext_26(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_26(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_27(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_27_DATA_0) then
                    int_plaintext_27(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_27(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_28(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_28_DATA_0) then
                    int_plaintext_28(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_28(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_29(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_29_DATA_0) then
                    int_plaintext_29(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_29(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_30(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_30_DATA_0) then
                    int_plaintext_30(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_30(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_plaintext_31(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PLAINTEXT_31_DATA_0) then
                    int_plaintext_31(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_plaintext_31(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_key(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_KEY_DATA_0) then
                    int_key(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_key(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_key(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_KEY_DATA_1) then
                    int_key(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_key(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_0 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_0_ap_vld = '1') then
                    int_ciphertext_0 <= UNSIGNED(ciphertext_0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_0_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_0_ap_vld = '1') then
                    int_ciphertext_0_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_0_CTRL) then
                    int_ciphertext_0_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_1 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_1_ap_vld = '1') then
                    int_ciphertext_1 <= UNSIGNED(ciphertext_1);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_1_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_1_ap_vld = '1') then
                    int_ciphertext_1_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_1_CTRL) then
                    int_ciphertext_1_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_2 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_2_ap_vld = '1') then
                    int_ciphertext_2 <= UNSIGNED(ciphertext_2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_2_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_2_ap_vld = '1') then
                    int_ciphertext_2_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_2_CTRL) then
                    int_ciphertext_2_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_3 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_3_ap_vld = '1') then
                    int_ciphertext_3 <= UNSIGNED(ciphertext_3);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_3_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_3_ap_vld = '1') then
                    int_ciphertext_3_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_3_CTRL) then
                    int_ciphertext_3_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_4 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_4_ap_vld = '1') then
                    int_ciphertext_4 <= UNSIGNED(ciphertext_4);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_4_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_4_ap_vld = '1') then
                    int_ciphertext_4_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_4_CTRL) then
                    int_ciphertext_4_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_5 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_5_ap_vld = '1') then
                    int_ciphertext_5 <= UNSIGNED(ciphertext_5);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_5_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_5_ap_vld = '1') then
                    int_ciphertext_5_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_5_CTRL) then
                    int_ciphertext_5_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_6 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_6_ap_vld = '1') then
                    int_ciphertext_6 <= UNSIGNED(ciphertext_6);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_6_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_6_ap_vld = '1') then
                    int_ciphertext_6_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_6_CTRL) then
                    int_ciphertext_6_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_7 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_7_ap_vld = '1') then
                    int_ciphertext_7 <= UNSIGNED(ciphertext_7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_7_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_7_ap_vld = '1') then
                    int_ciphertext_7_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_7_CTRL) then
                    int_ciphertext_7_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_8 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_8_ap_vld = '1') then
                    int_ciphertext_8 <= UNSIGNED(ciphertext_8);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_8_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_8_ap_vld = '1') then
                    int_ciphertext_8_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_8_CTRL) then
                    int_ciphertext_8_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_9 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_9_ap_vld = '1') then
                    int_ciphertext_9 <= UNSIGNED(ciphertext_9);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_9_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_9_ap_vld = '1') then
                    int_ciphertext_9_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_9_CTRL) then
                    int_ciphertext_9_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_10 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_10_ap_vld = '1') then
                    int_ciphertext_10 <= UNSIGNED(ciphertext_10);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_10_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_10_ap_vld = '1') then
                    int_ciphertext_10_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_10_CTRL) then
                    int_ciphertext_10_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_11 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_11_ap_vld = '1') then
                    int_ciphertext_11 <= UNSIGNED(ciphertext_11);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_11_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_11_ap_vld = '1') then
                    int_ciphertext_11_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_11_CTRL) then
                    int_ciphertext_11_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_12 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_12_ap_vld = '1') then
                    int_ciphertext_12 <= UNSIGNED(ciphertext_12);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_12_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_12_ap_vld = '1') then
                    int_ciphertext_12_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_12_CTRL) then
                    int_ciphertext_12_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_13 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_13_ap_vld = '1') then
                    int_ciphertext_13 <= UNSIGNED(ciphertext_13);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_13_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_13_ap_vld = '1') then
                    int_ciphertext_13_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_13_CTRL) then
                    int_ciphertext_13_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_14 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_14_ap_vld = '1') then
                    int_ciphertext_14 <= UNSIGNED(ciphertext_14);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_14_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_14_ap_vld = '1') then
                    int_ciphertext_14_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_14_CTRL) then
                    int_ciphertext_14_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_15 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_15_ap_vld = '1') then
                    int_ciphertext_15 <= UNSIGNED(ciphertext_15);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_15_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_15_ap_vld = '1') then
                    int_ciphertext_15_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_15_CTRL) then
                    int_ciphertext_15_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_16 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_16_ap_vld = '1') then
                    int_ciphertext_16 <= UNSIGNED(ciphertext_16);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_16_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_16_ap_vld = '1') then
                    int_ciphertext_16_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_16_CTRL) then
                    int_ciphertext_16_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_17 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_17_ap_vld = '1') then
                    int_ciphertext_17 <= UNSIGNED(ciphertext_17);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_17_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_17_ap_vld = '1') then
                    int_ciphertext_17_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_17_CTRL) then
                    int_ciphertext_17_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_18 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_18_ap_vld = '1') then
                    int_ciphertext_18 <= UNSIGNED(ciphertext_18);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_18_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_18_ap_vld = '1') then
                    int_ciphertext_18_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_18_CTRL) then
                    int_ciphertext_18_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_19 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_19_ap_vld = '1') then
                    int_ciphertext_19 <= UNSIGNED(ciphertext_19);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_19_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_19_ap_vld = '1') then
                    int_ciphertext_19_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_19_CTRL) then
                    int_ciphertext_19_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_20 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_20_ap_vld = '1') then
                    int_ciphertext_20 <= UNSIGNED(ciphertext_20);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_20_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_20_ap_vld = '1') then
                    int_ciphertext_20_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_20_CTRL) then
                    int_ciphertext_20_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_21 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_21_ap_vld = '1') then
                    int_ciphertext_21 <= UNSIGNED(ciphertext_21);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_21_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_21_ap_vld = '1') then
                    int_ciphertext_21_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_21_CTRL) then
                    int_ciphertext_21_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_22 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_22_ap_vld = '1') then
                    int_ciphertext_22 <= UNSIGNED(ciphertext_22);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_22_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_22_ap_vld = '1') then
                    int_ciphertext_22_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_22_CTRL) then
                    int_ciphertext_22_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_23 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_23_ap_vld = '1') then
                    int_ciphertext_23 <= UNSIGNED(ciphertext_23);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_23_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_23_ap_vld = '1') then
                    int_ciphertext_23_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_23_CTRL) then
                    int_ciphertext_23_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_24 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_24_ap_vld = '1') then
                    int_ciphertext_24 <= UNSIGNED(ciphertext_24);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_24_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_24_ap_vld = '1') then
                    int_ciphertext_24_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_24_CTRL) then
                    int_ciphertext_24_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_25 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_25_ap_vld = '1') then
                    int_ciphertext_25 <= UNSIGNED(ciphertext_25);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_25_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_25_ap_vld = '1') then
                    int_ciphertext_25_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_25_CTRL) then
                    int_ciphertext_25_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_26 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_26_ap_vld = '1') then
                    int_ciphertext_26 <= UNSIGNED(ciphertext_26);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_26_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_26_ap_vld = '1') then
                    int_ciphertext_26_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_26_CTRL) then
                    int_ciphertext_26_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_27 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_27_ap_vld = '1') then
                    int_ciphertext_27 <= UNSIGNED(ciphertext_27);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_27_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_27_ap_vld = '1') then
                    int_ciphertext_27_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_27_CTRL) then
                    int_ciphertext_27_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_28 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_28_ap_vld = '1') then
                    int_ciphertext_28 <= UNSIGNED(ciphertext_28);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_28_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_28_ap_vld = '1') then
                    int_ciphertext_28_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_28_CTRL) then
                    int_ciphertext_28_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_29 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_29_ap_vld = '1') then
                    int_ciphertext_29 <= UNSIGNED(ciphertext_29);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_29_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_29_ap_vld = '1') then
                    int_ciphertext_29_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_29_CTRL) then
                    int_ciphertext_29_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_30 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_30_ap_vld = '1') then
                    int_ciphertext_30 <= UNSIGNED(ciphertext_30);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_30_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_30_ap_vld = '1') then
                    int_ciphertext_30_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_30_CTRL) then
                    int_ciphertext_30_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_31 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (ciphertext_31_ap_vld = '1') then
                    int_ciphertext_31 <= UNSIGNED(ciphertext_31);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ciphertext_31_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (ciphertext_31_ap_vld = '1') then
                    int_ciphertext_31_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CIPHERTEXT_31_CTRL) then
                    int_ciphertext_31_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_nonce(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_NONCE_DATA_0) then
                    int_nonce(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_nonce(31 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
