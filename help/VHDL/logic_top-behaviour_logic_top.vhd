library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour_logic_top of logic_top is
	
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
	middelstemuisknop: out std_logic;
	handshakeimc: out std_logic);
end component;
signal handshakeimx, handshakeimy,handshakeimc:std_logic;
begin
handshakeim <= (handshakeimx and handshakeimy and handshakeimc);
x1: x port map (clk=>clk,reset=>reset,dx=>dx,handshakemi=>handshakemi,tempx=>tempx,handshakeimx=>handshakeimx);  
y1: y port map (clk=>clk,reset=>reset,dy=>dy,handshakemi=>handshakemi,tempy=>tempy,handshakeimy=>handshakeimy);  
color1: color port map (clk=>clk,reset=>reset,buttons=>buttons,handshakemi=>handshakemi,countlow=>countlow,output_color=>output_color,draw=>draw,rescount=>rescount,middelstemuisknop => middelstemuisknop,handshakeimc=>handshakeimc); 
end behaviour_logic_top;
