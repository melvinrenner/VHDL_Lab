--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:04:39 05/04/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs1/tb_keygen.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keygen
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
 
ENTITY tb_keygen IS
END tb_keygen;
 
ARCHITECTURE behavior OF tb_keygen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygen
    PORT(
		KEY : IN  std_logic_vector(127 downto 0);
		ROUND : IN  std_logic_vector(3 downto 0);
		Z1 : OUT  std_logic_vector(15 downto 0);
		Z2 : OUT  std_logic_vector(15 downto 0);
		Z3 : OUT  std_logic_vector(15 downto 0);
		Z4 : OUT  std_logic_vector(15 downto 0);
		Z5 : OUT  std_logic_vector(15 downto 0);
		Z6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	signal KEY_sig : std_logic_vector(127 downto 0) := (others => '0');
	signal ROUND_sig : std_logic_vector(3 downto 0) := (others => '0');
    
	 signal Z1_sig, Z2_sig, Z3_sig, Z4_sig, Z5_sig, Z6_sig : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygen PORT MAP (
			KEY => KEY_sig,
			ROUND => ROUND_sig,
			Z1 => Z1_sig,
			Z2 => Z2_sig,
			Z3 => Z3_sig,
			Z4 => Z4_sig,
			Z5 => Z5_sig,
			Z6 => Z6_sig
        );

   -- Clock process definitions
   I_process :process
   begin
		ROUND_sig <= "0000";
		KEY_sig <= x"00010002000300040005000600070008";
      wait for 100 ns;	
		
		ROUND_sig <= "0001";
      wait for 100 ns;	
		
		ROUND_sig <= "0010";
      wait for 100 ns;	
		
		ROUND_sig <= "0011";
      wait for 100 ns;	

		ROUND_sig <= "0100";
      wait for 100 ns;			
		
		ROUND_sig <= "0101";
      wait for 100 ns;
		
		ROUND_sig <= "0110";
      wait for 100 ns;
		
		ROUND_sig <= "0111";
      wait for 100 ns;

		ROUND_sig <= "1000";
      wait for 100 ns;
		
		report "Simulation successful!" severity note;
   end process;
 

END;
