library IEEE;
use IEEE.std_logic_1164.ALL;

entity logic_top is
   port(clk   : in  std_logic;
        reset : in  std_logic;
	buttons: in std_logic_vector(2 downto 0);
	dx: in std_logic_vector(3 downto 0);
	dy: in std_logic_vector(3 downto 0);
	handshakemi: in std_logic;
	countlow: in std_logic;
	rescount: out std_logic;
	output_color: out std_logic_vector(2 downto 0);
	tempx: buffer std_logic_vector(3 downto 0);
	tempy: buffer std_logic_vector(3 downto 0);
	draw: buffer std_logic;
	handshakeim: out std_logic;
	middelstemuisknop: out std_logic;
	led0 : out std_logic;
	led1 : out std_logic;
	led2 : out std_logic;
	led3 : out std_logic;
	led5 : out std_logic;
	led6 : out std_logic;
	led7 : out std_logic;
	led8 : out std_logic;
	led9 : out std_logic);
end logic_top;

