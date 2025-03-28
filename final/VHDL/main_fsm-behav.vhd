library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behav of main_fsm is

type mainfsm_state is (reset_state, sendFF, sendFF_cnt_rst, wachtFA, wachtFA_cnt_rst, wachtAA, wachtAA_cnt_rst, wachtID, wachtID_cnt_rst, enableF4, enableF4_cnt_rst, wachtFA2, wachtFA2_cnt_rst, data_1, delay_1, data_1_cnt_rst, data_1_cnt_rst_2, data_2, delay_2, data_2_cnt_rst, data_2_cnt_rst_2, data_3, delay_3, data_3_cnt_rst, data_3_cnt_rst_2, handshake_state, handshake_state2);
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
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
		actBit          <= '0';
		send_reset      <= '1';
		handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons       <= (others => '0');
                new_state       <= sendFF;
		test <= "00000";			 
	    when sendFF =>
		timerReset <= '1';
		bit11_reg_rst   <= '1';
                cntReset15k	  <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '0';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 12) then --12 want bij send pullen we aan het begin clock nog low dus is er een extra pulse.
                    new_state <= sendFF_cnt_rst;
		        else
		            new_state <= state;
                end if;
		test <= "00001";	
	    when sendFF_cnt_rst =>
		timerReset <= '1';
		bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= wachtFA;
		test <= "00010";	
            when wachtFA =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
		cntReset25M 		<= '0';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtFA_cnt_rst;
		        else
		            new_state <= state;
                end if;
		test <= "00011";	
	     when wachtFA_cnt_rst =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= wachtAA;
		test <= "00100";	
            when wachtAA =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtAA_cnt_rst;
		        else
		            new_state <= state;
                end if;
		test <= "00101";	
            when wachtAA_cnt_rst =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= wachtID;
		test <= "00110";	
	    when wachtID =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtID_cnt_rst;
		        else
		            new_state <= state;
                end if;
		test <= "00111";	
            when wachtID_cnt_rst =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= enableF4;
		test <= "01000";	
            when enableF4 =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '1';
                send_reset      <= '0';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= wachtFA;
                if(to_integer(unsigned(count15k_in)) >= 12) then
                    new_state <= enableF4_cnt_rst;
		        else
		            new_state <= state;
                end if;
		test <= "01001";	
            when enableF4_cnt_rst =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= wachtFA2;
		test <= "01010";	
            when wachtFA2 =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= wachtFA2_cnt_rst;
                else
                    new_state <= state;
                end if;
		test <= "01011";	
            when wachtFA2_cnt_rst =>
		timerReset <= '1';
                bit11_reg_rst   <= '1';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
                new_state       <= data_1;
		test <= "01100";	




	    when data_1 =>
		timerReset <= '0';
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
		if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= data_1_cnt_rst;
                else
                    new_state <= state;
                end if;
		test <= "01101";	

	    when delay_1 =>
		timerReset <= '0';
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
		cntReset25M 		<= '0';
		cntReset25M		<= '0';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
		if(to_integer(unsigned(count25M)) >= 2500) then
                    new_state <= data_1_cnt_rst;
                else
                    new_state <= state;
                end if;
		test <= "01101";	

	    when data_1_cnt_rst => 
		timerReset <= '0';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '1';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
			buttons(0)      <= data_in(5); --y sign bit 
			buttons(1)      <= data_in(4); --x sign bit 
			buttons(2)      <= data_in(9); --left button
			buttons(3)      <= data_in(7); --middle button 
			buttons(4)      <= data_in(8); --right button

                y_out           <= (others => '0');
                x_out		         <= (others => '0');
		bit11_reg_rst   <= '0';
		new_state <= data_1_cnt_rst_2;
		test <= "01110";	
	    when data_1_cnt_rst_2 =>
		timerReset <= '0';
		cntReset15k	    <= '0';
		cntReset25M 		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '1';
	
			buttons(0)      <= data_in(5); --y sign bit 
			buttons(1)      <= data_in(4); --x sign bit 
			buttons(2)      <= data_in(9); --left button
			buttons(3)      <= data_in(7); --middle button 
			buttons(4)      <= data_in(8); --right button
	

		y_out           <= (others => '0');
                x_out		         <= (others => '0');
		bit11_reg_rst   <= '1';
                test <= "01111";	
		new_state <= data_2;

	    when data_2 =>
		timerReset <= '0';
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
		if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= delay_2;
                else
                    new_state <= state;
                end if;
		test <= "10000";	


	    when delay_2 =>
		timerReset <= '0';
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
		cntReset25M 		<= '0';
		cntReset25M		<= '0';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
		if(to_integer(unsigned(count25M)) >= 2500) then
                    new_state <= data_2_cnt_rst;
                else
                    new_state <= state;
                end if;
		test <= "10000";	


	    when data_2_cnt_rst => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '1';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
		timerReset <= '0';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons				<= (others => '0');
                y_out           <= (others => '0');
                if(to_integer(unsigned(mouse_timer)) >= 2500000) then
			if(x_sign = '0') then
			x_out(0)      		<= data_in(6);
			x_out(1)      		<= data_in(5);
			x_out(2)      		<= data_in(4);
			else
			x_out(0)      		<= not(data_in(6));
			x_out(1)      		<= not(data_in(5));
			x_out(2)      		<= not(data_in(4));
			end if;
		else
			x_out           <= (others => '0');
		end if;

		bit11_reg_rst   <= '0';
		new_state		<= data_2_cnt_rst_2;
		test <= "10001";	
	    when data_2_cnt_rst_2 =>
		timerReset <= '0';
		cntReset15k     <= '0';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
	
                buttons 				<= (others => '0');
                y_out           <= (others => '0');
                
		if(to_integer(unsigned(mouse_timer)) >= 2500000) then
			if(x_sign = '0') then
			x_out(0)      		<= data_in(6);
			x_out(1)      		<= data_in(5);
			x_out(2)      		<= data_in(4);
			else
			x_out(0)      		<= not(data_in(6));
			x_out(1)      		<= not(data_in(5));
			x_out(2)      		<= not(data_in(4));
			end if;
		else
			x_out           <= (others => '0');
		end if;

		bit11_reg_rst   <= '1';
		new_state		<= data_3;
		test <= "10010";	
	    when data_3 =>
		timerReset <= '0';
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
		cntReset25M 		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
		if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= delay_3;
                else
                    new_state <= state;
                end if;
		test <= "10011";	


	    when delay_3 =>
		timerReset <= '0';
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
		cntReset25M 		<= '0';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
                x_out           <= (others => '0');
                y_out           <= (others => '0');
                buttons         <= (others => '0');
		if(to_integer(unsigned(count25M)) >= 2500) then
                    new_state <= data_3_cnt_rst;
                else
                    new_state <= state;
                end if;
		test <= "10011";	


		when data_3_cnt_rst => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '1';
                btn_flipflop    <= '0';
		timerReset <= '0';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons				<= (others => '0');
                x_out           <= (others => '0');

		if(to_integer(unsigned(mouse_timer)) >= 2500000) then
                			if(y_sign = '0') then
			y_out(0)      		<= data_in(6);
			y_out(1)      		<= data_in(5);
			y_out(2)      		<= data_in(4);
			else
			y_out(0)      		<= not(data_in(6));
			y_out(1)      		<= not(data_in(5));
			y_out(2)      		<= not(data_in(4));
			end if;
		else
			y_out           <= (others => '0');
		end if;

		bit11_reg_rst   <= '0';

		new_state <= data_3_cnt_rst_2;
		test <= "10100";	
		when data_3_cnt_rst_2 => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '1';
                btn_flipflop    <= '0';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons				<= (others => '0');
                x_out           <= (others => '0');
                
		if(to_integer(unsigned(mouse_timer)) >= 2500000) then
			timerReset <= '1';
                			if(y_sign = '0') then
			y_out(0)      		<= data_in(6);
			y_out(1)      		<= data_in(5);
			y_out(2)      		<= data_in(4);
			else
			y_out(0)      		<= not(data_in(6));
			y_out(1)      		<= not(data_in(5));
			y_out(2)      		<= not(data_in(4));
			end if;
		else
			timerReset <= '0';
			y_out           <= (others => '0');
		end if;

		bit11_reg_rst   <= '1';

		new_state <= handshake_state;
		test <= "10101";	
		when handshake_state => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		timerReset <= '0';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '1';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons				<= (others => '0');
                y_out           <= (others => '0');
                x_out				<= (others => '0');
		bit11_reg_rst   <= '1';

		if(handshake_in = '1') then
			new_state <= handshake_state2 ;
		else
			new_state <= handshake_state2;
		end if;
		test <= "10110";	
		when handshake_state2 => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		timerReset <= '0';
                cntReset15k	    <= '1';
		cntReset25M		<= '1';
		mux_select_main <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons				<= (others => '0');
                y_out           <= (others => '0');
                x_out				<= (others => '0');
		bit11_reg_rst   <= '1';

		if(handshake_in = '0') then
			new_state <= data_1;
		else
			new_state <= data_1;
		end if;
		test <= "10111";	

        end case;
    end process;


end behav;

