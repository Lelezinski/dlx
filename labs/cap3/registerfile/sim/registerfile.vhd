library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use WORK.constants.all;

entity register_file is
    generic (
        WORD_LEN : integer := REG_WORD_LEN;
        R_NUM : integer := REG_NUM);
    port (
        CLK : in std_logic;
        -- Control
        RESET : in std_logic;
        ENABLE : in std_logic;
        RD1 : in std_logic;
        RD2 : in std_logic;
        WR : in std_logic;
        -- Address Lines
        ADD_WR : in std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
        ADD_RD1 : in std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
        ADD_RD2 : in std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
        -- Data Lines
        DATAIN : in std_logic_vector((WORD_LEN - 1) downto 0);
        OUT1 : out std_logic_vector((WORD_LEN - 1) downto 0);
        OUT2 : out std_logic_vector((WORD_LEN - 1) downto 0));
end register_file;

architecture A of register_file is
    subtype REG_ADDR is natural range 0 to (R_NUM - 1); -- using natural type
    type REG_ARRAY is array(REG_ADDR) of std_logic_vector((WORD_LEN - 1) downto 0);
    signal REGISTERS, NEXT_REGISTERS : REG_ARRAY;

begin
    
    syncProc : process (clk)
    begin
        if rising_edge(clk) then
            if RESET = '1' then
                REGISTERS <= (others => (others => '0'));
            else
                REGISTERS <= NEXT_REGISTERS;
            end if;
        end if;
    end process syncProc;

    read1 : process (RD1, ADD_RD1, REGISTERS, ENABLE)
    begin
        if ENABLE = '1' and RD1 = '1' then
            OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
        end if;
    end process read1;

    read2 : process (RD2, ADD_RD2, REGISTERS, ENABLE)
    begin
        if ENABLE = '1' and RD2 = '1' then
            OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
        end if;
    end process read2;

    write : process (WR, ADD_WR, REGISTERS, DATAIN, ENABLE)
    begin
        if ENABLE = '1' and WR = '1' then
            NEXT_REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
        else
            NEXT_REGISTERS <= REGISTERS;
        end if;
    end process write;
end A;

configuration CFG_RF_BEH of register_file is
    for A
    end for;
end configuration;
