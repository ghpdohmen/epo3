library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity countdown_bar is 
port(
	enable: in std_logic;
	--countdown_aan: in std_logic;
    	middelste_knop: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	countdown_klaar: out std_logic;
	countdown_out: out std_logic_vector(18 downto 0)
);
end;
