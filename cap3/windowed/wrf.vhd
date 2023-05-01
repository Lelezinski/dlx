library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use WORK.constants.all;

entity WINDOWED_REGISTER_FILE is
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
end WINDOWED_REGISTER_FILE;

architecture BEHAVIORAL of WINDOWED_REGISTER_FILE is
    constant REGS_NUMB : integer := ((N * 2) * F + M + N);

    subtype REG_ADDR is natural range 0 to (REGS_NUMB - 1); -- Total WFR Addressable Space
    type REG_ARRAY is array(REG_ADDR) of std_logic_vector((WORD_LEN - 1) downto 0);
    signal REGISTERS, NEXT_REGISTERS : REG_ARRAY;
    signal CANSAVE, CANRESTORE : std_logic;
    signal CWP, SWP, NEXT_CWP, NEXT_SWP : std_logic_vector(integer(ceil(log2(real(REGS_NUMB)))) - 1 downto 0);
begin

    syncProc : process (clk)
    begin
        if rising_edge(clk) then
            if RESET = '1' then
                REGISTERS <= (others => (others => '0'));
                CWP <= (others => '0');
                SWP <= (others => '0');
            else
                REGISTERS <= NEXT_REGISTERS;
                CWP <= NEXT_CWP;
                SWP <= NEXT_SWP;
            end if;
        end if;
    end process syncProc;

    read1 : process (RD1, ADD_RD1, REGISTERS, ENABLE, CWP)
    begin
        if ENABLE = '1' and RD1 = '1' then
            if unsigned(ADD_RD1) < (3 * N) then
                -- I/O/L Area: simple CWP offset
                OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1) + unsigned(CWP)));
            else
                -- Globals Area: end of RF
                OUT1 <= REGISTERS(REGS_NUMB - M + to_integer(unsigned(ADD_RD1)) - (3 * N));
            end if;
        end if;
    end process read1;

    read2 : process (RD2, ADD_RD2, REGISTERS, ENABLE, CWP)
    begin
        if ENABLE = '1' and RD2 = '1' then
            if unsigned(ADD_RD2) < (3 * N) then
                -- I/O/L Area: simple CWP offset
                OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2) + unsigned(CWP)));
            else
                -- Globals Area: end of RF
                OUT2 <= REGISTERS(REGS_NUMB - M + to_integer(unsigned(ADD_RD2)) - (3 * N));
            end if;
        end if;
    end process read2;

    write : process (WR, ADD_WR, REGISTERS, DATAIN, ENABLE, CWP)
    begin
        if ENABLE = '1' and WR = '1' then
            if unsigned(ADD_WR) < (3 * N) then
                -- I/O/L Area: simple CWP offset
                NEXT_REGISTERS(to_integer(unsigned(ADD_WR) + unsigned(CWP))) <= DATAIN;
            else
                -- Globals Area: end of RF
                NEXT_REGISTERS(REGS_NUMB - M + to_integer(unsigned(ADD_WR)) - (3 * N)) <= DATAIN;
            end if;
        else
            NEXT_REGISTERS <= REGISTERS;
        end if;
    end process write;

    combLogic : process (CALL, RET, CWP, SWP)
    begin
        if CALL = '1' then
            NEXT_CWP <= std_logic_vector((unsigned(CWP) + (2 * N)) mod (REGS_NUMB - M - 1));
        elsif RET = '1' then
            NEXT_CWP <= std_logic_vector((unsigned(CWP) - (2 * N)) mod (REGS_NUMB - M - 1));
        else
            NEXT_CWP <= CWP;
        end if;
    end process combLogic;
end BEHAVIORAL;

configuration CFG_RF_BEH of WINDOWED_REGISTER_FILE is
    for BEHAVIORAL
    end for;
end configuration;
