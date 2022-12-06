library IEEE;
use IEEE.std_logic_1164.ALL;

entity vgatest is
port(clock, enable         : in std_logic;
       R, G, B, H, V, displayenable : out std_logic);
end vgatest;

