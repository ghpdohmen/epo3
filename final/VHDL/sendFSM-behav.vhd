library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behav of sendFSM is


type sendfsm_state is (reset_state, waitstate, waitcountreset, clklowstate, bothlowstate, datalowstate, waitforclockstate, datalowextra, mouseclk);
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

    process (state, reset, countIn) begin
        case state is
            when reset_state =>
                clkTrans <= '0';
                dataTrans <= '0';
                timebaseRst <= '1';
                regRst <= '1';
                dataMUX <= '0';
		          dataToReg <= "000000000";
                if(reset = '0') then
                    new_state <= waitstate;
					 else
						  new_state <= state;
                end if;

	    when waitstate =>
                clkTrans <= '0';
                dataTrans <= '0';
                timebaseRst <= '0';
                regRst <= '1';
                dataMUX <= '0';
		dataToReg <= "000000000";
                if(to_integer(unsigned(countIn)) >= 8000) then
                    new_state <= waitcountreset;
		else
		    new_state <= state;
                end if;

	    when waitcountreset =>
                clkTrans <= '0';
                dataTrans <= '0';
                timebaseRst <= '1';
                regRst <= '1';
                dataMUX <= '0';
		dataToReg <= "000000000";
                new_state <= clklowstate;


            when clklowstate =>
                clkTrans <= '1';
                dataTrans <= '0';
                timebaseRst <= '0';
                regRst <= '1';
                dataMUX <= '0';
		if(actBit = '1') then
                    dataToReg <= "110100001"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
                if(to_integer(unsigned(countIn)) >= 3000) then
                    new_state <= bothlowstate;
		else
		    new_state <= state;
                end if;

            when bothlowstate =>
                clkTrans <= '1';
                dataTrans <= '1';
                regRst <= '1';
                dataMUX <= '0';
		timebaseRst <= '0';
                if(actBit = '1') then
                    dataToReg <= "110100001";						--"000010111"; --inverted for the transistor, F4 including parity bit, needed to reverse the data cuz least significant first.
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
		if(to_integer(unsigned(countIn)) >= 3300) then
                    new_state <= datalowstate;
		else
		    new_state <= state;
                end if;
	
	    when datalowstate =>
		clkTrans <= '0';
                dataTrans <= '1';
                regRst <= '1';
                dataMUX <= '0';
		timebaseRst <= '0';
                if(actBit = '1') then
                    dataToReg <= "110100001"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
		if(to_integer(unsigned(countIn)) >= 3500) then
                    new_state <= waitforclockstate;
		else
		    new_state <= state;
                end if;

            when waitforclockstate =>
		clkTrans <= '0';
                dataTrans <= '1';
                regRst <= '1';
                dataMUX <= '0';
		timebaseRst <= '1';
                if(actBit = '1') then
                    dataToReg <= "110100001"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
		if(clk15k = '0') then
                    new_state <= datalowextra;
		else
		    new_state <= state;
                end if;

	    when datalowextra =>
		clkTrans <= '0';
                dataTrans <= '1';
                regRst <= '1';
                dataMUX <= '0';
		timebaseRst <= '0';
                if(actBit = '1') then
                    dataToReg <= "110100001"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;

		if(to_integer(unsigned(countIn)) >= 200) then
                    new_state <= mouseclk;
		else
		    new_state <= state;
                end if;






	    when mouseclk =>
                clkTrans <= '0';
                regRst <= '0';
                dataMUX <= '1';
		dataTrans <= '0';
		timebaseRst <= '1';
		if(actBit = '1') then
                    dataToReg <= "110100001"; --inverted for the transistor, F4 including parity bit
                else
                    dataToReg <= "000000000"; --inverted for the transistor, FF including parity bit.
                end if;
		new_state <= state;
		
        end case;
    end process;

end behav;
