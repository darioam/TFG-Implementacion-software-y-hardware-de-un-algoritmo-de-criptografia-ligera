// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  2 21:17:39 2026
// Host        : DESKTOP-60NA4LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Dario/Documents/TFG/Vivado/cifrado_basico_pre/cifrado_basico_pre.gen/sources_1/bd/design_1/ip/design_1_cifrador_basico_pre_0_0/design_1_cifrador_basico_pre_0_0_sim_netlist.v
// Design      : design_1_cifrador_basico_pre_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_cifrador_basico_pre_0_0,cifrador_basico_pre,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "cifrador_basico_pre,Vivado 2025.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_cifrador_basico_pre_0_0
   (s_axi_control_ARADDR,
    s_axi_control_ARREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWADDR,
    s_axi_control_AWREADY,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_RDATA,
    s_axi_control_RREADY,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_WDATA,
    s_axi_control_WREADY,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  (* ap_ST_fsm_state5 = "6'b010000" *) 
  (* ap_ST_fsm_state6 = "6'b100000" *) 
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({s_axi_control_AWADDR[5:2],1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "cifrador_basico_pre" *) (* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state2 = "6'b000010" *) 
(* ap_ST_fsm_state3 = "6'b000100" *) (* ap_ST_fsm_state4 = "6'b001000" *) (* ap_ST_fsm_state5 = "6'b010000" *) 
(* ap_ST_fsm_state6 = "6'b100000" *) (* hls_module = "yes" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre
   (ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [5:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state6;
  wire [4:0]ap_NS_fsm;
  wire ap_clk;
  wire [31:0]ap_return;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire control_s_axi_U_n_105;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_n_7;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  wire [4:0]grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_round_keys_address0;
  wire [31:0]grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_round_keys_d0;
  wire interrupt;
  wire [63:0]key;
  wire [63:0]key_read_reg_101;
  wire [31:0]plaintext;
  wire [31:0]plaintext_read_reg_106;
  wire [4:0]round_keys_address0;
  wire round_keys_ce0;
  wire [31:0]round_keys_q0;
  wire round_keys_we0;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[4] ),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_control_s_axi control_s_axi_U
       (.D(ap_NS_fsm[0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .\int_ap_return_reg[31]_0 (ap_return),
        .int_ap_start_reg_0(control_s_axi_U_n_105),
        .\int_key_reg[63]_0 (key),
        .\int_plaintext_reg[31]_0 (plaintext),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR[5:2]),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1 grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85
       (.ADDRARDADDR(round_keys_address0),
        .D(ap_NS_fsm[4:3]),
        .Q(plaintext_read_reg_106),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[2] (grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_n_7),
        .\ap_CS_fsm_reg[4] ({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .\p_phi_fu_98_reg[31]_0 (ap_return),
        .ram_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_round_keys_address0),
        .round_keys_q0(round_keys_q0));
  FDRE #(
    .INIT(1'b0)) 
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_n_7),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1 grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77
       (.D(ap_NS_fsm[2:1]),
        .Q(key_read_reg_101),
        .SR(ap_rst_n_inv),
        .WEA(round_keys_we0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .\key_1_fu_90_reg[63]_0 (grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_round_keys_d0),
        .ram_reg({\ap_CS_fsm_reg_n_0_[4] ,ap_CS_fsm_state4,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\round_fu_94_reg[4]_0 (grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_round_keys_address0),
        .round_keys_ce0(round_keys_ce0));
  FDRE #(
    .INIT(1'b0)) 
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_105),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \key_read_reg_101_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[0]),
        .Q(key_read_reg_101[0]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[10]),
        .Q(key_read_reg_101[10]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[11]),
        .Q(key_read_reg_101[11]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[12]),
        .Q(key_read_reg_101[12]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[13]),
        .Q(key_read_reg_101[13]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[14]),
        .Q(key_read_reg_101[14]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[15]),
        .Q(key_read_reg_101[15]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[16]),
        .Q(key_read_reg_101[16]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[17]),
        .Q(key_read_reg_101[17]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[18]),
        .Q(key_read_reg_101[18]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[19]),
        .Q(key_read_reg_101[19]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[1]),
        .Q(key_read_reg_101[1]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[20]),
        .Q(key_read_reg_101[20]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[21]),
        .Q(key_read_reg_101[21]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[22]),
        .Q(key_read_reg_101[22]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[23]),
        .Q(key_read_reg_101[23]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[24]),
        .Q(key_read_reg_101[24]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[25]),
        .Q(key_read_reg_101[25]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[26]),
        .Q(key_read_reg_101[26]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[27]),
        .Q(key_read_reg_101[27]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[28]),
        .Q(key_read_reg_101[28]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[29]),
        .Q(key_read_reg_101[29]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[2]),
        .Q(key_read_reg_101[2]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[30]),
        .Q(key_read_reg_101[30]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[31]),
        .Q(key_read_reg_101[31]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[32] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[32]),
        .Q(key_read_reg_101[32]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[33] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[33]),
        .Q(key_read_reg_101[33]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[34] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[34]),
        .Q(key_read_reg_101[34]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[35] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[35]),
        .Q(key_read_reg_101[35]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[36] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[36]),
        .Q(key_read_reg_101[36]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[37] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[37]),
        .Q(key_read_reg_101[37]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[38] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[38]),
        .Q(key_read_reg_101[38]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[39] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[39]),
        .Q(key_read_reg_101[39]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[3]),
        .Q(key_read_reg_101[3]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[40] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[40]),
        .Q(key_read_reg_101[40]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[41] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[41]),
        .Q(key_read_reg_101[41]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[42] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[42]),
        .Q(key_read_reg_101[42]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[43] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[43]),
        .Q(key_read_reg_101[43]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[44] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[44]),
        .Q(key_read_reg_101[44]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[45] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[45]),
        .Q(key_read_reg_101[45]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[46] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[46]),
        .Q(key_read_reg_101[46]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[47] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[47]),
        .Q(key_read_reg_101[47]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[48] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[48]),
        .Q(key_read_reg_101[48]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[49] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[49]),
        .Q(key_read_reg_101[49]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[4]),
        .Q(key_read_reg_101[4]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[50] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[50]),
        .Q(key_read_reg_101[50]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[51] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[51]),
        .Q(key_read_reg_101[51]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[52] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[52]),
        .Q(key_read_reg_101[52]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[53] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[53]),
        .Q(key_read_reg_101[53]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[54] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[54]),
        .Q(key_read_reg_101[54]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[55] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[55]),
        .Q(key_read_reg_101[55]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[56] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[56]),
        .Q(key_read_reg_101[56]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[57] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[57]),
        .Q(key_read_reg_101[57]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[58] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[58]),
        .Q(key_read_reg_101[58]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[59] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[59]),
        .Q(key_read_reg_101[59]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[5]),
        .Q(key_read_reg_101[5]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[60] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[60]),
        .Q(key_read_reg_101[60]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[61] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[61]),
        .Q(key_read_reg_101[61]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[62] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[62]),
        .Q(key_read_reg_101[62]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[63] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[63]),
        .Q(key_read_reg_101[63]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[6]),
        .Q(key_read_reg_101[6]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[7]),
        .Q(key_read_reg_101[7]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[8]),
        .Q(key_read_reg_101[8]),
        .R(1'b0));
  FDRE \key_read_reg_101_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(key[9]),
        .Q(key_read_reg_101[9]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[0]),
        .Q(plaintext_read_reg_106[0]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[10]),
        .Q(plaintext_read_reg_106[10]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[11]),
        .Q(plaintext_read_reg_106[11]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[12]),
        .Q(plaintext_read_reg_106[12]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[13]),
        .Q(plaintext_read_reg_106[13]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[14]),
        .Q(plaintext_read_reg_106[14]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[15]),
        .Q(plaintext_read_reg_106[15]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[16]),
        .Q(plaintext_read_reg_106[16]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[17]),
        .Q(plaintext_read_reg_106[17]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[18]),
        .Q(plaintext_read_reg_106[18]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[19]),
        .Q(plaintext_read_reg_106[19]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[1]),
        .Q(plaintext_read_reg_106[1]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[20]),
        .Q(plaintext_read_reg_106[20]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[21]),
        .Q(plaintext_read_reg_106[21]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[22]),
        .Q(plaintext_read_reg_106[22]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[23]),
        .Q(plaintext_read_reg_106[23]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[24]),
        .Q(plaintext_read_reg_106[24]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[25]),
        .Q(plaintext_read_reg_106[25]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[26]),
        .Q(plaintext_read_reg_106[26]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[27]),
        .Q(plaintext_read_reg_106[27]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[28]),
        .Q(plaintext_read_reg_106[28]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[29]),
        .Q(plaintext_read_reg_106[29]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[2]),
        .Q(plaintext_read_reg_106[2]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[30]),
        .Q(plaintext_read_reg_106[30]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[31]),
        .Q(plaintext_read_reg_106[31]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[3]),
        .Q(plaintext_read_reg_106[3]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[4]),
        .Q(plaintext_read_reg_106[4]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[5]),
        .Q(plaintext_read_reg_106[5]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[6]),
        .Q(plaintext_read_reg_106[6]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[7]),
        .Q(plaintext_read_reg_106[7]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[8]),
        .Q(plaintext_read_reg_106[8]),
        .R(1'b0));
  FDRE \plaintext_read_reg_106_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(plaintext[9]),
        .Q(plaintext_read_reg_106[9]),
        .R(1'b0));
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_round_keys_RAM_AUTO_1R1W round_keys_U
       (.ADDRARDADDR(round_keys_address0),
        .WEA(round_keys_we0),
        .ap_clk(ap_clk),
        .ram_reg_0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_round_keys_d0),
        .round_keys_ce0(round_keys_ce0),
        .round_keys_q0(round_keys_q0));
endmodule

(* ORIG_REF_NAME = "cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1
   (ADDRARDADDR,
    D,
    \ap_CS_fsm_reg[2] ,
    \p_phi_fu_98_reg[31]_0 ,
    SR,
    ap_clk,
    Q,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg,
    ram_reg,
    \ap_CS_fsm_reg[4] ,
    ap_rst_n,
    round_keys_q0);
  output [4:0]ADDRARDADDR;
  output [1:0]D;
  output \ap_CS_fsm_reg[2] ;
  output [31:0]\p_phi_fu_98_reg[31]_0 ;
  input [0:0]SR;
  input ap_clk;
  input [31:0]Q;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;
  input [4:0]ram_reg;
  input [2:0]\ap_CS_fsm_reg[4] ;
  input ap_rst_n;
  input [31:0]round_keys_q0;

  wire [4:0]ADDRARDADDR;
  wire [1:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [4:0]add_ln114_fu_155_p2;
  wire \ap_CS_fsm_reg[2] ;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire [3:0]dout_tmp;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_43;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;
  wire [31:0]grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out;
  wire [31:0]in_fu_102;
  wire [31:0]p_1_in;
  wire \p_phi_fu_98[0]_i_1_n_0 ;
  wire \p_phi_fu_98[10]_i_1_n_0 ;
  wire \p_phi_fu_98[11]_i_1_n_0 ;
  wire \p_phi_fu_98[11]_i_2_n_0 ;
  wire \p_phi_fu_98[11]_i_3_n_0 ;
  wire \p_phi_fu_98[12]_i_1_n_0 ;
  wire \p_phi_fu_98[13]_i_1_n_0 ;
  wire \p_phi_fu_98[14]_i_1_n_0 ;
  wire \p_phi_fu_98[15]_i_1_n_0 ;
  wire \p_phi_fu_98[15]_i_2_n_0 ;
  wire \p_phi_fu_98[15]_i_3_n_0 ;
  wire \p_phi_fu_98[16]_i_1_n_0 ;
  wire \p_phi_fu_98[17]_i_1_n_0 ;
  wire \p_phi_fu_98[18]_i_1_n_0 ;
  wire \p_phi_fu_98[19]_i_1_n_0 ;
  wire \p_phi_fu_98[19]_i_2_n_0 ;
  wire \p_phi_fu_98[19]_i_3_n_0 ;
  wire \p_phi_fu_98[1]_i_1_n_0 ;
  wire \p_phi_fu_98[20]_i_1_n_0 ;
  wire \p_phi_fu_98[21]_i_1_n_0 ;
  wire \p_phi_fu_98[22]_i_1_n_0 ;
  wire \p_phi_fu_98[23]_i_1_n_0 ;
  wire \p_phi_fu_98[23]_i_2_n_0 ;
  wire \p_phi_fu_98[23]_i_3_n_0 ;
  wire \p_phi_fu_98[24]_i_1_n_0 ;
  wire \p_phi_fu_98[25]_i_1_n_0 ;
  wire \p_phi_fu_98[26]_i_1_n_0 ;
  wire \p_phi_fu_98[27]_i_1_n_0 ;
  wire \p_phi_fu_98[27]_i_2_n_0 ;
  wire \p_phi_fu_98[27]_i_3_n_0 ;
  wire \p_phi_fu_98[28]_i_1_n_0 ;
  wire \p_phi_fu_98[29]_i_1_n_0 ;
  wire \p_phi_fu_98[2]_i_1_n_0 ;
  wire \p_phi_fu_98[30]_i_1_n_0 ;
  wire \p_phi_fu_98[31]_i_1_n_0 ;
  wire \p_phi_fu_98[3]_i_1_n_0 ;
  wire \p_phi_fu_98[3]_i_2_n_0 ;
  wire \p_phi_fu_98[3]_i_3_n_0 ;
  wire \p_phi_fu_98[7]_i_2_n_0 ;
  wire \p_phi_fu_98[7]_i_3_n_0 ;
  wire \p_phi_fu_98[8]_i_1_n_0 ;
  wire \p_phi_fu_98[9]_i_1_n_0 ;
  wire [31:0]\p_phi_fu_98_reg[31]_0 ;
  wire [4:0]ram_reg;
  wire round_1_fu_1060;
  wire \round_1_fu_106_reg_n_0_[0] ;
  wire \round_1_fu_106_reg_n_0_[1] ;
  wire \round_1_fu_106_reg_n_0_[2] ;
  wire \round_1_fu_106_reg_n_0_[3] ;
  wire \round_1_fu_106_reg_n_0_[4] ;
  wire [31:0]round_key_reg_1170;
  wire [31:0]round_keys_q0;
  wire [2:0]sel;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_43),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(SR));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.ADDRARDADDR(ADDRARDADDR),
        .D(p_1_in),
        .E(flow_control_loop_pipe_sequential_init_U_n_32),
        .Q(Q),
        .SR(SR),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[3] (D),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_43),
        .\in_fu_102_reg[0] (ap_enable_reg_pp0_iter2),
        .\in_fu_102_reg[31] ({\p_phi_fu_98[31]_i_1_n_0 ,\p_phi_fu_98[30]_i_1_n_0 ,\p_phi_fu_98[29]_i_1_n_0 ,\p_phi_fu_98[28]_i_1_n_0 ,\p_phi_fu_98[27]_i_1_n_0 ,\p_phi_fu_98[26]_i_1_n_0 ,\p_phi_fu_98[25]_i_1_n_0 ,\p_phi_fu_98[24]_i_1_n_0 ,\p_phi_fu_98[23]_i_1_n_0 ,\p_phi_fu_98[22]_i_1_n_0 ,\p_phi_fu_98[21]_i_1_n_0 ,\p_phi_fu_98[20]_i_1_n_0 ,\p_phi_fu_98[19]_i_1_n_0 ,\p_phi_fu_98[18]_i_1_n_0 ,\p_phi_fu_98[17]_i_1_n_0 ,\p_phi_fu_98[16]_i_1_n_0 ,\p_phi_fu_98[15]_i_1_n_0 ,\p_phi_fu_98[14]_i_1_n_0 ,\p_phi_fu_98[13]_i_1_n_0 ,\p_phi_fu_98[12]_i_1_n_0 ,\p_phi_fu_98[11]_i_1_n_0 ,\p_phi_fu_98[10]_i_1_n_0 ,\p_phi_fu_98[9]_i_1_n_0 ,\p_phi_fu_98[8]_i_1_n_0 ,dout_tmp,\p_phi_fu_98[3]_i_1_n_0 ,\p_phi_fu_98[2]_i_1_n_0 ,\p_phi_fu_98[1]_i_1_n_0 ,\p_phi_fu_98[0]_i_1_n_0 }),
        .ram_reg(ram_reg),
        .ram_reg_0({\round_1_fu_106_reg_n_0_[4] ,\round_1_fu_106_reg_n_0_[3] ,\round_1_fu_106_reg_n_0_[2] ,\round_1_fu_106_reg_n_0_[1] ,\round_1_fu_106_reg_n_0_[0] }),
        .\round_1_fu_106_reg[2] ({add_ln114_fu_155_p2[4:3],flow_control_loop_pipe_sequential_init_U_n_40,add_ln114_fu_155_p2[1:0]}),
        .\round_1_fu_106_reg[2]_0 (round_1_fu_1060));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[0]),
        .Q(in_fu_102[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[10]),
        .Q(in_fu_102[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[11] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[11]),
        .Q(in_fu_102[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[12] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[12]),
        .Q(in_fu_102[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[13] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[13]),
        .Q(in_fu_102[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[14] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[14]),
        .Q(in_fu_102[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[15] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[15]),
        .Q(in_fu_102[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[16] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[16]),
        .Q(in_fu_102[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[17] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[17]),
        .Q(in_fu_102[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[18] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[18]),
        .Q(in_fu_102[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[19] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[19]),
        .Q(in_fu_102[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[1]),
        .Q(in_fu_102[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[20] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[20]),
        .Q(in_fu_102[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[21] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[21]),
        .Q(in_fu_102[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[22] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[22]),
        .Q(in_fu_102[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[23] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[23]),
        .Q(in_fu_102[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[24] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[24]),
        .Q(in_fu_102[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[25] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[25]),
        .Q(in_fu_102[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[26] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[26]),
        .Q(in_fu_102[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[27] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[27]),
        .Q(in_fu_102[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[28] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[28]),
        .Q(in_fu_102[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[29] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[29]),
        .Q(in_fu_102[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[2]),
        .Q(in_fu_102[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[30] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[30]),
        .Q(in_fu_102[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[31] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[31]),
        .Q(in_fu_102[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[3]),
        .Q(in_fu_102[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[4]),
        .Q(in_fu_102[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[5]),
        .Q(in_fu_102[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[6]),
        .Q(in_fu_102[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[7]),
        .Q(in_fu_102[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[8]),
        .Q(in_fu_102[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_fu_102_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_32),
        .D(p_1_in[9]),
        .Q(in_fu_102[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[0]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[0]),
        .I1(round_keys_q0[0]),
        .O(\p_phi_fu_98_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[10]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[10]),
        .I1(round_keys_q0[10]),
        .O(\p_phi_fu_98_reg[31]_0 [10]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[11]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[11]),
        .I1(round_keys_q0[11]),
        .O(\p_phi_fu_98_reg[31]_0 [11]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[12]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[12]),
        .I1(round_keys_q0[12]),
        .O(\p_phi_fu_98_reg[31]_0 [12]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[13]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[13]),
        .I1(round_keys_q0[13]),
        .O(\p_phi_fu_98_reg[31]_0 [13]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[14]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[14]),
        .I1(round_keys_q0[14]),
        .O(\p_phi_fu_98_reg[31]_0 [14]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[15]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[15]),
        .I1(round_keys_q0[15]),
        .O(\p_phi_fu_98_reg[31]_0 [15]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[16]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[16]),
        .I1(round_keys_q0[16]),
        .O(\p_phi_fu_98_reg[31]_0 [16]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[17]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[17]),
        .I1(round_keys_q0[17]),
        .O(\p_phi_fu_98_reg[31]_0 [17]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[18]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[18]),
        .I1(round_keys_q0[18]),
        .O(\p_phi_fu_98_reg[31]_0 [18]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[19]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[19]),
        .I1(round_keys_q0[19]),
        .O(\p_phi_fu_98_reg[31]_0 [19]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[1]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[1]),
        .I1(round_keys_q0[1]),
        .O(\p_phi_fu_98_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[20]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[20]),
        .I1(round_keys_q0[20]),
        .O(\p_phi_fu_98_reg[31]_0 [20]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[21]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[21]),
        .I1(round_keys_q0[21]),
        .O(\p_phi_fu_98_reg[31]_0 [21]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[22]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[22]),
        .I1(round_keys_q0[22]),
        .O(\p_phi_fu_98_reg[31]_0 [22]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[23]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[23]),
        .I1(round_keys_q0[23]),
        .O(\p_phi_fu_98_reg[31]_0 [23]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[24]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[24]),
        .I1(round_keys_q0[24]),
        .O(\p_phi_fu_98_reg[31]_0 [24]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[25]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[25]),
        .I1(round_keys_q0[25]),
        .O(\p_phi_fu_98_reg[31]_0 [25]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[26]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[26]),
        .I1(round_keys_q0[26]),
        .O(\p_phi_fu_98_reg[31]_0 [26]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[27]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[27]),
        .I1(round_keys_q0[27]),
        .O(\p_phi_fu_98_reg[31]_0 [27]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[28]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[28]),
        .I1(round_keys_q0[28]),
        .O(\p_phi_fu_98_reg[31]_0 [28]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[29]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[29]),
        .I1(round_keys_q0[29]),
        .O(\p_phi_fu_98_reg[31]_0 [29]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[2]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[2]),
        .I1(round_keys_q0[2]),
        .O(\p_phi_fu_98_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[30]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[30]),
        .I1(round_keys_q0[30]),
        .O(\p_phi_fu_98_reg[31]_0 [30]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[31]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[31]),
        .I1(round_keys_q0[31]),
        .O(\p_phi_fu_98_reg[31]_0 [31]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[3]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[3]),
        .I1(round_keys_q0[3]),
        .O(\p_phi_fu_98_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[4]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[4]),
        .I1(round_keys_q0[4]),
        .O(\p_phi_fu_98_reg[31]_0 [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[5]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[5]),
        .I1(round_keys_q0[5]),
        .O(\p_phi_fu_98_reg[31]_0 [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[6]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[6]),
        .I1(round_keys_q0[6]),
        .O(\p_phi_fu_98_reg[31]_0 [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[7]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[7]),
        .I1(round_keys_q0[7]),
        .O(\p_phi_fu_98_reg[31]_0 [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[8]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[8]),
        .I1(round_keys_q0[8]),
        .O(\p_phi_fu_98_reg[31]_0 [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \int_ap_return[9]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[9]),
        .I1(round_keys_q0[9]),
        .O(\p_phi_fu_98_reg[31]_0 [9]));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[0]_i_1 
       (.I0(in_fu_102[3]),
        .I1(round_key_reg_1170[3]),
        .I2(round_key_reg_1170[1]),
        .I3(in_fu_102[1]),
        .I4(\p_phi_fu_98[3]_i_2_n_0 ),
        .I5(\p_phi_fu_98[3]_i_3_n_0 ),
        .O(\p_phi_fu_98[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[10]_i_1 
       (.I0(in_fu_102[11]),
        .I1(round_key_reg_1170[11]),
        .I2(\p_phi_fu_98[11]_i_2_n_0 ),
        .I3(\p_phi_fu_98[11]_i_3_n_0 ),
        .I4(in_fu_102[9]),
        .I5(round_key_reg_1170[9]),
        .O(\p_phi_fu_98[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[11]_i_1 
       (.I0(in_fu_102[11]),
        .I1(round_key_reg_1170[11]),
        .I2(\p_phi_fu_98[11]_i_2_n_0 ),
        .I3(round_key_reg_1170[9]),
        .I4(in_fu_102[9]),
        .I5(\p_phi_fu_98[11]_i_3_n_0 ),
        .O(\p_phi_fu_98[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[11]_i_2 
       (.I0(in_fu_102[10]),
        .I1(round_key_reg_1170[10]),
        .O(\p_phi_fu_98[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[11]_i_3 
       (.I0(in_fu_102[8]),
        .I1(round_key_reg_1170[8]),
        .O(\p_phi_fu_98[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[12]_i_1 
       (.I0(in_fu_102[15]),
        .I1(round_key_reg_1170[15]),
        .I2(round_key_reg_1170[13]),
        .I3(in_fu_102[13]),
        .I4(\p_phi_fu_98[15]_i_2_n_0 ),
        .I5(\p_phi_fu_98[15]_i_3_n_0 ),
        .O(\p_phi_fu_98[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[13]_i_1 
       (.I0(in_fu_102[15]),
        .I1(round_key_reg_1170[15]),
        .I2(\p_phi_fu_98[15]_i_3_n_0 ),
        .I3(\p_phi_fu_98[15]_i_2_n_0 ),
        .I4(in_fu_102[13]),
        .I5(round_key_reg_1170[13]),
        .O(\p_phi_fu_98[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[14]_i_1 
       (.I0(in_fu_102[15]),
        .I1(round_key_reg_1170[15]),
        .I2(\p_phi_fu_98[15]_i_2_n_0 ),
        .I3(\p_phi_fu_98[15]_i_3_n_0 ),
        .I4(in_fu_102[13]),
        .I5(round_key_reg_1170[13]),
        .O(\p_phi_fu_98[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[15]_i_1 
       (.I0(in_fu_102[15]),
        .I1(round_key_reg_1170[15]),
        .I2(\p_phi_fu_98[15]_i_2_n_0 ),
        .I3(round_key_reg_1170[13]),
        .I4(in_fu_102[13]),
        .I5(\p_phi_fu_98[15]_i_3_n_0 ),
        .O(\p_phi_fu_98[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[15]_i_2 
       (.I0(in_fu_102[14]),
        .I1(round_key_reg_1170[14]),
        .O(\p_phi_fu_98[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[15]_i_3 
       (.I0(in_fu_102[12]),
        .I1(round_key_reg_1170[12]),
        .O(\p_phi_fu_98[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[16]_i_1 
       (.I0(in_fu_102[19]),
        .I1(round_key_reg_1170[19]),
        .I2(round_key_reg_1170[17]),
        .I3(in_fu_102[17]),
        .I4(\p_phi_fu_98[19]_i_2_n_0 ),
        .I5(\p_phi_fu_98[19]_i_3_n_0 ),
        .O(\p_phi_fu_98[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[17]_i_1 
       (.I0(in_fu_102[19]),
        .I1(round_key_reg_1170[19]),
        .I2(\p_phi_fu_98[19]_i_3_n_0 ),
        .I3(\p_phi_fu_98[19]_i_2_n_0 ),
        .I4(in_fu_102[17]),
        .I5(round_key_reg_1170[17]),
        .O(\p_phi_fu_98[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[18]_i_1 
       (.I0(in_fu_102[19]),
        .I1(round_key_reg_1170[19]),
        .I2(\p_phi_fu_98[19]_i_2_n_0 ),
        .I3(\p_phi_fu_98[19]_i_3_n_0 ),
        .I4(in_fu_102[17]),
        .I5(round_key_reg_1170[17]),
        .O(\p_phi_fu_98[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[19]_i_1 
       (.I0(in_fu_102[19]),
        .I1(round_key_reg_1170[19]),
        .I2(\p_phi_fu_98[19]_i_2_n_0 ),
        .I3(round_key_reg_1170[17]),
        .I4(in_fu_102[17]),
        .I5(\p_phi_fu_98[19]_i_3_n_0 ),
        .O(\p_phi_fu_98[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[19]_i_2 
       (.I0(in_fu_102[18]),
        .I1(round_key_reg_1170[18]),
        .O(\p_phi_fu_98[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[19]_i_3 
       (.I0(in_fu_102[16]),
        .I1(round_key_reg_1170[16]),
        .O(\p_phi_fu_98[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[1]_i_1 
       (.I0(in_fu_102[3]),
        .I1(round_key_reg_1170[3]),
        .I2(\p_phi_fu_98[3]_i_3_n_0 ),
        .I3(\p_phi_fu_98[3]_i_2_n_0 ),
        .I4(in_fu_102[1]),
        .I5(round_key_reg_1170[1]),
        .O(\p_phi_fu_98[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[20]_i_1 
       (.I0(in_fu_102[23]),
        .I1(round_key_reg_1170[23]),
        .I2(round_key_reg_1170[21]),
        .I3(in_fu_102[21]),
        .I4(\p_phi_fu_98[23]_i_2_n_0 ),
        .I5(\p_phi_fu_98[23]_i_3_n_0 ),
        .O(\p_phi_fu_98[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[21]_i_1 
       (.I0(in_fu_102[23]),
        .I1(round_key_reg_1170[23]),
        .I2(\p_phi_fu_98[23]_i_3_n_0 ),
        .I3(\p_phi_fu_98[23]_i_2_n_0 ),
        .I4(in_fu_102[21]),
        .I5(round_key_reg_1170[21]),
        .O(\p_phi_fu_98[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[22]_i_1 
       (.I0(in_fu_102[23]),
        .I1(round_key_reg_1170[23]),
        .I2(\p_phi_fu_98[23]_i_2_n_0 ),
        .I3(\p_phi_fu_98[23]_i_3_n_0 ),
        .I4(in_fu_102[21]),
        .I5(round_key_reg_1170[21]),
        .O(\p_phi_fu_98[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[23]_i_1 
       (.I0(in_fu_102[23]),
        .I1(round_key_reg_1170[23]),
        .I2(\p_phi_fu_98[23]_i_2_n_0 ),
        .I3(round_key_reg_1170[21]),
        .I4(in_fu_102[21]),
        .I5(\p_phi_fu_98[23]_i_3_n_0 ),
        .O(\p_phi_fu_98[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[23]_i_2 
       (.I0(in_fu_102[22]),
        .I1(round_key_reg_1170[22]),
        .O(\p_phi_fu_98[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[23]_i_3 
       (.I0(in_fu_102[20]),
        .I1(round_key_reg_1170[20]),
        .O(\p_phi_fu_98[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[24]_i_1 
       (.I0(in_fu_102[27]),
        .I1(round_key_reg_1170[27]),
        .I2(round_key_reg_1170[25]),
        .I3(in_fu_102[25]),
        .I4(\p_phi_fu_98[27]_i_2_n_0 ),
        .I5(\p_phi_fu_98[27]_i_3_n_0 ),
        .O(\p_phi_fu_98[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[25]_i_1 
       (.I0(in_fu_102[27]),
        .I1(round_key_reg_1170[27]),
        .I2(\p_phi_fu_98[27]_i_3_n_0 ),
        .I3(\p_phi_fu_98[27]_i_2_n_0 ),
        .I4(in_fu_102[25]),
        .I5(round_key_reg_1170[25]),
        .O(\p_phi_fu_98[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[26]_i_1 
       (.I0(in_fu_102[27]),
        .I1(round_key_reg_1170[27]),
        .I2(\p_phi_fu_98[27]_i_2_n_0 ),
        .I3(\p_phi_fu_98[27]_i_3_n_0 ),
        .I4(in_fu_102[25]),
        .I5(round_key_reg_1170[25]),
        .O(\p_phi_fu_98[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[27]_i_1 
       (.I0(in_fu_102[27]),
        .I1(round_key_reg_1170[27]),
        .I2(\p_phi_fu_98[27]_i_2_n_0 ),
        .I3(round_key_reg_1170[25]),
        .I4(in_fu_102[25]),
        .I5(\p_phi_fu_98[27]_i_3_n_0 ),
        .O(\p_phi_fu_98[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[27]_i_2 
       (.I0(in_fu_102[26]),
        .I1(round_key_reg_1170[26]),
        .O(\p_phi_fu_98[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[27]_i_3 
       (.I0(in_fu_102[24]),
        .I1(round_key_reg_1170[24]),
        .O(\p_phi_fu_98[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[28]_i_1 
       (.I0(in_fu_102[31]),
        .I1(round_key_reg_1170[31]),
        .I2(round_key_reg_1170[29]),
        .I3(in_fu_102[29]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(\p_phi_fu_98[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[29]_i_1 
       (.I0(in_fu_102[31]),
        .I1(round_key_reg_1170[31]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(in_fu_102[29]),
        .I5(round_key_reg_1170[29]),
        .O(\p_phi_fu_98[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[2]_i_1 
       (.I0(in_fu_102[3]),
        .I1(round_key_reg_1170[3]),
        .I2(\p_phi_fu_98[3]_i_2_n_0 ),
        .I3(\p_phi_fu_98[3]_i_3_n_0 ),
        .I4(in_fu_102[1]),
        .I5(round_key_reg_1170[1]),
        .O(\p_phi_fu_98[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[30]_i_1 
       (.I0(in_fu_102[31]),
        .I1(round_key_reg_1170[31]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(in_fu_102[29]),
        .I5(round_key_reg_1170[29]),
        .O(\p_phi_fu_98[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[31]_i_1 
       (.I0(in_fu_102[31]),
        .I1(round_key_reg_1170[31]),
        .I2(sel[2]),
        .I3(round_key_reg_1170[29]),
        .I4(in_fu_102[29]),
        .I5(sel[0]),
        .O(\p_phi_fu_98[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[31]_i_2 
       (.I0(in_fu_102[30]),
        .I1(round_key_reg_1170[30]),
        .O(sel[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[31]_i_3 
       (.I0(in_fu_102[28]),
        .I1(round_key_reg_1170[28]),
        .O(sel[0]));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[3]_i_1 
       (.I0(in_fu_102[3]),
        .I1(round_key_reg_1170[3]),
        .I2(\p_phi_fu_98[3]_i_2_n_0 ),
        .I3(round_key_reg_1170[1]),
        .I4(in_fu_102[1]),
        .I5(\p_phi_fu_98[3]_i_3_n_0 ),
        .O(\p_phi_fu_98[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[3]_i_2 
       (.I0(in_fu_102[2]),
        .I1(round_key_reg_1170[2]),
        .O(\p_phi_fu_98[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[3]_i_3 
       (.I0(in_fu_102[0]),
        .I1(round_key_reg_1170[0]),
        .O(\p_phi_fu_98[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[4]_i_1 
       (.I0(in_fu_102[7]),
        .I1(round_key_reg_1170[7]),
        .I2(round_key_reg_1170[5]),
        .I3(in_fu_102[5]),
        .I4(\p_phi_fu_98[7]_i_2_n_0 ),
        .I5(\p_phi_fu_98[7]_i_3_n_0 ),
        .O(dout_tmp[0]));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[5]_i_1 
       (.I0(in_fu_102[7]),
        .I1(round_key_reg_1170[7]),
        .I2(\p_phi_fu_98[7]_i_3_n_0 ),
        .I3(\p_phi_fu_98[7]_i_2_n_0 ),
        .I4(in_fu_102[5]),
        .I5(round_key_reg_1170[5]),
        .O(dout_tmp[1]));
  LUT6 #(
    .INIT(64'h6F69900F900F6F69)) 
    \p_phi_fu_98[6]_i_1 
       (.I0(in_fu_102[7]),
        .I1(round_key_reg_1170[7]),
        .I2(\p_phi_fu_98[7]_i_2_n_0 ),
        .I3(\p_phi_fu_98[7]_i_3_n_0 ),
        .I4(in_fu_102[5]),
        .I5(round_key_reg_1170[5]),
        .O(dout_tmp[2]));
  LUT6 #(
    .INIT(64'h069F9F0699969699)) 
    \p_phi_fu_98[7]_i_1 
       (.I0(in_fu_102[7]),
        .I1(round_key_reg_1170[7]),
        .I2(\p_phi_fu_98[7]_i_2_n_0 ),
        .I3(round_key_reg_1170[5]),
        .I4(in_fu_102[5]),
        .I5(\p_phi_fu_98[7]_i_3_n_0 ),
        .O(dout_tmp[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[7]_i_2 
       (.I0(in_fu_102[6]),
        .I1(round_key_reg_1170[6]),
        .O(\p_phi_fu_98[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_phi_fu_98[7]_i_3 
       (.I0(in_fu_102[4]),
        .I1(round_key_reg_1170[4]),
        .O(\p_phi_fu_98[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996999996696666)) 
    \p_phi_fu_98[8]_i_1 
       (.I0(in_fu_102[11]),
        .I1(round_key_reg_1170[11]),
        .I2(round_key_reg_1170[9]),
        .I3(in_fu_102[9]),
        .I4(\p_phi_fu_98[11]_i_2_n_0 ),
        .I5(\p_phi_fu_98[11]_i_3_n_0 ),
        .O(\p_phi_fu_98[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6066699F699F6066)) 
    \p_phi_fu_98[9]_i_1 
       (.I0(in_fu_102[11]),
        .I1(round_key_reg_1170[11]),
        .I2(\p_phi_fu_98[11]_i_3_n_0 ),
        .I3(\p_phi_fu_98[11]_i_2_n_0 ),
        .I4(in_fu_102[9]),
        .I5(round_key_reg_1170[9]),
        .O(\p_phi_fu_98[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[0]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[10]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[11]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[12]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[13]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[14]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[15]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[16] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[16]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[17] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[17]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[18] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[18]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[19] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[19]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[1]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[20] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[20]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[21] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[21]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[22] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[22]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[23] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[23]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[24] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[24]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[25] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[25]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[26] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[26]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[27] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[27]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[28] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[28]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[29] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[29]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[2]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[30] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[30]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[31] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[31]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[3]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(dout_tmp[0]),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(dout_tmp[1]),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(dout_tmp[2]),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(dout_tmp[3]),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[8]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p_phi_fu_98_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(\p_phi_fu_98[9]_i_1_n_0 ),
        .Q(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_p_phi_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \round_1_fu_106_reg[0] 
       (.C(ap_clk),
        .CE(round_1_fu_1060),
        .D(add_ln114_fu_155_p2[0]),
        .Q(\round_1_fu_106_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \round_1_fu_106_reg[1] 
       (.C(ap_clk),
        .CE(round_1_fu_1060),
        .D(add_ln114_fu_155_p2[1]),
        .Q(\round_1_fu_106_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \round_1_fu_106_reg[2] 
       (.C(ap_clk),
        .CE(round_1_fu_1060),
        .D(flow_control_loop_pipe_sequential_init_U_n_40),
        .Q(\round_1_fu_106_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \round_1_fu_106_reg[3] 
       (.C(ap_clk),
        .CE(round_1_fu_1060),
        .D(add_ln114_fu_155_p2[3]),
        .Q(\round_1_fu_106_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \round_1_fu_106_reg[4] 
       (.C(ap_clk),
        .CE(round_1_fu_1060),
        .D(add_ln114_fu_155_p2[4]),
        .Q(\round_1_fu_106_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[0]),
        .Q(round_key_reg_1170[0]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[10]),
        .Q(round_key_reg_1170[10]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[11]),
        .Q(round_key_reg_1170[11]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[12]),
        .Q(round_key_reg_1170[12]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[13]),
        .Q(round_key_reg_1170[13]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[14]),
        .Q(round_key_reg_1170[14]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[15]),
        .Q(round_key_reg_1170[15]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[16]),
        .Q(round_key_reg_1170[16]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[17]),
        .Q(round_key_reg_1170[17]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[18]),
        .Q(round_key_reg_1170[18]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[19]),
        .Q(round_key_reg_1170[19]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[1]),
        .Q(round_key_reg_1170[1]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[20]),
        .Q(round_key_reg_1170[20]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[21]),
        .Q(round_key_reg_1170[21]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[22]),
        .Q(round_key_reg_1170[22]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[23]),
        .Q(round_key_reg_1170[23]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[24]),
        .Q(round_key_reg_1170[24]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[25]),
        .Q(round_key_reg_1170[25]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[26]),
        .Q(round_key_reg_1170[26]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[27]),
        .Q(round_key_reg_1170[27]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[28]),
        .Q(round_key_reg_1170[28]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[29]),
        .Q(round_key_reg_1170[29]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[2]),
        .Q(round_key_reg_1170[2]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[30]),
        .Q(round_key_reg_1170[30]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[31]),
        .Q(round_key_reg_1170[31]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[3]),
        .Q(round_key_reg_1170[3]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[4]),
        .Q(round_key_reg_1170[4]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[5]),
        .Q(round_key_reg_1170[5]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[6]),
        .Q(round_key_reg_1170[6]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[7]),
        .Q(round_key_reg_1170[7]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[8]),
        .Q(round_key_reg_1170[8]),
        .R(1'b0));
  FDRE \round_key_reg_1170_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(round_keys_q0[9]),
        .Q(round_key_reg_1170[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1
   (\key_1_fu_90_reg[63]_0 ,
    \round_fu_94_reg[4]_0 ,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready,
    D,
    round_keys_ce0,
    WEA,
    SR,
    ap_clk,
    Q,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg,
    ap_rst_n,
    ram_reg,
    ap_start,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg);
  output [31:0]\key_1_fu_90_reg[63]_0 ;
  output [4:0]\round_fu_94_reg[4]_0 ;
  output grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready;
  output [1:0]D;
  output round_keys_ce0;
  output [0:0]WEA;
  input [0:0]SR;
  input ap_clk;
  input [63:0]Q;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  input ap_rst_n;
  input [3:0]ram_reg;
  input ap_start;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;

  wire [1:0]D;
  wire [63:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [5:0]add_ln92_fu_136_p2;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_start;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  wire [0:0]icmp_ln92_fu_130_p2__5;
  wire [31:0]\key_1_fu_90_reg[63]_0 ;
  wire [63:0]p_0_in;
  wire p_0_in_0;
  wire [3:0]ram_reg;
  wire [5:5]round_fu_94_reg;
  wire [4:0]\round_fu_94_reg[4]_0 ;
  wire round_keys_ce0;
  wire [3:1]sel0;
  wire [28:0]tmp_s_fu_253_p4;

  LUT3 #(
    .INIT(8'h08)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .I1(ap_rst_n),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(p_0_in),
        .E(flow_control_loop_pipe_sequential_init_U_n_69),
        .Q(Q),
        .SR(SR),
        .\ap_CS_fsm_reg[1] (D),
        .\ap_CS_fsm_reg[2] (ram_reg[1:0]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .icmp_ln92_fu_130_p2__5(icmp_ln92_fu_130_p2__5),
        .\key_1_fu_90_reg[0] ({round_fu_94_reg,\round_fu_94_reg[4]_0 }),
        .\key_1_fu_90_reg[60] ({\key_1_fu_90_reg[63]_0 ,tmp_s_fu_253_p4,sel0}));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[0]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[10]),
        .Q(tmp_s_fu_253_p4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[11] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[11]),
        .Q(tmp_s_fu_253_p4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[12] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[12]),
        .Q(tmp_s_fu_253_p4[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[13] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[13]),
        .Q(tmp_s_fu_253_p4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[14] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[14]),
        .Q(tmp_s_fu_253_p4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[15] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[15]),
        .Q(tmp_s_fu_253_p4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[16] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[16]),
        .Q(tmp_s_fu_253_p4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[17] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[17]),
        .Q(tmp_s_fu_253_p4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[18] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[18]),
        .Q(tmp_s_fu_253_p4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[19] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[19]),
        .Q(tmp_s_fu_253_p4[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[1]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[20] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[20]),
        .Q(tmp_s_fu_253_p4[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[21] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[21]),
        .Q(tmp_s_fu_253_p4[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[22] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[22]),
        .Q(tmp_s_fu_253_p4[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[23] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[23]),
        .Q(tmp_s_fu_253_p4[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[24] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[24]),
        .Q(tmp_s_fu_253_p4[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[25] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[25]),
        .Q(tmp_s_fu_253_p4[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[26] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[26]),
        .Q(tmp_s_fu_253_p4[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[27] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[27]),
        .Q(tmp_s_fu_253_p4[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[28] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[28]),
        .Q(tmp_s_fu_253_p4[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[29] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[29]),
        .Q(tmp_s_fu_253_p4[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[2]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[30] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[30]),
        .Q(tmp_s_fu_253_p4[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[31] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[31]),
        .Q(tmp_s_fu_253_p4[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[32] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[32]),
        .Q(\key_1_fu_90_reg[63]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[33] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[33]),
        .Q(\key_1_fu_90_reg[63]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[34] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[34]),
        .Q(\key_1_fu_90_reg[63]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[35] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[35]),
        .Q(\key_1_fu_90_reg[63]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[36] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[36]),
        .Q(\key_1_fu_90_reg[63]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[37] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[37]),
        .Q(\key_1_fu_90_reg[63]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[38] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[38]),
        .Q(\key_1_fu_90_reg[63]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[39] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[39]),
        .Q(\key_1_fu_90_reg[63]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[3]),
        .Q(tmp_s_fu_253_p4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[40] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[40]),
        .Q(\key_1_fu_90_reg[63]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[41] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[41]),
        .Q(\key_1_fu_90_reg[63]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[42] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[42]),
        .Q(\key_1_fu_90_reg[63]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[43] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[43]),
        .Q(\key_1_fu_90_reg[63]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[44] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[44]),
        .Q(\key_1_fu_90_reg[63]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[45] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[45]),
        .Q(\key_1_fu_90_reg[63]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[46] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[46]),
        .Q(\key_1_fu_90_reg[63]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[47] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[47]),
        .Q(\key_1_fu_90_reg[63]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[48] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[48]),
        .Q(\key_1_fu_90_reg[63]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[49] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[49]),
        .Q(\key_1_fu_90_reg[63]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[4]),
        .Q(tmp_s_fu_253_p4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[50] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[50]),
        .Q(\key_1_fu_90_reg[63]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[51] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[51]),
        .Q(\key_1_fu_90_reg[63]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[52] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[52]),
        .Q(\key_1_fu_90_reg[63]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[53] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[53]),
        .Q(\key_1_fu_90_reg[63]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[54] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[54]),
        .Q(\key_1_fu_90_reg[63]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[55] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[55]),
        .Q(\key_1_fu_90_reg[63]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[56] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[56]),
        .Q(\key_1_fu_90_reg[63]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[57] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[57]),
        .Q(\key_1_fu_90_reg[63]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[58] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[58]),
        .Q(\key_1_fu_90_reg[63]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[59] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[59]),
        .Q(\key_1_fu_90_reg[63]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[5]),
        .Q(tmp_s_fu_253_p4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[60] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[60]),
        .Q(\key_1_fu_90_reg[63]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[61] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[61]),
        .Q(\key_1_fu_90_reg[63]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[62] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[62]),
        .Q(\key_1_fu_90_reg[63]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[63] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[63]),
        .Q(\key_1_fu_90_reg[63]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[6]),
        .Q(tmp_s_fu_253_p4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[7]),
        .Q(tmp_s_fu_253_p4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[8]),
        .Q(tmp_s_fu_253_p4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_1_fu_90_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_69),
        .D(p_0_in[9]),
        .Q(tmp_s_fu_253_p4[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ram_reg_i_1
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I1(ram_reg[2]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ram_reg[1]),
        .I4(ram_reg[3]),
        .O(round_keys_ce0));
  LUT3 #(
    .INIT(8'h20)) 
    ram_reg_i_7
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln92_fu_130_p2__5),
        .I2(ram_reg[1]),
        .O(WEA));
  LUT1 #(
    .INIT(2'h1)) 
    \round_fu_94[0]_i_1 
       (.I0(\round_fu_94_reg[4]_0 [0]),
        .O(add_ln92_fu_136_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \round_fu_94[1]_i_1 
       (.I0(\round_fu_94_reg[4]_0 [0]),
        .I1(\round_fu_94_reg[4]_0 [1]),
        .O(add_ln92_fu_136_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \round_fu_94[2]_i_1 
       (.I0(\round_fu_94_reg[4]_0 [0]),
        .I1(\round_fu_94_reg[4]_0 [1]),
        .I2(\round_fu_94_reg[4]_0 [2]),
        .O(add_ln92_fu_136_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \round_fu_94[3]_i_1 
       (.I0(\round_fu_94_reg[4]_0 [1]),
        .I1(\round_fu_94_reg[4]_0 [0]),
        .I2(\round_fu_94_reg[4]_0 [2]),
        .I3(\round_fu_94_reg[4]_0 [3]),
        .O(add_ln92_fu_136_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \round_fu_94[4]_i_1 
       (.I0(\round_fu_94_reg[4]_0 [2]),
        .I1(\round_fu_94_reg[4]_0 [0]),
        .I2(\round_fu_94_reg[4]_0 [1]),
        .I3(\round_fu_94_reg[4]_0 [3]),
        .I4(\round_fu_94_reg[4]_0 [4]),
        .O(add_ln92_fu_136_p2[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \round_fu_94[5]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln92_fu_130_p2__5),
        .O(p_0_in_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \round_fu_94[5]_i_3 
       (.I0(\round_fu_94_reg[4]_0 [3]),
        .I1(\round_fu_94_reg[4]_0 [1]),
        .I2(\round_fu_94_reg[4]_0 [0]),
        .I3(\round_fu_94_reg[4]_0 [2]),
        .I4(\round_fu_94_reg[4]_0 [4]),
        .I5(round_fu_94_reg),
        .O(add_ln92_fu_136_p2[5]));
  FDRE #(
    .INIT(1'b0)) 
    \round_fu_94_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in_0),
        .D(add_ln92_fu_136_p2[0]),
        .Q(\round_fu_94_reg[4]_0 [0]),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \round_fu_94_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in_0),
        .D(add_ln92_fu_136_p2[1]),
        .Q(\round_fu_94_reg[4]_0 [1]),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \round_fu_94_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in_0),
        .D(add_ln92_fu_136_p2[2]),
        .Q(\round_fu_94_reg[4]_0 [2]),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \round_fu_94_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in_0),
        .D(add_ln92_fu_136_p2[3]),
        .Q(\round_fu_94_reg[4]_0 [3]),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \round_fu_94_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in_0),
        .D(add_ln92_fu_136_p2[4]),
        .Q(\round_fu_94_reg[4]_0 [4]),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \round_fu_94_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in_0),
        .D(add_ln92_fu_136_p2[5]),
        .Q(round_fu_94_reg),
        .R(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "cifrador_basico_pre_control_s_axi" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_control_s_axi
   (SR,
    interrupt,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    D,
    ap_start,
    \int_key_reg[63]_0 ,
    \int_plaintext_reg[31]_0 ,
    int_ap_start_reg_0,
    s_axi_control_RDATA,
    ap_clk,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    s_axi_control_WVALID,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_ARADDR,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    Q,
    ap_rst_n,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg,
    s_axi_control_AWADDR,
    \int_ap_return_reg[31]_0 );
  output [0:0]SR;
  output interrupt;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output [0:0]D;
  output ap_start;
  output [63:0]\int_key_reg[63]_0 ;
  output [31:0]\int_plaintext_reg[31]_0 ;
  output int_ap_start_reg_0;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_WVALID;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [5:0]s_axi_control_ARADDR;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]Q;
  input ap_rst_n;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  input [3:0]s_axi_control_AWADDR;
  input [31:0]\int_ap_return_reg[31]_0 ;

  wire [0:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire [31:0]int_ap_return;
  wire [31:0]\int_ap_return_reg[31]_0 ;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire \int_key[31]_i_1_n_0 ;
  wire \int_key[63]_i_1_n_0 ;
  wire [31:0]int_key_reg0;
  wire [31:0]int_key_reg01_out;
  wire [63:0]\int_key_reg[63]_0 ;
  wire [31:0]int_plaintext0;
  wire \int_plaintext[31]_i_1_n_0 ;
  wire [31:0]\int_plaintext_reg[31]_0 ;
  wire int_task_ap_done;
  wire int_task_ap_done0__3;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_3_n_0;
  wire interrupt;
  wire p_0_in;
  wire [7:2]p_4_in;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[20]_i_1_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_1_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[22]_i_1_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[23]_i_1_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[24]_i_1_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[25]_i_1_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[26]_i_1_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[27]_i_1_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[28]_i_1_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[29]_i_1_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[30]_i_1_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire \rdata_reg[0]_i_1_n_0 ;
  wire \rdata_reg[1]_i_1_n_0 ;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [3:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_control_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(Q[1]),
        .O(D));
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_4_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_ready),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .O(int_ap_start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_4_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4F44)) 
    int_ap_ready_i_1
       (.I0(p_4_in[7]),
        .I1(Q[1]),
        .I2(int_task_ap_done0__3),
        .I3(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(SR));
  FDRE \int_ap_return_reg[0] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [0]),
        .Q(int_ap_return[0]),
        .R(SR));
  FDRE \int_ap_return_reg[10] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [10]),
        .Q(int_ap_return[10]),
        .R(SR));
  FDRE \int_ap_return_reg[11] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [11]),
        .Q(int_ap_return[11]),
        .R(SR));
  FDRE \int_ap_return_reg[12] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [12]),
        .Q(int_ap_return[12]),
        .R(SR));
  FDRE \int_ap_return_reg[13] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [13]),
        .Q(int_ap_return[13]),
        .R(SR));
  FDRE \int_ap_return_reg[14] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [14]),
        .Q(int_ap_return[14]),
        .R(SR));
  FDRE \int_ap_return_reg[15] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [15]),
        .Q(int_ap_return[15]),
        .R(SR));
  FDRE \int_ap_return_reg[16] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [16]),
        .Q(int_ap_return[16]),
        .R(SR));
  FDRE \int_ap_return_reg[17] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [17]),
        .Q(int_ap_return[17]),
        .R(SR));
  FDRE \int_ap_return_reg[18] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [18]),
        .Q(int_ap_return[18]),
        .R(SR));
  FDRE \int_ap_return_reg[19] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [19]),
        .Q(int_ap_return[19]),
        .R(SR));
  FDRE \int_ap_return_reg[1] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [1]),
        .Q(int_ap_return[1]),
        .R(SR));
  FDRE \int_ap_return_reg[20] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [20]),
        .Q(int_ap_return[20]),
        .R(SR));
  FDRE \int_ap_return_reg[21] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [21]),
        .Q(int_ap_return[21]),
        .R(SR));
  FDRE \int_ap_return_reg[22] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [22]),
        .Q(int_ap_return[22]),
        .R(SR));
  FDRE \int_ap_return_reg[23] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [23]),
        .Q(int_ap_return[23]),
        .R(SR));
  FDRE \int_ap_return_reg[24] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [24]),
        .Q(int_ap_return[24]),
        .R(SR));
  FDRE \int_ap_return_reg[25] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [25]),
        .Q(int_ap_return[25]),
        .R(SR));
  FDRE \int_ap_return_reg[26] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [26]),
        .Q(int_ap_return[26]),
        .R(SR));
  FDRE \int_ap_return_reg[27] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [27]),
        .Q(int_ap_return[27]),
        .R(SR));
  FDRE \int_ap_return_reg[28] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [28]),
        .Q(int_ap_return[28]),
        .R(SR));
  FDRE \int_ap_return_reg[29] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [29]),
        .Q(int_ap_return[29]),
        .R(SR));
  FDRE \int_ap_return_reg[2] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [2]),
        .Q(int_ap_return[2]),
        .R(SR));
  FDRE \int_ap_return_reg[30] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [30]),
        .Q(int_ap_return[30]),
        .R(SR));
  FDRE \int_ap_return_reg[31] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [31]),
        .Q(int_ap_return[31]),
        .R(SR));
  FDRE \int_ap_return_reg[3] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [3]),
        .Q(int_ap_return[3]),
        .R(SR));
  FDRE \int_ap_return_reg[4] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [4]),
        .Q(int_ap_return[4]),
        .R(SR));
  FDRE \int_ap_return_reg[5] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [5]),
        .Q(int_ap_return[5]),
        .R(SR));
  FDRE \int_ap_return_reg[6] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [6]),
        .Q(int_ap_return[6]),
        .R(SR));
  FDRE \int_ap_return_reg[7] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [7]),
        .Q(int_ap_return[7]),
        .R(SR));
  FDRE \int_ap_return_reg[8] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [8]),
        .Q(int_ap_return[8]),
        .R(SR));
  FDRE \int_ap_return_reg[9] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(\int_ap_return_reg[31]_0 [9]),
        .Q(int_ap_return[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_4_in[7]),
        .I1(Q[1]),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_control_WSTRB[0]),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_auto_restart_i_2_n_0),
        .I4(p_4_in[7]),
        .O(int_auto_restart_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_4_in[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(int_auto_restart_i_2_n_0),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_0_[5] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(SR));
  LUT3 #(
    .INIT(8'hA8)) 
    int_interrupt_i_1
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(Q[1]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(p_0_in),
        .I3(Q[1]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [0]),
        .O(int_key_reg01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [10]),
        .O(int_key_reg01_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [11]),
        .O(int_key_reg01_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [12]),
        .O(int_key_reg01_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [13]),
        .O(int_key_reg01_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [14]),
        .O(int_key_reg01_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [15]),
        .O(int_key_reg01_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [16]),
        .O(int_key_reg01_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [17]),
        .O(int_key_reg01_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [18]),
        .O(int_key_reg01_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [19]),
        .O(int_key_reg01_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [1]),
        .O(int_key_reg01_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [20]),
        .O(int_key_reg01_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [21]),
        .O(int_key_reg01_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [22]),
        .O(int_key_reg01_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [23]),
        .O(int_key_reg01_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [24]),
        .O(int_key_reg01_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [25]),
        .O(int_key_reg01_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [26]),
        .O(int_key_reg01_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [27]),
        .O(int_key_reg01_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [28]),
        .O(int_key_reg01_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [29]),
        .O(int_key_reg01_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [2]),
        .O(int_key_reg01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [30]),
        .O(int_key_reg01_out[30]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \int_key[31]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_key[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [31]),
        .O(int_key_reg01_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [32]),
        .O(int_key_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [33]),
        .O(int_key_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [34]),
        .O(int_key_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [35]),
        .O(int_key_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [36]),
        .O(int_key_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [37]),
        .O(int_key_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [38]),
        .O(int_key_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [39]),
        .O(int_key_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [3]),
        .O(int_key_reg01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [40]),
        .O(int_key_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [41]),
        .O(int_key_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [42]),
        .O(int_key_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [43]),
        .O(int_key_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [44]),
        .O(int_key_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [45]),
        .O(int_key_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [46]),
        .O(int_key_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [47]),
        .O(int_key_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [48]),
        .O(int_key_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [49]),
        .O(int_key_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [4]),
        .O(int_key_reg01_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [50]),
        .O(int_key_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [51]),
        .O(int_key_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [52]),
        .O(int_key_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [53]),
        .O(int_key_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [54]),
        .O(int_key_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_key_reg[63]_0 [55]),
        .O(int_key_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [56]),
        .O(int_key_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [57]),
        .O(int_key_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [58]),
        .O(int_key_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [59]),
        .O(int_key_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [5]),
        .O(int_key_reg01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [60]),
        .O(int_key_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [61]),
        .O(int_key_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [62]),
        .O(int_key_reg0[30]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \int_key[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(\waddr_reg_n_0_[4] ),
        .O(\int_key[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_key_reg[63]_0 [63]),
        .O(int_key_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [6]),
        .O(int_key_reg01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_key_reg[63]_0 [7]),
        .O(int_key_reg01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [8]),
        .O(int_key_reg01_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_key[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_key_reg[63]_0 [9]),
        .O(int_key_reg01_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[0] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[0]),
        .Q(\int_key_reg[63]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[10] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[10]),
        .Q(\int_key_reg[63]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[11] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[11]),
        .Q(\int_key_reg[63]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[12] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[12]),
        .Q(\int_key_reg[63]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[13] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[13]),
        .Q(\int_key_reg[63]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[14] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[14]),
        .Q(\int_key_reg[63]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[15] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[15]),
        .Q(\int_key_reg[63]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[16] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[16]),
        .Q(\int_key_reg[63]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[17] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[17]),
        .Q(\int_key_reg[63]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[18] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[18]),
        .Q(\int_key_reg[63]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[19] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[19]),
        .Q(\int_key_reg[63]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[1] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[1]),
        .Q(\int_key_reg[63]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[20] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[20]),
        .Q(\int_key_reg[63]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[21] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[21]),
        .Q(\int_key_reg[63]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[22] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[22]),
        .Q(\int_key_reg[63]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[23] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[23]),
        .Q(\int_key_reg[63]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[24] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[24]),
        .Q(\int_key_reg[63]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[25] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[25]),
        .Q(\int_key_reg[63]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[26] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[26]),
        .Q(\int_key_reg[63]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[27] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[27]),
        .Q(\int_key_reg[63]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[28] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[28]),
        .Q(\int_key_reg[63]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[29] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[29]),
        .Q(\int_key_reg[63]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[2] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[2]),
        .Q(\int_key_reg[63]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[30] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[30]),
        .Q(\int_key_reg[63]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[31] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[31]),
        .Q(\int_key_reg[63]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[32] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[0]),
        .Q(\int_key_reg[63]_0 [32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[33] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[1]),
        .Q(\int_key_reg[63]_0 [33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[34] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[2]),
        .Q(\int_key_reg[63]_0 [34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[35] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[3]),
        .Q(\int_key_reg[63]_0 [35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[36] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[4]),
        .Q(\int_key_reg[63]_0 [36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[37] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[5]),
        .Q(\int_key_reg[63]_0 [37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[38] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[6]),
        .Q(\int_key_reg[63]_0 [38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[39] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[7]),
        .Q(\int_key_reg[63]_0 [39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[3] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[3]),
        .Q(\int_key_reg[63]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[40] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[8]),
        .Q(\int_key_reg[63]_0 [40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[41] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[9]),
        .Q(\int_key_reg[63]_0 [41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[42] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[10]),
        .Q(\int_key_reg[63]_0 [42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[43] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[11]),
        .Q(\int_key_reg[63]_0 [43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[44] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[12]),
        .Q(\int_key_reg[63]_0 [44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[45] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[13]),
        .Q(\int_key_reg[63]_0 [45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[46] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[14]),
        .Q(\int_key_reg[63]_0 [46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[47] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[15]),
        .Q(\int_key_reg[63]_0 [47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[48] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[16]),
        .Q(\int_key_reg[63]_0 [48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[49] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[17]),
        .Q(\int_key_reg[63]_0 [49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[4] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[4]),
        .Q(\int_key_reg[63]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[50] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[18]),
        .Q(\int_key_reg[63]_0 [50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[51] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[19]),
        .Q(\int_key_reg[63]_0 [51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[52] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[20]),
        .Q(\int_key_reg[63]_0 [52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[53] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[21]),
        .Q(\int_key_reg[63]_0 [53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[54] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[22]),
        .Q(\int_key_reg[63]_0 [54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[55] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[23]),
        .Q(\int_key_reg[63]_0 [55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[56] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[24]),
        .Q(\int_key_reg[63]_0 [56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[57] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[25]),
        .Q(\int_key_reg[63]_0 [57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[58] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[26]),
        .Q(\int_key_reg[63]_0 [58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[59] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[27]),
        .Q(\int_key_reg[63]_0 [59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[5] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[5]),
        .Q(\int_key_reg[63]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[60] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[28]),
        .Q(\int_key_reg[63]_0 [60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[61] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[29]),
        .Q(\int_key_reg[63]_0 [61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[62] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[30]),
        .Q(\int_key_reg[63]_0 [62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[63] 
       (.C(ap_clk),
        .CE(\int_key[63]_i_1_n_0 ),
        .D(int_key_reg0[31]),
        .Q(\int_key_reg[63]_0 [63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[6] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[6]),
        .Q(\int_key_reg[63]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[7] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[7]),
        .Q(\int_key_reg[63]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[8] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[8]),
        .Q(\int_key_reg[63]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_key_reg[9] 
       (.C(ap_clk),
        .CE(\int_key[31]_i_1_n_0 ),
        .D(int_key_reg01_out[9]),
        .Q(\int_key_reg[63]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [0]),
        .O(int_plaintext0[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [10]),
        .O(int_plaintext0[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [11]),
        .O(int_plaintext0[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [12]),
        .O(int_plaintext0[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [13]),
        .O(int_plaintext0[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [14]),
        .O(int_plaintext0[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [15]),
        .O(int_plaintext0[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [16]),
        .O(int_plaintext0[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [17]),
        .O(int_plaintext0[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [18]),
        .O(int_plaintext0[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [19]),
        .O(int_plaintext0[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [1]),
        .O(int_plaintext0[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [20]),
        .O(int_plaintext0[20]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [21]),
        .O(int_plaintext0[21]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [22]),
        .O(int_plaintext0[22]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_plaintext_reg[31]_0 [23]),
        .O(int_plaintext0[23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [24]),
        .O(int_plaintext0[24]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [25]),
        .O(int_plaintext0[25]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [26]),
        .O(int_plaintext0[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [27]),
        .O(int_plaintext0[27]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [28]),
        .O(int_plaintext0[28]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [29]),
        .O(int_plaintext0[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [2]),
        .O(int_plaintext0[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [30]),
        .O(int_plaintext0[30]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \int_plaintext[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(s_axi_control_WVALID),
        .I5(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\int_plaintext[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_plaintext_reg[31]_0 [31]),
        .O(int_plaintext0[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [3]),
        .O(int_plaintext0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [4]),
        .O(int_plaintext0[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [5]),
        .O(int_plaintext0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [6]),
        .O(int_plaintext0[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_plaintext_reg[31]_0 [7]),
        .O(int_plaintext0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [8]),
        .O(int_plaintext0[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_plaintext[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_plaintext_reg[31]_0 [9]),
        .O(int_plaintext0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[0] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[0]),
        .Q(\int_plaintext_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[10] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[10]),
        .Q(\int_plaintext_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[11] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[11]),
        .Q(\int_plaintext_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[12] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[12]),
        .Q(\int_plaintext_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[13] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[13]),
        .Q(\int_plaintext_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[14] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[14]),
        .Q(\int_plaintext_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[15] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[15]),
        .Q(\int_plaintext_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[16] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[16]),
        .Q(\int_plaintext_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[17] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[17]),
        .Q(\int_plaintext_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[18] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[18]),
        .Q(\int_plaintext_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[19] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[19]),
        .Q(\int_plaintext_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[1] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[1]),
        .Q(\int_plaintext_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[20] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[20]),
        .Q(\int_plaintext_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[21] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[21]),
        .Q(\int_plaintext_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[22] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[22]),
        .Q(\int_plaintext_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[23] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[23]),
        .Q(\int_plaintext_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[24] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[24]),
        .Q(\int_plaintext_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[25] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[25]),
        .Q(\int_plaintext_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[26] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[26]),
        .Q(\int_plaintext_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[27] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[27]),
        .Q(\int_plaintext_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[28] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[28]),
        .Q(\int_plaintext_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[29] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[29]),
        .Q(\int_plaintext_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[2] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[2]),
        .Q(\int_plaintext_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[30] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[30]),
        .Q(\int_plaintext_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[31] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[31]),
        .Q(\int_plaintext_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[3] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[3]),
        .Q(\int_plaintext_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[4] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[4]),
        .Q(\int_plaintext_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[5] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[5]),
        .Q(\int_plaintext_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[6] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[6]),
        .Q(\int_plaintext_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[7] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[7]),
        .Q(\int_plaintext_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[8] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[8]),
        .Q(\int_plaintext_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_plaintext_reg[9] 
       (.C(ap_clk),
        .CE(\int_plaintext[31]_i_1_n_0 ),
        .D(int_plaintext0[9]),
        .Q(\int_plaintext_reg[31]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h7520FFFF75207520)) 
    int_task_ap_done_i_1
       (.I0(auto_restart_status_reg_n_0),
        .I1(p_4_in[2]),
        .I2(ap_idle),
        .I3(Q[1]),
        .I4(int_task_ap_done0__3),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    int_task_ap_done_i_2
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_task_ap_done_i_3_n_0),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(ar_hs),
        .O(int_task_ap_done0__3));
  LUT2 #(
    .INIT(4'h1)) 
    int_task_ap_done_i_3
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(int_task_ap_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(SR));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_plaintext_reg[31]_0 [0]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[0]_i_4_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033223000002230)) 
    \rdata[0]_i_3 
       (.I0(\int_key_reg[63]_0 [32]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(int_gie_reg_n_0),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_4 
       (.I0(int_ap_return[0]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [0]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(ap_start),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[10]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [42]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[10]_i_2_n_0 ),
        .O(\rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[10]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [10]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[10]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [10]),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[11]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [43]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[11]_i_2_n_0 ),
        .O(\rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[11]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [11]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[11]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [11]),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[12]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [44]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[12]_i_2_n_0 ),
        .O(\rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[12]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [12]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[12]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [12]),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[13]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [45]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[13]_i_2_n_0 ),
        .O(\rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[13]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [13]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[13]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [13]),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[14]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [46]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[14]_i_2_n_0 ),
        .O(\rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[14]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [14]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[14]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [14]),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[15]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [47]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[15]_i_2_n_0 ),
        .O(\rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[15]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [15]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[15]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [15]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[16]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [48]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[16]_i_2_n_0 ),
        .O(\rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[16]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [16]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[16]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [16]),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[17]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [49]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[17]_i_2_n_0 ),
        .O(\rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[17]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [17]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[17]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [17]),
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[18]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [50]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[18]_i_2_n_0 ),
        .O(\rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[18]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [18]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[18]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [18]),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[19]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [51]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[19]_i_2_n_0 ),
        .O(\rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[19]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [19]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[19]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [19]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[1]_i_2 
       (.I0(p_0_in),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_plaintext_reg[31]_0 [1]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03000808)) 
    \rdata[1]_i_3 
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(\int_key_reg[63]_0 [33]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_4 
       (.I0(int_ap_return[1]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [1]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(int_task_ap_done),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[20]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [52]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[20]_i_2_n_0 ),
        .O(\rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[20]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [20]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[20]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [20]),
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[21]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [53]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[21]_i_2_n_0 ),
        .O(\rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[21]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [21]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[21]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [21]),
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[22]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [54]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[22]_i_2_n_0 ),
        .O(\rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[22]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [22]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[22]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [22]),
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[23]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [55]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[23]_i_2_n_0 ),
        .O(\rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[23]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [23]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[23]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [23]),
        .O(\rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[24]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [56]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[24]_i_2_n_0 ),
        .O(\rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[24]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [24]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[24]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [24]),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[25]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [57]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[25]_i_2_n_0 ),
        .O(\rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[25]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [25]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[25]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [25]),
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[26]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [58]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[26]_i_2_n_0 ),
        .O(\rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[26]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [26]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[26]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [26]),
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[27]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [59]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[27]_i_2_n_0 ),
        .O(\rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[27]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [27]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[27]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [27]),
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[28]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [60]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[28]_i_2_n_0 ),
        .O(\rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[28]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [28]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[28]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [28]),
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[29]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [61]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[29]_i_2_n_0 ),
        .O(\rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[29]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [29]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[29]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [29]),
        .O(\rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[2]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [34]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[2]_i_2_n_0 ),
        .O(\rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata[2]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_plaintext_reg[31]_0 [2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\rdata[2]_i_3_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_3 
       (.I0(int_ap_return[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [2]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(p_4_in[2]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[30]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [62]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[30]_i_2_n_0 ),
        .O(\rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[30]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [30]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[30]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [30]),
        .O(\rdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \rdata[31]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [63]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[31]_i_4 
       (.I0(\int_plaintext_reg[31]_0 [31]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[31]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [31]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[3]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [35]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[3]_i_2_n_0 ),
        .O(\rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata[3]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_plaintext_reg[31]_0 [3]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\rdata[3]_i_3_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_3 
       (.I0(int_ap_return[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [3]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(int_ap_ready),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[4]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [36]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[4]_i_2_n_0 ),
        .O(\rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[4]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[4]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [4]),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[5]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [37]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[5]_i_2_n_0 ),
        .O(\rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[5]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [5]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [5]),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[6]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [38]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[6]_i_2_n_0 ),
        .O(\rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[6]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [6]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[6]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [6]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[7]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [39]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(\rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata[7]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_plaintext_reg[31]_0 [7]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\rdata[7]_i_3_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_3 
       (.I0(int_ap_return[7]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [7]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(p_4_in[7]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[8]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [40]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[8]_i_2_n_0 ),
        .O(\rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata[8]_i_2 
       (.I0(\int_plaintext_reg[31]_0 [8]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_return[8]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\int_key_reg[63]_0 [8]),
        .O(\rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \rdata[9]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [41]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(\rdata[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata[9]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_plaintext_reg[31]_0 [9]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\rdata[9]_i_3_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[9]_i_3 
       (.I0(int_ap_return[9]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\int_key_reg[63]_0 [9]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(interrupt),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[0]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[0]),
        .R(\rdata[31]_i_1_n_0 ));
  MUXF7 \rdata_reg[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata[0]_i_3_n_0 ),
        .O(\rdata_reg[0]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[2]));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[1]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[1]),
        .R(\rdata[31]_i_1_n_0 ));
  MUXF7 \rdata_reg[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata[1]_i_3_n_0 ),
        .O(\rdata_reg[1]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[2]));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[31]_i_3_n_0 ),
        .Q(s_axi_control_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cifrador_basico_pre_flow_control_loop_pipe_sequential_init" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_flow_control_loop_pipe_sequential_init
   (D,
    ap_loop_init,
    ap_enable_reg_pp0_iter1_reg,
    \ap_CS_fsm_reg[1] ,
    icmp_ln92_fu_130_p2__5,
    E,
    SR,
    ap_clk,
    Q,
    \key_1_fu_90_reg[60] ,
    \key_1_fu_90_reg[0] ,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg,
    ap_rst_n,
    \ap_CS_fsm_reg[2] ,
    ap_start,
    ap_enable_reg_pp0_iter1);
  output [63:0]D;
  output ap_loop_init;
  output ap_enable_reg_pp0_iter1_reg;
  output [1:0]\ap_CS_fsm_reg[1] ;
  output [0:0]icmp_ln92_fu_130_p2__5;
  output [0:0]E;
  input [0:0]SR;
  input ap_clk;
  input [63:0]Q;
  input [63:0]\key_1_fu_90_reg[60] ;
  input [5:0]\key_1_fu_90_reg[0] ;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  input ap_rst_n;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input ap_start;
  input ap_enable_reg_pp0_iter1;

  wire [63:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_rst_n;
  wire ap_start;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg;
  wire [0:0]icmp_ln92_fu_130_p2__5;
  wire [5:0]\key_1_fu_90_reg[0] ;
  wire [63:0]\key_1_fu_90_reg[60] ;

  LUT6 #(
    .INIT(64'h8888FF8F88888888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg[2] [0]),
        .I1(ap_start),
        .I2(ap_done_cache),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .I4(ap_enable_reg_pp0_iter1_reg),
        .I5(\ap_CS_fsm_reg[2] [1]),
        .O(\ap_CS_fsm_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] [1]),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .I3(ap_done_cache),
        .O(\ap_CS_fsm_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln92_fu_130_p2__5),
        .O(ap_enable_reg_pp0_iter1_reg));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(SR));
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_loop_init_int_i_1
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[0]_i_1 
       (.I0(Q[0]),
        .I1(\key_1_fu_90_reg[60] [3]),
        .I2(ap_loop_init),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[10]_i_1 
       (.I0(Q[10]),
        .I1(\key_1_fu_90_reg[60] [13]),
        .I2(ap_loop_init),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[11]_i_1 
       (.I0(Q[11]),
        .I1(\key_1_fu_90_reg[60] [14]),
        .I2(ap_loop_init),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[12]_i_1 
       (.I0(Q[12]),
        .I1(\key_1_fu_90_reg[60] [15]),
        .I2(ap_loop_init),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[13]_i_1 
       (.I0(Q[13]),
        .I1(\key_1_fu_90_reg[60] [16]),
        .I2(ap_loop_init),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[14]_i_1 
       (.I0(Q[14]),
        .I1(\key_1_fu_90_reg[60] [17]),
        .I2(ap_loop_init),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \key_1_fu_90[15]_i_1 
       (.I0(Q[15]),
        .I1(\key_1_fu_90_reg[60] [18]),
        .I2(\key_1_fu_90_reg[0] [0]),
        .I3(ap_loop_init),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \key_1_fu_90[16]_i_1 
       (.I0(Q[16]),
        .I1(\key_1_fu_90_reg[60] [19]),
        .I2(\key_1_fu_90_reg[0] [1]),
        .I3(ap_loop_init),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \key_1_fu_90[17]_i_1 
       (.I0(Q[17]),
        .I1(\key_1_fu_90_reg[60] [20]),
        .I2(\key_1_fu_90_reg[0] [2]),
        .I3(ap_loop_init),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \key_1_fu_90[18]_i_1 
       (.I0(Q[18]),
        .I1(\key_1_fu_90_reg[60] [21]),
        .I2(\key_1_fu_90_reg[0] [3]),
        .I3(ap_loop_init),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hAA3C)) 
    \key_1_fu_90[19]_i_1 
       (.I0(Q[19]),
        .I1(\key_1_fu_90_reg[60] [22]),
        .I2(\key_1_fu_90_reg[0] [4]),
        .I3(ap_loop_init),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[1]_i_1 
       (.I0(Q[1]),
        .I1(\key_1_fu_90_reg[60] [4]),
        .I2(ap_loop_init),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[20]_i_1 
       (.I0(Q[20]),
        .I1(\key_1_fu_90_reg[60] [23]),
        .I2(ap_loop_init),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[21]_i_1 
       (.I0(Q[21]),
        .I1(\key_1_fu_90_reg[60] [24]),
        .I2(ap_loop_init),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[22]_i_1 
       (.I0(Q[22]),
        .I1(\key_1_fu_90_reg[60] [25]),
        .I2(ap_loop_init),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[23]_i_1 
       (.I0(Q[23]),
        .I1(\key_1_fu_90_reg[60] [26]),
        .I2(ap_loop_init),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[24]_i_1 
       (.I0(Q[24]),
        .I1(\key_1_fu_90_reg[60] [27]),
        .I2(ap_loop_init),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[25]_i_1 
       (.I0(Q[25]),
        .I1(\key_1_fu_90_reg[60] [28]),
        .I2(ap_loop_init),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[26]_i_1 
       (.I0(Q[26]),
        .I1(\key_1_fu_90_reg[60] [29]),
        .I2(ap_loop_init),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[27]_i_1 
       (.I0(Q[27]),
        .I1(\key_1_fu_90_reg[60] [30]),
        .I2(ap_loop_init),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[28]_i_1 
       (.I0(Q[28]),
        .I1(\key_1_fu_90_reg[60] [31]),
        .I2(ap_loop_init),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[29]_i_1 
       (.I0(Q[29]),
        .I1(\key_1_fu_90_reg[60] [32]),
        .I2(ap_loop_init),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[2]_i_1 
       (.I0(Q[2]),
        .I1(\key_1_fu_90_reg[60] [5]),
        .I2(ap_loop_init),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[30]_i_1 
       (.I0(Q[30]),
        .I1(\key_1_fu_90_reg[60] [33]),
        .I2(ap_loop_init),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[31]_i_1 
       (.I0(Q[31]),
        .I1(\key_1_fu_90_reg[60] [34]),
        .I2(ap_loop_init),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[32]_i_1 
       (.I0(Q[32]),
        .I1(\key_1_fu_90_reg[60] [35]),
        .I2(ap_loop_init),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[33]_i_1 
       (.I0(Q[33]),
        .I1(\key_1_fu_90_reg[60] [36]),
        .I2(ap_loop_init),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[34]_i_1 
       (.I0(Q[34]),
        .I1(\key_1_fu_90_reg[60] [37]),
        .I2(ap_loop_init),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[35]_i_1 
       (.I0(Q[35]),
        .I1(\key_1_fu_90_reg[60] [38]),
        .I2(ap_loop_init),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[36]_i_1 
       (.I0(Q[36]),
        .I1(\key_1_fu_90_reg[60] [39]),
        .I2(ap_loop_init),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[37]_i_1 
       (.I0(Q[37]),
        .I1(\key_1_fu_90_reg[60] [40]),
        .I2(ap_loop_init),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[38]_i_1 
       (.I0(Q[38]),
        .I1(\key_1_fu_90_reg[60] [41]),
        .I2(ap_loop_init),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[39]_i_1 
       (.I0(Q[39]),
        .I1(\key_1_fu_90_reg[60] [42]),
        .I2(ap_loop_init),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[3]_i_1 
       (.I0(Q[3]),
        .I1(\key_1_fu_90_reg[60] [6]),
        .I2(ap_loop_init),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[40]_i_1 
       (.I0(Q[40]),
        .I1(\key_1_fu_90_reg[60] [43]),
        .I2(ap_loop_init),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[41]_i_1 
       (.I0(Q[41]),
        .I1(\key_1_fu_90_reg[60] [44]),
        .I2(ap_loop_init),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[42]_i_1 
       (.I0(Q[42]),
        .I1(\key_1_fu_90_reg[60] [45]),
        .I2(ap_loop_init),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[43]_i_1 
       (.I0(Q[43]),
        .I1(\key_1_fu_90_reg[60] [46]),
        .I2(ap_loop_init),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[44]_i_1 
       (.I0(Q[44]),
        .I1(\key_1_fu_90_reg[60] [47]),
        .I2(ap_loop_init),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[45]_i_1 
       (.I0(Q[45]),
        .I1(\key_1_fu_90_reg[60] [48]),
        .I2(ap_loop_init),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[46]_i_1 
       (.I0(Q[46]),
        .I1(\key_1_fu_90_reg[60] [49]),
        .I2(ap_loop_init),
        .O(D[46]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[47]_i_1 
       (.I0(Q[47]),
        .I1(\key_1_fu_90_reg[60] [50]),
        .I2(ap_loop_init),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[48]_i_1 
       (.I0(Q[48]),
        .I1(\key_1_fu_90_reg[60] [51]),
        .I2(ap_loop_init),
        .O(D[48]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[49]_i_1 
       (.I0(Q[49]),
        .I1(\key_1_fu_90_reg[60] [52]),
        .I2(ap_loop_init),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[4]_i_1 
       (.I0(Q[4]),
        .I1(\key_1_fu_90_reg[60] [7]),
        .I2(ap_loop_init),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[50]_i_1 
       (.I0(Q[50]),
        .I1(\key_1_fu_90_reg[60] [53]),
        .I2(ap_loop_init),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[51]_i_1 
       (.I0(Q[51]),
        .I1(\key_1_fu_90_reg[60] [54]),
        .I2(ap_loop_init),
        .O(D[51]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[52]_i_1 
       (.I0(Q[52]),
        .I1(\key_1_fu_90_reg[60] [55]),
        .I2(ap_loop_init),
        .O(D[52]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[53]_i_1 
       (.I0(Q[53]),
        .I1(\key_1_fu_90_reg[60] [56]),
        .I2(ap_loop_init),
        .O(D[53]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[54]_i_1 
       (.I0(Q[54]),
        .I1(\key_1_fu_90_reg[60] [57]),
        .I2(ap_loop_init),
        .O(D[54]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[55]_i_1 
       (.I0(Q[55]),
        .I1(\key_1_fu_90_reg[60] [58]),
        .I2(ap_loop_init),
        .O(D[55]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[56]_i_1 
       (.I0(Q[56]),
        .I1(\key_1_fu_90_reg[60] [59]),
        .I2(ap_loop_init),
        .O(D[56]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[57]_i_1 
       (.I0(Q[57]),
        .I1(\key_1_fu_90_reg[60] [60]),
        .I2(ap_loop_init),
        .O(D[57]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[58]_i_1 
       (.I0(Q[58]),
        .I1(\key_1_fu_90_reg[60] [61]),
        .I2(ap_loop_init),
        .O(D[58]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[59]_i_1 
       (.I0(Q[59]),
        .I1(\key_1_fu_90_reg[60] [62]),
        .I2(ap_loop_init),
        .O(D[59]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[5]_i_1 
       (.I0(Q[5]),
        .I1(\key_1_fu_90_reg[60] [8]),
        .I2(ap_loop_init),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3C33C3CC)) 
    \key_1_fu_90[60]_i_1 
       (.I0(Q[60]),
        .I1(\key_1_fu_90_reg[60] [2]),
        .I2(\key_1_fu_90_reg[60] [0]),
        .I3(\key_1_fu_90_reg[60] [1]),
        .I4(\key_1_fu_90_reg[60] [63]),
        .I5(ap_loop_init),
        .O(D[60]));
  LUT6 #(
    .INIT(64'hAAAAAAAAC33FC0CC)) 
    \key_1_fu_90[61]_i_1 
       (.I0(Q[61]),
        .I1(\key_1_fu_90_reg[60] [2]),
        .I2(\key_1_fu_90_reg[60] [63]),
        .I3(\key_1_fu_90_reg[60] [1]),
        .I4(\key_1_fu_90_reg[60] [0]),
        .I5(ap_loop_init),
        .O(D[61]));
  LUT6 #(
    .INIT(64'hAAAAAAAA300FCFC3)) 
    \key_1_fu_90[62]_i_1 
       (.I0(Q[62]),
        .I1(\key_1_fu_90_reg[60] [2]),
        .I2(\key_1_fu_90_reg[60] [1]),
        .I3(\key_1_fu_90_reg[60] [63]),
        .I4(\key_1_fu_90_reg[60] [0]),
        .I5(ap_loop_init),
        .O(D[62]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \key_1_fu_90[63]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln92_fu_130_p2__5),
        .I2(ap_loop_init),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F0C3C33)) 
    \key_1_fu_90[63]_i_2 
       (.I0(Q[63]),
        .I1(\key_1_fu_90_reg[60] [2]),
        .I2(\key_1_fu_90_reg[60] [1]),
        .I3(\key_1_fu_90_reg[60] [0]),
        .I4(\key_1_fu_90_reg[60] [63]),
        .I5(ap_loop_init),
        .O(D[63]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[6]_i_1 
       (.I0(Q[6]),
        .I1(\key_1_fu_90_reg[60] [9]),
        .I2(ap_loop_init),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[7]_i_1 
       (.I0(Q[7]),
        .I1(\key_1_fu_90_reg[60] [10]),
        .I2(ap_loop_init),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[8]_i_1 
       (.I0(Q[8]),
        .I1(\key_1_fu_90_reg[60] [11]),
        .I2(ap_loop_init),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \key_1_fu_90[9]_i_1 
       (.I0(Q[9]),
        .I1(\key_1_fu_90_reg[60] [12]),
        .I2(ap_loop_init),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ram_reg_i_8
       (.I0(\key_1_fu_90_reg[0] [0]),
        .I1(\key_1_fu_90_reg[0] [4]),
        .I2(\key_1_fu_90_reg[0] [1]),
        .I3(\key_1_fu_90_reg[0] [5]),
        .I4(\key_1_fu_90_reg[0] [3]),
        .I5(\key_1_fu_90_reg[0] [2]),
        .O(icmp_ln92_fu_130_p2__5));
  LUT2 #(
    .INIT(4'h8)) 
    \round_fu_94[5]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_92_1_fu_77_ap_start_reg),
        .O(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "cifrador_basico_pre_flow_control_loop_pipe_sequential_init" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_flow_control_loop_pipe_sequential_init_0
   (D,
    E,
    ADDRARDADDR,
    \round_1_fu_106_reg[2] ,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_reg,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready,
    \round_1_fu_106_reg[2]_0 ,
    \ap_CS_fsm_reg[3] ,
    \ap_CS_fsm_reg[2] ,
    SR,
    ap_clk,
    Q,
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg,
    \in_fu_102_reg[31] ,
    \in_fu_102_reg[0] ,
    ram_reg,
    \ap_CS_fsm_reg[4] ,
    ram_reg_0,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter1_reg);
  output [31:0]D;
  output [0:0]E;
  output [4:0]ADDRARDADDR;
  output [4:0]\round_1_fu_106_reg[2] ;
  output grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_reg;
  output grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready;
  output [0:0]\round_1_fu_106_reg[2]_0 ;
  output [1:0]\ap_CS_fsm_reg[3] ;
  output \ap_CS_fsm_reg[2] ;
  input [0:0]SR;
  input ap_clk;
  input [31:0]Q;
  input grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;
  input [31:0]\in_fu_102_reg[31] ;
  input [0:0]\in_fu_102_reg[0] ;
  input [4:0]ram_reg;
  input [2:0]\ap_CS_fsm_reg[4] ;
  input [4:0]ram_reg_0;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter1_reg;

  wire [4:0]ADDRARDADDR;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[2] ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire ap_rst_n;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg;
  wire grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_reg;
  wire [0:0]\in_fu_102_reg[0] ;
  wire [31:0]\in_fu_102_reg[31] ;
  wire [4:0]ram_reg;
  wire [4:0]ram_reg_0;
  wire \round_1_fu_106[4]_i_3_n_0 ;
  wire [4:0]\round_1_fu_106_reg[2] ;
  wire [0:0]\round_1_fu_106_reg[2]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hAAFBAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[4] [1]),
        .I1(ap_done_cache),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(\ap_CS_fsm_reg[4] [2]),
        .O(\ap_CS_fsm_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\ap_CS_fsm_reg[4] [2]),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(ap_done_cache),
        .O(\ap_CS_fsm_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1__0
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I1(ap_rst_n),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready),
        .O(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ram_reg_0[2]),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(ram_reg_0[4]),
        .I4(\round_1_fu_106[4]_i_3_n_0 ),
        .I5(ram_reg_0[3]),
        .O(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_loop_init_int_i_1__0
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[4] [1]),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_ready),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .O(\ap_CS_fsm_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[10]_i_1 
       (.I0(Q[10]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [9]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[11]_i_1 
       (.I0(Q[11]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [13]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[12]_i_1 
       (.I0(Q[12]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [17]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[13]_i_1 
       (.I0(Q[13]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [21]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[14]_i_1 
       (.I0(Q[14]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [25]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[15]_i_1 
       (.I0(Q[15]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [29]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[16]_i_1 
       (.I0(Q[16]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [2]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[17]_i_1 
       (.I0(Q[17]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [6]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[18]_i_1 
       (.I0(Q[18]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [10]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[19]_i_1 
       (.I0(Q[19]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [14]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[1]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [4]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[20]_i_1 
       (.I0(Q[20]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [18]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[21]_i_1 
       (.I0(Q[21]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [22]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[22]_i_1 
       (.I0(Q[22]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [26]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[23]_i_1 
       (.I0(Q[23]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [30]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[24]_i_1 
       (.I0(Q[24]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [3]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[25]_i_1 
       (.I0(Q[25]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [7]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[26]_i_1 
       (.I0(Q[26]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [11]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[27]_i_1 
       (.I0(Q[27]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [15]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[28]_i_1 
       (.I0(Q[28]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [19]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[29]_i_1 
       (.I0(Q[29]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [23]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[2]_i_1 
       (.I0(Q[2]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [8]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[30]_i_1 
       (.I0(Q[30]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [27]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \in_fu_102[31]_i_1 
       (.I0(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\in_fu_102_reg[0] ),
        .O(E));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[31]_i_2 
       (.I0(Q[31]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [31]),
        .O(D[31]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[3]_i_1 
       (.I0(Q[3]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [12]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[4]_i_1 
       (.I0(Q[4]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [16]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[5]_i_1 
       (.I0(Q[5]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [20]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[6]_i_1 
       (.I0(Q[6]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [24]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[7]_i_1 
       (.I0(Q[7]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [28]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[8]_i_1 
       (.I0(Q[8]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [1]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \in_fu_102[9]_i_1 
       (.I0(Q[9]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(\in_fu_102_reg[31] [5]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h2EEE22223FFF3333)) 
    ram_reg_i_2
       (.I0(ram_reg[4]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(ap_loop_init_int),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I4(ram_reg_0[4]),
        .I5(\ap_CS_fsm_reg[4] [0]),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'h2EEE22223FFF3333)) 
    ram_reg_i_3
       (.I0(ram_reg[3]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(ap_loop_init_int),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I4(ram_reg_0[3]),
        .I5(\ap_CS_fsm_reg[4] [0]),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'h2EEE22223FFF3333)) 
    ram_reg_i_4
       (.I0(ram_reg[2]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(ap_loop_init_int),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I4(ram_reg_0[2]),
        .I5(\ap_CS_fsm_reg[4] [0]),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'h2EEE22223FFF3333)) 
    ram_reg_i_5
       (.I0(ram_reg[1]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(ap_loop_init_int),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I4(ram_reg_0[1]),
        .I5(\ap_CS_fsm_reg[4] [0]),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'h2EEE22223FFF3333)) 
    ram_reg_i_6
       (.I0(ram_reg[0]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(ap_loop_init_int),
        .I3(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I4(ram_reg_0[0]),
        .I5(\ap_CS_fsm_reg[4] [0]),
        .O(ADDRARDADDR[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \round_1_fu_106[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ram_reg_0[0]),
        .O(\round_1_fu_106_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \round_1_fu_106[1]_i_1 
       (.I0(ram_reg_0[0]),
        .I1(ap_loop_init_int),
        .I2(ram_reg_0[1]),
        .O(\round_1_fu_106_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \round_1_fu_106[2]_i_1 
       (.I0(ram_reg_0[0]),
        .I1(ram_reg_0[1]),
        .I2(ap_loop_init_int),
        .I3(ram_reg_0[2]),
        .O(\round_1_fu_106_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \round_1_fu_106[3]_i_1 
       (.I0(ram_reg_0[1]),
        .I1(ram_reg_0[0]),
        .I2(ram_reg_0[2]),
        .I3(ap_loop_init_int),
        .I4(ram_reg_0[3]),
        .O(\round_1_fu_106_reg[2] [3]));
  LUT6 #(
    .INIT(64'hCCCCC4CCCCCCCCCC)) 
    \round_1_fu_106[4]_i_1 
       (.I0(ram_reg_0[2]),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(ram_reg_0[4]),
        .I4(\round_1_fu_106[4]_i_3_n_0 ),
        .I5(ram_reg_0[3]),
        .O(\round_1_fu_106_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \round_1_fu_106[4]_i_2 
       (.I0(ram_reg_0[2]),
        .I1(ram_reg_0[0]),
        .I2(ram_reg_0[1]),
        .I3(ram_reg_0[3]),
        .I4(ap_loop_init),
        .I5(ram_reg_0[4]),
        .O(\round_1_fu_106_reg[2] [4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hD5FF)) 
    \round_1_fu_106[4]_i_3 
       (.I0(ram_reg_0[1]),
        .I1(ap_loop_init_int),
        .I2(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .I3(ram_reg_0[0]),
        .O(\round_1_fu_106[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \round_1_fu_106[4]_i_4 
       (.I0(ap_loop_init_int),
        .I1(grp_cifrador_basico_pre_Pipeline_VITIS_LOOP_114_1_fu_85_ap_start_reg),
        .O(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "cifrador_basico_pre_round_keys_RAM_AUTO_1R1W" *) 
module design_1_cifrador_basico_pre_0_0_cifrador_basico_pre_round_keys_RAM_AUTO_1R1W
   (round_keys_q0,
    ap_clk,
    round_keys_ce0,
    ADDRARDADDR,
    ram_reg_0,
    WEA);
  output [31:0]round_keys_q0;
  input ap_clk;
  input round_keys_ce0;
  input [4:0]ADDRARDADDR;
  input [31:0]ram_reg_0;
  input [0:0]WEA;

  wire [4:0]ADDRARDADDR;
  wire [0:0]WEA;
  wire ap_clk;
  wire [31:0]ram_reg_0;
  wire round_keys_ce0;
  wire [31:0]round_keys_q0;
  wire [15:14]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cifrador_basico_pre/round_keys_U/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "31" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b0,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI(ram_reg_0[15:0]),
        .DIBDI({1'b1,1'b1,ram_reg_0[31:18]}),
        .DIPADIP(ram_reg_0[17:16]),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(round_keys_q0[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:14],round_keys_q0[31:18]}),
        .DOPADOP(round_keys_q0[17:16]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(round_keys_ce0),
        .ENBWREN(round_keys_ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEA,WEA}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
