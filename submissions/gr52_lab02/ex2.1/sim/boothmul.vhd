library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity BOOTHMUL is
  generic (
    NBIT : integer := NUMBIT_MUL/2
  );
  port (
    A : in std_logic_vector(NBIT - 1 downto 0);
    B : in std_logic_vector(NBIT - 1 downto 0);
    P : out std_logic_vector(2 * NBIT - 1 downto 0)
  );
end entity BOOTHMUL;

architecture MIXED of BOOTHMUL is

  -- SUM
  component RCA is
    generic (NBIT  : integer := 4;
             DRCAS : 	Time := 0 ns;
             DRCAC : 	Time := 0 ns);
    Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
      B:	In	std_logic_vector(NBIT-1 downto 0);
      Ci:	In	std_logic;
      S:	Out	std_logic_vector(NBIT-1 downto 0);
      Co:	Out	std_logic);
  end component;

  -- ENCODER
  component BE_BLOCK is
    port (
      b : in std_logic_vector(2 downto 0);
      sel : out std_logic_vector(2 downto 0)
    );
  end component;

  -- MUX
  component MUX_5TO1 is
      generic (
          NBIT : integer := numBit
      );
      port (
          A1 : in std_logic_vector(NBIT - 1 downto 0);
          A0 : in std_logic_vector(NBIT - 1 downto 0);
          A2 : in std_logic_vector(NBIT - 1 downto 0);
          A3 : in std_logic_vector(NBIT - 1 downto 0);
          A4 : in std_logic_vector(NBIT - 1 downto 0);
          sel : in std_logic_vector(2 downto 0);
          O : out std_logic_vector(NBIT - 1 downto 0)
      );
  end component;

  -- Routing Signals

  -- MUX SELECTIONS
  type selVectorType is array ((NBIT/2)-1 downto 0) of std_logic_vector(2 downto 0);
  signal selVector : selVectorType;
  -- MUX OUTPUTS
  type muxVectorType is array ((NBIT/2)-1 downto 0) of std_logic_vector((2 * NBIT - 1) downto 0);
  signal muxOutVector : muxVectorType;
  -- SUM OUTPUTS
  type sumVectorType is array ((NBIT/2)-1 downto 1) of std_logic_vector((2 * NBIT - 1) downto 0);
  signal sumVector : sumVectorType; -- Vector starts from 1 to match the stage number
  -- MUX SHIFTED INPUTS
  type muxInputType is array ((NBIT/2)-1 downto 0, 3 downto 0) of std_logic_vector((2 * NBIT - 1) downto 0);
  signal muxInputs: muxInputType;

begin

  -- Multiplier
  bmul: for i in 0 to ((NBIT/2)-1) generate

    stage0 : if i = 0 generate
      -- B extended for the first stage
      eb : BE_BLOCK
      port map (
        b(2 downto 1) => B(1 downto 0),
        b(0) => '0',
        sel => selVector(0)
      );
    end generate;

    stage1 : if i = 1 generate
      -- The first SUM block is the only one that takes
      --  as input the output of the first two MUXes 
      eb : BE_BLOCK
      port map (
        b => B((i*2)+1 downto (i*2)-1),
        sel => selVector(i)
      );
    
      sum : RCA
      generic map (
        NBIT => (2 * NBIT)
      )
      port map (
        A => muxOutVector(0),
        B => muxOutVector(1),
        Ci => '0',
        S => sumVector(1),
        Co => open
      );
    end generate;

    stageN : if i > 1 generate
      -- Regular pattern for the rest of the MUL
      eb : BE_BLOCK
      port map (
        b => B((i*2)+1 downto (i*2)-1),
        sel => selVector(i)
      );

      sum : RCA
      generic map (
        NBIT => (2*NBIT) 
      )
      port map (
        A => muxOutVector(i),
        B => sumVector(i-1),
        Ci => '0',
        S => sumVector(i),
        Co => open
      );
    end generate;

    -- Additionally, a MUX is present at each stage 
    mux : MUX_5TO1
    generic map (
      NBIT => (2*NBIT)
    )
    port map (
      A0 => (OTHERS => '0'), -- 0
      A1 => muxInputs(i, 0), -- +A shifted 2*i positions
      A2 => muxInputs(i, 1), -- -A shifted 2*i positions
      A3 => muxInputs(i, 2), -- +A shifted 4*i positions
      A4 => muxInputs(i, 3), -- -A shifted 4*i positions
      sel => selVector(i),
      O => muxOutVector(i)
    );

  end generate;

  -- resize(signed(slv_8), slv_16'length)
  shiftedInput: for i in 0 to (NBIT/2)-1 generate
    muxInputs(i, 0) <= std_logic_vector(shift_left(resize(signed(A), muxInputs(i, 0)'length), 2*i));
    muxInputs(i, 1) <= std_logic_vector(shift_left(resize(-1 * signed(A), muxInputs(i, 1)'length), 2*i));
    muxInputs(i, 2) <= std_logic_vector(shift_left(resize(signed(A), muxInputs(i, 2)'length), 2*i+1));
    muxInputs(i, 3) <= std_logic_vector(shift_left(resize(-1 * signed(A), muxInputs(i, 3)'length), 2*i+1));
  end generate;
  
  -- The last stage of the multiplier generates the final output P
  P <= sumVector((NBIT/2)-1);
    
end architecture MIXED;
