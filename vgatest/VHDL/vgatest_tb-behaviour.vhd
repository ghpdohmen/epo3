library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of vgatest_tb is
   component vgatest
   port(clock         : in std_logic;
   	enable : out std_logic;
   	reset : in std_logic;
   	scale_h : out std_logic;
   	scale_v : out std_logic;
   	R, G, B, H, V : out std_logic);
   end component;
   signal clock         : std_logic;
   signal enable : std_logic;
   signal reset : std_logic;
   signal scale_h : std_logic;
   signal scale_v : std_logic;
   signal R, G, B, H, V : std_logic;
begin
   test: vgatest port map (clock, enable, reset, scale_h, scale_v, R, G, B, H, V);
    clock <= '0' after 0 ns,
          '1' after 20 ns when clock /= '1' else '0' after 20 ns;
   reset <= '0' after 0 ns,
            '1' after 80 ns, '0' after 180 ns;
end behaviour;

