library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity TBSUM_GENERATOR is
end TBSUM_GENERATOR;

architecture TEST of TBSUM_GENERATOR is


   -- todo: use constants
	component SUM_GENERATOR is
		generic (
			NBIT_PER_BLOCK: integer := 4;
			NBLOCKS:	integer := 4);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
	end component;


    SIGNAL A_s, B_s, S_s : std_logic_vector(4*4-1 downto 0);
    SIGNAL Ci_s : std_logic_vector(3 downto 0);
begin

    dut: SUM_GENERATOR
    GENERIC MAP (4, 4)
    PORT MAP(A_s, B_s, Ci_s, S_s);

    testVector: PROCESS
    BEGIN
        A_s  <= "0010101010101010";
        B_s  <= "0101011101010101";
        Ci_s <= "1000";

        WAIT FOR 20 NS;

        A_s  <= "0000000000000010";
        B_s  <= "0101011101010101";
        Ci_s <= "0000";

        WAIT FOR 20 NS;

        A_s  <= "1111111111111111";
        B_s  <= "0000000000000001";
        Ci_s <= "1111";

        WAIT;
    END PROCESS;

end TEST;

configuration SUM_GENERATORTEST of TBSUM_GENERATOR is
  for TEST
    for all: SUM_GENERATOR
      use entity WORK.SUM_GENERATOR(STRUCTURAL);
    end for;
  end for;
end SUM_GENERATORTEST;
