library IEEE;
use IEEE.std_logic_1164.ALL;

entity vgatest is
port(clock        : in std_logic;
       R, G, B, H, V, Henable, Venable, enable : out std_logic);
end vgatest;

