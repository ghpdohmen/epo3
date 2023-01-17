
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of sendfsm is

  component LHQD1BWP7T
    port(E, D : in std_logic; Q : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component OA31D0BWP7T
    port(A1, A2, A3, B : in std_logic; Z : out std_logic);
  end component;

  component INVD8BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component AN4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal new_state : std_logic_vector(1 downto 0);
  signal state : std_logic_vector(1 downto 0);
  signal UNCONNECTED, dataToReg_0_188, n_0, n_3, n_4 : std_logic;
  signal n_6, n_11, n_12, n_13, n_14 : std_logic;
  signal n_15, n_17, n_19 : std_logic;

begin

  dataToReg(0) <= dataToReg(1);
  dataToReg(2) <= dataToReg(4);
  dataToReg(3) <= dataToReg(8);
  dataToReg(5) <= dataToReg(8);
  dataToReg(6) <= dataToReg(8);
  dataToReg(7) <= dataToReg(8);
  new_state_reg_0 : LHQD1BWP7T port map(E => regRst, D => n_17, Q => new_state(0));
  new_state_reg_1 : LHQD1BWP7T port map(E => regRst, D => n_15, Q => new_state(1));
  g468 : AO221D0BWP7T port map(A1 => state(0), A2 => n_13, B1 => n_14, B2 => n_19, C => dataTrans, Z => n_17);
  g469 : OAI21D0BWP7T port map(A1 => n_14, A2 => n_13, B => n_3, ZN => n_15);
  g470 : OAI221D0BWP7T port map(A1 => n_11, A2 => countIn(7), B1 => countIn(9), B2 => countIn(10), C => n_12, ZN => n_13);
  g471 : OA31D0BWP7T port map(A1 => countIn(6), A2 => n_11, A3 => n_4, B => countIn(11), Z => n_12);
  g472 : INVD8BWP7T port map(I => dataToReg_0_188, ZN => dataToReg(1));
  g474 : INVD8BWP7T port map(I => dataToReg_0_188, ZN => dataToReg(4));
  dataToReg_reg_0 : LHD1BWP7T port map(E => regRst, D => n_6, Q => UNCONNECTED, QN => dataToReg_0_188);
  g478 : OA21D0BWP7T port map(A1 => dataTrans, A2 => clkTrans, B => actBit, Z => n_6);
  g477 : AN4D1BWP7T port map(A1 => n_0, A2 => countIn(3), A3 => countIn(2), A4 => countIn(1), Z => n_4);
  g484 : AN2D4BWP7T port map(A1 => n_3, A2 => state(0), Z => clkTrans);
  g485 : AN2D4BWP7T port map(A1 => n_14, A2 => state(1), Z => dataTrans);
  g483 : AN2D4BWP7T port map(A1 => n_3, A2 => n_14, Z => timebaseRst);
  g479 : INVD1BWP7T port map(I => dataMUX, ZN => regRst);
  g480 : AN2D1BWP7T port map(A1 => countIn(5), A2 => countIn(4), Z => n_0);
  g481 : OR2D0BWP7T port map(A1 => countIn(10), A2 => countIn(8), Z => n_11);
  g482 : AN2D4BWP7T port map(A1 => state(1), A2 => state(0), Z => dataMUX);
  g486 : INVD0BWP7T port map(I => reset, ZN => n_19);
  state_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => n_19, D => new_state(0), Q => state(0), QN => n_14);
  state_reg_1 : DFKCND1BWP7T port map(CP => clk, CN => n_19, D => new_state(1), Q => state(1), QN => n_3);
  tie_0_cell : TIELBWP7T port map(ZN => dataToReg(8));

end synthesised;
