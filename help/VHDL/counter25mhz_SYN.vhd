
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of counter25mhz is

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFKCND0BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal count : std_logic_vector(11 downto 0);
  signal n_4, n_6, n_7, n_9, n_10 : std_logic;
  signal n_12, n_13, n_15, n_16, n_18 : std_logic;
  signal n_19, n_20, n_21, n_22, n_23 : std_logic;
  signal n_25, n_27, n_29, n_31, n_34 : std_logic;
  signal n_35, n_36, n_37, n_40, n_46 : std_logic;
  signal n_52, n_58 : std_logic;

begin

  g213 : IND2D1BWP7T port map(A1 => n_27, B1 => count_out(10), ZN => n_29);
  g216 : IND2D1BWP7T port map(A1 => n_25, B1 => count_out(9), ZN => n_27);
  count_reg_7 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_22, Q => count(7));
  count_reg_6 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_20, Q => count(6));
  g219 : IND2D1BWP7T port map(A1 => n_23, B1 => count_out(8), ZN => n_25);
  g221 : MOAI22D0BWP7T port map(A1 => n_21, A2 => count(7), B1 => n_21, B2 => count(7), ZN => n_22);
  count_reg_5 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_18, Q => count(5));
  g222 : IND2D1BWP7T port map(A1 => n_21, B1 => count(7), ZN => n_23);
  g224 : MOAI22D0BWP7T port map(A1 => n_19, A2 => count(6), B1 => n_19, B2 => count(6), ZN => n_20);
  g225 : IND2D1BWP7T port map(A1 => n_19, B1 => count(6), ZN => n_21);
  count_reg_4 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_15, Q => count(4));
  g227 : MOAI22D0BWP7T port map(A1 => n_16, A2 => count_out(5), B1 => n_16, B2 => count_out(5), ZN => n_18);
  count_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_12, Q => count(3));
  g228 : IND2D1BWP7T port map(A1 => n_16, B1 => count(5), ZN => n_19);
  g230 : MOAI22D0BWP7T port map(A1 => n_13, A2 => count_out(4), B1 => n_13, B2 => count_out(4), ZN => n_15);
  count_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_6, Q => count(2));
  count_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => n_31, D => n_9, Q => count(1));
  g231 : IND2D1BWP7T port map(A1 => n_13, B1 => count(4), ZN => n_16);
  g233 : MOAI22D0BWP7T port map(A1 => n_10, A2 => count_out(3), B1 => n_10, B2 => count_out(3), ZN => n_12);
  g234 : IND2D1BWP7T port map(A1 => n_10, B1 => count(3), ZN => n_13);
  g239 : MOAI22D0BWP7T port map(A1 => n_7, A2 => count_out(1), B1 => n_7, B2 => count_out(1), ZN => n_9);
  g236 : MOAI22D0BWP7T port map(A1 => n_4, A2 => count_out(2), B1 => n_4, B2 => count_out(2), ZN => n_6);
  g237 : IND2D1BWP7T port map(A1 => n_4, B1 => count(2), ZN => n_10);
  g240 : ND2D1BWP7T port map(A1 => count(0), A2 => count(1), ZN => n_4);
  g250 : BUFFD4BWP7T port map(I => count(0), Z => count_out(0));
  g241 : BUFFD4BWP7T port map(I => count(6), Z => count_out(6));
  g242 : BUFFD4BWP7T port map(I => count(2), Z => count_out(2));
  g246 : BUFFD4BWP7T port map(I => count(5), Z => count_out(5));
  g243 : BUFFD4BWP7T port map(I => count(7), Z => count_out(7));
  g244 : BUFFD4BWP7T port map(I => count(3), Z => count_out(3));
  g248 : BUFFD4BWP7T port map(I => count(4), Z => count_out(4));
  g247 : BUFFD4BWP7T port map(I => count(1), Z => count_out(1));
  g245 : INVD1BWP7T port map(I => reset, ZN => n_31);
  g2 : XNR2D1BWP7T port map(A1 => n_29, A2 => count(11), ZN => n_34);
  g264 : XNR2D1BWP7T port map(A1 => n_27, A2 => count(10), ZN => n_35);
  g265 : XNR2D1BWP7T port map(A1 => n_25, A2 => count(9), ZN => n_36);
  g266 : XNR2D1BWP7T port map(A1 => n_23, A2 => count(8), ZN => n_37);
  drc_bufs267 : INVD4BWP7T port map(I => n_40, ZN => count_out(8));
  drc_bufs273 : INVD4BWP7T port map(I => n_46, ZN => count_out(9));
  drc_bufs279 : INVD4BWP7T port map(I => n_52, ZN => count_out(10));
  drc_bufs285 : INVD4BWP7T port map(I => n_58, ZN => count_out(11));
  count_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => n_31, D => n_7, Q => count(0), QN => n_7);
  count_reg_8 : DFKCND0BWP7T port map(CP => clk, CN => n_31, D => n_37, Q => count(8), QN => n_40);
  count_reg_9 : DFKCND0BWP7T port map(CP => clk, CN => n_31, D => n_36, Q => count(9), QN => n_46);
  count_reg_10 : DFKCND0BWP7T port map(CP => clk, CN => n_31, D => n_35, Q => count(10), QN => n_52);
  count_reg_11 : DFKCND0BWP7T port map(CP => clk, CN => n_31, D => n_34, Q => count(11), QN => n_58);

end synthesised;
