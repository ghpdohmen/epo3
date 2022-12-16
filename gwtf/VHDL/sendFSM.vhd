library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sendFSM is
    port (
        actBit:         in std_logic; --gives 1 for enable pulse and 0 for reset pulse
        reset:          in std_logic;
        countIn:        in std_logic_vector (11 downto 0);
	    clk:            in std_logic;
        clkTrans:       out std_logic; --mouse clock transistor
        dataTrans:      out std_logic; --mouse data transistor
        timebaseRst:    out std_logic;  -- 25Mhz counter.
        dataToReg:      out std_logic_vector (8 downto 0); --data stored in the register;
	    cntreset:       out std_logic;
        regRst:         out std_logic; --shift register reset
        dataMUX:        out std_logic --multiplexer for the data line. '1' is the register and 0 is the FSM.
    );
end entity sendFSM;
