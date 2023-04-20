library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.constants.all;

entity P4_ADDER is
    generic (
        NBIT : integer := numBit);
    port (
        A : in std_logic_vector(NBIT - 1 downto 0);
        B : in std_logic_vector(NBIT - 1 downto 0);
        Cin : in std_logic;
        S : out std_logic_vector(NBIT - 1 downto 0);
        Cout : out std_logic);
end entity P4_ADDER;

architecture STRUCT of P4_ADDER is

    component CARRY_GENERATOR is
        -- Generics changed to NBIT_PER_BLOCK and NBLOCKS to match the other TBs. 
        generic (
            NBIT : integer := numBit;
            NBIT_PER_BLOCK : integer := 4);
        port (
            A : in std_logic_vector(NBIT - 1 downto 0);
            B : in std_logic_vector(NBIT - 1 downto 0);
            Cin : in std_logic;
            Co : out std_logic_vector((NBIT/NBIT_PER_BLOCK) - 1 downto 0));
    end component;

    component SUM_GENERATOR is
        generic (
            NBIT_PER_BLOCK : integer := CARRY_SELECT_NBIT;
            NBLOCKS : integer := SUM_GENERATOR_NBLOCKS);
        port (
            A : in std_logic_vector(NBIT - 1 downto 0);
            B : in std_logic_vector(NBIT - 1 downto 0);
            CI : in std_logic_vector(NBLOCKS - 1 downto 0);
            S : out std_logic_vector(NBIT - 1 downto 0));
    end component;

    signal A_s : std_logic_vector(numBit - 1 downto 0);
    signal B_s : std_logic_vector(numBit - 1 downto 0);
    signal cg_out : std_logic_vector(SUM_GENERATOR_NBLOCKS - 1 downto 0);
begin

    -- using default values for generics
    carry_net : CARRY_GENERATOR
    generic map(
        NBIT => numBit,
        NBIT_PER_BLOCK => 4
    )
    port map(
        A => A,
        B => B,
        Cin => Cin,
        Co => cg_out
    );

    -- using default values for generics
    sum_gen : SUM_GENERATOR
    port map(
        A => A,
        B => B,
        -- The most significant carry generated is discarded
        Ci(SUM_GENERATOR_NBLOCKS - 1 downto 1) => cg_out(SUM_GENERATOR_NBLOCKS - 2 downto 0),
        -- While the least significant (Cin) is propagated
        Ci(0) => Cin,
        S => S
    );

    Cout <= cg_out(SUM_GENERATOR_NBLOCKS - 1);

end architecture STRUCT;
