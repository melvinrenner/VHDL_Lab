----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:22 05/07/2023 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( CLK : in  STD_LOGIC;
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
end datapath;

architecture Behavioral of datapath is

	COMPONENT xorop
    PORT(
         I1	 : in  STD_LOGIC_VECTOR(15 downto 0);
         I2 : in  STD_LOGIC_VECTOR(15 downto 0);
         O1 : out  STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT addop
    PORT(
         I1	 : in  STD_LOGIC_VECTOR(15 downto 0);
         I2 : in  STD_LOGIC_VECTOR(15 downto 0);
         O1 : out  STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT mulop
    PORT(
         I1	 : in  STD_LOGIC_VECTOR(15 downto 0);
         I2 : in  STD_LOGIC_VECTOR(15 downto 0);
         O1 : out  STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT reg16bit
    PORT(
         Clock : IN  STD_LOGIC;
         ENABLE : IN  STD_LOGIC;
         D : IN  STD_LOGIC_VECTOR(15 downto 0);
         Q : OUT  STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT mux4x1
    PORT(
         D0 : IN  STD_LOGIC_VECTOR(15 downto 0);
         D1 : IN  STD_LOGIC_VECTOR(15 downto 0);
         D2 : IN  STD_LOGIC_VECTOR(15 downto 0);
         D3 : IN  STD_LOGIC_VECTOR(15 downto 0);
         S : IN  STD_LOGIC_VECTOR(1 downto 0);
         O : OUT  STD_LOGIC_VECTOR(15 downto 0)
        );		  
	 END COMPONENT;
	 
	 
	 
		Signal mulop_O_sig, addop_O_sig, xor_1_O_sig : STD_LOGIC_VECTOR (15 downto 0);
		Signal mux1_O_sig, mux2_O_sig, mux3_O_sig, mux4_O_sig : STD_LOGIC_VECTOR (15 downto 0);		
		Signal reg1_sig, reg2_sig, reg3_sig, reg4_sig, reg5_sig, reg6_sig, reg7_sig, reg8_sig : STD_LOGIC_VECTOR (15 downto 0);

begin

	mux_1: mux4x1 PORT MAP (
		D0 => X1,
		D1 => X4,
		D2 => Z5,
		D3 => Z6,
		S => S,
		O => mux1_O_sig
	);
	
	mux_2: mux4x1 PORT MAP (
		 D0 => Z1,
		 D1 => Z4,
		 D2 => reg5_sig,
		 D3 => reg8_sig,
		 S => S,
		 O => mux2_O_sig
	);
	
	mux_3: mux4x1 PORT MAP (
		 D0 => X3,
		 D1 => X2,
		 D2 => reg6_sig,
		 D3 => reg7_sig,
		 S => S,
		 O => mux3_O_sig
	);
	
	mux_4: mux4x1 PORT MAP (
		 D0 => Z3,
		 D1 => Z2,
		 D2 => mulop_O_sig,
		 D3 => mulop_O_sig,
		 S => S_T,
		 O => mux4_O_sig
	);
	
	mul: mulop PORT MAP (
		I1 => mux1_O_sig,
		I2 => mux2_O_sig,
		O1 => mulop_O_sig
	);

	add: addop PORT MAP (
		I1 => mux3_O_sig,
		I2 => mux4_O_sig,
		O1 => addop_O_sig
	);
	
	xor_1: xorop PORT MAP (
		I1 => mulop_O_sig,
		I2 => addop_O_sig,
		O1 => xor_1_O_sig
	);

	xor_2: xorop PORT MAP (
		I1 => reg3_sig,
		I2 => addop_O_sig,
		O1 => Y3
	);
	
	xor_3: xorop PORT MAP (
		I1 => reg2_sig,
		I2 => mulop_O_sig,
		O1 => Y2
	);

	xor_4: xorop PORT MAP (
		I1 => reg4_sig,
		I2 => addop_O_sig,
		O1 => Y4
	);

	xor_5: xorop PORT MAP (
		I1 => reg1_sig,
		I2 => mulop_O_sig,
		O1 => Y1
	);
			
	reg_1: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN125,
		D => mulop_O_sig,
		Q => reg1_sig
	);


	reg_2: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN125,
		D => addop_O_sig,
		Q => reg2_sig
	);
	
	reg_3: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN346,
		D => addop_O_sig,
		Q => reg3_sig
	);


	reg_4: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN346,
		D => mulop_O_sig,
		Q => reg4_sig
	);
	
	reg_5: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN125,
		D => xor_1_O_sig,
		Q => reg5_sig
	);


	reg_6: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN346,
		D => xor_1_O_sig,
		Q => reg6_sig
	);
	
	reg_7: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN78,
		D => mulop_O_sig,
		Q => reg7_sig
	);


	reg_8: reg16bit PORT MAP (
		Clock => CLK,
		ENABLE => EN78,
		D => addop_O_sig,
		Q => reg8_sig
	);

	Y1_trafo <= reg1_sig;
	Y2_trafo <= reg2_sig;
	Y3_trafo <= reg3_sig;
	Y4_trafo <= reg4_sig;


end Behavioral;

