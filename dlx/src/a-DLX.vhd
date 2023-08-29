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
        RST : in std_logic  -- Reset:Active-High
    );
end DLX;

architecture RTL of DLX is

    --------------------------------------------------------------------
    -- Components Declaration
    --------------------------------------------------------------------

    -- TODO: capire se sono interne esterne o entrambe
    -- Instruction Ram And Data Ram are in the TestBench and you must connect it using

    --    IRAM_ADDRESS      : out std_logic_vector(Instr_size - 1 downto 0);
    --    IRAM_ISSUE        : out std_logic;
    --    IRAM_READY        : in std_logic;
    --    IRAM_DATA         : in std_logic_vector(2*Data_size-1 downto 0);
    --
    --    DRAM_ADDRESS      : out std_logic_vector(Instr_size-1 downto 0);
    --    DRAM_ISSUE        : out std_logic;
    --    DRAM_READNOTWRITE     : out std_logic;
    --    DRAM_READY        : in std_logic;
    --    DRAM_DATA         : inout std_logic_vector(2*Data_size-1 downto 0)

    -- Control Unit
    component CU is
        generic (
            -- FIXME: use constants
            MICROCODE_MEM_SIZE        : integer := 15;  -- Microcode Memory Size
            FUNC_SIZE                 : integer := 11;  -- Func Field Size for R-Type Ops
            OP_CODE_SIZE              : integer := 6;   -- Op Code Size
            -- ALU_OPC_SIZE           :   integer := 6;  -- ALU Op Code Word Size
            CW_SIZE                   : integer := 23);  -- Control Word Size
        port (
            cw    : out cw_t;  -- control word for datapath and memories
            in_cw : in  cw_from_mem; -- input signals coming from datapath and memories
    
            -- Inputs
            OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
            FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);
            CLK    : in  std_logic;
            RST    : in  std_logic);          -- Active Low
    end component;

    -- Datapath
    component DATAPATH is
        generic (
            -- FIXME: use constants
            IR_SIZE : integer := 32; -- Instruction Register Size
            PC_SIZE : integer := 32  -- Program Counter Size
        );
        port (
            CLK : in std_logic; -- Clock
            RST : in std_logic  -- Reset:Active-High
            -- TODO: CW da CU, IRAM/DRAM
        );
    end component;

    -- TODO: IRAM/DRAM
    component IRAM is
        generic (
            -- FIXME: use constants
            RAM_DEPTH : integer := 48;
            I_SIZE    : integer := 32);
        port (
            Rst  : in std_logic;
            Addr : in std_logic_vector(I_SIZE - 1 downto 0);
            Dout : out std_logic_vector(I_SIZE - 1 downto 0)
        );
    end component;

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    -- TODO: add internal busses
    -- Control Unit Bus signals
    -- Data Ram Bus signals

begin

    ----------------------------------------------------------------
    -- Components Instantiation
    ----------------------------------------------------------------

    -- TODO:
    -- Control Unit Instantiation
    -- CU_i : CU

    -- Datapath Instantiation
    -- DATAPATH_i : DATAPATH

    -- IRAM Instantiation
    -- IRAM_i : DATAPATH

end RTL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_DLX_BEH of DLX is
    for RTL
    end for;
end configuration;
