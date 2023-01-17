library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity h_counter is 
port(
	logic_h_32: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	logic_h_out: out std_logic_vector (3 downto 0)
);
end;
