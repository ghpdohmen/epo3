library IEEE;
use IEEE.std_logic_1164.ALL;

entity color is
   port(clk   : in  std_logic;
        reset : in  std_logic;
	buttons: in std_logic_vector(2 downto 0);
	handshakemi: in std_logic;
	countlow: in std_logic;
	output_color: out std_logic_vector(2 downto 0);
	draw: out std_logic;
	rescount: out std_logic;
	handshakeim: out std_logic);
end color;

