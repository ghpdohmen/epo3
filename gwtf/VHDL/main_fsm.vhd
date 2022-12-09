library IEEE;
use IEEE.std_logic_1164.ALL;

entity main_fsm is
   port(clk:            in  std_logic;
        data_in:        in std_logic_vector(10 downto 0);
        count15k_in:    in std_logic_vector(3 downto 0);
	handshake_in:   in std_logic;
        bit11_reg_rst:  out std_logic;
        cntReset15k:    out std_logic;
        actBit:         out std_logic;
        send_reset:     out std_logic;
	x_out:          out std_logic_vector(3 downto 0);
	y_out:          out std_logic_vector(3 downto 0);
	buttons:        out std_logic_vector(2 downto 0);
        x_flipflop:     out std_logic;
        y_flipflop:     out std_logic;
        btn_flipflop:   out std_logic;    
	handshake_out:  out std_logic
        );
end main_fsm;


