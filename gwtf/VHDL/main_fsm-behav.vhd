library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behav of main_fsm is

type mainfsm_state is (reset_state, wachtFA, wachtFA_cnt_rst, wachtAA, wachtAA_cnt_rst, enableF4, enableF4_cnt_rst, wachtFA2, wachtFA2_cnt_rst, data_1, data_1_cnt_rst, data_1_cnt_rst_2, data_2, data_2_cnt_rst, data_2_cnt_rst_2, data_3, data_3_cnt_rst, data_3_cnt_rst_2, handshake_state, handshake_state2);
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
                buttons       <= (others => '0');
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
                buttons         <= (others => '0');
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
                buttons         <= (others => '0');
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
                buttons         <= (others => '0');
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
                buttons         <= (others => '0');
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
                buttons         <= (others => '0');
                new_state       <= wachtFA;
                if(to_integer(unsigned(count15k_in)) >= 11) then
                    new_state <= enableF4_cnt_rst;
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
                buttons         <= (others => '0');
                new_state       <= wachtFA2;
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
                buttons         <= (others => '0');
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
                buttons         <= (others => '0');
                new_state       <= data_1;
	    when data_1 =>
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
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
	    when data_1_cnt_rst => 
		
                cntReset15k	    <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '1';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons(1)      <= data_in(7); --y sign bit 
		buttons(0)      <= data_in(6); --x sign bit 
		buttons(2)      <= data_in(2); --left button
		buttons(3)      <= data_in(4); --middle button 
		buttons(4)      <= data_in(3); --right button
                y_out           <= (others => '0');
                x_out		         <= (others => '0');
		bit11_reg_rst   <= '0';
		new_state <= data_1_cnt_rst_2;

	    when data_1_cnt_rst_2 =>
		cntReset15k	    <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '1';
	
                buttons(1)      <= data_in(7); --y sign bit 
		buttons(0)      <= data_in(6); --x sign bit 
		buttons(2)      <= data_in(2); --left button
		buttons(3)      <= data_in(4); --middle button 
		buttons(4)      <= data_in(3); --right button
		y_out           <= (others => '0');
                x_out		         <= (others => '0');
		bit11_reg_rst   <= '1';
		new_state <= data_2;
                
	    when data_2 =>
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
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
                    new_state <= data_2_cnt_rst;
                else
                    new_state <= state;
                end if;

	   when data_2_cnt_rst => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '1';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
	
		--assuming that least significant bit is data_in(9)
		--data bits are contained in data_in(2 t/m 9)
                buttons				<= (others => '0');
                y_out           <= (others => '0');
                x_out(0)      		<= data_in(2);
		x_out(1)      		<= data_in(3);
		x_out(2)      		<= data_in(4);
		bit11_reg_rst   <= '0';
		new_state		<= data_2_cnt_rst_2;
	    when data_2_cnt_rst_2 =>
		cntReset15k     <= '0';
                actBit          <= '0';
                send_reset      <= '1';
                handshake_out   <= '0';
                x_flipflop      <= '0';
                y_flipflop      <= '0';
                btn_flipflop    <= '0';
	
                buttons 				<= (others => '0');
                y_out           <= (others => '0');
                x_out(0)      		<= data_in(2);
		x_out(1)      		<= data_in(3);
		x_out(2)      		<= data_in(4);
		bit11_reg_rst   <= '1';
		new_state		<= data_3;

	    when data_3 =>
		bit11_reg_rst   <= '0';
                cntReset15k	    <= '0';
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
                    new_state <= data_3_cnt_rst;
                else
                    new_state <= state;
                end if;

		when data_3_cnt_rst => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
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
                y_out(0)      		<= data_in(2);
		y_out(1)      		<= data_in(3);
		y_out(2)      		<= data_in(4);
		bit11_reg_rst   <= '0';

		new_state <= data_3_cnt_rst_2;

		when data_3_cnt_rst_2 => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
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
                y_out(0)      		<= data_in(2);
		y_out(1)      		<= data_in(3);
		y_out(2)      		<= data_in(4);
		bit11_reg_rst   <= '1';

		new_state <= handshake_state;

		when handshake_state => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
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
			new_state <= state;
		end if;

		when handshake_state2 => --maybe we want to add a state to read the data while not reseting the register yet cuz this might give problems. The shit inside processes is sequential tho.
		
                cntReset15k	    <= '1';
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
			new_state <= state;
		end if;
		

        end case;
    end process;


end behav;

