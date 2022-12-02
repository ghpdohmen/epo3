library IEEE;
use IEEE.std_logic_1164.ALL;

entity input is
   port(mouseX        : out std_logic_vector(2 downto 0);
        signX         : out std_logic;
        mouseY        : out std_logic_vector(2 downto 0);
        signY         : out std_logic;
        LMB           : out std_logic;
        RMB           : out std_logic;
        MMB           : out std_logic;
        Handshake_out : out std_logic;
        DataSwitch    : out std_logic;
        ClkSwitch     : out std_logic;
        Handshake_in  : in  std_logic;
        Data_in       : in  std_logic;
        Clk15k        : in  std_logic;
        clk           : in  std_logic;
        reset         : in  std_logic);
end input;

