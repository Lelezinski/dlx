library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity IV is
	Generic (N_BIT: integer:= numBit);
	Port (	A:	In	std_logic_vector(N_BIT-1 downto 0);
		Y:	Out	std_logic_vector(N_BIT-1 downto 0));
end IV;


architecture BEHAVIORAL of IV is

begin
	Y <= not(A) after IVDELAY;
	--Y <= not(A);

end BEHAVIORAL;

configuration CFG_IV_BEHAVIORAL of IV is
	for BEHAVIORAL
	end for;
end CFG_IV_BEHAVIORAL;
