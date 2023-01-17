library IEEE;
use IEEE.std_logic_1164.ALL;

entity main_fsm is
   port(clk:            in  std_logic;
	reset:		in  std_logic;
        data_in:        in std_logic_vector(10 downto 0);
        count15k_in:    in std_logic_vector(3 downto 0);
	count25M:		in std_logic_vector(12 downto 0);
	handshake_in:   in std_logic;
        bit11_reg_rst:  out std_logic;
        cntReset15k:    out std_logic;
	cntReset25M:		out std_logic;
	mux_select_main: out std_logic;
        actBit:         out std_logic;
        send_reset:     out std_logic;
	x_out:          out std_logic_vector(2 downto 0);
	y_out:          out std_logic_vector(2 downto 0);
	buttons:        out std_logic_vector(4 downto 0); --also contains sign bits

--buttons(0,1) = sign x, sign y
--buttons(2,3,4) = left, middle, right button
        x_flipflop:     out std_logic;
        y_flipflop:     out std_logic;
        btn_flipflop:   out std_logic;    
	handshake_out:  out std_logic;
	test:		out std_logic_vector(4 downto 0)
        );
end main_fsm;

