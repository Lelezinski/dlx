library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all; -- libreria WORK user-defined

entity MUX21_GENERIC is
	Generic (NBIT: integer:= numBit;
		 	 DELAY_MUX: Time:= tp_mux);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			SEL: In	std_logic;
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end MUX21_GENERIC;


architecture BEHAVIORAL of MUX21_GENERIC is

begin
	Y <= A when SEL='1' else B;

end BEHAVIORAL;

architecture STRUCTURAL of MUX21_GENERIC is

	signal Y1: std_logic;
	signal Y2: std_logic;
	signal SB: std_logic;

	component ND2
	
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Y:	Out	std_logic);
	end component;
	
	component IV
	
	Port (	A:	In	std_logic;
			Y:	Out	std_logic);
	end component;

begin

	UIV : IV
	Port Map ( S, SB);

	UND1 : ND2
	Port Map ( A, S, Y1);

	UND2 : ND2
	Port Map ( B, SB, Y2);

	UND3 : ND2
	Port Map ( Y1, Y2, Y);


end STRUCTURAL;


configuration CFG_MUX21_GEN_BEHAVIORAL of MUX21_GENERIC is
	for BEHAVIORAL
	end for;
end CFG_MUX21_GEN_BEHAVIORAL_1;

configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_GENERIC is
	for STRUCTURAL
		for all : IV
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
		for all : ND2
			use configuration WORK.CFG_ND2_ARCH2;
		end for;
	end for;
end CFG_MUX21_GEN_STRUCTURAL;
