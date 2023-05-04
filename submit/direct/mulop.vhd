----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulop is
    Port ( I1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O1 : out  STD_LOGIC_VECTOR (15 downto 0));
end mulop;

architecture Behavioral of mulop is
signal a_signed : STD_LOGIC_VECTOR (16 downto 0);
signal b_signed : STD_LOGIC_VECTOR (16 downto 0);
signal mult_result : STD_LOGIC_VECTOR (33 downto 0);
signal res : STD_LOGIC_VECTOR (16 downto 0);
signal modular : STD_LOGIC_VECTOR (15 downto 0);
signal quotient : STD_LOGIC_VECTOR (16 downto 0);

begin
	check_zero: process(I1,I2)
		begin
			a_signed <= '0' & I1;
			b_signed <= '0' & I2;
			if (I1 = "0000000000000000") then
				a_signed <= "10000000000000000";
			end if;
			if (I2 = "0000000000000000") then
				b_signed <= "10000000000000000";
			end if;
		end process;
			mult_result <= std_logic_vector(unsigned(a_signed) * unsigned(b_signed));
			modular <= mult_result(15 downto 0);
			quotient <= mult_result(32 downto 16);
			
	finalout: process(modular,quotient)
		begin	
			if (modular >= quotient) then
				res <= std_logic_vector(unsigned('0' & modular)-unsigned(quotient));
			else
				res <= std_logic_vector(unsigned('0' & modular)-unsigned(quotient)+"10000000000000001");
			end if;
			
		end process;

	O1<= res(15 downto 0);


end Behavioral;

