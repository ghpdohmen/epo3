library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


architecture behaviour of vgatest is
component vgadrive is
    port( clock          : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
        Rout, Gout, Bout, H, V, enable : out std_logic); -- VGA drive signals
  end component;
  
  signal row, column : std_logic_vector(9 downto 0);
  signal red, green, blue : std_logic;

begin

  -- for debugging: to view the bit order
  VGA : component vgadrive
    port map ( clock => clock, red => red, green => green, blue => blue,
               enable => enable,
               Rout => R, Gout => G, Bout => B, H => H, V => V);
 
  -- red square from 0,0 to 360, 350
  -- green square from 0,250 to 360, 640
  -- blue square from 120,150 to 480,500
  RGB : process
  begin
    wait until clock = '1';
    
    red <= '0';
    green <= '1';
    blue <= '1';


  end process;
end behaviour;

