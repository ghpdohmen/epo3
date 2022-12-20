library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity graph_logic is
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
	logic_h: in std_logic;
	muis_x: in std_logic_vector(3 downto 0); 
	muis_y: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	reset: in std_logic;
	logic_e_out: out std_logic_vector (9 downto 0)
   );
end component;
signal local_y, local_x: std_logic_vector (3 downto 0);
signal colour_output: std_logic_vector (2 downto 0);
begin
lv: v_counter port map (logic_v_32 => logic_v_32_minis, logic_v_out => local_y, clk => clk, reset => reset);
lh: h_counter port map (logic_h_32 => logic_h_32_minis, logic_h_out => local_x, clk => clk, reset => reset);
le: e_counter port map (logic_v_out => local_y, logic_h_out => local_x, logic_h => minis_enable, muis_x => logic_x, muis_y => logic_y, logic_e_out => logic_e_asked, clk => clk, reset => reset);
logic_y_asked <= local_y;
logic_x_asked <= local_x;

process(clk)
    begin
    if (local_y=logic_y and local_x=logic_x) then --zit de muis er overheen?              
        if (logic_rom_colour = "01" ) then
            if (("0000"<local_y) and (local_y<"1011") and ("0101"<local_x)) then
                colour_output <= logic_ram_colour;
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
    elsif (("0000"<local_y) and (local_y<"1011") and ("0101"<local_x)) then--zijn de coordinaten in het tekenvlak
        colour_output <= logic_ram_colour;
    --elsif xxxx then -- zijn de coordinaten in het counter vak 
            -- output = output rom
    else 
    colour_output <= "000";
    end if;

end process;
logic_vga_colour <= colour_output;
end architecture behav;
