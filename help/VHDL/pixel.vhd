library IEEE;
use IEEE.std_logic_1164.ALL;

entity pixel is
   port(clk           : in  std_logic;
        reset         : in  std_logic;
        data_in       : in  std_logic;
        clk15k_in     : in  std_logic;
	R             : out std_logic;
        G             : out std_logic;
        B             : out std_logic;
        V             : out std_logic;
        H             : out std_logic;
        data_switch   : out std_logic;
        clk15k_switch : out std_logic)
        ;
end pixel;

