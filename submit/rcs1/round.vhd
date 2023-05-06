----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:02 05/02/2023 
-- Design Name: 
-- Module Name:    round - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity round is
    Port ( X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end round;

architecture Behavioral of round is

	COMPONENT mulop
	PORT(
		I1 : IN  std_logic_vector(15 downto 0);
		I2 : IN  std_logic_vector(15 downto 0);
		O1 : OUT  std_logic_vector(15 downto 0)
	  );
	END COMPONENT;

	COMPONENT xorop
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

	signal N1, N2, N3, N4, N5, N6, N7, N8, N9, N10 : std_logic_vector(15 downto 0);
begin

	mul_1: mulop PORT MAP (
		I1 => X1,
		I2 => Z1,
		O1 => N1
	);
	add_1: addop PORT MAP (
		I1 => X2,
		I2 => Z2,
		O1 => N2
	);
	add_2: addop PORT MAP (
		I1 => X3,
		I2 => Z3,
		O1 => N3
	);
	mul_2: mulop PORT MAP (
		I1 => X4,
		I2 => Z4,
		O1 => N4
	);
	xor_1: xorop PORT MAP (
		I1 => N1,
		I2 => N3,
		O1 => N5
	);
	xor_2: xorop PORT MAP (
		I1 => N2,
		I2 => N4,
		O1 => N6
	);
	mul_3: mulop PORT MAP (
		I1 => N5,
		I2 => Z5,
		O1 => N7
	);
	add_3: addop PORT MAP (
		I1 => N6,
		I2 => N7,
		O1 => N8
	);
	mul_4: mulop PORT MAP (
		I1 => N8,
		I2 => Z6,
		O1 => N9
	);
	add_4: addop PORT MAP (
		I1 => N7,
		I2 => N9,
		O1 => N10
	);
	xor_3: xorop PORT MAP (
		I1 => N1,
		I2 => N9,
		O1 => Y1
	);
	xor_4: xorop PORT MAP (
		I1 => N3,
		I2 => N9,
		O1 => Y2
	);
	xor_5: xorop PORT MAP (
		I1 => N2,
		I2 => N10,
		O1 => Y3
	);
	xor_6: xorop PORT MAP (
		I1 => N4,
		I2 => N10,
		O1 => Y4
	);
	
	


end Behavioral;

