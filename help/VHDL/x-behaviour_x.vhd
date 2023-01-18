library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behaviour_x of x is

type state_type is (idle, increment, ready); 
signal state, next_state: state_type;
signal input_unsigned: unsigned(3 downto 0);
signal output_unsigned: unsigned(3 downto 0);
signal input_register: std_logic_vector( 3 downto 0);
signal locx_unsigned: unsigned(3 downto 0);
signal locx : std_logic_vector(3 downto 0);
signal sel: std_logic;
constant minimal : integer:= 0 ;
constant maximal : integer:= 14;
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
            handshakeimx<='0';
            if (handshakemi='1') then 
                next_state<=increment;
            else 
                next_state<= idle;
            end if;

        when increment =>
            sel<= '1';
            handshakeimx<= '0';
            next_state<=ready;

        when ready =>
            sel<='0';
            handshakeimx<= '1';
            if (handshakemi='0') then 
                next_state<= idle;
            else 
                next_state<= ready;
            end if;
        end case;
    end process;

mux: process(sel, locx, tempx)
    begin
    if (sel='1') then
        input_register<=std_logic_vector(locx);
    else 
        input_register<=tempx;
    end if;
end process;


reg: process(clk) 
    begin 
    if (clk'event and clk='1') then
        if (reset='1') then
            tempx<="0000";
        else
            tempx<=input_register;
        end if;
    end if;
end process;
output_unsigned<= unsigned(tempx);

input_unsigned <= unsigned(dx);

process(dx, output_unsigned, input_unsigned)
begin
    if (dx(3)='1') then
     	--bound_low <= unsigned(input_register) - ('0' & input_unsigned(2 downto 0));
	if((to_integer(unsigned(input_register))-to_integer(unsigned(dx(2 downto 0))))< minimal) then
		locx_unsigned <= (others=>'0');
	else
		locx_unsigned <= unsigned(input_register)-('0' & input_unsigned(2 downto 0));
	end if;
    else
    	--bound_low<= unsigned(input_register) + ('0' & input_unsigned(2 downto 0));
		if((to_integer(unsigned(input_register)) + to_integer(unsigned(dx(2 downto 0)))) > maximal) then
			locx_unsigned <= "1110";
		else
			locx_unsigned <= unsigned(input_register) + ('0' & input_unsigned(2 downto 0));
		end if;
    end if;
	    	    
end process;

locx <= std_logic_vector(locx_unsigned);

end behaviour_x;
