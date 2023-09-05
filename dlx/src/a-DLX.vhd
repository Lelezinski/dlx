library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;
use work.ROCACHE_PKG.all;
use work.RWCACHE_PKG.all;
use work.alu_type.all;
use work.control_words.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity DLX is
    port (
        -- Inputs
        CLK : in std_logic; -- Clock
        RST : in std_logic;  -- Reset:Active-High

        IRAM_READY        : in std_logic;
        IRAM_DATA         : in data_t;
        DRAM_IN           : out data_t;
        DRAM_OUT          : in data_t;
        DRAM_READY        : in std_logic;

        IRAM_ENABLE       : out std_logic;
        IRAM_ADDRESS      : out std_logic_vector(IRAM_ADDR_SIZE - 1 downto 0);
        DRAM_ENABLE       : out std_logic;
        DRAM_READNOTWRITE : out std_logic;
        DRAM_ADDRESS      : out data_t);
end DLX;

architecture RTL of DLX is

    --------------------------------------------------------------------
    -- Components Declaration
    --------------------------------------------------------------------

    -- TODO: capire se sono interne esterne o entrambe
    -- Instruction Ram And Data Ram are in the TestBench and you must connect it using

    --    IRAM_ADDRESS      : out std_logic_vector(Instr_size - 1 downto 0);
    --    IRAM_ENABLE        : out std_logic;
    --    IRAM_READY        : in std_logic;
    --    IRAM_DATA         : in std_logic_vector(2*Data_size-1 downto 0);
    --
    --    DRAM_ADDRESS      : out std_logic_vector(Instr_size-1 downto 0);
    --    DRAM_ENABLE        : out std_logic;
    --    DRAM_READNOTWRITE     : out std_logic;
    --    DRAM_READY        : in std_logic;
    --    DRAM_DATA         : inout std_logic_vector(2*Data_size-1 downto 0)

    component CU is
        generic (
            MICROCODE_MEM_SIZE : integer;
            FUNC_SIZE          : integer;
            OP_CODE_SIZE       : integer;
            CW_SIZE            : integer);
        port (
            cw     : out cw_t;
            in_cw  : in  cw_from_mem;
            OPCODE : in  opcode_t;
            FUNC   : in  func_t;
            CLK    : in  std_logic;
            RST    : in  std_logic;
            IRAM_READY        : in std_logic;
            IRAM_ENABLE       : out std_logic;
            DRAM_READY        : in std_logic;
            DRAM_ENABLE       : out std_logic;
            DRAM_READNOTWRITE : out std_logic);
    end component CU;

    component DATAPATH is
        generic (
            DATA_SIZE : integer;
            INS_SIZE  : integer;
            CW_SIZE   : integer;
            PC_SIZE   : integer;
            IR_SIZE   : integer);
        port (
            CLK    : in  std_logic;
            RST    : in  std_logic;
            CW     : in  cw_t;
            OUT_CW : out cw_from_mem;
            OPCODE : out opcode_t;
            FUNC   : out func_t;
            DRAM_IN           : in data_t;
            IRAM_DATA         : in data_t;
            IRAM_ADDRESS      : out std_logic_vector(INS_SIZE - 1 downto 0);
            DRAM_ADDRESS      : out data_t;
            DRAM_OUT          : in data_t);
    end component DATAPATH;

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------
    signal cw_from  : cw_from_mem;
    signal OPCODE : opcode_t;
    signal FUNC   : func_t;
    signal CW     : cw_t;
begin

    ----------------------------------------------------------------
    -- Components Instantiation
    ----------------------------------------------------------------
    CU_1: entity work.CU
        generic map (
            MICROCODE_MEM_SIZE => C_UCODE_MEM_SIZE,
            FUNC_SIZE          => C_FUNC_SIZE,
            OP_CODE_SIZE       => C_OP_CODE_SIZE,
            CW_SIZE            => C_CW_SIZE)
        port map (
            cw     => cw,
            in_cw  => cw_from,
            OPCODE => OPCODE,
            FUNC   => FUNC,
            CLK    => CLK,
            RST    => RST,
            IRAM_READY        => IRAM_READY,
            IRAM_ENABLE       => IRAM_ENABLE,
            DRAM_READY        => DRAM_READY,
            DRAM_ENABLE       => DRAM_ENABLE,
            DRAM_READNOTWRITE => DRAM_READNOTWRITE
            );

    DATAPATH_1: entity work.DATAPATH
        generic map (
            DATA_SIZE => DATA_SIZE,
            INS_SIZE  => INS_SIZE,
            CW_SIZE   => C_CW_SIZE,

            IR_SIZE   => C_IR_SIZE)
        port map (
            CLK    => CLK,
            RST    => RST,
            CW     => CW,
            OUT_CW => cw_from,
            OPCODE => OPCODE,
            FUNC         => FUNC,
            DRAM_IN      => DRAM_IN,
            IRAM_DATA    => IRAM_DATA,
            IRAM_ADDRESS => IRAM_ADDRESS,
            DRAM_ADDRESS => DRAM_ADDRESS,
            DRAM_OUT     => DRAM_OUT
            );
end RTL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_DLX_BEH of DLX is
    for RTL
    end for;
end configuration;
