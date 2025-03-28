library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of mouse_tb is
   component mouse
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
           reset         : in  std_logic);
   end component;
   signal mouseX        : std_logic_vector(2 downto 0);
   signal buttons       : std_logic_vector(4 downto 0);
   signal mouseY        : std_logic_vector(2 downto 0);
   signal Handshake_out : std_logic;
   signal DataSwitch    : std_logic;
   signal ClkSwitch     : std_logic;
   signal Handshake_in  : std_logic;
   signal Data_in       : std_logic;
   signal Clk15k        : std_logic;
   signal clk           : std_logic;
   signal reset         : std_logic;
begin
   test: mouse port map (mouseX, buttons, mouseY, Handshake_out, DataSwitch, ClkSwitch, Handshake_in, Data_in, Clk15k, clk, reset);
   Handshake_in <= 			'0' after 0 ns;
   Data_in <= '1' after 0 ns;
   Clk15k <= 			'1' after 0 ns,
			'0' after 160 us,
			'1' after 200 us,
			'0' after 240 us,
			'1' after 280 us,
			'0' after 320 us,
			'1' after 360 us,
			'0' after 400 us,
			'1' after 440 us,
			'0' after 480 us,
			'1' after 520 us,
			'0' after 560 us,
			'1' after 600 us,
			'0' after 640 us,
			'1' after 680 us,
			'0' after 720 us,
			'1' after 760 us,
			'0' after 800 us,
			'1' after 840 us,
			'0' after 880 us,
			'1' after 920 us,
			'0' after 960 us,
			'1' after 1000 us, --AA
			'0' after 2160 us,
			'1' after 2200 us,
			'0' after 2240 us,
			'1' after 2280 us,
			'0' after 2320 us,
			'1' after 2360 us,
			'0' after 2400 us,
			'1' after 2440 us,
			'0' after 2480 us,
			'1' after 2520 us,
			'0' after 2560 us,
			'1' after 2600 us,
			'0' after 2640 us,
			'1' after 2680 us,
			'0' after 2720 us,
			'1' after 2760 us,
			'0' after 2800 us,
			'1' after 2840 us,
			'0' after 2880 us,
			'1' after 2920 us,
			'0' after 2960 us,
			'1' after 3000 us, --00
			'0' after 3001 us, --pulling line low
			'1' after 3111 us, --releasing line
			'0' after 3160 us, --start clock for the 9 bits
			'1' after 3200 us,
			'0' after 3240 us,
			'1' after 3280 us,
			'0' after 3320 us,
			'1' after 3360 us,
			'0' after 3400 us,
			'1' after 3440 us,
			'0' after 3480 us,
			'1' after 3520 us,
			'0' after 3560 us,
			'1' after 3600 us,
			'0' after 3640 us,
			'1' after 3680 us,
			'0' after 3720 us,
			'1' after 3760 us,
			'0' after 3800 us,
			'1' after 3840 us,
			'0' after 3880 us,
			'1' after 3920 us;
			
   
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
end behav;

