
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shiftregister_11bit is

  component EDFKCNQD1BWP7T
    port(CP, CN, D, E : in std_logic; Q : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component EDFKCND0BWP7T
    port(CP, CN, D, E : in std_logic; Q, QN : out std_logic);
  end component;

  signal data_out_0_79, data_out_1_80, data_out_2_81, data_out_3_82, data_out_4_83 : std_logic;
  signal data_out_5_84, data_out_6_85, data_out_7_86, data_out_8_87, data_out_9_88 : std_logic;
  signal data_out_10_89, n_0, n_7, n_13, n_19 : std_logic;
  signal n_25, n_31, n_37, n_43, n_49 : std_logic;
  signal n_55, n_61 : std_logic;

begin

  data_out_reg_10 : EDFKCNQD1BWP7T port map(CP => clk, CN => n_0, D => data_out_9_88, E => edge15k, Q => data_out_10_89);
  g38 : INVD1BWP7T port map(I => reset, ZN => n_0);
  drc_bufs50 : INVD4BWP7T port map(I => n_7, ZN => data_out(0));
  drc_bufs56 : INVD4BWP7T port map(I => n_13, ZN => data_out(1));
  drc_bufs62 : INVD4BWP7T port map(I => n_19, ZN => data_out(9));
  drc_bufs68 : INVD4BWP7T port map(I => n_25, ZN => data_out(8));
  drc_bufs74 : INVD4BWP7T port map(I => n_31, ZN => data_out(3));
  drc_bufs80 : INVD4BWP7T port map(I => n_37, ZN => data_out(6));
  drc_bufs86 : INVD4BWP7T port map(I => n_43, ZN => data_out(5));
  drc_bufs92 : INVD4BWP7T port map(I => n_49, ZN => data_out(4));
  drc_bufs98 : INVD4BWP7T port map(I => n_55, ZN => data_out(7));
  drc_bufs104 : INVD4BWP7T port map(I => n_61, ZN => data_out(2));
  drc_bufs109 : BUFFD4BWP7T port map(I => data_out_10_89, Z => data_out(10));
  data_out_reg_0 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_in, E => edge15k, Q => data_out_0_79, QN => n_7);
  data_out_reg_1 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_0_79, E => edge15k, Q => data_out_1_80, QN => n_13);
  data_out_reg_9 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_8_87, E => edge15k, Q => data_out_9_88, QN => n_19);
  data_out_reg_8 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_7_86, E => edge15k, Q => data_out_8_87, QN => n_25);
  data_out_reg_3 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_2_81, E => edge15k, Q => data_out_3_82, QN => n_31);
  data_out_reg_6 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_5_84, E => edge15k, Q => data_out_6_85, QN => n_37);
  data_out_reg_5 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_4_83, E => edge15k, Q => data_out_5_84, QN => n_43);
  data_out_reg_4 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_3_82, E => edge15k, Q => data_out_4_83, QN => n_49);
  data_out_reg_7 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_6_85, E => edge15k, Q => data_out_7_86, QN => n_55);
  data_out_reg_2 : EDFKCND0BWP7T port map(CP => clk, CN => n_0, D => data_out_1_80, E => edge15k, Q => data_out_2_81, QN => n_61);

end synthesised;
