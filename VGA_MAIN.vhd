library IEEE;
use IEEE.std_logic_1164.ALL;

-- dit is de entity voor het VGA gedeelte die verantwoordelijk is voor het uitgeven van de h en v sync signalen
entity VGA_MAIN is
   port(clk		: in std_logic;
	rgb_IN	: in std_logic_vector(2 downto 0);
	imgrdy	: out std_logic;
	imgrst	: out std_logic;
	hsync	: out std_logic;
	vsync	: out std_logic;
	rgb_out	: out std_logic_vector(2 downto 0)
	);
end VGA_MAIN;

