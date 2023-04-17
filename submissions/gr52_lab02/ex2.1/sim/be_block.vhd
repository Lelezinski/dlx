library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity BE_BLOCK is
  port (
    b : in std_logic_vector(2 downto 0);
    sel : out std_logic_vector(2 downto 0)
  );
end entity BE_BLOCK;

architecture BEHAVIORAL of BE_BLOCK is

begin
    with b select sel <=
        "000" when "000"|"111", -- 0
        "001" when "001"|"010", -- A
        "010" when "101"|"110", -- -A
        "011" when "011",         -- 2A
        "100" when "100",         -- -2A
        "XXX" when others;
end architecture BEHAVIORAL;
