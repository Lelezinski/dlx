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
	-- Memory Bus
	signal FROM_MEM : std_logic_vector((REG_WORD_LEN - 1) downto 0); 
	signal TO_MEM : std_logic_vector((REG_WORD_LEN - 1) downto 0);

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
            SPILL : out std_logic;
			-- Memory Bus
			FROM_MEM : in std_logic_vector((WORD_LEN - 1) downto 0);
			TO_MEM : out std_logic_vector((WORD_LEN - 1) downto 0);
        );
	end component;

    constant WORD_LEN : integer := REG_WORD_LEN;
    constant M : integer := NUM_GLOBAL_REGISTERS; -- Number of Global Registers
    constant N : integer := NUM_LIO_REGISTERS; -- Number of IN/OUT/LOCAL Registers
    constant F : integer := NUM_WINDOWS; -- Number of Windows
    constant CLK_PERIOD : time := 1 ns;
begin

	RG : WINDOWED_REGISTER_FILE
	port map(CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2, CALL, RET, FILL, SPILL, FROM_MEM, TO_MEM);

	RESET <= '1', '0' after 1 ns;
	ENABLE <= '1';

	RD1 <= '0';
	RD2 <= '0';

    testVector: process
    begin
        CALL <= '0';
        WAIT FOR CLK_PERIOD;

        CALL <= '0';
        WAIT FOR CLK_PERIOD;
	    WR <= '1';
        CALL <= '0';

        -- check that a process can fill its window
        for i in 0 to ((3 * N) + M - 1) loop
            ADD_WR <= std_logic_vector(to_unsigned(i, integer(ceil(log2(real((3 * N) + M))))));
            DATAIN <= std_logic_vector(to_unsigned(i, WORD_LEN));
            WAIT FOR CLK_PERIOD * 2;
        end loop;

        -- forcing overflow
        -- a call lasts exactly one clock period
        -- in the last loop cycle, the first window is splled
        for i in 0 to F - 1 loop
            CALL <= '1';
            WAIT FOR CLK_PERIOD;
        end loop;

        -- at this point CWP should be again at 0 and SWP at 1
        -- wait that splling ends in 8 clock cycle.
        CALL <= '0';
        wait for 2 * N * CLK_PERIOD;

        -- another process acquires the first window and writes 0s
        for i in 0 to (2 * N - 1) loop
            ADD_WR <= std_logic_vector(to_unsigned(i, integer(ceil(log2(real((3 * N) + M))))));
            DATAIN <= (others => '0');
            WAIT FOR CLK_PERIOD * 2;
        end loop;

        -- forcing underflow
        -- a return lasts exactly one clock period
        for i in 0 to F - 2 loop
            RET <= '1';
            WAIT FOR CLK_PERIOD;
        end loop;

        -- at this point FILL = 1 
        -- the Memory gives a new value each clock cycle
        for i in (2 * N - 1) downto 0 loop
            FROM_MEM <= std_logic_vector(to_unsigned(i, WORD_LEN));
            WAIT FOR CLK_PERIOD;
        end loop;

        RET <= '0';

        WAIT;
    end process;

	PCLOCK : process (CLK)
	begin
		CLK <= not(CLK) after (CLK_PERIOD / 2);
	end process;

end TESTA;

configuration CFG_TESTRF of TBREGISTERFILE is
	for TESTA
		for RG : WINDOWED_REGISTER_FILE
			use configuration WORK.CFG_RF_BEH;
		end for;
	end for;
end CFG_TESTRF;
