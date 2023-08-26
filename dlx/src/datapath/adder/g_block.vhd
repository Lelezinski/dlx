library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.myTypes.all;

entity G_BLOCK is
    port (
        G_left  : in std_logic;
        P_left  : in std_logic;
        G_right : in std_logic;

        G_out : out std_logic);
end G_BLOCK;

architecture BEHAVIORAL of G_BLOCK is
begin

    G_out <= G_left or (P_left and G_right);

end BEHAVIORAL;
