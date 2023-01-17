library IEEE;
use IEEE.std_logic_1164.ALL;

entity y is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        dy          : in  std_logic_vector(3 downto 0);
        handshakemi : in  std_logic;
        tempy       : out std_logic_vector(3 downto 0);
        handshakeim : out std_logic);
end y;

