library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behav of edge_debounce is

 

   type debounce_state is (reset_state, edge, debounce, count_reset);

   signal state, new_state : debounce_state;

 

   signal reg1 :std_logic;

   signal reg2 :std_logic;

 

begin

 

    process(clk,reset) begin

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

                        if(rising_edge(clk)) then     
                              reg1  <= input;
                              reg2  <= reg1;
			end if;

                              counter_reset <= '0';

                              edges <= '0';

 

                              if(reg1 = '1' and reg2 = '0') then

                                             new_state <= edge;

                              else

                                             new_state <= state;

                              end if;

 

                   when edge =>

                              reg1 <= '0';

                              reg2 <= '0';

                              edges <= '1';

                              counter_reset <= '0';

                              new_state <= debounce;

 

                   when debounce =>

                              reg1 <= '0';

                              reg2 <= '0';

                              edges <= '0';

                              if(to_integer(unsigned(count)) >= 250) then--10us

                                             new_state <= count_reset;

                              else

                                             new_state <= state;

                              end if;

 

                   when count_reset =>

                              reg1 <= '0';

                              reg2 <= '0';

                              edges <= '0';

                              counter_reset <= '1';

                              new_state <= reset_state;

               end case;

    end process;

 

    --edges <= reg1 and (not reg2);

              

                             
end behav;
               

