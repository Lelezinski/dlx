library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity G_BLOCK is
	port (
		G_left  : in std_logic;
		P_left  : in std_logic;
        G_right : in std_logic;

		G_out : out std_logic);
end G_BLOCK;

architecture BEHAVIORAL of G_BLOCK is
begin

    G_out <= G_left OR (P_left AND G_right);

end BEHAVIORAL;
