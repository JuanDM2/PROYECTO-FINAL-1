library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memory is
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
end memory;


architecture arch_memory of memory is

	signal rom_data_out : std_logic_vector (7 downto 0);
	signal rw_data_out : std_logic_vector (7 downto 0);
	
	 -- Componentes
    component rom_128x8_sync
        port (
            address : in std_logic_vector(7 downto 0);
            clock : in std_logic;
            data_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component rw_96x8_sync
        port (
            address : in std_logic_vector(7 downto 0);
            data_in : in std_logic_vector(7 downto 0);
            writen : in std_logic;
            clock : in std_logic;
            data_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component Output_ports
        port (
            address : in std_logic_vector(7 downto 0);
            data_in : in std_logic_vector(7 downto 0);
            writen : in std_logic;
            clock : in std_logic;
            reset : in std_logic;
            port_out_01 : out std_logic_vector(7 downto 0);
            port_out_00 : out std_logic_vector(7 downto 0)
        );
    end component;


begin

	rom_inst : rom_128x8_sync
        port map (
            address => address,
            clock => clock,
            data_out => rom_data_out
        );

    rw_inst : rw_96x8_sync
        port map (
            address => address,
            data_in => data_in,
            writen => writen,
            clock => clock,
            data_out => rw_data_out
        );

    output_inst : Output_ports
        port map (
            address => address,
            data_in => data_in,
            writen => writen,
            clock => clock,
            reset => reset,
            port_out_01 => port_out_01,
            port_out_00 => port_out_00
        );

	MUX1 : process (address, rom_data_out, rw_data_out, port_in_00, port_in_01)

	begin
	
		if ( (to_integer(unsigned(address)) >= 0) and (to_integer(unsigned(address)) <= 127)) then
		data_out <= rom_data_out;
		
		elsif ( (to_integer(unsigned(address)) >= 128) and (to_integer(unsigned(address)) <= 223)) then
		data_out <= rw_data_out;
		
		elsif (address = x"F0") then data_out <= port_in_00;
		elsif (address = x"F1") then data_out <= port_in_01;
		
		else data_out <= x"00";
		
		end if;
	end process;
	
end arch_memory;
