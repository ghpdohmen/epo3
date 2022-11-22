library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of vga_main is
component syncunit 
port( clk	: in std_logic;
	reset: in std_logic;
	h_sync : out std_logic;
	v_sync : out std_logic;
	enable: out std_logic);
end component;

component pixel_gen
   port(rgb_in : in  std_logic_vector(2 downto 0);
        ready  : out std_logic;
	rgb_out: out std_logic);
end component;

signal enable: std_logic;
begin


pixelgen: pixel_gen port map();
syncunit: syncunit port map();


--
end behaviour;

