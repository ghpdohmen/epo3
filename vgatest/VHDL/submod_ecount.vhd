library IEEE;
use IEEE.std_logic_1164.ALL;

entity submod_ecount is
port(
logic_v_out: in std_logic_vector (3 downto 0);
logic_h_out: in std_logic_vector (3 downto 0);
logic_h: in std_logic;
muis_x: in std_logic_vector(3 downto 0); 
muis_y: in std_logic_vector(3 downto 0);
clk: in std_logic;
reset: in std_logic;
logic_e_out: out std_logic_vector (9 downto 0)
);
end submod_ecount;

