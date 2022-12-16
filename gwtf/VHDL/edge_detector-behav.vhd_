library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of edge_detector is

   signal reg1 :std_logic;
   signal reg2 :std_logic;

begin

process(clk)
begin
   	if rising_edge(clk) then
      		reg1  <= clk15k;
      		reg2  <= reg1;
  	end if;
end process;

edge15k <= reg1 and (not reg2);

end behav;

