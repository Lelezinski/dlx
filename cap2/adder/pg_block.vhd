LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

ENTITY PG_BLOCK IS
    -- TODO: WRITE
	GENERIC (
		NBIT_PER_BLOCK : INTEGER := CARRY_SELECT_NBIT;
		NBLOCKS : INTEGER := SUM_GENERATOR_NBLOCK);
	PORT (
		A : IN STD_LOGIC_VECTOR(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);

		P : OUT STD_LOGIC;
		G : OUT STD_LOGIC);
END PG_BLOCK;

ARCHITECTURE BEHAVIORAL OF PG_BLOCK IS
BEGIN

	-- TODO: WRITE

END BEHAVIORAL;