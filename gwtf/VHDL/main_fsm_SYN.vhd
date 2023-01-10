
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of main_fsm is

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component OA32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component CKND4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OR3D4BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AN3D4BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal state : std_logic_vector(4 downto 0);
  signal UNCONNECTED, UNCONNECTED0, UNCONNECTED1, n_1, n_2 : std_logic;
  signal n_3, n_4, n_5, n_6, n_7 : std_logic;
  signal n_8, n_9, n_10, n_13, n_14 : std_logic;
  signal n_19, n_20, n_21, n_22, n_24 : std_logic;
  signal n_25, n_32, n_33, n_34, n_35 : std_logic;
  signal n_36, n_37, n_38, n_40, n_42 : std_logic;
  signal n_46, n_47, n_48, n_49, n_50 : std_logic;
  signal n_51, n_52, n_53, n_54, n_55 : std_logic;
  signal n_56, n_57, n_58, n_59, n_60 : std_logic;
  signal n_61, n_62, n_63, n_64, n_65 : std_logic;
  signal n_66, n_67, n_68, n_69, n_70 : std_logic;
  signal n_71 : std_logic;

begin

  g2493 : OAI32D1BWP7T port map(A1 => state(1), A2 => state(2), A3 => n_65, B1 => reset, B2 => n_67, ZN => n_68);
  g2497 : AOI211XD0BWP7T port map(A1 => n_7, A2 => n_48, B => n_58, C => n_47, ZN => n_67);
  g2498 : OAI31D0BWP7T port map(A1 => n_46, A2 => n_53, A3 => n_65, B => n_61, ZN => n_66);
  g2499 : OAI31D0BWP7T port map(A1 => handshake_in, A2 => n_36, A3 => n_60, B => n_59, ZN => n_64);
  g2501 : OAI221D0BWP7T port map(A1 => n_49, A2 => n_19, B1 => n_57, B2 => n_40, C => n_8, ZN => n_63);
  g2502 : OA32D1BWP7T port map(A1 => n_10, A2 => n_60, A3 => n_37, B1 => reset, B2 => n_51, Z => n_61);
  g2503 : AOI31D0BWP7T port map(A1 => n_52, A2 => n_6, A3 => n_62, B => n_56, ZN => n_59);
  g2504 : OAI22D0BWP7T port map(A1 => n_42, A2 => n_57, B1 => n_50, B2 => n_32, ZN => n_58);
  g2506 : AOI21D0BWP7T port map(A1 => n_54, A2 => state(2), B => n_25, ZN => n_56);
  g2507 : MOAI22D0BWP7T port map(A1 => n_54, A2 => n_53, B1 => n_52, B2 => n_53, ZN => n_55);
  g2505 : AOI211XD0BWP7T port map(A1 => n_34, A2 => n_50, B => n_33, C => n_5, ZN => n_51);
  g2509 : AOI21D0BWP7T port map(A1 => state(4), A2 => n_48, B => n_54, ZN => n_49);
  g2510 : AO32D1BWP7T port map(A1 => n_53, A2 => n_57, A3 => n_48, B1 => n_50, B2 => n_46, Z => n_47);
  g2517 : CKND4BWP7T port map(I => n_71, ZN => x_out(2));
  g2519 : CKND4BWP7T port map(I => n_70, ZN => x_out(1));
  g2521 : CKND4BWP7T port map(I => n_69, ZN => x_out(0));
  g2508 : IAO21D0BWP7T port map(A1 => n_46, A2 => handshake_in, B => n_35, ZN => n_42);
  g2511 : OR3D4BWP7T port map(A1 => n_2, A2 => n_40, A3 => n_14, Z => bit11_reg_rst);
  g2527 : ND2D4BWP7T port map(A1 => n_20, A2 => n_57, ZN => cntReset15k);
  g2512 : AN2D1BWP7T port map(A1 => n_52, A2 => n_57, Z => n_54);
  x_out_reg_2 : LHD1BWP7T port map(E => n_38, D => n_21, Q => UNCONNECTED, QN => n_71);
  x_out_reg_1 : LHD1BWP7T port map(E => n_38, D => n_24, Q => UNCONNECTED0, QN => n_70);
  x_out_reg_0 : LHD1BWP7T port map(E => n_38, D => n_22, Q => UNCONNECTED1, QN => n_69);
  g2513 : OA21D0BWP7T port map(A1 => n_46, A2 => n_48, B => n_36, Z => n_37);
  g2514 : AOI22D0BWP7T port map(A1 => n_34, A2 => handshake_in, B1 => state(2), B2 => n_48, ZN => n_35);
  g2515 : MAOI22D0BWP7T port map(A1 => n_9, A2 => n_32, B1 => state(4), B2 => n_48, ZN => n_33);
  g2525 : AN2D4BWP7T port map(A1 => btn_flipflop, A2 => data_in(6), Z => buttons(0));
  g2526 : AN2D4BWP7T port map(A1 => btn_flipflop, A2 => data_in(3), Z => buttons(4));
  g2522 : AN2D4BWP7T port map(A1 => btn_flipflop, A2 => data_in(4), Z => buttons(3));
  g2524 : AN2D4BWP7T port map(A1 => btn_flipflop, A2 => data_in(7), Z => buttons(1));
  g2523 : AN2D4BWP7T port map(A1 => btn_flipflop, A2 => data_in(2), Z => buttons(2));
  g2528 : IND2D1BWP7T port map(A1 => n_25, B1 => n_48, ZN => n_65);
  g2539 : AN2D1BWP7T port map(A1 => x_flipflop, A2 => data_in(3), Z => n_24);
  g2532 : AN2D1BWP7T port map(A1 => x_flipflop, A2 => data_in(2), Z => n_22);
  g2531 : AN2D1BWP7T port map(A1 => x_flipflop, A2 => data_in(4), Z => n_21);
  g2541 : AOI21D0BWP7T port map(A1 => n_19, A2 => n_46, B => x_flipflop, ZN => n_20);
  g2529 : NR2XD0BWP7T port map(A1 => n_32, A2 => n_48, ZN => n_52);
  g2530 : NR2XD0BWP7T port map(A1 => state(4), A2 => n_48, ZN => n_50);
  g2534 : AN2D4BWP7T port map(A1 => y_flipflop, A2 => data_in(3), Z => y_out(1));
  g2533 : AN2D4BWP7T port map(A1 => y_flipflop, A2 => data_in(4), Z => y_out(2));
  g2538 : AN2D4BWP7T port map(A1 => y_flipflop, A2 => data_in(2), Z => y_out(0));
  g2537 : MOAI22D0BWP7T port map(A1 => n_13, A2 => state(2), B1 => n_13, B2 => state(2), ZN => n_14);
  g2547 : INVD4BWP7T port map(I => send_reset, ZN => actBit);
  g2535 : ND2D0BWP7T port map(A1 => y_flipflop, A2 => n_10, ZN => n_38);
  g2540 : IOA21D1BWP7T port map(A1 => n_8, A2 => state(4), B => state(1), ZN => n_9);
  g2542 : OA21D0BWP7T port map(A1 => n_8, A2 => n_36, B => n_6, Z => n_7);
  g2536 : IND2D1BWP7T port map(A1 => n_1, B1 => count15k_in(3), ZN => n_48);
  g2549 : ND2D4BWP7T port map(A1 => n_13, A2 => n_6, ZN => send_reset);
  g2550 : AN2D4BWP7T port map(A1 => n_13, A2 => n_4, Z => x_flipflop);
  g2543 : AN3D4BWP7T port map(A1 => n_40, A2 => n_53, A3 => state(3), Z => btn_flipflop);
  g2544 : NR2XD0BWP7T port map(A1 => n_8, A2 => n_46, ZN => n_5);
  g2545 : INR2D1BWP7T port map(A1 => n_32, B1 => n_3, ZN => n_34);
  g2556 : INVD0BWP7T port map(I => n_4, ZN => n_19);
  g2546 : AN2D4BWP7T port map(A1 => n_3, A2 => state(4), Z => y_flipflop);
  g2559 : ND2D1BWP7T port map(A1 => state(3), A2 => n_62, ZN => n_25);
  g2560 : NR2XD0BWP7T port map(A1 => n_53, A2 => n_2, ZN => n_4);
  g2562 : NR2XD0BWP7T port map(A1 => n_46, A2 => state(1), ZN => n_13);
  g2548 : AOI21D0BWP7T port map(A1 => count15k_in(1), A2 => count15k_in(0), B => count15k_in(2), ZN => n_1);
  g2557 : ND2D0BWP7T port map(A1 => state(4), A2 => n_62, ZN => n_60);
  g2553 : NR2XD0BWP7T port map(A1 => n_36, A2 => state(0), ZN => n_40);
  g2554 : NR2XD0BWP7T port map(A1 => n_53, A2 => state(3), ZN => n_6);
  g2558 : NR2XD0BWP7T port map(A1 => state(0), A2 => state(1), ZN => n_3);
  g2552 : NR2D0BWP7T port map(A1 => state(2), A2 => state(3), ZN => n_10);
  g2551 : AN2D4BWP7T port map(A1 => state(4), A2 => state(0), Z => handshake_out);
  g2561 : ND2D1BWP7T port map(A1 => state(4), A2 => handshake_in, ZN => n_8);
  g2555 : ND2D1BWP7T port map(A1 => state(0), A2 => state(1), ZN => n_32);
  g2564 : INVD1BWP7T port map(I => reset, ZN => n_62);
  state_reg_3 : DFD1BWP7T port map(CP => clk, D => n_64, Q => state(3), QN => n_2);
  state_reg_0 : DFD1BWP7T port map(CP => clk, D => n_68, Q => state(0), QN => n_46);
  state_reg_1 : DFD1BWP7T port map(CP => clk, D => n_66, Q => state(1), QN => n_36);
  state_reg_4 : DFKCND1BWP7T port map(CP => clk, CN => n_62, D => n_63, Q => state(4), QN => n_57);
  state_reg_2 : DFKCND1BWP7T port map(CP => clk, CN => n_62, D => n_55, Q => state(2), QN => n_53);

end synthesised;
