library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


architecture behaviour of vgatest is
component vgadrive is
    port( clock          : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
        row, column      : out std_logic_vector(9 downto 0); -- for current pixel
        Rout, Gout, Bout, H, V : out std_logic); -- VGA drive signals
  end component;
  
  signal row, column : std_logic_vector(9 downto 0);
  signal red, green, blue : std_logic;

begin

  -- for debugging: to view the bit order
  VGA : component vgadrive
    port map ( clock => clock, red => red, green => green, blue => blue,
               row => row, column => column,
               Rout => R, Gout => G, Bout => B, H => H, V => V);
 
  -- red square from 0,0 to 360, 350
  -- green square from 0,250 to 360, 640
  -- blue square from 120,150 to 480,500
  RGB : process(row, column)
  begin
    -- wait until clock = '1';
    
    if  row > 0 and row < 320 and column >0 and column < 640  then
      red <= '1';
    else
      red <= '0';
    end if;
    
    if  row > 160 and row < 320 and column > 0 and column < 640 then
      green <= '1';
    else
      green <= '0';
    end if;
    
    if  row > 160 and row < 480 and column > 0 and column < 640 then
      blue <= '1';
    else
      blue <= '0';
    end if;

  end process;
end behaviour;

