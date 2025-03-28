library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of pixel is

component graphic_toplvl is
port(
	clk	: in std_logic;
	reset	: in std_logic;
	
	-- inputs from logic going to memory
	logic_x : in std_logic_vector(3 downto 0);
	logic_y : in std_logic_vector(3 downto 0);
	loaded_color: in std_logic_vector(2 downto 0);
	draw	: in std_logic;
	-- input/muis
	--mouse_count: in std_logic;
    	middelste_knop: in std_logic;

	-- outputs from vga
	R, G, B, H, V : out std_logic
);
end component;
component mouse_logic is
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
end component;

signal sig_draw, sig_middelsteknop : std_logic;
signal sig_logic_x, sig_logic_y : std_logic_vector(3 downto 0);
signal sig_output_color : std_logic_vector (2 downto 0);
begin
ml: mouse_logic port map (
	Data_in => data_in,
	Clk15k => clk15k_in,
	clk => clk,
	reset => reset,
	DataSwitch => data_switch,
	ClkSwitch => clk15k_switch,
	output_color => sig_output_color,
	tempx => sig_logic_x,
	tempy => sig_logic_y,
	draw => sig_draw,
	middelsteknop => sig_middelsteknop, 
	rst => rst, 
led0 => led0, 
led1 => led1, 
led2 => led2, 
led3 => led3, 
led5 => led5, 
led6 => led6, 
led7 => led7, 
led8 => led8, 
led9 => led9
);
	
gl: graphic_toplvl port map (
	clk => clk,
	reset => reset,
	logic_x => sig_logic_x,
	logic_y => sig_logic_y,
	loaded_color => sig_output_color,
	draw => sig_draw,
	middelste_knop => sig_middelsteknop,
	R => R,
	G => G,
	B => B,
	H => H,
	V => V
);
	
end behav;

