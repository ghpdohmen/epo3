
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of mouse is

  component BUFFD1P5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL01BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD3BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component DEL02BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD0BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD10BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component CKAN2D8BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OA22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component EDFQD0BWP7T
    port(CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component EDFKCNQD1BWP7T
    port(CN, CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CN, CP, D : in std_logic; Q : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKXOR2D2BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component LHQD1BWP7T
    port(D, E : in std_logic; Q : out std_logic);
  end component;

  component OA31D0BWP7T
    port(A1, A2, A3, B : in std_logic; Z : out std_logic);
  end component;

  component AN4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D5BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  signal FE_PHN43_sr_n_6, FE_PHN42_muxReg, FE_PHN41_sr_new_new_data_3, FE_PHN40_sr_new_new_data_5, FE_PHN39_sr_n_4 : std_logic;
  signal FE_PHN38_cnt_n_20, FE_PHN37_cnt_n_5, FE_PHN36_cnt_n_9, FE_PHN35_cnt_n_3, FE_PHN34_cnt_n_7 : std_logic;
  signal FE_PHN33_cnt_n_13, FE_PHN32_count25M_6, FE_PHN31_count25M_8, FE_PHN30_count25M_10, FE_PHN29_data_sr_11bit_2 : std_logic;
  signal FE_PHN28_data_sr_11bit_4, FE_PHN27_sr11_data_out_1_80, FE_PHN26_sr11_data_out_5_84, FE_PHN25_sr11_data_out_0_79, FE_PHN24_sr_new_new_data_7 : std_logic;
  signal FE_PHN23_cnt_count_0, FE_PHN22_sr_new_new_data_6, FE_PHN21_sr_new_new_data_3, FE_PHN20_sr_new_new_data_5, FE_PHN19_data_sr_11bit_3 : std_logic;
  signal FE_PHN18_count25M_9, FE_PHN17_sr_new_new_data_0, FE_PHN16_Clk15k, FE_PHN15_data_sr_11bit_6, FE_PHN14_sr_new_new_data_1 : std_logic;
  signal FE_PHN13_ed_reg1, FE_PHN12_sr_new_new_data_4, FE_PHN11_sr_new_new_data_2, FE_OFN10_mouseY_0, FE_OFN9_mouseY_2 : std_logic;
  signal FE_OFN8_mouseY_1, FE_OFN7_mouseX_1, FE_OFN6_buttons_2, FE_OFN5_mouseX_2, FE_OFN4_buttons_3 : std_logic;
  signal FE_OFN3_mouseX_0, FE_OFN2_buttons_1, FE_OFN1_buttons_0, FE_OFN0_buttons_4, CTS_4 : std_logic;
  signal data_sr_11bit : std_logic_vector(10 downto 0);
  signal mouse_x : std_logic_vector(2 downto 0);
  signal mfsm_state : std_logic_vector(4 downto 0);
  signal btns : std_logic_vector(4 downto 0);
  signal mouse_y : std_logic_vector(2 downto 0);
  signal count15k : std_logic_vector(3 downto 0);
  signal sfsm_new_state : std_logic_vector(1 downto 0);
  signal sfsm_state : std_logic_vector(1 downto 0);
  signal count25M : std_logic_vector(11 downto 0);
  signal data_sr_9bit : std_logic_vector(8 downto 0);
  signal sr_new_new_data : std_logic_vector(8 downto 0);
  signal cnt_count : std_logic_vector(11 downto 0);
  signal UNCONNECTED, actBit, bit9_reg_rst, btnflipfloprst, cntReset15K : std_logic;
  signal cntReset25M, cnt_n_0, cnt_n_1, cnt_n_2, cnt_n_3 : std_logic;
  signal cnt_n_4, cnt_n_5, cnt_n_6, cnt_n_7, cnt_n_8 : std_logic;
  signal cnt_n_9, cnt_n_10, cnt_n_11, cnt_n_12, cnt_n_13 : std_logic;
  signal cnt_n_14, cnt_n_15, cnt_n_16, cnt_n_17, cnt_n_18 : std_logic;
  signal cnt_n_19, cnt_n_20, cnt_n_21, ed_n_0, ed_reg1 : std_logic;
  signal ed_reg2, mfsm_n_0, mfsm_n_2, mfsm_n_3, mfsm_n_4 : std_logic;
  signal mfsm_n_5, mfsm_n_6, mfsm_n_7, mfsm_n_8, mfsm_n_9 : std_logic;
  signal mfsm_n_10, mfsm_n_11, mfsm_n_12, mfsm_n_13, mfsm_n_14 : std_logic;
  signal mfsm_n_15, mfsm_n_16, mfsm_n_17, mfsm_n_18, mfsm_n_19 : std_logic;
  signal mfsm_n_20, mfsm_n_21, mfsm_n_22, mfsm_n_23, mfsm_n_24 : std_logic;
  signal mfsm_n_25, mfsm_n_26, mfsm_n_27, mfsm_n_28, mfsm_n_29 : std_logic;
  signal mfsm_n_30, mfsm_n_31, mfsm_n_32, mfsm_n_33, mfsm_n_34 : std_logic;
  signal mfsm_n_35, mfsm_n_36, mfsm_n_37, mfsm_n_38, mfsm_n_39 : std_logic;
  signal mfsm_n_40, mfsm_n_41, mfsm_n_42, mfsm_n_43, mfsm_n_44 : std_logic;
  signal mfsm_n_45, mfsm_n_46, mfsm_n_47, mfsm_n_48, mfsm_n_49 : std_logic;
  signal mfsm_n_82, muxFSM, muxReg, mx_n_0, mx_n_1 : std_logic;
  signal n_0, output_edgedet, sfsm_n_0, sfsm_n_1, sfsm_n_2 : std_logic;
  signal sfsm_n_3, sfsm_n_4, sfsm_n_5, sfsm_n_6, sfsm_n_7 : std_logic;
  signal sfsm_n_8, sfsm_n_9, sr11_data_out_0_79, sr11_data_out_1_80, sr11_data_out_5_84 : std_logic;
  signal sr11_n_0, sr_n_0, sr_n_1, sr_n_2, sr_n_3 : std_logic;
  signal sr_n_4, sr_n_5, sr_n_6, sr_n_7, sr_n_8 : std_logic;
  signal sr_n_9, sr_n_10, sr_n_11, tb_n_0, tb_n_1 : std_logic;
  signal tb_n_2, tb_n_3, tb_n_4, tb_n_5, tb_n_6 : std_logic;
  signal xflipfloprst, yflipfloprst : std_logic;

begin

  FE_PHC43_sr_n_6 : BUFFD1P5BWP7T port map(I => sr_n_6, Z => FE_PHN43_sr_n_6);
  FE_PHC42_muxReg : DEL01BWP7T port map(I => muxReg, Z => FE_PHN42_muxReg);
  FE_PHC41_sr_new_new_data_3 : DEL01BWP7T port map(I => sr_new_new_data(3), Z => FE_PHN41_sr_new_new_data_3);
  FE_PHC40_sr_new_new_data_5 : DEL01BWP7T port map(I => sr_new_new_data(5), Z => FE_PHN40_sr_new_new_data_5);
  FE_PHC39_sr_n_4 : CKBD0BWP7T port map(I => sr_n_4, Z => FE_PHN39_sr_n_4);
  FE_PHC38_cnt_n_20 : BUFFD3BWP7T port map(I => FE_PHN38_cnt_n_20, Z => cnt_n_20);
  FE_PHC37_cnt_n_5 : DEL01BWP7T port map(I => FE_PHN37_cnt_n_5, Z => cnt_n_5);
  FE_PHC36_cnt_n_9 : DEL01BWP7T port map(I => cnt_n_9, Z => FE_PHN36_cnt_n_9);
  FE_PHC35_cnt_n_3 : DEL01BWP7T port map(I => cnt_n_3, Z => FE_PHN35_cnt_n_3);
  FE_PHC34_cnt_n_7 : DEL01BWP7T port map(I => FE_PHN34_cnt_n_7, Z => cnt_n_7);
  FE_PHC33_cnt_n_13 : DEL01BWP7T port map(I => cnt_n_13, Z => FE_PHN33_cnt_n_13);
  FE_PHC32_count25M_6 : CKBD0BWP7T port map(I => FE_PHN32_count25M_6, Z => count25M(6));
  FE_PHC31_count25M_8 : CKBD0BWP7T port map(I => FE_PHN31_count25M_8, Z => count25M(8));
  FE_PHC30_count25M_10 : DEL01BWP7T port map(I => FE_PHN30_count25M_10, Z => count25M(10));
  FE_PHC29_data_sr_11bit_2 : BUFFD1P5BWP7T port map(I => data_sr_11bit(2), Z => FE_PHN29_data_sr_11bit_2);
  FE_PHC28_data_sr_11bit_4 : BUFFD1P5BWP7T port map(I => data_sr_11bit(4), Z => FE_PHN28_data_sr_11bit_4);
  FE_PHC27_sr11_data_out_1_80 : DEL0BWP7T port map(I => sr11_data_out_1_80, Z => FE_PHN27_sr11_data_out_1_80);
  FE_PHC26_sr11_data_out_5_84 : DEL0BWP7T port map(I => sr11_data_out_5_84, Z => FE_PHN26_sr11_data_out_5_84);
  FE_PHC25_sr11_data_out_0_79 : DEL0BWP7T port map(I => sr11_data_out_0_79, Z => FE_PHN25_sr11_data_out_0_79);
  FE_PHC24_sr_new_new_data_7 : DEL0BWP7T port map(I => FE_PHN24_sr_new_new_data_7, Z => sr_new_new_data(7));
  FE_PHC23_cnt_count_0 : DEL01BWP7T port map(I => cnt_count(0), Z => FE_PHN23_cnt_count_0);
  FE_PHC22_sr_new_new_data_6 : DEL02BWP7T port map(I => sr_new_new_data(6), Z => FE_PHN22_sr_new_new_data_6);
  FE_PHC21_sr_new_new_data_3 : DEL02BWP7T port map(I => FE_PHN21_sr_new_new_data_3, Z => sr_new_new_data(3));
  FE_PHC20_sr_new_new_data_5 : CKBD0BWP7T port map(I => FE_PHN40_sr_new_new_data_5, Z => FE_PHN20_sr_new_new_data_5);
  FE_PHC19_data_sr_11bit_3 : DEL01BWP7T port map(I => data_sr_11bit(3), Z => FE_PHN19_data_sr_11bit_3);
  FE_PHC18_count25M_9 : DEL01BWP7T port map(I => count25M(9), Z => FE_PHN18_count25M_9);
  FE_PHC17_sr_new_new_data_0 : DEL0BWP7T port map(I => sr_new_new_data(0), Z => FE_PHN17_sr_new_new_data_0);
  FE_PHC16_Clk15k : DEL0BWP7T port map(I => Clk15k, Z => FE_PHN16_Clk15k);
  FE_PHC15_data_sr_11bit_6 : BUFFD0BWP7T port map(I => data_sr_11bit(6), Z => FE_PHN15_data_sr_11bit_6);
  FE_PHC14_sr_new_new_data_1 : DEL02BWP7T port map(I => sr_new_new_data(1), Z => FE_PHN14_sr_new_new_data_1);
  FE_PHC13_ed_reg1 : DEL0BWP7T port map(I => ed_reg1, Z => FE_PHN13_ed_reg1);
  FE_PHC12_sr_new_new_data_4 : DEL02BWP7T port map(I => FE_PHN12_sr_new_new_data_4, Z => sr_new_new_data(4));
  FE_PHC11_sr_new_new_data_2 : DEL02BWP7T port map(I => FE_PHN11_sr_new_new_data_2, Z => sr_new_new_data(2));
  FE_OFC10_mouseY_0 : BUFFD5BWP7T port map(I => FE_OFN10_mouseY_0, Z => mouseY(0));
  FE_OFC9_mouseY_2 : BUFFD5BWP7T port map(I => FE_OFN9_mouseY_2, Z => mouseY(2));
  FE_OFC8_mouseY_1 : BUFFD5BWP7T port map(I => FE_OFN8_mouseY_1, Z => mouseY(1));
  FE_OFC7_mouseX_1 : BUFFD5BWP7T port map(I => FE_OFN7_mouseX_1, Z => mouseX(1));
  FE_OFC6_buttons_2 : BUFFD5BWP7T port map(I => FE_OFN6_buttons_2, Z => buttons(2));
  FE_OFC5_mouseX_2 : BUFFD5BWP7T port map(I => FE_OFN5_mouseX_2, Z => mouseX(2));
  FE_OFC4_buttons_3 : BUFFD5BWP7T port map(I => FE_OFN4_buttons_3, Z => buttons(3));
  FE_OFC3_mouseX_0 : BUFFD5BWP7T port map(I => FE_OFN3_mouseX_0, Z => mouseX(0));
  FE_OFC2_buttons_1 : BUFFD5BWP7T port map(I => FE_OFN2_buttons_1, Z => buttons(1));
  FE_OFC1_buttons_0 : BUFFD5BWP7T port map(I => FE_OFN1_buttons_0, Z => buttons(0));
  FE_OFC0_buttons_4 : BUFFD5BWP7T port map(I => FE_OFN0_buttons_4, Z => buttons(4));
  CTS_ccl_a_BUF_clk_G0_L1_1 : CKBD10BWP7T port map(I => clk, Z => CTS_4);
  g3 : INVD1BWP7T port map(I => bit9_reg_rst, ZN => n_0);
  ed_g12 : NR2XD0BWP7T port map(A1 => ed_n_0, A2 => ed_reg2, ZN => output_edgedet);
  ed_reg2_reg : DFQD1BWP7T port map(CP => CTS_4, D => FE_PHN13_ed_reg1, Q => ed_reg2);
  ed_reg1_reg : DFD1BWP7T port map(CP => CTS_4, D => FE_PHN16_Clk15k, Q => ed_reg1, QN => ed_n_0);
  mfsm_g1728 : AN2D0BWP7T port map(A1 => mfsm_n_49, A2 => data_sr_11bit(4), Z => mouse_x(2));
  mfsm_g1729 : AN2D0BWP7T port map(A1 => mfsm_n_49, A2 => data_sr_11bit(3), Z => mouse_x(1));
  mfsm_g1730 : AN2D0BWP7T port map(A1 => mfsm_n_49, A2 => data_sr_11bit(2), Z => mouse_x(0));
  mfsm_g1731 : OAI211D1BWP7T port map(A1 => mfsm_state(0), A2 => mfsm_n_82, B => mfsm_n_48, C => mfsm_n_0, ZN => cntReset15K);
  mfsm_g1732 : INR2D0BWP7T port map(A1 => data_sr_11bit(7), B1 => mfsm_n_47, ZN => btns(1));
  mfsm_g1733 : INR2D0BWP7T port map(A1 => data_sr_11bit(6), B1 => mfsm_n_47, ZN => btns(0));
  mfsm_g1734 : INR2D0BWP7T port map(A1 => data_sr_11bit(3), B1 => mfsm_n_47, ZN => btns(4));
  mfsm_g1736 : INR2D0BWP7T port map(A1 => data_sr_11bit(2), B1 => mfsm_n_47, ZN => btns(2));
  mfsm_g1737 : INR2D0BWP7T port map(A1 => data_sr_11bit(4), B1 => mfsm_n_47, ZN => btns(3));
  mfsm_g1738 : OA21D0BWP7T port map(A1 => mfsm_n_46, A2 => mfsm_n_45, B => mfsm_n_82, Z => mfsm_n_49);
  mfsm_g1739 : INVD1BWP7T port map(I => mfsm_n_48, ZN => xflipfloprst);
  mfsm_g1740 : CKAN2D8BWP7T port map(A1 => mfsm_n_46, A2 => mfsm_state(4), Z => Handshake_out);
  mfsm_g1741 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(4), Z => mouse_y(2));
  mfsm_g1742 : ND2D1BWP7T port map(A1 => mfsm_n_82, A2 => mfsm_n_45, ZN => mfsm_n_48);
  mfsm_g1743 : INVD1BWP7T port map(I => mfsm_n_47, ZN => btnflipfloprst);
  mfsm_g1744 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(3), Z => mouse_y(1));
  mfsm_g1745 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(2), Z => mouse_y(0));
  mfsm_g1746 : ND3D0BWP7T port map(A1 => mfsm_n_3, A2 => mfsm_state(3), A3 => mfsm_state(1), ZN => mfsm_n_47);
  mfsm_g1747 : INR2XD0BWP7T port map(A1 => mfsm_state(1), B1 => mfsm_state(0), ZN => mfsm_n_46);
  mfsm_g1748 : NR2XD0BWP7T port map(A1 => mfsm_n_4, A2 => mfsm_n_3, ZN => mfsm_n_82);
  mfsm_g1750 : INR2D1BWP7T port map(A1 => mfsm_state(0), B1 => mfsm_state(1), ZN => mfsm_n_45);
  mfsm_g1751 : NR2XD0BWP7T port map(A1 => mfsm_n_0, A2 => mfsm_state(1), ZN => yflipfloprst);
  mfsm_g2 : INR3D0BWP7T port map(A1 => mfsm_n_45, B1 => mfsm_n_3, B2 => mfsm_state(3), ZN => actBit);
  mfsm_g2328 : AO221D0BWP7T port map(A1 => mfsm_n_35, A2 => mfsm_n_11, B1 => mfsm_n_24, B2 => mfsm_n_16, C => mfsm_n_23, Z => mfsm_n_44);
  mfsm_state_reg_1 : DFQD1BWP7T port map(CP => CTS_4, D => mfsm_n_39, Q => mfsm_state(1));
  mfsm_g2330 : OAI31D0BWP7T port map(A1 => reset, A2 => mfsm_n_4, A3 => mfsm_n_17, B => mfsm_n_40, ZN => mfsm_n_43);
  mfsm_g2331 : OAI21D0BWP7T port map(A1 => mfsm_n_10, A2 => mfsm_n_3, B => mfsm_n_38, ZN => mfsm_n_42);
  mfsm_g2332 : MOAI22D0BWP7T port map(A1 => mfsm_n_36, A2 => mfsm_n_9, B1 => mfsm_n_28, B2 => mfsm_n_11, ZN => mfsm_n_41);
  mfsm_g2333 : OAI221D0BWP7T port map(A1 => mfsm_n_27, A2 => mfsm_state(3), B1 => mfsm_n_7, B2 => mfsm_n_21, C => mfsm_n_16, ZN => mfsm_n_40);
  mfsm_g2334 : OAI221D0BWP7T port map(A1 => mfsm_n_29, A2 => mfsm_n_9, B1 => mfsm_n_10, B2 => mfsm_n_30, C => mfsm_n_15, ZN => mfsm_n_39);
  mfsm_g2335 : OAI21D0BWP7T port map(A1 => mfsm_n_21, A2 => mfsm_n_8, B => mfsm_n_37, ZN => mfsm_n_38);
  mfsm_g2336 : OAI31D0BWP7T port map(A1 => mfsm_n_3, A2 => mfsm_n_6, A3 => mfsm_n_15, B => mfsm_n_34, ZN => mfsm_n_37);
  mfsm_g2337 : OAI31D0BWP7T port map(A1 => mfsm_state(2), A2 => mfsm_n_2, A3 => mfsm_n_6, B => mfsm_n_33, ZN => mfsm_n_36);
  mfsm_g2338 : OAI21D0BWP7T port map(A1 => mfsm_n_19, A2 => mfsm_state(0), B => mfsm_n_32, ZN => mfsm_n_35);
  mfsm_g2339 : IOA21D1BWP7T port map(A1 => mfsm_n_24, A2 => mfsm_n_3, B => mfsm_n_16, ZN => mfsm_n_34);
  mfsm_g2340 : AOI21D0BWP7T port map(A1 => mfsm_n_2, A2 => mfsm_n_0, B => mfsm_n_31, ZN => mfsm_n_33);
  mfsm_g2341 : OAI21D0BWP7T port map(A1 => mfsm_n_4, A2 => mfsm_n_3, B => mfsm_n_26, ZN => mfsm_n_32);
  mfsm_g2342 : AOI21D0BWP7T port map(A1 => mfsm_n_22, A2 => mfsm_state(3), B => mfsm_n_8, ZN => mfsm_n_31);
  mfsm_g2343 : AOI21D0BWP7T port map(A1 => mfsm_n_82, A2 => mfsm_state(0), B => mfsm_n_25, ZN => mfsm_n_30);
  mfsm_g2344 : AOI22D0BWP7T port map(A1 => mfsm_n_21, A2 => mfsm_n_5, B1 => mfsm_n_6, B2 => mfsm_n_3, ZN => mfsm_n_29);
  mfsm_g2345 : OAI32D1BWP7T port map(A1 => mfsm_n_0, A2 => mfsm_n_7, A3 => mfsm_n_2, B1 => mfsm_n_0, B2 => mfsm_n_20, ZN => mfsm_n_28);
  mfsm_g2346 : OA22D0BWP7T port map(A1 => mfsm_n_22, A2 => mfsm_n_3, B1 => mfsm_state(2), B2 => mfsm_n_12, Z => mfsm_n_27);
  mfsm_g2347 : INVD1BWP7T port map(I => mfsm_n_25, ZN => mfsm_n_26);
  mfsm_g2348 : AOI21D0BWP7T port map(A1 => mfsm_n_14, A2 => mfsm_n_19, B => mfsm_n_2, ZN => mfsm_n_25);
  mfsm_g2349 : OAI32D1BWP7T port map(A1 => mfsm_n_9, A2 => mfsm_n_8, A3 => mfsm_n_18, B1 => mfsm_n_12, B2 => mfsm_n_15, ZN => mfsm_n_23);
  mfsm_g2350 : IOA21D1BWP7T port map(A1 => mfsm_n_19, A2 => mfsm_n_4, B => mfsm_n_0, ZN => mfsm_n_24);
  mfsm_g2351 : NR2XD0BWP7T port map(A1 => mfsm_n_19, A2 => mfsm_state(4), ZN => mfsm_n_22);
  mfsm_g2352 : AOI221D0BWP7T port map(A1 => mfsm_n_7, A2 => mfsm_n_2, B1 => mfsm_n_4, B2 => mfsm_n_3, C => mfsm_n_19, ZN => mfsm_n_20);
  mfsm_g2353 : NR2D1BWP7T port map(A1 => mfsm_n_18, A2 => mfsm_state(4), ZN => mfsm_n_21);
  mfsm_g2354 : INVD0BWP7T port map(I => mfsm_n_19, ZN => mfsm_n_18);
  mfsm_g2355 : IND2D1BWP7T port map(A1 => mfsm_n_13, B1 => count15k(3), ZN => mfsm_n_19);
  mfsm_g2356 : OA21D0BWP7T port map(A1 => mfsm_n_6, A2 => mfsm_state(0), B => mfsm_state(1), Z => mfsm_n_17);
  mfsm_g2357 : NR2XD0BWP7T port map(A1 => mfsm_n_9, A2 => mfsm_n_2, ZN => mfsm_n_16);
  mfsm_g2358 : OR2D1BWP7T port map(A1 => mfsm_n_9, A2 => mfsm_state(0), Z => mfsm_n_15);
  mfsm_g2359 : IND3D1BWP7T port map(A1 => mfsm_n_0, B1 => mfsm_n_4, B2 => mfsm_n_3, ZN => mfsm_n_14);
  mfsm_g2360 : AOI21D0BWP7T port map(A1 => count15k(0), A2 => count15k(1), B => count15k(2), ZN => mfsm_n_13);
  mfsm_g2361 : INVD0BWP7T port map(I => mfsm_n_11, ZN => mfsm_n_10);
  mfsm_g2362 : NR2XD0BWP7T port map(A1 => mfsm_n_0, A2 => Handshake_in, ZN => mfsm_n_12);
  mfsm_g2363 : NR2XD0BWP7T port map(A1 => mfsm_state(1), A2 => reset, ZN => mfsm_n_11);
  mfsm_g2364 : IND2D1BWP7T port map(A1 => reset, B1 => mfsm_state(1), ZN => mfsm_n_9);
  mfsm_g2365 : ND2D1BWP7T port map(A1 => mfsm_state(3), A2 => mfsm_n_3, ZN => mfsm_n_5);
  mfsm_g2366 : ND2D1BWP7T port map(A1 => mfsm_state(0), A2 => mfsm_state(2), ZN => mfsm_n_8);
  mfsm_g2367 : ND2D1BWP7T port map(A1 => mfsm_state(3), A2 => mfsm_state(2), ZN => mfsm_n_7);
  mfsm_g2368 : INR2D1BWP7T port map(A1 => Handshake_in, B1 => mfsm_n_0, ZN => mfsm_n_6);
  mfsm_state_reg_3 : DFD1BWP7T port map(CP => CTS_4, D => mfsm_n_43, Q => mfsm_state(3), QN => mfsm_n_4);
  mfsm_state_reg_2 : DFD1BWP7T port map(CP => CTS_4, D => mfsm_n_42, Q => mfsm_state(2), QN => mfsm_n_3);
  mfsm_state_reg_4 : DFD1BWP7T port map(CP => CTS_4, D => mfsm_n_41, Q => mfsm_state(4), QN => mfsm_n_0);
  mfsm_state_reg_0 : DFD1BWP7T port map(CP => CTS_4, D => mfsm_n_44, Q => mfsm_state(0), QN => mfsm_n_2);
  flipflop1_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => mouse_x(2), E => xflipfloprst, Q => FE_OFN5_mouseX_2);
  flipflop10_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => btns(1), E => btnflipfloprst, Q => FE_OFN2_buttons_1);
  tb_count_reg_3 : EDFKCNQD1BWP7T port map(CN => tb_n_1, CP => CTS_4, D => tb_n_6, E => output_edgedet, Q => count15k(3));
  tb_count_reg_2 : EDFKCNQD1BWP7T port map(CN => tb_n_1, CP => CTS_4, D => tb_n_5, E => output_edgedet, Q => count15k(2));
  tb_g65 : MOAI22D0BWP7T port map(A1 => tb_n_4, A2 => count15k(3), B1 => tb_n_4, B2 => count15k(3), ZN => tb_n_6);
  tb_count_reg_1 : EDFKCNQD1BWP7T port map(CN => tb_n_1, CP => CTS_4, D => tb_n_3, E => output_edgedet, Q => count15k(1));
  tb_g67 : MOAI22D0BWP7T port map(A1 => tb_n_2, A2 => count15k(2), B1 => tb_n_2, B2 => count15k(2), ZN => tb_n_5);
  tb_count_reg_0 : DFKCNQD1BWP7T port map(CN => tb_n_0, CP => CTS_4, D => tb_n_1, Q => count15k(0));
  tb_g69 : IND2D1BWP7T port map(A1 => tb_n_2, B1 => count15k(2), ZN => tb_n_4);
  tb_g70 : CKXOR2D0BWP7T port map(A1 => count15k(1), A2 => count15k(0), Z => tb_n_3);
  tb_g72 : ND2D1BWP7T port map(A1 => count15k(1), A2 => count15k(0), ZN => tb_n_2);
  tb_g73 : INVD1BWP7T port map(I => cntReset15K, ZN => tb_n_1);
  tb_g2 : CKXOR2D2BWP7T port map(A1 => count15k(0), A2 => output_edgedet, Z => tb_n_0);
  flipflop11_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => btns(0), E => btnflipfloprst, Q => FE_OFN1_buttons_0);
  flipflop2_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => mouse_x(1), E => xflipfloprst, Q => FE_OFN7_mouseX_1);
  sr11_data_out_reg_1 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN25_sr11_data_out_0_79, E => output_edgedet, Q => sr11_data_out_1_80);
  sr11_data_out_reg_0 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => Data_in, E => output_edgedet, Q => sr11_data_out_0_79);
  sr11_data_out_reg_3 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN29_data_sr_11bit_2, E => output_edgedet, Q => data_sr_11bit(3));
  sr11_data_out_reg_4 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN19_data_sr_11bit_3, E => output_edgedet, Q => data_sr_11bit(4));
  sr11_data_out_reg_5 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN28_data_sr_11bit_4, E => output_edgedet, Q => sr11_data_out_5_84);
  sr11_data_out_reg_7 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN15_data_sr_11bit_6, E => output_edgedet, Q => data_sr_11bit(7));
  sr11_data_out_reg_6 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN26_sr11_data_out_5_84, E => output_edgedet, Q => data_sr_11bit(6));
  sr11_data_out_reg_2 : EDFKCNQD1BWP7T port map(CN => sr11_n_0, CP => CTS_4, D => FE_PHN27_sr11_data_out_1_80, E => output_edgedet, Q => data_sr_11bit(2));
  sr11_g35 : INVD1BWP7T port map(I => reset, ZN => sr11_n_0);
  flipflop3_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => mouse_x(0), E => xflipfloprst, Q => FE_OFN3_mouseX_0);
  flipflop4_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => mouse_y(0), E => yflipfloprst, Q => FE_OFN10_mouseY_0);
  sfsm_new_state_reg_0 : LHQD1BWP7T port map(D => sfsm_n_9, E => bit9_reg_rst, Q => sfsm_new_state(0));
  sfsm_new_state_reg_1 : LHQD1BWP7T port map(D => sfsm_n_8, E => bit9_reg_rst, Q => sfsm_new_state(1));
  sfsm_g434 : AO221D0BWP7T port map(A1 => sfsm_n_7, A2 => sfsm_state(0), B1 => actBit, B2 => sfsm_n_0, C => muxFSM, Z => sfsm_n_9);
  sfsm_g435 : OAI21D0BWP7T port map(A1 => sfsm_n_7, A2 => sfsm_n_0, B => sfsm_n_1, ZN => sfsm_n_8);
  sfsm_g436 : OAI221D0BWP7T port map(A1 => sfsm_n_3, A2 => count25M(7), B1 => count25M(9), B2 => count25M(10), C => sfsm_n_6, ZN => sfsm_n_7);
  sfsm_g437 : OA31D0BWP7T port map(A1 => count25M(6), A2 => sfsm_n_3, A3 => sfsm_n_5, B => count25M(11), Z => sfsm_n_6);
  sfsm_dataToReg_reg_0 : LHQD1BWP7T port map(D => sfsm_n_4, E => bit9_reg_rst, Q => data_sr_9bit(4));
  sfsm_g439 : AN4D1BWP7T port map(A1 => sfsm_n_2, A2 => count25M(1), A3 => count25M(2), A4 => count25M(3), Z => sfsm_n_5);
  sfsm_g440 : OA21D0BWP7T port map(A1 => ClkSwitch, A2 => muxFSM, B => actBit, Z => sfsm_n_4);
  sfsm_g441 : AN2D1BWP7T port map(A1 => count25M(4), A2 => count25M(5), Z => sfsm_n_2);
  sfsm_g442 : NR2XD0BWP7T port map(A1 => sfsm_state(1), A2 => sfsm_state(0), ZN => cntReset25M);
  sfsm_g443 : OR2D0BWP7T port map(A1 => count25M(10), A2 => count25M(8), Z => sfsm_n_3);
  sfsm_g444 : CKAN2D8BWP7T port map(A1 => sfsm_n_1, A2 => sfsm_state(0), Z => ClkSwitch);
  sfsm_g445 : NR2XD0BWP7T port map(A1 => sfsm_n_1, A2 => sfsm_state(0), ZN => muxFSM);
  sfsm_g446 : CKND2D0BWP7T port map(A1 => sfsm_state(1), A2 => sfsm_state(0), ZN => bit9_reg_rst);
  sfsm_state_reg_1 : DFKCND1BWP7T port map(CN => sfsm_new_state(1), CP => CTS_4, D => actBit, Q => sfsm_state(1), QN => sfsm_n_1);
  sfsm_state_reg_0 : DFKCND1BWP7T port map(CN => sfsm_new_state(0), CP => CTS_4, D => actBit, Q => sfsm_state(0), QN => sfsm_n_0);
  flipflop5_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => mouse_y(1), E => yflipfloprst, Q => FE_OFN8_mouseY_1);
  flipflop6_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => mouse_y(2), E => yflipfloprst, Q => FE_OFN9_mouseY_2);
  flipflop7_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => btns(4), E => btnflipfloprst, Q => FE_OFN0_buttons_4);
  flipflop8_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => btns(3), E => btnflipfloprst, Q => FE_OFN4_buttons_3);
  sr_new_new_data_reg_1 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_9, Q => sr_new_new_data(1));
  sr_new_new_data_reg_4 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_10, Q => FE_PHN12_sr_new_new_data_4);
  sr_new_new_data_reg_2 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_11, Q => FE_PHN11_sr_new_new_data_2);
  sr_new_new_data_reg_7 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_5, Q => FE_PHN24_sr_new_new_data_7);
  sr_new_new_data_reg_6 : DFQD1BWP7T port map(CP => CTS_4, D => FE_PHN43_sr_n_6, Q => sr_new_new_data(6));
  sr_new_new_data_reg_5 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_7, Q => sr_new_new_data(5));
  sr_new_new_data_reg_8 : DFQD1BWP7T port map(CP => CTS_4, D => FE_PHN39_sr_n_4, Q => muxReg);
  sr_g379 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(2), B1 => sr_n_2, B2 => FE_PHN14_sr_new_new_data_1, C => sr_n_1, Z => sr_n_11);
  sr_g380 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(4), B1 => sr_n_2, B2 => sr_new_new_data(3), C => sr_n_1, Z => sr_n_10);
  sr_g381 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => FE_PHN14_sr_new_new_data_1, B1 => sr_n_2, B2 => FE_PHN17_sr_new_new_data_0, C => sr_n_1, Z => sr_n_9);
  sr_new_new_data_reg_3 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_3, Q => FE_PHN21_sr_new_new_data_3);
  sr_new_new_data_reg_0 : DFQD1BWP7T port map(CP => CTS_4, D => sr_n_8, Q => sr_new_new_data(0));
  sr_g384 : AO21D0BWP7T port map(A1 => sr_n_0, A2 => FE_PHN17_sr_new_new_data_0, B => sr_n_1, Z => sr_n_8);
  sr_g385 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => FE_PHN20_sr_new_new_data_5, B1 => sr_new_new_data(4), B2 => sr_n_2, Z => sr_n_7);
  sr_g386 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => FE_PHN22_sr_new_new_data_6, B1 => FE_PHN20_sr_new_new_data_5, B2 => sr_n_2, Z => sr_n_6);
  sr_g387 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(7), B1 => FE_PHN22_sr_new_new_data_6, B2 => sr_n_2, Z => sr_n_5);
  sr_g388 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => FE_PHN42_muxReg, B1 => sr_new_new_data(7), B2 => sr_n_2, Z => sr_n_4);
  sr_g389 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => FE_PHN41_sr_new_new_data_3, B1 => sr_new_new_data(2), B2 => sr_n_2, Z => sr_n_3);
  sr_g390 : INR2D1BWP7T port map(A1 => output_edgedet, B1 => bit9_reg_rst, ZN => sr_n_2);
  sr_g391 : AN2D1BWP7T port map(A1 => bit9_reg_rst, A2 => data_sr_9bit(4), Z => sr_n_1);
  sr_g392 : NR2D1BWP7T port map(A1 => bit9_reg_rst, A2 => output_edgedet, ZN => sr_n_0);
  mx_g23 : ND2D5BWP7T port map(A1 => mx_n_0, A2 => mx_n_1, ZN => DataSwitch);
  mx_g24 : ND2D1BWP7T port map(A1 => n_0, A2 => muxReg, ZN => mx_n_1);
  mx_g25 : IND2D1BWP7T port map(A1 => n_0, B1 => muxFSM, ZN => mx_n_0);
  cnt_g65 : INVD1BWP7T port map(I => cntReset25M, ZN => cnt_n_21);
  cnt_count_reg_11 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_20, Q => count25M(11));
  cnt_count_reg_10 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_19, Q => FE_PHN30_count25M_10);
  cnt_g210 : MOAI22D0BWP7T port map(A1 => cnt_n_18, A2 => count25M(11), B1 => cnt_n_18, B2 => count25M(11), ZN => FE_PHN38_cnt_n_20);
  cnt_count_reg_9 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_17, Q => count25M(9));
  cnt_g212 : MOAI22D0BWP7T port map(A1 => cnt_n_16, A2 => count25M(10), B1 => cnt_n_16, B2 => count25M(10), ZN => cnt_n_19);
  cnt_g213 : IND2D1BWP7T port map(A1 => cnt_n_16, B1 => count25M(10), ZN => cnt_n_18);
  cnt_count_reg_8 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_15, Q => FE_PHN31_count25M_8);
  cnt_g215 : MOAI22D0BWP7T port map(A1 => cnt_n_14, A2 => FE_PHN18_count25M_9, B1 => cnt_n_14, B2 => count25M(9), ZN => cnt_n_17);
  cnt_g216 : IND2D1BWP7T port map(A1 => cnt_n_14, B1 => count25M(9), ZN => cnt_n_16);
  cnt_count_reg_7 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => FE_PHN33_cnt_n_13, Q => count25M(7));
  cnt_g218 : MOAI22D0BWP7T port map(A1 => cnt_n_12, A2 => count25M(8), B1 => cnt_n_12, B2 => count25M(8), ZN => cnt_n_15);
  cnt_g219 : IND2D1BWP7T port map(A1 => cnt_n_12, B1 => count25M(8), ZN => cnt_n_14);
  cnt_count_reg_6 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_11, Q => FE_PHN32_count25M_6);
  cnt_g221 : MOAI22D0BWP7T port map(A1 => cnt_n_10, A2 => count25M(7), B1 => cnt_n_10, B2 => count25M(7), ZN => cnt_n_13);
  cnt_g222 : IND2D1BWP7T port map(A1 => cnt_n_10, B1 => count25M(7), ZN => cnt_n_12);
  cnt_count_reg_5 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => FE_PHN36_cnt_n_9, Q => count25M(5));
  cnt_g224 : MOAI22D0BWP7T port map(A1 => cnt_n_8, A2 => count25M(6), B1 => cnt_n_8, B2 => count25M(6), ZN => cnt_n_11);
  cnt_g225 : IND2D1BWP7T port map(A1 => cnt_n_8, B1 => count25M(6), ZN => cnt_n_10);
  cnt_count_reg_4 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_7, Q => count25M(4));
  cnt_g227 : MOAI22D0BWP7T port map(A1 => cnt_n_6, A2 => count25M(5), B1 => cnt_n_6, B2 => count25M(5), ZN => cnt_n_9);
  cnt_g228 : IND2D1BWP7T port map(A1 => cnt_n_6, B1 => count25M(5), ZN => cnt_n_8);
  cnt_count_reg_3 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => cnt_n_5, Q => count25M(3));
  cnt_g230 : MOAI22D0BWP7T port map(A1 => cnt_n_4, A2 => count25M(4), B1 => cnt_n_4, B2 => count25M(4), ZN => FE_PHN34_cnt_n_7);
  cnt_g231 : IND2D1BWP7T port map(A1 => cnt_n_4, B1 => count25M(4), ZN => cnt_n_6);
  cnt_count_reg_2 : DFKCNQD1BWP7T port map(CN => cnt_n_21, CP => CTS_4, D => FE_PHN35_cnt_n_3, Q => count25M(2));
  cnt_g233 : MOAI22D0BWP7T port map(A1 => cnt_n_2, A2 => count25M(3), B1 => cnt_n_2, B2 => count25M(3), ZN => FE_PHN37_cnt_n_5);
  cnt_g234 : IND2D1BWP7T port map(A1 => cnt_n_2, B1 => count25M(3), ZN => cnt_n_4);
  cnt_count_reg_1 : DFKCNQD1BWP7T port map(CN => cnt_n_1, CP => CTS_4, D => cnt_n_21, Q => count25M(1));
  cnt_g236 : MOAI22D0BWP7T port map(A1 => cnt_n_0, A2 => count25M(2), B1 => cnt_n_0, B2 => count25M(2), ZN => cnt_n_3);
  cnt_g237 : IND2D1BWP7T port map(A1 => cnt_n_0, B1 => count25M(2), ZN => cnt_n_2);
  cnt_count_reg_0 : DFKCND1BWP7T port map(CN => FE_PHN23_cnt_count_0, CP => CTS_4, D => cnt_n_21, Q => UNCONNECTED, QN => cnt_count(0));
  cnt_g239 : MOAI22D0BWP7T port map(A1 => cnt_count(0), A2 => count25M(1), B1 => cnt_count(0), B2 => count25M(1), ZN => cnt_n_1);
  cnt_g240 : IND2D1BWP7T port map(A1 => cnt_count(0), B1 => count25M(1), ZN => cnt_n_0);
  flipflop9_Q_reg : EDFQD0BWP7T port map(CP => CTS_4, D => btns(2), E => btnflipfloprst, Q => FE_OFN6_buttons_2);

end routed;
