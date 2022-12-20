
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of mouse is

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(EN, D : in std_logic; Q : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AN4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component DFXQD1BWP7T
    port(CP, DA, DB, SA : in std_logic; Q : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AN3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component INR4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component IINR4D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OA221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component AOI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OA32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component EDFQD0BWP7T
    port(CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component AO32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  signal sfsm_new_state : std_logic_vector(1 downto 0);
  signal sfsm_state : std_logic_vector(1 downto 0);
  signal count25M : std_logic_vector(11 downto 0);
  signal sr_new_new_data : std_logic_vector(8 downto 0);
  signal mouse_x : std_logic_vector(2 downto 0);
  signal data_sr_11bit : std_logic_vector(10 downto 0);
  signal btns : std_logic_vector(4 downto 0);
  signal mfsm_state : std_logic_vector(4 downto 0);
  signal mouse_y : std_logic_vector(2 downto 0);
  signal count15k : std_logic_vector(3 downto 0);
  signal cnt_count : std_logic_vector(11 downto 0);
  signal UNCONNECTED, actBit, btnflipfloprst, cntReset15K, cntReset25M : std_logic;
  signal cnt_n_0, cnt_n_1, cnt_n_2, cnt_n_3, cnt_n_4 : std_logic;
  signal cnt_n_5, cnt_n_6, cnt_n_7, cnt_n_8, cnt_n_9 : std_logic;
  signal cnt_n_10, cnt_n_11, cnt_n_12, cnt_n_13, cnt_n_14 : std_logic;
  signal cnt_n_15, cnt_n_16, cnt_n_17, cnt_n_18, cnt_n_19 : std_logic;
  signal cnt_n_20, cnt_n_21, ed_n_0, ed_reg1, ed_reg2 : std_logic;
  signal flipflop1_Q_9, flipflop2_Q_9, flipflop3_Q_9, flipflop4_Q_9, flipflop5_Q_9 : std_logic;
  signal flipflop6_Q_9, flipflop7_Q_9, flipflop8_Q_9, flipflop9_Q_9, flipflop10_Q_9 : std_logic;
  signal flipflop11_Q_9, mfsm_n_0, mfsm_n_1, mfsm_n_2, mfsm_n_3 : std_logic;
  signal mfsm_n_4, mfsm_n_5, mfsm_n_6, mfsm_n_7, mfsm_n_8 : std_logic;
  signal mfsm_n_9, mfsm_n_10, mfsm_n_11, mfsm_n_12, mfsm_n_13 : std_logic;
  signal mfsm_n_14, mfsm_n_15, mfsm_n_16, mfsm_n_17, mfsm_n_18 : std_logic;
  signal mfsm_n_19, mfsm_n_20, mfsm_n_21, mfsm_n_22, mfsm_n_23 : std_logic;
  signal mfsm_n_24, mfsm_n_25, mfsm_n_26, mfsm_n_27, mfsm_n_28 : std_logic;
  signal mfsm_n_29, mfsm_n_30, mfsm_n_31, mfsm_n_32, mfsm_n_33 : std_logic;
  signal mfsm_n_34, mfsm_n_35, mfsm_n_36, mfsm_n_37, mfsm_n_38 : std_logic;
  signal mfsm_n_39, mfsm_n_40, mfsm_n_42, mfsm_n_43, mfsm_n_44 : std_logic;
  signal mfsm_n_45, mfsm_n_46, mfsm_n_47, mfsm_n_75, muxReg : std_logic;
  signal mux_select, mx_n_0, mx_n_1, n_0, n_1 : std_logic;
  signal n_2, n_3, n_4, n_5, n_6 : std_logic;
  signal n_7, n_8, n_9, n_10, n_11 : std_logic;
  signal n_12, n_13, n_14, n_15, n_16 : std_logic;
  signal n_17, n_18, n_19, n_20, n_21 : std_logic;
  signal n_22, n_23, n_24, n_26, n_27 : std_logic;
  signal output_edgedet, sr11_data_out_0_70, sr11_data_out_1_71, sr11_data_out_5_75, sr11_n_0 : std_logic;
  signal sr11_n_1, sr11_n_2, sr11_n_3, sr11_n_4, sr11_n_5 : std_logic;
  signal sr11_n_6, sr11_n_7, sr11_n_8, sr11_n_9, tb_n_0 : std_logic;
  signal tb_n_1, tb_n_3, tb_n_4, tb_n_5, tb_n_6 : std_logic;
  signal tb_n_7, tb_n_8, tb_n_9, tb_n_10, tb_n_11 : std_logic;
  signal tb_n_12, tb_n_13, xflipfloprst, yflipfloprst : std_logic;

begin

  g292 : CKND1BWP7T port map(I => n_27, ZN => n_24);
  sfsm_new_state_reg_1 : LNQD1BWP7T port map(EN => n_26, D => n_23, Q => sfsm_new_state(1));
  sfsm_new_state_reg_0 : LNQD1BWP7T port map(EN => n_26, D => n_22, Q => sfsm_new_state(0));
  g496 : AO21D0BWP7T port map(A1 => n_21, A2 => sfsm_state(0), B => sfsm_state(1), Z => n_23);
  g497 : OAI22D0BWP7T port map(A1 => n_21, A2 => n_13, B1 => n_15, B2 => sfsm_state(0), ZN => n_22);
  g498 : NR2D0BWP7T port map(A1 => n_20, A2 => n_18, ZN => n_21);
  g499 : OAI31D0BWP7T port map(A1 => count25M(6), A2 => n_16, A3 => n_19, B => count25M(11), ZN => n_20);
  g500 : AN4D1BWP7T port map(A1 => n_17, A2 => count25M(1), A3 => count25M(2), A4 => count25M(3), Z => n_19);
  g501 : OAI22D0BWP7T port map(A1 => n_16, A2 => count25M(7), B1 => count25M(10), B2 => count25M(9), ZN => n_18);
  g502 : NR2XD0BWP7T port map(A1 => sfsm_state(1), A2 => sfsm_state(0), ZN => cntReset25M);
  g503 : ND2D1BWP7T port map(A1 => n_13, A2 => sfsm_state(1), ZN => n_27);
  g504 : AN2D1BWP7T port map(A1 => count25M(4), A2 => count25M(5), Z => n_17);
  g505 : AN2D4BWP7T port map(A1 => n_14, A2 => sfsm_state(0), Z => ClkSwitch);
  g506 : NR2D0BWP7T port map(A1 => actBit, A2 => sfsm_state(1), ZN => n_15);
  g507 : OR2D0BWP7T port map(A1 => count25M(10), A2 => count25M(8), Z => n_16);
  g508 : AN2D0BWP7T port map(A1 => sfsm_state(1), A2 => sfsm_state(0), Z => n_26);
  sr_new_new_data_reg_1 : DFQD1BWP7T port map(CP => clk, D => n_11, Q => sr_new_new_data(1));
  sr_new_new_data_reg_2 : DFQD1BWP7T port map(CP => clk, D => n_10, Q => sr_new_new_data(2));
  sr_new_new_data_reg_4 : DFQD1BWP7T port map(CP => clk, D => n_12, Q => sr_new_new_data(4));
  sr_new_new_data_reg_3 : DFXQD1BWP7T port map(CP => clk, DA => n_2, DB => sr_new_new_data(3), SA => output_edgedet, Q => sr_new_new_data(3));
  sr_new_new_data_reg_6 : DFQD1BWP7T port map(CP => clk, D => n_5, Q => sr_new_new_data(6));
  sr_new_new_data_reg_5 : DFQD1BWP7T port map(CP => clk, D => n_6, Q => sr_new_new_data(5));
  sr_new_new_data_reg_8 : DFQD1BWP7T port map(CP => clk, D => n_7, Q => muxReg);
  sr_new_new_data_reg_7 : DFQD1BWP7T port map(CP => clk, D => n_4, Q => sr_new_new_data(7));
  g564 : AO221D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(3), B1 => sr_new_new_data(4), B2 => n_0, C => n_9, Z => n_12);
  g565 : AO221D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(0), B1 => sr_new_new_data(1), B2 => n_0, C => n_9, Z => n_11);
  g566 : AO221D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(1), B1 => sr_new_new_data(2), B2 => n_0, C => n_9, Z => n_10);
  sr_new_new_data_reg_0 : DFQD1BWP7T port map(CP => clk, D => n_8, Q => sr_new_new_data(0));
  g568 : IOA21D1BWP7T port map(A1 => sr_new_new_data(0), A2 => n_0, B => n_3, ZN => n_8);
  g569 : AO22D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(7), B1 => n_0, B2 => muxReg, Z => n_7);
  g571 : AO22D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(4), B1 => n_0, B2 => sr_new_new_data(5), Z => n_6);
  g572 : AO22D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(5), B1 => n_0, B2 => sr_new_new_data(6), Z => n_5);
  g573 : AO22D0BWP7T port map(A1 => n_1, A2 => sr_new_new_data(6), B1 => n_0, B2 => sr_new_new_data(7), Z => n_4);
  g576 : AN3D0BWP7T port map(A1 => sfsm_state(0), A2 => sfsm_state(1), A3 => sr_new_new_data(2), Z => n_2);
  g577 : IND3D1BWP7T port map(A1 => n_27, B1 => output_edgedet, B2 => actBit, ZN => n_3);
  g578 : AN2D1BWP7T port map(A1 => n_26, A2 => output_edgedet, Z => n_1);
  g579 : INVD1BWP7T port map(I => output_edgedet, ZN => n_0);
  g580 : INVD0BWP7T port map(I => n_3, ZN => n_9);
  sfsm_state_reg_1 : DFKCND1BWP7T port map(CP => clk, CN => sfsm_new_state(1), D => actBit, Q => sfsm_state(1), QN => n_14);
  sfsm_state_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => sfsm_new_state(0), D => actBit, Q => sfsm_state(0), QN => n_13);
  ed_g12 : NR2XD0BWP7T port map(A1 => ed_n_0, A2 => ed_reg2, ZN => output_edgedet);
  ed_reg2_reg : DFQD1BWP7T port map(CP => clk, D => ed_reg1, Q => ed_reg2);
  ed_reg1_reg : DFD1BWP7T port map(CP => clk, D => Clk15k, Q => ed_reg1, QN => ed_n_0);
  mfsm_x_out_reg_2 : LNQD1BWP7T port map(EN => mfsm_n_47, D => mfsm_n_44, Q => mouse_x(2));
  mfsm_x_out_reg_1 : LNQD1BWP7T port map(EN => mfsm_n_47, D => mfsm_n_45, Q => mouse_x(1));
  mfsm_x_out_reg_0 : LNQD1BWP7T port map(EN => mfsm_n_47, D => mfsm_n_46, Q => mouse_x(0));
  mfsm_g1612 : AN2D1BWP7T port map(A1 => xflipfloprst, A2 => data_sr_11bit(2), Z => mfsm_n_46);
  mfsm_g1613 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(6), Z => btns(0));
  mfsm_g1614 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(7), Z => btns(1));
  mfsm_g1615 : AN2D1BWP7T port map(A1 => xflipfloprst, A2 => data_sr_11bit(3), Z => mfsm_n_45);
  mfsm_g1616 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(4), Z => btns(3));
  mfsm_g1617 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(3), Z => btns(4));
  mfsm_g1618 : AN2D1BWP7T port map(A1 => xflipfloprst, A2 => data_sr_11bit(4), Z => mfsm_n_44);
  mfsm_g1619 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(2), Z => btns(2));
  mfsm_g1620 : AO211D0BWP7T port map(A1 => mfsm_n_42, A2 => mfsm_n_1, B => xflipfloprst, C => mfsm_state(4), Z => cntReset15K);
  mfsm_g1621 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(4), Z => mouse_y(2));
  mfsm_g1622 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(3), Z => mouse_y(1));
  mfsm_g1623 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(2), Z => mouse_y(0));
  mfsm_g1624 : INR4D0BWP7T port map(A1 => mfsm_state(2), B1 => mfsm_state(3), B2 => mfsm_state(1), B3 => mfsm_n_1, ZN => actBit);
  mfsm_g1625 : NR3D0BWP7T port map(A1 => mfsm_n_43, A2 => mfsm_state(2), A3 => mfsm_state(3), ZN => mfsm_n_47);
  mfsm_g1626 : NR3D0BWP7T port map(A1 => mfsm_n_42, A2 => mfsm_n_1, A3 => mfsm_state(1), ZN => xflipfloprst);
  mfsm_g1627 : IINR4D0BWP7T port map(A1 => mfsm_state(1), A2 => mfsm_state(3), B1 => mfsm_state(0), B2 => mfsm_state(2), ZN => btnflipfloprst);
  mfsm_g1628 : INVD0BWP7T port map(I => yflipfloprst, ZN => mfsm_n_43);
  mfsm_g1629 : INR2XD0BWP7T port map(A1 => mfsm_state(4), B1 => mfsm_n_75, ZN => yflipfloprst);
  mfsm_g1630 : AN2D4BWP7T port map(A1 => mfsm_state(0), A2 => mfsm_state(4), Z => Handshake_out);
  mfsm_g1631 : ND2D1BWP7T port map(A1 => mfsm_state(3), A2 => mfsm_state(2), ZN => mfsm_n_42);
  mfsm_g1632 : IND2D1BWP7T port map(A1 => mfsm_state(1), B1 => mfsm_n_1, ZN => mfsm_n_75);
  mfsm_state_reg_1 : DFQD1BWP7T port map(CP => clk, D => mfsm_n_39, Q => mfsm_state(1));
  mfsm_g2089 : OAI22D0BWP7T port map(A1 => mfsm_n_37, A2 => reset, B1 => mfsm_n_26, B2 => mfsm_state(2), ZN => mfsm_n_40);
  mfsm_state_reg_3 : DFQD1BWP7T port map(CP => clk, D => mfsm_n_38, Q => mfsm_state(3));
  mfsm_g2093 : OAI221D0BWP7T port map(A1 => mfsm_n_32, A2 => reset, B1 => mfsm_n_8, B2 => mfsm_n_23, C => mfsm_n_27, ZN => mfsm_n_39);
  mfsm_g2094 : MOAI22D0BWP7T port map(A1 => mfsm_n_35, A2 => mfsm_state(3), B1 => mfsm_n_33, B2 => mfsm_n_4, ZN => mfsm_n_38);
  mfsm_g2095 : AOI211XD0BWP7T port map(A1 => mfsm_n_24, A2 => mfsm_state(4), B => mfsm_n_29, C => mfsm_n_30, ZN => mfsm_n_37);
  mfsm_g2096 : OAI22D0BWP7T port map(A1 => mfsm_n_31, A2 => mfsm_n_8, B1 => mfsm_n_33, B2 => mfsm_n_5, ZN => mfsm_n_36);
  mfsm_g2097 : AOI31D0BWP7T port map(A1 => mfsm_n_22, A2 => mfsm_state(2), A3 => mfsm_n_2, B => mfsm_n_12, ZN => mfsm_n_35);
  mfsm_g2098 : MOAI22D0BWP7T port map(A1 => mfsm_n_28, A2 => mfsm_n_0, B1 => mfsm_n_22, B2 => mfsm_n_0, ZN => mfsm_n_34);
  mfsm_g2099 : OA221D0BWP7T port map(A1 => mfsm_n_20, A2 => mfsm_n_11, B1 => mfsm_n_3, B2 => mfsm_n_6, C => mfsm_n_25, Z => mfsm_n_32);
  mfsm_g2100 : ND2D1BWP7T port map(A1 => mfsm_n_28, A2 => mfsm_state(2), ZN => mfsm_n_33);
  mfsm_g2101 : AOI211D1BWP7T port map(A1 => mfsm_n_18, A2 => mfsm_state(3), B => mfsm_n_7, C => mfsm_state(0), ZN => mfsm_n_31);
  mfsm_g2102 : OAI32D1BWP7T port map(A1 => mfsm_state(3), A2 => mfsm_n_13, A3 => mfsm_n_17, B1 => mfsm_n_6, B2 => mfsm_n_19, ZN => mfsm_n_30);
  mfsm_g2103 : OAI32D1BWP7T port map(A1 => mfsm_state(2), A2 => mfsm_state(4), A3 => mfsm_n_16, B1 => mfsm_state(0), B2 => mfsm_n_20, ZN => mfsm_n_29);
  mfsm_g2104 : ND3D0BWP7T port map(A1 => mfsm_n_18, A2 => mfsm_n_4, A3 => mfsm_state(0), ZN => mfsm_n_27);
  mfsm_g2105 : OA32D1BWP7T port map(A1 => mfsm_state(1), A2 => mfsm_n_5, A3 => mfsm_n_14, B1 => mfsm_n_8, B2 => mfsm_n_21, Z => mfsm_n_26);
  mfsm_g2106 : CKAN2D1BWP7T port map(A1 => mfsm_n_22, A2 => mfsm_n_3, Z => mfsm_n_28);
  mfsm_g2107 : AOI32D1BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_n_3, A3 => mfsm_state(1), B1 => mfsm_n_75, B2 => mfsm_n_9, ZN => mfsm_n_25);
  mfsm_g2108 : OAI22D0BWP7T port map(A1 => mfsm_n_21, A2 => mfsm_n_15, B1 => mfsm_n_1, B2 => Handshake_in, ZN => mfsm_n_24);
  mfsm_g2109 : OAI22D0BWP7T port map(A1 => mfsm_n_16, A2 => mfsm_state(1), B1 => mfsm_state(2), B2 => mfsm_state(3), ZN => mfsm_n_23);
  mfsm_g2110 : CKAN2D1BWP7T port map(A1 => mfsm_n_16, A2 => mfsm_state(1), Z => mfsm_n_22);
  mfsm_g2111 : INVD1BWP7T port map(I => mfsm_n_19, ZN => mfsm_n_20);
  mfsm_g2112 : INR2D1BWP7T port map(A1 => Handshake_in, B1 => mfsm_n_11, ZN => mfsm_n_21);
  mfsm_g2113 : NR2XD0BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_state(4), ZN => mfsm_n_19);
  mfsm_g2114 : INVD0BWP7T port map(I => mfsm_n_17, ZN => mfsm_n_18);
  mfsm_g2115 : ND2D1BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_state(2), ZN => mfsm_n_17);
  mfsm_g2116 : NR2XD0BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_n_1, ZN => mfsm_n_16);
  mfsm_g2117 : INVD0BWP7T port map(I => mfsm_n_15, ZN => mfsm_n_14);
  mfsm_g2118 : IND2D1BWP7T port map(A1 => mfsm_n_10, B1 => count15k(3), ZN => mfsm_n_15);
  mfsm_g2119 : AN2D0BWP7T port map(A1 => mfsm_n_9, A2 => mfsm_state(1), Z => mfsm_n_13);
  mfsm_g2120 : NR2D0BWP7T port map(A1 => mfsm_n_8, A2 => mfsm_n_7, ZN => mfsm_n_12);
  mfsm_g2121 : AOI21D0BWP7T port map(A1 => count15k(0), A2 => count15k(1), B => count15k(2), ZN => mfsm_n_10);
  mfsm_g2122 : OAI21D0BWP7T port map(A1 => mfsm_state(1), A2 => mfsm_state(0), B => mfsm_n_6, ZN => mfsm_n_11);
  mfsm_g2123 : INR2D1BWP7T port map(A1 => Handshake_in, B1 => mfsm_n_3, ZN => mfsm_n_9);
  mfsm_g2124 : ND2D1BWP7T port map(A1 => mfsm_state(4), A2 => mfsm_n_2, ZN => mfsm_n_8);
  mfsm_g2125 : INVD0BWP7T port map(I => mfsm_n_5, ZN => mfsm_n_4);
  mfsm_g2126 : IND2D1BWP7T port map(A1 => Handshake_in, B1 => mfsm_state(1), ZN => mfsm_n_7);
  mfsm_g2127 : ND2D1BWP7T port map(A1 => mfsm_state(1), A2 => mfsm_state(0), ZN => mfsm_n_6);
  mfsm_g2128 : ND2D1BWP7T port map(A1 => mfsm_state(3), A2 => mfsm_n_2, ZN => mfsm_n_5);
  mfsm_g2136 : INVD1BWP7T port map(I => reset, ZN => mfsm_n_2);
  mfsm_state_reg_0 : DFD1BWP7T port map(CP => clk, D => mfsm_n_40, Q => mfsm_state(0), QN => mfsm_n_1);
  mfsm_state_reg_4 : DFD1BWP7T port map(CP => clk, D => mfsm_n_36, Q => mfsm_state(4), QN => mfsm_n_3);
  mfsm_state_reg_2 : DFKCND1BWP7T port map(CP => clk, CN => mfsm_n_2, D => mfsm_n_34, Q => mfsm_state(2), QN => mfsm_n_0);
  flipflop1_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_x(2), E => xflipfloprst, Q => flipflop1_Q_9);
  flipflop1_drc_bufs : BUFFD4BWP7T port map(I => flipflop1_Q_9, Z => mouseX(2));
  flipflop10_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(1), E => btnflipfloprst, Q => flipflop10_Q_9);
  flipflop10_drc_bufs : BUFFD4BWP7T port map(I => flipflop10_Q_9, Z => buttons(1));
  tb_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => tb_n_13, Q => count15k(3));
  tb_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => tb_n_12, Q => count15k(2));
  tb_g272 : AO32D1BWP7T port map(A1 => tb_n_9, A2 => count15k(2), A3 => count15k(1), B1 => tb_n_11, B2 => count15k(3), Z => tb_n_13);
  tb_g274 : OAI31D0BWP7T port map(A1 => count15k(2), A2 => tb_n_1, A3 => tb_n_6, B => tb_n_0, ZN => tb_n_12);
  tb_g277 : OAI21D0BWP7T port map(A1 => cntReset15K, A2 => count15k(2), B => tb_n_8, ZN => tb_n_11);
  tb_g278 : MOAI22D0BWP7T port map(A1 => tb_n_6, A2 => count15k(1), B1 => tb_n_5, B2 => count15k(1), ZN => tb_n_10);
  tb_g279 : NR2XD0BWP7T port map(A1 => tb_n_6, A2 => count15k(3), ZN => tb_n_9);
  tb_g281 : OAI22D0BWP7T port map(A1 => cntReset15K, A2 => tb_n_4, B1 => tb_n_3, B2 => output_edgedet, ZN => tb_n_7);
  tb_g282 : IAO21D0BWP7T port map(A1 => cntReset15K, A2 => count15k(1), B => tb_n_5, ZN => tb_n_8);
  tb_g283 : IND3D1BWP7T port map(A1 => cntReset15K, B1 => output_edgedet, B2 => count15k(0), ZN => tb_n_6);
  tb_g284 : OAI21D0BWP7T port map(A1 => cntReset15K, A2 => count15k(0), B => output_edgedet, ZN => tb_n_5);
  tb_g285 : ND2D1BWP7T port map(A1 => tb_n_3, A2 => output_edgedet, ZN => tb_n_4);
  tb_g2 : IND2D1BWP7T port map(A1 => tb_n_8, B1 => count15k(2), ZN => tb_n_0);
  tb_count_reg_0 : DFD1BWP7T port map(CP => clk, D => tb_n_7, Q => count15k(0), QN => tb_n_3);
  tb_count_reg_1 : DFD1BWP7T port map(CP => clk, D => tb_n_10, Q => count15k(1), QN => tb_n_1);
  flipflop11_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(0), E => btnflipfloprst, Q => flipflop11_Q_9);
  flipflop11_drc_bufs : BUFFD4BWP7T port map(I => flipflop11_Q_9, Z => buttons(0));
  flipflop2_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_x(1), E => xflipfloprst, Q => flipflop2_Q_9);
  flipflop2_drc_bufs : BUFFD4BWP7T port map(I => flipflop2_Q_9, Z => mouseX(1));
  sr11_data_out_reg_1 : DFQD1BWP7T port map(CP => clk, D => sr11_n_7, Q => sr11_data_out_1_71);
  sr11_data_out_reg_0 : DFQD1BWP7T port map(CP => clk, D => sr11_n_6, Q => sr11_data_out_0_70);
  sr11_data_out_reg_5 : DFQD1BWP7T port map(CP => clk, D => sr11_n_8, Q => sr11_data_out_5_75);
  sr11_data_out_reg_4 : DFQD1BWP7T port map(CP => clk, D => sr11_n_2, Q => data_sr_11bit(4));
  sr11_data_out_reg_7 : DFQD1BWP7T port map(CP => clk, D => sr11_n_3, Q => data_sr_11bit(7));
  sr11_data_out_reg_2 : DFQD1BWP7T port map(CP => clk, D => sr11_n_4, Q => data_sr_11bit(2));
  sr11_data_out_reg_6 : DFQD1BWP7T port map(CP => clk, D => sr11_n_9, Q => data_sr_11bit(6));
  sr11_data_out_reg_3 : DFQD1BWP7T port map(CP => clk, D => sr11_n_5, Q => data_sr_11bit(3));
  sr11_g288 : AO22D0BWP7T port map(A1 => sr11_data_out_5_75, A2 => sr11_n_1, B1 => sr11_n_0, B2 => data_sr_11bit(6), Z => sr11_n_9);
  sr11_g289 : AO22D0BWP7T port map(A1 => data_sr_11bit(4), A2 => sr11_n_1, B1 => sr11_n_0, B2 => sr11_data_out_5_75, Z => sr11_n_8);
  sr11_g290 : AO22D0BWP7T port map(A1 => sr11_data_out_0_70, A2 => sr11_n_1, B1 => sr11_n_0, B2 => sr11_data_out_1_71, Z => sr11_n_7);
  sr11_g291 : AO22D0BWP7T port map(A1 => sr11_n_1, A2 => Data_in, B1 => sr11_n_0, B2 => sr11_data_out_0_70, Z => sr11_n_6);
  sr11_g292 : AO22D0BWP7T port map(A1 => data_sr_11bit(2), A2 => sr11_n_1, B1 => sr11_n_0, B2 => data_sr_11bit(3), Z => sr11_n_5);
  sr11_g293 : AO22D0BWP7T port map(A1 => sr11_data_out_1_71, A2 => sr11_n_1, B1 => sr11_n_0, B2 => data_sr_11bit(2), Z => sr11_n_4);
  sr11_g294 : AO22D0BWP7T port map(A1 => data_sr_11bit(6), A2 => sr11_n_1, B1 => sr11_n_0, B2 => data_sr_11bit(7), Z => sr11_n_3);
  sr11_g295 : AO22D0BWP7T port map(A1 => data_sr_11bit(3), A2 => sr11_n_1, B1 => sr11_n_0, B2 => data_sr_11bit(4), Z => sr11_n_2);
  sr11_g296 : NR2XD0BWP7T port map(A1 => sr11_n_0, A2 => reset, ZN => sr11_n_1);
  sr11_g297 : INVD1BWP7T port map(I => output_edgedet, ZN => sr11_n_0);
  flipflop3_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_x(0), E => xflipfloprst, Q => flipflop3_Q_9);
  flipflop3_drc_bufs : BUFFD4BWP7T port map(I => flipflop3_Q_9, Z => mouseX(0));
  flipflop4_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_y(0), E => yflipfloprst, Q => flipflop4_Q_9);
  flipflop4_drc_bufs : BUFFD4BWP7T port map(I => flipflop4_Q_9, Z => mouseY(0));
  flipflop5_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_y(1), E => yflipfloprst, Q => flipflop5_Q_9);
  flipflop5_drc_bufs : BUFFD4BWP7T port map(I => flipflop5_Q_9, Z => mouseY(1));
  flipflop6_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_y(2), E => yflipfloprst, Q => flipflop6_Q_9);
  flipflop6_drc_bufs : BUFFD4BWP7T port map(I => flipflop6_Q_9, Z => mouseY(2));
  flipflop7_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(4), E => btnflipfloprst, Q => flipflop7_Q_9);
  flipflop7_drc_bufs : BUFFD4BWP7T port map(I => flipflop7_Q_9, Z => buttons(4));
  flipflop8_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(3), E => btnflipfloprst, Q => flipflop8_Q_9);
  flipflop8_drc_bufs : BUFFD4BWP7T port map(I => flipflop8_Q_9, Z => buttons(3));
  mx_g23 : ND2D4BWP7T port map(A1 => mx_n_0, A2 => mx_n_1, ZN => DataSwitch);
  mx_g24 : ND2D1BWP7T port map(A1 => muxReg, A2 => mux_select, ZN => mx_n_1);
  mx_g25 : IND2D1BWP7T port map(A1 => mux_select, B1 => n_24, ZN => mx_n_0);
  cnt_g65 : INVD1BWP7T port map(I => cntReset25M, ZN => cnt_n_21);
  cnt_count_reg_11 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_20, Q => count25M(11));
  cnt_count_reg_10 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_19, Q => count25M(10));
  cnt_g210 : MOAI22D0BWP7T port map(A1 => cnt_n_18, A2 => count25M(11), B1 => cnt_n_18, B2 => count25M(11), ZN => cnt_n_20);
  cnt_count_reg_9 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_17, Q => count25M(9));
  cnt_g212 : MOAI22D0BWP7T port map(A1 => cnt_n_16, A2 => count25M(10), B1 => cnt_n_16, B2 => count25M(10), ZN => cnt_n_19);
  cnt_g213 : IND2D1BWP7T port map(A1 => cnt_n_16, B1 => count25M(10), ZN => cnt_n_18);
  cnt_count_reg_8 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_15, Q => count25M(8));
  cnt_g215 : MOAI22D0BWP7T port map(A1 => cnt_n_14, A2 => count25M(9), B1 => cnt_n_14, B2 => count25M(9), ZN => cnt_n_17);
  cnt_g216 : IND2D1BWP7T port map(A1 => cnt_n_14, B1 => count25M(9), ZN => cnt_n_16);
  cnt_count_reg_7 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_13, Q => count25M(7));
  cnt_g218 : MOAI22D0BWP7T port map(A1 => cnt_n_12, A2 => count25M(8), B1 => cnt_n_12, B2 => count25M(8), ZN => cnt_n_15);
  cnt_g219 : IND2D1BWP7T port map(A1 => cnt_n_12, B1 => count25M(8), ZN => cnt_n_14);
  cnt_count_reg_6 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_11, Q => count25M(6));
  cnt_g221 : MOAI22D0BWP7T port map(A1 => cnt_n_10, A2 => count25M(7), B1 => cnt_n_10, B2 => count25M(7), ZN => cnt_n_13);
  cnt_g222 : IND2D1BWP7T port map(A1 => cnt_n_10, B1 => count25M(7), ZN => cnt_n_12);
  cnt_count_reg_5 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_9, Q => count25M(5));
  cnt_g224 : MOAI22D0BWP7T port map(A1 => cnt_n_8, A2 => count25M(6), B1 => cnt_n_8, B2 => count25M(6), ZN => cnt_n_11);
  cnt_g225 : IND2D1BWP7T port map(A1 => cnt_n_8, B1 => count25M(6), ZN => cnt_n_10);
  cnt_count_reg_4 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_7, Q => count25M(4));
  cnt_g227 : MOAI22D0BWP7T port map(A1 => cnt_n_6, A2 => count25M(5), B1 => cnt_n_6, B2 => count25M(5), ZN => cnt_n_9);
  cnt_g228 : IND2D1BWP7T port map(A1 => cnt_n_6, B1 => count25M(5), ZN => cnt_n_8);
  cnt_count_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_5, Q => count25M(3));
  cnt_g230 : MOAI22D0BWP7T port map(A1 => cnt_n_4, A2 => count25M(4), B1 => cnt_n_4, B2 => count25M(4), ZN => cnt_n_7);
  cnt_g231 : IND2D1BWP7T port map(A1 => cnt_n_4, B1 => count25M(4), ZN => cnt_n_6);
  cnt_count_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_21, D => cnt_n_3, Q => count25M(2));
  cnt_g233 : MOAI22D0BWP7T port map(A1 => cnt_n_2, A2 => count25M(3), B1 => cnt_n_2, B2 => count25M(3), ZN => cnt_n_5);
  cnt_g234 : IND2D1BWP7T port map(A1 => cnt_n_2, B1 => count25M(3), ZN => cnt_n_4);
  cnt_count_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_21, Q => count25M(1));
  cnt_g236 : MOAI22D0BWP7T port map(A1 => cnt_n_0, A2 => count25M(2), B1 => cnt_n_0, B2 => count25M(2), ZN => cnt_n_3);
  cnt_g237 : IND2D1BWP7T port map(A1 => cnt_n_0, B1 => count25M(2), ZN => cnt_n_2);
  cnt_count_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => cnt_count(0), D => cnt_n_21, Q => UNCONNECTED, QN => cnt_count(0));
  cnt_g239 : MOAI22D0BWP7T port map(A1 => cnt_count(0), A2 => count25M(1), B1 => cnt_count(0), B2 => count25M(1), ZN => cnt_n_1);
  cnt_g240 : IND2D1BWP7T port map(A1 => cnt_count(0), B1 => count25M(1), ZN => cnt_n_0);
  flipflop9_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(2), E => btnflipfloprst, Q => flipflop9_Q_9);
  flipflop9_drc_bufs : BUFFD4BWP7T port map(I => flipflop9_Q_9, Z => buttons(2));

end synthesised;
