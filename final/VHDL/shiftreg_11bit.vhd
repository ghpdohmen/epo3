library IEEE;
use IEEE.std_logic_1164.ALL;

entity shiftregister_11bit is
    port (
        clk:        in std_logic;
	edge15k:	   in	std_logic;
        data_in:    in std_logic;
        reset:      in std_logic;
        data_out:   buffer std_logic_vector(10 downto 0)
    );
end shiftregister_11bit;

