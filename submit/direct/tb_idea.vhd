--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:21 05/03/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/direct/tb_idea.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_idea IS
END tb_idea;
 
ARCHITECTURE behavior OF tb_idea IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea
    PORT(
         KEY : IN  std_logic_vector(127 downto 0);
         X_1 : IN  std_logic_vector(15 downto 0);
         X_2 : IN  std_logic_vector(15 downto 0);
         X_3 : IN  std_logic_vector(15 downto 0);
         X_4 : IN  std_logic_vector(15 downto 0);
         Y_1 : OUT  std_logic_vector(15 downto 0);
         Y_2 : OUT  std_logic_vector(15 downto 0);
         Y_3 : OUT  std_logic_vector(15 downto 0);
         Y_4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 type data_vector_t is array (0 to 2) of std_logic_vector(15 downto 0);
	 type key_vector_t is array (0 to 2) of std_logic_vector(127 downto 0);
	 		
	 signal X_1_data : data_vector_t := (
        x"1111",
        x"0000",
        x"1212"
    );
	 
	 signal X_2_data : data_vector_t := (
        x"2222",
        x"0000",
        x"1235"
    );
	 
	 signal X_3_data : data_vector_t := (
        x"4444",
        x"0000",
        x"E467"
    );
	 
	 signal X_4_data : data_vector_t := (
        x"8888",
        x"0000",
        x"0114"
    );
	 
	 signal KEY_data : key_vector_t := (
        x"00010002000300040005000600070008",
        x"00000000000000000000000000000000",
		  x"00010002000300040005000600070008"
    );


	 signal Y_1_data : data_vector_t := (
        x"8aa9",
        x"0001",
        x"9CF4"
    );
	 
	 signal Y_2_data : data_vector_t := (
        x"0fef",
        x"0001",
        x"165A"
    );
	 
	 signal Y_3_data : data_vector_t := (
        x"c0c9",
        x"0000",
        x"6B77"
    );
	 
	 signal Y_4_data : data_vector_t := (
        x"56f6",
        x"0000",
        x"B8E5"
    );
	 
	 

   signal KEY_sig : std_logic_vector(127 downto 0) := (others => '0');
   signal X_1_sig, X_2_sig, X_3_sig, X_4_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal Y_1_sig, Y_2_sig, Y_3_sig, Y_4_sig : std_logic_vector(15 downto 0);
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: idea PORT MAP (
          KEY => KEY_sig,
          X_1 => X_1_sig,
          X_2 => X_2_sig,
          X_3 => X_3_sig,
          X_4 => X_4_sig,
          Y_1 => Y_1_sig,
          Y_2 => Y_2_sig,
          Y_3 => Y_3_sig,
          Y_4 => Y_4_sig
        );

   -- Clock process definitions
   idea_process :process
   begin            
		for i in Y_1_data'range loop
				KEY_sig <= KEY_data(i);	
				X_1_sig <= X_1_data(i);
				X_2_sig <= X_2_data(i);
				X_3_sig <= X_3_data(i);
				X_4_sig <= X_4_data(i);
            wait for 5 ns;
            assert Y_1_sig = Y_1_data(i) and Y_2_sig = Y_2_data(i) and Y_3_sig = Y_3_data(i) and Y_4_sig = Y_4_data(i)  report "Erronous Output" severity note;
            wait for period/2;
        end loop;
        report "Simulation successful!" severity note;
        wait;
   end process;

END;
