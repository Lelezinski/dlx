library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.ROCACHE_PKG.all;
use work.RWCACHE_PKG.all;

use work.myTypes.all;

entity DLX_tb is
end DLX_tb;

architecture tb of DLX_tb is
    component ROMEM is
        generic (
            FILE_PATH  : string;          -- ROM data file
            ENTRIES    : integer := 128;  -- Number of lines in the ROM
            WORD_SIZE  : integer := 32;   -- Number of bits per word
            ADDR_SIZE  : integer := 5;
            DATA_DELAY : natural := 2     -- Delay ( in # of clock cycles )
            );
        port (
            CLK        : in  std_logic;
            RST        : in  std_logic;
            ADDRESS    : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
            ENABLE     : in  std_logic;
            DATA_READY : out std_logic;
            DATA       : out std_logic_vector(WORD_SIZE - 1 downto 0)
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
            DATA_IN      : in    std_logic_vector(Data_size-1 downto 0);
            ENABLE       : in    std_logic;
            READNOTWRITE : in    std_logic;
            DATA_READY   : out   std_logic;
            DATA_OUT     : out std_logic_vector(Data_size-1 downto 0));
    end component RWMEM;

    component DLX is
        port (
            CLK               : in  std_logic;
            RST               : in  std_logic;
            IRAM_READY        : in  std_logic;
            IRAM_DATA         : in  std_logic_vector(numBit-1 downto 0);
            DRAM_IN           : in  data_t;
            DRAM_OUT          : in  data_t;
            DRAM_READY        : in  std_logic;
            IRAM_ENABLE        : out std_logic;
            IRAM_ADDRESS      : out std_logic_vector(INS_SIZE - 1 downto 0);
            DRAM_ENABLE        : out std_logic;
            DRAM_READNOTWRITE : out std_logic;
            DRAM_ADDRESS      : out std_logic_vector(INS_SIZE-1 downto 0));
    end component DLX;

    signal CLK               : std_logic := '0';  -- Clock
    signal RST               : std_logic;         -- Reset:Active-Low
    signal IRAM_READY        : std_logic;
    signal IRAM_DATA         : std_logic_vector(numBit-1 downto 0);
    signal DRAM_IN           : data_t;
    signal DRAM_OUT          : data_t;
    signal DRAM_READY        : std_logic;
    signal IRAM_ENABLE       : std_logic;
    signal IRAM_ADDRESS      : std_logic_vector(IRAM_ADDR_SIZE - 1 downto 0);
    signal DRAM_ENABLE       : std_logic;
    signal DRAM_READNOTWRITE : std_logic;
    signal DRAM_ADDRESS      : std_logic_vector(INS_SIZE-1 downto 0);
    signal DATA_IN, DATA_OUT : data_t;

begin
    -- IRAM
    IRAM : ROMEM
        generic map (RO_HEX,
        ENTRIES    => IRAM_DEPTH,
        WORD_SIZE  => INS_SIZE,
        ADDR_SIZE  => IRAM_ADDR_SIZE,
        data_delay => 0)
        port map (CLK, RST, IRAM_ADDRESS, '1', IRAM_READY, IRAM_DATA);

    -- DRAM
    DRAM : RWMEM
        generic map (
            FILE_PATH      => RW_HEX,
            FILE_PATH_INIT => RW_HEX_INIT,
            DATA_SIZE      => 32,
            INSTR_SIZE     => 32,
            RAM_DEPTH      => 128,
            DATA_DELAY     => 2)
        port map (CLK, RST, DRAM_ADDRESS, DATA_IN, DRAM_ENABLE, DRAM_READNOTWRITE, DRAM_READY, DATA_OUT);

    -- DLX
    -- My_DLX_GIANLUCA : DLX
        -- port map (CLK, RST, IRAM_ADDRESS, IRAM_ENABLE, IRAM_READY, IRAM_DATA, DRAM_ADDRESS, DRAM_ENABLE, DRAM_READNOTWRITE, DRAM_READY, DRAM_DATA);
    DLX_1: entity work.DLX
        port map (
            CLK               => CLK,
            RST               => RST,
            IRAM_READY        => IRAM_READY,
            IRAM_DATA         => IRAM_DATA,
            DRAM_IN           => DRAM_IN,
            DRAM_OUT          => DRAM_OUT,
            DRAM_READY        => DRAM_READY,
            IRAM_ENABLE       => IRAM_ENABLE,
            IRAM_ADDRESS      => IRAM_ADDRESS,
            DRAM_ENABLE       => DRAM_ENABLE,
            DRAM_READNOTWRITE => DRAM_READNOTWRITE,
            DRAM_ADDRESS      => DRAM_ADDRESS);
    Clk <= not Clk  after 10 ns;
    Rst <= '1', '0' after 5 ns;

end tb;
