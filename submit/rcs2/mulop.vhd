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
begin
	MODULO_MUL_PROC : process (I1, I2)
        variable I1_var,  I2_var : std_logic_vector (16 downto 0);
        variable product_var : std_logic_vector (33 downto 0);
        variable modulo_var : std_logic_vector (16 downto 0);
        variable quotient_var : std_logic_vector (16 downto 0);
        variable y_var : std_logic_vector (31 downto 0) := (others => '0');
    begin
	 
	 if I1 = std_logic_vector(to_unsigned(0, I1'length)) then
            I1_var := '1' & I1;
        else
            I1_var := '0' & I1;
        end if;

        if I2 = std_logic_vector(to_unsigned(0, I2 'length)) then
            I2_var := '1' & I2 ;
        else
            I2_var := '0' & I2 ;
        end if;
		  
		product_var := std_logic_vector(unsigned(I1_var) * unsigned(I2_var));
        modulo_var := ('0' & product_var(15 downto 0));
        quotient_var := product_var(32 downto 16);

        y_var := std_logic_vector(to_unsigned(0, I1'left) & (unsigned(modulo_var) - unsigned(quotient_var)));
        if modulo_var < quotient_var then
            y_var := std_logic_vector(unsigned(y_var) + to_unsigned(65537, y_var'length));
        end if;
        O1 <= y_var(15 downto 0);
			
		end process;


end Behavioral;
