library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
entity graphic_toplvl is
port(
	clk	: in std_logic;
	reset	: in std_logic;
	-- inputs from logic going to storage
	logic_x : in std_logic_vector(3 downto 0);
	logic_y : in std_logic_vector(3 downto 0);
	loaded_color: in std_logic_vector(2 downto 0);
	draw	: in std_logic;
	-- input/muis
    	countdown_aan: in std_logic;
    	middelste_knop:in std_logic;
    	countdown_klaar: out std_logic;
	-- outputs from vga
	R, G, B, H, V : out std_logic
);

end graphic_toplvl;
