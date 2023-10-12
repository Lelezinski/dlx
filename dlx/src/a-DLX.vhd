library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;
use work.alu_type.all;
use work.control_words.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity DLX is
    port (
        -- Inputs
        CLK : in std_logic; -- Clock
        RST : in std_logic; -- Reset:Active-High

        IRAM_READY : in std_logic;
        IRAM_DATA  : in data_t;
        DRAM_IN    : out data_t;
        DRAM_OUT   : in data_t;
        DRAM_READY : in std_logic;

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

    component CU is
        generic (
            MICROCODE_MEM_SIZE : integer;
            FUNC_SIZE          : integer;
            OP_CODE_SIZE       : integer;
            CW_SIZE            : integer
        );
        port (
            CLK : in std_logic;
            RST : in std_logic;
            -- Control
            CW   : out cw_t;
            SECW : out stage_enable_t;
            cu_to_fu : out cu_to_fu_t;
            stall : in stage_enable_t;
            -- Inputs
            IN_CW  : in cw_from_mem;
            OPCODE : in opcode_t;
            FUNC   : in func_t;
            -- RAM
            -- IRAM_READY        : in std_logic;
            DRAM_READY        : in std_logic;
            -- IRAM_ENABLE       : out std_logic;
            -- DRAM_ENABLE       : out std_logic;
            DRAM_READNOTWRITE : out std_logic
        );
    end component CU;

    component forwarding_unit is
        port (
            cu_to_fu  : in  cu_to_fu_t;
            dp_to_fu  : in  dp_to_fu_t;
            SECW      : in stage_enable_t;
            MUX_FWD_MEM_LMD_SEL : out std_logic;
            MUX_FWD_EX_LMD_SEL : out std_logic;
            MUX_FWD_BZ_SEL: out std_logic_vector(1 downto 0);
            MUX_A_SEL : out std_logic_vector(1 downto 0);
            MUX_B_SEL : out std_logic_vector(1 downto 0));
    end component forwarding_unit;

    component HAZARD_DETECTION_UNIT is
        port (
            CLK      : in  std_logic;
            RST      : in  std_logic;
            dp_to_hu : in  dp_to_hu_t;
            cu_to_hu : in  cu_to_hu_t;
            IRAM_READY : in std_logic;
            DRAM_READY : in std_logic;
            SECW     : out stage_enable_t);
    end component HAZARD_DETECTION_UNIT;

    component DATAPATH is
        generic (
            DATA_SIZE : integer;
            INS_SIZE  : integer;
            CW_SIZE   : integer;
            PC_SIZE   : integer;
            IR_SIZE   : integer
        );
        port (
            CLK          : in std_logic;
            RST          : in std_logic;
            CW           : in cw_t;
            SECW         : in stage_enable_t;
            MUX_A_SEL    : in std_logic_vector(1 downto 0); -- signal coming from forwading unit
            MUX_B_SEL    : in std_logic_vector(1 downto 0); -- signal coming from forwading unit
            MUX_FWD_MEM_LMD_SEL : in std_logic;
            MUX_FWD_EX_LMD_SEL : in std_logic;
            MUX_FWD_BZ_SEL: in std_logic_vector(1 downto 0);
            dp_to_fu     : out dp_to_fu_t;
            dp_to_hu     : out dp_to_hu_t;
            OUT_CW       : out cw_from_mem;
            OPCODE       : out opcode_t;
            FUNC         : out func_t;
            DRAM_IN      : in data_t;
            IRAM_DATA    : in data_t;
            IRAM_ADDRESS : out std_logic_vector(INS_SIZE - 1 downto 0);
            DRAM_ADDRESS : out data_t;
            DRAM_OUT     : in data_t
        );
    end component DATAPATH;

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    signal cw_from : cw_from_mem;
    signal OPCODE  : opcode_t;
    signal FUNC    : func_t;
    signal CW      : cw_t;
    signal SECW    : stage_enable_t;
    signal dp_to_fu  : dp_to_fu_t;
    signal cu_to_fu  : cu_to_fu_t;
    signal MUX_FWD_MEM_LMD_SEL : std_logic;
    signal MUX_FWD_EX_LMD_SEL : std_logic;
    signal MUX_FWD_BZ_SEL: std_logic_vector(1 downto 0);
    signal MUX_A_SEL : std_logic_vector(1 downto 0);
    signal MUX_B_SEL : std_logic_vector(1 downto 0);
    signal dp_to_hu : dp_to_hu_t;
    signal cu_to_hu : cu_to_hu_t;
    signal stall : std_logic;
begin

    ----------------------------------------------------------------
    -- Components Instantiation
    ----------------------------------------------------------------

    CU_1 : entity work.CU
        generic map(
            MICROCODE_MEM_SIZE => C_UCODE_MEM_SIZE,
            FUNC_SIZE          => C_FUNC_SIZE,
            OP_CODE_SIZE       => C_OP_CODE_SIZE,
            CW_SIZE            => C_CW_SIZE
        )
        port map(
            cw                => cw,
            in_cw             => cw_from,
            SECW              => open,
            cu_to_fu          => cu_to_fu,
            cu_to_hu          => cu_to_hu,
            stall             => SECW,
            OPCODE            => OPCODE,
            FUNC              => FUNC,
            CLK               => CLK,
            RST               => RST,
            IRAM_ENABLE       => IRAM_ENABLE,
            -- DRAM_READY        => DRAM_READY,
            DRAM_ENABLE       => DRAM_ENABLE,
            DRAM_READNOTWRITE => DRAM_READNOTWRITE
        );

    forwarding_unit_1: entity work.forwarding_unit
        port map (
            cu_to_fu  => cu_to_fu,
            dp_to_fu  => dp_to_fu,
            MUX_FWD_MEM_LMD_SEL => MUX_FWD_MEM_LMD_SEL,
            MUX_FWD_EX_LMD_SEL => MUX_FWD_EX_LMD_SEL,
            MUX_FWD_BZ_SEL => MUX_FWD_BZ_SEL,
            MUX_A_SEL => MUX_A_SEL,
            MUX_B_SEL => MUX_B_SEL);

    HAZARD_DETECTION_UNIT_1: entity work.HAZARD_DETECTION_UNIT
        port map (
            CLK      => CLK,
            RST      => RST,
            dp_to_hu => dp_to_hu,
            cu_to_hu => cu_to_hu,
            IRAM_READY   => IRAM_READY,
            DRAM_READY   => DRAM_READY,
            SECW     => SECW);

    DATAPATH_1 : entity work.DATAPATH
        generic map(
            DATA_SIZE => numBit,
            INS_SIZE  => INS_SIZE,
            CW_SIZE   => C_CW_SIZE,
            IR_SIZE   => C_IR_SIZE
        )
        port map(
            CLK          => CLK,
            RST          => RST,
            CW           => CW,
            SECW         => SECW,
            OUT_CW       => cw_from,
            MUX_FWD_MEM_LMD_SEL => MUX_FWD_MEM_LMD_SEL,
            MUX_FWD_EX_LMD_SEL => MUX_FWD_EX_LMD_SEL,
            MUX_FWD_BZ_SEL => MUX_FWD_BZ_SEL,
            MUX_A_SEL    => MUX_A_SEL,
            MUX_B_SEL    => MUX_B_SEL,
            dp_to_fu     => dp_to_fu,
            dp_to_hu     => dp_to_hu,
            OPCODE       => OPCODE,
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
