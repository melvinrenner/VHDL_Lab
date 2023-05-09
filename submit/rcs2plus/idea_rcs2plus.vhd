----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_rcs2 - Structural 
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

entity idea_rcs2plus is
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
end idea_rcs2plus;

architecture Structural of idea_rcs2plus is

	component roundcounter is
		Port ( 
			CLK : in  STD_LOGIC;
			START : in  STD_LOGIC;
			RESULT : in  STD_LOGIC;
			READY : out  STD_LOGIC;
			S_i : out  STD_LOGIC;
			INIT : out  STD_LOGIC;
			TRAFO : out  STD_LOGIC;
			ROUND : out  STD_LOGIC_VECTOR (3 downto 0)
		);
	end component roundcounter;
	
	
	component clockedround is
		Port ( 
			CLK : in  STD_LOGIC;
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
			Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component clockedround;


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
	
	
	signal mux_O1_sig , mux_O2_sig, mux_O3_sig, mux_O4_sig : STD_LOGIC_VECTOR (15 downto 0);
	
	Signal ROUND_sig : STD_LOGIC_VECTOR (3 downto 0);
	Signal S_i_sig, TRAFO_sig, INIT_sig, RESULT_sig : STD_LOGIC;
	
	signal Z1_sig, Z2_sig, Z3_sig, Z4_sig, Z5_sig, Z6_sig : STD_LOGIC_VECTOR (15 downto 0);
	
	signal reg_I1_sig, reg_I2_sig, reg_I3_sig, reg_I4_sig : STD_LOGIC_VECTOR (15 downto 0);
	signal reg_O1_sig, reg_O2_sig, reg_O3_sig, reg_O4_sig : STD_LOGIC_VECTOR (15 downto 0);
	
begin

	 mux_1 : mux2x1 port map (
		 D0 => reg_O1_sig,
		 D1 => X_1,
		 S => S_i_sig,
		 O => mux_O1_sig
	 );
	 
	 mux_2 : mux2x1 port map (
		 D0 => reg_O2_sig,
		 D1 => X_2,
		 S => S_i_sig,
		 O => mux_O2_sig
	 );
	 
	 mux_3 : mux2x1 port map (
		 D0 => reg_O3_sig,
		 D1 => X_3,
		 S => S_i_sig,
		 O => mux_O3_sig
	 );
	 
	 mux_4 : mux2x1 port map (
		 D0 => reg_O4_sig,
		 D1 => X_4,
		 S => S_i_sig,
		 O => mux_O4_sig
	 );
	 
	 
	 reg_1 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => RESULT_sig, 
		D => reg_I1_sig, 
		Q => reg_O1_sig
	);
		
	reg_2 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => RESULT_sig, 
		D => reg_I2_sig, 
		Q => reg_O2_sig
	);
		
	reg_3 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => RESULT_sig, 
		D => reg_I3_sig, 
		Q => reg_O3_sig
	);
	
	reg_4 : reg16bit port map (
		Clock => CLOCK, 
		ENABLE => RESULT_sig, 
		D => reg_I4_sig, 
		Q => reg_O4_sig
	);
	
	
	keygen_1: keygen port map (
		ROUND => ROUND_sig,
		KEY => KEY,
		Z1 => Z1_sig,
		Z2 => Z2_sig,
		Z3 => Z3_sig,
		Z4 => Z4_sig,
		Z5 => Z5_sig,
		Z6 => Z6_sig
	);
	
	
	clockedround_1: clockedround port map (
		CLK => CLOCK,
		TRAFO => TRAFO_sig, 
		INIT => INIT_sig, 
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
		Y1 => reg_I1_sig, 
		Y2 => reg_I2_sig, 
		Y3 => reg_I3_sig, 
		Y4 => reg_I4_sig,
		RESULT => RESULT_sig,
		Y1_TRAFO => Y_1,
		Y2_TRAFO => Y_2,
		Y3_TRAFO => Y_3,
		Y4_TRAFO => Y_4
	);

	roundcounter_1: roundcounter port map (
		CLK => CLOCK, 
		START => START, 
		RESULT => RESULT_sig,
		READY => READY,
		S_i => S_i_sig, 
		INIT => INIT_sig, 
		TRAFO => TRAFO_sig, 
		ROUND => ROUND_sig
	);

end Structural;

