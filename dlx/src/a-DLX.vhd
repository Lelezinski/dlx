library IEEE;
use IEEE.std_logic_1164.all;

use work.myTypes.all;

use work.ROCACHE_PKG.all;
use work.RWCACHE_PKG.all;
use work.ALU_TYPE.all;


--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity DLX is
  generic (
    IR_SIZE : integer := 32;            -- Instruction Register Size
    PC_SIZE : integer := 32             -- Program Counter Size
    );
  port (
    -- Inputs
    CLK : in std_logic;                 -- Clock
    RST : in std_logic;                 -- Reset:Active-High

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
end DLX;

-- This architecture is currently not complete
-- it just includes:
-- instruction register (complete)
-- program counter (complete)
-- instruction ram memory (complete)
-- control unit (UNCOMPLETE)
--
architecture dlx_rtl of DLX is

  --------------------------------------------------------------------
  -- Components Declaration
  --------------------------------------------------------------------

  -- Instruction Ram And Data Ram are in the TestBench and you must connect it using

--      IRAM_ADDRESS      : out std_logic_vector(Instr_size - 1 downto 0);
--    IRAM_ISSUE        : out std_logic;
--    IRAM_READY        : in std_logic;
--    IRAM_DATA         : in std_logic_vector(2*Data_size-1 downto 0);
--
--    DRAM_ADDRESS      : out std_logic_vector(Instr_size-1 downto 0);
--    DRAM_ISSUE        : out std_logic;
--    DRAM_READNOTWRITE     : out std_logic;
--    DRAM_READY        : in std_logic;
--    DRAM_DATA         : inout std_logic_vector(2*Data_size-1 downto 0)

  -- Datapath (MISSING!You must include it in your final project!)

  -- Control Unit
  component dlx_cu
    generic (
      MICROCODE_MEM_SIZE : integer := 10;   -- Microcode Memory Size
      FUNC_SIZE          : integer := 11;   -- Func Field Size for R-Type Ops
      OP_CODE_SIZE       : integer := 6;    -- Op Code Size
      --ALU_OPC_SIZE       :     integer := 6;  -- ALU Op Code Word Size
      IR_SIZE            : integer := 32;   -- Instruction Register Size
      CW_SIZE            : integer := 15);  -- Control Word Size
    port (
      Clk             : in  std_logic;  -- Clock
      Rst             : in  std_logic;  -- Reset:Active-Low
      -- Instruction Register
      IR_IN           : in  std_logic_vector(IR_SIZE - 1 downto 0);
      -- IF Control Signal
      IR_LATCH_EN     : out std_logic;  -- Instruction Register Latch Enable
      NPC_LATCH_EN    : out std_logic;
      -- ID Control Signals
      RegA_LATCH_EN   : out std_logic;  -- Register A Latch Enable
      RegB_LATCH_EN   : out std_logic;  -- Register B Latch Enable
      RegIMM_LATCH_EN : out std_logic;  -- Immediate Register Latch Enable
      -- EX Control Signals
      MUXA_SEL        : out std_logic;  -- MUX-A Sel
      MUXB_SEL        : out std_logic;  -- MUX-B Sel
      ALU_OUTREG_EN   : out std_logic;  -- ALU Output Register Enable
      EQ_COND         : out std_logic;  -- Branch if (not) Equal to Zero
      -- ALU Operation Code
      ALU_OPCODE      : out type_op;  -- choose between implicit or exlicit coding, like std_logic_vector(ALU_OPC_SIZE -1 downto 0);
      -- MEM Control Signals
      DRAM_WE         : out std_logic;  -- Data RAM Write Enable
      LMD_LATCH_EN    : out std_logic;  -- LMD Register Latch Enable
      JUMP_EN         : out std_logic;  -- JUMP Enable Signal for PC input MUX
      PC_LATCH_EN     : out std_logic;  -- Program Counte Latch Enable
      -- WB Control signals
      WB_MUX_SEL      : out std_logic;  -- Write Back MUX Sel
      RF_WE           : out std_logic);     -- Register File Write Enable

  end component;

  -- TODO: Datapath

  -- TODO: IRAM/DRAM

  ----------------------------------------------------------------
  -- Signals Declaration
  ----------------------------------------------------------------

  -- Control Unit Bus signals
  signal IR_LATCH_EN_i     : std_logic;
  signal NPC_LATCH_EN_i    : std_logic;
  signal RegA_LATCH_EN_i   : std_logic;
  signal RegB_LATCH_EN_i   : std_logic;
  signal RegIMM_LATCH_EN_i : std_logic;
  signal EQ_COND_i         : std_logic;
  signal JUMP_EN_i         : std_logic;
  signal ALU_OPCODE_i      : type_op;
  signal MUXA_SEL_i        : std_logic;
  signal MUXB_SEL_i        : std_logic;
  signal ALU_OUTREG_EN_i   : std_logic;
  signal DRAM_WE_i         : std_logic;
  signal LMD_LATCH_EN_i    : std_logic;
  signal PC_LATCH_EN_i     : std_logic;
  signal WB_MUX_SEL_i      : std_logic;
  signal RF_WE_i           : std_logic;


  -- Data Ram Bus signals


begin  -- DLX

  -- TODO COMPLETE WITH CACHE TO CONNECT IRAM and DRAM in the testbench...

  -- Control Unit Instantiation
  CU_I : dlx_cu
    port map (
      Clk             => Clk,
      Rst             => Rst,
      IR_IN           => IR,
      IR_LATCH_EN     => IR_LATCH_EN_i,
      NPC_LATCH_EN    => NPC_LATCH_EN_i,
      RegA_LATCH_EN   => RegA_LATCH_EN_i,
      RegB_LATCH_EN   => RegB_LATCH_EN_i,
      RegIMM_LATCH_EN => RegIMM_LATCH_EN_i,
      MUXA_SEL        => MUXA_SEL_i,
      MUXB_SEL        => MUXB_SEL_i,
      ALU_OUTREG_EN   => ALU_OUTREG_EN_i,
      EQ_COND         => EQ_COND_i,
      ALU_OPCODE      => ALU_OPCODE_i,
      DRAM_WE         => DRAM_WE_i,
      LMD_LATCH_EN    => LMD_LATCH_EN_i,
      JUMP_EN         => JUMP_EN_i,
      PC_LATCH_EN     => PC_LATCH_EN_i,
      WB_MUX_SEL      => WB_MUX_SEL_i,
      RF_WE           => RF_WE_i);

  -- TODO ADD DATAPATH

end dlx_rtl;
