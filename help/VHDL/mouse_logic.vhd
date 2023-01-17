library IEEE;
use IEEE.std_logic_1164.ALL;

entity mouse_logic is
    port(
        Data_in       : in  std_logic;
        Clk15k        : in  std_logic;
        clk           : in  std_logic;
        reset         : in  std_logic;
	DataSwitch    : out std_logic;
        ClkSwitch     : out std_logic;
	countlow: in std_logic;
	rescount: out std_logic;
	output_color: out std_logic_vector(2 downto 0);
	tempx: out std_logic_vector(3 downto 0);
	tempy: out std_logic_vector(3 downto 0);
	draw: out std_logic;
	middelstemuisknop: out std_logic);

end mouse_logic;

