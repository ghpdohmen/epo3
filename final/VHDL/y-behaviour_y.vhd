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
constant minimal : integer:= 5 ;
constant maximal : integer:= 13;
signal bound_low: unsigned ( 3 downto 0);

begin
mux: process(handshakemi, locy, tempy)
    begin
    if (clk'event and clk='1') then
    if (handshakemi='1') then
        input_register<=std_logic_vector(locy);
    else
        input_register<=tempy;
    end if;
    end if;
end process;

	
reg: process(clk) 
    begin 
    if (clk'event and clk='1') then
        if (reset='1') then
            tempy<="0101";
        else
            tempy<=locy;
        end if;
    end if;
end process;
	    

		
output_unsigned<= unsigned(tempy);

input_unsigned <= unsigned(dy);

process(dy, output_unsigned, input_unsigned)
begin
    if (dy(3)='0') then
     	--bound_low <= unsigned(input_register) - ('0' & input_unsigned(2 downto 0));
	if((to_integer(unsigned(input_register)) - to_integer(unsigned(dy(1 downto 0)))) < minimal) then
		locy_unsigned <= ("0101");
	else
		locy_unsigned <= unsigned(input_register) - ("00" & input_unsigned(1 downto 0));
	end if;
    else
    	--bound_low<= unsigned(input_register) + ('0' & input_unsigned(2 downto 0));
		if((to_integer(unsigned(input_register)) + to_integer(unsigned(dy(1 downto 0)))) > maximal) then
			locy_unsigned <= "1101";
		else
			locy_unsigned <= (unsigned(input_register) + ("00" & input_unsigned(1 downto 0)));
		end if;
    end if;
end process;

locy <= std_logic_vector(locy_unsigned);

end behaviour_y;
