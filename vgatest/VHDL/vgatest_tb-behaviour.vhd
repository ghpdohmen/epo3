library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of vgatest_tb is
   component vgatest
   port(clock         : in std_logic;
          R, G, B, H, V : out std_logic);
   end component;
   signal clock         : std_logic;
   signal R, G, B, H, V : std_logic;
begin
   test: vgatest port map (clock, R, G, B, H, V);
   clock <= '0' after 0 ns,
          '1' after 20 ns when clock /= '1' else '0' after 20 ns;
end behaviour;

