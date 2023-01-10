library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of mouse is

--Counter for 15kHz clock from mouse
component timebase is
	port (	
		clk			: in 	std_logic;
		edge15k		: in 	std_logic;
		reset		: in	std_logic;
		count_out	: out	std_logic_vector (3 downto 0)
	);
end component;

--Counter for 25MHz clk of chip
component counter25mhz is
   port(clk       : in  std_logic;
        reset     : in  std_logic;
        count_out : out  std_logic_vector(11 downto 0));
end component;

--SR 9 bit
component shiftregister_9bit is
  port (
    clk:        in std_logic;
    edge15k:		in std_logic;
    data_in:    in std_logic_vector(8 downto 0);
    reset:      in std_logic;
    data_out:   out std_logic
  ) ;
end component;

--SR 11 bit
component shiftregister_11bit is
    port (
        clk:        in std_logic;
    	edge15k:	   in std_logic;
        data_in:    in std_logic;
        reset:      in std_logic;
        data_out:   buffer std_logic_vector(10 downto 0)
    );
end component;

--mux
component mux is
   port(mux_select : in  std_logic;
        muxFSM     : in  std_logic;
        muxReg     : in  std_logic;
	dataSwitch	: out 	std_logic);
end component;

component edge_detector is
   port(clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic);
end component;


--Send FSM
component sendFSM is
    port (
        actBit      :   in std_logic; --gives 1 for enable pulse and 0 for reset pulse
        reset       :   in std_logic;
        countIn     :   in std_logic_vector (11 downto 0);
	clk	    :	in std_logic;
        clkTrans    :   out std_logic; --mouse clock transistor
        dataTrans   :   out std_logic; --mouse data transistor	
        timebaseRst :   out std_logic;  -- 25Mhz counter.
        dataToReg   :   out std_logic_vector (8 downto 0); --data stored in the register;
        regRst      :   out std_logic; --shift register reset
        dataMUX     :   out std_logic --multiplexer for the data line. '1' is the register and 0 is the FSM.
    );
end component;

--main fsm
component main_fsm is
	port(clk:            in  std_logic;
	reset:		in  std_logic;
        data_in:        in std_logic_vector(10 downto 0);
        count15k_in:    in std_logic_vector(3 downto 0);
	handshake_in:   in std_logic;
        bit11_reg_rst:  out std_logic;
        cntReset15k:    out std_logic;
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
end component;

component flipflop is
	port(
        clk     :   in  std_logic;
	activate:	  in 	std_logic;
        D       :   in  std_logic;
        Q       :   out std_logic
    );
end component;

signal cntReset25M, bit9_reg_rst, reset_send, mux_select, muxReg, muxFSM, actBit, output_edgedet, cntReset15K, bit11_reg_rst, xflipfloprst, yflipfloprst, btnflipfloprst				:std_logic;
signal count25M		:std_logic_vector(11 downto 0);
signal count15k		:std_logic_vector(3 downto 0);
signal data_sr_9bit:		std_logic_vector(8 downto 0);
signal data_sr_11bit: std_logic_vector(10 downto 0);
signal mouse_x,mouse_y: std_logic_vector (2 downto 0);
signal btns, leds_mainfsm:	std_logic_vector(4 downto 0);


begin
--tijdelijk
process(clk)
begin
rst <= reset;
led0 <= count15k(0);
led1 <= count15k(1);
led2 <= count15k(2);
led3 <= count15k(3);
led5 <= leds_mainfsm(0);
led6 <= leds_mainfsm(1);
led7 <= leds_mainfsm(2);
led8 <= leds_mainfsm(3);
led9 <= leds_mainfsm(4);
end process;

cnt: counter25mhz port map (clk, cntReset25M, count25M);

ed: edge_detector port map (clk, clk15k, output_edgedet);

sr: shiftregister_9bit port map (clk, output_edgedet, data_sr_9bit, bit9_reg_rst, muxReg);

sfsm: sendFSM port map (actBit, reset_send, count25M, clk, ClkSwitch, muxFSM, cntReset25M, data_sr_9bit, bit9_reg_rst, mux_select);

mx: mux port map (mux_select, muxFSM, muxReg, dataSwitch);

tb: timebase port map (clk, output_edgedet, cntReset15K, count15k);

mfsm: main_fsm port map (clk, reset, data_sr_11bit, count15k, Handshake_in, bit11_reg_rst, cntReset15K, actBit, reset_send, mouse_x, mouse_y, btns, xflipfloprst, yflipfloprst, btnflipfloprst, handshake_out, leds_mainfsm);

flipflop1: flipflop port map(clk, xflipfloprst, mouse_x(2),mouseX(2));
flipflop2: flipflop port map(clk, xflipfloprst, mouse_x(1),mouseX(1));
flipflop3: flipflop port map(clk, xflipfloprst, mouse_x(0),mouseX(0));
flipflop4: flipflop port map(clk, yflipfloprst, mouse_y(0),mouseY(0));
flipflop5: flipflop port map(clk, yflipfloprst, mouse_y(1),mouseY(1));
flipflop6: flipflop port map(clk, yflipfloprst, mouse_y(2),mouseY(2));
flipflop7: flipflop port map(clk, btnflipfloprst, btns(4),buttons(4));
flipflop8: flipflop port map(clk, btnflipfloprst, btns(3),buttons(3));
flipflop9: flipflop port map(clk, btnflipfloprst, btns(2),buttons(2));
flipflop10: flipflop port map(clk, btnflipfloprst, btns(1),buttons(1));
flipflop11: flipflop port map(clk, btnflipfloprst, btns(0),buttons(0));

sr11: shiftregister_11bit port map (clk, output_edgedet, Data_in, reset, data_sr_11bit);

end behav;

