library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RCA is
	generic (NBIT  : integer := 4);
           -- DRCAS : 	Time := 0 ns;
	         -- DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end RCA;

architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(NBIT-1 downto 0);
  signal CTMP : std_logic_vector(NBIT downto 0);

  component FA
  -- generic (DFAS : 	Time := 0 ns;
  --       DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component;

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(NBIT);

  ADDER1: for I in 1 to NBIT generate
    FAI : FA
--	  generic map (DFAS => DRCAS, DFAC => DRCAC)
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I));
  end generate;

end STRUCTURAL;


architecture BEHAVIORAL of RCA is

begin

  process(A, B)
    variable tmp: unsigned(NBIT downto 0);
  begin
    tmp := unsigned('0' & A) + unsigned('0' & B);
    -- S   <= std_logic_vector(tmp(NBIT-1 downto 0)) after DRCAS;
    S   <= std_logic_vector(tmp(NBIT-1 downto 0));
    -- Co  <= std_logic(tmp(NBIT)) after DRCAC;
    Co  <= std_logic(tmp(NBIT));
  end process;

end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA is
  for BEHAVIORAL
  end for;
end CFG_RCA_BEHAVIORAL;
