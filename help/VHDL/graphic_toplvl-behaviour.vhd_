architecture behaviour of graphic_toplvl is
component graph_logic is
port (
    clk: in std_logic;
    reset: in std_logic;
    -- INPUTS
    -- countdown
    enable: in std_logic;
    countdown_aan: in std_logic;
    middelste_knop:in std_logic;
    
    countdown_klaar: out std_logic;
    --vga
    logic_h_32_minis: in std_logic;
    logic_v_32_minis: in std_logic;
   -- minis_enable: in std_logic;
    --logic 1
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
	signal sig_countdown: std_logic_vector (4 downto 0);
	
	
	
begin
logic_e_asked <= sig_e;
logic_x_asked <= sig_x;
logic_y_asked <= sig_y;
ram: colour_storage port map(
	clk => clk,
	ram_x => logic_x, ram_y => logic_y, ram_colour_in => loaded_color,
	draw => draw, counter_aan => countdown_aan,
	ram_y_asked => sig_y, ram_x_asked => sig_x,
	ram_colour_out => sig_ram
);
rom: rom_cursor port map (
	clk => clk, rom_e_asked => sig_e, rom_colour_out => sig_rom);
vgd: vgadrive port map ( 
	clock => clk, red => sig_red, green => sig_green, blue => sig_blue,
	reset => reset,
        enable => sig_enable, scale_h => sig_scale_h, scale_v => sig_scale_v,
        Rout => R, Gout => G, Bout => B, H => H, V => V);
gr_lg: graph_logic port map (
	clk => clk,
	reset => reset,
	enable => sig_enable,
	countdown_aan => countdown_aan,
	middelste_knop => middelste_knop,
	countdown_klaar => countdown_klaar,
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
