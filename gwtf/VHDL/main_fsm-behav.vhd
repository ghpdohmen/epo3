library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of main_fsm is

type mainfsm_state is (reset_state, wachtFA, wachtAA, enableF4, wachtFA2, data_1, data_2, data_3);
signal state, new_state : mainfsm_state;

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

    process (clk, state) begin
        case state is
            when reset_state =>
                bit11_reg_rst <= '1';
                cntReset15k	<= '1';
		actBit <= '0';
		send_reset <= '1';
		handshake_out <= '0';

                new_state <= wachtFA;
		
            when wachtFA =>
                bit11_reg_rst <= '1';
                cntReset15k	<= '0';
		actBit <= '0';
		send_reset <= '1';
		handshake_out <= '0';
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtAA_cnt_rst;
		else
		    new_state <= state;
                end if;

	    when wachtAA_cnt_rst =>
                bit11_reg_rst <= '1';
                cntReset15k	<= '1';
		actBit <= '0';
		send_reset <= '1';
		handshake_out <= '0';
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtAA_cnt_rst;
		else
		    new_state <= state;
                end if;

            when wachtAA =>
                bit11_reg_rst <= '1';
                cntReset15k	<= '0';
		actBit <= '0';
		send_reset <= '1';
		handshake_out <= '0';
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= enable;
		else
		    new_state <= state;
                end if;

            when enable =>
                bit11_reg_rst <= '1';
                cntReset15k	<= '0';
		actBit <= '0';
		send_reset <= '1';
		handshake_out <= '0';
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= enable;
		else
		    new_state <= state;
                end if;

        end case;
    end process;


end behav;

