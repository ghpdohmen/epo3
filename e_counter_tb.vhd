LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

entity e_counter_testbench is
end entity e_counter_testbench;

architecture structural of e_counter_testbench is
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
signal reset, logic_h, clk : std_logic;
signal logic_v_out, logic_h_out, muis_x, muis_y : std_logic_vector (3 downto 0);
signal logic_e_out : std_logic_vector (9 downto 0);

constant clk_period : time:= 10 ns;
begin
l1: e_counter port map (clk => clk, reset => reset, logic_h => logic_h, 
			logic_v_out => logic_v_out, logic_h_out => logic_h_out,
			muis_x => muis_x, muis_y => muis_y, 
			logic_e_out => logic_e_out);

clk <= 		'0' after 0 ns, 
		'1' after 10 ns when logic_h /= '1' else '0' after 10 ns;
logic_h <= 	'0' after 0 ns, 
		'1' after 10 ns when logic_h /= '1' else '0' after 10 ns;

process
begin
logic_h_out <= 	"0000" after 0 ns;
		wait for 20 ns;

	for i in 0 to 9 loop
		logic_h_out <= logic_h_out + "0001";
			wait for clk_period*5;
	end loop;

logic_h_out <= 	"0000"; 
		wait for 20 ns;

	for i in 0 to 9 loop
		logic_h_out <= logic_h_out + "0001";
		wait for clk_period*5;
	end loop;

 		wait;
end process;

logic_v_out <= 	"0000" after 0 ns,
		"0001" after 2000 ns,
		"0011" after 2400 ns;

muis_x <=	"0011" after 0 ns;
muis_y <=	"0000" after 0 ns,
		"0011" after 2200 ns;

reset <= 	'0' after 0 ns, 
		'1' after 10 ns,
		'0' after 20 ns;
end architecture structural;
