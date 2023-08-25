LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

entity PG_NETWORK is
    generic (
        NBIT_PER_BLOCK : INTEGER := CARRY_SELECT_NBIT;
        NBLOCKS : INTEGER := SUM_GENERATOR_NBLOCKS);
    port (
        A : in std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
        B : in std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 DOWNTO 0);
        Cin : in std_logic;
        g : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS DOWNTO 1);
        p : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS DOWNTO 1));
end PG_NETWORK;

architecture BEHAVIORAL of PG_NETWORK is
begin

    g(1) <= (A(0) AND B(0)) and (A(0) xor Cin) and (B(0) xor Cin); -- expanded carry generate formula from lecture notes
    g(NBIT_PER_BLOCK * NBLOCKS downto 2) <= A((NBIT_PER_BLOCK * NBLOCKS)-1 downto 1) AND B((NBIT_PER_BLOCK * NBLOCKS)-1 downto 1);
    p(NBIT_PER_BLOCK * NBLOCKS downto 1) <= (A XOR B);

end BEHAVIORAL;
