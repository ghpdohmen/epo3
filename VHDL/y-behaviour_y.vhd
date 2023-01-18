library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour_y of y is

type state_type is (idle, increment, ready); 
signal state, next_state: state_type;
signal input_unsigned: unsigned(3 downto 0);
signal output_unsigned: unsigned(3 downto 0);
signal input_register: std_logic_vector( 3 downto 0);
signal locy_unsigned: unsigned(3 downto 0);
signal locy : std_logic_vector(3 downto 0);
signal sel: std_logic;
constant minimal : unsigned ( 3 downto 0):= "0000" ;
constant maximal : unsigned ( 3 downto 0):= "1110";
signal bound_low: unsigned ( 3 downto 0);

begin
reg2: process(clk)
    begin 
    if (clk'event and clk='1') then
        if (reset='1') then
            state<=idle;
        else
            state<=next_state;
        end if;
    end if;
end process;

Handshake: process(handshakemi, state)
    begin 
    case state is 
        when idle => 
            sel<='0';
            handshakeimy<='0';
            if (handshakemi='1') then 
                next_state<=increment;
            else 
                next_state<= idle;
            end if;

        when increment =>
            sel<= '1';
            handshakeimy<= '0';
            next_state<=ready;

        when ready =>
            sel<='0';
            handshakeimy<= '1';
            if (handshakemi='0') then 
                next_state<= idle;
            else 
                next_state<= ready;
            end if;
        end case;
    end process;

mux: process(sel, locy, tempy)
    begin
    if (sel='1') then
        input_register<=std_logic_vector(locy);
    else 
        input_register<=tempy;
    end if;
end process;


reg: process(clk) 
    begin 
    if (clk'event and clk='1') then
        if (reset='1') then
            tempy<="0000";
        else
            tempy<=input_register;
        end if;
    end if;
end process;
output_unsigned<= unsigned(tempy);

input_unsigned <= unsigned(dy);

process(dy, output_unsigned, input_unsigned)
begin
    if (dy(3)='1') then
     	bound_low <= unsigned(input_register) - ('0' & input_unsigned(2 downto 0));
	if(bound_low < minimal) then
		locy_unsigned <= minimal;
	else
		locy_unsigned <= bound_low;
	end if;
    else
    	bound_low<= unsigned(input_register) + ('0' & input_unsigned(2 downto 0));
		if(bound_low > maximal) then
			locy_unsigned <= maximal;
		else
			locy_unsigned <= bound_low;
		end if;
    end if;
end process;

locy <= std_logic_vector(locy_unsigned);

end behaviour_y;

