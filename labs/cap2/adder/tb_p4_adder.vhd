library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

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
	
    signal A_s    : std_logic_vector(numBit - 1 DOWNTO 0);
    signal B_s    : std_logic_vector(numBit - 1 DOWNTO 0);
    signal S_s    : std_logic_vector(numBit-1 downto 0);
    signal Cin_s  : std_logic;
    signal Cout_s : std_logic;
begin
    p4: P4_ADDER
    generic map (
        NBIT => numBit
    )
    port map (
        A => A_s,
        B => B_s,
        Cin => Cin_s,
        S => S_s,
    	Cout => Cout_s
    );

	testVector : PROCESS
	BEGIN
        
        -- case proposed in lab document, point 2.1.4
		A_s     <= x"FFFF";
		B_s     <= x"0001";
		Cin_s   <= '0';
		assert S_s = x"0000" AND Cout_s = '1' report "Unexpected value"; 

		WAIT FOR 20 NS;

        -- previous case but with carry in set to 1
        A_s     <= x"FFFF";
		B_s     <= x"0001";
		Cin_s   <= '1';
		assert S_s = x"0001" AND Cout_s = '1' report "Unexpected value"; 
		
		WAIT FOR 20 NS;

        -- extreme case with both operands with their maximum value, plus carry in set to 1
		A_s <= x"FFFF";
		B_s <= x"FFFF";
		Cin_s <= '1';
		assert S_s = x"FFFF" AND Cout_s = '1' report "Unexpected value"; 

		WAIT FOR 20 NS;

		WAIT;
	END PROCESS;
	
end TEST;

