library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour of graphic_toplvl is
component graph_logic is
port (
    clk: in std_logic;
    reset: in std_logic;
    -- INPUTS
    --vga
    logic_h_32_minis: in std_logic;
    logic_v_32_minis: in std_logic;
    minis_enable: in std_logic;
    --logic 1 of iets anders???
    logic_x: in std_logic_vector (3 downto 0); -- dit komt van input logic
    logic_y: in std_logic_vector (3 downto 0);
    loaded_colour: in std_logic_vector (2 downto 0);
    --opslag
    logic_ram_colour: in std_logic_vector (2 downto 0);
    logic_rom_colour: in std_logic_vector (1 downto 0);
    -- external
    --logic_ext_colour: in std_logic_vector (2 downto 0);
    --OUTPUTS
    --naar VGA
    logic_vga_colour: out std_logic_vector (2 downto 0);
    --naar opslag
    logic_x_asked: out std_logic_vector (3 downto 0);
    logic_y_asked: out std_logic_vector (3 downto 0);
    logic_e_asked: out std_logic_vector (9 downto 0)
    --external
    --logic_enable_count: out std_logic_vector (9 downto 0);
);
end component;

component vgadrive is port( clock            : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
	reset : in std_logic;
	enable : out std_logic;
	scale_h : out std_logic;
	scale_v : out std_logic;
        Rout, Gout, Bout, H, V : out std_logic);
end component;

	signal red, green, blue : std_logic;
	signal sig_enable, sig_scale_h, sig_scale_v : std_logic;
	
	
	
begin

vgd: vgadrive port map ( clock => clk, red => red, green => green, blue => blue,
		reset => reset,
               enable => sig_enable, scale_h => sig_scale_h, scale_v => sig_scale_v,
               Rout => R, Gout => G, Bout => B, H => H, V => V);
gr_lg: graph_logic port map (clk => clk,
	reset => reset,
	logic_h_32_minis => sig_scale_h,
	logic_v_32_minis => sig_scale_v,
	minis_enable => sig_enable,
	logic_x => logic_x,
	logic_y => logic_y,
	loaded_colour => color_in,
	logic_ram_colour => ram_color,
	logic_rom_colour => rom_color,
	logic_vga_colour(0) => red,
	logic_vga_colour(1) => green,
	logic_vga_colour(2) => blue,
	logic_x_asked => logic_x_asked,
	logic_y_asked => logic_y_asked,
	logic_e_asked => logic_e_asked
);


end behaviour;

