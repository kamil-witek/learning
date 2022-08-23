-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Aug 23 22:40:17 2022
-- Host        : DESKTOP-QU5D0NH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Kamil/Desktop/fisr/vivado/fisr_v3/fisr_v3.srcs/sources_1/bd/design_1/ip/design_1_fisr_0_0/design_1_fisr_0_0_stub.vhdl
-- Design      : design_1_fisr_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fisr_0_0 is
  Port ( 
    y_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_fisr_0_0;

architecture stub of design_1_fisr_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "y_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,x[31:0],y[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fisr,Vivado 2019.1";
begin
end;
