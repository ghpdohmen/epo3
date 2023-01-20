architecture behaviour of graphic_toplvl is
component graph_logic is
port (
    clk: in std_logic;
    reset: in std_logic;
    -- INPUTS
    -- countdown
    v_count: in std_logic;
    middelste_knop:in std_logic;

    --vga
    logic_h_32_minis: in std_logic;
    logic_v_32_minis: in std_logic;
    --input logic
    logic_x: in std_logic_vector (3 downto 0);
    logic_y: in std_logic_vector (3 downto 0);
    loaded_colour: in std_logic_vector (2 downto 0);
    --opslag
    logic_ram_colour: in std_logic_vector (2 downto 0);
    logic_rom_colour: in std_logic_vector (1 downto 0);
    --OUTPUTS
    --to VGA
    logic_vga_colour: out std_logic_vector (2 downto 0);
    --to storage
    logic_x_asked: out std_logic_vector (3 downto 0);
    logic_y_asked: out std_logic_vector (3 downto 0);
    logic_e_asked: out std_logic_vector (9 downto 0);
    countdown_aan: out std_logic
);
end component;
component rom_cursor is port (
	clk            : in  std_logic;
        rom_e_asked    : in  std_logic_vector(9 downto 0);
        rom_colour_out : out std_logic_vector(1 downto 0)
);
end component;
component colour_storage is port(
 	ram_y: in std_logic_vector(3 downto 0);
 	ram_x: in std_logic_vector(3 downto 0);
 	ram_colour_in: in std_logic_vector(2 downto 0); -- Data to write into RAM
 	draw: in std_logic; -- Write enable 
 	counter_aan: in std_logic;
 	clk: in std_logic; -- clock input for RAM
	reset: in std_logic;
	middelste_knop: in std_logic;
	ram_y_asked: in std_logic_vector(3 downto 0); 
 	ram_x_asked: in std_logic_vector(3 downto 0);
 	ram_colour_out: out std_logic_vector(2 downto 0)-- Data output of RAM
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

	signal sig_red, sig_green, sig_blue : std_logic;
	signal sig_enable, sig_scale_h, sig_scale_v : std_logic;
	signal sig_e: std_logic_vector(9 downto 0);
	signal sig_x, sig_y : std_logic_vector(3 downto 0);
	signal sig_rom: std_logic_vector(1 downto 0);
	signal sig_ram: std_logic_vector(2 downto 0);
	signal sig_countdown_aan: std_logic;
	signal sig_v: std_logic;
	
	
	
begin
--logic_e_asked <= sig_e;
--logic_x_asked <= sig_x;
--logic_y_asked <= sig_y;
V <= sig_v;
ram: colour_storage port map( counter_aan => sig_countdown_aan,
	clk => clk, reset=>reset, middelste_knop=> middelste_knop,
	ram_x => logic_x, ram_y => logic_y, ram_colour_in => loaded_color,
	draw => draw, 
	ram_y_asked => sig_y, ram_x_asked => sig_x,
	ram_colour_out => sig_ram
);
rom: rom_cursor port map (
	clk => clk, rom_e_asked => sig_e, rom_colour_out => sig_rom);
vgd: vgadrive port map ( 
	clock => clk, red => sig_red, green => sig_green, blue => sig_blue,
	reset => reset,
        enable => sig_enable, scale_h => sig_scale_h, scale_v => sig_scale_v,
        Rout => R, Gout => G, Bout => B, H => H, V => sig_v);
gr_lg: graph_logic port map (
	clk => clk,
	reset => reset,
	v_count => sig_v,
	middelste_knop => middelste_knop,
	countdown_aan => sig_countdown_aan,
	logic_h_32_minis => sig_scale_h,
	logic_v_32_minis => sig_scale_v,
	logic_x => logic_x,
	logic_y => logic_y,
	loaded_colour => loaded_color,
	logic_ram_colour => sig_ram,
	logic_rom_colour => sig_rom,
	logic_vga_colour(0) => sig_red,
	logic_vga_colour(1) => sig_green,
	logic_vga_colour(2) => sig_blue,
	logic_x_asked => sig_x,
	logic_y_asked => sig_y,
	logic_e_asked => sig_e
);


end behaviour;
