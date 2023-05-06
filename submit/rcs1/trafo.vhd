----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:37 05/03/2023 
-- Design Name: 
-- Module Name:    trafo - Behavioral 
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

entity trafo is
    Port ( 	X1 : in  STD_LOGIC_VECTOR (15 downto 0);
				X2 : in  STD_LOGIC_VECTOR (15 downto 0);
				X3 : in  STD_LOGIC_VECTOR (15 downto 0);
				X4 : in  STD_LOGIC_VECTOR (15 downto 0);
				Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
				Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
				Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
				Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
				Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
				Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
				Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
				Y4 : out  STD_LOGIC_VECTOR (15 downto 0));
	 
end trafo;

architecture Behavioral of trafo is

COMPONENT mulop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

COMPONENT addop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

begin
	mul_1: mulop PORT MAP (
		I1 => X1,
		I2 => Z1,
		O1 => Y1
	);

	add_1: addop PORT MAP (
		I1 => X3,
		I2 => Z2,
		O1 => Y2
	);
	add_2: addop PORT MAP (
		I1 => X2,
		I2 => Z3,
		O1 => Y3
	);
	mul_2: mulop PORT MAP (
		I1 => X4,
		I2 => Z4,
		O1 => Y4
	);


end Behavioral;

