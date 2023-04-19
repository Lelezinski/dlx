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

		A_s     <= "1111111111111000";
		B_s     <= "0000000000000010";
		Cin_s   <= '0';

		WAIT FOR 20 NS;

		A_s <= "1000100010001010";
		B_s <= "1000100010001101";
		Cin_s <= '1';

		WAIT FOR 20 NS;

		A_s <= "0000111111111111";
		B_s <= "0000000000000001";
		Cin_s <= '0';

		WAIT FOR 20 NS;

		A_s <= "0000000000000000";
		B_s <= "0000000000000001";
		Cin_s <= '0';

		WAIT FOR 20 NS;

		WAIT;
	END PROCESS;
	
end TEST;

