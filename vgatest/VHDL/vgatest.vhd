library IEEE;
use IEEE.std_logic_1164.ALL;

entity vgatest is
port(clock         : in std_logic;
	enable : out std_logic;
	reset : in std_logic;
	scale_h : out std_logic;
	scale_v : out std_logic;
	R, G, B, H, V : out std_logic);
end vgatest;

