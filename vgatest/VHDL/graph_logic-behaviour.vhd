library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of graph_logic is
component submod_hcount is
   port(
    logic_h_32: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    logic_h_out: out std_logic_vector (3 downto 0)
   );
end component;
component submod_vcount is
   port(
    logic_v_32: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    logic_v_out: out std_logic_vector (3 downto 0)
   );
end component;
component submod_ecount is
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
lv: submod_vcount port map (logic_v_32 => logic_v_32_minis, logic_v_out => local_y, clk => clk, reset => reset);
lh: submod_hcount port map (logic_h_32 => logic_h_32_minis, logic_h_out => local_x, clk => clk, reset => reset);
le: submod_ecount port map (logic_v_out => local_y, logic_h_out => local_x, logic_h => minis_enable, muis_x => logic_x, muis_y => logic_y, logic_e_out => logic_e_asked, clk => clk, reset => reset);
logic_y_asked <= local_y;
logic_x_asked <= local_x;

process(clk)
    begin
    if (local_y=logic_y and local_x=logic_x) then --zit de muis er overheen?              
        if (logic_rom_colour = "01" ) then
            if (("0000"<local_x) and (local_x<"1011") and ("0101"<local_y)) then
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
    elsif (("0000"<local_x) and (local_x<"1011") and ("0101"<local_y)) then--zijn de coordinaten in het tekenvlak
        colour_output <= logic_ram_colour;
    --elsif xxxx then -- zijn de coordinaten in het counter vak 
            -- output = output rom
    else 
    colour_output <= "000";
    end if;

end process;
logic_vga_colour <= colour_output;
end behaviour;

