----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:47 04/19/2016 
-- Design Name: 
-- Module Name:    clockedround - Structural 
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

entity clockedround is
    Port ( CLK : in  STD_LOGIC;
           INIT : in  STD_LOGIC;
           TRAFO : in STD_LOGIC;
           X1 : in  STD_LOGIC_VECTOR (15 downto 0);
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
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
           RESULT : out STD_LOGIC;
           Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0));
end clockedround;

architecture Structural of clockedround is

	component control Port (
		CLK : in  STD_LOGIC;
		INIT : in  STD_LOGIC;
		TRAFO : in STD_LOGIC;
		EN125 : out  STD_LOGIC;
		EN346 : out  STD_LOGIC;
		EN78 : out  STD_LOGIC;
		RESULT : out  STD_LOGIC;
		S : out  STD_LOGIC_VECTOR(1 downto 0);
		S_T: out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	
	component datapath Port ( 
		CLK : in  STD_LOGIC;
		EN125 : in  STD_LOGIC;
		EN346 : in  STD_LOGIC;
		EN78 : in  STD_LOGIC;
		S : in  STD_LOGIC_VECTOR (1 downto 0);
		S_T : in  STD_LOGIC_VECTOR (1 downto 0);
		X1 : in  STD_LOGIC_VECTOR (15 downto 0);
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
		Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
		Y1_trafo : out  STD_LOGIC_VECTOR (15 downto 0);
		Y2_trafo : out  STD_LOGIC_VECTOR (15 downto 0);
		Y3_trafo : out  STD_LOGIC_VECTOR (15 downto 0);
		Y4_trafo : out  STD_LOGIC_VECTOR (15 downto 0)
	);
	end component;	
	
	Signal EN125_sig, EN346_sig, EN78_sig : STD_LOGIC;
	Signal S_sig, S_T_sig : STD_LOGIC_VECTOR (1 downto 0);

begin

	control_1: control PORT MAP (
		CLK => CLK, 
		INIT => INIT, 
		TRAFO => TRAFO, 
		EN125 => EN125_sig, 
		EN346 => EN346_sig, 
		EN78 => EN78_sig,
		RESULT => RESULT, 
		S => S_sig, 
		S_T => S_T_sig
	);

	datapath_1: datapath PORT MAP (
		CLK => CLK, 
		EN125 => EN125_sig, 
		EN346 => EN346_sig, 
		EN78 => EN78_sig, 
		S => S_sig, 
		S_T => S_T_sig,
		X1 => X1, 
		X2 => X2, 
		X3 => X3, 
		X4 => X4, 
		Z1 => Z1, 
		Z2 => Z2, 
		Z3 => Z3, 
		Z4 => Z4, 
		Z5 => Z5, 
		Z6 => Z6,
		Y1 => Y1, 
		Y2 => Y2, 
		Y3 => Y3, 
		Y4 => Y4,
		Y1_trafo => Y1_TRAFO, 
		Y2_trafo => Y2_TRAFO, 
		Y3_trafo => Y3_TRAFO, 
		Y4_trafo => Y4_TRAFO
	);

end Structural;

