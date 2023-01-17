library IEEE;
use IEEE.std_logic_1164.ALL;

entity x is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        dx          : in  std_logic_vector(3 downto 0);
        handshakemi : in  std_logic;
        tempx       : buffer std_logic_vector(3 downto 0);
        handshakeim : out std_logic);
end x;
