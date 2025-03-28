library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of vga_buffer is
component flipflop is
port(
        clk     :   in  std_logic;
	activate:	  in 	std_logic;
        D       :   in  std_logic;
        Q       :   out std_logic
    );
end component;
signal Rint,Gint,Bint,Vint,Hint,enable : std_logic;
begin
process(clk)
begin
if(reset = '1') then
enable <= '0';
else
enable <= '1';
end if;
end process;
R1: flipflop port map (clk, enable, R, Rint);
R2: flipflop port map (clk, enable, Rint, Rout);
G1: flipflop port map (clk, enable, G, Gint);
G2: flipflop port map (clk, enable, Gint, Gout);
B1: flipflop port map (clk, enable, B, Bint);
B2: flipflop port map (clk, enable, Bint, Bout);
V1: flipflop port map (clk, enable, V, Vint);
V2: flipflop port map (clk, enable, Vint, Vout);
H1: flipflop port map (clk, enable, H, Hint);
H2: flipflop port map (clk, enable, Hint, Hout);
end behav;

