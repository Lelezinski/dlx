library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.myTypes.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is

    -- P4 component declaration
    component P4_ADDER is
        generic (
            NBIT : integer := numBit);
        port (
            A    : in  std_logic_vector(NBIT - 1 downto 0);
            B    : in  std_logic_vector(NBIT - 1 downto 0);
            Cin  : in  std_logic;
            S    : out std_logic_vector(NBIT - 1 downto 0);
            Cout : out std_logic);
    end component;

    signal A_s    : std_logic_vector(numBit - 1 downto 0);
    signal B_s    : std_logic_vector(numBit - 1 downto 0);
    signal S_s    : std_logic_vector(numBit - 1 downto 0);
    signal Cin_s  : std_logic;
    signal Cout_s : std_logic;

begin

    p4 : P4_ADDER
        generic map(
            NBIT => numBit
            )
        port map(
            A    => A_s,
            B    => B_s,
            Cin  => Cin_s,
            S    => S_s,
            Cout => Cout_s
            );

    testVector : process
    begin

        -- case proposed in lab document, point 2.1.4
        A_s   <= x"FFFF";
        B_s   <= x"0001";
        Cin_s <= '0';

        wait for 20 ns;

        -- previous case but with carry in set to 1
        A_s   <= x"FFFF";
        B_s   <= x"0001";
        Cin_s <= '1';

        wait for 20 ns;

        -- extreme case with both operands with their maximum value, plus carry in set to 1
        A_s   <= x"FFFF";
        B_s   <= x"FFFF";
        Cin_s <= '1';

        wait for 20 ns;

        -- other cases
        A_s   <= x"FFFF";
        B_s   <= x"0008";
        Cin_s <= '0';

        wait for 20 ns;

        A_s   <= x"FFFF";
        B_s   <= x"0000";
        Cin_s <= '1';

        wait for 20 ns;

        wait;
    end process;

end TEST;
