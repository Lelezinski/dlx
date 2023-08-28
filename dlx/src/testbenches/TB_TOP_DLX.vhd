library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.ROCACHE_PKG.all;
use work.RWCACHE_PKG.all;

use work.myTypes.all;

entity DLX_TestBench is
end DLX_TestBench;

architecture tb of DLX_TestBench is
    component ROMEM is
        generic (
            FILE_PATH  : string;          -- ROM data file
            ENTRIES    : integer := 128;  -- Number of lines in the ROM
            WORD_SIZE  : integer := 32;   -- Number of bits per word
            DATA_DELAY : natural := 2     -- Delay ( in # of clock cycles )
            );
        port (
            CLK        : in  std_logic;
            RST        : in  std_logic;
            ADDRESS    : in  std_logic_vector(WORD_SIZE - 1 downto 0);
            ENABLE     : in  std_logic;
            DATA_READY : out std_logic;
            DATA       : out std_logic_vector(2*WORD_SIZE - 1 downto 0)
            );
    end component;

    component RWMEM is
        generic (
            FILE_PATH      : string;
            FILE_PATH_INIT : string;
            DATA_SIZE      : natural;
            INSTR_SIZE     : natural;
            RAM_DEPTH      : natural;
            DATA_DELAY     : natural);
        port (
            CLK          : in    std_logic;
            RST          : in    std_logic;
            ADDR         : in    std_logic_vector(Instr_size - 1 downto 0);
            ENABLE       : in    std_logic;
            READNOTWRITE : in    std_logic;
            DATA_READY   : out   std_logic;
            INOUT_DATA   : inout std_logic_vector(Data_size-1 downto 0));
    end component RWMEM;

    component DLX is
        port (
            -- Inputs
            CLK : in std_logic;         -- Clock
            RST : in std_logic;         -- Reset:Active-High

            IRAM_ADDRESS : out std_logic_vector(Instr_size - 1 downto 0);
            IRAM_ISSUE   : out std_logic;
            IRAM_READY   : in  std_logic;
            IRAM_DATA    : in  std_logic_vector(2*Data_size-1 downto 0);

            DRAM_ADDRESS      : out   std_logic_vector(Instr_size-1 downto 0);
            DRAM_ISSUE        : out   std_logic;
            DRAM_READNOTWRITE : out   std_logic;
            DRAM_READY        : in    std_logic;
            DRAM_DATA         : inout std_logic_vector(2*Data_size-1 downto 0)
            );
    end component;

    signal CLK          : std_logic := '0';  -- Clock
    signal RST          : std_logic;         -- Reset:Active-Low
    signal IRAM_ADDRESS : std_logic_vector(Instr_size - 1 downto 0);
    signal IRAM_ENABLE  : std_logic;
    signal IRAM_READY   : std_logic;
    signal IRAM_DATA    : std_logic_vector(2*Data_size-1 downto 0);

    signal DRAM_ADDRESS      : std_logic_vector(Instr_size-1 downto 0);
    signal DRAM_ENABLE       : std_logic;
    signal DRAM_READNOTWRITE : std_logic;
    signal DRAM_READY        : std_logic;
    signal DRAM_DATA         : std_logic_vector(2*Data_size-1 downto 0);

begin
    -- IRAM
    IRAM : ROMEM
        generic map (RO_HEX)
        port map (CLK, RST, IRAM_ADDRESS, IRAM_ENABLE, IRAM_READY, IRAM_DATA);

    -- DRAM
    DRAM : RWMEM
        generic map (
            FILE_PATH      => RW_HEX,
            FILE_PATH_INIT => RW_HEX_INIT,
            DATA_SIZE      => 64,
            INSTR_SIZE     => 32,
            RAM_DEPTH      => 128,
            DATA_DELAY     => 2)
        port map (CLK, RST, DRAM_ADDRESS, DRAM_ENABLE, DRAM_READNOTWRITE, DRAM_READY, DRAM_DATA);

    -- DLX
    -- My_DLX_GIANLUCA : DLX
        -- port map (CLK, RST, IRAM_ADDRESS, IRAM_ENABLE, IRAM_READY, IRAM_DATA, DRAM_ADDRESS, DRAM_ENABLE, DRAM_READNOTWRITE, DRAM_READY, DRAM_DATA);
    DLX_1: entity work.DLX
        port map (
            CLK => CLK,
            RST => RST);

    Clk <= not Clk  after 10 ns;
    Rst <= '1', '0' after 5 ns;

end tb;
