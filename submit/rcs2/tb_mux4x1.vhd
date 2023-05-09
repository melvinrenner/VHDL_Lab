--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:13:08 05/07/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs2/tb_mux4x1.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4x1
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
 
ENTITY tb_mux4x1 IS
END tb_mux4x1;
 
ARCHITECTURE behavior OF tb_mux4x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
    

   --Inputs
   signal D0_sig, D1_sig, D2_sig, D3_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal S_sig : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O_sig : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4x1 PORT MAP (
          D0 => D0_sig,
          D1 => D1_sig,
          D2 => D2_sig,
          D3 => D3_sig,
          S => S_sig,
          O => O_sig
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

			D0_sig<=x"1111";
			D1_sig<=x"2222";
			D2_sig<=x"3333";
			D3_sig<=x"4444";
			wait for period/2;
			
			S_sig<=b"00";
			wait for period/2;
			assert O_sig = x"1111" report "erronous output" severity error;
			
			S_sig<=b"01";
			wait for period/2;
			assert O_sig = x"2222" report "erronous output" severity error;
			
			S_sig<=b"10";
			wait for period/2;
			assert O_sig = x"3333" report "erronous output" severity error;
			
			S_sig<=b"11";
			wait for period/2;
			assert O_sig = x"4444" report "erronous output" severity error;
			
			D3_sig<=x"5555";
			wait for period/2;			
			assert O_sig = x"5555" report "erronous output" severity error;
			
			report "Simulation successful!" severity note;

      wait;
   end process;

END;
