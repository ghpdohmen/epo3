library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of main_fsm is

type mainfsm_state is (reset_state, wachtFA, wachtFA_cnt_rst wachtAA, wachtFA_cnt_rst, enableF4, enableF4_cnt_rst, wachtFA2, wachtFA2_cnt_rst, data_1, data_1_cnt_rst, data_2, data_2_cnt_rst, data_3, data_3_cnt_rst);
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
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		        actBit          <= '0';
		        send_reset      <= '1';
		        handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                new_state       <= wachtFA;
		
            when wachtFA =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtFA_cnt_rst;
		        else
		            new_state <= state;
                end if;

	        when wachtFA_cnt_rst =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                new_state       <= wachtAA;

            when wachtAA =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtAA_cnt_rst;
		        else
		            new_state <= state;
                end if;

            when wachtAA_cnt_rst =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                new_state       <= enableF4;

            when enableF4 =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
                actBit          <= '1';
                send_reset      <= '0';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                new_state       <= wachtFA;
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= enable;
		        else
		            new_state <= state;
                end if;
            when enableF4_cnt_rst =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                new_state       <= wachtdata;
            when wachtFA2 =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtFA2_cnt_rst;
                else
                    new_state <= state;
                end if;
            when wachtFA2_cnt_rst =>
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                btn_out         <= (others => '0');
                new_state       <= wachtAA;

        end case;
    end process;


end behav;

