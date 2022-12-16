library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of input is

--Counter for 15kHz clock from mouse
component timebase is
	port (	clk		: in 	std_logic;
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
        data_out:   out std_logic_vector(10 downto 0)
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
	cntReset	   :	out std_logic;	--counter reset
        dataMUX     :   out std_logic --multiplexer for the data line. '1' is the register and 0 is the FSM.
    );
end component;

signal cntReset25M, bit9_reg_rst, reset_send, mux_select, muxReg, muxFSM, actBit, input_edgedet, output_edgedet				:std_logic;
signal count25M		:std_logic_vector(11 downto 0);
signal count15k		:std_logic_vector(3 downto 0);
signal data_sr_9bit:		std_logic_vector(8 downto 0);


begin


tb: counter25mhz port map (clk, cntReset25M, count25M);

ed: edge_detector port map (clk, input_edgedet, output_edgedet);

sr: shiftregister_9bit port map (clk, output_edgedet, data_sr_9bit, bit9_reg_rst, muxReg);

sfsm: sendFSM port map (actBit, reset_send, count25M, clk, ClkSwitch, muxFSM, cntReset25M, data_sr_9bit, bit9_reg_rst, mux_select);

mx: mux port map (mux_select, muxFSM, muxReg, dataSwitch);



end behav;

