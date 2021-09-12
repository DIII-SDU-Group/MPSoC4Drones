// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Tue Apr 27 11:00:39 2021
// Host        : ubuv1804 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/training/Projects/bsp_build_tests/test_tag/u96v2_sbc_base/hdl/projects/u96v2_sbc_base_2020_2/u96v2_sbc_base.gen/sources_1/bd/u96v2_sbc_base/ip/u96v2_sbc_base_axi_bram_ctrl_0_0/u96v2_sbc_base_axi_bram_ctrl_0_0_sim_netlist.v
// Design      : u96v2_sbc_base_axi_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "u96v2_sbc_base_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module u96v2_sbc_base_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN u96v2_sbc_base_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 16, ADDR_WIDTH 14, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN u96v2_sbc_base_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [13:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [15:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [15:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [13:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [15:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 16384, MEM_WIDTH 128, MEM_ECC NONE, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [15:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [13:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [127:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [127:0]bram_rddata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 16384, MEM_WIDTH 128, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) output bram_rst_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) output bram_clk_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) output bram_en_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) output [15:0]bram_we_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) output [13:0]bram_addr_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) output [127:0]bram_wrdata_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) input [127:0]bram_rddata_b;

  wire \<const0> ;
  wire [13:4]\^bram_addr_a ;
  wire [13:4]\^bram_addr_b ;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [127:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [15:0]bram_we_a;
  wire [127:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [15:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [3:0]NLW_U0_bram_addr_a_UNCONNECTED;
  wire [3:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [15:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [127:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign bram_addr_a[13:4] = \^bram_addr_a [13:4];
  assign bram_addr_a[3] = \<const0> ;
  assign bram_addr_a[2] = \<const0> ;
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[13:4] = \^bram_addr_b [13:4];
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_we_b[15] = \<const0> ;
  assign bram_we_b[14] = \<const0> ;
  assign bram_we_b[13] = \<const0> ;
  assign bram_we_b[12] = \<const0> ;
  assign bram_we_b[11] = \<const0> ;
  assign bram_we_b[10] = \<const0> ;
  assign bram_we_b[9] = \<const0> ;
  assign bram_we_b[8] = \<const0> ;
  assign bram_we_b[7] = \<const0> ;
  assign bram_we_b[6] = \<const0> ;
  assign bram_we_b[5] = \<const0> ;
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[127] = \<const0> ;
  assign bram_wrdata_b[126] = \<const0> ;
  assign bram_wrdata_b[125] = \<const0> ;
  assign bram_wrdata_b[124] = \<const0> ;
  assign bram_wrdata_b[123] = \<const0> ;
  assign bram_wrdata_b[122] = \<const0> ;
  assign bram_wrdata_b[121] = \<const0> ;
  assign bram_wrdata_b[120] = \<const0> ;
  assign bram_wrdata_b[119] = \<const0> ;
  assign bram_wrdata_b[118] = \<const0> ;
  assign bram_wrdata_b[117] = \<const0> ;
  assign bram_wrdata_b[116] = \<const0> ;
  assign bram_wrdata_b[115] = \<const0> ;
  assign bram_wrdata_b[114] = \<const0> ;
  assign bram_wrdata_b[113] = \<const0> ;
  assign bram_wrdata_b[112] = \<const0> ;
  assign bram_wrdata_b[111] = \<const0> ;
  assign bram_wrdata_b[110] = \<const0> ;
  assign bram_wrdata_b[109] = \<const0> ;
  assign bram_wrdata_b[108] = \<const0> ;
  assign bram_wrdata_b[107] = \<const0> ;
  assign bram_wrdata_b[106] = \<const0> ;
  assign bram_wrdata_b[105] = \<const0> ;
  assign bram_wrdata_b[104] = \<const0> ;
  assign bram_wrdata_b[103] = \<const0> ;
  assign bram_wrdata_b[102] = \<const0> ;
  assign bram_wrdata_b[101] = \<const0> ;
  assign bram_wrdata_b[100] = \<const0> ;
  assign bram_wrdata_b[99] = \<const0> ;
  assign bram_wrdata_b[98] = \<const0> ;
  assign bram_wrdata_b[97] = \<const0> ;
  assign bram_wrdata_b[96] = \<const0> ;
  assign bram_wrdata_b[95] = \<const0> ;
  assign bram_wrdata_b[94] = \<const0> ;
  assign bram_wrdata_b[93] = \<const0> ;
  assign bram_wrdata_b[92] = \<const0> ;
  assign bram_wrdata_b[91] = \<const0> ;
  assign bram_wrdata_b[90] = \<const0> ;
  assign bram_wrdata_b[89] = \<const0> ;
  assign bram_wrdata_b[88] = \<const0> ;
  assign bram_wrdata_b[87] = \<const0> ;
  assign bram_wrdata_b[86] = \<const0> ;
  assign bram_wrdata_b[85] = \<const0> ;
  assign bram_wrdata_b[84] = \<const0> ;
  assign bram_wrdata_b[83] = \<const0> ;
  assign bram_wrdata_b[82] = \<const0> ;
  assign bram_wrdata_b[81] = \<const0> ;
  assign bram_wrdata_b[80] = \<const0> ;
  assign bram_wrdata_b[79] = \<const0> ;
  assign bram_wrdata_b[78] = \<const0> ;
  assign bram_wrdata_b[77] = \<const0> ;
  assign bram_wrdata_b[76] = \<const0> ;
  assign bram_wrdata_b[75] = \<const0> ;
  assign bram_wrdata_b[74] = \<const0> ;
  assign bram_wrdata_b[73] = \<const0> ;
  assign bram_wrdata_b[72] = \<const0> ;
  assign bram_wrdata_b[71] = \<const0> ;
  assign bram_wrdata_b[70] = \<const0> ;
  assign bram_wrdata_b[69] = \<const0> ;
  assign bram_wrdata_b[68] = \<const0> ;
  assign bram_wrdata_b[67] = \<const0> ;
  assign bram_wrdata_b[66] = \<const0> ;
  assign bram_wrdata_b[65] = \<const0> ;
  assign bram_wrdata_b[64] = \<const0> ;
  assign bram_wrdata_b[63] = \<const0> ;
  assign bram_wrdata_b[62] = \<const0> ;
  assign bram_wrdata_b[61] = \<const0> ;
  assign bram_wrdata_b[60] = \<const0> ;
  assign bram_wrdata_b[59] = \<const0> ;
  assign bram_wrdata_b[58] = \<const0> ;
  assign bram_wrdata_b[57] = \<const0> ;
  assign bram_wrdata_b[56] = \<const0> ;
  assign bram_wrdata_b[55] = \<const0> ;
  assign bram_wrdata_b[54] = \<const0> ;
  assign bram_wrdata_b[53] = \<const0> ;
  assign bram_wrdata_b[52] = \<const0> ;
  assign bram_wrdata_b[51] = \<const0> ;
  assign bram_wrdata_b[50] = \<const0> ;
  assign bram_wrdata_b[49] = \<const0> ;
  assign bram_wrdata_b[48] = \<const0> ;
  assign bram_wrdata_b[47] = \<const0> ;
  assign bram_wrdata_b[46] = \<const0> ;
  assign bram_wrdata_b[45] = \<const0> ;
  assign bram_wrdata_b[44] = \<const0> ;
  assign bram_wrdata_b[43] = \<const0> ;
  assign bram_wrdata_b[42] = \<const0> ;
  assign bram_wrdata_b[41] = \<const0> ;
  assign bram_wrdata_b[40] = \<const0> ;
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BRAM_ADDR_WIDTH = "10" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "1024" *) 
  (* C_RD_CMD_OPTIMIZATION = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SINGLE_PORT_BRAM = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "14" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ID_WIDTH = "16" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  u96v2_sbc_base_axi_bram_ctrl_0_0_axi_bram_ctrl U0
       (.bram_addr_a({\^bram_addr_a ,NLW_U0_bram_addr_a_UNCONNECTED[3:0]}),
        .bram_addr_b({\^bram_addr_b ,NLW_U0_bram_addr_b_UNCONNECTED[3:0]}),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(bram_clk_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[15:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[127:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_SRL_FIFO
   (axi_wr_burst_reg,
    E,
    bid_gets_fifo_load,
    D,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ,
    \bvalid_cnt_reg[1] ,
    SR,
    s_axi_aclk,
    bram_addr_ld_en,
    Q,
    \axi_bid_int_reg[0] ,
    bid_gets_fifo_load_d1,
    \axi_bid_int_reg[15] ,
    axi_awaddr_full,
    s_axi_awid,
    bid_gets_fifo_load_d1_reg,
    axi_wr_burst,
    Data_Exists_DFF_0,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_awready,
    aw_active,
    s_axi_bready,
    Data_Exists_DFF_1);
  output axi_wr_burst_reg;
  output [0:0]E;
  output bid_gets_fifo_load;
  output [15:0]D;
  output \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ;
  output \bvalid_cnt_reg[1] ;
  input [0:0]SR;
  input s_axi_aclk;
  input bram_addr_ld_en;
  input [2:0]Q;
  input \axi_bid_int_reg[0] ;
  input bid_gets_fifo_load_d1;
  input [15:0]\axi_bid_int_reg[15] ;
  input axi_awaddr_full;
  input [15:0]s_axi_awid;
  input bid_gets_fifo_load_d1_reg;
  input axi_wr_burst;
  input [2:0]Data_Exists_DFF_0;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_awready;
  input aw_active;
  input s_axi_bready;
  input Data_Exists_DFF_1;

  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_2_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_4_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire [15:0]D;
  wire D_0;
  wire [2:0]Data_Exists_DFF_0;
  wire Data_Exists_DFF_1;
  wire Data_Exists_DFF_i_2_n_0;
  wire Data_Exists_DFF_i_3_n_0;
  wire [0:0]E;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ;
  wire [2:0]Q;
  wire S;
  wire S0_out;
  wire S1_out;
  wire [0:0]SR;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active;
  wire axi_awaddr_full;
  wire \axi_bid_int[15]_i_3_n_0 ;
  wire \axi_bid_int_reg[0] ;
  wire [15:0]\axi_bid_int_reg[15] ;
  wire axi_wr_burst;
  wire axi_wr_burst_reg;
  wire [15:0]bid_fifo_ld;
  wire bid_fifo_not_empty;
  wire [15:0]bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_4_n_0;
  wire bid_gets_fifo_load_d1_i_5_n_0;
  wire bid_gets_fifo_load_d1_reg;
  wire bram_addr_ld_en;
  wire \bvalid_cnt_reg[1] ;
  wire s_axi_aclk;
  wire [15:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [7:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:4]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:4]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY8 \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8 
       (.CI(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED [7:3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED [7:3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED [7:4],sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED [7:4],\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\axi_bid_int[15]_i_3_n_0 ),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h80888080AAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(bram_addr_ld_en),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\axi_bid_int[15]_i_3_n_0 ),
        .I5(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(bram_addr_ld_en),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(\Addr_Counters[2].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\axi_bid_int[15]_i_3_n_0 ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\axi_bid_int[15]_i_3_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\axi_bid_int[15]_i_3_n_0 ),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(bid_fifo_not_empty),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFBABB0000AAAA)) 
    Data_Exists_DFF_i_1
       (.I0(bram_addr_ld_en),
        .I1(Data_Exists_DFF_i_2_n_0),
        .I2(axi_wr_burst_reg),
        .I3(\axi_bid_int[15]_i_3_n_0 ),
        .I4(Data_Exists_DFF_i_3_n_0),
        .I5(bid_fifo_not_empty),
        .O(D_0));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    Data_Exists_DFF_i_2
       (.I0(bid_gets_fifo_load_d1),
        .I1(Data_Exists_DFF_1),
        .I2(s_axi_bready),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(Data_Exists_DFF_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[15]),
        .Q(bid_fifo_rd[15]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [15]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[15]),
        .O(bid_fifo_ld[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[5]),
        .Q(bid_fifo_rd[5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[10].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[5]),
        .O(bid_fifo_ld[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[11].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[4]),
        .Q(bid_fifo_rd[4]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[11].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[4]),
        .O(bid_fifo_ld[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[12].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[12].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[3]),
        .Q(bid_fifo_rd[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[12].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[3]),
        .O(bid_fifo_ld[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[13].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[13].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[2]),
        .Q(bid_fifo_rd[2]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[13].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[2]),
        .O(bid_fifo_ld[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[14].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[14].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[1]),
        .Q(bid_fifo_rd[1]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[14].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[1]),
        .O(bid_fifo_ld[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[15].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[15].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[0]),
        .Q(bid_fifo_rd[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[15].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[0]),
        .O(bid_fifo_ld[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[14]),
        .Q(bid_fifo_rd[14]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [14]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[14]),
        .O(bid_fifo_ld[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[13]),
        .Q(bid_fifo_rd[13]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[2].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [13]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[13]),
        .O(bid_fifo_ld[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[12]),
        .Q(bid_fifo_rd[12]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[3].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [12]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[12]),
        .O(bid_fifo_ld[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[11]),
        .Q(bid_fifo_rd[11]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[4].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [11]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[11]),
        .O(bid_fifo_ld[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[10]),
        .Q(bid_fifo_rd[10]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[5].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [10]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[10]),
        .O(bid_fifo_ld[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[9]),
        .Q(bid_fifo_rd[9]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[6].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [9]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[9]),
        .O(bid_fifo_ld[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[8]),
        .Q(bid_fifo_rd[8]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[7].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [8]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[8]),
        .O(bid_fifo_ld[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[7]),
        .Q(bid_fifo_rd[7]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[8].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[7]),
        .O(bid_fifo_ld[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[9].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[6]),
        .Q(bid_fifo_rd[6]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[9].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[15] [6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[6]),
        .O(bid_fifo_ld[6]));
  LUT6 #(
    .INIT(64'h7F7F7F7F7F000000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awready),
        .I5(aw_active),
        .O(\bvalid_cnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[0]_i_1 
       (.I0(\axi_bid_int_reg[15] [0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[0]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[10]_i_1 
       (.I0(\axi_bid_int_reg[15] [10]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[10]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[11]_i_1 
       (.I0(\axi_bid_int_reg[15] [11]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[11]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[12]_i_1 
       (.I0(\axi_bid_int_reg[15] [12]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[12]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[13]_i_1 
       (.I0(\axi_bid_int_reg[15] [13]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[13]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[14]_i_1 
       (.I0(\axi_bid_int_reg[15] [14]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[14]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \axi_bid_int[15]_i_1 
       (.I0(\axi_bid_int[15]_i_3_n_0 ),
        .I1(axi_wr_burst_reg),
        .I2(\axi_bid_int_reg[0] ),
        .I3(bid_gets_fifo_load_d1),
        .I4(bid_fifo_not_empty),
        .I5(bid_gets_fifo_load),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[15]_i_2 
       (.I0(\axi_bid_int_reg[15] [15]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[15]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[15]),
        .O(D[15]));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_bid_int[15]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\axi_bid_int[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \axi_bid_int[15]_i_4 
       (.I0(bid_gets_fifo_load_d1_i_4_n_0),
        .I1(axi_wr_burst),
        .I2(Data_Exists_DFF_0[1]),
        .I3(Data_Exists_DFF_0[2]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ),
        .O(axi_wr_burst_reg));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[1]_i_1 
       (.I0(\axi_bid_int_reg[15] [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[1]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[2]_i_1 
       (.I0(\axi_bid_int_reg[15] [2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[2]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[3]_i_1 
       (.I0(\axi_bid_int_reg[15] [3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[3]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[4]_i_1 
       (.I0(\axi_bid_int_reg[15] [4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[4]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[5]_i_1 
       (.I0(\axi_bid_int_reg[15] [5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[5]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[6]_i_1 
       (.I0(\axi_bid_int_reg[15] [6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[6]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[7]_i_1 
       (.I0(\axi_bid_int_reg[15] [7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[7]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[8]_i_1 
       (.I0(\axi_bid_int_reg[15] [8]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[8]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[9]_i_1 
       (.I0(\axi_bid_int_reg[15] [9]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[9]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h08FF000000000000)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ),
        .I1(bid_gets_fifo_load_d1_reg),
        .I2(axi_wr_burst),
        .I3(bid_gets_fifo_load_d1_i_4_n_0),
        .I4(bid_gets_fifo_load_d1_i_5_n_0),
        .I5(bram_addr_ld_en),
        .O(bid_gets_fifo_load));
  LUT4 #(
    .INIT(16'hAA80)) 
    bid_gets_fifo_load_d1_i_2
       (.I0(Data_Exists_DFF_0[0]),
        .I1(bram_addr_ld_en),
        .I2(axi_awaddr_full),
        .I3(\bvalid_cnt_reg[1] ),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ));
  LUT6 #(
    .INIT(64'hFBFFFBFFFBFFFFFF)) 
    bid_gets_fifo_load_d1_i_4
       (.I0(Data_Exists_DFF_0[2]),
        .I1(s_axi_wlast),
        .I2(Data_Exists_DFF_0[0]),
        .I3(s_axi_wvalid),
        .I4(\bvalid_cnt_reg[1] ),
        .I5(Data_Exists_DFF_0[1]),
        .O(bid_gets_fifo_load_d1_i_4_n_0));
  LUT6 #(
    .INIT(64'h0100000011111111)) 
    bid_gets_fifo_load_d1_i_5
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(bid_fifo_not_empty),
        .I3(s_axi_bready),
        .I4(Data_Exists_DFF_1),
        .I5(Q[0]),
        .O(bid_gets_fifo_load_d1_i_5_n_0));
endmodule

(* C_BRAM_ADDR_WIDTH = "10" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynquplus" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "1024" *) (* C_RD_CMD_OPTIMIZATION = "0" *) 
(* C_READ_LATENCY = "1" *) (* C_SINGLE_PORT_BRAM = "0" *) (* C_S_AXI_ADDR_WIDTH = "14" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "128" *) 
(* C_S_AXI_ID_WIDTH = "16" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [15:0]s_axi_awid;
  input [13:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [15:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_arid;
  input [13:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [15:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [15:0]bram_we_a;
  output [13:0]bram_addr_a;
  output [127:0]bram_wrdata_a;
  input [127:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [15:0]bram_we_b;
  output [13:0]bram_addr_b;
  output [127:0]bram_wrdata_b;
  input [127:0]bram_rddata_b;

  wire \<const0> ;
  wire [13:4]\^bram_addr_a ;
  wire [13:4]\^bram_addr_b ;
  wire bram_en_a;
  wire bram_en_b;
  wire [127:0]bram_rddata_b;
  wire bram_rst_b;
  wire [15:0]bram_we_a;
  wire [127:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [15:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[13:4] = \^bram_addr_a [13:4];
  assign bram_addr_a[3] = \<const0> ;
  assign bram_addr_a[2] = \<const0> ;
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[13:4] = \^bram_addr_b [13:4];
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = s_axi_aclk;
  assign bram_rst_a = bram_rst_b;
  assign bram_we_b[15] = \<const0> ;
  assign bram_we_b[14] = \<const0> ;
  assign bram_we_b[13] = \<const0> ;
  assign bram_we_b[12] = \<const0> ;
  assign bram_we_b[11] = \<const0> ;
  assign bram_we_b[10] = \<const0> ;
  assign bram_we_b[9] = \<const0> ;
  assign bram_we_b[8] = \<const0> ;
  assign bram_we_b[7] = \<const0> ;
  assign bram_we_b[6] = \<const0> ;
  assign bram_we_b[5] = \<const0> ;
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[127] = \<const0> ;
  assign bram_wrdata_b[126] = \<const0> ;
  assign bram_wrdata_b[125] = \<const0> ;
  assign bram_wrdata_b[124] = \<const0> ;
  assign bram_wrdata_b[123] = \<const0> ;
  assign bram_wrdata_b[122] = \<const0> ;
  assign bram_wrdata_b[121] = \<const0> ;
  assign bram_wrdata_b[120] = \<const0> ;
  assign bram_wrdata_b[119] = \<const0> ;
  assign bram_wrdata_b[118] = \<const0> ;
  assign bram_wrdata_b[117] = \<const0> ;
  assign bram_wrdata_b[116] = \<const0> ;
  assign bram_wrdata_b[115] = \<const0> ;
  assign bram_wrdata_b[114] = \<const0> ;
  assign bram_wrdata_b[113] = \<const0> ;
  assign bram_wrdata_b[112] = \<const0> ;
  assign bram_wrdata_b[111] = \<const0> ;
  assign bram_wrdata_b[110] = \<const0> ;
  assign bram_wrdata_b[109] = \<const0> ;
  assign bram_wrdata_b[108] = \<const0> ;
  assign bram_wrdata_b[107] = \<const0> ;
  assign bram_wrdata_b[106] = \<const0> ;
  assign bram_wrdata_b[105] = \<const0> ;
  assign bram_wrdata_b[104] = \<const0> ;
  assign bram_wrdata_b[103] = \<const0> ;
  assign bram_wrdata_b[102] = \<const0> ;
  assign bram_wrdata_b[101] = \<const0> ;
  assign bram_wrdata_b[100] = \<const0> ;
  assign bram_wrdata_b[99] = \<const0> ;
  assign bram_wrdata_b[98] = \<const0> ;
  assign bram_wrdata_b[97] = \<const0> ;
  assign bram_wrdata_b[96] = \<const0> ;
  assign bram_wrdata_b[95] = \<const0> ;
  assign bram_wrdata_b[94] = \<const0> ;
  assign bram_wrdata_b[93] = \<const0> ;
  assign bram_wrdata_b[92] = \<const0> ;
  assign bram_wrdata_b[91] = \<const0> ;
  assign bram_wrdata_b[90] = \<const0> ;
  assign bram_wrdata_b[89] = \<const0> ;
  assign bram_wrdata_b[88] = \<const0> ;
  assign bram_wrdata_b[87] = \<const0> ;
  assign bram_wrdata_b[86] = \<const0> ;
  assign bram_wrdata_b[85] = \<const0> ;
  assign bram_wrdata_b[84] = \<const0> ;
  assign bram_wrdata_b[83] = \<const0> ;
  assign bram_wrdata_b[82] = \<const0> ;
  assign bram_wrdata_b[81] = \<const0> ;
  assign bram_wrdata_b[80] = \<const0> ;
  assign bram_wrdata_b[79] = \<const0> ;
  assign bram_wrdata_b[78] = \<const0> ;
  assign bram_wrdata_b[77] = \<const0> ;
  assign bram_wrdata_b[76] = \<const0> ;
  assign bram_wrdata_b[75] = \<const0> ;
  assign bram_wrdata_b[74] = \<const0> ;
  assign bram_wrdata_b[73] = \<const0> ;
  assign bram_wrdata_b[72] = \<const0> ;
  assign bram_wrdata_b[71] = \<const0> ;
  assign bram_wrdata_b[70] = \<const0> ;
  assign bram_wrdata_b[69] = \<const0> ;
  assign bram_wrdata_b[68] = \<const0> ;
  assign bram_wrdata_b[67] = \<const0> ;
  assign bram_wrdata_b[66] = \<const0> ;
  assign bram_wrdata_b[65] = \<const0> ;
  assign bram_wrdata_b[64] = \<const0> ;
  assign bram_wrdata_b[63] = \<const0> ;
  assign bram_wrdata_b[62] = \<const0> ;
  assign bram_wrdata_b[61] = \<const0> ;
  assign bram_wrdata_b[60] = \<const0> ;
  assign bram_wrdata_b[59] = \<const0> ;
  assign bram_wrdata_b[58] = \<const0> ;
  assign bram_wrdata_b[57] = \<const0> ;
  assign bram_wrdata_b[56] = \<const0> ;
  assign bram_wrdata_b[55] = \<const0> ;
  assign bram_wrdata_b[54] = \<const0> ;
  assign bram_wrdata_b[53] = \<const0> ;
  assign bram_wrdata_b[52] = \<const0> ;
  assign bram_wrdata_b[51] = \<const0> ;
  assign bram_wrdata_b[50] = \<const0> ;
  assign bram_wrdata_b[49] = \<const0> ;
  assign bram_wrdata_b[48] = \<const0> ;
  assign bram_wrdata_b[47] = \<const0> ;
  assign bram_wrdata_b[46] = \<const0> ;
  assign bram_wrdata_b[45] = \<const0> ;
  assign bram_wrdata_b[44] = \<const0> ;
  assign bram_wrdata_b[43] = \<const0> ;
  assign bram_wrdata_b[42] = \<const0> ;
  assign bram_wrdata_b[41] = \<const0> ;
  assign bram_wrdata_b[40] = \<const0> ;
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  u96v2_sbc_base_axi_bram_ctrl_0_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (s_axi_rlast),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (s_axi_rvalid),
        .SR(bram_rst_b),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_addr_b(\^bram_addr_b ),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_axi_bram_ctrl_top
   (axi_bvalid_int_reg,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    s_axi_awready,
    SR,
    s_axi_rid,
    s_axi_rdata,
    bram_addr_b,
    bram_addr_a,
    s_axi_bid,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    s_axi_wready,
    s_axi_arready,
    bram_en_b,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_awsize,
    s_axi_rready,
    s_axi_arsize,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arid,
    bram_rddata_b,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_arvalid);
  output axi_bvalid_int_reg;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output s_axi_awready;
  output [0:0]SR;
  output [15:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [9:0]bram_addr_b;
  output [9:0]bram_addr_a;
  output [15:0]s_axi_bid;
  output bram_en_a;
  output [15:0]bram_we_a;
  output [127:0]bram_wrdata_a;
  output s_axi_wready;
  output s_axi_arready;
  output bram_en_b;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input [2:0]s_axi_awsize;
  input s_axi_rready;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [15:0]s_axi_arid;
  input [127:0]bram_rddata_b;
  input [13:0]s_axi_araddr;
  input [13:0]s_axi_awaddr;
  input [15:0]s_axi_awid;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;
  input s_axi_wlast;
  input s_axi_arvalid;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire [0:0]SR;
  wire axi_bvalid_int_reg;
  wire [9:0]bram_addr_a;
  wire [9:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [127:0]bram_rddata_b;
  wire [15:0]bram_we_a;
  wire [127:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_rdata;
  wire [15:0]s_axi_rid;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  u96v2_sbc_base_axi_bram_ctrl_0_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .SR(SR),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_full_axi
   (axi_bvalid_int_reg,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    s_axi_awready,
    SR,
    s_axi_rid,
    s_axi_rdata,
    bram_addr_b,
    bram_addr_a,
    s_axi_bid,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    s_axi_wready,
    s_axi_arready,
    bram_en_b,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_awsize,
    s_axi_rready,
    s_axi_arsize,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arid,
    bram_rddata_b,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_arvalid);
  output axi_bvalid_int_reg;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output s_axi_awready;
  output [0:0]SR;
  output [15:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [9:0]bram_addr_b;
  output [9:0]bram_addr_a;
  output [15:0]s_axi_bid;
  output bram_en_a;
  output [15:0]bram_we_a;
  output [127:0]bram_wrdata_a;
  output s_axi_wready;
  output s_axi_arready;
  output bram_en_b;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input [2:0]s_axi_awsize;
  input s_axi_rready;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [15:0]s_axi_arid;
  input [127:0]bram_rddata_b;
  input [13:0]s_axi_araddr;
  input [13:0]s_axi_awaddr;
  input [15:0]s_axi_awid;
  input [15:0]s_axi_wstrb;
  input [127:0]s_axi_wdata;
  input s_axi_wlast;
  input s_axi_arvalid;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire I_WR_CHNL_n_133;
  wire [0:0]SR;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire axi_bvalid_int_reg;
  wire [9:0]bram_addr_a;
  wire [9:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [127:0]bram_rddata_b;
  wire [15:0]bram_we_a;
  wire [127:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_rdata;
  wire [15:0]s_axi_rid;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  u96v2_sbc_base_axi_bram_ctrl_0_0_rd_chnl I_RD_CHNL
       (.\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 (I_WR_CHNL_n_133),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .Q(bram_addr_b),
        .SR(SR),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready));
  u96v2_sbc_base_axi_bram_ctrl_0_0_wr_chnl I_WR_CHNL
       (.\GEN_AWREADY.axi_aresetn_d3_reg_0 (I_WR_CHNL_n_133),
        .SR(SR),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_rd_chnl
   (SR,
    s_axi_rdata,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    bram_en_b,
    Q,
    s_axi_arready,
    s_axi_rid,
    s_axi_aclk,
    s_axi_araddr,
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_arsize,
    s_axi_arburst,
    axi_aresetn_d3,
    s_axi_arvalid,
    s_axi_arlen,
    axi_aresetn_re_reg,
    s_axi_arid,
    bram_rddata_b);
  output [0:0]SR;
  output [127:0]s_axi_rdata;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output bram_en_b;
  output [9:0]Q;
  output s_axi_arready;
  output [15:0]s_axi_rid;
  input s_axi_aclk;
  input [13:0]s_axi_araddr;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ;
  input s_axi_aresetn;
  input s_axi_rready;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input axi_aresetn_d3;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input axi_aresetn_re_reg;
  input [15:0]s_axi_arid;
  input [127:0]bram_rddata_b;

  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_27_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[13]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[14]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_13 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_14 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_15 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_16 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_17 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_reg_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active;
  wire araddr_pipe_ld54_out;
  wire axi_araddr_full;
  wire [1:0]axi_arburst_pipe;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire [15:0]axi_arid_pipe;
  wire [7:0]axi_arlen_pipe;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arlen_pipe_1_or_20;
  wire axi_arready_int;
  wire axi_arready_int03_out;
  wire [2:0]axi_arsize_pipe;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_early_arready_int;
  wire axi_early_arready_int0;
  wire axi_rd_burst;
  wire axi_rd_burst0;
  wire axi_rd_burst_two;
  wire axi_rdata_en;
  wire [15:0]axi_rid_temp;
  wire [15:0]axi_rid_temp2;
  wire axi_rid_temp20;
  wire [15:0]axi_rid_temp20_in;
  wire axi_rid_temp2_full;
  wire axi_rid_temp_full;
  wire axi_rid_temp_full_d1;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire [13:12]bram_addr_ld;
  wire bram_addr_ld_en;
  wire bram_addr_ld_en_mod;
  wire bram_en_b;
  wire [127:0]bram_rddata_b;
  wire [7:0]brst_cnt;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire end_brst_rd_clr_cmb;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire [3:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [3:0]narrow_burst_cnt_ld_reg;
  wire no_ar_ack;
  wire p_0_in__0;
  wire rd_addr_sm_cs;
  wire [3:0]rd_data_sm_cs;
  wire [3:0]rd_data_sm_ns;
  wire [127:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_cmb;
  wire [2:0]rlast_sm_cs;
  wire [2:0]rlast_sm_ns;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [127:0]s_axi_rdata;
  wire [15:0]s_axi_rid;
  wire s_axi_rready;

  LUT6 #(
    .INIT(64'h44440000444F0000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I1(last_bram_addr),
        .I2(rd_addr_sm_cs),
        .I3(axi_araddr_full),
        .I4(s_axi_arvalid),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_3_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_3 
       (.I0(no_ar_ack),
        .I1(ar_active),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:0,ld_araddr:1" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h000AABAB)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .O(rd_data_sm_ns[0]));
  LUT6 #(
    .INIT(64'hEF000000FFFFFFFF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0FDD0FDD0F000F)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I3(rd_data_sm_cs[2]),
        .I4(act_rd_burst_two),
        .I5(act_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEAAFEA)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .O(rd_data_sm_ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000EFFFF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(axi_arlen_pipe_1_or_2),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I2(disable_b2b_brst),
        .I3(axi_araddr_full),
        .I4(axi_arsize_pipe_max),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00050D0D)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(rd_data_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2A222A2)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_data_sm_ns[2]));
  LUT6 #(
    .INIT(64'h337733773FFF3F33)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I5(rd_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABABAAA)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(rd_data_sm_cs[1]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0008000800)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I5(rd_data_sm_cs[1]),
        .O(rd_data_sm_ns[3]));
  LUT6 #(
    .INIT(64'h4455404040554040)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(bram_addr_ld_en),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4 
       (.I0(rd_data_sm_cs[0]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(brst_zero),
        .I4(axi_b2b_brst),
        .I5(end_brst_rd),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE0000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(bram_addr_ld_en),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(rd_data_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[1]),
        .Q(rd_data_sm_cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[2]),
        .Q(rd_data_sm_cs[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[3]),
        .Q(rd_data_sm_cs[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA88AA80)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I1(axi_rd_burst),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I4(act_rd_burst_two),
        .I5(rlast_sm_cs[1]),
        .O(rlast_sm_ns[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8A80008)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I1(axi_rd_burst),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(act_rd_burst_two),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I5(rlast_sm_cs[1]),
        .O(rlast_sm_ns[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008888F00088880)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000F001)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_2 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[2]),
        .O(rlast_sm_ns[2]));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .D(rlast_sm_ns[0]),
        .Q(rlast_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .D(rlast_sm_ns[1]),
        .Q(rlast_sm_cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .D(rlast_sm_ns[2]),
        .Q(rlast_sm_cs[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAAAEEE)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1 
       (.I0(axi_arready_int03_out),
        .I1(axi_arready_int),
        .I2(s_axi_arvalid),
        .I3(axi_araddr_full),
        .I4(araddr_pipe_ld54_out),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_2 
       (.I0(axi_aresetn_re_reg),
        .I1(axi_araddr_full),
        .I2(bram_addr_ld_en),
        .I3(axi_early_arready_int),
        .O(axi_arready_int03_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1_n_0 ),
        .Q(axi_arready_int),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000000022F2)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_1 
       (.I0(brst_one),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .O(axi_early_arready_int0));
  LUT6 #(
    .INIT(64'hDFFCDCFCFFFCFFFC)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(brst_one),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4 
       (.I0(s_axi_arvalid),
        .I1(axi_araddr_full),
        .I2(axi_arready_int),
        .I3(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_early_arready_int0),
        .Q(axi_early_arready_int),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFEFEAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ),
        .I4(rd_data_sm_cs[3]),
        .I5(ar_active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBABFBFBFBFBFBFB)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2 
       (.I0(rd_data_sm_cs[2]),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF5503FFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(end_brst_rd),
        .I2(brst_zero),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4 
       (.I0(brst_zero),
        .I1(axi_b2b_brst),
        .I2(end_brst_rd),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ),
        .Q(ar_active),
        .R(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[10]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[11]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[12]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[13]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[6]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_araddr[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC4C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 
       (.I0(bram_addr_ld_en),
        .I1(s_axi_aresetn),
        .I2(araddr_pipe_ld54_out),
        .I3(axi_araddr_full),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ),
        .Q(axi_araddr_full),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h03AA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(araddr_pipe_ld54_out),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arburst[0]),
        .Q(axi_arburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arburst[1]),
        .Q(axi_arburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[0]),
        .Q(axi_arid_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[10]),
        .Q(axi_arid_pipe[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[11]),
        .Q(axi_arid_pipe[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[12]),
        .Q(axi_arid_pipe[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[13]),
        .Q(axi_arid_pipe[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[14] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[14]),
        .Q(axi_arid_pipe[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[15] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[15]),
        .Q(axi_arid_pipe[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[1]),
        .Q(axi_arid_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[2]),
        .Q(axi_arid_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[3]),
        .Q(axi_arid_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[4]),
        .Q(axi_arid_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[5]),
        .Q(axi_arid_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[6]),
        .Q(axi_arid_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[7]),
        .Q(axi_arid_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[8]),
        .Q(axi_arid_pipe[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arid[9]),
        .Q(axi_arid_pipe[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0800AAAA08000800)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_1 
       (.I0(axi_aresetn_d3),
        .I1(s_axi_arvalid),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I3(last_bram_addr),
        .I4(axi_araddr_full),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ),
        .O(araddr_pipe_ld54_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(ar_active),
        .I2(no_ar_ack),
        .I3(s_axi_arvalid),
        .I4(rd_addr_sm_cs),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_1 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[5]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ),
        .O(axi_arlen_pipe_1_or_20));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(axi_arlen_pipe_1_or_20),
        .Q(axi_arlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[0]),
        .Q(axi_arlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[1]),
        .Q(axi_arlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[2]),
        .Q(axi_arlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[3]),
        .Q(axi_arlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[4]),
        .Q(axi_arlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[5]),
        .Q(axi_arlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[6]),
        .Q(axi_arlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arlen[7]),
        .Q(axi_arlen_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arsize[0]),
        .Q(axi_arsize_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arsize[1]),
        .Q(axi_arsize_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld54_out),
        .D(s_axi_arsize[2]),
        .Q(axi_arsize_pipe[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(end_brst_rd_clr),
        .I3(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20002020)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(ar_active),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I2(brst_zero),
        .I3(narrow_bram_addr_inc),
        .I4(curr_narrow_burst),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[10]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_bram_addr_inc),
        .I2(curr_narrow_burst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[11]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[8]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[9]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(bram_addr_ld[12]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(bram_addr_ld[13]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ),
        .Q(Q[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1154111011FE11BA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2 
       (.I0(narrow_addr_int[0]),
        .I1(narrow_addr_int[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEBEAFAEBFBFA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_14 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_15 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1 
       (.I0(curr_narrow_burst),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001015)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_15 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg_n_0_[0] ),
        .I2(axi_araddr_full),
        .I3(s_axi_araddr[0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00030302)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_17 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I1(axi_arsize_pipe[1]),
        .I2(axi_araddr_full),
        .I3(s_axi_arsize[1]),
        .I4(axi_arsize_pipe[2]),
        .I5(s_axi_arsize[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00001DFF00000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13 
       (.I0(s_axi_araddr[3]),
        .I1(axi_araddr_full),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg_n_0_[3] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_17 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_16 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4545454445444544)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1F3F)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7670)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEEB822B8EE882288)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBBBEB22288828)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I2(s_axi_arsize[1]),
        .I3(axi_araddr_full),
        .I4(axi_arsize_pipe[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCCAACCAAC0AAC000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19 
       (.I0(s_axi_arsize[2]),
        .I1(axi_arsize_pipe[2]),
        .I2(axi_arsize_pipe[1]),
        .I3(axi_araddr_full),
        .I4(s_axi_arsize[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h3F3FEBE82B28EB28)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_27_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21 
       (.I0(axi_arlen_pipe[6]),
        .I1(s_axi_arlen[6]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(axi_arlen_pipe[7]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_22 
       (.I0(axi_arlen_pipe[2]),
        .I1(s_axi_arlen[2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(axi_arlen_pipe[3]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCAACCAACCAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_23 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_24 
       (.I0(axi_arlen_pipe[3]),
        .I1(s_axi_arlen[3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(axi_arlen_pipe[2]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_25 
       (.I0(axi_arlen_pipe[7]),
        .I1(s_axi_arlen[7]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(axi_arlen_pipe[6]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_26 
       (.I0(axi_arlen_pipe[5]),
        .I1(s_axi_arlen[5]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(axi_arlen_pipe[4]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_27 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_28 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB0BB)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .I1(bram_addr_ld_en),
        .I2(narrow_bram_addr_inc_d1),
        .I3(narrow_bram_addr_inc),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001C0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9A99)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000BBBBBBBB0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .I1(bram_addr_ld_en),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[2]),
        .I5(narrow_addr_int[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020003)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8 
       (.I0(axi_arburst_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arburst[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9 
       (.I0(axi_arburst_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arburst[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .Q(narrow_addr_int[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .Q(narrow_addr_int[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .Q(narrow_addr_int[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(axi_araddr_full),
        .I2(axi_arsize_pipe[2]),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .O(narrow_burst_cnt_ld_reg[0]));
  LUT5 #(
    .INIT(32'h15FF1500)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(s_axi_arsize[1]),
        .I2(axi_araddr_full),
        .I3(axi_arsize_pipe[1]),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .O(narrow_burst_cnt_ld_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .I1(axi_arsize_pipe[1]),
        .I2(axi_araddr_full),
        .I3(s_axi_arsize[1]),
        .I4(axi_arsize_pipe[2]),
        .I5(s_axi_arsize[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h8888088800000800)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_6_n_0 ),
        .I4(curr_fixed_burst),
        .I5(curr_narrow_burst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFD7FFFFFFF7)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ),
        .I1(rlast_sm_cs[2]),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_b[0]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1 
       (.I0(rd_skid_buf[100]),
        .I1(bram_rddata_b[100]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0 ),
        .Q(s_axi_rdata[100]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1 
       (.I0(rd_skid_buf[101]),
        .I1(bram_rddata_b[101]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0 ),
        .Q(s_axi_rdata[101]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1 
       (.I0(rd_skid_buf[102]),
        .I1(bram_rddata_b[102]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0 ),
        .Q(s_axi_rdata[102]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1 
       (.I0(rd_skid_buf[103]),
        .I1(bram_rddata_b[103]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0 ),
        .Q(s_axi_rdata[103]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1 
       (.I0(rd_skid_buf[104]),
        .I1(bram_rddata_b[104]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0 ),
        .Q(s_axi_rdata[104]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1 
       (.I0(rd_skid_buf[105]),
        .I1(bram_rddata_b[105]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0 ),
        .Q(s_axi_rdata[105]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1 
       (.I0(rd_skid_buf[106]),
        .I1(bram_rddata_b[106]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0 ),
        .Q(s_axi_rdata[106]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1 
       (.I0(rd_skid_buf[107]),
        .I1(bram_rddata_b[107]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0 ),
        .Q(s_axi_rdata[107]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1 
       (.I0(rd_skid_buf[108]),
        .I1(bram_rddata_b[108]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0 ),
        .Q(s_axi_rdata[108]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1 
       (.I0(rd_skid_buf[109]),
        .I1(bram_rddata_b[109]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0 ),
        .Q(s_axi_rdata[109]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_b[10]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1 
       (.I0(rd_skid_buf[110]),
        .I1(bram_rddata_b[110]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0 ),
        .Q(s_axi_rdata[110]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1 
       (.I0(rd_skid_buf[111]),
        .I1(bram_rddata_b[111]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0 ),
        .Q(s_axi_rdata[111]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1 
       (.I0(rd_skid_buf[112]),
        .I1(bram_rddata_b[112]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0 ),
        .Q(s_axi_rdata[112]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1 
       (.I0(rd_skid_buf[113]),
        .I1(bram_rddata_b[113]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0 ),
        .Q(s_axi_rdata[113]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1 
       (.I0(rd_skid_buf[114]),
        .I1(bram_rddata_b[114]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0 ),
        .Q(s_axi_rdata[114]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1 
       (.I0(rd_skid_buf[115]),
        .I1(bram_rddata_b[115]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0 ),
        .Q(s_axi_rdata[115]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1 
       (.I0(rd_skid_buf[116]),
        .I1(bram_rddata_b[116]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0 ),
        .Q(s_axi_rdata[116]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1 
       (.I0(rd_skid_buf[117]),
        .I1(bram_rddata_b[117]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0 ),
        .Q(s_axi_rdata[117]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1 
       (.I0(rd_skid_buf[118]),
        .I1(bram_rddata_b[118]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0 ),
        .Q(s_axi_rdata[118]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1 
       (.I0(rd_skid_buf[119]),
        .I1(bram_rddata_b[119]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0 ),
        .Q(s_axi_rdata[119]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_b[11]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1 
       (.I0(rd_skid_buf[120]),
        .I1(bram_rddata_b[120]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0 ),
        .Q(s_axi_rdata[120]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1 
       (.I0(rd_skid_buf[121]),
        .I1(bram_rddata_b[121]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0 ),
        .Q(s_axi_rdata[121]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1 
       (.I0(rd_skid_buf[122]),
        .I1(bram_rddata_b[122]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0 ),
        .Q(s_axi_rdata[122]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1 
       (.I0(rd_skid_buf[123]),
        .I1(bram_rddata_b[123]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0 ),
        .Q(s_axi_rdata[123]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1 
       (.I0(rd_skid_buf[124]),
        .I1(bram_rddata_b[124]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0 ),
        .Q(s_axi_rdata[124]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1 
       (.I0(rd_skid_buf[125]),
        .I1(bram_rddata_b[125]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0 ),
        .Q(s_axi_rdata[125]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1 
       (.I0(rd_skid_buf[126]),
        .I1(bram_rddata_b[126]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0 ),
        .Q(s_axi_rdata[126]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010444051514040)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(axi_rdata_en));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_2 
       (.I0(rd_skid_buf[127]),
        .I1(bram_rddata_b[127]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_2_n_0 ),
        .Q(s_axi_rdata[127]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_b[12]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_b[13]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_b[14]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_b[15]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_b[16]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_b[17]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_b[18]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_b[19]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_b[1]),
        .I2(rddata_mux_sel),
        .O(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(p_0_in__0),
        .Q(s_axi_rdata[1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_b[20]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_b[21]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_b[22]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_b[23]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_b[24]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_b[25]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_b[26]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_b[27]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_b[28]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_b[29]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_b[2]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_b[30]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_b[31]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 
       (.I0(rd_skid_buf[32]),
        .I1(bram_rddata_b[32]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0 ),
        .Q(s_axi_rdata[32]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 
       (.I0(rd_skid_buf[33]),
        .I1(bram_rddata_b[33]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0 ),
        .Q(s_axi_rdata[33]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 
       (.I0(rd_skid_buf[34]),
        .I1(bram_rddata_b[34]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0 ),
        .Q(s_axi_rdata[34]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 
       (.I0(rd_skid_buf[35]),
        .I1(bram_rddata_b[35]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0 ),
        .Q(s_axi_rdata[35]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 
       (.I0(rd_skid_buf[36]),
        .I1(bram_rddata_b[36]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0 ),
        .Q(s_axi_rdata[36]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 
       (.I0(rd_skid_buf[37]),
        .I1(bram_rddata_b[37]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0 ),
        .Q(s_axi_rdata[37]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 
       (.I0(rd_skid_buf[38]),
        .I1(bram_rddata_b[38]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0 ),
        .Q(s_axi_rdata[38]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 
       (.I0(rd_skid_buf[39]),
        .I1(bram_rddata_b[39]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0 ),
        .Q(s_axi_rdata[39]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_b[3]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 
       (.I0(rd_skid_buf[40]),
        .I1(bram_rddata_b[40]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0 ),
        .Q(s_axi_rdata[40]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 
       (.I0(rd_skid_buf[41]),
        .I1(bram_rddata_b[41]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0 ),
        .Q(s_axi_rdata[41]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 
       (.I0(rd_skid_buf[42]),
        .I1(bram_rddata_b[42]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0 ),
        .Q(s_axi_rdata[42]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 
       (.I0(rd_skid_buf[43]),
        .I1(bram_rddata_b[43]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0 ),
        .Q(s_axi_rdata[43]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 
       (.I0(rd_skid_buf[44]),
        .I1(bram_rddata_b[44]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0 ),
        .Q(s_axi_rdata[44]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 
       (.I0(rd_skid_buf[45]),
        .I1(bram_rddata_b[45]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0 ),
        .Q(s_axi_rdata[45]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 
       (.I0(rd_skid_buf[46]),
        .I1(bram_rddata_b[46]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0 ),
        .Q(s_axi_rdata[46]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 
       (.I0(rd_skid_buf[47]),
        .I1(bram_rddata_b[47]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0 ),
        .Q(s_axi_rdata[47]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 
       (.I0(rd_skid_buf[48]),
        .I1(bram_rddata_b[48]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0 ),
        .Q(s_axi_rdata[48]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 
       (.I0(rd_skid_buf[49]),
        .I1(bram_rddata_b[49]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0 ),
        .Q(s_axi_rdata[49]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_b[4]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 
       (.I0(rd_skid_buf[50]),
        .I1(bram_rddata_b[50]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0 ),
        .Q(s_axi_rdata[50]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 
       (.I0(rd_skid_buf[51]),
        .I1(bram_rddata_b[51]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0 ),
        .Q(s_axi_rdata[51]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 
       (.I0(rd_skid_buf[52]),
        .I1(bram_rddata_b[52]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0 ),
        .Q(s_axi_rdata[52]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 
       (.I0(rd_skid_buf[53]),
        .I1(bram_rddata_b[53]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0 ),
        .Q(s_axi_rdata[53]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 
       (.I0(rd_skid_buf[54]),
        .I1(bram_rddata_b[54]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0 ),
        .Q(s_axi_rdata[54]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 
       (.I0(rd_skid_buf[55]),
        .I1(bram_rddata_b[55]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0 ),
        .Q(s_axi_rdata[55]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 
       (.I0(rd_skid_buf[56]),
        .I1(bram_rddata_b[56]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0 ),
        .Q(s_axi_rdata[56]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 
       (.I0(rd_skid_buf[57]),
        .I1(bram_rddata_b[57]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0 ),
        .Q(s_axi_rdata[57]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 
       (.I0(rd_skid_buf[58]),
        .I1(bram_rddata_b[58]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0 ),
        .Q(s_axi_rdata[58]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 
       (.I0(rd_skid_buf[59]),
        .I1(bram_rddata_b[59]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0 ),
        .Q(s_axi_rdata[59]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_b[5]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 
       (.I0(rd_skid_buf[60]),
        .I1(bram_rddata_b[60]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0 ),
        .Q(s_axi_rdata[60]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 
       (.I0(rd_skid_buf[61]),
        .I1(bram_rddata_b[61]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0 ),
        .Q(s_axi_rdata[61]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 
       (.I0(rd_skid_buf[62]),
        .I1(bram_rddata_b[62]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0 ),
        .Q(s_axi_rdata[62]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 
       (.I0(rd_skid_buf[63]),
        .I1(bram_rddata_b[63]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0 ),
        .Q(s_axi_rdata[63]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1 
       (.I0(rd_skid_buf[64]),
        .I1(bram_rddata_b[64]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0 ),
        .Q(s_axi_rdata[64]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1 
       (.I0(rd_skid_buf[65]),
        .I1(bram_rddata_b[65]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0 ),
        .Q(s_axi_rdata[65]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1 
       (.I0(rd_skid_buf[66]),
        .I1(bram_rddata_b[66]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0 ),
        .Q(s_axi_rdata[66]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1 
       (.I0(rd_skid_buf[67]),
        .I1(bram_rddata_b[67]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0 ),
        .Q(s_axi_rdata[67]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1 
       (.I0(rd_skid_buf[68]),
        .I1(bram_rddata_b[68]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0 ),
        .Q(s_axi_rdata[68]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1 
       (.I0(rd_skid_buf[69]),
        .I1(bram_rddata_b[69]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0 ),
        .Q(s_axi_rdata[69]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_b[6]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1 
       (.I0(rd_skid_buf[70]),
        .I1(bram_rddata_b[70]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0 ),
        .Q(s_axi_rdata[70]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1 
       (.I0(rd_skid_buf[71]),
        .I1(bram_rddata_b[71]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0 ),
        .Q(s_axi_rdata[71]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1 
       (.I0(rd_skid_buf[72]),
        .I1(bram_rddata_b[72]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0 ),
        .Q(s_axi_rdata[72]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1 
       (.I0(rd_skid_buf[73]),
        .I1(bram_rddata_b[73]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0 ),
        .Q(s_axi_rdata[73]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1 
       (.I0(rd_skid_buf[74]),
        .I1(bram_rddata_b[74]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0 ),
        .Q(s_axi_rdata[74]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1 
       (.I0(rd_skid_buf[75]),
        .I1(bram_rddata_b[75]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0 ),
        .Q(s_axi_rdata[75]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1 
       (.I0(rd_skid_buf[76]),
        .I1(bram_rddata_b[76]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0 ),
        .Q(s_axi_rdata[76]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1 
       (.I0(rd_skid_buf[77]),
        .I1(bram_rddata_b[77]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0 ),
        .Q(s_axi_rdata[77]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1 
       (.I0(rd_skid_buf[78]),
        .I1(bram_rddata_b[78]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0 ),
        .Q(s_axi_rdata[78]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1 
       (.I0(rd_skid_buf[79]),
        .I1(bram_rddata_b[79]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0 ),
        .Q(s_axi_rdata[79]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_b[7]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1 
       (.I0(rd_skid_buf[80]),
        .I1(bram_rddata_b[80]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0 ),
        .Q(s_axi_rdata[80]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1 
       (.I0(rd_skid_buf[81]),
        .I1(bram_rddata_b[81]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0 ),
        .Q(s_axi_rdata[81]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1 
       (.I0(rd_skid_buf[82]),
        .I1(bram_rddata_b[82]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0 ),
        .Q(s_axi_rdata[82]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1 
       (.I0(rd_skid_buf[83]),
        .I1(bram_rddata_b[83]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0 ),
        .Q(s_axi_rdata[83]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1 
       (.I0(rd_skid_buf[84]),
        .I1(bram_rddata_b[84]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0 ),
        .Q(s_axi_rdata[84]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1 
       (.I0(rd_skid_buf[85]),
        .I1(bram_rddata_b[85]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0 ),
        .Q(s_axi_rdata[85]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1 
       (.I0(rd_skid_buf[86]),
        .I1(bram_rddata_b[86]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0 ),
        .Q(s_axi_rdata[86]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1 
       (.I0(rd_skid_buf[87]),
        .I1(bram_rddata_b[87]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0 ),
        .Q(s_axi_rdata[87]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1 
       (.I0(rd_skid_buf[88]),
        .I1(bram_rddata_b[88]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0 ),
        .Q(s_axi_rdata[88]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1 
       (.I0(rd_skid_buf[89]),
        .I1(bram_rddata_b[89]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0 ),
        .Q(s_axi_rdata[89]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_b[8]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1 
       (.I0(rd_skid_buf[90]),
        .I1(bram_rddata_b[90]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0 ),
        .Q(s_axi_rdata[90]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1 
       (.I0(rd_skid_buf[91]),
        .I1(bram_rddata_b[91]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0 ),
        .Q(s_axi_rdata[91]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1 
       (.I0(rd_skid_buf[92]),
        .I1(bram_rddata_b[92]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0 ),
        .Q(s_axi_rdata[92]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1 
       (.I0(rd_skid_buf[93]),
        .I1(bram_rddata_b[93]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0 ),
        .Q(s_axi_rdata[93]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1 
       (.I0(rd_skid_buf[94]),
        .I1(bram_rddata_b[94]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0 ),
        .Q(s_axi_rdata[94]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1 
       (.I0(rd_skid_buf[95]),
        .I1(bram_rddata_b[95]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0 ),
        .Q(s_axi_rdata[95]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1 
       (.I0(rd_skid_buf[96]),
        .I1(bram_rddata_b[96]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0 ),
        .Q(s_axi_rdata[96]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1 
       (.I0(rd_skid_buf[97]),
        .I1(bram_rddata_b[97]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0 ),
        .Q(s_axi_rdata[97]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1 
       (.I0(rd_skid_buf[98]),
        .I1(bram_rddata_b[98]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0 ),
        .Q(s_axi_rdata[98]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1 
       (.I0(rd_skid_buf[99]),
        .I1(bram_rddata_b[99]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0 ),
        .Q(s_axi_rdata[99]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_b[9]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf[127]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[1]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[0]),
        .Q(rd_skid_buf[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[100] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[100]),
        .Q(rd_skid_buf[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[101] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[101]),
        .Q(rd_skid_buf[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[102] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[102]),
        .Q(rd_skid_buf[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[103] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[103]),
        .Q(rd_skid_buf[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[104] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[104]),
        .Q(rd_skid_buf[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[105] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[105]),
        .Q(rd_skid_buf[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[106] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[106]),
        .Q(rd_skid_buf[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[107] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[107]),
        .Q(rd_skid_buf[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[108] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[108]),
        .Q(rd_skid_buf[108]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[109] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[109]),
        .Q(rd_skid_buf[109]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[10]),
        .Q(rd_skid_buf[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[110] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[110]),
        .Q(rd_skid_buf[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[111] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[111]),
        .Q(rd_skid_buf[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[112] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[112]),
        .Q(rd_skid_buf[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[113] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[113]),
        .Q(rd_skid_buf[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[114] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[114]),
        .Q(rd_skid_buf[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[115] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[115]),
        .Q(rd_skid_buf[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[116] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[116]),
        .Q(rd_skid_buf[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[117] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[117]),
        .Q(rd_skid_buf[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[118] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[118]),
        .Q(rd_skid_buf[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[119] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[119]),
        .Q(rd_skid_buf[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[11]),
        .Q(rd_skid_buf[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[120] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[120]),
        .Q(rd_skid_buf[120]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[121] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[121]),
        .Q(rd_skid_buf[121]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[122] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[122]),
        .Q(rd_skid_buf[122]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[123] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[123]),
        .Q(rd_skid_buf[123]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[124] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[124]),
        .Q(rd_skid_buf[124]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[125] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[125]),
        .Q(rd_skid_buf[125]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[126] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[126]),
        .Q(rd_skid_buf[126]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[127]),
        .Q(rd_skid_buf[127]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[12]),
        .Q(rd_skid_buf[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[13]),
        .Q(rd_skid_buf[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[14]),
        .Q(rd_skid_buf[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[15]),
        .Q(rd_skid_buf[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[16]),
        .Q(rd_skid_buf[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[17]),
        .Q(rd_skid_buf[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[18]),
        .Q(rd_skid_buf[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[19]),
        .Q(rd_skid_buf[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[1]),
        .Q(rd_skid_buf[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[20]),
        .Q(rd_skid_buf[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[21]),
        .Q(rd_skid_buf[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[22]),
        .Q(rd_skid_buf[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[23]),
        .Q(rd_skid_buf[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[24]),
        .Q(rd_skid_buf[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[25]),
        .Q(rd_skid_buf[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[26]),
        .Q(rd_skid_buf[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[27]),
        .Q(rd_skid_buf[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[28]),
        .Q(rd_skid_buf[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[29]),
        .Q(rd_skid_buf[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[2]),
        .Q(rd_skid_buf[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[30]),
        .Q(rd_skid_buf[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[31]),
        .Q(rd_skid_buf[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[32] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[32]),
        .Q(rd_skid_buf[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[33] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[33]),
        .Q(rd_skid_buf[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[34] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[34]),
        .Q(rd_skid_buf[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[35] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[35]),
        .Q(rd_skid_buf[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[36] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[36]),
        .Q(rd_skid_buf[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[37] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[37]),
        .Q(rd_skid_buf[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[38] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[38]),
        .Q(rd_skid_buf[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[39] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[39]),
        .Q(rd_skid_buf[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[3]),
        .Q(rd_skid_buf[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[40] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[40]),
        .Q(rd_skid_buf[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[41] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[41]),
        .Q(rd_skid_buf[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[42] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[42]),
        .Q(rd_skid_buf[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[43] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[43]),
        .Q(rd_skid_buf[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[44] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[44]),
        .Q(rd_skid_buf[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[45] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[45]),
        .Q(rd_skid_buf[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[46] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[46]),
        .Q(rd_skid_buf[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[47] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[47]),
        .Q(rd_skid_buf[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[48] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[48]),
        .Q(rd_skid_buf[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[49] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[49]),
        .Q(rd_skid_buf[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[4]),
        .Q(rd_skid_buf[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[50] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[50]),
        .Q(rd_skid_buf[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[51] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[51]),
        .Q(rd_skid_buf[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[52] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[52]),
        .Q(rd_skid_buf[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[53] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[53]),
        .Q(rd_skid_buf[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[54] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[54]),
        .Q(rd_skid_buf[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[55] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[55]),
        .Q(rd_skid_buf[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[56] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[56]),
        .Q(rd_skid_buf[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[57] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[57]),
        .Q(rd_skid_buf[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[58] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[58]),
        .Q(rd_skid_buf[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[59] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[59]),
        .Q(rd_skid_buf[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[5]),
        .Q(rd_skid_buf[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[60] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[60]),
        .Q(rd_skid_buf[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[61] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[61]),
        .Q(rd_skid_buf[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[62] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[62]),
        .Q(rd_skid_buf[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[63] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[63]),
        .Q(rd_skid_buf[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[64] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[64]),
        .Q(rd_skid_buf[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[65] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[65]),
        .Q(rd_skid_buf[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[66] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[66]),
        .Q(rd_skid_buf[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[67] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[67]),
        .Q(rd_skid_buf[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[68] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[68]),
        .Q(rd_skid_buf[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[69] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[69]),
        .Q(rd_skid_buf[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[6]),
        .Q(rd_skid_buf[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[70] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[70]),
        .Q(rd_skid_buf[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[71] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[71]),
        .Q(rd_skid_buf[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[72] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[72]),
        .Q(rd_skid_buf[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[73] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[73]),
        .Q(rd_skid_buf[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[74] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[74]),
        .Q(rd_skid_buf[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[75] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[75]),
        .Q(rd_skid_buf[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[76] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[76]),
        .Q(rd_skid_buf[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[77] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[77]),
        .Q(rd_skid_buf[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[78] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[78]),
        .Q(rd_skid_buf[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[79] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[79]),
        .Q(rd_skid_buf[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[7]),
        .Q(rd_skid_buf[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[80] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[80]),
        .Q(rd_skid_buf[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[81] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[81]),
        .Q(rd_skid_buf[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[82] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[82]),
        .Q(rd_skid_buf[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[83] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[83]),
        .Q(rd_skid_buf[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[84] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[84]),
        .Q(rd_skid_buf[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[85] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[85]),
        .Q(rd_skid_buf[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[86] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[86]),
        .Q(rd_skid_buf[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[87] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[87]),
        .Q(rd_skid_buf[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[88] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[88]),
        .Q(rd_skid_buf[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[89] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[89]),
        .Q(rd_skid_buf[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[8]),
        .Q(rd_skid_buf[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[90] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[90]),
        .Q(rd_skid_buf[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[91] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[91]),
        .Q(rd_skid_buf[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[92] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[92]),
        .Q(rd_skid_buf[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[93] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[93]),
        .Q(rd_skid_buf[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[94] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[94]),
        .Q(rd_skid_buf[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[95] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[95]),
        .Q(rd_skid_buf[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[96] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[96]),
        .Q(rd_skid_buf[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[97] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[97]),
        .Q(rd_skid_buf[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[98] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[98]),
        .Q(rd_skid_buf[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[99] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[99]),
        .Q(rd_skid_buf[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[9]),
        .Q(rd_skid_buf[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1 
       (.I0(bram_addr_ld_en),
        .I1(brst_zero),
        .I2(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .O(axi_rd_burst0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4 
       (.I0(s_axi_arlen[4]),
        .I1(axi_arlen_pipe[4]),
        .I2(s_axi_arlen[6]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(axi_rd_burst0),
        .Q(axi_rd_burst),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(axi_araddr_full),
        .I2(axi_arlen_pipe[0]),
        .I3(axi_rd_burst0),
        .O(axi_rd_burst_two));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(axi_rd_burst_two),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(axi_b2b_brst),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2 
       (.I0(axi_b2b_brst),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(axi_rvalid_set),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[0]),
        .Q(s_axi_rid[0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[10]),
        .Q(s_axi_rid[10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[11]),
        .Q(s_axi_rid[11]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[12]),
        .Q(s_axi_rid[12]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[13]),
        .Q(s_axi_rid[13]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[14]),
        .Q(s_axi_rid[14]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[15]),
        .Q(s_axi_rid[15]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[1]),
        .Q(s_axi_rid[1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[2]),
        .Q(s_axi_rid[2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[3]),
        .Q(s_axi_rid[3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[4]),
        .Q(s_axi_rid[4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[5]),
        .Q(s_axi_rid[5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[6]),
        .Q(s_axi_rid[6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[7]),
        .Q(s_axi_rid[7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[8]),
        .Q(s_axi_rid[8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_2_n_0 ),
        .D(axi_rid_temp[9]),
        .Q(s_axi_rid[9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[0]_i_1 
       (.I0(axi_arid_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[0]),
        .O(axi_rid_temp20_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[10]_i_1 
       (.I0(axi_arid_pipe[10]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[10]),
        .O(axi_rid_temp20_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[11]_i_1 
       (.I0(axi_arid_pipe[11]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[11]),
        .O(axi_rid_temp20_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[12]_i_1 
       (.I0(axi_arid_pipe[12]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[12]),
        .O(axi_rid_temp20_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[13]_i_1 
       (.I0(axi_arid_pipe[13]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[13]),
        .O(axi_rid_temp20_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[14]_i_1 
       (.I0(axi_arid_pipe[14]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[14]),
        .O(axi_rid_temp20_in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[15]_i_1 
       (.I0(axi_rid_temp_full),
        .I1(bram_addr_ld_en),
        .O(axi_rid_temp20));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[15]_i_2 
       (.I0(axi_arid_pipe[15]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[15]),
        .O(axi_rid_temp20_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[1]_i_1 
       (.I0(axi_arid_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[1]),
        .O(axi_rid_temp20_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[2]_i_1 
       (.I0(axi_arid_pipe[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[2]),
        .O(axi_rid_temp20_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[3]_i_1 
       (.I0(axi_arid_pipe[3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[3]),
        .O(axi_rid_temp20_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[4]_i_1 
       (.I0(axi_arid_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[4]),
        .O(axi_rid_temp20_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[5]_i_1 
       (.I0(axi_arid_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[5]),
        .O(axi_rid_temp20_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[6]_i_1 
       (.I0(axi_arid_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[6]),
        .O(axi_rid_temp20_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[7]_i_1 
       (.I0(axi_arid_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[7]),
        .O(axi_rid_temp20_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[8]_i_1 
       (.I0(axi_arid_pipe[8]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[8]),
        .O(axi_rid_temp20_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[9]_i_1 
       (.I0(axi_arid_pipe[9]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[9]),
        .O(axi_rid_temp20_in[9]));
  LUT6 #(
    .INIT(64'hA0A02020F0000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_3_n_0 ),
        .I1(axi_rid_temp_full_d1),
        .I2(s_axi_aresetn),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2_full),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1_n_0 ),
        .Q(axi_rid_temp2_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[0]),
        .Q(axi_rid_temp2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[10]),
        .Q(axi_rid_temp2[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[11]),
        .Q(axi_rid_temp2[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[12]),
        .Q(axi_rid_temp2[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[13]),
        .Q(axi_rid_temp2[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[14]),
        .Q(axi_rid_temp2[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[15]),
        .Q(axi_rid_temp2[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[1]),
        .Q(axi_rid_temp2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[2]),
        .Q(axi_rid_temp2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[3]),
        .Q(axi_rid_temp2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[4]),
        .Q(axi_rid_temp2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[5]),
        .Q(axi_rid_temp2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[6]),
        .Q(axi_rid_temp2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[7]),
        .Q(axi_rid_temp2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[8]),
        .Q(axi_rid_temp2[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rid_temp20),
        .D(axi_rid_temp20_in[9]),
        .Q(axi_rid_temp2[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1 
       (.I0(axi_arid_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[0]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[10]_i_1 
       (.I0(axi_arid_pipe[10]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[10]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[10]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[11]_i_1 
       (.I0(axi_arid_pipe[11]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[11]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[11]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[12]_i_1 
       (.I0(axi_arid_pipe[12]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[12]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[12]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[13]_i_1 
       (.I0(axi_arid_pipe[13]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[13]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[13]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[14]_i_1 
       (.I0(axi_arid_pipe[14]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[14]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[14]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h50FF50D0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_3_n_0 ),
        .I1(axi_rid_temp_full_d1),
        .I2(axi_rid_temp2_full),
        .I3(axi_rid_temp_full),
        .I4(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_2 
       (.I0(axi_arid_pipe[15]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[15]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[15]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_3 
       (.I0(axi_rvalid_set),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(axi_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[1]_i_1 
       (.I0(axi_arid_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[1]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[2]_i_1 
       (.I0(axi_arid_pipe[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[2]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[3]_i_1 
       (.I0(axi_arid_pipe[3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[3]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[4]_i_1 
       (.I0(axi_arid_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[4]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[5]_i_1 
       (.I0(axi_arid_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[5]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[6]_i_1 
       (.I0(axi_arid_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[6]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[7]_i_1 
       (.I0(axi_arid_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[7]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[8]_i_1 
       (.I0(axi_arid_pipe[8]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[8]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[8]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[9]_i_1 
       (.I0(axi_arid_pipe[9]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[9]),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2[9]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rid_temp_full),
        .Q(axi_rid_temp_full_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA88AA88AAAA8088)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1 
       (.I0(s_axi_aresetn),
        .I1(axi_rid_temp2_full),
        .I2(axi_rid_temp_full_d1),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_3_n_0 ),
        .I4(bram_addr_ld_en),
        .I5(axi_rid_temp_full),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1_n_0 ),
        .Q(axi_rid_temp_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1_n_0 ),
        .Q(axi_rid_temp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[10]_i_1_n_0 ),
        .Q(axi_rid_temp[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .Q(axi_rid_temp[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[12]_i_1_n_0 ),
        .Q(axi_rid_temp[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[13]_i_1_n_0 ),
        .Q(axi_rid_temp[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[14]_i_1_n_0 ),
        .Q(axi_rid_temp[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_2_n_0 ),
        .Q(axi_rid_temp[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[1]_i_1_n_0 ),
        .Q(axi_rid_temp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[2]_i_1_n_0 ),
        .Q(axi_rid_temp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[3]_i_1_n_0 ),
        .Q(axi_rid_temp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[4]_i_1_n_0 ),
        .Q(axi_rid_temp[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[5]_i_1_n_0 ),
        .Q(axi_rid_temp[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[6]_i_1_n_0 ),
        .Q(axi_rid_temp[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[7]_i_1_n_0 ),
        .Q(axi_rid_temp[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[8]_i_1_n_0 ),
        .Q(axi_rid_temp[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[15]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[9]_i_1_n_0 ),
        .Q(axi_rid_temp[9]),
        .R(SR));
  u96v2_sbc_base_axi_bram_ctrl_0_0_ua_narrow_0 \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW 
       (.D({\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ,\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4 ,\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5 ,\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6 }),
        .DI(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_15 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_1 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_17 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg_n_0_[0] ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg_n_0_[1] ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg_n_0_[3] ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_0 (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg_n_0_[2] ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] (narrow_addr_int[2:0]),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 (narrow_burst_cnt_ld_reg),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ),
        .Q(axi_arsize_pipe),
        .axi_araddr_full(axi_araddr_full),
        .s_axi_araddr(s_axi_araddr[3:0]),
        .s_axi_araddr_0_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_14 ),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arsize_1_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_16 ));
  u96v2_sbc_base_axi_bram_ctrl_0_0_wrap_brst_1 \GEN_NO_RD_CMD_OPT.I_WRAP_BRST 
       (.D({bram_addr_ld,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 }),
        .E({bram_addr_ld_en_mod,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 }),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (Q[6:0]),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg (narrow_addr_int),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .\GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .Q(rd_data_sm_cs),
        .SR(SR),
        .ar_active(ar_active),
        .axi_araddr_full(axi_araddr_full),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_arlen_pipe_1_or_2(axi_arlen_pipe_1_or_2),
        .axi_arsize_pipe_max(axi_arsize_pipe_max),
        .axi_b2b_brst(axi_b2b_brst),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_ld_en(bram_addr_ld_en),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .disable_b2b_brst(disable_b2b_brst),
        .end_brst_rd(end_brst_rd),
        .end_brst_rd_clr_cmb(end_brst_rd_clr_cmb),
        .last_bram_addr(last_bram_addr),
        .narrow_bram_addr_inc(narrow_bram_addr_inc),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .no_ar_ack(no_ar_ack),
        .rd_addr_sm_cs(rd_addr_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[13:4]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arsize(s_axi_arsize[2:1]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .\save_init_bram_addr_ld_reg[13]_0 (\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .\wrap_burst_total_reg[0]_0 (axi_arlen_pipe[3:0]),
        .\wrap_burst_total_reg[1]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .\wrap_burst_total_reg[1]_1 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_16 ),
        .\wrap_burst_total_reg[2]_0 (axi_arsize_pipe[2:1]));
  LUT6 #(
    .INIT(64'h20000040FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010001300100010)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_5_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_6_n_0 ),
        .O(act_rd_burst_set));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3 
       (.I0(axi_rd_burst_two),
        .I1(bram_addr_ld_en),
        .I2(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(act_rd_burst_two),
        .I3(act_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F3FFFFAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I1(end_brst_rd),
        .I2(axi_b2b_brst),
        .I3(brst_zero),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hA8AAA888)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_6 
       (.I0(bram_addr_ld_en),
        .I1(axi_rd_burst0),
        .I2(axi_arlen_pipe[0]),
        .I3(axi_araddr_full),
        .I4(s_axi_arlen[0]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(act_rd_burst_set),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0 ),
        .Q(act_rd_burst),
        .R(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1 
       (.I0(axi_rd_burst_two),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(act_rd_burst_set),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ),
        .Q(act_rd_burst_two),
        .R(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(araddr_pipe_ld54_out),
        .I4(axi_arsize_pipe_max),
        .O(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ),
        .Q(axi_arsize_pipe_max),
        .R(SR));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3_n_0 ),
        .I4(axi_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000A2000000020)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3 
       (.I0(rd_data_sm_cs[0]),
        .I1(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_4_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(axi_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0DFFFFFFFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_4 
       (.I0(end_brst_rd),
        .I1(axi_b2b_brst),
        .I2(brst_zero),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ),
        .Q(axi_b2b_brst),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCC4444CCCCC000)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_aresetn),
        .I2(rlast_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88CC88C0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I1(s_axi_aresetn),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(axi_rvalid_clr_ok),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F888F888888)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ),
        .I1(end_brst_rd_clr_cmb),
        .I2(axi_rvalid_clr_ok),
        .I3(last_bram_addr),
        .I4(disable_b2b_brst),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ),
        .Q(axi_rvalid_clr_ok),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F007F007F000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(axi_rvalid_clr_ok),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(s_axi_aresetn),
        .I4(axi_rvalid_set),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFF2F0000002F)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_reg_i_4_n_0 ),
        .I3(rd_data_sm_cs[3]),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ),
        .I5(bram_en_b),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC20FF33FC00FCFC)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_10 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_12_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFFCCAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_11 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(end_brst_rd),
        .I2(axi_b2b_brst),
        .I3(brst_zero),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA8AAAA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_12 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .I4(brst_one),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_2 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEF7F6F)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_5 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0F10FF1F)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_6 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h007FFFFF007F0000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(bram_addr_ld_en),
        .I4(rd_data_sm_cs[2]),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_11_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_8 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_9 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ),
        .Q(bram_en_b),
        .R(SR));
  MUXF7 \GEN_NO_RD_CMD_OPT.bram_en_int_reg_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_reg_i_4_n_0 ),
        .S(rd_data_sm_cs[1]));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1 
       (.I0(axi_arlen_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1 
       (.I0(axi_arlen_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[0]),
        .I5(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[2]),
        .I3(brst_cnt[1]),
        .I4(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[3]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[0]),
        .I5(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[4]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2 
       (.I0(brst_cnt[3]),
        .I1(brst_cnt[2]),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[5]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[6]),
        .I3(brst_cnt[5]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2 
       (.I0(axi_arlen_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88BB8B8B8B8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[7]),
        .I3(brst_cnt[5]),
        .I4(brst_cnt[6]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3 
       (.I0(axi_arlen_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4 
       (.I0(brst_cnt[4]),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[3]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .Q(brst_cnt_max_d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ),
        .Q(brst_cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ),
        .Q(brst_cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ),
        .Q(brst_cnt[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ),
        .Q(brst_cnt[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ),
        .Q(brst_cnt[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ),
        .Q(brst_cnt[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ),
        .Q(brst_cnt[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ),
        .Q(brst_cnt[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000CFCA0000)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_1 
       (.I0(brst_one),
        .I1(axi_rd_burst_two),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ),
        .I4(s_axi_aresetn),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_one_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ),
        .Q(brst_one),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_1 
       (.I0(s_axi_aresetn),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I2(brst_zero),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'hAABAAAAABABABABA)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(disable_b2b_brst),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h00000000BFBBBFBF)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2 
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(brst_one),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF10FFFF)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(axi_rd_burst),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEEFFEF11000000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ),
        .Q(end_brst_rd_clr),
        .R(SR));
  LUT5 #(
    .INIT(32'h44440C00)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1 
       (.I0(end_brst_rd_clr),
        .I1(s_axi_aresetn),
        .I2(brst_cnt_max_d1),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .I4(end_brst_rd),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ),
        .Q(end_brst_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBAAAAAAAAAAAAFB)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[2]),
        .O(last_bram_addr0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2 
       (.I0(brst_cnt[1]),
        .I1(brst_cnt[0]),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rd_data_sm_cs[3]),
        .I3(axi_rd_burst),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA0200)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ),
        .I1(axi_rd_burst),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ),
        .I2(brst_cnt[7]),
        .I3(brst_cnt[4]),
        .I4(brst_cnt[5]),
        .I5(brst_cnt[6]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00C000FF00800000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .I5(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_7 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[3]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCCCCCCC050C0C0)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(no_ar_ack),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_i_2 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ),
        .Q(no_ar_ack),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFDFFFD500100015)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[3]),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCF00000FCFCFDF0F)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I1(rd_data_sm_cs[2]),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h07FF07000FFF0FFF)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4 
       (.I0(ar_active),
        .I1(end_brst_rd),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_8_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5 
       (.I0(rd_data_sm_cs[2]),
        .I1(bram_addr_ld_en),
        .I2(end_brst_rd),
        .I3(ar_active),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00700070007F0F7F)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6 
       (.I0(ar_active),
        .I1(end_brst_rd),
        .I2(rd_data_sm_cs[2]),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7070F0F0707FFFFF)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I5(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_8 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I2(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .R(SR));
  MUXF7 \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3_n_0 ),
        .S(rd_data_sm_cs[1]));
  LUT6 #(
    .INIT(64'h0000000000008FF0)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(SR));
  LUT4 #(
    .INIT(16'hFE02)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1 
       (.I0(rddata_mux_sel_cmb),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ),
        .I3(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000070447040)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(rddata_mux_sel_cmb));
  LUT6 #(
    .INIT(64'hF077F077000F00FF)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ),
        .Q(rddata_mux_sel),
        .R(SR));
  LUT4 #(
    .INIT(16'hEAAA)) 
    s_axi_arready_INST_0
       (.I0(axi_arready_int),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(axi_early_arready_int),
        .O(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_ua_narrow
   (\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ,
    D,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ,
    s_axi_awaddr_0_sp_1,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ,
    s_axi_awsize_1_sp_1,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ,
    s_axi_awsize,
    axi_awaddr_full,
    Q,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg );
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ;
  output [3:0]D;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ;
  output s_axi_awaddr_0_sp_1;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  output s_axi_awsize_1_sp_1;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  input [2:0]s_axi_awsize;
  input axi_awaddr_full;
  input [2:0]Q;
  input [0:0]\GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  input [3:0]\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  input [3:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;

  wire [3:0]D;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ;
  wire [0:0]\GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  wire [3:0]\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ;
  wire [2:0]Q;
  wire axi_awaddr_full;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awaddr_0_sn_1;
  wire [2:0]s_axi_awsize;
  wire s_axi_awsize_1_sn_1;
  wire ua_narrow_load1_carry_i_11_n_0;
  wire ua_narrow_load1_carry_i_12_n_0;
  wire ua_narrow_load1_carry_i_13_n_0;
  wire ua_narrow_load1_carry_i_14_n_0;
  wire ua_narrow_load1_carry_i_1_n_0;
  wire ua_narrow_load1_carry_i_2_n_0;
  wire ua_narrow_load1_carry_i_3_n_0;
  wire ua_narrow_load1_carry_i_4__0_n_0;
  wire ua_narrow_load1_carry_i_5_n_0;
  wire ua_narrow_load1_carry_i_6_n_0;
  wire ua_narrow_load1_carry_i_7_n_0;
  wire ua_narrow_load1_carry_n_5;
  wire ua_narrow_load1_carry_n_6;
  wire ua_narrow_load1_carry_n_7;
  wire [7:3]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  assign s_axi_awaddr_0_sp_1 = s_axi_awaddr_0_sn_1;
  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  LUT6 #(
    .INIT(64'h7777747744447444)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(ua_narrow_load1_carry_n_5),
        .I1(ua_narrow_load1_carry_i_11_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h82)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(ua_narrow_load1_carry_n_5),
        .I1(ua_narrow_load1_carry_i_12_n_0),
        .I2(ua_narrow_load1_carry_i_11_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h82828288)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(ua_narrow_load1_carry_n_5),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I3(ua_narrow_load1_carry_i_11_n_0),
        .I4(ua_narrow_load1_carry_i_3_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_19 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[1]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_2 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [3]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_20 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[0]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ));
  LUT6 #(
    .INIT(64'hFFF9FFFCFFF9FFF3)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_21 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF0200FD00000000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_5 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .I5(ua_narrow_load1_carry_n_5),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00600FFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_9 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I2(s_axi_awsize_1_sn_1),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ));
  CARRY8 ua_narrow_load1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[7:3],ua_narrow_load1_carry_n_5,ua_narrow_load1_carry_n_6,ua_narrow_load1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,ua_narrow_load1_carry_i_1_n_0,ua_narrow_load1_carry_i_2_n_0,ua_narrow_load1_carry_i_3_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,ua_narrow_load1_carry_i_4__0_n_0,ua_narrow_load1_carry_i_5_n_0,ua_narrow_load1_carry_i_6_n_0}));
  LUT6 #(
    .INIT(64'h0000000000011101)) 
    ua_narrow_load1_carry_i_1
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(Q[1]),
        .I5(ua_narrow_load1_carry_i_7_n_0),
        .O(ua_narrow_load1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h001DFFFFFFFFFFFF)) 
    ua_narrow_load1_carry_i_10
       (.I0(s_axi_awaddr[0]),
        .I1(axi_awaddr_full),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I4(ua_narrow_load1_carry_i_14_n_0),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .O(s_axi_awaddr_0_sn_1));
  LUT6 #(
    .INIT(64'h0B0B3B3808083B38)) 
    ua_narrow_load1_carry_i_11
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .O(ua_narrow_load1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF47000000)) 
    ua_narrow_load1_carry_i_12
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awsize_1_sn_1),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .O(ua_narrow_load1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hD0FFD0D0D0FFFFFF)) 
    ua_narrow_load1_carry_i_13
       (.I0(s_axi_awsize_1_sn_1),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I2(s_axi_awaddr_0_sn_1),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[2]),
        .O(ua_narrow_load1_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    ua_narrow_load1_carry_i_14
       (.I0(s_axi_awsize[2]),
        .I1(Q[2]),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(Q[1]),
        .O(ua_narrow_load1_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hB48B4B74)) 
    ua_narrow_load1_carry_i_15
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I2(s_axi_awaddr_0_sn_1),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I4(s_axi_awsize_1_sn_1),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ));
  LUT6 #(
    .INIT(64'h000000000077F700)) 
    ua_narrow_load1_carry_i_2
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I2(s_axi_awaddr_0_sn_1),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .O(ua_narrow_load1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000C0A0A000C0)) 
    ua_narrow_load1_carry_i_3
       (.I0(Q[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize_1_sn_1),
        .I3(s_axi_awaddr[3]),
        .I4(axi_awaddr_full),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .O(ua_narrow_load1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEEFE)) 
    ua_narrow_load1_carry_i_4__0
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(Q[1]),
        .I5(ua_narrow_load1_carry_i_7_n_0),
        .O(ua_narrow_load1_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFCF8FFF8F8F9F8F8)) 
    ua_narrow_load1_carry_i_5
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I4(s_axi_awaddr_0_sn_1),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .O(ua_narrow_load1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ua_narrow_load1_carry_i_6
       (.I0(ua_narrow_load1_carry_i_11_n_0),
        .I1(ua_narrow_load1_carry_i_12_n_0),
        .O(ua_narrow_load1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h8F008F8F8F000000)) 
    ua_narrow_load1_carry_i_7
       (.I0(s_axi_awsize_1_sn_1),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I2(ua_narrow_load1_carry_i_13_n_0),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(ua_narrow_load1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_8
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[3]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_9__0
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[2]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awsize[1]),
        .I1(Q[1]),
        .I2(s_axi_awsize[2]),
        .I3(axi_awaddr_full),
        .I4(Q[2]),
        .O(s_axi_awsize_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_2 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_3 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_4 
       (.I0(Q[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[0]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_ua_narrow_0
   (DI,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ,
    D,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ,
    s_axi_araddr_0_sp_1,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ,
    s_axi_arsize_1_sp_1,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_1 ,
    s_axi_arsize,
    axi_araddr_full,
    Q,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ,
    s_axi_araddr,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 );
  output [0:0]DI;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ;
  output [3:0]D;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ;
  output s_axi_araddr_0_sp_1;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ;
  output s_axi_arsize_1_sp_1;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_1 ;
  input [2:0]s_axi_arsize;
  input axi_araddr_full;
  input [2:0]Q;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ;
  input [2:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ;
  input [3:0]s_axi_araddr;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ;

  wire [3:0]D;
  wire [0:0]DI;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire [2:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ;
  wire [2:0]Q;
  wire axi_araddr_full;
  wire [3:0]s_axi_araddr;
  wire s_axi_araddr_0_sn_1;
  wire [2:0]s_axi_arsize;
  wire s_axi_arsize_1_sn_1;
  wire ua_narrow_load1_carry_i_15__0_n_0;
  wire ua_narrow_load1_carry_i_16_n_0;
  wire ua_narrow_load1_carry_i_1__0_n_0;
  wire ua_narrow_load1_carry_i_2__0_n_0;
  wire ua_narrow_load1_carry_i_4_n_0;
  wire ua_narrow_load1_carry_i_5__0_n_0;
  wire ua_narrow_load1_carry_i_6__0_n_0;
  wire ua_narrow_load1_carry_i_7__0_n_0;
  wire ua_narrow_load1_carry_n_5;
  wire ua_narrow_load1_carry_n_6;
  wire ua_narrow_load1_carry_n_7;
  wire [7:3]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  assign s_axi_araddr_0_sp_1 = s_axi_araddr_0_sn_1;
  assign s_axi_arsize_1_sp_1 = s_axi_arsize_1_sn_1;
  LUT6 #(
    .INIT(64'h4474777744744444)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] [0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .I2(ua_narrow_load1_carry_n_5),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_0 ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] [0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(ua_narrow_load1_carry_n_5),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] [2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(ua_narrow_load1_carry_n_5),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF5DFF08)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I1(ua_narrow_load1_carry_n_5),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [3]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_2 
       (.I0(Q[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_2 
       (.I0(Q[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ));
  CARRY8 ua_narrow_load1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[7:3],ua_narrow_load1_carry_n_5,ua_narrow_load1_carry_n_6,ua_narrow_load1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,ua_narrow_load1_carry_i_1__0_n_0,ua_narrow_load1_carry_i_2__0_n_0,DI}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,ua_narrow_load1_carry_i_4_n_0,ua_narrow_load1_carry_i_5__0_n_0,ua_narrow_load1_carry_i_6__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_10__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_0 ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h4B78B44B)) 
    ua_narrow_load1_carry_i_11__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I2(s_axi_arsize_1_sn_1),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ),
        .I4(s_axi_araddr_0_sn_1),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ));
  LUT5 #(
    .INIT(32'hFF01FF45)) 
    ua_narrow_load1_carry_i_12__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0A557D55)) 
    ua_narrow_load1_carry_i_13__0
       (.I0(ua_narrow_load1_carry_i_16_n_0),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ),
        .I3(s_axi_arsize_1_sn_1),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ));
  LUT6 #(
    .INIT(64'h2F002F2F2F000000)) 
    ua_narrow_load1_carry_i_14__0
       (.I0(s_axi_arsize_1_sn_1),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I2(s_axi_araddr_0_sn_1),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_0 ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    ua_narrow_load1_carry_i_15__0
       (.I0(s_axi_arsize[2]),
        .I1(Q[2]),
        .I2(s_axi_arsize[1]),
        .I3(axi_araddr_full),
        .I4(Q[1]),
        .O(ua_narrow_load1_carry_i_15__0_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFF4FFF8FFF7)) 
    ua_narrow_load1_carry_i_16
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .O(ua_narrow_load1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000000151)) 
    ua_narrow_load1_carry_i_1__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I1(s_axi_arsize[1]),
        .I2(axi_araddr_full),
        .I3(Q[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I5(ua_narrow_load1_carry_i_7__0_n_0),
        .O(ua_narrow_load1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0100011110111000)) 
    ua_narrow_load1_carry_i_2__0
       (.I0(ua_narrow_load1_carry_i_7__0_n_0),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I2(Q[1]),
        .I3(axi_araddr_full),
        .I4(s_axi_arsize[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .O(ua_narrow_load1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h000000C0A0A000C0)) 
    ua_narrow_load1_carry_i_3__0
       (.I0(Q[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize_1_sn_1),
        .I3(s_axi_araddr[3]),
        .I4(axi_araddr_full),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ),
        .O(DI));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEEE)) 
    ua_narrow_load1_carry_i_4
       (.I0(ua_narrow_load1_carry_i_7__0_n_0),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I2(Q[1]),
        .I3(axi_araddr_full),
        .I4(s_axi_arsize[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .O(ua_narrow_load1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF20FFA0FF24)) 
    ua_narrow_load1_carry_i_5__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ),
        .I1(s_axi_araddr_0_sn_1),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .O(ua_narrow_load1_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000000007370707)) 
    ua_narrow_load1_carry_i_6__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ),
        .O(ua_narrow_load1_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'hF800F8F8F8000000)) 
    ua_narrow_load1_carry_i_7__0
       (.I0(s_axi_arsize_1_sn_1),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[3]),
        .O(ua_narrow_load1_carry_i_7__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_8__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h00FF1DFFFFFFFFFF)) 
    ua_narrow_load1_carry_i_9
       (.I0(s_axi_araddr[0]),
        .I1(axi_araddr_full),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ),
        .I3(ua_narrow_load1_carry_i_15__0_n_0),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ),
        .O(s_axi_araddr_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \wrap_burst_total[1]_i_3__0 
       (.I0(s_axi_arsize[1]),
        .I1(Q[1]),
        .I2(s_axi_arsize[2]),
        .I3(axi_araddr_full),
        .I4(Q[2]),
        .O(s_axi_arsize_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_4__0 
       (.I0(Q[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] ));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_wr_chnl
   (axi_aresetn_re_reg,
    bram_en_a,
    bram_wrdata_a,
    axi_aresetn_d3,
    axi_bvalid_int_reg_0,
    s_axi_wready,
    \GEN_AWREADY.axi_aresetn_d3_reg_0 ,
    s_axi_awready,
    bram_addr_a,
    s_axi_bid,
    bram_we_a,
    SR,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awburst,
    s_axi_wlast,
    s_axi_awid,
    s_axi_wstrb);
  output axi_aresetn_re_reg;
  output bram_en_a;
  output [127:0]bram_wrdata_a;
  output axi_aresetn_d3;
  output axi_bvalid_int_reg_0;
  output s_axi_wready;
  output \GEN_AWREADY.axi_aresetn_d3_reg_0 ;
  output s_axi_awready;
  output [9:0]bram_addr_a;
  output [15:0]s_axi_bid;
  output [15:0]bram_we_a;
  input [0:0]SR;
  input s_axi_aclk;
  input [13:0]s_axi_awaddr;
  input [127:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_bready;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input s_axi_wlast;
  input [15:0]s_axi_awid;
  input [15:0]s_axi_wstrb;

  wire BID_FIFO_n_0;
  wire BID_FIFO_n_1;
  wire BID_FIFO_n_10;
  wire BID_FIFO_n_11;
  wire BID_FIFO_n_12;
  wire BID_FIFO_n_13;
  wire BID_FIFO_n_14;
  wire BID_FIFO_n_15;
  wire BID_FIFO_n_16;
  wire BID_FIFO_n_17;
  wire BID_FIFO_n_18;
  wire BID_FIFO_n_19;
  wire BID_FIFO_n_20;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_4;
  wire BID_FIFO_n_5;
  wire BID_FIFO_n_6;
  wire BID_FIFO_n_7;
  wire BID_FIFO_n_8;
  wire BID_FIFO_n_9;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ;
  wire \GEN_AWREADY.axi_aresetn_d3_reg_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_1_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_2_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_3_n_0 ;
  wire \GEN_AW_DUAL.aw_active_i_1_n_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_27_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_29_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_30_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_31_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_32_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_33_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_34_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_35_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_36_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_37_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_38_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2_n_0 ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_10 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_11 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_12 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_13 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_4 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_5 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_6 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_7 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_8 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_9 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ;
  wire I_WRAP_BRST_n_0;
  wire I_WRAP_BRST_n_10;
  wire I_WRAP_BRST_n_11;
  wire I_WRAP_BRST_n_12;
  wire I_WRAP_BRST_n_13;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire I_WRAP_BRST_n_18;
  wire I_WRAP_BRST_n_19;
  wire I_WRAP_BRST_n_2;
  wire I_WRAP_BRST_n_20;
  wire I_WRAP_BRST_n_3;
  wire I_WRAP_BRST_n_5;
  wire I_WRAP_BRST_n_8;
  wire I_WRAP_BRST_n_9;
  wire [0:0]SR;
  wire aw_active;
  wire axi_aresetn_d1;
  wire axi_aresetn_d2;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_awaddr_full;
  wire [1:0]axi_awburst_pipe;
  wire [15:0]axi_awid_pipe;
  wire [7:0]axi_awlen_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire axi_awlen_pipe_1_or_20;
  wire [2:0]axi_awsize_pipe;
  wire \axi_bid_int[15]_i_5_n_0 ;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wlast_d1;
  wire axi_wr_burst;
  wire axi_wr_burst_cmb;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_3_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_3_n_0;
  wire [9:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire bram_addr_ld_en_mod;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [15:0]bram_we_a;
  wire [127:0]bram_wrdata_a;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_2_n_0 ;
  wire clr_bram_we;
  wire clr_bram_we_cmb;
  wire curr_awlen_reg_1_or_2;
  wire curr_awlen_reg_1_or_20;
  wire curr_awlen_reg_1_or_2_i_2_n_0;
  wire curr_awlen_reg_1_or_2_i_3_n_0;
  wire curr_awlen_reg_1_or_2_i_4_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire delay_aw_active_clr;
  wire [3:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [3:0]narrow_burst_cnt_ld_reg;
  wire p_19_in;
  wire [8:7]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
  wire [2:0]wr_data_sm_cs;
  wire [2:0]wr_data_sm_ns__0;
  wire wrdata_reg_ld;

  u96v2_sbc_base_axi_bram_ctrl_0_0_SRL_FIFO BID_FIFO
       (.D({BID_FIFO_n_3,BID_FIFO_n_4,BID_FIFO_n_5,BID_FIFO_n_6,BID_FIFO_n_7,BID_FIFO_n_8,BID_FIFO_n_9,BID_FIFO_n_10,BID_FIFO_n_11,BID_FIFO_n_12,BID_FIFO_n_13,BID_FIFO_n_14,BID_FIFO_n_15,BID_FIFO_n_16,BID_FIFO_n_17,BID_FIFO_n_18}),
        .Data_Exists_DFF_0(wr_data_sm_cs),
        .Data_Exists_DFF_1(axi_bvalid_int_reg_0),
        .E(BID_FIFO_n_1),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] (BID_FIFO_n_19),
        .Q(bvalid_cnt),
        .SR(SR),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .\axi_bid_int_reg[0] (\axi_bid_int[15]_i_5_n_0 ),
        .\axi_bid_int_reg[15] (axi_awid_pipe),
        .axi_wr_burst(axi_wr_burst),
        .axi_wr_burst_reg(BID_FIFO_n_0),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bid_gets_fifo_load_d1_reg(bid_gets_fifo_load_d1_i_3_n_0),
        .bram_addr_ld_en(bram_addr_ld_en),
        .\bvalid_cnt_reg[1] (BID_FIFO_n_20),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_1 
       (.I0(axi_aresetn_d3),
        .O(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  LUT6 #(
    .INIT(64'h888888888B8B88BB)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[2]),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I3(BID_FIFO_n_20),
        .I4(wr_data_sm_cs[1]),
        .I5(wr_data_sm_cs[0]),
        .O(wr_data_sm_ns__0[0]));
  LUT6 #(
    .INIT(64'h00000000FF330F22)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 
       (.I0(BID_FIFO_n_20),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I3(wr_data_sm_cs[1]),
        .I4(wr_data_sm_cs[0]),
        .I5(wr_data_sm_cs[2]),
        .O(wr_data_sm_ns__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 
       (.I0(s_axi_wlast),
        .I1(axi_wr_burst),
        .I2(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0B0008003B383B38)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2 
       (.I0(wr_data_sm_cs[2]),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .O(wr_data_sm_ns__0[2]));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 
       (.I0(wr_data_sm_cs[1]),
        .I1(bram_addr_ld_en),
        .I2(axi_awaddr_full),
        .I3(BID_FIFO_n_20),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5 
       (.I0(BID_FIFO_n_20),
        .I1(s_axi_wlast),
        .I2(axi_wr_burst),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I2(axi_awlen_pipe_1_or_2),
        .I3(curr_awlen_reg_1_or_2),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .D(wr_data_sm_ns__0[0]),
        .Q(wr_data_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .D(wr_data_sm_ns__0[1]),
        .Q(wr_data_sm_cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .D(wr_data_sm_ns__0[2]),
        .Q(wr_data_sm_cs[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(axi_aresetn_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d1),
        .Q(axi_aresetn_d2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d2),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AWREADY.axi_aresetn_re_reg_i_1 
       (.I0(axi_aresetn_d1),
        .I1(axi_aresetn_d2),
        .O(axi_aresetn_re));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFBFFFFFAA00)) 
    \GEN_AWREADY.axi_awready_int_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(bram_addr_ld_en),
        .I4(axi_aresetn_re_reg),
        .I5(s_axi_awready),
        .O(\GEN_AWREADY.axi_awready_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440404040404040)) 
    \GEN_AWREADY.axi_awready_int_i_2 
       (.I0(\GEN_AWREADY.axi_awready_int_i_3_n_0 ),
        .I1(s_axi_awvalid),
        .I2(aw_active),
        .I3(bvalid_cnt[1]),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[2]),
        .O(\GEN_AWREADY.axi_awready_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    \GEN_AWREADY.axi_awready_int_i_3 
       (.I0(wr_addr_sm_cs),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ),
        .I2(axi_wlast_d1),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[1]),
        .O(\GEN_AWREADY.axi_awready_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_awready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AWREADY.axi_awready_int_i_1_n_0 ),
        .Q(s_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    \GEN_AW_DUAL.aw_active_i_1 
       (.I0(bram_addr_ld_en),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[2]),
        .I4(delay_aw_active_clr),
        .I5(aw_active),
        .O(\GEN_AW_DUAL.aw_active_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.aw_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.aw_active_i_1_n_0 ),
        .Q(aw_active),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_AW_DUAL.last_data_ack_mod_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .O(p_19_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.last_data_ack_mod_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_19_in),
        .Q(axi_wlast_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_1 
       (.I0(I_WRAP_BRST_n_16),
        .I1(wr_addr_sm_cs),
        .I2(s_axi_awvalid),
        .I3(axi_awaddr_full),
        .I4(I_WRAP_BRST_n_2),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ));
  FDRE \GEN_AW_DUAL.wr_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ),
        .Q(wr_addr_sm_cs),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[10]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[11]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[12]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[13]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[8]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[9]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4000EA00)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(s_axi_aresetn),
        .I4(bram_addr_ld_en),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ),
        .Q(axi_awaddr_full),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF00BF00BF00FF40)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I4(s_axi_awburst[1]),
        .I5(s_axi_awburst[0]),
        .O(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awburst[0]),
        .Q(axi_awburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awburst[1]),
        .Q(axi_awburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[0]),
        .Q(axi_awid_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[10]),
        .Q(axi_awid_pipe[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[11]),
        .Q(axi_awid_pipe[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[12]),
        .Q(axi_awid_pipe[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[13]),
        .Q(axi_awid_pipe[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[14]),
        .Q(axi_awid_pipe[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[15]),
        .Q(axi_awid_pipe[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[1]),
        .Q(axi_awid_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[2]),
        .Q(axi_awid_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[3]),
        .Q(axi_awid_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[4]),
        .Q(axi_awid_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[5]),
        .Q(axi_awid_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[6]),
        .Q(axi_awid_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[7]),
        .Q(axi_awid_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[8]),
        .Q(axi_awid_pipe[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[9]),
        .Q(axi_awid_pipe[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awlen[7]),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ),
        .O(axi_awlen_pipe_1_or_20));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awlen[2]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(axi_awlen_pipe_1_or_20),
        .Q(axi_awlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[0]),
        .Q(axi_awlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[1]),
        .Q(axi_awlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[2]),
        .Q(axi_awlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[3]),
        .Q(axi_awlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[4]),
        .Q(axi_awlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[5]),
        .Q(axi_awlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[6]),
        .Q(axi_awlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[7]),
        .Q(axi_awlen_pipe[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[0]),
        .Q(axi_awsize_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[1]),
        .Q(axi_awsize_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[2]),
        .Q(axi_awsize_pipe[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(bram_addr_a[5]),
        .I1(bram_addr_a[3]),
        .I2(bram_addr_a[0]),
        .I3(bram_addr_a[1]),
        .I4(bram_addr_a[2]),
        .I5(bram_addr_a[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_9),
        .Q(bram_addr_a[6]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_8),
        .Q(bram_addr_a[7]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[7]),
        .Q(bram_addr_a[8]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[8]),
        .Q(bram_addr_a[9]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_15),
        .Q(bram_addr_a[0]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_14),
        .Q(bram_addr_a[1]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_13),
        .Q(bram_addr_a[2]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_12),
        .Q(bram_addr_a[3]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_11),
        .Q(bram_addr_a[4]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_5),
        .D(I_WRAP_BRST_n_10),
        .Q(bram_addr_a[5]),
        .R(I_WRAP_BRST_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(narrow_addr_int[0]),
        .I1(narrow_addr_int[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_2 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00002000FFFFFFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_1 
       (.I0(curr_narrow_burst),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wvalid),
        .I4(wr_data_sm_cs[0]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CC0FFFBBCC0F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_10 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h202AAAAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_11 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awaddr[2]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000DF000000D2)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_12 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_13 
       (.I0(axi_awburst_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6A6A6A00)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_14 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBBFABBBBBBF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_15 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_27_n_0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_29_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A80AFAF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_16 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_30_n_0 ),
        .I1(I_WRAP_BRST_n_17),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(I_WRAP_BRST_n_18),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_31_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_17 
       (.I0(axi_awburst_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA2A2A2AAA2)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_18 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(s_axi_awsize[1]),
        .I4(axi_awaddr_full),
        .I5(axi_awsize_pipe[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_22 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I1(s_axi_awaddr[1]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_23 
       (.I0(axi_awsize_pipe[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .I3(axi_awsize_pipe[1]),
        .I4(s_axi_awsize[1]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0350035FF350F35F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_24 
       (.I0(I_WRAP_BRST_n_19),
        .I1(I_WRAP_BRST_n_20),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I4(I_WRAP_BRST_n_17),
        .I5(I_WRAP_BRST_n_18),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h5353533535355335)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_25 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_29_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(s_axi_awsize[1]),
        .I4(axi_awaddr_full),
        .I5(axi_awsize_pipe[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF407FFFFFFCFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_26 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_32_n_0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_33_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_34_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_35_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF35F0350F3500350)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_27 
       (.I0(I_WRAP_BRST_n_17),
        .I1(I_WRAP_BRST_n_18),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_36_n_0 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h47774777FFFF0000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_28 
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[5]),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_37_n_0 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0F770F77FFFF0000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_29 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[7]),
        .I2(axi_awlen_pipe[7]),
        .I3(axi_awaddr_full),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_38_n_0 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_3 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_bram_addr_inc),
        .I2(I_WRAP_BRST_n_3),
        .I3(bram_addr_ld_en),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBBBEB22288828)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_30 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_29_n_0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[1]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_28_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h5050303F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_31 
       (.I0(I_WRAP_BRST_n_18),
        .I1(I_WRAP_BRST_n_20),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(I_WRAP_BRST_n_19),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0F77FFFF0F770000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_32 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[0]),
        .I2(axi_awlen_pipe[0]),
        .I3(axi_awaddr_full),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I5(I_WRAP_BRST_n_19),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0F77FFFF0F770000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_33 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[6]),
        .I2(axi_awlen_pipe[6]),
        .I3(axi_awaddr_full),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I5(curr_awlen_reg_1_or_2_i_3_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFB888B888)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_34 
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[5]),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_37_n_0 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0F77FFFF0F770000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_35 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[2]),
        .I2(axi_awlen_pipe[2]),
        .I3(axi_awaddr_full),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I5(I_WRAP_BRST_n_18),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hD8880000D888FFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_36 
       (.I0(axi_awaddr_full),
        .I1(axi_awlen_pipe[1]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awvalid),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I5(I_WRAP_BRST_n_20),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_37 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[4]),
        .I2(axi_awlen_pipe[4]),
        .I3(axi_awaddr_full),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_38 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[6]),
        .I2(axi_awlen_pipe[6]),
        .I3(axi_awaddr_full),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_4 
       (.I0(narrow_addr_int[3]),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h54545554FFFFFFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_6 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555557)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_7 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I5(curr_fixed_burst),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF88593C)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_8 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .Q(narrow_addr_int[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .Q(narrow_addr_int[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .Q(narrow_addr_int[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(curr_narrow_burst),
        .I1(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[2]),
        .I5(narrow_addr_int[3]),
        .O(narrow_bram_addr_inc));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[0]),
        .O(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(axi_awaddr_full),
        .I2(axi_awsize_pipe[2]),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .O(narrow_burst_cnt_ld_reg[0]));
  LUT5 #(
    .INIT(32'h15FF1500)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(s_axi_awsize[1]),
        .I2(axi_awaddr_full),
        .I3(axi_awsize_pipe[1]),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1 
       (.I0(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .O(narrow_burst_cnt_ld_reg[3]));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2 
       (.I0(axi_awsize_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .I3(axi_awsize_pipe[2]),
        .I4(s_axi_awsize[2]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[3]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0FBB0F0000000000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(axi_wlast_d1),
        .I1(p_19_in),
        .I2(I_WRAP_BRST_n_3),
        .I3(curr_narrow_burst_en),
        .I4(curr_narrow_burst),
        .I5(s_axi_aresetn),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(curr_awlen_reg_1_or_20),
        .I1(I_WRAP_BRST_n_20),
        .I2(bram_addr_ld_en),
        .I3(curr_fixed_burst),
        .O(curr_narrow_burst_en));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  u96v2_sbc_base_axi_bram_ctrl_0_0_ua_narrow \GEN_UA_NARROW.I_UA_NARROW 
       (.D({\GEN_UA_NARROW.I_UA_NARROW_n_2 ,\GEN_UA_NARROW.I_UA_NARROW_n_3 ,\GEN_UA_NARROW.I_UA_NARROW_n_4 ,\GEN_UA_NARROW.I_UA_NARROW_n_5 }),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] (\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] (\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] (\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] (\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] (\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] (\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] (\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0] (narrow_addr_int[0]),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2] (\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 (\GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3] (\GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 (narrow_burst_cnt_ld_reg),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .Q(axi_awsize_pipe),
        .axi_awaddr_full(axi_awaddr_full),
        .s_axi_awaddr(s_axi_awaddr[3:0]),
        .s_axi_awaddr_0_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awsize_1_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_13 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(wr_data_sm_cs[1]),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .I2(BID_FIFO_n_20),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ),
        .O(axi_wdata_full_cmb));
  LUT6 #(
    .INIT(64'h000FC0CD000CC0CC)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 
       (.I0(BID_FIFO_n_20),
        .I1(axi_wdata_full_reg),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFEC00A8)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1 
       (.I0(wr_data_sm_cs[0]),
        .I1(BID_FIFO_n_20),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(bram_en_cmb));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 
       (.I0(bram_addr_ld_en),
        .I1(axi_awaddr_full),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(bram_en_a),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h000F0004)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1 
       (.I0(axi_wr_burst),
        .I1(BID_FIFO_n_19),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .I4(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ),
        .O(clr_bram_we_cmb));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(BID_FIFO_n_20),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_bram_we_cmb),
        .Q(clr_bram_we),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000EEEF0000EEE0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 
       (.I0(BID_FIFO_n_19),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ),
        .I2(clr_bram_we_cmb),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ),
        .I4(wr_data_sm_cs[2]),
        .I5(delay_aw_active_clr),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wvalid),
        .I4(wr_data_sm_cs[0]),
        .I5(s_axi_wlast),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ),
        .Q(delay_aw_active_clr),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[100].bram_wrdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[100]),
        .Q(bram_wrdata_a[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[101].bram_wrdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[101]),
        .Q(bram_wrdata_a[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[102].bram_wrdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[102]),
        .Q(bram_wrdata_a[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[103].bram_wrdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[103]),
        .Q(bram_wrdata_a[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[104].bram_wrdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[104]),
        .Q(bram_wrdata_a[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[105].bram_wrdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[105]),
        .Q(bram_wrdata_a[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[106].bram_wrdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[106]),
        .Q(bram_wrdata_a[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[107].bram_wrdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[107]),
        .Q(bram_wrdata_a[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[108].bram_wrdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[108]),
        .Q(bram_wrdata_a[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[109].bram_wrdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[109]),
        .Q(bram_wrdata_a[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[110].bram_wrdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[110]),
        .Q(bram_wrdata_a[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[111].bram_wrdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[111]),
        .Q(bram_wrdata_a[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[112].bram_wrdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[112]),
        .Q(bram_wrdata_a[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[113].bram_wrdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[113]),
        .Q(bram_wrdata_a[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[114].bram_wrdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[114]),
        .Q(bram_wrdata_a[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[115].bram_wrdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[115]),
        .Q(bram_wrdata_a[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[116].bram_wrdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[116]),
        .Q(bram_wrdata_a[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[117].bram_wrdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[117]),
        .Q(bram_wrdata_a[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[118].bram_wrdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[118]),
        .Q(bram_wrdata_a[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[119].bram_wrdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[119]),
        .Q(bram_wrdata_a[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[120].bram_wrdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[120]),
        .Q(bram_wrdata_a[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[121].bram_wrdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[121]),
        .Q(bram_wrdata_a[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[122].bram_wrdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[122]),
        .Q(bram_wrdata_a[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[123].bram_wrdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[123]),
        .Q(bram_wrdata_a[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[124].bram_wrdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[124]),
        .Q(bram_wrdata_a[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[125].bram_wrdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[125]),
        .Q(bram_wrdata_a[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[126].bram_wrdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[126]),
        .Q(bram_wrdata_a[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[127].bram_wrdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[127]),
        .Q(bram_wrdata_a[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[32].bram_wrdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[32]),
        .Q(bram_wrdata_a[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[33].bram_wrdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[33]),
        .Q(bram_wrdata_a[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[34].bram_wrdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[34]),
        .Q(bram_wrdata_a[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[35].bram_wrdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[35]),
        .Q(bram_wrdata_a[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[36].bram_wrdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[36]),
        .Q(bram_wrdata_a[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[37].bram_wrdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[37]),
        .Q(bram_wrdata_a[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[38].bram_wrdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[38]),
        .Q(bram_wrdata_a[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[39].bram_wrdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[39]),
        .Q(bram_wrdata_a[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[40].bram_wrdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[40]),
        .Q(bram_wrdata_a[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[41].bram_wrdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[41]),
        .Q(bram_wrdata_a[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[42].bram_wrdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[42]),
        .Q(bram_wrdata_a[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[43].bram_wrdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[43]),
        .Q(bram_wrdata_a[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[44].bram_wrdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[44]),
        .Q(bram_wrdata_a[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[45].bram_wrdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[45]),
        .Q(bram_wrdata_a[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[46].bram_wrdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[46]),
        .Q(bram_wrdata_a[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[47].bram_wrdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[47]),
        .Q(bram_wrdata_a[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[48].bram_wrdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[48]),
        .Q(bram_wrdata_a[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[49].bram_wrdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[49]),
        .Q(bram_wrdata_a[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[50].bram_wrdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[50]),
        .Q(bram_wrdata_a[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[51].bram_wrdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[51]),
        .Q(bram_wrdata_a[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[52].bram_wrdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[52]),
        .Q(bram_wrdata_a[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[53].bram_wrdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[53]),
        .Q(bram_wrdata_a[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[54].bram_wrdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[54]),
        .Q(bram_wrdata_a[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[55].bram_wrdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[55]),
        .Q(bram_wrdata_a[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[56].bram_wrdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[56]),
        .Q(bram_wrdata_a[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[57].bram_wrdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[57]),
        .Q(bram_wrdata_a[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[58].bram_wrdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[58]),
        .Q(bram_wrdata_a[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[59].bram_wrdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[59]),
        .Q(bram_wrdata_a[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[60].bram_wrdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[60]),
        .Q(bram_wrdata_a[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[61].bram_wrdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[61]),
        .Q(bram_wrdata_a[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[62].bram_wrdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[62]),
        .Q(bram_wrdata_a[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[63].bram_wrdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[63]),
        .Q(bram_wrdata_a[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[64].bram_wrdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[64]),
        .Q(bram_wrdata_a[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[65].bram_wrdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[65]),
        .Q(bram_wrdata_a[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[66].bram_wrdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[66]),
        .Q(bram_wrdata_a[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[67].bram_wrdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[67]),
        .Q(bram_wrdata_a[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[68].bram_wrdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[68]),
        .Q(bram_wrdata_a[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[69].bram_wrdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[69]),
        .Q(bram_wrdata_a[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[70].bram_wrdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[70]),
        .Q(bram_wrdata_a[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[71].bram_wrdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[71]),
        .Q(bram_wrdata_a[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[72].bram_wrdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[72]),
        .Q(bram_wrdata_a[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[73].bram_wrdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[73]),
        .Q(bram_wrdata_a[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[74].bram_wrdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[74]),
        .Q(bram_wrdata_a[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[75].bram_wrdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[75]),
        .Q(bram_wrdata_a[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[76].bram_wrdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[76]),
        .Q(bram_wrdata_a[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[77].bram_wrdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[77]),
        .Q(bram_wrdata_a[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[78].bram_wrdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[78]),
        .Q(bram_wrdata_a[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[79].bram_wrdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[79]),
        .Q(bram_wrdata_a[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[80].bram_wrdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[80]),
        .Q(bram_wrdata_a[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[81].bram_wrdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[81]),
        .Q(bram_wrdata_a[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[82].bram_wrdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[82]),
        .Q(bram_wrdata_a[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[83].bram_wrdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[83]),
        .Q(bram_wrdata_a[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[84].bram_wrdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[84]),
        .Q(bram_wrdata_a[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[85].bram_wrdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[85]),
        .Q(bram_wrdata_a[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[86].bram_wrdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[86]),
        .Q(bram_wrdata_a[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[87].bram_wrdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[87]),
        .Q(bram_wrdata_a[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[88].bram_wrdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[88]),
        .Q(bram_wrdata_a[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[89].bram_wrdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[89]),
        .Q(bram_wrdata_a[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[90].bram_wrdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[90]),
        .Q(bram_wrdata_a[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[91].bram_wrdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[91]),
        .Q(bram_wrdata_a[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[92].bram_wrdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[92]),
        .Q(bram_wrdata_a[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[93].bram_wrdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[93]),
        .Q(bram_wrdata_a[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[94].bram_wrdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[94]),
        .Q(bram_wrdata_a[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[95].bram_wrdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[95]),
        .Q(bram_wrdata_a[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[96].bram_wrdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[96]),
        .Q(bram_wrdata_a[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[97].bram_wrdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[97]),
        .Q(bram_wrdata_a[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[98].bram_wrdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[98]),
        .Q(bram_wrdata_a[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[99].bram_wrdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[99]),
        .Q(bram_wrdata_a[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7D50000FFFFFFFF)) 
    \GEN_WR_NO_ECC.bram_we_int[15]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \GEN_WR_NO_ECC.bram_we_int[15]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(bram_we_a[0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[10]),
        .Q(bram_we_a[10]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[11]),
        .Q(bram_we_a[11]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[12]),
        .Q(bram_we_a[12]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[13]),
        .Q(bram_we_a[13]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[14]),
        .Q(bram_we_a[14]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[15]),
        .Q(bram_we_a[15]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(bram_we_a[1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(bram_we_a[2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(bram_we_a[3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[4]),
        .Q(bram_we_a[4]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[5]),
        .Q(bram_we_a[5]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[6]),
        .Q(bram_we_a[6]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[7]),
        .Q(bram_we_a[7]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[8]),
        .Q(bram_we_a[8]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[9]),
        .Q(bram_we_a[9]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  u96v2_sbc_base_axi_bram_ctrl_0_0_wrap_brst I_WRAP_BRST
       (.D({p_1_in,I_WRAP_BRST_n_8,I_WRAP_BRST_n_9,I_WRAP_BRST_n_10,I_WRAP_BRST_n_11,I_WRAP_BRST_n_12,I_WRAP_BRST_n_13,I_WRAP_BRST_n_14,I_WRAP_BRST_n_15}),
        .E({bram_addr_ld_en_mod,I_WRAP_BRST_n_5}),
        .\GEN_AW_DUAL.aw_active_reg (I_WRAP_BRST_n_2),
        .\GEN_AW_DUAL.last_data_ack_mod_reg (I_WRAP_BRST_n_16),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] (I_WRAP_BRST_n_3),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 (narrow_addr_int),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .Q(wr_data_sm_cs),
        .SR(I_WRAP_BRST_n_0),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .axi_wlast_d1(axi_wlast_d1),
        .bram_addr_a(bram_addr_a[7:0]),
        .bram_addr_ld_en(bram_addr_ld_en),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .narrow_bram_addr_inc(narrow_bram_addr_inc),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[13:4]),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize[2:1]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(I_WRAP_BRST_n_17),
        .s_axi_awvalid_1(I_WRAP_BRST_n_18),
        .s_axi_awvalid_2(I_WRAP_BRST_n_19),
        .s_axi_awvalid_3(I_WRAP_BRST_n_20),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[13]_0 (bvalid_cnt),
        .\save_init_bram_addr_ld_reg[13]_1 (axi_aresetn_d3),
        .\save_init_bram_addr_ld_reg[13]_2 (\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .wr_addr_sm_cs(wr_addr_sm_cs),
        .\wrap_burst_total_reg[0]_0 (axi_awlen_pipe[3:0]),
        .\wrap_burst_total_reg[0]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .\wrap_burst_total_reg[0]_2 (SR),
        .\wrap_burst_total_reg[1]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\wrap_burst_total_reg[1]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .\wrap_burst_total_reg[1]_2 (\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .\wrap_burst_total_reg[2]_0 (axi_awsize_pipe[2:1]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \axi_bid_int[15]_i_5 
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[0]),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg_0),
        .O(\axi_bid_int[15]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_18),
        .Q(s_axi_bid[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_8),
        .Q(s_axi_bid[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_7),
        .Q(s_axi_bid[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_6),
        .Q(s_axi_bid[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_5),
        .Q(s_axi_bid[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_4),
        .Q(s_axi_bid[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_3),
        .Q(s_axi_bid[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_17),
        .Q(s_axi_bid[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_16),
        .Q(s_axi_bid[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_15),
        .Q(s_axi_bid[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_14),
        .Q(s_axi_bid[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_13),
        .Q(s_axi_bid[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_12),
        .Q(s_axi_bid[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_11),
        .Q(s_axi_bid[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_10),
        .Q(s_axi_bid[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_9),
        .Q(s_axi_bid[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hA8AAA8A8AAAAAAAA)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(\axi_bid_int[15]_i_5_n_0 ),
        .I4(bvalid_cnt[0]),
        .I5(BID_FIFO_n_0),
        .O(axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    axi_wr_burst_i_1
       (.I0(axi_wr_burst_cmb),
        .I1(axi_wr_burst_i_3_n_0),
        .I2(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h00030003DCDF1013)) 
    axi_wr_burst_i_2
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wlast),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(axi_wr_burst_cmb));
  LUT6 #(
    .INIT(64'h400C400C404C400C)) 
    axi_wr_burst_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .O(axi_wr_burst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h1)) 
    bid_gets_fifo_load_d1_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .O(bid_gets_fifo_load_d1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bvalid_cnt[0]_i_1 
       (.I0(bvalid_cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAA05550555EAAA)) 
    \bvalid_cnt[1]_i_1 
       (.I0(BID_FIFO_n_0),
        .I1(bvalid_cnt[2]),
        .I2(s_axi_bready),
        .I3(axi_bvalid_int_reg_0),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[1]),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888807777777F)) 
    \bvalid_cnt[2]_i_1 
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .I2(bvalid_cnt[0]),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(BID_FIFO_n_0),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C2B4D2B4D2B4D2)) 
    \bvalid_cnt[2]_i_2 
       (.I0(BID_FIFO_n_0),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[0]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bvalid_cnt[2]_i_1_n_0 ),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(bvalid_cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bvalid_cnt[2]_i_1_n_0 ),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(bvalid_cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bvalid_cnt[2]_i_1_n_0 ),
        .D(\bvalid_cnt[2]_i_2_n_0 ),
        .Q(bvalid_cnt[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    curr_awlen_reg_1_or_2_i_1
       (.I0(curr_awlen_reg_1_or_2_i_2_n_0),
        .I1(curr_awlen_reg_1_or_2_i_3_n_0),
        .I2(curr_awlen_reg_1_or_2_i_4_n_0),
        .I3(I_WRAP_BRST_n_19),
        .I4(I_WRAP_BRST_n_17),
        .I5(I_WRAP_BRST_n_18),
        .O(curr_awlen_reg_1_or_20));
  LUT6 #(
    .INIT(64'hFFAFFCACF0A0F0A0)) 
    curr_awlen_reg_1_or_2_i_2
       (.I0(axi_awlen_pipe[4]),
        .I1(s_axi_awlen[4]),
        .I2(axi_awaddr_full),
        .I3(axi_awlen_pipe[6]),
        .I4(s_axi_awlen[6]),
        .I5(s_axi_awvalid),
        .O(curr_awlen_reg_1_or_2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0F77)) 
    curr_awlen_reg_1_or_2_i_3
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[7]),
        .I2(axi_awlen_pipe[7]),
        .I3(axi_awaddr_full),
        .O(curr_awlen_reg_1_or_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    curr_awlen_reg_1_or_2_i_4
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[5]),
        .O(curr_awlen_reg_1_or_2_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_awlen_reg_1_or_2_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_awlen_reg_1_or_20),
        .Q(curr_awlen_reg_1_or_2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    curr_fixed_burst_reg_i_1
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(I_WRAP_BRST_n_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    curr_wrap_burst_reg_i_1
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(I_WRAP_BRST_n_0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_wrap_brst
   (SR,
    bram_addr_ld_en,
    \GEN_AW_DUAL.aw_active_reg ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ,
    E,
    D,
    \GEN_AW_DUAL.last_data_ack_mod_reg ,
    s_axi_awvalid_0,
    s_axi_awvalid_1,
    s_axi_awvalid_2,
    s_axi_awvalid_3,
    Q,
    s_axi_wvalid,
    s_axi_aresetn,
    aw_active,
    \save_init_bram_addr_ld_reg[13]_0 ,
    curr_narrow_burst,
    \wrap_burst_total_reg[2]_0 ,
    s_axi_awsize,
    \wrap_burst_total_reg[1]_0 ,
    axi_awaddr_full,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_awlen,
    s_axi_awvalid,
    narrow_bram_addr_inc_d1,
    narrow_bram_addr_inc,
    curr_fixed_burst_reg,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    bram_addr_a,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ,
    \save_init_bram_addr_ld_reg[13]_1 ,
    wr_addr_sm_cs,
    axi_wlast_d1,
    \save_init_bram_addr_ld_reg[13]_2 ,
    axi_awlen_pipe_1_or_2,
    curr_awlen_reg_1_or_2,
    curr_wrap_burst_reg,
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 ,
    \wrap_burst_total_reg[1]_1 ,
    \wrap_burst_total_reg[1]_2 ,
    \wrap_burst_total_reg[0]_1 ,
    \wrap_burst_total_reg[0]_2 ,
    s_axi_aclk);
  output [0:0]SR;
  output bram_addr_ld_en;
  output \GEN_AW_DUAL.aw_active_reg ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ;
  output [1:0]E;
  output [9:0]D;
  output \GEN_AW_DUAL.last_data_ack_mod_reg ;
  output s_axi_awvalid_0;
  output s_axi_awvalid_1;
  output s_axi_awvalid_2;
  output s_axi_awvalid_3;
  input [2:0]Q;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input aw_active;
  input [2:0]\save_init_bram_addr_ld_reg[13]_0 ;
  input curr_narrow_burst;
  input [1:0]\wrap_burst_total_reg[2]_0 ;
  input [1:0]s_axi_awsize;
  input \wrap_burst_total_reg[1]_0 ;
  input axi_awaddr_full;
  input [3:0]\wrap_burst_total_reg[0]_0 ;
  input [3:0]s_axi_awlen;
  input s_axi_awvalid;
  input narrow_bram_addr_inc_d1;
  input narrow_bram_addr_inc;
  input curr_fixed_burst_reg;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  input [7:0]bram_addr_a;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  input [9:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  input \save_init_bram_addr_ld_reg[13]_1 ;
  input wr_addr_sm_cs;
  input axi_wlast_d1;
  input \save_init_bram_addr_ld_reg[13]_2 ;
  input axi_awlen_pipe_1_or_2;
  input curr_awlen_reg_1_or_2;
  input curr_wrap_burst_reg;
  input [3:0]\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 ;
  input \wrap_burst_total_reg[1]_1 ;
  input \wrap_burst_total_reg[1]_2 ;
  input \wrap_burst_total_reg[0]_1 ;
  input [0:0]\wrap_burst_total_reg[0]_2 ;
  input s_axi_aclk;

  wire [9:0]D;
  wire [1:0]E;
  wire \GEN_AW_DUAL.aw_active_reg ;
  wire \GEN_AW_DUAL.last_data_ack_mod_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_10_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ;
  wire [3:0]\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_8_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_9_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aw_active;
  wire axi_awaddr_full;
  wire axi_awlen_pipe_1_or_2;
  wire axi_wlast_d1;
  wire [7:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire curr_awlen_reg_1_or_2;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire [9:1]data0;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [6:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [9:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire s_axi_awvalid_1;
  wire s_axi_awvalid_2;
  wire s_axi_awvalid_3;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld[13]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[5]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[6]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[7]_i_2_n_0 ;
  wire [2:0]\save_init_bram_addr_ld_reg[13]_0 ;
  wire \save_init_bram_addr_ld_reg[13]_1 ;
  wire \save_init_bram_addr_ld_reg[13]_2 ;
  wire wr_addr_sm_cs;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_2_n_0 ;
  wire \wrap_burst_total[0]_i_4__0_n_0 ;
  wire \wrap_burst_total[0]_i_5_n_0 ;
  wire \wrap_burst_total[2]_i_5__0_n_0 ;
  wire [2:0]wrap_burst_total_cmb;
  wire [3:0]\wrap_burst_total_reg[0]_0 ;
  wire \wrap_burst_total_reg[0]_1 ;
  wire [0:0]\wrap_burst_total_reg[0]_2 ;
  wire \wrap_burst_total_reg[1]_0 ;
  wire \wrap_burst_total_reg[1]_1 ;
  wire \wrap_burst_total_reg[1]_2 ;
  wire [1:0]\wrap_burst_total_reg[2]_0 ;

  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(bram_addr_a[6]),
        .I1(bram_addr_a[4]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .I3(bram_addr_a[5]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I5(p_1_in[5]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(bram_addr_a[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I2(bram_addr_a[6]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I4(p_1_in[6]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(data0[8]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_axi_wvalid),
        .I3(Q[2]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ),
        .I5(s_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_10 
       (.I0(Q[0]),
        .I1(s_axi_wvalid),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(curr_narrow_burst),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_2 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .O(E[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3 
       (.I0(data0[9]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAAA8088AAAAA2AA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I1(curr_narrow_burst),
        .I2(narrow_bram_addr_inc_d1),
        .I3(narrow_bram_addr_inc),
        .I4(curr_fixed_burst_reg),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554555555)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(s_axi_wvalid),
        .I5(Q[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h15FF15FFFFFF15FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_8_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .I2(\save_init_bram_addr_ld[7]_i_2_n_0 ),
        .I3(curr_wrap_burst_reg),
        .I4(curr_narrow_burst),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_9_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5040004010400040)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_8 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(bram_addr_a[0]),
        .I3(wrap_burst_total[1]),
        .I4(bram_addr_a[1]),
        .I5(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_9 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 [3]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 [2]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 [0]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_7_0 [1]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_10_n_0 ),
        .I5(narrow_bram_addr_inc_d1),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(bram_addr_a[0]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[0]),
        .I5(bram_addr_ld_en),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(bram_addr_a[0]),
        .I1(bram_addr_a[1]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I3(p_1_in[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(bram_addr_a[2]),
        .I1(bram_addr_a[1]),
        .I2(bram_addr_a[0]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I4(p_1_in[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I5(p_1_in[2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(bram_addr_a[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I3(p_1_in[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(bram_addr_a[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .I2(bram_addr_a[4]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .I4(p_1_in[4]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h0F77)) 
    curr_awlen_reg_1_or_2_i_5
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[1]),
        .I2(\wrap_burst_total_reg[0]_0 [1]),
        .I3(axi_awaddr_full),
        .O(s_axi_awvalid_2));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(data0[6]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[6]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(data0[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[7]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008880)) 
    \save_init_bram_addr_ld[13]_i_1 
       (.I0(\save_init_bram_addr_ld_reg[13]_1 ),
        .I1(\GEN_AW_DUAL.aw_active_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .I4(wr_addr_sm_cs),
        .I5(\GEN_AW_DUAL.last_data_ack_mod_reg ),
        .O(bram_addr_ld_en));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \save_init_bram_addr_ld[13]_i_2__0 
       (.I0(aw_active),
        .I1(\save_init_bram_addr_ld_reg[13]_0 [1]),
        .I2(\save_init_bram_addr_ld_reg[13]_0 [0]),
        .I3(\save_init_bram_addr_ld_reg[13]_0 [2]),
        .O(\GEN_AW_DUAL.aw_active_reg ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \save_init_bram_addr_ld[13]_i_3 
       (.I0(\save_init_bram_addr_ld[13]_i_4_n_0 ),
        .I1(axi_wlast_d1),
        .I2(axi_awaddr_full),
        .I3(\save_init_bram_addr_ld_reg[13]_2 ),
        .I4(axi_awlen_pipe_1_or_2),
        .I5(curr_awlen_reg_1_or_2),
        .O(\GEN_AW_DUAL.last_data_ack_mod_reg ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \save_init_bram_addr_ld[13]_i_4 
       (.I0(\save_init_bram_addr_ld_reg[13]_0 [2]),
        .I1(\save_init_bram_addr_ld_reg[13]_0 [0]),
        .I2(\save_init_bram_addr_ld_reg[13]_0 [1]),
        .O(\save_init_bram_addr_ld[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(\save_init_bram_addr_ld[5]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \save_init_bram_addr_ld[5]_i_2 
       (.I0(data0[1]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(\save_init_bram_addr_ld[6]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[2]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hA28A)) 
    \save_init_bram_addr_ld[6]_i_2 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(data0[3]),
        .I1(\save_init_bram_addr_ld[7]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[7]_i_2 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\save_init_bram_addr_ld[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(data0[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[4]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(data0[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[5]),
        .O(p_1_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[5]),
        .Q(data0[6]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[6]),
        .Q(data0[7]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[8]),
        .Q(data0[8]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[9]),
        .Q(data0[9]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[0]),
        .Q(data0[1]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[1]),
        .Q(data0[2]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[2]),
        .Q(data0[3]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[3]),
        .Q(data0[4]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[4]),
        .Q(data0[5]),
        .R(\wrap_burst_total_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \wrap_burst_total[0]_i_1 
       (.I0(\wrap_burst_total[0]_i_2_n_0 ),
        .I1(\wrap_burst_total_reg[0]_1 ),
        .I2(\wrap_burst_total_reg[1]_0 ),
        .I3(s_axi_awvalid_0),
        .I4(\wrap_burst_total[0]_i_4__0_n_0 ),
        .I5(\wrap_burst_total[0]_i_5_n_0 ),
        .O(wrap_burst_total_cmb[0]));
  LUT6 #(
    .INIT(64'h000000000000800C)) 
    \wrap_burst_total[0]_i_2 
       (.I0(\wrap_burst_total_reg[1]_2 ),
        .I1(\wrap_burst_total_reg[1]_0 ),
        .I2(s_axi_awvalid_0),
        .I3(s_axi_awvalid_1),
        .I4(\wrap_burst_total[2]_i_5__0_n_0 ),
        .I5(\wrap_burst_total_reg[1]_1 ),
        .O(\wrap_burst_total[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hFBEAEAEA)) 
    \wrap_burst_total[0]_i_4__0 
       (.I0(\wrap_burst_total[2]_i_5__0_n_0 ),
        .I1(axi_awaddr_full),
        .I2(\wrap_burst_total_reg[0]_0 [3]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awvalid),
        .O(\wrap_burst_total[0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h00900000)) 
    \wrap_burst_total[0]_i_5 
       (.I0(s_axi_awvalid_2),
        .I1(s_axi_awvalid_0),
        .I2(s_axi_awvalid_1),
        .I3(s_axi_awvalid_3),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .O(\wrap_burst_total[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \wrap_burst_total[0]_i_6 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[0]),
        .I2(\wrap_burst_total_reg[0]_0 [0]),
        .I3(axi_awaddr_full),
        .O(s_axi_awvalid_3));
  LUT6 #(
    .INIT(64'h0010040400100010)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\wrap_burst_total[2]_i_5__0_n_0 ),
        .I1(\wrap_burst_total_reg[1]_1 ),
        .I2(\wrap_burst_total_reg[1]_2 ),
        .I3(s_axi_awvalid_0),
        .I4(\wrap_burst_total_reg[1]_0 ),
        .I5(s_axi_awvalid_1),
        .O(wrap_burst_total_cmb[1]));
  LUT4 #(
    .INIT(16'h0002)) 
    \wrap_burst_total[2]_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I1(s_axi_awvalid_0),
        .I2(s_axi_awvalid_1),
        .I3(\wrap_burst_total[2]_i_5__0_n_0 ),
        .O(wrap_burst_total_cmb[2]));
  LUT6 #(
    .INIT(64'h0505030000000300)) 
    \wrap_burst_total[2]_i_2 
       (.I0(\wrap_burst_total_reg[2]_0 [0]),
        .I1(s_axi_awsize[0]),
        .I2(\wrap_burst_total_reg[1]_0 ),
        .I3(s_axi_awsize[1]),
        .I4(axi_awaddr_full),
        .I5(\wrap_burst_total_reg[2]_0 [1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \wrap_burst_total[2]_i_3__0 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[2]),
        .I2(\wrap_burst_total_reg[0]_0 [2]),
        .I3(axi_awaddr_full),
        .O(s_axi_awvalid_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h0F77)) 
    \wrap_burst_total[2]_i_4__0 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[3]),
        .I2(\wrap_burst_total_reg[0]_0 [3]),
        .I3(axi_awaddr_full),
        .O(s_axi_awvalid_1));
  LUT6 #(
    .INIT(64'h53F35FFF5FFF5FFF)) 
    \wrap_burst_total[2]_i_5__0 
       (.I0(\wrap_burst_total_reg[0]_0 [0]),
        .I1(s_axi_awlen[0]),
        .I2(axi_awaddr_full),
        .I3(\wrap_burst_total_reg[0]_0 [1]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awvalid),
        .O(\wrap_burst_total[2]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(\wrap_burst_total_reg[0]_2 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module u96v2_sbc_base_axi_bram_ctrl_0_0_wrap_brst_1
   (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ,
    SR,
    D,
    bram_addr_ld_en,
    E,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ,
    narrow_bram_addr_inc,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ,
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg ,
    end_brst_rd_clr_cmb,
    s_axi_rready_0,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ,
    Q,
    end_brst_rd,
    brst_zero,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] ,
    s_axi_rready,
    axi_b2b_brst,
    \wrap_burst_total_reg[2]_0 ,
    s_axi_arsize,
    \wrap_burst_total_reg[1]_0 ,
    axi_araddr_full,
    s_axi_aresetn,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    s_axi_araddr,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ,
    curr_fixed_burst_reg,
    curr_narrow_burst,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ,
    narrow_bram_addr_inc_d1,
    curr_wrap_burst_reg,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 ,
    axi_aresetn_d3,
    rd_addr_sm_cs,
    last_bram_addr,
    axi_arsize_pipe_max,
    disable_b2b_brst,
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ,
    axi_arlen_pipe_1_or_2,
    axi_rd_burst,
    \save_init_bram_addr_ld_reg[13]_0 ,
    ar_active,
    no_ar_ack,
    s_axi_arvalid,
    \wrap_burst_total_reg[1]_1 ,
    s_axi_arlen,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_aclk);
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ;
  output [0:0]SR;
  output [9:0]D;
  output bram_addr_ld_en;
  output [1:0]E;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  output narrow_bram_addr_inc;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg ;
  output end_brst_rd_clr_cmb;
  output s_axi_rready_0;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  input [3:0]Q;
  input end_brst_rd;
  input brst_zero;
  input \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] ;
  input s_axi_rready;
  input axi_b2b_brst;
  input [1:0]\wrap_burst_total_reg[2]_0 ;
  input [1:0]s_axi_arsize;
  input \wrap_burst_total_reg[1]_0 ;
  input axi_araddr_full;
  input s_axi_aresetn;
  input [6:0]\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  input [9:0]s_axi_araddr;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ;
  input curr_fixed_burst_reg;
  input curr_narrow_burst;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ;
  input narrow_bram_addr_inc_d1;
  input curr_wrap_burst_reg;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ;
  input \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 ;
  input axi_aresetn_d3;
  input rd_addr_sm_cs;
  input last_bram_addr;
  input axi_arsize_pipe_max;
  input disable_b2b_brst;
  input \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ;
  input axi_arlen_pipe_1_or_2;
  input axi_rd_burst;
  input \save_init_bram_addr_ld_reg[13]_0 ;
  input ar_active;
  input no_ar_ack;
  input s_axi_arvalid;
  input \wrap_burst_total_reg[1]_1 ;
  input [3:0]s_axi_arlen;
  input [3:0]\wrap_burst_total_reg[0]_0 ;
  input s_axi_aclk;

  wire [9:0]D;
  wire [1:0]E;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ;
  wire [6:0]\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ar_active;
  wire axi_araddr_full;
  wire axi_aresetn_d3;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_rd_burst;
  wire [11:5]bram_addr_ld;
  wire bram_addr_ld_en;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire [9:1]data0;
  wire disable_b2b_brst;
  wire end_brst_rd;
  wire end_brst_rd_clr_cmb;
  wire last_bram_addr;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire no_ar_ack;
  wire rd_addr_sm_cs;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire \save_init_bram_addr_ld[13]_i_2_n_0 ;
  wire \save_init_bram_addr_ld_reg[13]_0 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_2__0_n_0 ;
  wire \wrap_burst_total[0]_i_3__0_n_0 ;
  wire \wrap_burst_total[0]_i_4_n_0 ;
  wire \wrap_burst_total[1]_i_2__0_n_0 ;
  wire \wrap_burst_total[1]_i_5_n_0 ;
  wire [2:0]wrap_burst_total_cmb;
  wire [3:0]\wrap_burst_total_reg[0]_0 ;
  wire \wrap_burst_total_reg[1]_0 ;
  wire \wrap_burst_total_reg[1]_1 ;
  wire [1:0]\wrap_burst_total_reg[2]_0 ;

  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] ),
        .I5(s_axi_rready),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(data0[6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hEFEFEFEEEEEEEEEE)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(curr_fixed_burst_reg),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I4(curr_narrow_burst),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(data0[7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000001FF0DFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7 
       (.I0(axi_rd_burst),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF2FFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8 
       (.I0(end_brst_rd),
        .I1(axi_b2b_brst),
        .I2(brst_zero),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] ),
        .I4(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABBAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(data0[8]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .O(E[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_2 
       (.I0(data0[9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h000000005D000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc),
        .I2(narrow_bram_addr_inc_d1),
        .I3(curr_wrap_burst_reg),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5040004010400040)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [0]),
        .I3(wrap_burst_total[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5151510101510101)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [0]),
        .I2(bram_addr_ld_en),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA08A)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2 
       (.I0(data0[1]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hA28A)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222F0FF2222F000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(data0[3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(data0[4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [4]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(data0[5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] [5]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg [2]),
        .I4(curr_narrow_burst),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .O(narrow_bram_addr_inc));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3 
       (.I0(s_axi_rready),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] ),
        .O(s_axi_rready_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_2 
       (.I0(axi_arsize_pipe_max),
        .I1(axi_araddr_full),
        .I2(disable_b2b_brst),
        .I3(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ),
        .I4(axi_arlen_pipe_1_or_2),
        .O(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_b_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(data0[6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[6]),
        .O(bram_addr_ld[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(data0[7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[7]),
        .O(bram_addr_ld[11]));
  LUT5 #(
    .INIT(32'h0808AA08)) 
    \save_init_bram_addr_ld[13]_i_1__0 
       (.I0(axi_aresetn_d3),
        .I1(\save_init_bram_addr_ld[13]_i_2_n_0 ),
        .I2(rd_addr_sm_cs),
        .I3(last_bram_addr),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ),
        .O(bram_addr_ld_en));
  LUT5 #(
    .INIT(32'h01010100)) 
    \save_init_bram_addr_ld[13]_i_2 
       (.I0(\save_init_bram_addr_ld_reg[13]_0 ),
        .I1(ar_active),
        .I2(no_ar_ack),
        .I3(s_axi_arvalid),
        .I4(axi_araddr_full),
        .O(\save_init_bram_addr_ld[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55D555D5FFFF55D5)) 
    \save_init_bram_addr_ld[13]_i_3__0 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg ),
        .I1(end_brst_rd_clr_cmb),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(brst_zero),
        .I5(s_axi_rready_0),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[13]_i_4__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(end_brst_rd_clr_cmb));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[1]),
        .O(bram_addr_ld[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[2]),
        .O(bram_addr_ld[6]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(data0[3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[3]),
        .O(bram_addr_ld[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(data0[4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[4]),
        .O(bram_addr_ld[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(data0[5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[5]),
        .O(bram_addr_ld[9]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[10]),
        .Q(data0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[11]),
        .Q(data0[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[8]),
        .Q(data0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[9]),
        .Q(data0[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[5]),
        .Q(data0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[6]),
        .Q(data0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[7]),
        .Q(data0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[8]),
        .Q(data0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(bram_addr_ld[9]),
        .Q(data0[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFABABABABABFFAB)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(\wrap_burst_total[0]_i_2__0_n_0 ),
        .I1(\wrap_burst_total[0]_i_3__0_n_0 ),
        .I2(\wrap_burst_total[0]_i_4_n_0 ),
        .I3(\wrap_burst_total[1]_i_2__0_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .O(wrap_burst_total_cmb[0]));
  LUT6 #(
    .INIT(64'h8000008000008000)) 
    \wrap_burst_total[0]_i_2__0 
       (.I0(\wrap_burst_total_reg[1]_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ),
        .I3(\wrap_burst_total_reg[1]_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .O(\wrap_burst_total[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFDFFFF5DFD5)) 
    \wrap_burst_total[0]_i_3__0 
       (.I0(\wrap_burst_total_reg[1]_0 ),
        .I1(\wrap_burst_total_reg[2]_0 [0]),
        .I2(axi_araddr_full),
        .I3(s_axi_arsize[0]),
        .I4(\wrap_burst_total_reg[2]_0 [1]),
        .I5(s_axi_arsize[1]),
        .O(\wrap_burst_total[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h1DFFFFFFFFFFFFFF)) 
    \wrap_burst_total[0]_i_4 
       (.I0(s_axi_arlen[3]),
        .I1(axi_araddr_full),
        .I2(\wrap_burst_total_reg[0]_0 [3]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ),
        .O(\wrap_burst_total[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88888888888)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(\wrap_burst_total[1]_i_2__0_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I2(\wrap_burst_total_reg[1]_1 ),
        .I3(\wrap_burst_total_reg[1]_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .I5(\wrap_burst_total[1]_i_5_n_0 ),
        .O(wrap_burst_total_cmb[1]));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    \wrap_burst_total[1]_i_2__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I1(\wrap_burst_total_reg[0]_0 [0]),
        .I2(axi_araddr_full),
        .I3(s_axi_arlen[0]),
        .I4(\wrap_burst_total_reg[0]_0 [3]),
        .I5(s_axi_arlen[3]),
        .O(\wrap_burst_total[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \wrap_burst_total[1]_i_5 
       (.I0(s_axi_arlen[0]),
        .I1(\wrap_burst_total_reg[0]_0 [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I3(\wrap_burst_total_reg[0]_0 [2]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[2]),
        .O(\wrap_burst_total[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .O(wrap_burst_total_cmb[2]));
  LUT6 #(
    .INIT(64'h0505030000000300)) 
    \wrap_burst_total[2]_i_2__0 
       (.I0(\wrap_burst_total_reg[2]_0 [0]),
        .I1(s_axi_arsize[0]),
        .I2(\wrap_burst_total_reg[1]_0 ),
        .I3(s_axi_arsize[1]),
        .I4(axi_araddr_full),
        .I5(\wrap_burst_total_reg[2]_0 [1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_3 
       (.I0(\wrap_burst_total_reg[0]_0 [0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_4 
       (.I0(\wrap_burst_total_reg[0]_0 [1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_5 
       (.I0(\wrap_burst_total_reg[0]_0 [2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_6 
       (.I0(\wrap_burst_total_reg[0]_0 [3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(SR));
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
