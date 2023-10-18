library ieee;
use ieee.std_logic_1164.all;

entity FA is
  generic (DFAS : time := 0 ns;
           DFAC : time := 0 ns);
  port (A  : in  std_logic;
        B  : in  std_logic;
        Ci : in  std_logic;
        S  : out std_logic;
        Co : out std_logic);
end FA;

architecture BEHAVIORAL of FA is

begin

  S  <= A xor B xor Ci                        after DFAS;
  Co <= (A and B) or (B and Ci) or (A and Ci) after DFAC;
  -- Co <= (A and B) or (B and Ci) or (A and Ci);

end BEHAVIORAL;

configuration CFG_FA_BEHAVIORAL of FA is
  for BEHAVIORAL
  end for;
end CFG_FA_BEHAVIORAL;
