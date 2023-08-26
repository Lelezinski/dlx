library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use WORK.myTypes.all;

entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TESTA of TBREGISTERFILE is

    signal CLK     : std_logic := '0';
    -- Control
    signal RESET   : std_logic;
    signal ENABLE  : std_logic;
    signal RD1     : std_logic;
    signal RD2     : std_logic;
    signal WR      : std_logic;
    -- Address Lines
    signal ADD_WR  : std_logic_vector(integer(ceil(log2(real(REG_NUM)))) - 1 downto 0);
    signal ADD_RD1 : std_logic_vector(integer(ceil(log2(real(REG_NUM)))) - 1 downto 0);
    signal ADD_RD2 : std_logic_vector(integer(ceil(log2(real(REG_NUM)))) - 1 downto 0);
    -- Data Lines
    signal DATAIN  : std_logic_vector((REG_WORD_LEN - 1) downto 0);
    signal OUT1    : std_logic_vector((REG_WORD_LEN - 1) downto 0);
    signal OUT2    : std_logic_vector((REG_WORD_LEN - 1) downto 0);

    component register_file
        generic (
            WORD_LEN : integer := REG_WORD_LEN;
            R_NUM    : integer := REG_NUM);
        port (
            CLK     : in  std_logic;
            -- Control
            RESET   : in  std_logic;
            ENABLE  : in  std_logic;
            RD1     : in  std_logic;
            RD2     : in  std_logic;
            WR      : in  std_logic;
            -- Address Lines
            ADD_WR  : in  std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
            ADD_RD1 : in  std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
            ADD_RD2 : in  std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
            -- Data Lines
            DATAIN  : in  std_logic_vector((WORD_LEN - 1) downto 0);
            OUT1    : out std_logic_vector((WORD_LEN - 1) downto 0);
            OUT2    : out std_logic_vector((WORD_LEN - 1) downto 0));
    end component;

begin

    RG : register_file
        port map(CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2);

    RESET   <= '1', '0'     after 2 ns;
    ENABLE  <= '0', '1'     after 3 ns, '0' after 10 ns, '1' after 15 ns;
    WR      <= '0', '1'     after 6 ns, '0' after 7 ns, '1' after 10 ns, '0' after 20 ns;
    RD1     <= '1', '0'     after 9 ns, '1' after 13 ns, '0' after 20 ns;
    RD2     <= '0', '1'     after 17 ns;
    ADD_WR  <= "000", "001" after 9 ns;
    ADD_RD1 <= "000", "010" after 9 ns;
    ADD_RD2 <= "011", "001" after 9 ns;
    DATAIN  <= x"ff", x"00" after 8 ns;

    PCLOCK : process (CLK)
    begin
        CLK <= not(CLK) after 0.5 ns;
    end process;

end TESTA;

configuration CFG_TESTRF of TBREGISTERFILE is
    for TESTA
        for RG : register_file
            use configuration WORK.CFG_RF_BEH;
        end for;
    end for;
end CFG_TESTRF;
