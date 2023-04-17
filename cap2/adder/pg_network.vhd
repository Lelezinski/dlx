LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

entity PG_NETWORK is
    generic (
        -- TODO perche non usiamo numBit = NBIT_PER_BLOCK * NBLOCKS ?
        -- definirle avrebbe senso se nella descrizione le usassimo
        NBIT_PER_BLOCK : INTEGER := CARRY_SELECT_NBIT;
        NBLOCKS : INTEGER := SUM_GENERATOR_NBLOCKS);
    port (
        A : in std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
        B : in std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
        Cin : in std_logic;
        g : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS DOWNTO 0);
        p : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS DOWNTO 0));
-- The -1 is not needed in g and p since they add one bit for the Cin
-- and shift the others one position to the left.
end PG_NETWORK;

architecture BEHAVIORAL of PG_NETWORK is
begin

    g <= (A AND B) & Cin;
    p <= (A XOR B) & '0';

end BEHAVIORAL;
