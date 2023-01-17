library IEEE;
use IEEE.std_logic_1164.ALL;

entity mux is
   port(mux_select : in  std_logic;
        muxFSM     : in  std_logic;
        muxReg     : in  std_logic;
	dataSwitch	: out 	std_logic);
end mux;

