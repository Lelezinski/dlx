LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

ENTITY SUM_GENERATOR IS
	GENERIC (
		NBIT_PER_BLOCK : INTEGER := CARRY_SELECT_NBIT;
		NBLOCKS : INTEGER := SUM_GENERATOR_NBLOCKS);
	PORT (
		A : IN STD_LOGIC_VECTOR(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
        -- TODO: use an array for Ci
		Ci : IN STD_LOGIC_VECTOR(NBLOCKS - 1 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0));
END SUM_GENERATOR;

ARCHITECTURE STRUCTURAL OF SUM_GENERATOR IS

	-- Carry Select Block component
	COMPONENT CARRY_SELECT IS
		GENERIC (
			NBIT : INTEGER := CARRY_SELECT_NBIT);
		PORT (
			ci : IN STD_LOGIC; -- mux selection signal
			A, B : IN STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0);
			sum : OUT STD_LOGIC_VECTOR(NBIT - 1 DOWNTO 0));
	END COMPONENT;

	-- Array used to split the N bits of the operands for each M Carry Select Block
    -- TYPE splitInput IS ARRAY OF std_logic_vector(NBIT_PER_BLOCK-1 DOWNTO 0);
    -- VARIABLE splitA: splitInput := (A())

BEGIN

	gen: FOR i IN 0 TO NBLOCKS - 1 GENERATE
	cs : CARRY_SELECT
		GENERIC MAP(NBIT => NBIT_PER_BLOCK)
            PORT MAP(A => A(((i+1)*(NBIT_PER_BLOCK)-1) DOWNTO i*NBIT_PER_BLOCK),
                     B => B(((i+1)*(NBIT_PER_BLOCK)-1) DOWNTO i*NBIT_PER_BLOCK),
                     Ci => Ci(i),
                     sum => S(((i+1)*(NBIT_PER_BLOCK)-1) DOWNTO i*NBIT_PER_BLOCK));
	END GENERATE;

END STRUCTURAL;
