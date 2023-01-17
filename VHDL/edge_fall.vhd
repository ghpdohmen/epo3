library IEEE;
use IEEE.std_logic_1164.ALL;

entity edge_det_fall is
   port(clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic);
end edge_det_fall;
architecture behav of edge_det_fall is

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

edges <= not(reg1) and  reg2; --falling

end behav;