LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constants.ALL;

ENTITY P_BLOCK IS
	PORT (
		G_left : IN STD_LOGIC;
		P_left : IN STD_LOGIC;
    G_right : IN STD_LOGIC;
		P_right : IN STD_LOGIC;

		G_out : OUT STD_LOGIC);
		P_out : OUT STD_LOGIC);
END P_BLOCK;

ARCHITECTURE BEHAVIORAL OF P_BLOCK IS
BEGIN

    G_out <= G_left OR (P_left AND G_right);
    P_out <= P_left AND P_right;

END BEHAVIORAL;
