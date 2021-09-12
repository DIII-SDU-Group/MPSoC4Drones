// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Tue Apr 27 10:57:21 2021
// Host        : ubuv1804 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top u96v2_sbc_base_axi_uart16550_0_0 -prefix
//               u96v2_sbc_base_axi_uart16550_0_0_ u96v2_sbc_base_axi_uart16550_1_0_sim_netlist.v
// Design      : u96v2_sbc_base_axi_uart16550_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module u96v2_sbc_base_axi_uart16550_0_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    Bus_RNW_reg_reg_0,
    Q,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    wrReq_d1);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input Bus_RNW_reg_reg_0;
  input Q;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input wrReq_d1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire Q;
  wire Wr;
  wire bus2ip_rdce_i;
  wire bus2ip_wrce_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire wrReq_d1;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bus2ip_rdreq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wrReq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce_i));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    wr_d_i_1
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(wrReq_d1),
        .O(Wr));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_axi_lite_ipif
   (bus2ip_reset_int_core,
    ce_out_i,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4] ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    s_axi_arvalid,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rready,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_awaddr,
    wrReq_d1);
  output bus2ip_reset_int_core;
  output ce_out_i;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4] ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input s_axi_arvalid;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input s_axi_rready;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [7:0]Q;
  input s_axi_aresetn;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input wrReq_d1;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [7:0]Q;
  wire Wr;
  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wvalid;
  wire wrReq_d1;

  u96v2_sbc_base_axi_uart16550_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (ce_out_i),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .Q(Q),
        .SR(bus2ip_reset_int_core),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4] ),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(wrReq_d1));
endmodule

(* C_EXTERNAL_XIN_CLK_HZ = "25000000" *) (* C_FAMILY = "zynquplus" *) (* C_HAS_EXTERNAL_RCLK = "0" *) 
(* C_HAS_EXTERNAL_XIN = "0" *) (* C_IS_A_16550 = "1" *) (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
(* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module u96v2_sbc_base_axi_uart16550_0_0_axi_uart16550
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rclk,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn,
    xin,
    xout);
  input s_axi_aclk;
  input s_axi_aresetn;
  (* sigis = "INTERRUPT" *) output ip2intc_irpt;
  input freeze;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output baudoutn;
  input ctsn;
  input dcdn;
  output ddis;
  input dsrn;
  output dtrn;
  output out1n;
  output out2n;
  (* sigis = "CLK" *) input rclk;
  input rin;
  output rtsn;
  output rxrdyn;
  input sin;
  output sout;
  output txrdyn;
  (* sigis = "CLK" *) input xin;
  output xout;

  wire \<const0> ;
  wire [2:0]Addr;
  wire [7:0]Dout;
  wire \IPIC_IF_I_1/wrReq_d1 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ;
  wire Wr;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign xout = \<const0> ;
  u96v2_sbc_base_axi_uart16550_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (s_axi_arready),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (s_axi_awready),
        .Q(Dout),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4] (Addr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
  GND GND
       (.G(\<const0> ));
  u96v2_sbc_base_axi_uart16550_0_0_xuart XUART_I_1
       (.Q(Dout),
        .Wr(Wr),
        .\addr_d_reg[2] (Addr),
        .baudoutn(baudoutn),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_cntr_incr_decr_addn_f
   (Q,
    fifo_full_p1,
    FIFO_Full_reg,
    tx_fifo_full,
    tx_fifo_wr_en_d,
    tx_fifo_rd_en_int,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    SS,
    s_axi_aclk);
  output [4:0]Q;
  output fifo_full_p1;
  input FIFO_Full_reg;
  input tx_fifo_full;
  input tx_fifo_wr_en_d;
  input tx_fifo_rd_en_int;
  input \INFERRED_GEN.cnt_i_reg[4]_0 ;
  input [0:0]SS;
  input s_axi_aclk;

  wire FIFO_Full_i_2_n_0;
  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i[3]_i_1__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[3]_i_3_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_2_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_3_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire [4:0]Q;
  wire [0:0]SS;
  wire [4:0]addr_i_p1;
  wire fifo_full_p1;
  wire s_axi_aclk;
  wire tx_fifo_full;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;

  LUT6 #(
    .INIT(64'h9200000400000000)) 
    FIFO_Full_i_1
       (.I0(FIFO_Full_reg),
        .I1(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(FIFO_Full_i_2_n_0),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h0222FFFF01110333)) 
    FIFO_Full_i_2
       (.I0(\INFERRED_GEN.cnt_i[4]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(tx_fifo_rd_en_int),
        .I3(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .I4(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .I5(Q[3]),
        .O(FIFO_Full_i_2_n_0));
  LUT6 #(
    .INIT(64'hA6A6A6A659A6A6A6)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(Q[0]),
        .I1(tx_fifo_wr_en_d),
        .I2(tx_fifo_full),
        .I3(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .I4(tx_fifo_rd_en_int),
        .I5(Q[4]),
        .O(addr_i_p1[0]));
  LUT5 #(
    .INIT(32'hA96AA9A9)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[1]),
        .I1(FIFO_Full_reg),
        .I2(Q[0]),
        .I3(tx_fifo_full),
        .I4(tx_fifo_wr_en_d),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hBFFFFFF44000000B)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(tx_fifo_full),
        .I1(tx_fifo_wr_en_d),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(FIFO_Full_reg),
        .I5(Q[2]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hFF7FFEFF00800100)) 
    \INFERRED_GEN.cnt_i[3]_i_1__0 
       (.I0(FIFO_Full_reg),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\INFERRED_GEN.cnt_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[3]_i_3 
       (.I0(tx_fifo_full),
        .I1(tx_fifo_wr_en_d),
        .O(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF222F20DF20DF20D)) 
    \INFERRED_GEN.cnt_i[4]_i_1 
       (.I0(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\INFERRED_GEN.cnt_i[4]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(tx_fifo_rd_en_int),
        .I5(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .O(addr_i_p1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABABB)) 
    \INFERRED_GEN.cnt_i[4]_i_2 
       (.I0(FIFO_Full_reg),
        .I1(Q[2]),
        .I2(tx_fifo_full),
        .I3(tx_fifo_wr_en_d),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \INFERRED_GEN.cnt_i[4]_i_3 
       (.I0(Q[1]),
        .I1(tx_fifo_wr_en_d),
        .I2(tx_fifo_full),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\INFERRED_GEN.cnt_i[4]_i_3_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module u96v2_sbc_base_axi_uart16550_0_0_cntr_incr_decr_addn_f_0
   (wr_d_reg,
    Q,
    fifo_full_p1,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    fifo_trigger_level_flag,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    wr_d,
    chipSelect,
    rx_fifo_rd_en_d,
    lsr2_rst_reg,
    lsr2_rst,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    \lsr_reg[0] ,
    bus2ip_reset_int_core,
    \lsr_reg[0]_0 ,
    \lsr_reg[0]_1 ,
    Rx_fifo_trigger_reg,
    rx_fifo_rd_en_d1,
    out,
    rx_fifo_data_in,
    \lsr_reg[2] ,
    rx_fifo_rst,
    s_axi_aclk);
  output wr_d_reg;
  output [4:0]Q;
  output fifo_full_p1;
  output \INFERRED_GEN.cnt_i_reg[4]_0 ;
  output fifo_trigger_level_flag;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  input wr_d;
  input chipSelect;
  input rx_fifo_rd_en_d;
  input lsr2_rst_reg;
  input lsr2_rst;
  input \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input \lsr_reg[0] ;
  input bus2ip_reset_int_core;
  input \lsr_reg[0]_0 ;
  input \lsr_reg[0]_1 ;
  input [1:0]Rx_fifo_trigger_reg;
  input rx_fifo_rd_en_d1;
  input [2:0]out;
  input [2:0]rx_fifo_data_in;
  input [0:0]\lsr_reg[2] ;
  input rx_fifo_rst;
  input s_axi_aclk;

  wire FIFO_Full_i_2__0_n_0;
  wire FIFO_Full_i_3_n_0;
  wire \INFERRED_GEN.cnt_i[0]_i_1__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_1__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire [4:0]Q;
  wire Rx_fifo_trigger_i_2_n_0;
  wire Rx_fifo_trigger_i_3_n_0;
  wire [1:0]Rx_fifo_trigger_reg;
  wire [3:1]addr_i_p1;
  wire bus2ip_reset_int_core;
  wire chipSelect;
  wire fifo_full_p1;
  wire fifo_trigger_level_flag;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire \lsr[2]_i_5_n_0 ;
  wire \lsr_reg[0] ;
  wire \lsr_reg[0]_0 ;
  wire \lsr_reg[0]_1 ;
  wire [0:0]\lsr_reg[2] ;
  wire [2:0]out;
  wire [2:0]rx_fifo_data_in;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire s_axi_aclk;
  wire wr_d;
  wire wr_d_reg;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00001E00)) 
    FIFO_Full_i_1__0
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d),
        .I2(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ),
        .I3(FIFO_Full_i_2__0_n_0),
        .I4(FIFO_Full_i_3_n_0),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h8080018008088008)) 
    FIFO_Full_i_2__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(rx_fifo_rd_en_d),
        .I4(Q[4]),
        .I5(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .O(FIFO_Full_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00800100FF7FFEFF)) 
    FIFO_Full_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I4(\INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ),
        .I5(Q[3]),
        .O(FIFO_Full_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9A65)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I1(Q[4]),
        .I2(rx_fifo_rd_en_d),
        .I3(Q[0]),
        .O(\INFERRED_GEN.cnt_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBDBB4244)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(rx_fifo_rd_en_d),
        .I4(Q[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hAAAAAAA659AAAAAA)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(Q[2]),
        .I1(rx_fifo_rd_en_d),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAA9A)) 
    \INFERRED_GEN.cnt_i[3]_i_1 
       (.I0(Q[3]),
        .I1(\INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ),
        .I2(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[3]_i_2__0 
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d),
        .O(\INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \INFERRED_GEN.cnt_i[4]_i_1__0 
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d),
        .I2(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ),
        .O(\INFERRED_GEN.cnt_i[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F0000FFFF0100)) 
    \INFERRED_GEN.cnt_i[4]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I4(\INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ),
        .I5(Q[3]),
        .O(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .S(rx_fifo_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000DF)) 
    Rx_fifo_trigger_i_1
       (.I0(Rx_fifo_trigger_reg[1]),
        .I1(Q[3]),
        .I2(Rx_fifo_trigger_i_2_n_0),
        .I3(Q[4]),
        .I4(Rx_fifo_trigger_reg[0]),
        .I5(Rx_fifo_trigger_i_3_n_0),
        .O(fifo_trigger_level_flag));
  LUT3 #(
    .INIT(8'h7F)) 
    Rx_fifo_trigger_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(Rx_fifo_trigger_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FD555540)) 
    Rx_fifo_trigger_i_3
       (.I0(Rx_fifo_trigger_reg[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(Rx_fifo_trigger_i_3_n_0));
  LUT6 #(
    .INIT(64'h070707FF000000FF)) 
    lsr2_rst_i_1
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(rx_fifo_rd_en_d),
        .I3(Q[4]),
        .I4(lsr2_rst_reg),
        .I5(lsr2_rst),
        .O(wr_d_reg));
  LUT5 #(
    .INIT(32'h050C0000)) 
    \lsr[0]_i_1 
       (.I0(Q[4]),
        .I1(\lsr_reg[0] ),
        .I2(bus2ip_reset_int_core),
        .I3(\lsr_reg[0]_0 ),
        .I4(\lsr_reg[0]_1 ),
        .O(\INFERRED_GEN.cnt_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h10FF000010000000)) 
    \lsr[2]_i_4 
       (.I0(\lsr[2]_i_5_n_0 ),
        .I1(rx_fifo_rd_en_d1),
        .I2(out[2]),
        .I3(\lsr_reg[0]_0 ),
        .I4(\lsr_reg[2] ),
        .I5(rx_fifo_data_in[2]),
        .O(lsr2_set));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lsr[2]_i_5 
       (.I0(rx_fifo_rd_en_d),
        .I1(Q[4]),
        .O(\lsr[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \lsr[3]_i_2 
       (.I0(rx_fifo_rd_en_d),
        .I1(Q[4]),
        .I2(rx_fifo_rd_en_d1),
        .I3(out[1]),
        .I4(\lsr_reg[0]_0 ),
        .I5(rx_fifo_data_in[1]),
        .O(lsr3_set));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \lsr[4]_i_2 
       (.I0(rx_fifo_rd_en_d),
        .I1(Q[4]),
        .I2(rx_fifo_rd_en_d1),
        .I3(out[0]),
        .I4(\lsr_reg[0]_0 ),
        .I5(rx_fifo_data_in[0]),
        .O(lsr4_set));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_dynshreg_f
   (out,
    tx_fifo_wr_en_d,
    tx_fifo_full,
    \tsr_reg[7] ,
    Q,
    s_axi_aclk);
  output [7:0]out;
  input tx_fifo_wr_en_d;
  input tx_fifo_full;
  input [7:0]\tsr_reg[7] ;
  input [3:0]Q;
  input s_axi_aclk;

  wire [3:0]Q;
  wire [7:0]out;
  wire s_axi_aclk;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_full;
  wire tx_fifo_wr_en_d;
  wire tx_fifo_wr_en_i;

  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \INFERRED_GEN.data_reg[15][7]_srl16_i_1 
       (.I0(tx_fifo_wr_en_d),
        .I1(tx_fifo_full),
        .O(tx_fifo_wr_en_i));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module u96v2_sbc_base_axi_uart16550_0_0_dynshreg_f__parameterized0
   (rx_error_in_fifo_cnt_dn0,
    out,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    rx_fifo_wr_en_i,
    rx_fifo_data_in,
    Q,
    s_axi_aclk);
  output rx_error_in_fifo_cnt_dn0;
  output [10:0]out;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input rx_fifo_wr_en_i;
  input [10:0]rx_fifo_data_in;
  input [3:0]Q;
  input s_axi_aclk;

  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire [3:0]Q;
  wire [10:0]out;
  wire rx_error_in_fifo_cnt_dn0;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;

  LUT4 #(
    .INIT(16'hFE00)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_1 
       (.I0(out[10]),
        .I1(out[9]),
        .I2(out[8]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .O(rx_error_in_fifo_cnt_dn0));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][10]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[0]),
        .Q(out[0]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][8]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][9]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[1]),
        .Q(out[1]));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_ipic_if
   (wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    Rd,
    bus2ip_reset_int_core,
    bus2ip_wrce_i,
    s_axi_aclk,
    bus2ip_rdce_i);
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output Rd;
  input bus2ip_reset_int_core;
  input bus2ip_wrce_i;
  input s_axi_aclk;
  input bus2ip_rdce_i;

  wire Rd;
  wire bus2ip_rdce_i;
  wire bus2ip_rdreq_d1;
  wire bus2ip_rdreq_d2;
  wire bus2ip_rdreq_d3;
  wire bus2ip_rdreq_d4;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ip2bus_rdack;
  wire ip2bus_rdack_d1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_d1;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire wrReq_d1;
  wire wrReq_d2;
  wire wrReq_d3;

  FDRE IP2Bus_RdAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_d1),
        .Q(s_axi_arready),
        .R(bus2ip_reset_int_core));
  FDRE IP2Bus_WrAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_d1),
        .Q(s_axi_awready),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_i),
        .Q(bus2ip_rdreq_d1),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d1),
        .Q(bus2ip_rdreq_d2),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d2),
        .Q(bus2ip_rdreq_d3),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d4_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d3),
        .Q(bus2ip_rdreq_d4),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_rdack_d1_i_1
       (.I0(bus2ip_rdreq_d3),
        .I1(bus2ip_rdreq_d4),
        .O(ip2bus_rdack));
  FDRE ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack),
        .Q(ip2bus_rdack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_d1_i_1
       (.I0(wrReq_d2),
        .I1(wrReq_d3),
        .O(ip2bus_wrack));
  FDRE ip2bus_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack),
        .Q(ip2bus_wrack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    rd_d_i_1
       (.I0(bus2ip_rdreq_d1),
        .I1(bus2ip_rdreq_d2),
        .O(Rd));
  FDRE wrReq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_i),
        .Q(wrReq_d1),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d1),
        .Q(wrReq_d2),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d2),
        .Q(wrReq_d3),
        .R(bus2ip_reset_int_core));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_rx16550
   (rclk_int,
    rx_fifo_data_in,
    character_received,
    \d_d_reg[0] ,
    \dll_reg[0] ,
    baudoutN_int,
    \Lcr_reg[1] ,
    Rx_error_in_fifo0,
    have_bi_in_fifo_n_i_reg_0,
    SR,
    rx_fifo_wr_en_i,
    D,
    s_axi_aclk,
    rx_sin,
    Q,
    lsr_reg0,
    \lsr_reg[0] ,
    \character_counter_reg[0] ,
    \lsr_reg[0]_0 ,
    parity_error_d_i_3_0,
    baudoutN_int_i,
    clockDiv,
    bus2ip_reset_int_core,
    framing_error_flag_reg_0,
    mcr4_d,
    \FSM_sequential_receive_state_reg[3]_0 ,
    rx_fifo_rd_en_d,
    rx_fifo_rst,
    rx_fifo_full,
    \Dout_reg[0] ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[0]_2 ,
    \Dout_reg[0]_3 ,
    \Dout_reg[0]_4 ,
    out,
    \Dout_reg[0]_5 ,
    \Dout_reg[1] ,
    \Dout_reg[1]_0 ,
    \Dout_reg[7] ,
    \Dout_reg[1]_1 ,
    \Dout_reg[1]_2 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[2] ,
    \Dout_reg[2]_0 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[3] ,
    \Dout_reg[3]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[6] ,
    \Dout_reg[6]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[7]_2 ,
    \Dout_reg[4] ,
    \Dout_reg[4]_0 ,
    \Dout_reg[4]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[5]_0 ,
    \Dout_reg[5]_1 ,
    p_2_in44_in,
    \Dout_reg[5]_2 );
  output rclk_int;
  output [10:0]rx_fifo_data_in;
  output character_received;
  output \d_d_reg[0] ;
  output \dll_reg[0] ;
  output baudoutN_int;
  output \Lcr_reg[1] ;
  output Rx_error_in_fifo0;
  output have_bi_in_fifo_n_i_reg_0;
  output [0:0]SR;
  output rx_fifo_wr_en_i;
  output [7:0]D;
  input s_axi_aclk;
  input rx_sin;
  input [0:0]Q;
  input lsr_reg0;
  input \lsr_reg[0] ;
  input [0:0]\character_counter_reg[0] ;
  input \lsr_reg[0]_0 ;
  input [5:0]parity_error_d_i_3_0;
  input baudoutN_int_i;
  input [15:0]clockDiv;
  input bus2ip_reset_int_core;
  input [3:0]framing_error_flag_reg_0;
  input mcr4_d;
  input \FSM_sequential_receive_state_reg[3]_0 ;
  input rx_fifo_rd_en_d;
  input rx_fifo_rst;
  input rx_fifo_full;
  input \Dout_reg[0] ;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[0]_2 ;
  input \Dout_reg[0]_3 ;
  input \Dout_reg[0]_4 ;
  input [7:0]out;
  input \Dout_reg[0]_5 ;
  input \Dout_reg[1] ;
  input \Dout_reg[1]_0 ;
  input [3:0]\Dout_reg[7] ;
  input \Dout_reg[1]_1 ;
  input \Dout_reg[1]_2 ;
  input [4:0]\Dout_reg[7]_0 ;
  input \Dout_reg[2] ;
  input \Dout_reg[2]_0 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[3] ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[6] ;
  input \Dout_reg[6]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[7]_2 ;
  input \Dout_reg[4] ;
  input \Dout_reg[4]_0 ;
  input \Dout_reg[4]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[5]_0 ;
  input \Dout_reg[5]_1 ;
  input p_2_in44_in;
  input \Dout_reg[5]_2 ;

  wire [7:0]D;
  wire \Dout[0]_i_2_n_0 ;
  wire \Dout[1]_i_2_n_0 ;
  wire \Dout[2]_i_2_n_0 ;
  wire \Dout[3]_i_2_n_0 ;
  wire \Dout[4]_i_5_n_0 ;
  wire \Dout[5]_i_2_n_0 ;
  wire \Dout[6]_i_2_n_0 ;
  wire \Dout[7]_i_3_n_0 ;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[0]_3 ;
  wire \Dout_reg[0]_4 ;
  wire \Dout_reg[0]_5 ;
  wire \Dout_reg[1] ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[1]_2 ;
  wire \Dout_reg[2] ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire \Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[4]_0 ;
  wire \Dout_reg[4]_1 ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[5]_0 ;
  wire \Dout_reg[5]_1 ;
  wire \Dout_reg[5]_2 ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire [3:0]\Dout_reg[7] ;
  wire [4:0]\Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \Dout_reg[7]_2 ;
  wire \FSM_sequential_receive_state[0]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_5_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_6_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_5_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_6_n_0 ;
  wire \FSM_sequential_receive_state_reg[3]_0 ;
  wire \Lcr_reg[1] ;
  wire \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_3_n_0 ;
  wire \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_4_n_0 ;
  wire \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_5_n_0 ;
  wire \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_6_n_0 ;
  wire \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_8_n_0 ;
  wire [0:0]Q;
  wire [7:0]Rbr;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire baudoutN_int;
  wire baudoutN_int_i;
  wire break_interrupt_error_d;
  wire break_interrupt_error_d_i_10_n_0;
  wire break_interrupt_error_d_i_11_n_0;
  wire break_interrupt_error_d_i_1_n_0;
  wire break_interrupt_error_d_i_3_n_0;
  wire break_interrupt_error_d_i_4_n_0;
  wire break_interrupt_error_d_i_5_n_0;
  wire break_interrupt_error_d_i_6_n_0;
  wire break_interrupt_error_d_i_7_n_0;
  wire break_interrupt_error_d_i_8_n_0;
  wire break_interrupt_error_d_i_9_n_0;
  wire break_interrupt_error_d_reg_n_0;
  wire break_interrupt_flag;
  wire break_interrupt_flag_i_2_n_0;
  wire break_interrupt_i_i_1_n_0;
  wire bus2ip_reset_int_core;
  wire [0:0]\character_counter_reg[0] ;
  wire character_received;
  wire character_received_com;
  wire character_received_d;
  wire character_received_flag;
  wire character_received_flag0;
  wire character_received_rclk;
  wire clk1x;
  wire clk1x0;
  wire clk1x_d;
  wire clk1x_i_3_n_0;
  wire clk2x;
  wire clk2x0;
  wire clk_div_en_i_1_n_0;
  wire clk_div_en_i_2_n_0;
  wire clk_div_en_reg_n_0;
  wire [3:0]clkdiv;
  wire \clkdiv[2]_i_2_n_0 ;
  wire \clkdiv[2]_i_3_n_0 ;
  wire \clkdiv[2]_i_4_n_0 ;
  wire \clkdiv[3]_i_10_n_0 ;
  wire \clkdiv[3]_i_11_n_0 ;
  wire \clkdiv[3]_i_1__0_n_0 ;
  wire \clkdiv[3]_i_3_n_0 ;
  wire \clkdiv[3]_i_4_n_0 ;
  wire \clkdiv[3]_i_5_n_0 ;
  wire \clkdiv[3]_i_6_n_0 ;
  wire \clkdiv[3]_i_7_n_0 ;
  wire \clkdiv[3]_i_8_n_0 ;
  wire \clkdiv[3]_i_9_n_0 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire [15:0]clockDiv;
  wire clock_1x_early;
  wire clock_1x_early0;
  wire \d_d_reg[0] ;
  wire \dll_reg[0] ;
  wire framing_error_com;
  wire framing_error_d;
  wire framing_error_d_i_2_n_0;
  wire framing_error_d_i_3_n_0;
  wire framing_error_d_i_4_n_0;
  wire framing_error_d_i_5_n_0;
  wire framing_error_d_i_6_n_0;
  wire framing_error_flag;
  wire framing_error_flag0;
  wire framing_error_flag_i_1_n_0;
  wire [3:0]framing_error_flag_reg_0;
  wire framing_error_i0;
  wire got_start_bit_com;
  wire got_start_bit_d;
  wire have_bi_in_fifo_n;
  wire have_bi_in_fifo_n_i_i_1_n_0;
  wire have_bi_in_fifo_n_i_i_2_n_0;
  wire have_bi_in_fifo_n_i_reg_0;
  wire load_rbr_com;
  wire load_rbr_d;
  wire load_rbr_d_i_1_n_0;
  wire lsr_reg0;
  wire \lsr_reg[0] ;
  wire \lsr_reg[0]_0 ;
  wire mcr4_d;
  wire [3:0]next_state;
  wire [7:0]out;
  wire p_2_in44_in;
  wire parity_error_d;
  wire parity_error_d0;
  wire parity_error_d_i_10_n_0;
  wire parity_error_d_i_11_n_0;
  wire parity_error_d_i_12_n_0;
  wire parity_error_d_i_2_n_0;
  wire [5:0]parity_error_d_i_3_0;
  wire parity_error_d_i_3_n_0;
  wire parity_error_d_i_4_n_0;
  wire parity_error_d_i_5_n_0;
  wire parity_error_d_i_6_n_0;
  wire parity_error_d_i_7_n_0;
  wire parity_error_d_i_8_n_0;
  wire parity_error_d_i_9_n_0;
  wire parity_error_i0;
  wire parity_error_latch;
  wire parity_error_latch_i_1_n_0;
  wire rbr_d0;
  wire \rbr_d[0]_i_1_n_0 ;
  wire \rbr_d[1]_i_1_n_0 ;
  wire \rbr_d[2]_i_1_n_0 ;
  wire \rbr_d[3]_i_1_n_0 ;
  wire \rbr_d[4]_i_1_n_0 ;
  wire \rbr_d[5]_i_1_n_0 ;
  wire \rbr_d[6]_i_1_n_0 ;
  wire \rbr_d[7]_i_2_n_0 ;
  wire rclk_int;
  wire [3:0]receive_state;
  wire resynch_clkdiv;
  wire resynch_clkdiv_d;
  wire resynch_clkdiv_d_i_2_n_0;
  wire resynch_clkdiv_d_i_3_n_0;
  wire resynch_clkdiv_d_i_4_n_0;
  wire resynch_clkdiv_frame_d;
  wire resynch_clkdiv_frame_d_i_1_n_0;
  wire resynch_clkdiv_frame_d_i_2_n_0;
  wire resynch_clkdiv_startbit;
  wire resynch_clkdiv_startbit_d;
  wire resynch_clkdiv_startbit_d_i_2_n_0;
  wire resynch_clkdiv_startbit_d_i_3_n_0;
  wire [7:0]rsr;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire rx_parity_com;
  wire rx_rst;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin_d1;
  wire sin_d10;
  wire sin_d2;
  wire sin_d3;
  wire sin_d4;
  wire sin_d5;
  wire sin_d6;
  wire sin_d7;
  wire sin_d8;
  wire sin_d9;

  FDRE Data_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag),
        .Q(character_received),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \Dout[0]_i_1 
       (.I0(\Dout[0]_i_2_n_0 ),
        .I1(\Dout_reg[0] ),
        .I2(\Dout_reg[0]_0 ),
        .I3(\Dout_reg[0]_1 ),
        .I4(framing_error_flag_reg_0[0]),
        .I5(\Dout_reg[0]_2 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[0]_i_2 
       (.I0(\Dout_reg[0]_3 ),
        .I1(Rbr[0]),
        .I2(\Dout_reg[0]_4 ),
        .I3(out[0]),
        .I4(\lsr_reg[0] ),
        .I5(\Dout_reg[0]_5 ),
        .O(\Dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \Dout[1]_i_1 
       (.I0(\Dout[1]_i_2_n_0 ),
        .I1(\Dout_reg[1] ),
        .I2(\Dout_reg[1]_0 ),
        .I3(\Dout_reg[7] [0]),
        .I4(\Dout_reg[1]_1 ),
        .I5(\Dout_reg[1]_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[1]_i_2 
       (.I0(\Dout_reg[0]_5 ),
        .I1(\Dout_reg[7]_0 [0]),
        .I2(\Dout_reg[0]_3 ),
        .I3(Rbr[1]),
        .I4(out[1]),
        .I5(\Dout_reg[0]_4 ),
        .O(\Dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \Dout[2]_i_1 
       (.I0(\Dout[2]_i_2_n_0 ),
        .I1(\Dout_reg[2] ),
        .I2(\Dout_reg[2]_0 ),
        .I3(\Dout_reg[2]_1 ),
        .I4(framing_error_flag_reg_0[1]),
        .I5(\Dout_reg[0]_2 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[2]_i_2 
       (.I0(\Dout_reg[0]_5 ),
        .I1(\Dout_reg[7]_0 [1]),
        .I2(\Dout_reg[0]_3 ),
        .I3(Rbr[2]),
        .I4(out[2]),
        .I5(\Dout_reg[0]_4 ),
        .O(\Dout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \Dout[3]_i_1 
       (.I0(\Dout[3]_i_2_n_0 ),
        .I1(\Dout_reg[3] ),
        .I2(\Dout_reg[3]_0 ),
        .I3(\Dout_reg[3]_1 ),
        .I4(framing_error_flag_reg_0[2]),
        .I5(\Dout_reg[0]_2 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[3]_i_2 
       (.I0(\Dout_reg[0]_5 ),
        .I1(\Dout_reg[7]_0 [2]),
        .I2(\Dout_reg[0]_3 ),
        .I3(Rbr[3]),
        .I4(out[3]),
        .I5(\Dout_reg[0]_4 ),
        .O(\Dout[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \Dout[4]_i_1 
       (.I0(\Dout_reg[4] ),
        .I1(\Dout_reg[4]_0 ),
        .I2(parity_error_d_i_3_0[4]),
        .I3(\Dout_reg[4]_1 ),
        .I4(\Dout[4]_i_5_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[4]_i_5 
       (.I0(\Dout_reg[0]_3 ),
        .I1(Rbr[4]),
        .I2(\Dout_reg[0]_4 ),
        .I3(out[4]),
        .I4(framing_error_flag_reg_0[3]),
        .I5(\Dout_reg[0]_2 ),
        .O(\Dout[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \Dout[5]_i_1 
       (.I0(\Dout[5]_i_2_n_0 ),
        .I1(\Dout_reg[1]_1 ),
        .I2(\Dout_reg[7] [1]),
        .I3(\Dout_reg[5] ),
        .I4(\Dout_reg[5]_0 ),
        .I5(\Dout_reg[5]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[5]_i_2 
       (.I0(\Dout_reg[0]_3 ),
        .I1(Rbr[5]),
        .I2(\Dout_reg[0]_4 ),
        .I3(out[5]),
        .I4(p_2_in44_in),
        .I5(\Dout_reg[5]_2 ),
        .O(\Dout[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \Dout[6]_i_1 
       (.I0(\Dout[6]_i_2_n_0 ),
        .I1(\Dout_reg[1]_1 ),
        .I2(\Dout_reg[7] [2]),
        .I3(\Dout_reg[6] ),
        .I4(\Dout_reg[6]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[6]_i_2 
       (.I0(\Dout_reg[0]_5 ),
        .I1(\Dout_reg[7]_0 [3]),
        .I2(\Dout_reg[0]_3 ),
        .I3(Rbr[6]),
        .I4(out[6]),
        .I5(\Dout_reg[0]_4 ),
        .O(\Dout[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \Dout[7]_i_2 
       (.I0(\Dout[7]_i_3_n_0 ),
        .I1(\Dout_reg[1]_1 ),
        .I2(\Dout_reg[7] [3]),
        .I3(\Dout_reg[7]_1 ),
        .I4(\Dout_reg[7]_2 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[7]_i_3 
       (.I0(\Dout_reg[0]_5 ),
        .I1(\Dout_reg[7]_0 [4]),
        .I2(\Dout_reg[0]_3 ),
        .I3(Rbr[7]),
        .I4(out[7]),
        .I5(\Dout_reg[0]_4 ),
        .O(\Dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \FSM_sequential_receive_state[0]_i_1 
       (.I0(\FSM_sequential_receive_state[0]_i_2_n_0 ),
        .I1(receive_state[3]),
        .I2(\FSM_sequential_receive_state[0]_i_3_n_0 ),
        .I3(parity_error_d_i_3_0[3]),
        .I4(\FSM_sequential_receive_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_receive_state[0]_i_5_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h4051403340514039)) 
    \FSM_sequential_receive_state[0]_i_2 
       (.I0(receive_state[3]),
        .I1(receive_state[0]),
        .I2(sin_d2),
        .I3(receive_state[2]),
        .I4(receive_state[1]),
        .I5(parity_error_d_i_3_0[2]),
        .O(\FSM_sequential_receive_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_receive_state[0]_i_3 
       (.I0(sin_d2),
        .I1(parity_error_d_i_3_0[2]),
        .O(\FSM_sequential_receive_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30303AF0)) 
    \FSM_sequential_receive_state[0]_i_4 
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[2]),
        .I3(parity_error_d_i_3_0[1]),
        .I4(parity_error_d_i_3_0[0]),
        .O(\FSM_sequential_receive_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440404044)) 
    \FSM_sequential_receive_state[0]_i_5 
       (.I0(receive_state[0]),
        .I1(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I2(\Lcr_reg[1] ),
        .I3(parity_error_d_i_3_0[2]),
        .I4(sin_d2),
        .I5(parity_error_d_i_3_0[3]),
        .O(\FSM_sequential_receive_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEEE)) 
    \FSM_sequential_receive_state[1]_i_1 
       (.I0(\FSM_sequential_receive_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_receive_state[1]_i_3_n_0 ),
        .I2(parity_error_d_i_3_0[3]),
        .I3(sin_d2),
        .I4(parity_error_d_i_3_0[2]),
        .I5(\FSM_sequential_receive_state[1]_i_4_n_0 ),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0200003C)) 
    \FSM_sequential_receive_state[1]_i_2 
       (.I0(\Lcr_reg[1] ),
        .I1(receive_state[0]),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(receive_state[3]),
        .I5(\FSM_sequential_receive_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_receive_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    \FSM_sequential_receive_state[1]_i_3 
       (.I0(receive_state[2]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .O(\FSM_sequential_receive_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF400F400FF00F000)) 
    \FSM_sequential_receive_state[1]_i_4 
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[2]),
        .I3(receive_state[3]),
        .I4(receive_state[1]),
        .I5(receive_state[0]),
        .O(\FSM_sequential_receive_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_receive_state[1]_i_5 
       (.I0(parity_error_d_i_3_0[1]),
        .I1(parity_error_d_i_3_0[0]),
        .O(\Lcr_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000001013000)) 
    \FSM_sequential_receive_state[1]_i_6 
       (.I0(sin_d2),
        .I1(receive_state[2]),
        .I2(parity_error_d_i_3_0[2]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .I5(receive_state[1]),
        .O(\FSM_sequential_receive_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F000FFB0FF0F00)) 
    \FSM_sequential_receive_state[2]_i_1 
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[0]),
        .I3(receive_state[3]),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(next_state[2]));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \FSM_sequential_receive_state[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(framing_error_flag_reg_0[3]),
        .I2(mcr4_d),
        .I3(have_bi_in_fifo_n),
        .O(parity_error_d0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    \FSM_sequential_receive_state[3]_i_2 
       (.I0(\FSM_sequential_receive_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I2(sin_d2),
        .I3(receive_state[0]),
        .I4(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I5(\FSM_sequential_receive_state[3]_i_6_n_0 ),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h000000E0000000F0)) 
    \FSM_sequential_receive_state[3]_i_3 
       (.I0(parity_error_d_i_3_0[2]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .I4(receive_state[0]),
        .I5(receive_state[3]),
        .O(\FSM_sequential_receive_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_receive_state[3]_i_4 
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .O(\FSM_sequential_receive_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCC4444C4440044C0)) 
    \FSM_sequential_receive_state[3]_i_5 
       (.I0(\FSM_sequential_receive_state[0]_i_3_n_0 ),
        .I1(receive_state[3]),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .I4(\FSM_sequential_receive_state_reg[3]_0 ),
        .I5(receive_state[0]),
        .O(\FSM_sequential_receive_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0808000000000)) 
    \FSM_sequential_receive_state[3]_i_6 
       (.I0(receive_state[0]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .I4(parity_error_d_i_3_0[3]),
        .I5(receive_state[3]),
        .O(\FSM_sequential_receive_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[0]),
        .Q(receive_state[0]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[1]),
        .Q(receive_state[1]),
        .R(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[2]),
        .Q(receive_state[2]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[3]),
        .Q(receive_state[3]),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \INFERRED_GEN.cnt_i[3]_i_3__0 
       (.I0(have_bi_in_fifo_n),
        .I1(rx_fifo_full),
        .I2(\lsr_reg[0] ),
        .I3(character_received),
        .O(have_bi_in_fifo_n_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \INFERRED_GEN.data_reg[15][10]_srl16_i_1 
       (.I0(character_received),
        .I1(\lsr_reg[0] ),
        .I2(rx_fifo_full),
        .I3(have_bi_in_fifo_n),
        .O(rx_fifo_wr_en_i));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_1 
       (.I0(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_3_n_0 ),
        .I1(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_4_n_0 ),
        .I2(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_5_n_0 ),
        .I3(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_6_n_0 ),
        .I4(baudoutN_int_i),
        .O(baudoutN_int));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_3 
       (.I0(clockDiv[9]),
        .I1(clockDiv[8]),
        .I2(clockDiv[11]),
        .I3(clockDiv[10]),
        .O(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_4 
       (.I0(clockDiv[13]),
        .I1(clockDiv[12]),
        .I2(clockDiv[15]),
        .I3(clockDiv[14]),
        .O(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_5 
       (.I0(clockDiv[0]),
        .I1(clockDiv[1]),
        .I2(clockDiv[3]),
        .I3(clockDiv[2]),
        .O(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_6 
       (.I0(clockDiv[5]),
        .I1(clockDiv[4]),
        .I2(clockDiv[7]),
        .I3(clockDiv[6]),
        .O(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_7 
       (.I0(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_6_n_0 ),
        .I1(clockDiv[0]),
        .I2(clockDiv[1]),
        .I3(clockDiv[3]),
        .I4(clockDiv[2]),
        .I5(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_8_n_0 ),
        .O(\dll_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_8 
       (.I0(clockDiv[10]),
        .I1(clockDiv[11]),
        .I2(clockDiv[8]),
        .I3(clockDiv[9]),
        .I4(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_4_n_0 ),
        .O(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_8_n_0 ));
  FDRE \Rbr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[0]),
        .Q(Rbr[0]),
        .R(rx_rst));
  FDRE \Rbr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[1]),
        .Q(Rbr[1]),
        .R(rx_rst));
  FDRE \Rbr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[2]),
        .Q(Rbr[2]),
        .R(rx_rst));
  FDRE \Rbr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[3]),
        .Q(Rbr[3]),
        .R(rx_rst));
  FDRE \Rbr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[4]),
        .Q(Rbr[4]),
        .R(rx_rst));
  FDRE \Rbr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[5]),
        .Q(Rbr[5]),
        .R(rx_rst));
  FDRE \Rbr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[6]),
        .Q(Rbr[6]),
        .R(rx_rst));
  FDRE \Rbr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[7]),
        .Q(Rbr[7]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'h0F0E)) 
    Rx_error_in_fifo_i_1
       (.I0(rx_fifo_data_in[10]),
        .I1(rx_fifo_data_in[9]),
        .I2(have_bi_in_fifo_n_i_reg_0),
        .I3(rx_fifo_data_in[8]),
        .O(Rx_error_in_fifo0));
  LUT6 #(
    .INIT(64'h00000000EEE20000)) 
    break_interrupt_error_d_i_1
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(break_interrupt_error_d),
        .I2(break_interrupt_error_d_i_3_n_0),
        .I3(break_interrupt_error_d_i_4_n_0),
        .I4(have_bi_in_fifo_n),
        .I5(rx_rst),
        .O(break_interrupt_error_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008C8888888888)) 
    break_interrupt_error_d_i_10
       (.I0(sin_d2),
        .I1(framing_error_d_i_5_n_0),
        .I2(parity_error_d_i_3_0[1]),
        .I3(break_interrupt_error_d_reg_n_0),
        .I4(receive_state[2]),
        .I5(receive_state[1]),
        .O(break_interrupt_error_d_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    break_interrupt_error_d_i_11
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(receive_state[3]),
        .O(break_interrupt_error_d_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFEFEEEEEFEFEEEE)) 
    break_interrupt_error_d_i_2
       (.I0(break_interrupt_error_d_i_5_n_0),
        .I1(break_interrupt_error_d_i_6_n_0),
        .I2(receive_state[3]),
        .I3(break_interrupt_error_d_i_7_n_0),
        .I4(clk1x),
        .I5(parity_error_d_i_3_0[3]),
        .O(break_interrupt_error_d));
  LUT6 #(
    .INIT(64'hFFFFFFFF044A0448)) 
    break_interrupt_error_d_i_3
       (.I0(receive_state[2]),
        .I1(sin_d2),
        .I2(receive_state[1]),
        .I3(receive_state[0]),
        .I4(break_interrupt_error_d_reg_n_0),
        .I5(break_interrupt_error_d_i_8_n_0),
        .O(break_interrupt_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFC88)) 
    break_interrupt_error_d_i_4
       (.I0(sin_d2),
        .I1(parity_error_d_i_2_n_0),
        .I2(parity_error_d_i_5_n_0),
        .I3(break_interrupt_error_d_reg_n_0),
        .I4(break_interrupt_error_d_i_9_n_0),
        .I5(break_interrupt_error_d_i_10_n_0),
        .O(break_interrupt_error_d_i_4_n_0));
  LUT6 #(
    .INIT(64'h0DE000000B0F0000)) 
    break_interrupt_error_d_i_5
       (.I0(parity_error_d_i_3_0[1]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(clk1x),
        .I5(receive_state[0]),
        .O(break_interrupt_error_d_i_5_n_0));
  LUT6 #(
    .INIT(64'h22AA000032FF0000)) 
    break_interrupt_error_d_i_6
       (.I0(sin_d2),
        .I1(receive_state[1]),
        .I2(receive_state[0]),
        .I3(receive_state[2]),
        .I4(clk1x),
        .I5(parity_error_d_i_3_0[2]),
        .O(break_interrupt_error_d_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    break_interrupt_error_d_i_7
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .O(break_interrupt_error_d_i_7_n_0));
  LUT6 #(
    .INIT(64'h32FF328800000000)) 
    break_interrupt_error_d_i_8
       (.I0(parity_error_d_i_3_0[3]),
        .I1(receive_state[1]),
        .I2(\FSM_sequential_receive_state_reg[3]_0 ),
        .I3(receive_state[2]),
        .I4(parity_error_d_i_3_0[2]),
        .I5(break_interrupt_error_d_i_11_n_0),
        .O(break_interrupt_error_d_i_8_n_0));
  LUT6 #(
    .INIT(64'h4444040004000400)) 
    break_interrupt_error_d_i_9
       (.I0(receive_state[1]),
        .I1(parity_error_d_i_3_0[2]),
        .I2(receive_state[0]),
        .I3(sin_d2),
        .I4(break_interrupt_error_d_reg_n_0),
        .I5(receive_state[3]),
        .O(break_interrupt_error_d_i_9_n_0));
  FDRE break_interrupt_error_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_error_d_i_1_n_0),
        .Q(break_interrupt_error_d_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFBE)) 
    break_interrupt_flag_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(framing_error_flag_reg_0[3]),
        .I2(mcr4_d),
        .I3(character_received_rclk),
        .O(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    break_interrupt_flag_i_2
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(rclk_int),
        .I2(break_interrupt_flag),
        .O(break_interrupt_flag_i_2_n_0));
  FDRE break_interrupt_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_flag_i_2_n_0),
        .Q(break_interrupt_flag),
        .R(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    break_interrupt_i_i_1
       (.I0(character_received_flag),
        .I1(break_interrupt_flag),
        .O(break_interrupt_i_i_1_n_0));
  FDRE break_interrupt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_i_i_1_n_0),
        .Q(rx_fifo_data_in[8]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \character_counter[9]_i_1 
       (.I0(have_bi_in_fifo_n_i_reg_0),
        .I1(rx_fifo_rd_en_d),
        .I2(\character_counter_reg[0] ),
        .I3(rx_fifo_rst),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0F000010)) 
    character_received_d_i_1
       (.I0(receive_state[2]),
        .I1(parity_error_d_i_3_0[2]),
        .I2(receive_state[3]),
        .I3(receive_state[0]),
        .I4(receive_state[1]),
        .O(character_received_com));
  FDRE character_received_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(character_received_com),
        .Q(character_received_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    character_received_flag_i_1
       (.I0(rclk_int),
        .I1(character_received_d),
        .O(character_received_flag0));
  FDRE character_received_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag0),
        .Q(character_received_flag),
        .R(framing_error_flag0));
  FDRE character_received_rclk_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(character_received_d),
        .Q(character_received_rclk),
        .R(rx_rst));
  FDRE clk1x_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x),
        .Q(clk1x_d),
        .R(rx_rst));
  LUT3 #(
    .INIT(8'hF6)) 
    clk1x_i_1__0
       (.I0(mcr4_d),
        .I1(framing_error_flag_reg_0[3]),
        .I2(bus2ip_reset_int_core),
        .O(rx_rst));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    clk1x_i_2
       (.I0(rclk_int),
        .I1(\clkdiv_reg_n_0_[3] ),
        .I2(\clkdiv_reg_n_0_[2] ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(\clkdiv_reg_n_0_[0] ),
        .I5(clk1x_i_3_n_0),
        .O(clk1x0));
  LUT6 #(
    .INIT(64'hFFCFFFEFCFCFFFEF)) 
    clk1x_i_3
       (.I0(parity_error_d_i_3_0[2]),
        .I1(\clkdiv[3]_i_5_n_0 ),
        .I2(got_start_bit_d),
        .I3(resynch_clkdiv_d_i_4_n_0),
        .I4(receive_state[2]),
        .I5(receive_state[0]),
        .O(clk1x_i_3_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x0),
        .Q(clk1x),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    clk2x_i_1
       (.I0(\clkdiv_reg_n_0_[0] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[2] ),
        .I3(\clkdiv_reg_n_0_[3] ),
        .I4(rclk_int),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    clk_div_en_i_1
       (.I0(clk_div_en_i_2_n_0),
        .I1(receive_state[2]),
        .I2(receive_state[1]),
        .I3(receive_state[0]),
        .I4(receive_state[3]),
        .I5(clk1x_d),
        .O(clk_div_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    clk_div_en_i_2
       (.I0(clk_div_en_reg_n_0),
        .I1(sin_d1),
        .I2(sin_d2),
        .I3(got_start_bit_d),
        .I4(rclk_int),
        .I5(parity_error_d0),
        .O(clk_div_en_i_2_n_0));
  FDRE clk_div_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_div_en_i_1_n_0),
        .Q(clk_div_en_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000F8)) 
    \clkdiv[0]_i_1 
       (.I0(baudoutN_int_i),
        .I1(\dll_reg[0] ),
        .I2(clk1x_i_3_n_0),
        .I3(\clkdiv[3]_i_4_n_0 ),
        .I4(\clkdiv_reg_n_0_[0] ),
        .I5(\clkdiv[2]_i_4_n_0 ),
        .O(clkdiv[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0E00)) 
    \clkdiv[1]_i_1 
       (.I0(baudoutN_int),
        .I1(clk1x_i_3_n_0),
        .I2(\clkdiv[3]_i_4_n_0 ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(\clkdiv_reg_n_0_[0] ),
        .I5(\clkdiv[2]_i_4_n_0 ),
        .O(clkdiv[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F800)) 
    \clkdiv[2]_i_1 
       (.I0(baudoutN_int_i),
        .I1(\dll_reg[0] ),
        .I2(clk1x_i_3_n_0),
        .I3(\clkdiv[2]_i_2_n_0 ),
        .I4(\clkdiv[2]_i_3_n_0 ),
        .I5(\clkdiv[2]_i_4_n_0 ),
        .O(clkdiv[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000006A)) 
    \clkdiv[2]_i_2 
       (.I0(\clkdiv_reg_n_0_[2] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(resynch_clkdiv_startbit_d),
        .I4(resynch_clkdiv_frame_d),
        .I5(resynch_clkdiv_d),
        .O(\clkdiv[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBEFF)) 
    \clkdiv[2]_i_3 
       (.I0(bus2ip_reset_int_core),
        .I1(framing_error_flag_reg_0[3]),
        .I2(mcr4_d),
        .I3(clk_div_en_reg_n_0),
        .O(\clkdiv[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \clkdiv[2]_i_4 
       (.I0(parity_error_d_i_3_0[1]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(clk2x),
        .I3(\clkdiv[3]_i_3_n_0 ),
        .I4(clk_div_en_reg_n_0),
        .I5(rx_rst),
        .O(\clkdiv[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7D)) 
    \clkdiv[3]_i_10 
       (.I0(clk_div_en_reg_n_0),
        .I1(mcr4_d),
        .I2(framing_error_flag_reg_0[3]),
        .I3(bus2ip_reset_int_core),
        .I4(resynch_clkdiv_d),
        .O(\clkdiv[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \clkdiv[3]_i_11 
       (.I0(parity_error_d_i_3_0[1]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(clk2x),
        .O(\clkdiv[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0008)) 
    \clkdiv[3]_i_1__0 
       (.I0(\clkdiv[3]_i_3_n_0 ),
        .I1(clk2x),
        .I2(parity_error_d_i_3_0[0]),
        .I3(parity_error_d_i_3_0[1]),
        .I4(\clkdiv[3]_i_4_n_0 ),
        .I5(rclk_int),
        .O(\clkdiv[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0A0E0)) 
    \clkdiv[3]_i_2 
       (.I0(\clkdiv[3]_i_5_n_0 ),
        .I1(\clkdiv[3]_i_6_n_0 ),
        .I2(\clkdiv[3]_i_7_n_0 ),
        .I3(got_start_bit_d),
        .I4(baudoutN_int),
        .I5(\clkdiv[3]_i_8_n_0 ),
        .O(clkdiv[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \clkdiv[3]_i_3 
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(parity_error_d_i_3_0[2]),
        .I4(receive_state[2]),
        .O(\clkdiv[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \clkdiv[3]_i_4 
       (.I0(resynch_clkdiv_d),
        .I1(rx_rst),
        .I2(clk_div_en_reg_n_0),
        .I3(resynch_clkdiv_frame_d),
        .I4(resynch_clkdiv_startbit_d),
        .O(\clkdiv[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FFFBFFFFAAFF)) 
    \clkdiv[3]_i_5 
       (.I0(receive_state[1]),
        .I1(sin_d10),
        .I2(sin_d9),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .I5(receive_state[2]),
        .O(\clkdiv[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \clkdiv[3]_i_6 
       (.I0(receive_state[2]),
        .I1(parity_error_d_i_3_0[2]),
        .O(\clkdiv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF6A)) 
    \clkdiv[3]_i_7 
       (.I0(\clkdiv_reg_n_0_[3] ),
        .I1(\clkdiv_reg_n_0_[2] ),
        .I2(\clkdiv[3]_i_9_n_0 ),
        .I3(resynch_clkdiv_startbit_d),
        .I4(resynch_clkdiv_frame_d),
        .I5(\clkdiv[3]_i_10_n_0 ),
        .O(\clkdiv[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h80808080F080C0C0)) 
    \clkdiv[3]_i_8 
       (.I0(receive_state[0]),
        .I1(resynch_clkdiv_d_i_4_n_0),
        .I2(\clkdiv[3]_i_7_n_0 ),
        .I3(\clkdiv[3]_i_11_n_0 ),
        .I4(parity_error_d_i_3_0[2]),
        .I5(receive_state[2]),
        .O(\clkdiv[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clkdiv[3]_i_9 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .O(\clkdiv[3]_i_9_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[0]),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[1]),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[2]),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[3]),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    clock_1x_early_i_1
       (.I0(\clkdiv_reg_n_0_[2] ),
        .I1(\clkdiv_reg_n_0_[3] ),
        .I2(\clkdiv_reg_n_0_[1] ),
        .I3(\clkdiv_reg_n_0_[0] ),
        .I4(rclk_int),
        .O(clock_1x_early0));
  FDRE clock_1x_early_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clock_1x_early0),
        .Q(clock_1x_early),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    framing_error_d_i_1
       (.I0(sin_d2),
        .I1(parity_error_d_i_3_0[3]),
        .I2(receive_state[1]),
        .I3(framing_error_d_i_2_n_0),
        .I4(framing_error_d_i_3_n_0),
        .I5(framing_error_d_i_4_n_0),
        .O(framing_error_com));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h1F100000)) 
    framing_error_d_i_2
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[0]),
        .I3(receive_state[2]),
        .I4(receive_state[3]),
        .O(framing_error_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h0004000400040044)) 
    framing_error_d_i_3
       (.I0(sin_d2),
        .I1(framing_error_d_i_5_n_0),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .I4(parity_error_d_i_3_0[3]),
        .I5(framing_error_d_i_6_n_0),
        .O(framing_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    framing_error_d_i_4
       (.I0(\Lcr_reg[1] ),
        .I1(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I2(receive_state[0]),
        .I3(receive_state[3]),
        .I4(sin_d2),
        .I5(parity_error_d_i_3_0[3]),
        .O(framing_error_d_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    framing_error_d_i_5
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .O(framing_error_d_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    framing_error_d_i_6
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .O(framing_error_d_i_6_n_0));
  FDRE framing_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(framing_error_com),
        .Q(framing_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    framing_error_flag_i_1
       (.I0(framing_error_d),
        .I1(rclk_int),
        .I2(framing_error_flag),
        .O(framing_error_flag_i_1_n_0));
  FDRE framing_error_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_flag_i_1_n_0),
        .Q(framing_error_flag),
        .R(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    framing_error_i_i_1
       (.I0(framing_error_flag),
        .I1(character_received_flag),
        .O(framing_error_i0));
  FDRE framing_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_i0),
        .Q(rx_fifo_data_in[9]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h005FFF5FFF0FFDFF)) 
    got_start_bit_d_i_1
       (.I0(sin_d2),
        .I1(parity_error_d_i_3_0[2]),
        .I2(receive_state[0]),
        .I3(receive_state[3]),
        .I4(receive_state[2]),
        .I5(receive_state[1]),
        .O(got_start_bit_com));
  FDRE got_start_bit_d_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(got_start_bit_com),
        .Q(got_start_bit_d),
        .R(rx_rst));
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    have_bi_in_fifo_n_i_i_1
       (.I0(mcr4_d),
        .I1(framing_error_flag_reg_0[3]),
        .I2(bus2ip_reset_int_core),
        .I3(sin_d2),
        .I4(have_bi_in_fifo_n_i_i_2_n_0),
        .O(have_bi_in_fifo_n_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h888AAA8A)) 
    have_bi_in_fifo_n_i_i_2
       (.I0(have_bi_in_fifo_n),
        .I1(break_interrupt_flag),
        .I2(character_received_flag),
        .I3(\lsr_reg[0] ),
        .I4(rx_fifo_data_in[8]),
        .O(have_bi_in_fifo_n_i_i_2_n_0));
  FDRE have_bi_in_fifo_n_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(have_bi_in_fifo_n_i_i_1_n_0),
        .Q(have_bi_in_fifo_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004540)) 
    load_rbr_d_i_1
       (.I0(resynch_clkdiv_d),
        .I1(load_rbr_com),
        .I2(clk2x),
        .I3(load_rbr_d),
        .I4(rx_rst),
        .O(load_rbr_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h014000000F200000)) 
    load_rbr_d_i_2
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .I4(receive_state[3]),
        .I5(receive_state[0]),
        .O(load_rbr_com));
  FDRE load_rbr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(load_rbr_d_i_1_n_0),
        .Q(load_rbr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBFBFFFB88F8FFF8)) 
    \lsr[0]_i_2 
       (.I0(Q),
        .I1(lsr_reg0),
        .I2(character_received),
        .I3(\lsr_reg[0] ),
        .I4(\character_counter_reg[0] ),
        .I5(\lsr_reg[0]_0 ),
        .O(\d_d_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFCEC)) 
    parity_error_d_i_1
       (.I0(parity_error_d_i_2_n_0),
        .I1(parity_error_d_i_3_n_0),
        .I2(parity_error_d_i_4_n_0),
        .I3(parity_error_d_i_5_n_0),
        .I4(parity_error_d_i_6_n_0),
        .I5(parity_error_d_i_7_n_0),
        .O(rx_parity_com));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h82)) 
    parity_error_d_i_10
       (.I0(parity_error_d_i_3_0[5]),
        .I1(parity_error_d_i_3_0[4]),
        .I2(sin_d2),
        .O(parity_error_d_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0E30)) 
    parity_error_d_i_11
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .O(parity_error_d_i_11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    parity_error_d_i_12
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .O(parity_error_d_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    parity_error_d_i_2
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .O(parity_error_d_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAEAAAAA)) 
    parity_error_d_i_3
       (.I0(parity_error_d_i_8_n_0),
        .I1(parity_error_d_i_9_n_0),
        .I2(parity_error_d_i_10_n_0),
        .I3(receive_state[1]),
        .I4(receive_state[3]),
        .O(parity_error_d_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    parity_error_d_i_4
       (.I0(sin_d2),
        .I1(parity_error_d),
        .O(parity_error_d_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000D11100FF)) 
    parity_error_d_i_5
       (.I0(receive_state[0]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(receive_state[3]),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(parity_error_d_i_5_n_0));
  LUT6 #(
    .INIT(64'h0800000000800000)) 
    parity_error_d_i_6
       (.I0(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I1(parity_error_d_i_10_n_0),
        .I2(parity_error_d_i_3_0[0]),
        .I3(parity_error_d_i_3_0[1]),
        .I4(receive_state[3]),
        .I5(receive_state[0]),
        .O(parity_error_d_i_6_n_0));
  LUT6 #(
    .INIT(64'h880000008800F000)) 
    parity_error_d_i_7
       (.I0(parity_error_d_i_11_n_0),
        .I1(parity_error_d_i_4_n_0),
        .I2(parity_error_d_i_12_n_0),
        .I3(receive_state[0]),
        .I4(receive_state[3]),
        .I5(parity_error_d_i_3_0[4]),
        .O(parity_error_d_i_7_n_0));
  LUT6 #(
    .INIT(64'h013D010100000000)) 
    parity_error_d_i_8
       (.I0(parity_error_d_i_3_0[4]),
        .I1(receive_state[2]),
        .I2(receive_state[1]),
        .I3(parity_error_d_i_3_0[5]),
        .I4(parity_error_d_i_4_n_0),
        .I5(receive_state[3]),
        .O(parity_error_d_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h10F0)) 
    parity_error_d_i_9
       (.I0(parity_error_d_i_3_0[0]),
        .I1(parity_error_d_i_3_0[1]),
        .I2(receive_state[2]),
        .I3(receive_state[0]),
        .O(parity_error_d_i_9_n_0));
  FDRE parity_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(rx_parity_com),
        .Q(parity_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    parity_error_i_i_1
       (.I0(parity_error_d_i_3_0[3]),
        .I1(character_received_flag),
        .I2(parity_error_latch),
        .O(parity_error_i0));
  FDRE parity_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_i0),
        .Q(rx_fifo_data_in[10]),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    parity_error_latch_i_1
       (.I0(parity_error_d),
        .I1(load_rbr_d),
        .I2(clk2x),
        .I3(parity_error_latch),
        .O(parity_error_latch_i_1_n_0));
  FDRE parity_error_latch_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_latch_i_1_n_0),
        .Q(parity_error_latch),
        .R(framing_error_flag0));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \rbr_d[0]_i_1 
       (.I0(rsr[0]),
        .I1(rsr[1]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(parity_error_d_i_3_0[0]),
        .I4(rsr[2]),
        .I5(rsr[3]),
        .O(\rbr_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \rbr_d[1]_i_1 
       (.I0(rsr[1]),
        .I1(rsr[2]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(parity_error_d_i_3_0[0]),
        .I4(rsr[3]),
        .I5(rsr[4]),
        .O(\rbr_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \rbr_d[2]_i_1 
       (.I0(rsr[2]),
        .I1(rsr[3]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(parity_error_d_i_3_0[0]),
        .I4(rsr[4]),
        .I5(rsr[5]),
        .O(\rbr_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \rbr_d[3]_i_1 
       (.I0(rsr[3]),
        .I1(rsr[4]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(parity_error_d_i_3_0[0]),
        .I4(rsr[5]),
        .I5(rsr[6]),
        .O(\rbr_d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \rbr_d[4]_i_1 
       (.I0(rsr[4]),
        .I1(rsr[5]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(parity_error_d_i_3_0[0]),
        .I4(rsr[6]),
        .I5(rsr[7]),
        .O(\rbr_d[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rbr_d[5]_i_1 
       (.I0(rsr[7]),
        .I1(rsr[6]),
        .I2(rsr[5]),
        .I3(parity_error_d_i_3_0[0]),
        .I4(parity_error_d_i_3_0[1]),
        .O(\rbr_d[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \rbr_d[6]_i_1 
       (.I0(rsr[6]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(parity_error_d_i_3_0[1]),
        .I3(rsr[7]),
        .O(\rbr_d[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rbr_d[7]_i_1 
       (.I0(load_rbr_d),
        .I1(clk1x),
        .O(rbr_d0));
  LUT3 #(
    .INIT(8'h80)) 
    \rbr_d[7]_i_2 
       (.I0(parity_error_d_i_3_0[1]),
        .I1(parity_error_d_i_3_0[0]),
        .I2(rsr[7]),
        .O(\rbr_d[7]_i_2_n_0 ));
  FDRE \rbr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[0]_i_1_n_0 ),
        .Q(rx_fifo_data_in[0]),
        .R(rx_rst));
  FDRE \rbr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[1]_i_1_n_0 ),
        .Q(rx_fifo_data_in[1]),
        .R(rx_rst));
  FDRE \rbr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[2]_i_1_n_0 ),
        .Q(rx_fifo_data_in[2]),
        .R(rx_rst));
  FDRE \rbr_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[3]_i_1_n_0 ),
        .Q(rx_fifo_data_in[3]),
        .R(rx_rst));
  FDRE \rbr_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[4]_i_1_n_0 ),
        .Q(rx_fifo_data_in[4]),
        .R(rx_rst));
  FDRE \rbr_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[5]_i_1_n_0 ),
        .Q(rx_fifo_data_in[5]),
        .R(rx_rst));
  FDRE \rbr_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[6]_i_1_n_0 ),
        .Q(rx_fifo_data_in[6]),
        .R(rx_rst));
  FDRE \rbr_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[7]_i_2_n_0 ),
        .Q(rx_fifo_data_in[7]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h00000000FF004000)) 
    resynch_clkdiv_d_i_1
       (.I0(resynch_clkdiv_d_i_2_n_0),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(resynch_clkdiv_startbit_d_i_3_n_0),
        .I4(resynch_clkdiv_d_i_3_n_0),
        .I5(resynch_clkdiv_d_i_4_n_0),
        .O(resynch_clkdiv));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    resynch_clkdiv_d_i_2
       (.I0(receive_state[3]),
        .I1(receive_state[0]),
        .O(resynch_clkdiv_d_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    resynch_clkdiv_d_i_3
       (.I0(parity_error_d_i_3_0[2]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .I4(receive_state[1]),
        .O(resynch_clkdiv_d_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    resynch_clkdiv_d_i_4
       (.I0(clock_1x_early),
        .I1(framing_error_d),
        .I2(sin_d6),
        .I3(sin_d5),
        .O(resynch_clkdiv_d_i_4_n_0));
  FDRE resynch_clkdiv_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv),
        .Q(resynch_clkdiv_d),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8888888)) 
    resynch_clkdiv_frame_d_i_1
       (.I0(resynch_clkdiv_frame_d),
        .I1(rx_rst),
        .I2(resynch_clkdiv_frame_d_i_2_n_0),
        .I3(got_start_bit_d),
        .I4(rclk_int),
        .O(resynch_clkdiv_frame_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    resynch_clkdiv_frame_d_i_2
       (.I0(resynch_clkdiv_d_i_2_n_0),
        .I1(\clkdiv[3]_i_6_n_0 ),
        .I2(sin_d9),
        .I3(sin_d10),
        .I4(framing_error_d),
        .I5(receive_state[1]),
        .O(resynch_clkdiv_frame_d_i_2_n_0));
  FDRE resynch_clkdiv_frame_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_frame_d_i_1_n_0),
        .Q(resynch_clkdiv_frame_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    resynch_clkdiv_startbit_d_i_1
       (.I0(sin_d9),
        .I1(sin_d10),
        .I2(receive_state[3]),
        .I3(receive_state[1]),
        .I4(resynch_clkdiv_startbit_d_i_2_n_0),
        .I5(resynch_clkdiv_startbit_d_i_3_n_0),
        .O(resynch_clkdiv_startbit));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    resynch_clkdiv_startbit_d_i_2
       (.I0(receive_state[0]),
        .I1(receive_state[2]),
        .O(resynch_clkdiv_startbit_d_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    resynch_clkdiv_startbit_d_i_3
       (.I0(rclk_int),
        .I1(got_start_bit_d),
        .O(resynch_clkdiv_startbit_d_i_3_n_0));
  FDRE resynch_clkdiv_startbit_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_startbit),
        .Q(resynch_clkdiv_startbit_d),
        .R(rx_rst));
  FDRE \rsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[1]),
        .Q(rsr[0]),
        .R(rx_rst));
  FDRE \rsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[2]),
        .Q(rsr[1]),
        .R(rx_rst));
  FDRE \rsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[3]),
        .Q(rsr[2]),
        .R(rx_rst));
  FDRE \rsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[4]),
        .Q(rsr[3]),
        .R(rx_rst));
  FDRE \rsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[5]),
        .Q(rsr[4]),
        .R(rx_rst));
  FDRE \rsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[6]),
        .Q(rsr[5]),
        .R(rx_rst));
  FDRE \rsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[7]),
        .Q(rsr[6]),
        .R(rx_rst));
  FDRE \rsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(sin_d2),
        .Q(rsr[7]),
        .R(rx_rst));
  FDRE sin_d10_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d9),
        .Q(sin_d10),
        .R(rx_rst));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    sin_d1_i_1
       (.I0(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_6_n_0 ),
        .I1(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_5_n_0 ),
        .I2(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_4_n_0 ),
        .I3(\NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_3_n_0 ),
        .I4(baudoutN_int_i),
        .O(rclk_int));
  FDRE sin_d1_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(rx_sin),
        .Q(sin_d1),
        .R(rx_rst));
  FDRE sin_d2_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d1),
        .Q(sin_d2),
        .R(rx_rst));
  FDRE sin_d3_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d2),
        .Q(sin_d3),
        .R(rx_rst));
  FDRE sin_d4_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d3),
        .Q(sin_d4),
        .R(rx_rst));
  FDRE sin_d5_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d4),
        .Q(sin_d5),
        .R(rx_rst));
  FDRE sin_d6_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d5),
        .Q(sin_d6),
        .R(rx_rst));
  FDRE sin_d7_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d6),
        .Q(sin_d7),
        .R(rx_rst));
  FDRE sin_d8_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d7),
        .Q(sin_d8),
        .R(rx_rst));
  FDRE sin_d9_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d8),
        .Q(sin_d9),
        .R(rx_rst));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_rx_fifo_block
   (rx_fifo_full,
    Rx_error_in_fifo,
    wr_d_reg,
    Q,
    \INFERRED_GEN.cnt_i_reg[4] ,
    rst_reg,
    chipSelect_reg,
    \iir_reg[3] ,
    p_1_out0,
    rx_error_in_fifo_cnt_dn0,
    out,
    iir,
    \lsr_reg[0] ,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    bus2ip_reset_int_core,
    s_axi_aclk,
    rx_fifo_rst,
    Rx_error_in_fifo0,
    wr_d,
    chipSelect,
    rx_fifo_rd_en_d,
    lsr2_rst_reg,
    lsr2_rst,
    \INFERRED_GEN.cnt_i_reg[2] ,
    \lsr_reg[0]_0 ,
    \lsr_reg[0]_1 ,
    \lsr_reg[0]_2 ,
    \lsr_reg[1] ,
    lsr_reg0,
    \lsr_reg[1]_0 ,
    rclk_int,
    Rx_fifo_trigger_reg,
    \iir_reg[2] ,
    character_received,
    rd_d,
    thre_iir_set_reg,
    thre_iir_set_reg_0,
    \iir_reg[0] ,
    thre_iir_set,
    thre_iir_set_reg_1,
    thre_iir_set_reg_2,
    writing_thr,
    \iir_reg[0]_0 ,
    \iir_reg[3]_0 ,
    \iir_reg[3]_1 ,
    \iir_reg[0]_1 ,
    \iir_reg[0]_2 ,
    \iir_reg[0]_3 ,
    \iir_reg[0]_4 ,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    p_2_in44_in,
    \iir_reg[0]_5 ,
    \iir_reg[0]_6 ,
    \iir_reg[2]_0 ,
    rxrdyn,
    L,
    rx_fifo_rd_en_d1,
    rx_fifo_data_in,
    \lsr_reg[2] ,
    rx_fifo_wr_en_i,
    SR);
  output rx_fifo_full;
  output Rx_error_in_fifo;
  output wr_d_reg;
  output [0:0]Q;
  output \INFERRED_GEN.cnt_i_reg[4] ;
  output rst_reg;
  output chipSelect_reg;
  output \iir_reg[3] ;
  output p_1_out0;
  output rx_error_in_fifo_cnt_dn0;
  output [7:0]out;
  output [2:0]iir;
  output \lsr_reg[0] ;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input rx_fifo_rst;
  input Rx_error_in_fifo0;
  input wr_d;
  input chipSelect;
  input rx_fifo_rd_en_d;
  input lsr2_rst_reg;
  input lsr2_rst;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input \lsr_reg[0]_0 ;
  input \lsr_reg[0]_1 ;
  input \lsr_reg[0]_2 ;
  input [0:0]\lsr_reg[1] ;
  input lsr_reg0;
  input \lsr_reg[1]_0 ;
  input rclk_int;
  input [2:0]Rx_fifo_trigger_reg;
  input \iir_reg[2] ;
  input character_received;
  input rd_d;
  input thre_iir_set_reg;
  input thre_iir_set_reg_0;
  input \iir_reg[0] ;
  input thre_iir_set;
  input thre_iir_set_reg_1;
  input thre_iir_set_reg_2;
  input writing_thr;
  input \iir_reg[0]_0 ;
  input \iir_reg[3]_0 ;
  input \iir_reg[3]_1 ;
  input \iir_reg[0]_1 ;
  input \iir_reg[0]_2 ;
  input \iir_reg[0]_3 ;
  input \iir_reg[0]_4 ;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input p_2_in44_in;
  input \iir_reg[0]_5 ;
  input [2:0]\iir_reg[0]_6 ;
  input \iir_reg[2]_0 ;
  input rxrdyn;
  input [1:0]L;
  input rx_fifo_rd_en_d1;
  input [10:0]rx_fifo_data_in;
  input [0:0]\lsr_reg[2] ;
  input rx_fifo_wr_en_i;
  input [0:0]SR;

  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [1:0]L;
  wire [0:0]Q;
  wire Rx_error_in_fifo;
  wire Rx_error_in_fifo0;
  wire [2:0]Rx_fifo_trigger_reg;
  wire [0:0]SR;
  wire bus2ip_reset_int_core;
  wire character_received;
  wire chipSelect;
  wire chipSelect_reg;
  wire fifo_trigger_level_flag;
  wire [2:0]iir;
  wire \iir_reg[0] ;
  wire \iir_reg[0]_0 ;
  wire \iir_reg[0]_1 ;
  wire \iir_reg[0]_2 ;
  wire \iir_reg[0]_3 ;
  wire \iir_reg[0]_4 ;
  wire \iir_reg[0]_5 ;
  wire [2:0]\iir_reg[0]_6 ;
  wire \iir_reg[2] ;
  wire \iir_reg[2]_0 ;
  wire \iir_reg[3] ;
  wire \iir_reg[3]_0 ;
  wire \iir_reg[3]_1 ;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire lsr_reg0;
  wire \lsr_reg[0] ;
  wire \lsr_reg[0]_0 ;
  wire \lsr_reg[0]_1 ;
  wire \lsr_reg[0]_2 ;
  wire [0:0]\lsr_reg[1] ;
  wire \lsr_reg[1]_0 ;
  wire [0:0]\lsr_reg[2] ;
  wire [7:0]out;
  wire p_1_out0;
  wire p_2_in44_in;
  wire rclk_int;
  wire rd_d;
  wire rst_reg;
  wire rx_error_in_fifo_cnt_dn0;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire rxrdyn;
  wire s_axi_aclk;
  wire thre_iir_set;
  wire thre_iir_set_reg;
  wire thre_iir_set_reg_0;
  wire thre_iir_set_reg_1;
  wire thre_iir_set_reg_2;
  wire wr_d;
  wire wr_d_reg;
  wire writing_thr;

  u96v2_sbc_base_axi_uart16550_0_0_rx_fifo_control rx_fifo_control_1
       (.L(L),
        .Q(Q),
        .Rx_error_in_fifo(Rx_error_in_fifo),
        .Rx_error_in_fifo0(Rx_error_in_fifo0),
        .SR(SR),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .chipSelect(chipSelect),
        .chipSelect_reg(chipSelect_reg),
        .fifo_trigger_level_flag(fifo_trigger_level_flag),
        .iir(iir),
        .\iir_reg[0] (\iir_reg[0] ),
        .\iir_reg[0]_0 (\iir_reg[0]_0 ),
        .\iir_reg[0]_1 (\iir_reg[0]_1 ),
        .\iir_reg[0]_2 (\iir_reg[0]_2 ),
        .\iir_reg[0]_3 (lsr2_rst_reg),
        .\iir_reg[0]_4 (\iir_reg[0]_3 ),
        .\iir_reg[0]_5 (\iir_reg[0]_4 ),
        .\iir_reg[0]_6 (\iir_reg[0]_5 ),
        .\iir_reg[0]_7 (\iir_reg[0]_6 ),
        .\iir_reg[2] (\lsr_reg[0]_1 ),
        .\iir_reg[2]_0 (\iir_reg[2]_0 ),
        .\iir_reg[2]_1 (\iir_reg[2] ),
        .\iir_reg[3] (\iir_reg[3] ),
        .\iir_reg[3]_0 (\iir_reg[3]_0 ),
        .\iir_reg[3]_1 (\lsr_reg[0]_0 ),
        .\iir_reg[3]_2 (\iir_reg[3]_1 ),
        .\lsr_reg[0] (\lsr_reg[0] ),
        .p_1_out0(p_1_out0),
        .p_2_in44_in(p_2_in44_in),
        .rclk_int(rclk_int),
        .rd_d(rd_d),
        .rxrdyN_int_reg(Rx_fifo_trigger_reg[0]),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .thre_iir_set(thre_iir_set),
        .thre_iir_set_reg(thre_iir_set_reg),
        .thre_iir_set_reg_0(thre_iir_set_reg_0),
        .thre_iir_set_reg_1(thre_iir_set_reg_1),
        .thre_iir_set_reg_2(thre_iir_set_reg_2),
        .writing_thr(writing_thr));
  u96v2_sbc_base_axi_uart16550_0_0_srl_fifo_rbu_f__parameterized0 srl_fifo_rbu_f_i1
       (.\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q(Q),
        .Rx_fifo_trigger_reg(Rx_fifo_trigger_reg[2:1]),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .character_received(character_received),
        .chipSelect(chipSelect),
        .fifo_trigger_level_flag(fifo_trigger_level_flag),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(lsr2_rst_reg),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .lsr_reg0(lsr_reg0),
        .\lsr_reg[0] (\lsr_reg[0]_0 ),
        .\lsr_reg[0]_0 (\lsr_reg[0]_1 ),
        .\lsr_reg[0]_1 (\lsr_reg[0]_2 ),
        .\lsr_reg[1] (\lsr_reg[1] ),
        .\lsr_reg[1]_0 (\lsr_reg[1]_0 ),
        .\lsr_reg[1]_1 (\iir_reg[2] ),
        .\lsr_reg[2] (\lsr_reg[2] ),
        .out(out),
        .rst_reg(rst_reg),
        .rx_error_in_fifo_cnt_dn0(rx_error_in_fifo_cnt_dn0),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk),
        .wr_d(wr_d),
        .wr_d_reg(wr_d_reg));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_rx_fifo_control
   (Rx_error_in_fifo,
    chipSelect_reg,
    \iir_reg[3] ,
    p_1_out0,
    iir,
    \lsr_reg[0] ,
    bus2ip_reset_int_core,
    fifo_trigger_level_flag,
    s_axi_aclk,
    Rx_error_in_fifo0,
    rclk_int,
    chipSelect,
    rd_d,
    thre_iir_set_reg,
    thre_iir_set_reg_0,
    \iir_reg[0] ,
    thre_iir_set,
    thre_iir_set_reg_1,
    thre_iir_set_reg_2,
    writing_thr,
    \iir_reg[0]_0 ,
    \iir_reg[3]_0 ,
    \iir_reg[3]_1 ,
    \iir_reg[3]_2 ,
    \iir_reg[0]_1 ,
    \iir_reg[0]_2 ,
    \iir_reg[0]_3 ,
    \iir_reg[0]_4 ,
    \iir_reg[2] ,
    \iir_reg[0]_5 ,
    p_2_in44_in,
    \iir_reg[0]_6 ,
    \iir_reg[0]_7 ,
    \iir_reg[2]_0 ,
    \iir_reg[2]_1 ,
    rxrdyN_int_reg,
    rxrdyn,
    Q,
    L,
    SR);
  output Rx_error_in_fifo;
  output chipSelect_reg;
  output \iir_reg[3] ;
  output p_1_out0;
  output [2:0]iir;
  output \lsr_reg[0] ;
  input bus2ip_reset_int_core;
  input fifo_trigger_level_flag;
  input s_axi_aclk;
  input Rx_error_in_fifo0;
  input rclk_int;
  input chipSelect;
  input rd_d;
  input thre_iir_set_reg;
  input thre_iir_set_reg_0;
  input \iir_reg[0] ;
  input thre_iir_set;
  input thre_iir_set_reg_1;
  input thre_iir_set_reg_2;
  input writing_thr;
  input \iir_reg[0]_0 ;
  input \iir_reg[3]_0 ;
  input \iir_reg[3]_1 ;
  input \iir_reg[3]_2 ;
  input \iir_reg[0]_1 ;
  input \iir_reg[0]_2 ;
  input \iir_reg[0]_3 ;
  input \iir_reg[0]_4 ;
  input \iir_reg[2] ;
  input \iir_reg[0]_5 ;
  input p_2_in44_in;
  input \iir_reg[0]_6 ;
  input [2:0]\iir_reg[0]_7 ;
  input \iir_reg[2]_0 ;
  input \iir_reg[2]_1 ;
  input [0:0]rxrdyN_int_reg;
  input rxrdyn;
  input [0:0]Q;
  input [1:0]L;
  input [0:0]SR;

  wire [1:0]L;
  wire [0:0]Q;
  wire Rx_error_in_fifo;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire bus2ip_reset_int_core;
  wire character_counter0;
  wire \character_counter[9]_i_4_n_0 ;
  wire \character_counter_reg_n_0_[0] ;
  wire \character_counter_reg_n_0_[1] ;
  wire \character_counter_reg_n_0_[2] ;
  wire \character_counter_reg_n_0_[3] ;
  wire \character_counter_reg_n_0_[4] ;
  wire \character_counter_reg_n_0_[5] ;
  wire \character_counter_reg_n_0_[6] ;
  wire \character_counter_reg_n_0_[7] ;
  wire chipSelect;
  wire chipSelect_reg;
  wire fifo_trigger_level_flag;
  wire [2:0]iir;
  wire \iir[1]_i_2_n_0 ;
  wire \iir[2]_i_6_n_0 ;
  wire \iir[3]_i_2_n_0 ;
  wire \iir[3]_i_3_n_0 ;
  wire \iir_reg[0] ;
  wire \iir_reg[0]_0 ;
  wire \iir_reg[0]_1 ;
  wire \iir_reg[0]_2 ;
  wire \iir_reg[0]_3 ;
  wire \iir_reg[0]_4 ;
  wire \iir_reg[0]_5 ;
  wire \iir_reg[0]_6 ;
  wire [2:0]\iir_reg[0]_7 ;
  wire \iir_reg[2] ;
  wire \iir_reg[2]_0 ;
  wire \iir_reg[2]_1 ;
  wire \iir_reg[3] ;
  wire \iir_reg[3]_0 ;
  wire \iir_reg[3]_1 ;
  wire \iir_reg[3]_2 ;
  wire \lsr_reg[0] ;
  wire p_0_in;
  wire p_1_in;
  wire p_1_out0;
  wire p_2_in44_in;
  wire [9:0]plusOp;
  wire rclk_int;
  wire rd_d;
  wire rx_fifo_trigger;
  wire rxrdyN_int_i_2_n_0;
  wire [0:0]rxrdyN_int_reg;
  wire rxrdyn;
  wire s_axi_aclk;
  wire thre_iir_set;
  wire thre_iir_set_i_3_n_0;
  wire thre_iir_set_i_5_n_0;
  wire thre_iir_set_reg;
  wire thre_iir_set_reg_0;
  wire thre_iir_set_reg_1;
  wire thre_iir_set_reg_2;
  wire writing_thr;

  FDRE Rx_error_in_fifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_error_in_fifo0),
        .Q(Rx_error_in_fifo),
        .R(bus2ip_reset_int_core));
  FDRE Rx_fifo_trigger_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_trigger_level_flag),
        .Q(rx_fifo_trigger),
        .R(bus2ip_reset_int_core));
  LUT1 #(
    .INIT(2'h1)) 
    \character_counter[0]_i_1 
       (.I0(\character_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \character_counter[1]_i_1 
       (.I0(\character_counter_reg_n_0_[0] ),
        .I1(\character_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \character_counter[2]_i_1 
       (.I0(\character_counter_reg_n_0_[1] ),
        .I1(\character_counter_reg_n_0_[0] ),
        .I2(\character_counter_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \character_counter[3]_i_1 
       (.I0(\character_counter_reg_n_0_[2] ),
        .I1(\character_counter_reg_n_0_[0] ),
        .I2(\character_counter_reg_n_0_[1] ),
        .I3(\character_counter_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \character_counter[4]_i_1 
       (.I0(\character_counter_reg_n_0_[3] ),
        .I1(\character_counter_reg_n_0_[1] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[2] ),
        .I4(\character_counter_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \character_counter[5]_i_1 
       (.I0(\character_counter_reg_n_0_[4] ),
        .I1(\character_counter_reg_n_0_[2] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[1] ),
        .I4(\character_counter_reg_n_0_[3] ),
        .I5(\character_counter_reg_n_0_[5] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \character_counter[6]_i_1 
       (.I0(\character_counter[9]_i_4_n_0 ),
        .I1(\character_counter_reg_n_0_[6] ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \character_counter[7]_i_1 
       (.I0(\character_counter_reg_n_0_[6] ),
        .I1(\character_counter[9]_i_4_n_0 ),
        .I2(\character_counter_reg_n_0_[7] ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \character_counter[8]_i_1 
       (.I0(\character_counter_reg_n_0_[7] ),
        .I1(\character_counter[9]_i_4_n_0 ),
        .I2(\character_counter_reg_n_0_[6] ),
        .I3(p_0_in),
        .O(plusOp[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \character_counter[9]_i_2 
       (.I0(rclk_int),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(character_counter0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \character_counter[9]_i_3 
       (.I0(p_1_in),
        .I1(\character_counter_reg_n_0_[6] ),
        .I2(\character_counter[9]_i_4_n_0 ),
        .I3(\character_counter_reg_n_0_[7] ),
        .I4(p_0_in),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \character_counter[9]_i_4 
       (.I0(\character_counter_reg_n_0_[4] ),
        .I1(\character_counter_reg_n_0_[2] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[1] ),
        .I4(\character_counter_reg_n_0_[3] ),
        .I5(\character_counter_reg_n_0_[5] ),
        .O(\character_counter[9]_i_4_n_0 ));
  FDRE \character_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[0]),
        .Q(\character_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE \character_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[1]),
        .Q(\character_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE \character_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[2]),
        .Q(\character_counter_reg_n_0_[2] ),
        .R(SR));
  FDRE \character_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[3]),
        .Q(\character_counter_reg_n_0_[3] ),
        .R(SR));
  FDRE \character_counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[4]),
        .Q(\character_counter_reg_n_0_[4] ),
        .R(SR));
  FDRE \character_counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[5]),
        .Q(\character_counter_reg_n_0_[5] ),
        .R(SR));
  FDRE \character_counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[6]),
        .Q(\character_counter_reg_n_0_[6] ),
        .R(SR));
  FDRE \character_counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[7]),
        .Q(\character_counter_reg_n_0_[7] ),
        .R(SR));
  FDRE \character_counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[8]),
        .Q(p_0_in),
        .R(SR));
  FDRE \character_counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[9]),
        .Q(p_1_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h888C8C8C00000000)) 
    \iir[0]_i_1 
       (.I0(\iir_reg[0]_6 ),
        .I1(\iir[1]_i_2_n_0 ),
        .I2(\iir_reg[0]_7 [2]),
        .I3(thre_iir_set),
        .I4(\iir_reg[0]_7 [1]),
        .I5(\iir_reg[0]_0 ),
        .O(iir[0]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \iir[1]_i_1 
       (.I0(\iir_reg[2]_0 ),
        .I1(thre_iir_set),
        .I2(\iir_reg[0]_7 [1]),
        .I3(\iir[1]_i_2_n_0 ),
        .O(iir[1]));
  LUT5 #(
    .INIT(32'h3F773377)) 
    \iir[1]_i_2 
       (.I0(\iir_reg[2]_1 ),
        .I1(\iir_reg[0]_7 [0]),
        .I2(rx_fifo_trigger),
        .I3(\iir_reg[2] ),
        .I4(rxrdyN_int_i_2_n_0),
        .O(\iir[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400141)) 
    \iir[2]_i_1 
       (.I0(\iir_reg[0]_1 ),
        .I1(\iir_reg[0] ),
        .I2(\iir_reg[0]_2 ),
        .I3(\iir_reg[0]_3 ),
        .I4(\iir_reg[0]_4 ),
        .I5(\iir[2]_i_6_n_0 ),
        .O(p_1_out0));
  LUT6 #(
    .INIT(64'hFCFFCCCCEEEECCCC)) 
    \iir[2]_i_2 
       (.I0(\iir_reg[2]_1 ),
        .I1(\iir_reg[2]_0 ),
        .I2(rx_fifo_trigger),
        .I3(rxrdyN_int_i_2_n_0),
        .I4(\iir_reg[0]_7 [0]),
        .I5(\iir_reg[2] ),
        .O(iir[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \iir[2]_i_6 
       (.I0(\iir_reg[0]_2 ),
        .I1(\iir_reg[0] ),
        .I2(rx_fifo_trigger),
        .I3(\iir_reg[2] ),
        .I4(\iir_reg[0]_1 ),
        .I5(\iir_reg[0]_5 ),
        .O(\iir[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888808080)) 
    \iir[3]_i_1 
       (.I0(\iir_reg[0]_0 ),
        .I1(\iir[3]_i_2_n_0 ),
        .I2(\iir[3]_i_3_n_0 ),
        .I3(\iir_reg[3]_0 ),
        .I4(\iir_reg[3]_1 ),
        .I5(\iir_reg[3]_2 ),
        .O(\iir_reg[3] ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \iir[3]_i_2 
       (.I0(\iir_reg[0]_7 [0]),
        .I1(\iir_reg[2] ),
        .I2(bus2ip_reset_int_core),
        .I3(Q),
        .I4(p_0_in),
        .I5(p_1_in),
        .O(\iir[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888FD8DF00000000)) 
    \iir[3]_i_3 
       (.I0(L[0]),
        .I1(\iir_reg[0]_2 ),
        .I2(L[1]),
        .I3(\iir_reg[3]_0 ),
        .I4(\iir_reg[0] ),
        .I5(rx_fifo_trigger),
        .O(\iir[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h15551555D5551555)) 
    rxrdyN_int_i_1
       (.I0(\iir_reg[2]_1 ),
        .I1(rxrdyN_int_reg),
        .I2(\iir_reg[2] ),
        .I3(rxrdyn),
        .I4(rxrdyN_int_i_2_n_0),
        .I5(rx_fifo_trigger),
        .O(\lsr_reg[0] ));
  LUT3 #(
    .INIT(8'hF7)) 
    rxrdyN_int_i_2
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q),
        .O(rxrdyN_int_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF00F700FF00FF00)) 
    thre_iir_set_i_1
       (.I0(chipSelect),
        .I1(rd_d),
        .I2(thre_iir_set_reg),
        .I3(thre_iir_set_i_3_n_0),
        .I4(thre_iir_set_reg_0),
        .I5(\iir_reg[0] ),
        .O(chipSelect_reg));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    thre_iir_set_i_3
       (.I0(thre_iir_set),
        .I1(thre_iir_set_i_5_n_0),
        .I2(bus2ip_reset_int_core),
        .I3(thre_iir_set_reg_1),
        .I4(thre_iir_set_reg_2),
        .I5(writing_thr),
        .O(thre_iir_set_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    thre_iir_set_i_5
       (.I0(\iir_reg[0]_1 ),
        .I1(\iir_reg[0]_2 ),
        .I2(\iir_reg[0] ),
        .I3(p_2_in44_in),
        .I4(\iir_reg[2] ),
        .I5(rx_fifo_trigger),
        .O(thre_iir_set_i_5_n_0));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_slave_attachment
   (SR,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    s_axi_arvalid,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_rready,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_awaddr,
    wrReq_d1);
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input s_axi_arvalid;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_rready;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [7:0]Q;
  input s_axi_aresetn;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input wrReq_d1;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire Wr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_2_n_0 ;
  wire [2:0]\bus2ip_addr_i_reg[4]_0 ;
  wire bus2ip_rdce_i;
  wire bus2ip_rnw_i_reg_n_0;
  wire bus2ip_wrce_i;
  wire rst_i_1_n_0;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire wrReq_d1;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(s_axi_rresp_i),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F8F88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  u96v2_sbc_base_axi_uart16550_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(bus2ip_rnw_i_reg_n_0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .Q(start2),
        .Wr(Wr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .wrReq_d1(wrReq_d1));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [2]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_srl_fifo_rbu_f
   (Q,
    \lsr_reg[5] ,
    out,
    SS,
    s_axi_aclk,
    FIFO_Full_reg_0,
    tx_fifo_wr_en_d,
    tx_fifo_rd_en_int,
    \INFERRED_GEN.cnt_i_reg[4] ,
    p_2_in44_in,
    txrdyN_int_reg,
    txrdyn,
    \tsr_reg[7] );
  output [0:0]Q;
  output \lsr_reg[5] ;
  output [7:0]out;
  input [0:0]SS;
  input s_axi_aclk;
  input FIFO_Full_reg_0;
  input tx_fifo_wr_en_d;
  input tx_fifo_rd_en_int;
  input \INFERRED_GEN.cnt_i_reg[4] ;
  input p_2_in44_in;
  input [0:0]txrdyN_int_reg;
  input txrdyn;
  input [7:0]\tsr_reg[7] ;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire fifo_full_p1;
  wire \lsr_reg[5] ;
  wire [7:0]out;
  wire p_2_in44_in;
  wire s_axi_aclk;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_full;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;
  wire [0:0]txrdyN_int_reg;
  wire txrdyn;

  u96v2_sbc_base_axi_uart16550_0_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .SS(SS),
        .fifo_full_p1(fifo_full_p1),
        .s_axi_aclk(s_axi_aclk),
        .tx_fifo_full(tx_fifo_full),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d));
  u96v2_sbc_base_axi_uart16550_0_0_dynshreg_f DYNSHREG_F_I
       (.Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4}),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[7] (\tsr_reg[7] ),
        .tx_fifo_full(tx_fifo_full),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(tx_fifo_full),
        .R(SS));
  LUT5 #(
    .INIT(32'h55D55515)) 
    txrdyN_int_i_1
       (.I0(p_2_in44_in),
        .I1(txrdyN_int_reg),
        .I2(\INFERRED_GEN.cnt_i_reg[4] ),
        .I3(txrdyn),
        .I4(tx_fifo_full),
        .O(\lsr_reg[5] ));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module u96v2_sbc_base_axi_uart16550_0_0_srl_fifo_rbu_f__parameterized0
   (rx_fifo_full,
    wr_d_reg,
    Q,
    \INFERRED_GEN.cnt_i_reg[4] ,
    rst_reg,
    fifo_trigger_level_flag,
    rx_error_in_fifo_cnt_dn0,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    out,
    rx_fifo_rst,
    s_axi_aclk,
    wr_d,
    chipSelect,
    rx_fifo_rd_en_d,
    lsr2_rst_reg,
    lsr2_rst,
    \INFERRED_GEN.cnt_i_reg[2] ,
    \lsr_reg[0] ,
    bus2ip_reset_int_core,
    \lsr_reg[0]_0 ,
    \lsr_reg[0]_1 ,
    \lsr_reg[1] ,
    lsr_reg0,
    \lsr_reg[1]_0 ,
    Rx_fifo_trigger_reg,
    \lsr_reg[1]_1 ,
    character_received,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    rx_fifo_rd_en_d1,
    rx_fifo_data_in,
    \lsr_reg[2] ,
    rx_fifo_wr_en_i);
  output rx_fifo_full;
  output wr_d_reg;
  output [0:0]Q;
  output \INFERRED_GEN.cnt_i_reg[4] ;
  output rst_reg;
  output fifo_trigger_level_flag;
  output rx_error_in_fifo_cnt_dn0;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  output [7:0]out;
  input rx_fifo_rst;
  input s_axi_aclk;
  input wr_d;
  input chipSelect;
  input rx_fifo_rd_en_d;
  input lsr2_rst_reg;
  input lsr2_rst;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input \lsr_reg[0] ;
  input bus2ip_reset_int_core;
  input \lsr_reg[0]_0 ;
  input \lsr_reg[0]_1 ;
  input [0:0]\lsr_reg[1] ;
  input lsr_reg0;
  input \lsr_reg[1]_0 ;
  input [1:0]Rx_fifo_trigger_reg;
  input \lsr_reg[1]_1 ;
  input character_received;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input rx_fifo_rd_en_d1;
  input [10:0]rx_fifo_data_in;
  input [0:0]\lsr_reg[2] ;
  input rx_fifo_wr_en_i;

  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire [1:0]Rx_fifo_trigger_reg;
  wire bus2ip_reset_int_core;
  wire character_received;
  wire chipSelect;
  wire fifo_full_p1;
  wire fifo_trigger_level_flag;
  wire lsr1_set;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire lsr_reg0;
  wire \lsr_reg[0] ;
  wire \lsr_reg[0]_0 ;
  wire \lsr_reg[0]_1 ;
  wire [0:0]\lsr_reg[1] ;
  wire \lsr_reg[1]_0 ;
  wire \lsr_reg[1]_1 ;
  wire [0:0]\lsr_reg[2] ;
  wire [7:0]out;
  wire rst_reg;
  wire rx_error_in_fifo_cnt_dn0;
  wire [3:0]rx_fifo_count;
  wire [10:0]rx_fifo_data_in;
  wire [10:8]rx_fifo_data_out;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;
  wire wr_d;
  wire wr_d_reg;

  u96v2_sbc_base_axi_uart16550_0_0_cntr_incr_decr_addn_f_0 CNTR_INCR_DECR_ADDN_F_I
       (.\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q({Q,rx_fifo_count}),
        .Rx_fifo_trigger_reg(Rx_fifo_trigger_reg),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .chipSelect(chipSelect),
        .fifo_full_p1(fifo_full_p1),
        .fifo_trigger_level_flag(fifo_trigger_level_flag),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(lsr2_rst_reg),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .\lsr_reg[0] (\lsr_reg[0] ),
        .\lsr_reg[0]_0 (\lsr_reg[0]_0 ),
        .\lsr_reg[0]_1 (\lsr_reg[0]_1 ),
        .\lsr_reg[2] (\lsr_reg[2] ),
        .out(rx_fifo_data_out),
        .rx_fifo_data_in(rx_fifo_data_in[10:8]),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_rst(rx_fifo_rst),
        .s_axi_aclk(s_axi_aclk),
        .wr_d(wr_d),
        .wr_d_reg(wr_d_reg));
  u96v2_sbc_base_axi_uart16550_0_0_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .Q(rx_fifo_count),
        .out({rx_fifo_data_out,out}),
        .rx_error_in_fifo_cnt_dn0(rx_error_in_fifo_cnt_dn0),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(rx_fifo_full),
        .R(rx_fifo_rst));
  LUT6 #(
    .INIT(64'h5545554000000000)) 
    \lsr[1]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\lsr_reg[1] ),
        .I2(lsr_reg0),
        .I3(lsr1_set),
        .I4(\lsr_reg[1]_0 ),
        .I5(lsr2_rst_reg),
        .O(rst_reg));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \lsr[1]_i_2 
       (.I0(rx_fifo_full),
        .I1(\lsr_reg[1]_1 ),
        .I2(character_received),
        .I3(\lsr_reg[0]_0 ),
        .O(lsr1_set));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_tx16550
   (tx_empty,
    tx_fifo_rd_en_int,
    tsr_loaded,
    \Lcr_reg[0] ,
    \GENERATING_FIFOS.fcr_reg[0] ,
    sout,
    rx_sin,
    bus2ip_reset_int_core,
    s_axi_aclk,
    rclk_int,
    Q,
    transmitting_n_reg_0,
    out,
    \tsr_reg[7]_0 ,
    \tsr_reg[7]_1 ,
    \FSM_sequential_transmit_state_reg[0]_0 ,
    FIFO_Full_reg,
    sout_0,
    freeze,
    sin);
  output tx_empty;
  output tx_fifo_rd_en_int;
  output tsr_loaded;
  output \Lcr_reg[0] ;
  output \GENERATING_FIFOS.fcr_reg[0] ;
  output sout;
  output rx_sin;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input rclk_int;
  input [6:0]Q;
  input transmitting_n_reg_0;
  input [7:0]out;
  input \tsr_reg[7]_0 ;
  input [7:0]\tsr_reg[7]_1 ;
  input \FSM_sequential_transmit_state_reg[0]_0 ;
  input [0:0]FIFO_Full_reg;
  input [0:0]sout_0;
  input freeze;
  input sin;

  wire [0:0]FIFO_Full_reg;
  wire \FSM_sequential_transmit_state[0]_i_2_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_4_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_5_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_6_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_7_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_8_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state_reg[0]_0 ;
  wire \GENERATING_FIFOS.fcr_reg[0] ;
  wire \Lcr_reg[0] ;
  wire [6:0]Q;
  wire Sout0;
  wire Sout_i_1_n_0;
  wire Sout_i_2_n_0;
  wire Sout_i_3_n_0;
  wire Sout_i_4_n_0;
  wire Sout_i_5_n_0;
  wire Sout_i_6_n_0;
  wire Tsr_loaded_i_1_n_0;
  wire Tx_empty0;
  wire bus2ip_reset_int_core;
  wire clk1x;
  wire clk1x0;
  wire clk2x;
  wire clk2x0;
  wire [2:0]clkdiv;
  wire \clkdiv[3]_i_1_n_0 ;
  wire \clkdiv[3]_i_2__0_n_0 ;
  wire [3:0]clkdiv_reg;
  wire freeze;
  wire [6:0]in12;
  wire [3:0]next_state;
  wire [7:0]out;
  wire rclk_int;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin;
  wire sout;
  wire [0:0]sout_0;
  wire [3:0]transmit_state;
  wire transmitting_n;
  wire transmitting_n_com;
  wire transmitting_n_reg_0;
  wire \tsr[0]_i_2_n_0 ;
  wire \tsr[1]_i_2_n_0 ;
  wire \tsr[2]_i_2_n_0 ;
  wire \tsr[3]_i_2_n_0 ;
  wire \tsr[4]_i_2_n_0 ;
  wire \tsr[5]_i_2_n_0 ;
  wire \tsr[6]_i_2_n_0 ;
  wire \tsr[6]_i_3_n_0 ;
  wire \tsr[6]_i_4_n_0 ;
  wire \tsr[6]_i_5_n_0 ;
  wire \tsr[7]_i_2_n_0 ;
  wire \tsr[7]_i_3_n_0 ;
  wire [7:0]tsr_com;
  wire tsr_loaded;
  wire \tsr_reg[7]_0 ;
  wire [7:0]\tsr_reg[7]_1 ;
  wire \tsr_reg_n_0_[0] ;
  wire tx_empty;
  wire tx_fifo_rd_en_com;
  wire tx_fifo_rd_en_int;
  wire tx_parity;
  wire tx_parity_com;
  wire tx_parity_i_2_n_0;
  wire tx_sout;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \FSM_sequential_transmit_state[0]_i_1 
       (.I0(\FSM_sequential_transmit_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_transmit_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_transmit_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_transmit_state[0]_i_5_n_0 ),
        .I4(\FSM_sequential_transmit_state[0]_i_6_n_0 ),
        .I5(\FSM_sequential_transmit_state[0]_i_7_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h00000000004F3300)) 
    \FSM_sequential_transmit_state[0]_i_2 
       (.I0(\FSM_sequential_transmit_state_reg[0]_0 ),
        .I1(transmit_state[2]),
        .I2(transmit_state[0]),
        .I3(transmit_state[3]),
        .I4(transmit_state[1]),
        .I5(Q[3]),
        .O(\FSM_sequential_transmit_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \FSM_sequential_transmit_state[0]_i_3 
       (.I0(transmit_state[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_transmit_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_transmit_state[0]_i_4 
       (.I0(transmit_state[1]),
        .I1(transmit_state[3]),
        .O(\FSM_sequential_transmit_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0414F414)) 
    \FSM_sequential_transmit_state[0]_i_5 
       (.I0(transmit_state[0]),
        .I1(transmit_state[1]),
        .I2(transmit_state[2]),
        .I3(transmit_state[3]),
        .I4(transmitting_n_reg_0),
        .O(\FSM_sequential_transmit_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04040404000F0000)) 
    \FSM_sequential_transmit_state[0]_i_6 
       (.I0(Q[2]),
        .I1(transmit_state[1]),
        .I2(transmitting_n_reg_0),
        .I3(transmit_state[0]),
        .I4(Q[1]),
        .I5(transmit_state[3]),
        .O(\FSM_sequential_transmit_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000088880000CCCF)) 
    \FSM_sequential_transmit_state[0]_i_7 
       (.I0(Q[0]),
        .I1(\FSM_sequential_transmit_state[0]_i_8_n_0 ),
        .I2(transmitting_n_reg_0),
        .I3(transmit_state[1]),
        .I4(transmit_state[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_transmit_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_transmit_state[0]_i_8 
       (.I0(transmit_state[3]),
        .I1(transmit_state[2]),
        .O(\FSM_sequential_transmit_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h04000FFF0FFF0020)) 
    \FSM_sequential_transmit_state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(transmit_state[3]),
        .I3(transmit_state[2]),
        .I4(transmit_state[0]),
        .I5(transmit_state[1]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h000022FFC000CC00)) 
    \FSM_sequential_transmit_state[2]_i_1 
       (.I0(\Lcr_reg[0] ),
        .I1(transmit_state[0]),
        .I2(Q[2]),
        .I3(transmit_state[1]),
        .I4(transmit_state[3]),
        .I5(transmit_state[2]),
        .O(next_state[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_transmit_state[3]_i_1 
       (.I0(clk1x),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(Sout0));
  LUT6 #(
    .INIT(64'h6424444464246464)) 
    \FSM_sequential_transmit_state[3]_i_2 
       (.I0(transmit_state[2]),
        .I1(transmit_state[3]),
        .I2(transmit_state[1]),
        .I3(Q[2]),
        .I4(transmit_state[0]),
        .I5(\Lcr_reg[0] ),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \FSM_sequential_transmit_state[3]_i_3 
       (.I0(transmit_state[2]),
        .I1(transmit_state[3]),
        .I2(clk2x),
        .I3(Q[2]),
        .I4(\Lcr_reg[0] ),
        .I5(Sout_i_3_n_0),
        .O(\FSM_sequential_transmit_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_transmit_state[3]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\Lcr_reg[0] ));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[0]),
        .Q(transmit_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[1]),
        .Q(transmit_state[1]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[2]),
        .Q(transmit_state[2]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[3]),
        .Q(transmit_state[3]),
        .R(bus2ip_reset_int_core));
  LUT3 #(
    .INIT(8'hF7)) 
    \INFERRED_GEN.cnt_i[3]_i_2 
       (.I0(\tsr_reg[7]_0 ),
        .I1(tx_fifo_rd_en_int),
        .I2(FIFO_Full_reg),
        .O(\GENERATING_FIFOS.fcr_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF000E)) 
    Sout_i_1
       (.I0(Sout_i_2_n_0),
        .I1(\tsr_reg_n_0_[0] ),
        .I2(Sout_i_3_n_0),
        .I3(Q[6]),
        .I4(Sout_i_4_n_0),
        .I5(Sout_i_5_n_0),
        .O(Sout_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h9)) 
    Sout_i_2
       (.I0(transmit_state[2]),
        .I1(transmit_state[3]),
        .O(Sout_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Sout_i_3
       (.I0(transmit_state[0]),
        .I1(transmit_state[1]),
        .O(Sout_i_3_n_0));
  LUT6 #(
    .INIT(64'h0404040444400404)) 
    Sout_i_4
       (.I0(Q[6]),
        .I1(\tsr_reg_n_0_[0] ),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[0]),
        .I5(transmit_state[2]),
        .O(Sout_i_4_n_0));
  LUT6 #(
    .INIT(64'h4044444440444040)) 
    Sout_i_5
       (.I0(Q[6]),
        .I1(Sout_i_6_n_0),
        .I2(transmit_state[0]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(tx_parity),
        .O(Sout_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    Sout_i_6
       (.I0(transmit_state[2]),
        .I1(transmit_state[3]),
        .I2(transmit_state[1]),
        .O(Sout_i_6_n_0));
  FDSE Sout_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(Sout_i_1_n_0),
        .Q(tx_sout),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    Tsr_loaded_i_1
       (.I0(clk1x),
        .I1(transmit_state[0]),
        .I2(bus2ip_reset_int_core),
        .I3(transmit_state[2]),
        .I4(transmit_state[1]),
        .I5(transmit_state[3]),
        .O(Tsr_loaded_i_1_n_0));
  FDRE Tsr_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tsr_loaded_i_1_n_0),
        .Q(tsr_loaded),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    Tx_empty_i_1
       (.I0(transmitting_n),
        .I1(clk1x),
        .O(Tx_empty0));
  FDSE Tx_empty_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_empty0),
        .Q(tx_empty),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    Tx_fifo_rd_en_i_1
       (.I0(transmit_state[0]),
        .I1(clk1x),
        .I2(transmit_state[2]),
        .I3(transmit_state[1]),
        .I4(transmit_state[3]),
        .O(tx_fifo_rd_en_com));
  FDRE Tx_fifo_rd_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_rd_en_com),
        .Q(tx_fifo_rd_en_int),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    clk1x_i_1
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[1]),
        .I2(clkdiv_reg[0]),
        .I3(clkdiv_reg[2]),
        .I4(rclk_int),
        .O(clk1x0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x0),
        .Q(clk1x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    clk2x_i_1__0
       (.I0(clkdiv_reg[1]),
        .I1(clkdiv_reg[0]),
        .I2(clkdiv_reg[2]),
        .I3(clkdiv_reg[3]),
        .I4(rclk_int),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkdiv[0]_i_1__0 
       (.I0(clkdiv_reg[0]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clkdiv[1]_i_1__0 
       (.I0(clkdiv_reg[1]),
        .I1(clkdiv_reg[0]),
        .I2(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clkdiv[2]_i_1__0 
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[0]),
        .I2(clkdiv_reg[1]),
        .I3(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \clkdiv[3]_i_1 
       (.I0(rclk_int),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(\clkdiv[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h6AAA5555)) 
    \clkdiv[3]_i_2__0 
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[1]),
        .I2(clkdiv_reg[0]),
        .I3(clkdiv_reg[2]),
        .I4(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(\clkdiv[3]_i_2__0_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[0]),
        .Q(clkdiv_reg[0]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[1]),
        .Q(clkdiv_reg[1]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[2]),
        .Q(clkdiv_reg[2]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(\clkdiv[3]_i_2__0_n_0 ),
        .Q(clkdiv_reg[3]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    sin_d1_i_2
       (.I0(freeze),
        .I1(sin),
        .I2(sout_0),
        .I3(tx_sout),
        .O(rx_sin));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h32)) 
    sout_INST_0
       (.I0(tx_sout),
        .I1(Q[6]),
        .I2(sout_0),
        .O(sout));
  LUT6 #(
    .INIT(64'h0000E0000A00000F)) 
    transmitting_n_i_1
       (.I0(transmitting_n_reg_0),
        .I1(Q[2]),
        .I2(transmit_state[1]),
        .I3(transmit_state[3]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(transmitting_n_com));
  FDRE transmitting_n_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transmitting_n_com),
        .Q(transmitting_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[0]_i_1 
       (.I0(\tsr[0]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[0]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[0]),
        .O(tsr_com[0]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[0]_i_2 
       (.I0(in12[0]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[0]),
        .I4(\tsr_reg[7]_1 [0]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[1]_i_1 
       (.I0(\tsr[1]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[1]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[1]),
        .O(tsr_com[1]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[1]_i_2 
       (.I0(in12[1]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[1]),
        .I4(\tsr_reg[7]_1 [1]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[2]_i_1 
       (.I0(\tsr[2]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[2]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[2]),
        .O(tsr_com[2]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[2]_i_2 
       (.I0(in12[2]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[2]),
        .I4(\tsr_reg[7]_1 [2]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[3]_i_1 
       (.I0(\tsr[3]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[3]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[3]),
        .O(tsr_com[3]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[3]_i_2 
       (.I0(in12[3]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[3]),
        .I4(\tsr_reg[7]_1 [3]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[4]_i_1 
       (.I0(\tsr[4]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[4]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[4]),
        .O(tsr_com[4]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[4]_i_2 
       (.I0(in12[4]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[4]),
        .I4(\tsr_reg[7]_1 [4]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[5]_i_1 
       (.I0(\tsr[5]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[5]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[5]),
        .O(tsr_com[5]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[5]_i_2 
       (.I0(in12[5]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[5]),
        .I4(\tsr_reg[7]_1 [5]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \tsr[6]_i_1 
       (.I0(\tsr[6]_i_2_n_0 ),
        .I1(\tsr[7]_i_3_n_0 ),
        .I2(in12[6]),
        .I3(\tsr[6]_i_3_n_0 ),
        .I4(\tsr[6]_i_4_n_0 ),
        .I5(out[6]),
        .O(tsr_com[6]));
  LUT6 #(
    .INIT(64'hFFFF08000A020800)) 
    \tsr[6]_i_2 
       (.I0(in12[6]),
        .I1(\tsr_reg[7]_0 ),
        .I2(transmit_state[3]),
        .I3(out[6]),
        .I4(\tsr_reg[7]_1 [6]),
        .I5(\tsr[6]_i_5_n_0 ),
        .O(\tsr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h10C1)) 
    \tsr[6]_i_3 
       (.I0(transmit_state[0]),
        .I1(transmit_state[1]),
        .I2(transmit_state[3]),
        .I3(transmit_state[2]),
        .O(\tsr[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \tsr[6]_i_4 
       (.I0(transmit_state[2]),
        .I1(transmit_state[1]),
        .I2(transmit_state[3]),
        .I3(\tsr_reg[7]_0 ),
        .O(\tsr[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \tsr[6]_i_5 
       (.I0(transmit_state[2]),
        .I1(transmit_state[1]),
        .I2(transmit_state[3]),
        .I3(\tsr_reg[7]_0 ),
        .O(\tsr[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEEAAFA)) 
    \tsr[7]_i_1 
       (.I0(\tsr[7]_i_2_n_0 ),
        .I1(out[7]),
        .I2(\tsr_reg[7]_1 [7]),
        .I3(transmit_state[3]),
        .I4(\tsr_reg[7]_0 ),
        .I5(\tsr[7]_i_3_n_0 ),
        .O(tsr_com[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tsr[7]_i_2 
       (.I0(transmit_state[1]),
        .I1(transmit_state[2]),
        .O(\tsr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h3677)) 
    \tsr[7]_i_3 
       (.I0(transmit_state[1]),
        .I1(transmit_state[3]),
        .I2(transmit_state[2]),
        .I3(transmit_state[0]),
        .O(\tsr[7]_i_3_n_0 ));
  FDSE \tsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[0]),
        .Q(\tsr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[1]),
        .Q(in12[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[2]),
        .Q(in12[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[3]),
        .Q(in12[2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[4]),
        .Q(in12[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[5]),
        .Q(in12[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[6]),
        .Q(in12[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[7]),
        .Q(in12[6]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h00005500FF00AE04)) 
    tx_parity_i_1
       (.I0(transmit_state[2]),
        .I1(transmit_state[0]),
        .I2(Q[4]),
        .I3(tx_parity_i_2_n_0),
        .I4(transmit_state[1]),
        .I5(transmit_state[3]),
        .O(tx_parity_com));
  LUT2 #(
    .INIT(4'h6)) 
    tx_parity_i_2
       (.I0(tx_parity),
        .I1(\tsr_reg_n_0_[0] ),
        .O(tx_parity_i_2_n_0));
  FDRE tx_parity_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tx_parity_com),
        .Q(tx_parity),
        .R(bus2ip_reset_int_core));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_tx_fifo_block
   (Q,
    \lsr_reg[5] ,
    out,
    SS,
    s_axi_aclk,
    FIFO_Full_reg,
    tx_fifo_wr_en_d,
    tx_fifo_rd_en_int,
    \INFERRED_GEN.cnt_i_reg[4] ,
    p_2_in44_in,
    txrdyN_int_reg,
    txrdyn,
    \tsr_reg[7] );
  output [0:0]Q;
  output \lsr_reg[5] ;
  output [7:0]out;
  input [0:0]SS;
  input s_axi_aclk;
  input FIFO_Full_reg;
  input tx_fifo_wr_en_d;
  input tx_fifo_rd_en_int;
  input \INFERRED_GEN.cnt_i_reg[4] ;
  input p_2_in44_in;
  input [0:0]txrdyN_int_reg;
  input txrdyn;
  input [7:0]\tsr_reg[7] ;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire \lsr_reg[5] ;
  wire [7:0]out;
  wire p_2_in44_in;
  wire s_axi_aclk;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;
  wire [0:0]txrdyN_int_reg;
  wire txrdyn;

  u96v2_sbc_base_axi_uart16550_0_0_srl_fifo_rbu_f srl_fifo_rbu_f_i1
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q(Q),
        .SS(SS),
        .\lsr_reg[5] (\lsr_reg[5] ),
        .out(out),
        .p_2_in44_in(p_2_in44_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[7] (\tsr_reg[7] ),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d),
        .txrdyN_int_reg(txrdyN_int_reg),
        .txrdyn(txrdyn));
endmodule

(* CHECK_LICENSE_TYPE = "u96v2_sbc_base_axi_uart16550_1_0,axi_uart16550,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_uart16550,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module u96v2_sbc_base_axi_uart16550_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN u96v2_sbc_base_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  input freeze;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN u96v2_sbc_base_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART BAUDOUTn" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *) output baudoutn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART CTSn" *) input ctsn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DCDn" *) input dcdn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DDIS" *) output ddis;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DSRn" *) input dsrn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DTRn" *) output dtrn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART OUT1n" *) output out1n;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART OUT2n" *) output out2n;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RI" *) input rin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RTSn" *) output rtsn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RXRDYn" *) output rxrdyn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) input sin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output sout;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TXRDYn" *) output txrdyn;

  wire \<const0> ;
  wire baudoutn;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;
  wire NLW_U0_xout_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:8]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_EXTERNAL_XIN_CLK_HZ = "25000000" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_EXTERNAL_RCLK = "0" *) 
  (* C_HAS_EXTERNAL_XIN = "0" *) 
  (* C_IS_A_16550 = "1" *) 
  (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  u96v2_sbc_base_axi_uart16550_0_0_axi_uart16550 U0
       (.baudoutn(baudoutn),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rclk(1'b0),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[4:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[4:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_U0_s_axi_rdata_UNCONNECTED[31:8],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[7:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .xin(1'b0),
        .xout(NLW_U0_xout_UNCONNECTED));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_uart16550
   (baudoutn,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    rtsn,
    dtrn,
    out1n,
    out2n,
    Q,
    sout,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Rd,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    ce_out_i,
    freeze,
    s_axi_wdata,
    \addr_d_reg[2]_0 ,
    sin);
  output baudoutn;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  output [7:0]Q;
  output sout;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Rd;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input ce_out_i;
  input freeze;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2]_0 ;
  input sin;

  wire D2;
  wire Ddis_i_1_n_0;
  wire \Dout[0]_i_3_n_0 ;
  wire \Dout[0]_i_4_n_0 ;
  wire \Dout[0]_i_5_n_0 ;
  wire \Dout[1]_i_3_n_0 ;
  wire \Dout[1]_i_4_n_0 ;
  wire \Dout[1]_i_5_n_0 ;
  wire \Dout[1]_i_6_n_0 ;
  wire \Dout[2]_i_3_n_0 ;
  wire \Dout[2]_i_4_n_0 ;
  wire \Dout[2]_i_5_n_0 ;
  wire \Dout[3]_i_3_n_0 ;
  wire \Dout[3]_i_4_n_0 ;
  wire \Dout[3]_i_5_n_0 ;
  wire \Dout[3]_i_6_n_0 ;
  wire \Dout[4]_i_2_n_0 ;
  wire \Dout[4]_i_3_n_0 ;
  wire \Dout[4]_i_4_n_0 ;
  wire \Dout[5]_i_3_n_0 ;
  wire \Dout[5]_i_4_n_0 ;
  wire \Dout[6]_i_3_n_0 ;
  wire \Dout[6]_i_4_n_0 ;
  wire \Dout[7]_i_10_n_0 ;
  wire \Dout[7]_i_11_n_0 ;
  wire \Dout[7]_i_12_n_0 ;
  wire \Dout[7]_i_4_n_0 ;
  wire \Dout[7]_i_5_n_0 ;
  wire \Dout[7]_i_6_n_0 ;
  wire \Dout[7]_i_7_n_0 ;
  wire \Dout[7]_i_8_n_0 ;
  wire \Dout[7]_i_9_n_0 ;
  wire \GENERATING_FIFOS.fcr[0]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[2]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[2]_i_2_n_0 ;
  wire \GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr_reg_n_0_[0] ;
  wire \GENERATING_FIFOS.fcr_reg_n_0_[1] ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ;
  wire [3:0]\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_2 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_21 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_4 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_5 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_6 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_7 ;
  wire \GENERATING_FIFOS.rx_fifo_rd_en_d_i_2_n_0 ;
  wire \GENERATING_FIFOS.tx_fifo_block_1_n_1 ;
  wire \GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ;
  wire \GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ;
  wire Intr_i_1_n_0;
  wire [0:3]L;
  wire Lcr0;
  wire \Lcr_reg_n_0_[0] ;
  wire \Lcr_reg_n_0_[1] ;
  wire \Lcr_reg_n_0_[2] ;
  wire \Lcr_reg_n_0_[4] ;
  wire \Lcr_reg_n_0_[5] ;
  wire \Lcr_reg_n_0_[6] ;
  wire \Lcr_reg_n_0_[7] ;
  wire [7:0]Q;
  wire Rd;
  wire Rx_error_in_fifo;
  wire [7:0]Thr;
  wire Thr0;
  wire Wr;
  wire [2:0]\addr_d_reg[2]_0 ;
  wire [15:0]baudCounter;
  wire baudCounter1;
  wire \baudCounter[0]_i_1_n_0 ;
  wire \baudCounter[0]_i_2_n_0 ;
  wire \baudCounter[10]_i_1_n_0 ;
  wire \baudCounter[11]_i_1_n_0 ;
  wire \baudCounter[12]_i_1_n_0 ;
  wire \baudCounter[12]_i_2_n_0 ;
  wire \baudCounter[13]_i_1_n_0 ;
  wire \baudCounter[13]_i_2_n_0 ;
  wire \baudCounter[14]_i_1_n_0 ;
  wire \baudCounter[14]_i_2_n_0 ;
  wire \baudCounter[14]_i_3_n_0 ;
  wire \baudCounter[15]_i_1_n_0 ;
  wire \baudCounter[15]_i_2_n_0 ;
  wire \baudCounter[15]_i_3_n_0 ;
  wire \baudCounter[15]_i_4_n_0 ;
  wire \baudCounter[1]_i_1_n_0 ;
  wire \baudCounter[2]_i_1_n_0 ;
  wire \baudCounter[2]_i_2_n_0 ;
  wire \baudCounter[2]_i_3_n_0 ;
  wire \baudCounter[3]_i_1_n_0 ;
  wire \baudCounter[3]_i_2_n_0 ;
  wire \baudCounter[4]_i_1_n_0 ;
  wire \baudCounter[4]_i_2_n_0 ;
  wire \baudCounter[4]_i_3_n_0 ;
  wire \baudCounter[4]_i_4_n_0 ;
  wire \baudCounter[5]_i_1_n_0 ;
  wire \baudCounter[5]_i_2_n_0 ;
  wire \baudCounter[6]_i_1_n_0 ;
  wire \baudCounter[6]_i_2_n_0 ;
  wire \baudCounter[7]_i_1_n_0 ;
  wire \baudCounter[7]_i_2_n_0 ;
  wire \baudCounter[8]_i_1_n_0 ;
  wire \baudCounter[8]_i_2_n_0 ;
  wire \baudCounter[8]_i_3_n_0 ;
  wire \baudCounter[9]_i_1_n_0 ;
  wire \baudCounter[9]_i_2_n_0 ;
  wire \baudCounter[9]_i_3_n_0 ;
  wire baud_counter_loaded;
  wire baudoutN_int;
  wire baudoutN_int_i;
  wire baudoutN_int_i_i_1_n_0;
  wire baudoutN_int_i_i_2_n_0;
  wire baudoutn;
  wire bus2ip_reset_int_core;
  wire ce_out_i;
  wire character_received;
  wire chipSelect;
  wire [15:0]clockDiv;
  wire ctsN_d;
  wire ctsn;
  wire \d_d_reg_n_0_[0] ;
  wire \d_d_reg_n_0_[1] ;
  wire \d_d_reg_n_0_[2] ;
  wire \d_d_reg_n_0_[3] ;
  wire \d_d_reg_n_0_[5] ;
  wire [7:3]data3;
  wire dcdN_d;
  wire dcdn;
  wire ddis;
  wire divisor_latch_loaded;
  wire divisor_latch_loaded_i_1_n_0;
  wire dlab_i_1_n_0;
  wire dll0;
  wire dlm0;
  wire dsrN_d;
  wire dsrn;
  wire dtrn;
  wire fcr1;
  wire fcr_0_prev;
  wire freeze;
  wire [3:0]ier;
  wire ier1;
  wire ier1_d;
  wire [2:0]iir;
  wire \iir[0]_i_2_n_0 ;
  wire \iir[0]_i_3_n_0 ;
  wire \iir[2]_i_3_n_0 ;
  wire \iir[2]_i_4_n_0 ;
  wire \iir[2]_i_5_n_0 ;
  wire \iir[2]_i_7_n_0 ;
  wire \iir[2]_i_8_n_0 ;
  wire \iir[2]_i_9_n_0 ;
  wire \iir[3]_i_4_n_0 ;
  wire \iir_reg_n_0_[0] ;
  wire \iir_reg_n_0_[1] ;
  wire \iir_reg_n_0_[2] ;
  wire \iir_reg_n_0_[3] ;
  wire \iir_reg_n_0_[7] ;
  wire ip2intc_irpt;
  wire load_baudlower;
  wire load_baudupper;
  wire lsr2_rst;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire lsr5_d;
  wire \lsr[2]_i_2_n_0 ;
  wire \lsr[3]_i_1_n_0 ;
  wire \lsr[4]_i_1_n_0 ;
  wire \lsr[7]_i_1_n_0 ;
  wire \lsr[7]_i_2_n_0 ;
  wire lsr_reg;
  wire lsr_reg0;
  wire lsr_reg014_out;
  wire \lsr_reg_n_0_[0] ;
  wire \lsr_reg_n_0_[1] ;
  wire \lsr_reg_n_0_[7] ;
  wire mcr0;
  wire mcr4_d;
  wire \mcr_reg_n_0_[0] ;
  wire \mcr_reg_n_0_[2] ;
  wire \mcr_reg_n_0_[3] ;
  wire \modem_prev_val[0]_i_1_n_0 ;
  wire \modem_prev_val[1]_i_1_n_0 ;
  wire \modem_prev_val[2]_i_1_n_0 ;
  wire \modem_prev_val[3]_i_1_n_0 ;
  wire \modem_prev_val_reg_n_0_[0] ;
  wire \modem_prev_val_reg_n_0_[1] ;
  wire \msr[0]_i_2_n_0 ;
  wire \msr[0]_i_3_n_0 ;
  wire \msr[1]_i_1_n_0 ;
  wire \msr[2]_i_1_n_0 ;
  wire \msr[3]_i_1_n_0 ;
  wire \msr[4]_i_1_n_0 ;
  wire \msr[5]_i_1_n_0 ;
  wire \msr[6]_i_1_n_0 ;
  wire \msr[7]_i_1_n_0 ;
  wire msr_reg;
  wire msr_reg0;
  wire \msr_reg_n_0_[0] ;
  wire \msr_reg_n_0_[5] ;
  wire \msr_reg_n_0_[6] ;
  wire \msr_reg_n_0_[7] ;
  wire out1n;
  wire out2n;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in37_in;
  wire p_0_in8_in;
  wire p_1_in38_in;
  wire p_1_in3_in;
  wire p_1_in6_in;
  wire p_1_out0;
  wire [6:5]p_2_in;
  wire p_2_in39_in;
  wire p_2_in44_in;
  wire p_3_in;
  wire p_5_in;
  wire p_71_in;
  wire rclk_int;
  wire rd_d;
  wire readStrobe;
  wire riN_d;
  wire rin;
  wire rtsn;
  wire rx16550_1_n_13;
  wire rx16550_1_n_14;
  wire rx16550_1_n_16;
  wire rx16550_1_n_18;
  wire rx16550_1_n_21;
  wire rx16550_1_n_22;
  wire rx16550_1_n_23;
  wire rx16550_1_n_24;
  wire rx16550_1_n_25;
  wire rx16550_1_n_26;
  wire rx16550_1_n_27;
  wire rx16550_1_n_28;
  wire rx_error_in_fifo_cnt_dn;
  wire rx_error_in_fifo_cnt_dn0;
  wire rx_error_in_fifo_cnt_up;
  wire \rx_fifo_control_1/Rx_error_in_fifo0 ;
  wire \rx_fifo_control_1/character_counter_rst ;
  wire [10:0]rx_fifo_data_in;
  wire [7:0]rx_fifo_data_out;
  wire rx_fifo_empty;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_rst0;
  wire rx_fifo_wr_en_i;
  wire rx_sin;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire [7:0]scr;
  wire scr0;
  wire sin;
  wire sout;
  wire thre_iir_set;
  wire thre_iir_set_i_2_n_0;
  wire thre_iir_set_i_4_n_0;
  wire thre_iir_set_i_6_n_0;
  wire thre_iir_set_i_7_n_0;
  wire thre_iir_set_i_8_n_0;
  wire thre_iir_set_i_9_n_0;
  wire [7:0]tsr_int;
  wire tsr_loaded;
  wire tx16550_1_n_3;
  wire tx16550_1_n_4;
  wire tx_empty;
  wire [7:0]tx_fifo_data_out;
  wire tx_fifo_empty;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_rst;
  wire tx_fifo_rst0;
  wire tx_fifo_wr_en;
  wire tx_fifo_wr_en_d;
  wire txrdyn;
  wire wr_d;
  wire writing_thr;
  wire xuart_tx_load_sm_1_n_0;
  wire xuart_tx_load_sm_1_n_1;
  wire xuart_tx_load_sm_1_n_2;
  wire \NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_CLKDIV_UNCONNECTED ;
  wire \NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_T_OUT_UNCONNECTED ;
  wire [7:1]\NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_D_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h7)) 
    Ddis_i_1
       (.I0(rd_d),
        .I1(chipSelect),
        .O(Ddis_i_1_n_0));
  FDRE Ddis_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ddis_i_1_n_0),
        .Q(ddis),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF000AA00CC000000)) 
    \Dout[0]_i_3 
       (.I0(\lsr_reg_n_0_[0] ),
        .I1(\msr_reg_n_0_[0] ),
        .I2(scr[0]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(\Dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[0]_i_4 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[8]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[0]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Lcr_reg_n_0_[0] ),
        .O(\Dout[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000CA0)) 
    \Dout[0]_i_5 
       (.I0(\iir_reg_n_0_[0] ),
        .I1(ier[0]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[0]),
        .I5(L[1]),
        .O(\Dout[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Dout[1]_i_3 
       (.I0(\Dout[1]_i_6_n_0 ),
        .I1(ier[1]),
        .I2(\Dout[3]_i_6_n_0 ),
        .I3(p_0_in),
        .I4(\lsr_reg_n_0_[1] ),
        .I5(\Dout[7]_i_12_n_0 ),
        .O(\Dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA0C0000)) 
    \Dout[1]_i_4 
       (.I0(p_0_in32_in),
        .I1(\iir_reg_n_0_[1] ),
        .I2(L[0]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(\Dout[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[1]_i_5 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[9]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[1]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Lcr_reg_n_0_[1] ),
        .O(\Dout[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \Dout[1]_i_6 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[0]),
        .I3(L[1]),
        .O(\Dout[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF000AA00CC000000)) 
    \Dout[2]_i_3 
       (.I0(p_0_in37_in),
        .I1(p_0_in33_in),
        .I2(scr[2]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(\Dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[2]_i_4 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[10]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[2]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Lcr_reg_n_0_[2] ),
        .O(\Dout[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000CA0)) 
    \Dout[2]_i_5 
       (.I0(\iir_reg_n_0_[2] ),
        .I1(ier[2]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[0]),
        .I5(L[1]),
        .O(\Dout[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF000AA00CC000000)) 
    \Dout[3]_i_3 
       (.I0(p_1_in38_in),
        .I1(p_0_in34_in),
        .I2(scr[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(\Dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[3]_i_4 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[11]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[3]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(p_5_in),
        .O(\Dout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000CA0)) 
    \Dout[3]_i_5 
       (.I0(\iir_reg_n_0_[3] ),
        .I1(ier[3]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[0]),
        .I5(L[1]),
        .O(\Dout[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Dout[3]_i_6 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .O(\Dout[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \Dout[4]_i_2 
       (.I0(clockDiv[4]),
        .I1(clockDiv[12]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[1]),
        .I5(L[0]),
        .O(\Dout[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \Dout[4]_i_3 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .O(\Dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000AA00CC000000)) 
    \Dout[4]_i_4 
       (.I0(p_2_in39_in),
        .I1(msr_reg),
        .I2(scr[4]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(\Dout[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[5]_i_3 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[13]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[5]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Lcr_reg_n_0_[5] ),
        .O(\Dout[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dout[5]_i_4 
       (.I0(L[1]),
        .I1(L[2]),
        .I2(L[3]),
        .O(\Dout[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[6]_i_3 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[14]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[6]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Lcr_reg_n_0_[6] ),
        .O(\Dout[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \Dout[6]_i_4 
       (.I0(\iir_reg_n_0_[7] ),
        .I1(thre_iir_set_i_4_n_0),
        .I2(\Dout[7]_i_12_n_0 ),
        .I3(lsr_reg),
        .I4(\msr_reg_n_0_[6] ),
        .I5(\Dout[5]_i_4_n_0 ),
        .O(\Dout[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Dout[7]_i_1 
       (.I0(chipSelect),
        .I1(rd_d),
        .O(readStrobe));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Dout[7]_i_10 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[0]),
        .O(\Dout[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \Dout[7]_i_11 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[0]),
        .O(\Dout[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dout[7]_i_12 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .O(\Dout[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Dout[7]_i_4 
       (.I0(L[1]),
        .I1(L[2]),
        .I2(L[3]),
        .O(\Dout[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \Dout[7]_i_5 
       (.I0(\Dout[7]_i_10_n_0 ),
        .I1(clockDiv[15]),
        .I2(\Dout[7]_i_11_n_0 ),
        .I3(clockDiv[7]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Lcr_reg_n_0_[7] ),
        .O(\Dout[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \Dout[7]_i_6 
       (.I0(\iir_reg_n_0_[7] ),
        .I1(thre_iir_set_i_4_n_0),
        .I2(\Dout[7]_i_12_n_0 ),
        .I3(\lsr_reg_n_0_[7] ),
        .I4(\msr_reg_n_0_[7] ),
        .I5(\Dout[5]_i_4_n_0 ),
        .O(\Dout[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \Dout[7]_i_7 
       (.I0(L[1]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[3]),
        .O(\Dout[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \Dout[7]_i_8 
       (.I0(L[2]),
        .I1(L[0]),
        .I2(L[1]),
        .I3(L[3]),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\Dout[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \Dout[7]_i_9 
       (.I0(L[2]),
        .I1(L[0]),
        .I2(L[1]),
        .I3(L[3]),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\Dout[7]_i_9_n_0 ));
  FDRE \Dout_reg[0] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_28),
        .Q(Q[0]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[1] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_27),
        .Q(Q[1]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[2] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_26),
        .Q(Q[2]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[3] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_25),
        .Q(Q[3]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[4] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_24),
        .Q(Q[4]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[5] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_23),
        .Q(Q[5]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[6] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_22),
        .Q(Q[6]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[7] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_21),
        .Q(Q[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAA8AA)) 
    \GENERATING_FIFOS.fcr[0]_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(L[1]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(\GENERATING_FIFOS.fcr[2]_i_2_n_0 ),
        .I5(\d_d_reg_n_0_[0] ),
        .O(\GENERATING_FIFOS.fcr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \GENERATING_FIFOS.fcr[2]_i_1 
       (.I0(fcr_0_prev),
        .I1(bus2ip_reset_int_core),
        .I2(\GENERATING_FIFOS.fcr[2]_i_2_n_0 ),
        .I3(L[2]),
        .I4(L[3]),
        .I5(L[1]),
        .O(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GENERATING_FIFOS.fcr[2]_i_2 
       (.I0(wr_d),
        .I1(chipSelect),
        .O(\GENERATING_FIFOS.fcr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \GENERATING_FIFOS.fcr[7]_i_1 
       (.I0(fcr_0_prev),
        .I1(wr_d),
        .I2(chipSelect),
        .I3(L[2]),
        .I4(L[3]),
        .I5(L[1]),
        .O(fcr1));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \GENERATING_FIFOS.fcr_0_prev_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(\GENERATING_FIFOS.fcr[2]_i_2_n_0 ),
        .I2(L[1]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(fcr_0_prev),
        .O(\GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.fcr_0_prev_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ),
        .Q(fcr_0_prev),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[0]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\d_d_reg_n_0_[1] ),
        .Q(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .R(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.fcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\d_d_reg_n_0_[2] ),
        .Q(p_0_in1_in),
        .R(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.fcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(fcr1),
        .D(\d_d_reg_n_0_[3] ),
        .Q(data3[3]),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(fcr1),
        .D(p_2_in[5]),
        .Q(data3[6]),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(fcr1),
        .D(p_2_in[6]),
        .Q(data3[7]),
        .R(bus2ip_reset_int_core));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hBCC33CC3)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I3(rx_error_in_fifo_cnt_up),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hBCF0F0C3)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(rx_error_in_fifo_cnt_up),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1 
       (.I0(rx_fifo_rst),
        .I1(bus2ip_reset_int_core),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAFAFAFAFAFAFAF8)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2 
       (.I0(rx_error_in_fifo_cnt_dn),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I2(rx_error_in_fifo_cnt_up),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I5(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFF80FE01)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I2(rx_error_in_fifo_cnt_up),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2 
       (.I0(\iir[2]_i_4_n_0 ),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I5(rx_fifo_rd_en_d),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_error_in_fifo_cnt_dn0),
        .Q(rx_error_in_fifo_cnt_dn),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .R(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .R(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .R(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .R(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_up_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_error_in_fifo),
        .Q(rx_error_in_fifo_cnt_up),
        .R(bus2ip_reset_int_core));
  u96v2_sbc_base_axi_uart16550_0_0_rx_fifo_block \GENERATING_FIFOS.rx_fifo_block_1 
       (.\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ),
        .\INFERRED_GEN.cnt_i_reg[2] (rx16550_1_n_18),
        .\INFERRED_GEN.cnt_i_reg[4] (\GENERATING_FIFOS.rx_fifo_block_1_n_4 ),
        .L({L[1],L[2]}),
        .Q(rx_fifo_empty),
        .Rx_error_in_fifo(Rx_error_in_fifo),
        .Rx_error_in_fifo0(\rx_fifo_control_1/Rx_error_in_fifo0 ),
        .Rx_fifo_trigger_reg({data3[7:6],data3[3]}),
        .SR(\rx_fifo_control_1/character_counter_rst ),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .character_received(character_received),
        .chipSelect(chipSelect),
        .chipSelect_reg(\GENERATING_FIFOS.rx_fifo_block_1_n_6 ),
        .iir(iir),
        .\iir_reg[0] (\iir_reg_n_0_[1] ),
        .\iir_reg[0]_0 (\iir[0]_i_3_n_0 ),
        .\iir_reg[0]_1 (\iir[2]_i_3_n_0 ),
        .\iir_reg[0]_2 (\iir_reg_n_0_[2] ),
        .\iir_reg[0]_3 (\iir[2]_i_5_n_0 ),
        .\iir_reg[0]_4 (\iir[2]_i_8_n_0 ),
        .\iir_reg[0]_5 (\iir[0]_i_2_n_0 ),
        .\iir_reg[0]_6 ({ier[3],ier[1:0]}),
        .\iir_reg[2] (\lsr_reg_n_0_[0] ),
        .\iir_reg[2]_0 (\iir[2]_i_7_n_0 ),
        .\iir_reg[3] (\GENERATING_FIFOS.rx_fifo_block_1_n_7 ),
        .\iir_reg[3]_0 (\iir_reg_n_0_[3] ),
        .\iir_reg[3]_1 (\iir[3]_i_4_n_0 ),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(\iir[2]_i_4_n_0 ),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .lsr_reg0(lsr_reg0),
        .\lsr_reg[0] (\GENERATING_FIFOS.rx_fifo_block_1_n_21 ),
        .\lsr_reg[0]_0 (\GENERATING_FIFOS.rx_fifo_rd_en_d_i_2_n_0 ),
        .\lsr_reg[0]_1 (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\lsr_reg[0]_2 (rx16550_1_n_13),
        .\lsr_reg[1] (\d_d_reg_n_0_[1] ),
        .\lsr_reg[1]_0 (\lsr_reg_n_0_[1] ),
        .\lsr_reg[2] (p_5_in),
        .out(rx_fifo_data_out),
        .p_1_out0(p_1_out0),
        .p_2_in44_in(p_2_in44_in),
        .rclk_int(rclk_int),
        .rd_d(rd_d),
        .rst_reg(\GENERATING_FIFOS.rx_fifo_block_1_n_5 ),
        .rx_error_in_fifo_cnt_dn0(rx_error_in_fifo_cnt_dn0),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .thre_iir_set(thre_iir_set),
        .thre_iir_set_reg(thre_iir_set_i_2_n_0),
        .thre_iir_set_reg_0(thre_iir_set_i_4_n_0),
        .thre_iir_set_reg_1(thre_iir_set_i_6_n_0),
        .thre_iir_set_reg_2(thre_iir_set_i_7_n_0),
        .wr_d(wr_d),
        .wr_d_reg(\GENERATING_FIFOS.rx_fifo_block_1_n_2 ),
        .writing_thr(writing_thr));
  FDRE \GENERATING_FIFOS.rx_fifo_rd_en_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_rd_en_d),
        .Q(rx_fifo_rd_en_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    \GENERATING_FIFOS.rx_fifo_rd_en_d_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(\GENERATING_FIFOS.rx_fifo_rd_en_d_i_2_n_0 ),
        .O(p_71_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \GENERATING_FIFOS.rx_fifo_rd_en_d_i_2 
       (.I0(chipSelect),
        .I1(L[0]),
        .I2(L[1]),
        .I3(L[3]),
        .I4(rd_d),
        .I5(L[2]),
        .O(\GENERATING_FIFOS.rx_fifo_rd_en_d_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.rx_fifo_rd_en_d_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_71_in),
        .Q(rx_fifo_rd_en_d),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'hFFFFABBA)) 
    \GENERATING_FIFOS.rx_fifo_rst_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I2(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I3(fcr_0_prev),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .O(rx_fifo_rst0));
  FDRE \GENERATING_FIFOS.rx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_rst0),
        .Q(rx_fifo_rst),
        .R(1'b0));
  u96v2_sbc_base_axi_uart16550_0_0_tx_fifo_block \GENERATING_FIFOS.tx_fifo_block_1 
       (.FIFO_Full_reg(tx16550_1_n_4),
        .\INFERRED_GEN.cnt_i_reg[4] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .Q(tx_fifo_empty),
        .SS(tx_fifo_rst),
        .\lsr_reg[5] (\GENERATING_FIFOS.tx_fifo_block_1_n_1 ),
        .out(tx_fifo_data_out),
        .p_2_in44_in(p_2_in44_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[7] (Thr),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d),
        .txrdyN_int_reg(data3[3]),
        .txrdyn(txrdyn));
  LUT5 #(
    .INIT(32'hFFFFABBA)) 
    \GENERATING_FIFOS.tx_fifo_rst_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I2(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I3(fcr_0_prev),
        .I4(p_0_in1_in),
        .O(tx_fifo_rst0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \GENERATING_FIFOS.tx_fifo_rst_i_2 
       (.I0(L[1]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(chipSelect),
        .I4(wr_d),
        .O(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_rst0),
        .Q(tx_fifo_rst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \GENERATING_FIFOS.tx_fifo_wr_en_d_i_1 
       (.I0(L[2]),
        .I1(wr_d),
        .I2(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I3(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ),
        .O(tx_fifo_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GENERATING_FIFOS.tx_fifo_wr_en_d_i_2 
       (.I0(L[3]),
        .I1(L[1]),
        .I2(L[0]),
        .I3(chipSelect),
        .O(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.tx_fifo_wr_en_d_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_wr_en),
        .Q(tx_fifo_wr_en_d),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Intr_i_1
       (.I0(freeze),
        .I1(\iir_reg_n_0_[0] ),
        .O(Intr_i_1_n_0));
  FDRE Intr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr_i_1_n_0),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h40000000)) 
    \Lcr[7]_i_1 
       (.I0(L[1]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(chipSelect),
        .I4(wr_d),
        .O(Lcr0));
  FDSE \Lcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\Lcr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \Lcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(\Lcr_reg_n_0_[1] ),
        .S(bus2ip_reset_int_core));
  FDRE \Lcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\Lcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(p_5_in),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_3_in),
        .Q(\Lcr_reg_n_0_[4] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(\Lcr_reg_n_0_[5] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_2_in[5]),
        .Q(\Lcr_reg_n_0_[6] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_2_in[6]),
        .Q(\Lcr_reg_n_0_[7] ),
        .R(bus2ip_reset_int_core));
  (* XILINX_LEGACY_PRIM = "ODDRE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "C:CLK SR:RST Q:OQ D1:D[0] D2:D[4]" *) 
  (* box_type = "PRIMITIVE" *) 
  OSERDESE3 #(
    .INIT(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .ODDR_MODE("TRUE"),
    .OSERDES_T_BYPASS("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF 
       (.CLK(s_axi_aclk),
        .CLKDIV(\NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_CLKDIV_UNCONNECTED ),
        .D({\NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_D_UNCONNECTED [7:5],D2,\NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_D_UNCONNECTED [3:1],baudoutN_int}),
        .OQ(baudoutn),
        .RST(bus2ip_reset_int_core),
        .T(1'b0),
        .T_OUT(\NLW_NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_T_OUT_UNCONNECTED ));
  LUT2 #(
    .INIT(4'hB)) 
    \NO_EXTERNAL_XIN.OSERDESE3_ODDR_GEN.OSERDESE3_ODDR_GEN_NOT_VERSAL.BAUD_FF_i_2 
       (.I0(baudoutN_int_i),
        .I1(rx16550_1_n_14),
        .O(D2));
  FDSE \Thr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(Thr[0]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(Thr[1]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(Thr[2]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(Thr[3]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_3_in),
        .Q(Thr[4]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(Thr[5]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_2_in[5]),
        .Q(Thr[6]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_2_in[6]),
        .Q(Thr[7]),
        .S(bus2ip_reset_int_core));
  FDRE \addr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [0]),
        .Q(L[3]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [1]),
        .Q(L[2]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [2]),
        .Q(L[1]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hEFEF0101EFFF0101)) 
    \baudCounter[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(divisor_latch_loaded),
        .I2(baudCounter[0]),
        .I3(\baudCounter[15]_i_3_n_0 ),
        .I4(clockDiv[0]),
        .I5(\baudCounter[0]_i_2_n_0 ),
        .O(\baudCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \baudCounter[0]_i_2 
       (.I0(baudCounter[14]),
        .I1(baudCounter[12]),
        .I2(baudCounter[10]),
        .I3(baudCounter[11]),
        .I4(baudCounter[13]),
        .I5(baudCounter[15]),
        .O(\baudCounter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAABAAABAAA8AA)) 
    \baudCounter[10]_i_1 
       (.I0(clockDiv[10]),
        .I1(bus2ip_reset_int_core),
        .I2(divisor_latch_loaded),
        .I3(baudoutN_int_i_i_1_n_0),
        .I4(baudCounter[10]),
        .I5(\baudCounter[14]_i_3_n_0 ),
        .O(\baudCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8A8ABABA8ABA8A)) 
    \baudCounter[11]_i_1 
       (.I0(clockDiv[11]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudoutN_int_i_i_1_n_0),
        .I3(baudCounter[11]),
        .I4(baudCounter[10]),
        .I5(\baudCounter[14]_i_3_n_0 ),
        .O(\baudCounter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8A8ABABA8ABA8A)) 
    \baudCounter[12]_i_1 
       (.I0(clockDiv[12]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudoutN_int_i_i_1_n_0),
        .I3(baudCounter[12]),
        .I4(\baudCounter[12]_i_2_n_0 ),
        .I5(\baudCounter[14]_i_3_n_0 ),
        .O(\baudCounter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \baudCounter[12]_i_2 
       (.I0(baudCounter[10]),
        .I1(baudCounter[11]),
        .O(\baudCounter[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA8A8ABABA8ABA8A)) 
    \baudCounter[13]_i_1 
       (.I0(clockDiv[13]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudoutN_int_i_i_1_n_0),
        .I3(baudCounter[13]),
        .I4(\baudCounter[13]_i_2_n_0 ),
        .I5(\baudCounter[14]_i_3_n_0 ),
        .O(\baudCounter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \baudCounter[13]_i_2 
       (.I0(baudCounter[11]),
        .I1(baudCounter[10]),
        .I2(baudCounter[12]),
        .O(\baudCounter[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA8A8ABABA8ABA8A)) 
    \baudCounter[14]_i_1 
       (.I0(clockDiv[14]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudoutN_int_i_i_1_n_0),
        .I3(baudCounter[14]),
        .I4(\baudCounter[14]_i_2_n_0 ),
        .I5(\baudCounter[14]_i_3_n_0 ),
        .O(\baudCounter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \baudCounter[14]_i_2 
       (.I0(baudCounter[12]),
        .I1(baudCounter[10]),
        .I2(baudCounter[11]),
        .I3(baudCounter[13]),
        .O(\baudCounter[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \baudCounter[14]_i_3 
       (.I0(baudCounter[9]),
        .I1(baudoutN_int_i_i_2_n_0),
        .I2(baudCounter[6]),
        .I3(baudCounter[7]),
        .I4(baudCounter[8]),
        .I5(baudCounter[0]),
        .O(\baudCounter[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8ABB88B88B)) 
    \baudCounter[15]_i_1 
       (.I0(clockDiv[15]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(\baudCounter[15]_i_3_n_0 ),
        .I3(baudCounter[15]),
        .I4(\baudCounter[15]_i_4_n_0 ),
        .I5(baudCounter[0]),
        .O(\baudCounter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \baudCounter[15]_i_2 
       (.I0(divisor_latch_loaded),
        .I1(bus2ip_reset_int_core),
        .O(\baudCounter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \baudCounter[15]_i_3 
       (.I0(baudCounter[8]),
        .I1(baudCounter[7]),
        .I2(baudCounter[6]),
        .I3(baudoutN_int_i_i_2_n_0),
        .I4(baudCounter[9]),
        .O(\baudCounter[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \baudCounter[15]_i_4 
       (.I0(baudCounter[13]),
        .I1(baudCounter[11]),
        .I2(baudCounter[10]),
        .I3(baudCounter[12]),
        .I4(baudCounter[14]),
        .O(\baudCounter[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABAAA8AAA8AAABAA)) 
    \baudCounter[1]_i_1 
       (.I0(clockDiv[1]),
        .I1(bus2ip_reset_int_core),
        .I2(divisor_latch_loaded),
        .I3(baudoutN_int_i_i_1_n_0),
        .I4(baudCounter[0]),
        .I5(baudCounter[1]),
        .O(\baudCounter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8D88D)) 
    \baudCounter[2]_i_1 
       (.I0(\baudCounter[15]_i_2_n_0 ),
        .I1(clockDiv[2]),
        .I2(baudCounter[2]),
        .I3(baudCounter[1]),
        .I4(baudCounter[0]),
        .I5(\baudCounter[2]_i_2_n_0 ),
        .O(\baudCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \baudCounter[2]_i_2 
       (.I0(clockDiv[2]),
        .I1(\baudCounter[2]_i_3_n_0 ),
        .I2(baudCounter[1]),
        .I3(baudCounter[3]),
        .I4(baudCounter[4]),
        .I5(\baudCounter[8]_i_2_n_0 ),
        .O(\baudCounter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \baudCounter[2]_i_3 
       (.I0(baudCounter[8]),
        .I1(baudCounter[5]),
        .I2(baudCounter[7]),
        .I3(baudCounter[6]),
        .O(\baudCounter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAABAAABAAA8AA)) 
    \baudCounter[3]_i_1 
       (.I0(clockDiv[3]),
        .I1(bus2ip_reset_int_core),
        .I2(divisor_latch_loaded),
        .I3(baudoutN_int_i_i_1_n_0),
        .I4(baudCounter[3]),
        .I5(\baudCounter[3]_i_2_n_0 ),
        .O(\baudCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \baudCounter[3]_i_2 
       (.I0(baudCounter[2]),
        .I1(baudCounter[1]),
        .I2(baudCounter[0]),
        .O(\baudCounter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBB88B88B)) 
    \baudCounter[4]_i_1 
       (.I0(clockDiv[4]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(\baudCounter[4]_i_2_n_0 ),
        .I3(baudCounter[4]),
        .I4(baudCounter[0]),
        .I5(\baudCounter[4]_i_3_n_0 ),
        .O(\baudCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \baudCounter[4]_i_2 
       (.I0(baudCounter[2]),
        .I1(baudCounter[1]),
        .I2(baudCounter[3]),
        .O(\baudCounter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \baudCounter[4]_i_3 
       (.I0(\baudCounter[4]_i_2_n_0 ),
        .I1(baudCounter[5]),
        .I2(clockDiv[4]),
        .I3(baudCounter[8]),
        .I4(\baudCounter[4]_i_4_n_0 ),
        .I5(\baudCounter[8]_i_2_n_0 ),
        .O(\baudCounter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \baudCounter[4]_i_4 
       (.I0(baudCounter[6]),
        .I1(baudCounter[7]),
        .O(\baudCounter[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABA8ABA8A8ABA)) 
    \baudCounter[5]_i_1 
       (.I0(clockDiv[5]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudoutN_int_i_i_1_n_0),
        .I3(baudCounter[5]),
        .I4(baudCounter[0]),
        .I5(\baudCounter[5]_i_2_n_0 ),
        .O(\baudCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \baudCounter[5]_i_2 
       (.I0(baudCounter[3]),
        .I1(baudCounter[1]),
        .I2(baudCounter[2]),
        .I3(baudCounter[4]),
        .O(\baudCounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEFCCF)) 
    \baudCounter[6]_i_1 
       (.I0(clockDiv[6]),
        .I1(\baudCounter[6]_i_2_n_0 ),
        .I2(\baudCounter[7]_i_2_n_0 ),
        .I3(baudCounter[6]),
        .I4(bus2ip_reset_int_core),
        .I5(divisor_latch_loaded),
        .O(\baudCounter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \baudCounter[6]_i_2 
       (.I0(baudoutN_int_i_i_2_n_0),
        .I1(baudCounter[8]),
        .I2(baudCounter[7]),
        .I3(clockDiv[6]),
        .I4(\baudCounter[8]_i_2_n_0 ),
        .O(\baudCounter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABA8ABA8A8ABA)) 
    \baudCounter[7]_i_1 
       (.I0(clockDiv[7]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudoutN_int_i_i_1_n_0),
        .I3(baudCounter[7]),
        .I4(baudCounter[6]),
        .I5(\baudCounter[7]_i_2_n_0 ),
        .O(\baudCounter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \baudCounter[7]_i_2 
       (.I0(baudCounter[5]),
        .I1(baudCounter[3]),
        .I2(baudCounter[1]),
        .I3(baudCounter[2]),
        .I4(baudCounter[4]),
        .I5(baudCounter[0]),
        .O(\baudCounter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD88DD88DCCDD88D)) 
    \baudCounter[8]_i_1 
       (.I0(\baudCounter[15]_i_2_n_0 ),
        .I1(clockDiv[8]),
        .I2(baudCounter[0]),
        .I3(baudCounter[8]),
        .I4(\baudCounter[8]_i_2_n_0 ),
        .I5(\baudCounter[8]_i_3_n_0 ),
        .O(\baudCounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \baudCounter[8]_i_2 
       (.I0(baudCounter[0]),
        .I1(\baudCounter[0]_i_2_n_0 ),
        .I2(baudCounter[9]),
        .O(\baudCounter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \baudCounter[8]_i_3 
       (.I0(baudCounter[7]),
        .I1(baudCounter[6]),
        .I2(baudoutN_int_i_i_2_n_0),
        .O(\baudCounter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD88DD88D88DDCCD)) 
    \baudCounter[9]_i_1 
       (.I0(\baudCounter[15]_i_2_n_0 ),
        .I1(clockDiv[9]),
        .I2(baudCounter[0]),
        .I3(baudCounter[9]),
        .I4(\baudCounter[9]_i_2_n_0 ),
        .I5(\baudCounter[9]_i_3_n_0 ),
        .O(\baudCounter[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \baudCounter[9]_i_2 
       (.I0(\baudCounter[0]_i_2_n_0 ),
        .I1(baudCounter[0]),
        .O(\baudCounter[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \baudCounter[9]_i_3 
       (.I0(baudoutN_int_i_i_2_n_0),
        .I1(baudCounter[6]),
        .I2(baudCounter[7]),
        .I3(baudCounter[8]),
        .O(\baudCounter[9]_i_3_n_0 ));
  FDRE \baudCounter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[0]_i_1_n_0 ),
        .Q(baudCounter[0]),
        .R(1'b0));
  FDRE \baudCounter_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[10]_i_1_n_0 ),
        .Q(baudCounter[10]),
        .R(1'b0));
  FDRE \baudCounter_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[11]_i_1_n_0 ),
        .Q(baudCounter[11]),
        .R(1'b0));
  FDRE \baudCounter_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[12]_i_1_n_0 ),
        .Q(baudCounter[12]),
        .R(1'b0));
  FDRE \baudCounter_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[13]_i_1_n_0 ),
        .Q(baudCounter[13]),
        .R(1'b0));
  FDRE \baudCounter_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[14]_i_1_n_0 ),
        .Q(baudCounter[14]),
        .R(1'b0));
  FDRE \baudCounter_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[15]_i_1_n_0 ),
        .Q(baudCounter[15]),
        .R(1'b0));
  FDRE \baudCounter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[1]_i_1_n_0 ),
        .Q(baudCounter[1]),
        .R(1'b0));
  FDRE \baudCounter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[2]_i_1_n_0 ),
        .Q(baudCounter[2]),
        .R(1'b0));
  FDRE \baudCounter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[3]_i_1_n_0 ),
        .Q(baudCounter[3]),
        .R(1'b0));
  FDRE \baudCounter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[4]_i_1_n_0 ),
        .Q(baudCounter[4]),
        .R(1'b0));
  FDRE \baudCounter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[5]_i_1_n_0 ),
        .Q(baudCounter[5]),
        .R(1'b0));
  FDRE \baudCounter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[6]_i_1_n_0 ),
        .Q(baudCounter[6]),
        .R(1'b0));
  FDRE \baudCounter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[7]_i_1_n_0 ),
        .Q(baudCounter[7]),
        .R(1'b0));
  FDRE \baudCounter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[8]_i_1_n_0 ),
        .Q(baudCounter[8]),
        .R(1'b0));
  FDRE \baudCounter_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[9]_i_1_n_0 ),
        .Q(baudCounter[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    baud_counter_loaded_i_1
       (.I0(divisor_latch_loaded),
        .I1(baudoutN_int_i_i_1_n_0),
        .O(baudCounter1));
  FDRE baud_counter_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudCounter1),
        .Q(baud_counter_loaded),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    baudoutN_int_i_i_1
       (.I0(\baudCounter[9]_i_2_n_0 ),
        .I1(baudCounter[9]),
        .I2(baudoutN_int_i_i_2_n_0),
        .I3(baudCounter[6]),
        .I4(baudCounter[7]),
        .I5(baudCounter[8]),
        .O(baudoutN_int_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    baudoutN_int_i_i_2
       (.I0(baudCounter[4]),
        .I1(baudCounter[2]),
        .I2(baudCounter[1]),
        .I3(baudCounter[3]),
        .I4(baudCounter[5]),
        .O(baudoutN_int_i_i_2_n_0));
  FDRE baudoutN_int_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudoutN_int_i_i_1_n_0),
        .Q(baudoutN_int_i),
        .R(1'b0));
  FDRE chipSelect_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ce_out_i),
        .Q(chipSelect),
        .R(bus2ip_reset_int_core));
  FDRE ctsN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctsn),
        .Q(ctsN_d),
        .R(1'b0));
  FDRE \d_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[0]),
        .Q(\d_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \d_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[1]),
        .Q(\d_d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \d_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[2]),
        .Q(\d_d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \d_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[3]),
        .Q(\d_d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \d_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[4]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \d_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[5]),
        .Q(\d_d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \d_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[6]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \d_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[7]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE dcdN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dcdn),
        .Q(dcdN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00005554)) 
    divisor_latch_loaded_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(load_baudupper),
        .I2(load_baudlower),
        .I3(divisor_latch_loaded),
        .I4(baud_counter_loaded),
        .O(divisor_latch_loaded_i_1_n_0));
  FDRE divisor_latch_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(divisor_latch_loaded_i_1_n_0),
        .Q(divisor_latch_loaded),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    dlab_i_1
       (.I0(L[0]),
        .I1(Lcr0),
        .I2(\Lcr_reg_n_0_[7] ),
        .O(dlab_i_1_n_0));
  FDRE dlab_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlab_i_1_n_0),
        .Q(L[0]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \dll[7]_i_1 
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(chipSelect),
        .I5(wr_d),
        .O(dll0));
  FDSE \dll_reg[0] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[0]),
        .S(bus2ip_reset_int_core));
  FDSE \dll_reg[1] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[1]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[2] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[2]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[3] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[3]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[4] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_3_in),
        .Q(clockDiv[4]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[5] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[5]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[6] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_2_in[5]),
        .Q(clockDiv[6]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[7] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_2_in[6]),
        .Q(clockDiv[7]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \dlm[7]_i_1 
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(chipSelect),
        .I5(wr_d),
        .O(dlm0));
  FDRE \dlm_reg[0] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[8]),
        .R(bus2ip_reset_int_core));
  FDSE \dlm_reg[1] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[9]),
        .S(bus2ip_reset_int_core));
  FDRE \dlm_reg[2] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[10]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[3] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[11]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[4] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_3_in),
        .Q(clockDiv[12]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[5] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[13]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[6] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_2_in[5]),
        .Q(clockDiv[14]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[7] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_2_in[6]),
        .Q(clockDiv[15]),
        .R(bus2ip_reset_int_core));
  FDRE dsrN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dsrn),
        .Q(dsrN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dtrn_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[0] ),
        .O(dtrn));
  FDRE ier1_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ier[1]),
        .Q(ier1_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ier[3]_i_1 
       (.I0(L[1]),
        .I1(L[0]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(chipSelect),
        .I5(wr_d),
        .O(ier1));
  FDRE \ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[0] ),
        .Q(ier[0]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[1] ),
        .Q(ier[1]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[2] ),
        .Q(ier[2]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[3] ),
        .Q(ier[3]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \iir[0]_i_2 
       (.I0(p_0_in33_in),
        .I1(p_0_in34_in),
        .I2(\msr_reg_n_0_[0] ),
        .I3(p_0_in32_in),
        .I4(ier[1]),
        .I5(thre_iir_set),
        .O(\iir[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \iir[0]_i_3 
       (.I0(p_1_in38_in),
        .I1(p_2_in39_in),
        .I2(\lsr_reg_n_0_[1] ),
        .I3(p_0_in37_in),
        .I4(ier[2]),
        .O(\iir[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iir[2]_i_3 
       (.I0(\iir_reg_n_0_[0] ),
        .I1(\iir_reg_n_0_[3] ),
        .O(\iir[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \iir[2]_i_4 
       (.I0(L[3]),
        .I1(L[1]),
        .I2(chipSelect),
        .I3(rd_d),
        .I4(L[2]),
        .O(\iir[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \iir[2]_i_5 
       (.I0(L[1]),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[2]),
        .I4(rd_d),
        .O(\iir[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \iir[2]_i_7 
       (.I0(p_0_in37_in),
        .I1(\lsr_reg_n_0_[1] ),
        .I2(p_2_in39_in),
        .I3(p_1_in38_in),
        .I4(ier[2]),
        .O(\iir[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000010)) 
    \iir[2]_i_8 
       (.I0(\GENERATING_FIFOS.rx_fifo_rd_en_d_i_2_n_0 ),
        .I1(\iir_reg_n_0_[0] ),
        .I2(\iir[2]_i_9_n_0 ),
        .I3(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I4(\iir_reg_n_0_[3] ),
        .I5(bus2ip_reset_int_core),
        .O(\iir[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \iir[2]_i_9 
       (.I0(\iir_reg_n_0_[2] ),
        .I1(\iir_reg_n_0_[1] ),
        .O(\iir[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \iir[3]_i_4 
       (.I0(\iir[2]_i_5_n_0 ),
        .I1(\iir_reg_n_0_[2] ),
        .I2(\iir[2]_i_4_n_0 ),
        .I3(\iir_reg_n_0_[1] ),
        .I4(\iir_reg_n_0_[0] ),
        .O(\iir[3]_i_4_n_0 ));
  FDSE \iir_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iir[0]),
        .Q(\iir_reg_n_0_[0] ),
        .S(p_1_out0));
  FDRE \iir_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iir[1]),
        .Q(\iir_reg_n_0_[1] ),
        .R(p_1_out0));
  FDRE \iir_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iir[2]),
        .Q(\iir_reg_n_0_[2] ),
        .R(p_1_out0));
  FDRE \iir_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_7 ),
        .Q(\iir_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \iir_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .Q(\iir_reg_n_0_[7] ),
        .R(1'b0));
  FDRE load_baudlower_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dll0),
        .Q(load_baudlower),
        .R(1'b0));
  FDRE load_baudupper_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlm0),
        .Q(load_baudupper),
        .R(1'b0));
  FDRE lsr2_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_2 ),
        .Q(lsr2_rst),
        .R(bus2ip_reset_int_core));
  FDRE lsr5_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_2_in44_in),
        .Q(lsr5_d),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEF)) 
    \lsr[2]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(lsr2_rst),
        .I2(\iir[2]_i_4_n_0 ),
        .O(lsr_reg014_out));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \lsr[2]_i_2 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(lsr_reg0),
        .I2(lsr2_set),
        .I3(p_0_in37_in),
        .O(\lsr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \lsr[2]_i_3 
       (.I0(L[2]),
        .I1(wr_d),
        .I2(L[3]),
        .I3(L[1]),
        .I4(chipSelect),
        .O(lsr_reg0));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \lsr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(lsr_reg0),
        .I2(lsr3_set),
        .I3(p_1_in38_in),
        .O(\lsr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \lsr[4]_i_1 
       (.I0(p_3_in),
        .I1(lsr_reg0),
        .I2(lsr4_set),
        .I3(p_2_in39_in),
        .O(\lsr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \lsr[7]_i_1 
       (.I0(\iir[2]_i_4_n_0 ),
        .I1(bus2ip_reset_int_core),
        .I2(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I3(\lsr[7]_i_2_n_0 ),
        .O(\lsr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lsr[7]_i_2 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(\lsr[7]_i_2_n_0 ));
  FDRE \lsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_4 ),
        .Q(\lsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_5 ),
        .Q(\lsr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[2]_i_2_n_0 ),
        .Q(p_0_in37_in),
        .R(lsr_reg014_out));
  FDRE \lsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[3]_i_1_n_0 ),
        .Q(p_1_in38_in),
        .R(lsr_reg014_out));
  FDRE \lsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[4]_i_1_n_0 ),
        .Q(p_2_in39_in),
        .R(lsr_reg014_out));
  FDRE \lsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_2),
        .Q(p_2_in44_in),
        .R(1'b0));
  FDRE \lsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_0),
        .Q(lsr_reg),
        .R(1'b0));
  FDRE \lsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[7]_i_1_n_0 ),
        .Q(\lsr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE mcr4_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in8_in),
        .Q(mcr4_d),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mcr[4]_i_1 
       (.I0(L[1]),
        .I1(chipSelect),
        .I2(wr_d),
        .I3(L[2]),
        .I4(L[3]),
        .O(mcr0));
  FDRE \mcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\mcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(p_0_in),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\mcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(\mcr_reg_n_0_[3] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(p_3_in),
        .Q(p_0_in8_in),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[0]_i_1 
       (.I0(ctsN_d),
        .I1(bus2ip_reset_int_core),
        .I2(msr_reg),
        .O(\modem_prev_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[1]_i_1 
       (.I0(dsrN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[5] ),
        .O(\modem_prev_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[2]_i_1 
       (.I0(riN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[6] ),
        .O(\modem_prev_val[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[3]_i_1 
       (.I0(dcdN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[7] ),
        .O(\modem_prev_val[3]_i_1_n_0 ));
  FDRE \modem_prev_val_reg[0] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[0]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[1] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[1]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[2] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[2]_i_1_n_0 ),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \modem_prev_val_reg[3] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[3]_i_1_n_0 ),
        .Q(p_1_in6_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \msr[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(rd_d),
        .I2(L[2]),
        .I3(L[3]),
        .I4(chipSelect),
        .I5(L[1]),
        .O(msr_reg0));
  LUT5 #(
    .INIT(32'hCFFCABBA)) 
    \msr[0]_i_2 
       (.I0(\d_d_reg_n_0_[0] ),
        .I1(\msr_reg_n_0_[0] ),
        .I2(\modem_prev_val_reg_n_0_[0] ),
        .I3(msr_reg),
        .I4(\msr[0]_i_3_n_0 ),
        .O(\msr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \msr[0]_i_3 
       (.I0(L[1]),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[2]),
        .I4(wr_d),
        .O(\msr[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFFCABBA)) 
    \msr[1]_i_1 
       (.I0(\d_d_reg_n_0_[1] ),
        .I1(p_0_in32_in),
        .I2(\modem_prev_val_reg_n_0_[1] ),
        .I3(\msr_reg_n_0_[5] ),
        .I4(\msr[0]_i_3_n_0 ),
        .O(\msr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFFCABBA)) 
    \msr[2]_i_1 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(p_0_in33_in),
        .I2(p_1_in3_in),
        .I3(\msr_reg_n_0_[6] ),
        .I4(\msr[0]_i_3_n_0 ),
        .O(\msr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFFCABBA)) 
    \msr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(p_0_in34_in),
        .I2(p_1_in6_in),
        .I3(\msr_reg_n_0_[7] ),
        .I4(\msr[0]_i_3_n_0 ),
        .O(\msr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FCC0FAAAA)) 
    \msr[4]_i_1 
       (.I0(p_3_in),
        .I1(p_0_in),
        .I2(ctsN_d),
        .I3(p_0_in8_in),
        .I4(\msr[0]_i_3_n_0 ),
        .I5(bus2ip_reset_int_core),
        .O(\msr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FCC0FAAAA)) 
    \msr[5]_i_1 
       (.I0(\d_d_reg_n_0_[5] ),
        .I1(\mcr_reg_n_0_[0] ),
        .I2(dsrN_d),
        .I3(p_0_in8_in),
        .I4(\msr[0]_i_3_n_0 ),
        .I5(bus2ip_reset_int_core),
        .O(\msr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FCC0FAAAA)) 
    \msr[6]_i_1 
       (.I0(\d_d_reg_n_0_[5] ),
        .I1(\mcr_reg_n_0_[2] ),
        .I2(riN_d),
        .I3(p_0_in8_in),
        .I4(\msr[0]_i_3_n_0 ),
        .I5(bus2ip_reset_int_core),
        .O(\msr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FCC0FAAAA)) 
    \msr[7]_i_1 
       (.I0(\d_d_reg_n_0_[5] ),
        .I1(\mcr_reg_n_0_[3] ),
        .I2(dcdN_d),
        .I3(p_0_in8_in),
        .I4(\msr[0]_i_3_n_0 ),
        .I5(bus2ip_reset_int_core),
        .O(\msr[7]_i_1_n_0 ));
  FDRE \msr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[0]_i_2_n_0 ),
        .Q(\msr_reg_n_0_[0] ),
        .R(msr_reg0));
  FDRE \msr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[1]_i_1_n_0 ),
        .Q(p_0_in32_in),
        .R(msr_reg0));
  FDRE \msr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[2]_i_1_n_0 ),
        .Q(p_0_in33_in),
        .R(msr_reg0));
  FDRE \msr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[3]_i_1_n_0 ),
        .Q(p_0_in34_in),
        .R(msr_reg0));
  FDRE \msr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[4]_i_1_n_0 ),
        .Q(msr_reg),
        .R(1'b0));
  FDRE \msr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[5]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \msr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[6]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \msr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[7]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out1n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[2] ),
        .O(out1n));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out2n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[3] ),
        .O(out2n));
  FDRE rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rd),
        .Q(rd_d),
        .R(1'b0));
  FDRE riN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rin),
        .Q(riN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rtsn_INST_0
       (.I0(p_0_in8_in),
        .I1(p_0_in),
        .O(rtsn));
  u96v2_sbc_base_axi_uart16550_0_0_rx16550 rx16550_1
       (.D({rx16550_1_n_21,rx16550_1_n_22,rx16550_1_n_23,rx16550_1_n_24,rx16550_1_n_25,rx16550_1_n_26,rx16550_1_n_27,rx16550_1_n_28}),
        .\Dout_reg[0] (\Dout[0]_i_3_n_0 ),
        .\Dout_reg[0]_0 (\Dout[0]_i_4_n_0 ),
        .\Dout_reg[0]_1 (\Dout[0]_i_5_n_0 ),
        .\Dout_reg[0]_2 (\Dout[3]_i_6_n_0 ),
        .\Dout_reg[0]_3 (\Dout[7]_i_8_n_0 ),
        .\Dout_reg[0]_4 (\Dout[7]_i_9_n_0 ),
        .\Dout_reg[0]_5 (\Dout[7]_i_7_n_0 ),
        .\Dout_reg[1] (\Dout[1]_i_3_n_0 ),
        .\Dout_reg[1]_0 (\Dout[1]_i_4_n_0 ),
        .\Dout_reg[1]_1 (\Dout[7]_i_4_n_0 ),
        .\Dout_reg[1]_2 (\Dout[1]_i_5_n_0 ),
        .\Dout_reg[2] (\Dout[2]_i_3_n_0 ),
        .\Dout_reg[2]_0 (\Dout[2]_i_4_n_0 ),
        .\Dout_reg[2]_1 (\Dout[2]_i_5_n_0 ),
        .\Dout_reg[3] (\Dout[3]_i_3_n_0 ),
        .\Dout_reg[3]_0 (\Dout[3]_i_4_n_0 ),
        .\Dout_reg[3]_1 (\Dout[3]_i_5_n_0 ),
        .\Dout_reg[4] (\Dout[4]_i_2_n_0 ),
        .\Dout_reg[4]_0 (\Dout[4]_i_3_n_0 ),
        .\Dout_reg[4]_1 (\Dout[4]_i_4_n_0 ),
        .\Dout_reg[5] (\Dout[5]_i_3_n_0 ),
        .\Dout_reg[5]_0 (\Dout[5]_i_4_n_0 ),
        .\Dout_reg[5]_1 (\msr_reg_n_0_[5] ),
        .\Dout_reg[5]_2 (\Dout[7]_i_12_n_0 ),
        .\Dout_reg[6] (\Dout[6]_i_3_n_0 ),
        .\Dout_reg[6]_0 (\Dout[6]_i_4_n_0 ),
        .\Dout_reg[7] ({scr[7:5],scr[1]}),
        .\Dout_reg[7]_0 ({data3[7:6],data3[3],p_0_in1_in,\GENERATING_FIFOS.fcr_reg_n_0_[1] }),
        .\Dout_reg[7]_1 (\Dout[7]_i_5_n_0 ),
        .\Dout_reg[7]_2 (\Dout[7]_i_6_n_0 ),
        .\FSM_sequential_receive_state_reg[3]_0 (tx16550_1_n_3),
        .\Lcr_reg[1] (rx16550_1_n_16),
        .Q(\d_d_reg_n_0_[0] ),
        .Rx_error_in_fifo0(\rx_fifo_control_1/Rx_error_in_fifo0 ),
        .SR(\rx_fifo_control_1/character_counter_rst ),
        .baudoutN_int(baudoutN_int),
        .baudoutN_int_i(baudoutN_int_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .\character_counter_reg[0] (rx_fifo_empty),
        .character_received(character_received),
        .clockDiv(clockDiv),
        .\d_d_reg[0] (rx16550_1_n_13),
        .\dll_reg[0] (rx16550_1_n_14),
        .framing_error_flag_reg_0({p_0_in8_in,\mcr_reg_n_0_[3] ,\mcr_reg_n_0_[2] ,\mcr_reg_n_0_[0] }),
        .have_bi_in_fifo_n_i_reg_0(rx16550_1_n_18),
        .lsr_reg0(lsr_reg0),
        .\lsr_reg[0] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\lsr_reg[0]_0 (\lsr_reg_n_0_[0] ),
        .mcr4_d(mcr4_d),
        .out(rx_fifo_data_out),
        .p_2_in44_in(p_2_in44_in),
        .parity_error_d_i_3_0({\Lcr_reg_n_0_[5] ,\Lcr_reg_n_0_[4] ,p_5_in,\Lcr_reg_n_0_[2] ,\Lcr_reg_n_0_[1] ,\Lcr_reg_n_0_[0] }),
        .rclk_int(rclk_int),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk));
  FDSE rxrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_21 ),
        .Q(rxrdyn),
        .S(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h80000000)) 
    \scr[7]_i_1 
       (.I0(wr_d),
        .I1(L[2]),
        .I2(L[3]),
        .I3(L[1]),
        .I4(chipSelect),
        .O(scr0));
  FDRE \scr_reg[0] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(scr[0]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[1] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(scr[1]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[2] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(scr[2]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[3] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(scr[3]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[4] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_3_in),
        .Q(scr[4]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[5] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(scr[5]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[6] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_2_in[5]),
        .Q(scr[6]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[7] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_2_in[6]),
        .Q(scr[7]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    thre_iir_set_i_2
       (.I0(\iir_reg_n_0_[3] ),
        .I1(\iir_reg_n_0_[0] ),
        .I2(\iir_reg_n_0_[2] ),
        .O(thre_iir_set_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    thre_iir_set_i_4
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .O(thre_iir_set_i_4_n_0));
  LUT6 #(
    .INIT(64'h22220000222F0000)) 
    thre_iir_set_i_6
       (.I0(ier[1]),
        .I1(ier1_d),
        .I2(\iir[2]_i_5_n_0 ),
        .I3(\iir_reg_n_0_[1] ),
        .I4(p_2_in44_in),
        .I5(thre_iir_set_i_2_n_0),
        .O(thre_iir_set_i_6_n_0));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    thre_iir_set_i_7
       (.I0(\iir[2]_i_4_n_0 ),
        .I1(thre_iir_set_i_8_n_0),
        .I2(thre_iir_set_i_9_n_0),
        .I3(\GENERATING_FIFOS.rx_fifo_rd_en_d_i_2_n_0 ),
        .I4(p_2_in44_in),
        .I5(lsr5_d),
        .O(thre_iir_set_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    thre_iir_set_i_8
       (.I0(p_2_in44_in),
        .I1(\iir_reg_n_0_[1] ),
        .I2(\iir_reg_n_0_[2] ),
        .I3(\iir_reg_n_0_[3] ),
        .I4(\iir_reg_n_0_[0] ),
        .O(thre_iir_set_i_8_n_0));
  LUT6 #(
    .INIT(64'h0020000000000020)) 
    thre_iir_set_i_9
       (.I0(\iir_reg_n_0_[2] ),
        .I1(\iir_reg_n_0_[1] ),
        .I2(p_2_in44_in),
        .I3(\iir_reg_n_0_[0] ),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I5(\iir_reg_n_0_[3] ),
        .O(thre_iir_set_i_9_n_0));
  FDRE thre_iir_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_6 ),
        .Q(thre_iir_set),
        .R(1'b0));
  u96v2_sbc_base_axi_uart16550_0_0_tx16550 tx16550_1
       (.FIFO_Full_reg(tx_fifo_empty),
        .\FSM_sequential_transmit_state_reg[0]_0 (rx16550_1_n_16),
        .\GENERATING_FIFOS.fcr_reg[0] (tx16550_1_n_4),
        .\Lcr_reg[0] (tx16550_1_n_3),
        .Q({\Lcr_reg_n_0_[6] ,\Lcr_reg_n_0_[5] ,\Lcr_reg_n_0_[4] ,p_5_in,\Lcr_reg_n_0_[2] ,\Lcr_reg_n_0_[1] ,\Lcr_reg_n_0_[0] }),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .freeze(freeze),
        .out(tx_fifo_data_out),
        .rclk_int(rclk_int),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk),
        .sin(sin),
        .sout(sout),
        .sout_0(p_0_in8_in),
        .transmitting_n_reg_0(xuart_tx_load_sm_1_n_1),
        .tsr_loaded(tsr_loaded),
        .\tsr_reg[7]_0 (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\tsr_reg[7]_1 (tsr_int),
        .tx_empty(tx_empty),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int));
  FDRE txrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.tx_fifo_block_1_n_1 ),
        .Q(txrdyn),
        .R(bus2ip_reset_int_core));
  FDRE wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Wr),
        .Q(wr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    writing_thr_i_1
       (.I0(L[2]),
        .I1(wr_d),
        .I2(chipSelect),
        .I3(L[0]),
        .I4(L[1]),
        .I5(L[3]),
        .O(Thr0));
  FDRE writing_thr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Thr0),
        .Q(writing_thr),
        .R(bus2ip_reset_int_core));
  u96v2_sbc_base_axi_uart16550_0_0_xuart_tx_load_sm xuart_tx_load_sm_1
       (.Q(p_2_in[5]),
        .Thre_reg_0(xuart_tx_load_sm_1_n_2),
        .Tsr_loaded_reg(xuart_tx_load_sm_1_n_0),
        .Tsre_reg_0(xuart_tx_load_sm_1_n_1),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .freeze(freeze),
        .lsr_reg(lsr_reg),
        .lsr_reg0(lsr_reg0),
        .\lsr_reg[5] (tx_fifo_empty),
        .\lsr_reg[6] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .p_2_in44_in(p_2_in44_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_int_reg[7]_0 (tsr_int),
        .\tsr_int_reg[7]_1 (Thr),
        .tsr_loaded(tsr_loaded),
        .tx_empty(tx_empty),
        .writing_thr(writing_thr));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_xuart
   (baudoutn,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    rtsn,
    dtrn,
    out1n,
    out2n,
    Q,
    sout,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    bus2ip_wrce_i,
    bus2ip_rdce_i,
    ce_out_i,
    freeze,
    s_axi_wdata,
    \addr_d_reg[2] ,
    sin);
  output baudoutn;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  output [7:0]Q;
  output sout;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input bus2ip_wrce_i;
  input bus2ip_rdce_i;
  input ce_out_i;
  input freeze;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2] ;
  input sin;

  wire [7:0]Q;
  wire Rd;
  wire Wr;
  wire [2:0]\addr_d_reg[2] ;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [7:0]s_axi_wdata;
  wire sin;
  wire sout;
  wire txrdyn;
  wire wrReq_d1;

  u96v2_sbc_base_axi_uart16550_0_0_ipic_if IPIC_IF_I_1
       (.Rd(Rd),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .wrReq_d1(wrReq_d1));
  u96v2_sbc_base_axi_uart16550_0_0_uart16550 UART16550_I_1
       (.Q(Q),
        .Rd(Rd),
        .Wr(Wr),
        .\addr_d_reg[2]_0 (\addr_d_reg[2] ),
        .baudoutn(baudoutn),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .ce_out_i(ce_out_i),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn));
endmodule

module u96v2_sbc_base_axi_uart16550_0_0_xuart_tx_load_sm
   (Tsr_loaded_reg,
    Tsre_reg_0,
    Thre_reg_0,
    \tsr_int_reg[7]_0 ,
    bus2ip_reset_int_core,
    s_axi_aclk,
    Q,
    lsr_reg0,
    lsr_reg,
    tsr_loaded,
    \lsr_reg[6] ,
    p_2_in44_in,
    tx_empty,
    writing_thr,
    freeze,
    \lsr_reg[5] ,
    \tsr_int_reg[7]_1 );
  output Tsr_loaded_reg;
  output Tsre_reg_0;
  output Thre_reg_0;
  output [7:0]\tsr_int_reg[7]_0 ;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input [0:0]Q;
  input lsr_reg0;
  input lsr_reg;
  input tsr_loaded;
  input \lsr_reg[6] ;
  input p_2_in44_in;
  input tx_empty;
  input writing_thr;
  input freeze;
  input [0:0]\lsr_reg[5] ;
  input [7:0]\tsr_int_reg[7]_1 ;

  wire [0:0]Q;
  wire Thre;
  wire Thre_reg_0;
  wire Tsr_loaded_reg;
  wire Tsre;
  wire Tsre_reg_0;
  wire bus2ip_reset_int_core;
  wire [1:0]current_state;
  wire freeze;
  wire \lsr[6]_i_2_n_0 ;
  wire lsr_reg;
  wire lsr_reg0;
  wire lsr_reg022_out;
  wire [0:0]\lsr_reg[5] ;
  wire \lsr_reg[6] ;
  wire [1:0]next_state;
  wire p_2_in44_in;
  wire s_axi_aclk;
  wire thre_com;
  wire tsr_com;
  wire [7:0]\tsr_int_reg[7]_0 ;
  wire [7:0]\tsr_int_reg[7]_1 ;
  wire tsr_loaded;
  wire tsre_com;
  wire tx_empty;
  wire writing_thr;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(writing_thr),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(tsr_loaded),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h47)) 
    Thre_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(thre_com));
  FDSE Thre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(thre_com),
        .Q(Thre),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    Tsre_i_1
       (.I0(tsr_loaded),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(tsre_com));
  FDSE Tsre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tsre_com),
        .Q(Tsre),
        .S(bus2ip_reset_int_core));
  LUT3 #(
    .INIT(8'hE2)) 
    \lsr[5]_i_1 
       (.I0(Thre),
        .I1(\lsr_reg[6] ),
        .I2(\lsr_reg[5] ),
        .O(Thre_reg_0));
  LUT6 #(
    .INIT(64'h55C0000000000000)) 
    \lsr[6]_i_1 
       (.I0(tsr_loaded),
        .I1(Tsre),
        .I2(Thre),
        .I3(\lsr_reg[6] ),
        .I4(p_2_in44_in),
        .I5(\lsr[6]_i_2_n_0 ),
        .O(Tsr_loaded_reg));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \lsr[6]_i_2 
       (.I0(Q),
        .I1(lsr_reg0),
        .I2(lsr_reg022_out),
        .I3(lsr_reg),
        .O(\lsr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAAEAAAEA)) 
    \lsr[6]_i_3 
       (.I0(bus2ip_reset_int_core),
        .I1(Thre),
        .I2(Tsre),
        .I3(\lsr_reg[6] ),
        .I4(tx_empty),
        .I5(p_2_in44_in),
        .O(lsr_reg022_out));
  LUT4 #(
    .INIT(16'hFFE2)) 
    transmitting_n_i_2
       (.I0(Tsre),
        .I1(\lsr_reg[6] ),
        .I2(p_2_in44_in),
        .I3(freeze),
        .O(Tsre_reg_0));
  LUT3 #(
    .INIT(8'h0E)) 
    \tsr_int[7]_i_1 
       (.I0(writing_thr),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(tsr_com));
  FDSE \tsr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [0]),
        .Q(\tsr_int_reg[7]_0 [0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [1]),
        .Q(\tsr_int_reg[7]_0 [1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [2]),
        .Q(\tsr_int_reg[7]_0 [2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [3]),
        .Q(\tsr_int_reg[7]_0 [3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [4]),
        .Q(\tsr_int_reg[7]_0 [4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [5]),
        .Q(\tsr_int_reg[7]_0 [5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [6]),
        .Q(\tsr_int_reg[7]_0 [6]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [7]),
        .Q(\tsr_int_reg[7]_0 [7]),
        .S(bus2ip_reset_int_core));
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
