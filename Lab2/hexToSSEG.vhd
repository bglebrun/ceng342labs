----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:10 02/15/2018 
-- Design Name: 
-- Module Name:    hexToSSEG - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hexToSSEG is
    Port ( hex : in STD_LOGIC_VECTOR(3 downto 0);
			  dp : in  STD_LOGIC;
           sseg : out  STD_LOGIC_VECTOR(7 downto 0));
end hexToSSEG;

architecture Behavioral of hexToSSEG is

begin
	with hex select
		sseg(6 downto 0) <=
		"0000001" when "0000",          
		"1001111" when "0001",          
		"0010010" when "0010", 
      "0000110" when "0011",          
		"1001100" when "0100",          
		"0100100" when "0101",          
		"0100000" when "0110",          
		"0001111" when "0111",          
		"0000000" when "1000",          
		"0000100" when "1001",                   
		"0111000" when others; --f
	sseg(7) <= dp;
end Behavioral;

