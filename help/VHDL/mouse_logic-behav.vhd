library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of mouse_logic is

component mouse is
   port(mouseX        : out std_logic_vector(2 downto 0);
        buttons       : out std_logic_vector(4 downto 0);
        mouseY        : out std_logic_vector(2 downto 0);
        Handshake_out : out std_logic;
        DataSwitch    : out std_logic;
        ClkSwitch     : out std_logic;
        Handshake_in  : in  std_logic;
        Data_in       : in  std_logic;
        Clk15k        : in  std_logic;
        clk           : in  std_logic;
        reset         : in  std_logic;
		  rst				 : out std_logic;
	led0		: out std_logic;
	led1		: out std_logic;
	led2		: out std_logic;
	led3		: out std_logic;
	led5		: out std_logic;
	led6		: out std_logic;
	led7		: out std_logic;
	led8		: out std_logic;
	led9		: out std_logic);
end component;

component logic_top is
   	port (clk   : in  std_logic;
        reset : in  std_logic;
	buttons: in std_logic_vector(2 downto 0);
	dx: in std_logic_vector(3 downto 0);
	dy: in std_logic_vector(3 downto 0);
	handshakemi: in std_logic;
	countlow: in std_logic;
	rescount: out std_logic;
	output_color: out std_logic_vector(2 downto 0);
	tempx: out std_logic_vector(3 downto 0);
	tempy: out std_logic_vector(3 downto 0);
	draw: out std_logic;
	handshakeim: out std_logic;
	middelstemuisknop: out std_logic;
	led0 : out std_logic;
	led1 : out std_logic;
	led2 : out std_logic;
	led3 : out std_logic;
	led5 : out std_logic;
	led6 : out std_logic;
	led7 : out std_logic;
	led8 : out std_logic;
	led9 : out std_logic);
end component;


signal handshake_mouse_out, handshake_mouse_in 								: std_logic;
signal mouseX, mouseY			: std_logic_vector(2 downto 0);
signal buttons_mouse		: std_logic_vector(4 downto 0);
signal dx, dy			: std_logic_vector(3 downto 0);
signal buttons			: std_logic_vector(2 downto 0);



begin


buttons(0) <= buttons_mouse(4);
buttons(1) <= buttons_mouse(3);
buttons(2) <= buttons_mouse(2);

dx(0) <= mouseX(0);
dx(1) <= mouseX(1);
dx(2) <= mouseX(2);
dx(3) <= buttons_mouse(0);

dy(0) <= mouseY(0);
dy(1) <= mouseY(1);
dy(2) <= mouseY(2);
dy(3) <= buttons_mouse(1);




ms: mouse port map(mouseX, buttons_mouse, mouseY, handshake_mouse_out, DataSwitch, ClkSwitch, handshake_mouse_in, Data_in, Clk15k, clk, reset, rst);

il: logic_top port map(clk, reset, buttons, dx, dy, handshake_mouse_out, countlow, rescount, output_color, tempx, tempy, draw, handshake_mouse_in, led0, led1, led2, led3, led5, led6, led7, led8, led9);






end behav;

