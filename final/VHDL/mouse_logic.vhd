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
	output_color: out std_logic_vector(2 downto 0);
	tempx: out std_logic_vector(3 downto 0);
	tempy: out std_logic_vector(3 downto 0);
	draw: out std_logic;
	middelsteknop: out std_logic;
		  rst				 : out std_logic;
	led0		: out std_logic;
	led1		: out std_logic;
	led2		: out std_logic;
	led3		: out std_logic;
	led5		: out std_logic;
	led6		: out std_logic;
	led7		: out std_logic;
	led8		: out std_logic;
	led9		: out std_logic);

end mouse_logic;

