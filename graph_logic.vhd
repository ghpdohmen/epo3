library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity graph_logic is
port (
    clk: in std_logic;
    reset: in std_logic;
    -- INPUTS
    --countdown
    mouse_count: in std_logic;
    countdown_aan: in std_logic;
    middelste_knop:in std_logic;
    --countdown_in: in std_logic_vector (4 downto 0);
    countdown_klaar: out std_logic;
    --vga
    logic_h_32_minis: in std_logic;
    logic_v_32_minis: in std_logic;
   -- minis_enable: in std_logic;
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
end;
architecture behav of graph_logic is
component h_counter is
   port(
    logic_h_32: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    logic_h_out: out std_logic_vector (3 downto 0)
   );
end component;
component v_counter is
   port(
    logic_v_32: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    logic_v_out: out std_logic_vector (3 downto 0)
   );
end component;
component e_counter is
   port(
    logic_v_out: in std_logic_vector (3 downto 0);
	logic_h_out: in std_logic_vector (3 downto 0);
	--logic_h: in std_logic;
	muis_x: in std_logic_vector(3 downto 0); 
	muis_y: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	reset: in std_logic;
	logic_e_out: out std_logic_vector (9 downto 0)
   );
end component;
component countdown_bar is      -- ga eerst zonder proberen
   port(
  	 mouse_count: in std_logic;
	 countdown_aan: in std_logic;
  	 middelste_knop: in std_logic;
	 clk: in std_logic;
	 reset: in std_logic;
	 countdown_klaar: out std_logic;
	 countdown_out: out std_logic_vector(4 downto 0)
    );
end component;

signal local_y, local_x: std_logic_vector (3 downto 0);
signal colour_output: std_logic_vector (2 downto 0);
signal sig_countdown: std_logic_vector (4 downto 0);
signal countdown_int: integer range 0 to 99;
begin
lv: v_counter port map (logic_v_32 => logic_v_32_minis, logic_v_out => local_y, clk => clk, reset => reset);
lh: h_counter port map (logic_h_32 => logic_h_32_minis, logic_h_out => local_x, clk => clk, reset => reset);
le: e_counter port map (logic_v_out => local_y, logic_h_out => local_x, 
--logic_h => minis_enable, 
muis_x => logic_x, muis_y => logic_y, logic_e_out => logic_e_asked, clk => clk, reset => reset);
logic_y_asked <= local_y;
logic_x_asked <= local_x;
countdown_int <= 14-(to_integer(unsigned(sig_countdown)) / 2);
lcountdown: countdown_bar port map (mouse_count => mouse_count, countdown_aan => countdown_aan, middelste_knop => middelste_knop, 
countdown_out => sig_countdown, 
countdown_klaar => countdown_klaar,clk => clk, reset => reset );  --  ga eerst zonder proberen
process(clk)
    begin
    if (local_y=logic_y and local_x=logic_x) then --zit de muis er overheen?              
        if (logic_rom_colour = "01" ) then
            if (("0000"<local_x) and (local_x<"1011") and ("0100"<local_y)) then
                colour_output <= logic_ram_colour;
            elsif((local_y = "0011") and (local_x /= "1110")) then  --- ga eerst zonder proberen
                if (countdown_int > to_integer(unsigned(local_x))) then
                    colour_output <= "000";
                else
                   colour_output <= "010";
                end if;
            else
                colour_output <= "000";
            end if;
        elsif (logic_rom_colour = "00" ) then
            colour_output <= "000";
        elsif (logic_rom_colour = "10" ) then
            colour_output <= loaded_colour;
        else
           colour_output <= "111";
        end if;
    elsif (("0000"<local_x) and (local_x<"1011") and ("0100"<local_y)) then--zijn de coordinaten in het tekenvlak
        colour_output <= logic_ram_colour;
   elsif((local_y="0011") and (local_x/="1110")) then --- ga eerst zonder proberen
        if (countdown_int > to_integer(unsigned(local_x))) then
                    colour_output <= "000";
                else
                    colour_output <= "010";
        end if;          
    else 
    colour_output <= "000";
    end if;

end process;
logic_vga_colour <= colour_output;
end architecture behav;
