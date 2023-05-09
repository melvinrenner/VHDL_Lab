-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

	ENTITY tb_clockedround IS
	END tb_clockedround;

  ARCHITECTURE behavior OF tb_clockedround IS 

  -- Component Declaration
          COMPONENT clockedround
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
				Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0));
          END COMPONENT;
			 
			 
			 type data_vector_t is array (0 to 10) of std_logic_vector(15 downto 0);
	
			signal X1_data : data_vector_t := (
				  x"0000",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff"
			 );
			 
			 
			 signal X2_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa"
			 );
			 
			 signal X3_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555"
			 );
			 
			 
			 signal X4_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"2492",
				  x"2492",
				  x"2492",
				  x"2492",
				  x"2492",
				  x"2492",
				  x"2492"
			 );
			 
			 signal Z1_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"db6d",
				  x"db6d",
				  x"db6d",
				  x"db6d",
				  x"db6d",
				  x"db6d"
			 );
			 
			 signal Z2_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"1c71",
				  x"1c71",
				  x"1c71",
				  x"1c71",
				  x"1c71"
			 );
			 
			 signal Z3_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"cccc",
				  x"cccc",
				  x"cccc",
				  x"cccc"
			 );
			 
			 
			 signal Z4_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0002",
				  x"0002",
				  x"0002"
			 );
			 
			 signal Z5_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"eeee",
				  x"eeee"
			 );
			 
			 signal Z6_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"8888"
			 );
			 
			 
			 signal Y1_data : data_vector_t := (
				  x"0001",
				  x"0003",
				  x"5555",
				  x"aaae",
				  x"e390",
				  x"e390",
				  x"4921",
				  x"07bd",
				  x"95e2",
				  x"bc61",
				  x"2521"
			 );
			 
			 signal Y2_data : data_vector_t := (
				  x"0000",
				  x"0001",
				  x"5557",
				  x"fff9",
				  x"b6c7",
				  x"ffed",
				  x"555c",
				  x"6cb4",
				  x"feeb",
				  x"d768",
				  x"4e28"
			 );
			 
			 signal Y3_data : data_vector_t := (
				  x"0000",
				  x"0000",
				  x"fffc",
				  x"fffc",
				  x"2496",
				  x"2496",
				  x"2496",
				  x"2496",
				  x"b6d9",
				  x"b6d9",
				  x"2f99"
			 );
			 
			 signal Y4_data : data_vector_t := (
				  x"0001",
				  x"0001",
				  x"5557",
				  x"5557",
				  x"5553",
				  x"5553",
				  x"38e2",
				  x"38e2",
				  x"38e6",
				  x"38e6",
				  x"a1a6"
			 );
			 
			 type data_vector_trafo_t is array (0 to 8) of std_logic_vector(15 downto 0);
			 
			 signal X1_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff",
				  x"ffff"
			 );
			 
			 
			 signal X2_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa"
			 );
			 
			 signal X3_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"5555"
			 );
			 
			 
			 signal X4_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"2492",
				  x"2492",
				  x"2492",
				  x"2492",
				  x"2492"
			 );
			 
			 signal Z1_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"db6d",
				  x"db6d",
				  x"db6d",
				  x"db6d"
			 );
			 
			 signal Z2_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"1c71",
				  x"1c71",
				  x"1c71"
			 );
			 
			 signal Z3_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"cccc",
				  x"cccc"
			 );
			 
			 
			 signal Z4_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0000",
				  x"0002"
			 );
			 
			 
			 signal Y1_data_trafo : data_vector_trafo_t := (
				  x"0001",
				  x"0002",
				  x"0002",
				  x"0002",
				  x"0002",
				  x"4928",
				  x"4928",
				  x"4928",
				  x"4928"
			 );
			 
			 signal Y2_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"0000",
				  x"5555",
				  x"5555",
				  x"5555",
				  x"71c6",
				  x"71c6",
				  x"71c6"
			 );
			 
			 signal Y3_data_trafo : data_vector_trafo_t := (
				  x"0000",
				  x"0000",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"aaaa",
				  x"7776",
				  x"7776"
			 );
			 
			 signal Y4_data_trafo : data_vector_trafo_t := (
				  x"0001",
				  x"0001",
				  x"0001",
				  x"0001",
				  x"db6f",
				  x"db6f",
				  x"db6f",
				  x"db6f",
				  x"4924"
			 );
			 
			 
			 
			 
	 

			signal CLK_sig, INIT_sig, TRAFO_sig  : STD_LOGIC := '0';
			signal X1_sig, X2_sig, X3_sig, X4_sig, Z1_sig, Z2_sig, Z3_sig, Z4_sig, Z5_sig, Z6_sig : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
			
			signal RESULT_sig : STD_LOGIC;			
			signal Y1_sig, Y2_sig, Y3_sig, Y4_sig, Y1_TRAFO_sig, Y2_TRAFO_sig, Y3_TRAFO_sig, Y4_TRAFO_sig : STD_LOGIC_VECTOR(15 downto 0);
			
			constant CLK_period : time := 10 ns;
          

  BEGIN

  -- Component Instantiation
	uut: clockedround PORT MAP (
		CLK => CLK_sig,
		INIT => INIT_sig,
		TRAFO => TRAFO_sig,
		X1 => X1_sig,
		X2 => X2_sig,
		X3 => X3_sig,
		X4 => X4_sig,
		Z1 => Z1_sig,
		Z2 => Z2_sig,
		Z3 => Z3_sig,
		Z4 => Z4_sig,
		Z5 => Z5_sig,
		Z6 => Z6_sig,
		Y1 => Y1_sig,
		Y2 => Y2_sig,
		Y3 => Y3_sig,
		Y4 => Y4_sig,
		RESULT => RESULT_sig,
		Y1_TRAFO => Y1_TRAFO_sig,
		Y2_TRAFO => Y2_TRAFO_sig,
		Y3_TRAFO => Y3_TRAFO_sig,
		Y4_TRAFO => Y4_TRAFO_sig
		
	);


-- Clock process definitions
	CLK_process :process
	begin
		CLK_sig <= '0';
		wait for CLK_period/2;
		CLK_sig <= '1';
		wait for CLK_period/2;
	end process;
	
	
   -- Stimulus process
   stim_proc: process
   begin	
	
		report "begin test round";
		
		for i in Y1_data'range loop
				TRAFO_sig <= '0';
				INIT_sig <= '1';		
				X1_sig <= X1_data(i);
				X2_sig <= X2_data(i);
				X3_sig <= X3_data(i);
				X4_sig <= X4_data(i);
				Z1_sig <= Z1_data(i);
				Z2_sig <= Z2_data(i);
				Z3_sig <= Z3_data(i);
				Z4_sig <= Z4_data(i);
				Z5_sig <= Z5_data(i);
				Z6_sig <= Z6_data(i);
            wait for 15 ns;
				INIT_sig <= '0';
				wait for 100 ns;
            assert Y1_sig = Y1_data(i) and Y2_sig = Y2_data(i) and Y3_sig = Y3_data(i) and Y4_sig = Y4_data(i)  report "Erronous Output" severity note;


        end loop;
		  
			wait for 100 ns;
			
			report "begin test trafo";
		  
		  ---- test output trafo
		  for j in Y1_data_trafo'range loop	
				TRAFO_sig <= '1';
				INIT_sig <= '1';
				X1_sig <= X1_data_trafo(j);
				X2_sig <= X2_data_trafo(j);
				X3_sig <= X3_data_trafo(j);
				X4_sig <= X4_data_trafo(j);
				Z1_sig <= Z1_data_trafo(j);
				Z2_sig <= Z2_data_trafo(j);
				Z3_sig <= Z3_data_trafo(j);
				Z4_sig <= Z4_data_trafo(j);
            wait for 15 ns;
				INIT_sig <= '0';
				wait for 100 ns;
            assert Y1_TRAFO_sig = Y1_data_trafo(j) and Y2_TRAFO_sig = Y2_data_trafo(j) and Y3_TRAFO_sig = Y3_data_trafo(j) and Y4_TRAFO_sig = Y4_data_trafo(j)  report "Erronous Output" severity note;
        end loop;
        
		  
		  report "Simulation successful!" severity note;
        wait;
		
   end process;

  END;
