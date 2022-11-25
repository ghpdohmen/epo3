library IEEE;
use IEEE.std_logic_1164.ALL;

entity syncunit is
generic(
	h_pulse: INTEGER := 96;
	h_bp : INTEGER := 40;
	h_pixels : INTEGER := 640;
	h_fp: INTEGER:=8;
	h_pol : std_logic := '0';
	v_pulse: integer := 2;
	v_bp: integer := 25;
	v_pixels: integer := 480;
	v_fp: integer := 2;
	v_pol: std_logic := '1'
);
port( clk	: in std_logic;
	reset: in std_logic;
	h_sync : out std_logic;
	v_sync : out std_logic;
	enable: out std_logic);
end syncunit;

