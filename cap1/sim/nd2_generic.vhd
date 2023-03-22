library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity ND2_GEN is
	Generic (NBIT: integer:= numBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end ND2_GEN;


architecture BEHAVIORAL of ND2_GEN is

begin
	Y <= not( A and B) after NDDELAY;

end BEHAVIORAL;


configuration CFG_ND2_GEN_BEHAVIORAL of ND2_GEN is
	for BEHAVIORAL
	end for;
end CFG_ND2_GEN_BEHAVIORAL;
