library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.myTypes.all;

entity SUM_GENERATOR is
    generic (
        NBIT_PER_BLOCK : integer := CARRY_SELECT_NBIT;
        NBLOCKS        : integer := SUM_GENERATOR_NBLOCKS);
    port (
        A  : in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
        B  : in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
        Ci : in  std_logic_vector(NBLOCKS - 1 downto 0);
        S  : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0));
end SUM_GENERATOR;

architecture STRUCTURAL of SUM_GENERATOR is

    -- Carry Select Block component
    component CARRY_SELECT is
        generic (
            NBIT : integer := CARRY_SELECT_NBIT);
        port (
            ci   : in  std_logic;       -- mux selection signal
            A, B : in  std_logic_vector(NBIT - 1 downto 0);
            sum  : out std_logic_vector(NBIT - 1 downto 0));
    end component;

begin

    gen : for i in 0 to NBLOCKS - 1 generate
        cs : CARRY_SELECT
            generic map(NBIT => NBIT_PER_BLOCK)
            port map(A   => A(((i+1)*(NBIT_PER_BLOCK)-1) downto i*NBIT_PER_BLOCK),
                     B   => B(((i+1)*(NBIT_PER_BLOCK)-1) downto i*NBIT_PER_BLOCK),
                     Ci  => Ci(i),
                     sum => S(((i+1)*(NBIT_PER_BLOCK)-1) downto i*NBIT_PER_BLOCK));
    end generate;

end STRUCTURAL;
