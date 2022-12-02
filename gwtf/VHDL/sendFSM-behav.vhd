library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behav of sendFSM is

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




type sendfsm_state is (reset_state, clklowstate, bothlowstate, waitforclockstate);
signal state, new_state : sendfsm_state;


begin


tb: counter25mhz port map (clk, timebaseRst, countIn);
sr: shiftregister_9bit port map (clk15k


    process(clk) begin
        if(rising_edge(clk)) then

	    if(reset = '1') then
           		state <= reset_state;
	    else 
		state <= new_state;
	    end if;
		
        end if;
    end process;

    process (state, reset, countIn, clk15k) begin
        case state is
            when reset_state =>
                clkTrans <= '0';
                dataTrans <= '0';
                timebaseRst <= '1';
                regRst <= '1';
                dataMUX <= '0';
                if(reset = '0') then
                    new_state <= clklowstate;
                end if;
            when clklowstate =>
                clkTrans <= '1';
                dataTrans <= '0';
                timebaseRst <= '0';
                regRst <= '1';
                dataMUX <= '0';
                if(to_integer(unsigned(countIn)) >= 2750) then
                    new_state <= bothlowstate;
                end if;
            when bothlowstate =>
                clkTrans <= '0';
                dataTrans <= '1';
                new_state <= waitforclockstate;
                regRst <= '1';
                dataMUX <= '0';
                if(actBit = '1') then
                    dataToReg <= "000010111"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
            when waitforclockstate =>
                clkTrans <= '0';
                regRst <= '0';
                dataMUX <= '1';

        end case;
    end process;

end behav;
