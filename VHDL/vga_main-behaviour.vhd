library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of vga_main is
component syncunit port( 
	clk	: in std_logic;
	reset	: in std_logic;
	h_sync 	: out std_logic;
	v_sync 	: out std_logic;
	enable	: out std_logic);
end component;
component pixelgen port(
	rgb_in : in  std_logic_vector(2 downto 0);
	clk	: in std_logic;
	reset	: in std_logic;
	enable	: in std_logic;
        read  : out std_logic;
	rgb_out: out std_logic_vector(2 downto 0));
end component;

signal enable: std_logic;

begin

pgen: pixelgen port map(rgb_in => rgb_IN, clk => clk, reset => reset, enable => enable, read=> imgrdy, rgb_out=> rgb_out);
sunit: syncunit port map(clk=> clk, reset=> reset, h_sync => hsync, v_sync=> vsync, enable=>enable);


end behaviour;

