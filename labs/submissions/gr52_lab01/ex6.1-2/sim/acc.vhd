-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.constants.all;

-------------------------------------------------------------------------------

entity ACC is
    generic (
        NBIT      : integer := numBit);
    port (
        A           : in  std_logic_vector(NBIT - 1 downto 0);
        B           : in  std_logic_vector(NBIT - 1 downto 0);
        CLK         : in  std_logic;
        RST_n       : in  std_logic;
        ACCUMULATE  : in  std_logic;
        ACC_EN_n    : in  std_logic;
        Y           : out std_logic_vector(NBIT - 1 downto 0));
end ACC;

-------------------------------------------------------------------------------
-- Behavioral Architecture

architecture BEHAVIORAL of ACC is

    signal REG: std_logic_vector(NBIT - 1 downto 0);
    signal OUT_MUX: std_logic_vector(NBIT - 1 downto 0);
    signal OUT_ADD: std_logic_vector(NBIT - 1 downto 0);

begin
    MUX_PROCESS: process(B, REG, ACCUMULATE)
    begin
        if (ACCUMULATE = '1') then
            OUT_MUX <= REG;
        else
            OUT_MUX <= B;
        end if;
    end process;

    ADD_PROCESS: process(A, OUT_MUX)
    begin
        OUT_ADD <= std_logic_vector(unsigned(A) + unsigned(OUT_MUX));
    end process;

    REG_PROCESS: process(CLK, RST_n)
    begin
        if (RST_n = '0') then
            -- Async reset
            REG <= (OTHERS => '0');
        elsif (rising_edge(CLK)) then
            if (ACC_EN_n = '0') then
                REG <= OUT_ADD;
            else
                REG <= REG;
            end if;
        end if;
    end process;

    -- Output
    Y <= REG;

end BEHAVIORAL;

-------------------------------------------------------------------------------
-- Structural Architecture

architecture STRUCTURAL of ACC is

    signal FEED_BACK: std_logic_vector(NBIT - 1 downto 0);
    signal OUT_MUX: std_logic_vector(NBIT - 1 downto 0);
	signal OUT_ADD: std_logic_vector(NBIT - 1 downto 0);
	signal RST: std_logic;

    -- Second Input MUX
    component MUX21_GENERIC
	Generic (
		NBIT: 	integer:= numBit;
		DELAY_MUX: Time:= tp_mux);
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		SEL: 	In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0));
    end component;

    -- Ripple Carry Adder
    component RCA
	Generic (
		NBIT  : integer := numBit;
		DRCAS : Time := 0 ns;
		DRCAC : Time := 0 ns);
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
    end component;

    -- Register Flip-Flop
    component FD
    Generic (
        NBIT: integer := numBit);
    Port (
        D:	In	std_logic_vector(NBIT - 1 downto 0);
        CK:	In	std_logic;
        RESET:	In	std_logic;
        Q:	Out	std_logic_vector(NBIT - 1 downto 0));
    end component;

    -- Inverter (needed to match the active low reset)
    component IV
	Port (
		A:	In	std_logic;
		Y:	Out	std_logic);
    end component;

begin

    UMUX : MUX21_GENERIC
    Port Map (B, FEED_BACK, ACCUMULATE, OUT_MUX);

	URCA : RCA
    Port Map (A, OUT_MUX, '0', OUT_ADD, open);

	UFD : FD
    Port Map (OUT_ADD, CLK, RST, FEED_BACK);

	UIV : IV
    Port Map (RST_n, RST);

    -- Output
    Y <= FEED_BACK;

end STRUCTURAL;

-------------------------------------------------------------------------------
-- Configs

configuration CFG_ACC_BEHAVIORAL of ACC is
	for BEHAVIORAL
	end for;
end CFG_ACC_BEHAVIORAL;

configuration CFG_ACC_STRUCTURAL of ACC is
	for STRUCTURAL
		for all : MUX21_GENERIC
			use configuration WORK.CFG_MUX21_GEN_STRUCTURAL;
		end for;
		for all : RCA
			use configuration WORK.CFG_RCA_STRUCTURAL;
		end for;
		for all : FD
			use configuration WORK.CFG_FD_PLUTO;
		end for;
		for all : IV
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
	end for;
end CFG_ACC_STRUCTURAL;
