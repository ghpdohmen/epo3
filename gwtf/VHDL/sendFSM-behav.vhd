library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behav of sendFSM is


type sendfsm_state is (reset_state, clklowstate, bothlowstate, waitforclockstate);
signal state, new_state : sendfsm_state;


begin



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
		else
		    new_state <= state;
                end if;

            when clklowstate =>
                clkTrans <= '1';
                dataTrans <= '0';
                timebaseRst <= '0';
                regRst <= '1';
                dataMUX <= '0';
                if(to_integer(unsigned(countIn)) >= 2750) then
                    new_state <= bothlowstate;
		else
		    new_state <= state;
                end if;

            when bothlowstate =>
                clkTrans <= '0';
                dataTrans <= '1';
                regRst <= '1';
                dataMUX <= '0';
                if(actBit = '1') then
                    dataToReg <= "000010111"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
		new_state <= waitforclockstate;

            when waitforclockstate =>
                clkTrans <= '0';
                regRst <= '0';
                dataMUX <= '1';

        end case;
    end process;

end behav;
