library IEEE;
use IEEE.std_logic_1164.ALL;

entity timebase is
	port (	
		clk			: in 	std_logic;
		edge15k		: in 	std_logic;
		reset		: in	std_logic;
		count_out	: out	std_logic_vector (3 downto 0)
	);
end entity timebase;

