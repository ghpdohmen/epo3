library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour of x is
type state_type is (idle, increment, ready); 
signal state, next_state: state_type;
signal input_signed: signed(3 downto 0);
signal output_signed: signed(3 downto 0);
signal input_register: std_logic_vector( 3 downto 0);
signal locx_signed: signed(3 downto 0);
signal locx : std_logic_vector(3 downto 0);
signal sel: std_logic;

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
            handshakeim<='0';
            if (handshakemi='1') then 
                next_state<=increment;
            else 
                next_state<= idle;
            end if;

        when increment =>
            sel<= '1';
            handshakeim<= '0';
            next_state<=ready;

        when ready =>
            sel<='0';
            handshakeim<= '1';
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
output_signed<= signed(tempx);

input_signed <= signed(dx);

process(dx, output_signed, input_signed)
begin
    if (dx(3)='1') then
     	locx_signed <= signed(input_register) - ('0' & input_signed(2 downto 0));
	
    else
    	locx_signed<= signed(input_register) + ('0' & input_signed(2 downto 0));
    end if;
end process;

locx <= std_logic_vector(locx_signed);
end behaviour;

