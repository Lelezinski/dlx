library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.myTypes.all;

entity MUX_5TO1 is
    generic (
        NBIT : integer := numBit
        );
    port (
        A0  : in  std_logic_vector(NBIT - 1 downto 0);
        A1  : in  std_logic_vector(NBIT - 1 downto 0);
        A2  : in  std_logic_vector(NBIT - 1 downto 0);
        A3  : in  std_logic_vector(NBIT - 1 downto 0);
        A4  : in  std_logic_vector(NBIT - 1 downto 0);
        sel : in  std_logic_vector(2 downto 0);
        O   : out std_logic_vector(NBIT - 1 downto 0)
        );
end entity MUX_5TO1;

architecture BEHAVIORAL of MUX_5TO1 is

begin

    s : process(A0, A1, A2, A3, A4, sel)
    begin
        case sel is
            when "000"  => O <= A0;
            when "001"  => O <= A1;
            when "010"  => O <= A2;
            when "011"  => O <= A3;
            when "100"  => O <= A4;
            when others => O <= (others => 'X');
        end case;
    end process;

end architecture BEHAVIORAL;
