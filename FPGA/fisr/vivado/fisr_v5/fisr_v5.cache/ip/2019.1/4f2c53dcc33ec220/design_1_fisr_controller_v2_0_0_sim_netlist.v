// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Aug 24 15:36:43 2022
// Host        : DESKTOP-QU5D0NH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fisr_controller_v2_0_0_sim_netlist.v
// Design      : design_1_fisr_controller_v2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fisr_controller_v2_0_0,fisr_controller_v2_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fisr_controller_v2_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_x_data,
    s00_y_data,
    s00_valid,
    s00_start,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [31:0]s00_x_data;
  input [31:0]s00_y_data;
  input s00_valid;
  output s00_start;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire s00_start;
  wire s00_valid;
  wire [31:0]s00_x_data;
  wire [31:0]s00_y_data;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fisr_controller_v2_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_start(s00_start),
        .s00_valid(s00_valid),
        .s00_x_data(s00_x_data),
        .s00_y_data(s00_y_data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fisr_controller_v2_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_x_data,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_start,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_y_data,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_valid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_x_data;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output s00_start;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input [31:0]s00_y_data;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_valid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s00_start;
  wire s00_valid;
  wire [31:0]s00_x_data;
  wire [31:0]s00_y_data;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fisr_controller_v2_v1_0_S00_AXI fisr_controller_v2_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_start(s00_start),
        .s00_valid(s00_valid),
        .s00_x_data(s00_x_data),
        .s00_y_data(s00_y_data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fisr_controller_v2_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_x_data,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_start,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_y_data,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_valid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_x_data;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output s00_start;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input [31:0]s00_y_data;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_valid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:0]axi_araddr;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:0]p_1_in;
  wire \ready_mem[0]_i_1_n_0 ;
  wire \ready_mem_reg_n_0_[0] ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s00_start;
  wire s00_valid;
  wire [31:0]s00_x_data;
  wire [31:0]s00_y_data;
  wire slv_reg_rden;
  wire start_i_1_n_0;
  wire wren_dly;
  wire \x_mem[31]_i_1_n_0 ;
  wire [31:0]y_mem;
  wire y_mem_0;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(\x_mem[31]_i_1_n_0 ));
  FDSE \axi_araddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[0]),
        .S(\x_mem[31]_i_1_n_0 ));
  FDSE \axi_araddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[1]),
        .S(\x_mem[31]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(axi_araddr[2]),
        .S(\x_mem[31]_i_1_n_0 ));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(axi_araddr[3]),
        .S(\x_mem[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(\x_mem[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(\x_mem[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(\x_mem[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \axi_rdata[0]_i_1 
       (.I0(\ready_mem_reg_n_0_[0] ),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(y_mem[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[10]_i_1 
       (.I0(y_mem[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[11]_i_1 
       (.I0(y_mem[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[12]_i_1 
       (.I0(y_mem[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[13]_i_1 
       (.I0(y_mem[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[14]_i_1 
       (.I0(y_mem[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[15]_i_1 
       (.I0(y_mem[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[16]_i_1 
       (.I0(y_mem[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[17]_i_1 
       (.I0(y_mem[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[18]_i_1 
       (.I0(y_mem[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[19]_i_1 
       (.I0(y_mem[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[1]_i_1 
       (.I0(y_mem[1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[20]_i_1 
       (.I0(y_mem[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[21]_i_1 
       (.I0(y_mem[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[22]_i_1 
       (.I0(y_mem[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[23]_i_1 
       (.I0(y_mem[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[24]_i_1 
       (.I0(y_mem[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[25]_i_1 
       (.I0(y_mem[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[26]_i_1 
       (.I0(y_mem[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[27]_i_1 
       (.I0(y_mem[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[28]_i_1 
       (.I0(y_mem[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[29]_i_1 
       (.I0(y_mem[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[2]_i_1 
       (.I0(y_mem[2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[30]_i_1 
       (.I0(y_mem[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(slv_reg_rden),
        .I4(s00_axi_aresetn),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_2 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[31]_i_3 
       (.I0(y_mem[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[3]_i_1 
       (.I0(y_mem[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[4]_i_1 
       (.I0(y_mem[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[5]_i_1 
       (.I0(y_mem[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[6]_i_1 
       (.I0(y_mem[6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[7]_i_1 
       (.I0(y_mem[7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[8]_i_1 
       (.I0(y_mem[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \axi_rdata[9]_i_1 
       (.I0(y_mem[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(p_1_in[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[0]),
        .Q(s00_axi_rdata[0]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[10]),
        .Q(s00_axi_rdata[10]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[11]),
        .Q(s00_axi_rdata[11]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[12]),
        .Q(s00_axi_rdata[12]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[13]),
        .Q(s00_axi_rdata[13]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[14]),
        .Q(s00_axi_rdata[14]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[15]),
        .Q(s00_axi_rdata[15]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[16]),
        .Q(s00_axi_rdata[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[17]),
        .Q(s00_axi_rdata[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[18]),
        .Q(s00_axi_rdata[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[19]),
        .Q(s00_axi_rdata[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[1]),
        .Q(s00_axi_rdata[1]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[20]),
        .Q(s00_axi_rdata[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[21]),
        .Q(s00_axi_rdata[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[22]),
        .Q(s00_axi_rdata[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[23]),
        .Q(s00_axi_rdata[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[24]),
        .Q(s00_axi_rdata[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[25]),
        .Q(s00_axi_rdata[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[26]),
        .Q(s00_axi_rdata[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[27]),
        .Q(s00_axi_rdata[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[28]),
        .Q(s00_axi_rdata[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[29]),
        .Q(s00_axi_rdata[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[2]),
        .Q(s00_axi_rdata[2]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[30]),
        .Q(s00_axi_rdata[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[31]),
        .Q(s00_axi_rdata[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[3]),
        .Q(s00_axi_rdata[3]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[4]),
        .Q(s00_axi_rdata[4]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[5]),
        .Q(s00_axi_rdata[5]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[6]),
        .Q(s00_axi_rdata[6]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[7]),
        .Q(s00_axi_rdata[7]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[8]),
        .Q(s00_axi_rdata[8]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(p_1_in[9]),
        .Q(s00_axi_rdata[9]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(\x_mem[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(\x_mem[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \ready_mem[0]_i_1 
       (.I0(\ready_mem_reg_n_0_[0] ),
        .I1(s00_valid),
        .I2(s00_axi_aresetn),
        .I3(wren_dly),
        .O(\ready_mem[0]_i_1_n_0 ));
  FDRE \ready_mem_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ready_mem[0]_i_1_n_0 ),
        .Q(\ready_mem_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    start_i_1
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_valid),
        .I5(s00_start),
        .O(start_i_1_n_0));
  FDRE start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(s00_start),
        .R(\x_mem[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_mem[31]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\x_mem[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \x_mem[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(wren_dly));
  FDRE \x_mem_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[0]),
        .Q(s00_x_data[0]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[10] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[10]),
        .Q(s00_x_data[10]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[11] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[11]),
        .Q(s00_x_data[11]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[12] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[12]),
        .Q(s00_x_data[12]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[13] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[13]),
        .Q(s00_x_data[13]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[14] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[14]),
        .Q(s00_x_data[14]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[15] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[15]),
        .Q(s00_x_data[15]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[16] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[16]),
        .Q(s00_x_data[16]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[17] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[17]),
        .Q(s00_x_data[17]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[18] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[18]),
        .Q(s00_x_data[18]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[19] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[19]),
        .Q(s00_x_data[19]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[1]),
        .Q(s00_x_data[1]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[20] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[20]),
        .Q(s00_x_data[20]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[21] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[21]),
        .Q(s00_x_data[21]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[22] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[22]),
        .Q(s00_x_data[22]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[23] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[23]),
        .Q(s00_x_data[23]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[24] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[24]),
        .Q(s00_x_data[24]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[25] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[25]),
        .Q(s00_x_data[25]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[26] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[26]),
        .Q(s00_x_data[26]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[27] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[27]),
        .Q(s00_x_data[27]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[28] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[28]),
        .Q(s00_x_data[28]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[29] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[29]),
        .Q(s00_x_data[29]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[2]),
        .Q(s00_x_data[2]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[30] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[30]),
        .Q(s00_x_data[30]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[31] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[31]),
        .Q(s00_x_data[31]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[3]),
        .Q(s00_x_data[3]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[4]),
        .Q(s00_x_data[4]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[5] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[5]),
        .Q(s00_x_data[5]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[6] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[6]),
        .Q(s00_x_data[6]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[7] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[7]),
        .Q(s00_x_data[7]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[8] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[8]),
        .Q(s00_x_data[8]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \x_mem_reg[9] 
       (.C(s00_axi_aclk),
        .CE(wren_dly),
        .D(s00_axi_wdata[9]),
        .Q(s00_x_data[9]),
        .R(\x_mem[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \y_mem[31]_i_1 
       (.I0(s00_valid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(y_mem_0));
  FDRE \y_mem_reg[0] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[0]),
        .Q(y_mem[0]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[10] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[10]),
        .Q(y_mem[10]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[11] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[11]),
        .Q(y_mem[11]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[12] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[12]),
        .Q(y_mem[12]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[13] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[13]),
        .Q(y_mem[13]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[14] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[14]),
        .Q(y_mem[14]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[15] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[15]),
        .Q(y_mem[15]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[16] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[16]),
        .Q(y_mem[16]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[17] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[17]),
        .Q(y_mem[17]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[18] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[18]),
        .Q(y_mem[18]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[19] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[19]),
        .Q(y_mem[19]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[1] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[1]),
        .Q(y_mem[1]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[20] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[20]),
        .Q(y_mem[20]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[21] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[21]),
        .Q(y_mem[21]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[22] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[22]),
        .Q(y_mem[22]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[23] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[23]),
        .Q(y_mem[23]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[24] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[24]),
        .Q(y_mem[24]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[25] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[25]),
        .Q(y_mem[25]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[26] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[26]),
        .Q(y_mem[26]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[27] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[27]),
        .Q(y_mem[27]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[28] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[28]),
        .Q(y_mem[28]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[29] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[29]),
        .Q(y_mem[29]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[2] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[2]),
        .Q(y_mem[2]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[30] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[30]),
        .Q(y_mem[30]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[31] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[31]),
        .Q(y_mem[31]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[3] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[3]),
        .Q(y_mem[3]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[4] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[4]),
        .Q(y_mem[4]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[5] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[5]),
        .Q(y_mem[5]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[6] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[6]),
        .Q(y_mem[6]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[7] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[7]),
        .Q(y_mem[7]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[8] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[8]),
        .Q(y_mem[8]),
        .R(\x_mem[31]_i_1_n_0 ));
  FDRE \y_mem_reg[9] 
       (.C(s00_axi_aclk),
        .CE(y_mem_0),
        .D(s00_y_data[9]),
        .Q(y_mem[9]),
        .R(\x_mem[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
