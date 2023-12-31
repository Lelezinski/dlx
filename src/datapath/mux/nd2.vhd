library IEEE;
use IEEE.std_logic_1164.all;  --  libreria IEEE con definizione tipi standard logic
use WORK.myTypes.all;         -- libreria WORK user-defined

entity ND2 is
    port (A : in  std_logic;
          B : in  std_logic;
          Y : out std_logic);
end ND2;


architecture BEHAVIORAL of ND2 is

begin
    Y <= not(A and B) after NDDELAY;
end BEHAVIORAL;


configuration CFG_ND2_BEHAVIORAL of ND2 is
    for BEHAVIORAL
    end for;
end CFG_ND2_BEHAVIORAL;
