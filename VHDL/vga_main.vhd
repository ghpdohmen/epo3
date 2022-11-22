library IEEE;
use IEEE.std_logic_1164.ALL;

entity vga_main is
    port(clk		: in std_logic;
	rgb_IN	: in std_logic_vector(2 downto 0);
	reset	: in std_logic;
	imgrdy	: out std_logic;
	hsync	: out std_logic;
	vsync	: out std_logic;
	rgb_out	: out std_logic_vector(2 downto 0)
	);
end vga_main;

