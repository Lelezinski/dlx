library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
	-- P4 component declaration
	component P4_ADDER is
		generic (
			NBIT :		integer := 32);
		port (
			A :		in	std_logic_vector(NBIT-1 downto 0);
			B :		in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			S :		out	std_logic_vector(NBIT-1 downto 0);
			Cout :	out	std_logic);
	end component;
	
	
begin
	-- P4 instantiation
	-- 
	--
	
	
end TEST;

