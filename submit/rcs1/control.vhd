----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
           READY : out  STD_LOGIC;
           EN : out  STD_LOGIC;
           S : out  STD_LOGIC);
end control;

architecture Behavioral of control is
	signal state: std_logic_vector(3 downto 0);
begin
process (CLK, START)

		type state_type is (s_ready, s_start, s_working);
		
		variable state_var : state_type;

	begin
	
		if (rising_edge(CLK)) then 
				case state is
					when "0000" => state <= "0001";
					when "0001" => state <= "0010";
					when "0010" => state <= "0011";
					when "0011" => state <= "0100";
					when "0100" => state <= "0101";
					when "0101" => state <= "0110";
					when "0110" => state <= "0111";
					when "0111" => state <= "1000";
					when "1000" =>
						if (START = '1') then			
							state_var := s_start;
						else
							state_var := s_ready;
						end if;
					when others =>
						state <= "1000";
						state_var := s_ready;
						
				end case;
				
				case state_var is
					when s_ready =>
						ROUND <= state;
						READY <= '1';
						EN <='0';
					when s_start => 
						ROUND <= "0000";
						READY <= '0';
						EN <= '1';
						S <= '0';
						state <= "0001";
						state_var := s_working;
					when s_working => 
						ROUND <= state;
						S <= '1';
				end case;
				
			end if;
		
	end process;

end Behavioral;

