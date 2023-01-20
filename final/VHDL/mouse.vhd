library IEEE;
use IEEE.std_logic_1164.ALL;

entity mouse is
   port(mouseX        : buffer std_logic_vector(2 downto 0);
        buttons       : buffer std_logic_vector(4 downto 0);
        mouseY        : buffer std_logic_vector(2 downto 0);
        Handshake_out : out std_logic;
        DataSwitch    : out std_logic;
        ClkSwitch     : out std_logic;
        Handshake_in  : in  std_logic;
        Data_in       : in  std_logic;
        Clk15k        : in  std_logic;
        clk           : in  std_logic;
        reset         : in  std_logic;
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
end mouse;

