library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of input is


component counter25mhz is
   port(clk       : in  std_logic;
        reset     : in  std_logic;
        count_out : out  std_logic_vector(11 downto 0));
end component;

component shiftregister_9bit is
  port (
    clk:        in std_logic;
    data_in:    in std_logic_vector(8 downto 0);
    reset:      in std_logic;
    data_out:   out std_logic
  ) ;
end component;

component sendFSM is
    port (
        actBit      :   in std_logic; --gives 1 for enable pulse and 0 for reset pulse
        reset       :   in std_logic;
        countIn     :   in std_logic_vector (11 downto 0);
        clk15k      :   in std_logic;
	clk	    :	in std_logic;
        clkTrans    :   out std_logic; --mouse clock transistor
        dataTrans   :   out std_logic; --mouse data transistor
        timebaseRst :   out std_logic;  -- 25Mhz counter.
        dataToReg   :   out std_logic_vector (8 downto 0); --data stored in the register;
        regRst      :   out std_logic; --shift register reset
        dataMUX     :   out std_logic --multiplexer for the data line. '1' is the register and 0 is the FSM.
    );
end component;



begin

tb: counter25mhz port map (clk, )
sr: shiftregister_9bit port map (clk15k)


end behav;

