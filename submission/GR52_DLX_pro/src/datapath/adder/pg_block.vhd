library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.myTypes.all;

entity PG_BLOCK is
    port (
        G_left  : in std_logic;
        P_left  : in std_logic;
        G_right : in std_logic;
        P_right : in std_logic;

        P_out : out std_logic;
        G_out : out std_logic);
end PG_BLOCK;

architecture BEHAVIORAL of PG_BLOCK is
begin

    G_out <= G_left or (P_left and G_right);
    P_out <= P_left and P_right;

end BEHAVIORAL;
