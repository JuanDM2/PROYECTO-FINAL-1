library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory_test is
    Port (
		  data_in 		: in std_logic_vector(7 downto 0);
        reset 			: in std_logic;
		  clock 			: in std_logic;
		  port_in_00 	: in std_logic_vector(7 downto 0);
        port_in_01 	: in std_logic_vector(7 downto 0);
        address 		: in std_logic_vector(7 downto 0);
        writen 		: in std_logic;
        display73 : out std_logic_vector(6 downto 0);
        display72 : out std_logic_vector(6 downto 0);
        display71 : out std_logic_vector(6 downto 0);
        display70 : out std_logic_vector(6 downto 0)
    );
end Memory_test;

architecture Memory_test_arch of Memory_test is
    
	 component memory is
			port
			(
				address 		: in std_logic_vector (7 downto 0);
				data_in 		: in std_logic_vector (7 downto 0);
				writen 		: in std_logic;
				port_in_00 	: in std_logic_vector (7 downto 0);
				port_in_01 	: in std_logic_vector (7 downto 0);
				clock 		: in std_logic;
				reset 		: in std_logic;
				data_out 	: out std_logic_vector (7 downto 0);
				port_out_00 : out std_logic_vector (7 downto 0);
				port_out_01 : out std_logic_vector (7 downto 0)
			);
	 end component;

    component Dec_BCD is
			port 
			(
				ABCD : in std_logic_vector (3 downto 0);
				IB : out std_logic_vector (6 downto 0)
			);
	 end component;

   signal data_out_memory : std_logic_vector(7 downto 0);
	
begin
    U1: memory port map(clock => clock,
								reset => reset,
								address => address,
								data_in => data_in,
								writen => writen,
								data_out => data_out_memory,
								--port_out_00 => port_out_00_sig, 
								--port_out_01 => port_out_01_sig,
								port_in_00 => port_in_00,
								port_in_01 => port_in_01
							);

 -- Instancia del componente Dec_BCD para los cuatro displays
	 U2: Dec_BCD port map (
								ABCD => address(3 downto 0),
								IB => display70
							);
							
	 U3: Dec_BCD port map (
								ABCD => address(7 downto 4), 
								IB => display71
							);

 
    U4: Dec_BCD port map (
								ABCD => data_out_memory(3 downto 0), 
								IB => display72
							);

    U5: Dec_BCD port map (
								ABCD => data_out_memory(7 downto 4), 
								IB => display73
							);

    
end memory_test_arch;