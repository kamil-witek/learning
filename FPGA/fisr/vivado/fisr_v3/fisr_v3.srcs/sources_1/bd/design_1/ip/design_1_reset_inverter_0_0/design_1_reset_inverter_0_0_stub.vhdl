-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Aug 23 22:39:56 2022
-- Host        : DESKTOP-QU5D0NH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Kamil/Desktop/fisr/vivado/fisr_v3/fisr_v3.srcs/sources_1/bd/design_1/ip/design_1_reset_inverter_0_0/design_1_reset_inverter_0_0_stub.vhdl
-- Design      : design_1_reset_inverter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_reset_inverter_0_0 is
  Port ( 
    input : in STD_LOGIC;
    output : out STD_LOGIC
  );

end design_1_reset_inverter_0_0;

architecture stub of design_1_reset_inverter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input,output";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "reset_inverter,Vivado 2019.1";
begin
end;
