library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour_top of top is

component x is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        dx          : in  std_logic_vector(3 downto 0);
        handshakemi : in  std_logic;
        tempx       : out std_logic_vector(3 downto 0);
        handshakeimx : out std_logic);
end component;

component y is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        dy          : in  std_logic_vector(3 downto 0);
        handshakemi : in  std_logic;
        tempy       : out std_logic_vector(3 downto 0);
        handshakeimy : out std_logic);
end component;

component color is
   port(clk   : in  std_logic;
        reset : in  std_logic;
	buttons: in std_logic_vector(2 downto 0);
	handshakemi: in std_logic;
	countlow: in std_logic;
	output_color: out std_logic_vector(2 downto 0);
	draw: out std_logic;
	rescount: out std_logic;
	handshakeimc: out std_logic);
end component;
signal s_handshakeimx, s_handshakeimy, s_handshakeimc: std_logic;

begin

process(clk)
begin
	if (clk'event and clk='1') then
		handshakeim<=( s_handshakeimx and s_handshakeimy and s_handshakeimc);
	end if;
end process;

x1: x port map (clk=>clk,reset=>reset,dx=>dx,handshakemi=>handshakemi,tempx=>tempx,handshakeimx=>s_handshakeimx);  
y1: y port map (clk=>clk,reset=>reset,dy=>dy,handshakemi=>handshakemi,tempy=>tempy,handshakeimy=>s_handshakeimy);  
color1: color port map (clk=>clk,reset=>reset,buttons=>buttons,handshakemi=>handshakemi,countlow=>countlow,output_color=>output_color,draw=>draw,rescount=>rescount,handshakeimc=>s_handshakeimc);  
end behaviour_top;

