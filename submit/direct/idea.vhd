----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea - Structural 
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

entity idea is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end idea;

architecture Structural of idea is

	COMPONENT round
    PORT(
			X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Z5 : IN  std_logic_vector(15 downto 0);
         Z6 : IN  std_logic_vector(15 downto 0);
			Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 
	 
	 COMPONENT trafo
    PORT(
			X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
			Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
 
type key_seq is array(51 downto 0) of std_logic_vector(15 downto 0);
signal key_full : key_seq;

signal Y1_1, Y1_2, Y1_3, Y1_4, Y2_1, Y2_2, Y2_3, Y2_4, Y3_1, Y3_2, Y3_3, Y3_4, Y4_1, Y4_2, Y4_3, Y4_4, Y5_1, Y5_2, Y5_3, Y5_4, Y6_1, Y6_2, Y6_3, Y6_4, Y7_1, Y7_2, Y7_3, Y7_4, Y8_1, Y8_2, Y8_3, Y8_4: std_logic_vector(15 downto 0);


begin	

	keygen : process(KEY)

	variable key_in : std_logic_vector(127 downto 0);
	variable pos: integer range 0 to 51;


	begin
	key_in := KEY;
	pos := 0;
		for i in 0 to 5 loop
			for j in 0 to 7 loop
				key_full(pos) <= key_in(127-(j*16) downto 127+1-((j+1)*16));
				pos := pos + 1;
			end loop;
			key_in := key_in(102 downto 0) & key_in(127 downto 103);
		end loop;
		
		for i in 0 to 3 loop
			key_full(pos) <= key_in(127-(i*16) downto 127+1-((i+1)*16));
			pos := pos + 1;
		end loop;
	end process;
	


		round1: round PORT MAP (
          X1 => X_1,
			 X2 => X_2,
			 X3 => X_3,
			 X4 => X_4,
			 Y1 => Y1_1,
			 Y2 => Y1_2,
			 Y3 => Y1_3,
			 Y4 => Y1_4,
			 Z1 => key_full(0),
			 Z2 => key_full(1),
			 Z3 => key_full(2),
			 Z4 => key_full(3),
			 Z5 => key_full(4),
			 Z6 => key_full(5)			 
        );
		  
		  round2: round PORT MAP (
          X1 => Y1_1,
			 X2 => Y1_2,
			 X3 => Y1_3,
			 X4 => Y1_4,
			 Y1 => Y2_1,
			 Y2 => Y2_2,
			 Y3 => Y2_3,
			 Y4 => Y2_4,
			 Z1 => key_full(6),
			 Z2 => key_full(7),
			 Z3 => key_full(8),
			 Z4 => key_full(9),
			 Z5 => key_full(10),
			 Z6 => key_full(11)
        );
		  
		  round3: round PORT MAP (
          X1 => Y2_1,
			 X2 => Y2_2,
			 X3 => Y2_3,
			 X4 => Y2_4,
			 Y1 => Y3_1,
			 Y2 => Y3_2,
			 Y3 => Y3_3,
			 Y4 => Y3_4,
			 Z1 => key_full(12),
			 Z2 => key_full(13),
			 Z3 => key_full(14),
			 Z4 => key_full(15),
			 Z5 => key_full(16),
			 Z6 => key_full(17)			 
        );
		  
		  
		  round4: round PORT MAP (
          X1 => Y3_1,
			 X2 => Y3_2,
			 X3 => Y3_3,
			 X4 => Y3_4,
			 Y1 => Y4_1,
			 Y2 => Y4_2,
			 Y3 => Y4_3,
			 Y4 => Y4_4,
			 Z1 => key_full(18),
			 Z2 => key_full(19),
			 Z3 => key_full(20),
			 Z4 => key_full(21),
			 Z5 => key_full(22),
			 Z6 => key_full(23)
        );
		  
		  
		  round5: round PORT MAP (
          X1 => Y4_1,
			 X2 => Y4_2,
			 X3 => Y4_3,
			 X4 => Y4_4,
			 Y1 => Y5_1,
			 Y2 => Y5_2,
			 Y3 => Y5_3,
			 Y4 => Y5_4,
			 Z1 => key_full(24),
			 Z2 => key_full(25),
			 Z3 => key_full(26),
			 Z4 => key_full(27),
			 Z5 => key_full(28),
			 Z6 => key_full(29)
        );
		  
		  
		  round6: round PORT MAP (
          X1 => Y5_1,
			 X2 => Y5_2,
			 X3 => Y5_3,
			 X4 => Y5_4,
			 Y1 => Y6_1,
			 Y2 => Y6_2,
			 Y3 => Y6_3,
			 Y4 => Y6_4,
			 Z1 => key_full(30),
			 Z2 => key_full(31),
			 Z3 => key_full(32),
			 Z4 => key_full(33),
			 Z5 => key_full(34),
			 Z6 => key_full(35)
        );
		  
		  round7: round PORT MAP (
          X1 => Y6_1,
			 X2 => Y6_2,
			 X3 => Y6_3,
			 X4 => Y6_4,
			 Y1 => Y7_1,
			 Y2 => Y7_2,
			 Y3 => Y7_3,
			 Y4 => Y7_4,
			 Z1 => key_full(36),
			 Z2 => key_full(37),
			 Z3 => key_full(38),
			 Z4 => key_full(39),
			 Z5 => key_full(40),
			 Z6 => key_full(41)
        );
		  
		  
		  round8: round PORT MAP (
          X1 => Y7_1,
			 X2 => Y7_2,
			 X3 => Y7_3,
			 X4 => Y7_4,
			 Y1 => Y8_1,
			 Y2 => Y8_2,
			 Y3 => Y8_3,
			 Y4 => Y8_4,
			 Z1 => key_full(42),
			 Z2 => key_full(43),
			 Z3 => key_full(44),
			 Z4 => key_full(45),
			 Z5 => key_full(46),
			 Z6 => key_full(47)
        );
		  
		  
		  round9: trafo PORT MAP (
          X1 => Y8_1,
			 X2 => Y8_2,
			 X3 => Y8_3,
			 X4 => Y8_4,
			 Y1 => Y_1,
			 Y2 => Y_2,
			 Y3 => Y_3,
			 Y4 => Y_4,
			 Z1 => key_full(48),
			 Z2 => key_full(49),
			 Z3 => key_full(50),
			 Z4 => key_full(51)
        );


end Structural;

