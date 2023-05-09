----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    roundcounter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roundcounter is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           RESULT : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           S_i : out  STD_LOGIC;
           INIT : out  STD_LOGIC;
           TRAFO : out  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0));
end roundcounter;

architecture Behavioral of roundcounter is

type STATE_TYPE is (sleep, setup, calc);
signal state_current : STATE_TYPE:= sleep;
signal round_counter : std_logic_vector(3 downto 0) :="1000";

begin

	state_proc: process (CLK)
	begin
	if rising_edge(CLK) then
	
			
	
			--1st state machine
			case state_current is
				when sleep =>
					INIT <= '0';
					READY <= '1';
					if START ='1' then
						state_current <= setup;
					else
						round_counter <= "1000";
					end if;
					
				when setup =>
					INIT <= '1';
					READY <= '0';
					state_current <= calc;
					
				when calc =>
					INIT <='0';
					if RESULT ='1' then
						if round_counter ="1000" then
							state_current <= sleep;
						else
							state_current <= setup;
						end if;
					end if;
					
				when others =>
					state_current <= sleep;

			end case;
			
			-- 2nd state machine
			if(round_counter /= "1000") then
				if(RESULT = '1') then
					round_counter <= round_counter + 1;
				end if;
			elsif(round_counter = "1000") then
				if(START = '1') then
					round_counter <= "0000";
				end if;
			end if;
			
			
			if (round_counter = "0000") then
				S_i <= '1';
			else
				S_i <= '0';
			end if;
			
			ROUND <= round_counter;
			TRAFO <= round_counter(3);

					
			end if;
	
	end process;


end Behavioral;

