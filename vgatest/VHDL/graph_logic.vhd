library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity graph_logic is
port (
    clk: in std_logic;
    reset: in std_logic;
    -- INPUTS
    --vga
    logic_h_32_minis: in std_logic;
    logic_v_32_minis: in std_logic;
    minis_enable: in std_logic;
    --logic 1 of iets anders???
    logic_x: in std_logic_vector (3 downto 0); -- dit komt van input logic
    logic_y: in std_logic_vector (3 downto 0);
    loaded_colour: in std_logic_vector (2 downto 0);
    --opslag
    logic_ram_colour: in std_logic_vector (2 downto 0);
    logic_rom_colour: in std_logic_vector (1 downto 0);
    -- external
    --logic_ext_colour: in std_logic_vector (2 downto 0);
    --OUTPUTS
    --naar VGA
    logic_vga_colour: out std_logic_vector (2 downto 0);
    --naar opslag
    logic_x_asked: out std_logic_vector (3 downto 0);
    logic_y_asked: out std_logic_vector (3 downto 0);
    logic_e_asked: out std_logic_vector (9 downto 0)
    --external
    --logic_enable_count: out std_logic_vector (9 downto 0);
);
end;
