----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/25/2022 02:01:03 PM
-- Design Name: 
-- Module Name: fisr_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fisr_testbench is
end fisr_testbench;

architecture Behavioral of fisr_testbench is

    component design_1_wrapper is
      port (
        gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
        gpio_rtl_tri_o   : out STD_LOGIC_VECTOR ( 31 downto 0 );
        reset_rtl    : in STD_LOGIC;
        sys_clock    : in STD_LOGIC;
        uart_rtl_rxd : in STD_LOGIC;
        uart_rtl_txd : out STD_LOGIC
      );
    end component;

    signal gpio_rtl_0, gpio_rtl             : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal reset, clock, uart_rxd, uart_txd : STD_LOGIC;

begin


    MB_SYSTEM : design_1_wrapper port map(
        gpio_rtl_0_tri_o => gpio_rtl_0,
        gpio_rtl_tri_o   => gpio_rtl,
        reset_rtl        => reset,
        sys_clock        => clock,
        uart_rtl_rxd     => uart_rxd,
        uart_rtl_txd     => uart_txd
    );



    clock_generator: process
    begin
        clock <= '0';
        wait for 5 ns;
        clock <= '1';
        wait for 5 ns;
    end process clock_generator;


    reset_generator: process
    begin
        reset <= '0';
        wait for 50 ns;
        reset <= '1';
        wait;
    end process reset_generator;


end Behavioral;
