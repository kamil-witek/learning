-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Aug 23 22:39:56 2022
-- Host        : DESKTOP-QU5D0NH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Kamil/Desktop/fisr/vivado/fisr_v3/fisr_v3.srcs/sources_1/bd/design_1/ip/design_1_reset_inverter_0_0/design_1_reset_inverter_0_0_sim_netlist.vhdl
-- Design      : design_1_reset_inverter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reset_inverter_0_0 is
  port (
    input : in STD_LOGIC;
    output : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_reset_inverter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_reset_inverter_0_0 : entity is "design_1_reset_inverter_0_0,reset_inverter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_reset_inverter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_reset_inverter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_reset_inverter_0_0 : entity is "reset_inverter,Vivado 2019.1";
end design_1_reset_inverter_0_0;

architecture STRUCTURE of design_1_reset_inverter_0_0 is
begin
output_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => input,
      O => output
    );
end STRUCTURE;
