library IEEE;
use IEEE.std_logic_1164.ALL;

entity pixelgen is
   port(rgb_in : in  std_logic_vector(2 downto 0);
	clk	: in std_logic;
	reset	: in std_logic;
	enable	: in std_logic;
        read  : out std_logic;
	rgb_out: out std_logic_vector(2 downto 0));
end pixelgen;

