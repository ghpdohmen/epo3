library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity timebase is
	port (	clk		: in	std_logic;
		reset		: in	std_logic;
		clk15k		: out	std_logic
	);
end entity timebase;
