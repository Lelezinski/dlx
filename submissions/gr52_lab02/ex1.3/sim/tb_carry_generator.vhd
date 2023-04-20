library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity TB_CARRY_GENERATOR is
END TB_CARRY_GENERATOR;

ARCHITECTURE TEST OF TB_CARRY_GENERATOR IS

    component CARRY_GENERATOR is
        generic (
            NBIT :          integer := numBit; -- numBit
            NBIT_PER_BLOCK: integer := CARRY_SELECT_NBIT); -- CARRY_SELECT_NBIT
        port (
            A :     in  std_logic_vector(NBIT-1 downto 0);
            B :     in  std_logic_vector(NBIT-1 downto 0);
            Cin :   in  std_logic;
            Co :    out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
    end component;

	signal A_s, B_s: std_logic_vector(numBit - 1 DOWNTO 0);
    signal Co_s: std_logic_vector((numBit/CARRY_SELECT_NBIT) - 1 DOWNTO 0);
	signal Ci_s : std_logic;

BEGIN

	dut : CARRY_GENERATOR
	GENERIC MAP(numBit, CARRY_SELECT_NBIT)
	PORT MAP(A => A_s, B => B_s, Cin => Ci_s, Co => Co_s);

	testVector : PROCESS
	BEGIN
		-- A_s <= "10101010101010101010101010101010";
		-- B_s <= "01010101010101010101010101010101";
		A_s <= "1010101010101010";
		B_s <= "0101010101010101";
		Ci_s <= '0';

		WAIT FOR 20 NS;

		A_s <= "0000000000000010";
		B_s <= "0101011101010101";
		Ci_s <= '0';

		WAIT FOR 20 NS;

		A_s <= "0000111111111111";
		B_s <= "0000000000000001";
		Ci_s <= '0';

		WAIT FOR 20 NS;

		A_s <= "0000000000000000";
		B_s <= "0000000000000001";
		Ci_s <= '0';

		WAIT;
	END PROCESS;

END TEST;
