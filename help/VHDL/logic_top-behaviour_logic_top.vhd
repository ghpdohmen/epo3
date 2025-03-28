library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour_top of logic_top is

component x is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        dx          : in  std_logic_vector(3 downto 0);
        handshakemi : in  std_logic;
        tempx       : buffer std_logic_vector(3 downto 0);
        handshakeimx : out std_logic);
end component;

component y is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        dy          : in  std_logic_vector(3 downto 0);
        handshakemi : in  std_logic;
        tempy       : buffer std_logic_vector(3 downto 0);
        handshakeimy : out std_logic);
end component;

component color is
     port(clk   : in  std_logic;
        reset : in  std_logic;
	buttons: in std_logic_vector(2 downto 0);
	handshakemi: in std_logic;
	output_color: out std_logic_vector(2 downto 0);
	draw: out std_logic;
	middelsteknop: out std_logic;
	handshakeimc: out std_logic);
end component;
signal s_handshakeimx, s_handshakeimy, s_handshakeimc: std_logic;

begin

process(clk)
begin
	if (clk'event and clk='1') then
		handshakeim<=( s_handshakeimx and s_handshakeimy and s_handshakeimc);
	end if;
	led0 <= tempx(0);
	led1 <= tempx(1);
	led2 <= tempx(2);
	led3 <= tempx(3);
	led5 <= draw;
	led6 <= tempy(0);
	led7 <= tempy(1);
	led8 <= tempy(2);
	led9 <= tempy(3);

	
end process;

x1: x port map (clk=>clk,reset=>reset,dx=>dx,handshakemi=>handshakemi,tempx=>tempx,handshakeimx=>s_handshakeimx);  
y1: y port map (clk=>clk,reset=>reset,dy=>dy,handshakemi=>handshakemi,tempy=>tempy,handshakeimy=>s_handshakeimy);  
color1: color port map (clk,reset,buttons,handshakemi,output_color,draw, middelsteknop,s_handshakeimc);  
end behaviour_top;

