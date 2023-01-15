library IEEE;
use IEEE.std_logic_1164.ALL;

entity logic_top is
   port(clk   : in  std_logic;
        reset : in  std_logic;
	buttons: in std_logic_vector(2 downto 0);
	dx: in std_logic_vector(3 downto 0);
	dy: in std_logic_vector(3 downto 0);
	handshakemi: in std_logic;
	countlow: in std_logic;
	rescount: out std_logic;
	output_color: out std_logic_vector(2 downto 0);
	tempx: out std_logic_vector(3 downto 0);
	tempy: out std_logic_vector(3 downto 0);
	draw: out std_logic;
	handshakeim: out std_logic);
end logic_top;

