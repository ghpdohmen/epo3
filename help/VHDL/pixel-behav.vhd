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
    	countdown_aan: in std_logic;
    	middelste_knop:in std_logic;
    	countdown_klaar: out std_logic;

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
	countlow: in std_logic;
	rescount: out std_logic;
	output_color: out std_logic_vector(2 downto 0);
	tempx: out std_logic_vector(3 downto 0);
	tempy: out std_logic_vector(3 downto 0);
	draw: out std_logic;
	middelsteknop: out std_logic
	);
end component;
signal sig_draw, sig_rescount, sig_countlow, sig_middelsteknop : std_logic;
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
	countlow => sig_countlow,
	rescount => sig_rescount,
	output_color => sig_output_color,
	tempx => sig_logic_x,
	tempy => sig_logic_y,
	draw => sig_draw,
	middelsteknop => sig_middelsteknop
);
	
gl: graphic_toplvl port map (
	clk => clk,
	reset => reset,
	logic_x => sig_logic_x,
	logic_y => sig_logic_y,
	loaded_color => sig_output_color,
	draw => sig_draw,
	countdown_aan => sig_rescount,
	middelste_knop => sig_middelsteknop,
	countdown_klaar => sig_countlow,
	R => R,
	G => G,
	B => B,
	H => H,
	V => V
);
	
end behav;

