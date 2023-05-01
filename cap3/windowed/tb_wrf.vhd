library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use WORK.constants.all;

entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TESTA of TBREGISTERFILE is

    constant ADD_WIDTH : integer := integer(ceil(log2(real((3 * NUM_LIO_REGISTERS) + NUM_GLOBAL_REGISTERS))));

	signal CLK : std_logic := '0';
	-- Control
	signal RESET : std_logic;
	signal ENABLE : std_logic;
	signal RD1 : std_logic;
	signal RD2 : std_logic;
	signal WR : std_logic;
	-- Address Lines
	signal ADD_WR : std_logic_vector(ADD_WIDTH - 1 downto 0);
	signal ADD_RD1 : std_logic_vector(ADD_WIDTH - 1 downto 0);
	signal ADD_RD2 : std_logic_vector(ADD_WIDTH - 1 downto 0);
	-- Data Lines
	signal DATAIN : std_logic_vector((REG_WORD_LEN - 1) downto 0);
	signal OUT1 : std_logic_vector((REG_WORD_LEN - 1) downto 0);
	signal OUT2 : std_logic_vector((REG_WORD_LEN - 1) downto 0);
    -- Windowed Version Signals
    signal CALL : std_logic;
    signal RET : std_logic;
    signal FILL : std_logic;
    signal SPILL : std_logic;

	component WINDOWED_REGISTER_FILE
		generic (
            WORD_LEN : integer := REG_WORD_LEN;
            M : integer := NUM_GLOBAL_REGISTERS; -- Number of Global Registers
            N : integer := NUM_LIO_REGISTERS; -- Number of IN/OUT/LOCAL Registers
            F : integer := NUM_WINDOWS -- Number of Windows
        );
        port (
            CLK : in std_logic;
            -- Control
            RESET : in std_logic;
            ENABLE : in std_logic;
            RD1 : in std_logic;
            RD2 : in std_logic;
            WR : in std_logic;
            -- Address Lines
            ADD_WR : in std_logic_vector(integer(ceil(log2(real((3 * N) + M)))) - 1 downto 0);
            ADD_RD1 : in std_logic_vector(integer(ceil(log2(real((3 * N) + M)))) - 1 downto 0);
            ADD_RD2 : in std_logic_vector(integer(ceil(log2(real((3 * N) + M)))) - 1 downto 0);
            -- Data Lines
            DATAIN : in std_logic_vector((WORD_LEN - 1) downto 0);
            OUT1 : out std_logic_vector((WORD_LEN - 1) downto 0);
            OUT2 : out std_logic_vector((WORD_LEN - 1) downto 0);
            -- Windowed Version Signals
            CALL : in std_logic;
            RET : in std_logic;
            FILL : out std_logic;
            SPILL : out std_logic
        );
	end component;

begin

	RG : WINDOWED_REGISTER_FILE
	port map(CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2, CALL, RET, FILL, SPILL);

	RESET <= '1', '0' after 1 ns;
	ENABLE <= '1';
	WR <= '0', '1' after 3 ns, '0' after 4 ns, '1' after 6 ns;
	RD1 <= '1', '0' after 9 ns, '1' after 13 ns, '0' after 20 ns;
	RD2 <= '1';
	ADD_WR <= "00", "01" after 9 ns, "11" after 15 ns;
	ADD_RD1 <= "00", "01" after 9 ns;
	ADD_RD2 <= "11";
	DATAIN <= x"ff", x"dd" after 8 ns, x"cc" after 12 ns, x"aa" after 15 ns, x"bb" after 16 ns;
    CALL <= '0', '1' after 5 ns, '0' after 8 ns;
    RET <= '0', '1' after 10 ns, '0' after 17 ns;

	PCLOCK : process (CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;
	end process;

end TESTA;

configuration CFG_TESTRF of TBREGISTERFILE is
	for TESTA
		for RG : WINDOWED_REGISTER_FILE
			use configuration WORK.CFG_RF_BEH;
		end for;
	end for;
end CFG_TESTRF;
