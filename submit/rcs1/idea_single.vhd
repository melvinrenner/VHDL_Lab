----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_single - Structural 
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

entity idea_single is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_single;

architecture Structural of idea_single is

	component round is
		Port ( 
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
			Y4 : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component round;
	
	component trafo is
		Port ( 
			X1 : in  STD_LOGIC_VECTOR (15 downto 0);
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
			Y4 : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component trafo;
	
	
	component keygen is
		Port ( 
			KEY : IN  STD_LOGIC_VECTOR(127 downto 0);
			ROUND : IN  STD_LOGIC_VECTOR(3 downto 0);
			
			Z1 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			Z2 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			Z3 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			Z4 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			Z5 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			Z6 : OUT  STD_LOGIC_VECTOR(15 downto 0)
		);
	end component keygen;
	
	component reg16bit is
		Port ( 
			Clock : in  STD_LOGIC;
			ENABLE : in  STD_LOGIC;
			D : in  STD_LOGIC_VECTOR (15 downto 0);
			Q : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component reg16bit;
	
	component mux2x1 is
		Port ( 
			S : IN  STD_LOGIC;
         D0 : IN  STD_LOGIC_VECTOR(15 downto 0);
         D1 : IN  STD_LOGIC_VECTOR(15 downto 0);
         O : OUT  STD_LOGIC_VECTOR(15 downto 0)
		);
	end component mux2x1;
	
	component control is
		Port ( 
			CLK : in  STD_LOGIC;
			START : in  STD_LOGIC;
			ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
			READY : out  STD_LOGIC;
			EN : out  STD_LOGIC;
			S : out  STD_LOGIC
		);
	end component control;
	
	signal round_O1_sig, round_O2_sig, round_O3_sig, round_O4_sig : STD_LOGIC_VECTOR (15 downto 0);
	signal reg_O1_sig, reg_O2_sig, reg_O3_sig, reg_O4_sig : STD_LOGIC_VECTOR (15 downto 0);
	signal mux_O1_sig , mux_O2_sig, mux_O3_sig, mux_O4_sig : STD_LOGIC_VECTOR (15 downto 0);
	
	signal Z1_sig, Z2_sig, Z3_sig, Z4_sig, Z5_sig, Z6_sig : STD_LOGIC_VECTOR (15 downto 0);
	signal ROUND_sig : STD_LOGIC_VECTOR (3 downto 0);
	signal S_sig : STD_LOGIC;
	signal EN_sig : STD_LOGIC;

begin

	control_1 : control port map (
		CLK => CLOCK, 
		START => START, 
		ROUND => ROUND_sig, 
		READY => READY, 
		EN => EN_sig, 
		S => S_sig
	);
	
	 keygen_1 : keygen port map (
		ROUND => ROUND_sig,
		Key => KEY,
		Z1 => Z1_sig,
		Z2 => Z2_sig ,
		Z3 => Z3_sig ,
		Z4 => Z4_sig ,
		Z5 => Z5_sig ,
		Z6 => Z6_sig 
		);
		
	 mux_1 : mux2x1 port map (
		 D0 => X_1,
		 D1 => reg_O1_sig,
		 S => S_sig,
		 O => mux_O1_sig
	 );
	 
	 mux_2 : mux2x1 port map (
		 D0 => X_2,
		 D1 => reg_O2_sig,
		 S => S_sig,
		 O => mux_O2_sig
	 );
	 
	 mux_3 : mux2x1 port map (
		 D0 => X_3,
		 D1 => reg_O3_sig,
		 S => S_sig,
		 O => mux_O3_sig
	 );
	 
	 mux_4 : mux2x1 port map (
		 D0 => X_4,
		 D1 => reg_O4_sig,
		 S => S_sig,
		 O => mux_O4_sig
	 );
	 
	round_1 : round port map(
		X1 => mux_O1_sig,
		X2 => mux_O2_sig,
		X3 => mux_O3_sig,
		X4 => mux_O4_sig,
		Z1 => Z1_sig,
		Z2 => Z2_sig,
		Z3 => Z3_sig,
		Z4 => Z4_sig,
		Z5 => Z5_sig,
		Z6 => Z6_sig,
		Y1 => round_O1_sig,
		Y2 => round_O2_sig,
		Y3 => round_O3_sig,
		Y4 => round_O4_sig
	);
	
	reg_1 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => EN_sig, 
		D => round_O1_sig, 
		Q => reg_O1_sig
	);
		
	reg_2 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => EN_sig, 
		D => round_O2_sig, 
		Q => reg_O2_sig
	);
		
	reg_3 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => EN_sig, 
		D => round_O3_sig, 
		Q => reg_O3_sig
	);
	
	reg_4 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => EN_sig, 
		D => round_O4_sig, 
		Q => reg_O4_sig
	);
		
		
	trafo_1 : trafo port map(
		X1 => reg_O1_sig,
		X2 => reg_O2_sig,
		X3 => reg_O3_sig,
		X4 => reg_O4_sig,
		Z1 => Z1_sig,
		Z2 => Z2_sig,
		Z3 => Z3_sig,
		Z4 => Z4_sig,
		Y1 => Y_1,
		Y2 => Y_2,
		Y3 => Y_3,
		Y4 => Y_4
	);


end Structural;

