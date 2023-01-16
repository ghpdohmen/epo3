library IEEE;
use IEEE.std_logic_1164.ALL;

entity edge_detector is
   port(clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic);
end edge_detector;
architecture behav of edge_detector is

   signal reg1 :std_logic;
   signal reg2 :std_logic;

begin

process(clk)
begin
   	if rising_edge(clk) then
      		reg1  <= input;
      		reg2  <= reg1;
  	end if;
end process;

edges <= reg1 and (not reg2); --rising

end behav;
