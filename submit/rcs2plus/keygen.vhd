----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:02 05/04/2023 
-- Design Name: 
-- Module Name:    keygen - Behavioral 
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

entity keygen is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           ROUND : in  STD_LOGIC_VECTOR (3 downto 0);
           Z1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : out  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : out  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : out  STD_LOGIC_VECTOR (15 downto 0));
end keygen;

architecture Behavioral of keygen is

signal KEY_CURRENT: std_logic_vector (95 downto 0);

begin


	process (ROUND)
	begin
		case ROUND is
			when "0000" => KEY_CURRENT <= KEY(127 downto 32);
			when "0001" => KEY_CURRENT <= KEY(31 downto 0) & KEY(102 downto 39);
			when "0010" => KEY_CURRENT <= KEY(38 downto 0) & KEY(127 downto 103) & KEY(77 downto 46);
			when "0011" => KEY_CURRENT <= KEY(45 downto 0) & KEY(127 downto 78);
			when "0100" => KEY_CURRENT <= KEY(52 downto 0) & KEY(127 downto 85);
			when "0101" => KEY_CURRENT <= KEY(84 downto 53) & KEY(27 downto 0) & KEY(127 downto 92);
			when "0110" => KEY_CURRENT <= KEY(91 downto 28) & KEY(2 downto 0) & KEY(127 downto 99);
			when "0111" => KEY_CURRENT <= KEY(98 downto 3);
			when "1000" => KEY_CURRENT <= KEY(105 downto 42) & x"00000000";
			when others => KEY_CURRENT <= x"000000000000000000000000";
		end case;
	end process;
	
	Z1 <= KEY_CURRENT(95 downto 80);
	Z2 <= KEY_CURRENT(79 downto 64);
	Z3 <= KEY_CURRENT(63 downto 48);
	Z4 <= KEY_CURRENT(47 downto 32);
	Z5 <= KEY_CURRENT(31 downto 16);
	Z6 <= KEY_CURRENT(15 downto 0);

end Behavioral;

