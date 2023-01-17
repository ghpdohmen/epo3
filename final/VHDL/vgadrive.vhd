library IEEE;
use IEEE.std_logic_1164.ALL;

entity vgadrive is
port( clock            : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
	reset : in std_logic;
	enable : out std_logic;
	scale_h : out std_logic;
	scale_v : out std_logic;
        Rout, Gout, Bout, H, V : out std_logic);
end vgadrive;

