----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:18 04/30/2023 
-- Design Name: 
-- Module Name:    addop - Behavioral 
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity addop is
    Port ( I1 : in  std_logic_vector(15 downto 0);
           I2 : in  std_logic_vector(15 downto 0);
           O1 : out  std_logic_vector(15 downto 0));
end addop;

architecture Behavioral of addop is

begin

	ADDOP_PROC : process(I1, I2)
	begin
		O1 <= std_logic_vector(unsigned(I1) + unsigned(I2));
	end process;


end Behavioral;

