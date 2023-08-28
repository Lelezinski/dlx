library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.ceil;
use IEEE.math_real.log2;

use work.myTypes.all;
use work.ALU_TYPE.all;


--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity DATAPATH is
    generic (
        -- FIXME: use constants
        NBIT        : integer := numBit;
        IR_SIZE     : integer := 32;    -- Instruction Register Size
        PC_SIZE     : integer := 32;    -- Program Counter Size
        ALU_OP_SIZE : integer := 4      -- Alu operation selection signal size
        );
    port (
        CLK : in std_logic;             -- Clock
        RST : in std_logic;             -- Reset:Active-High

        -- Instruction Register
        IR_IN : in std_logic_vector(IR_SIZE - 1 downto 0);

        -- IF stage
        PC_LATCH_EN  : in std_logic;    -- Progam counter latch enable
        IR_LATCH_EN  : in std_logic;    -- Instruction Register Latch Enable
        NPC_LATCH_EN : in std_logic;    -- Next Program counter latch enable
        PC_out : out std_logic_vector(PC_SIZE - 1 downto 0);

        -- ID stage
        A_EN      : in std_logic;       -- A operad register latch enable
        B_EN      : in std_logic;       -- B operad register latch enable
        IMM_EN    : in std_logic;       -- IMM operad register latch enable
        IRAM_DOUT : in std_logic_vector(IR_SIZE - 1 downto 0);  -- Instruction coming from the instructions register

        -- EXU stage
        ALU_OUT_EN : in std_logic;      -- ALU_OUT register latch enable
        ALU_OP     : in std_logic_vector(ALU_OP_SIZE - 1 downto 0);  -- Alu operation selection signal
        MUXA_SEL   : in std_logic;      -- MuxA selection signal
        MUXB_SEL   : in std_logic;      -- MuxB selection signal
        MUXC_SEL   : in std_logic;      -- MuxC selection signal

        -- MEM stage
        LMD_EN   : in std_logic;        -- Loaded memory data latch enable
        MUXD_SEL : in std_logic;        -- MuxD selection signal

        -- WB stage
        MUXE_SEL : in std_logic);       -- MuxE selection signal
end entity DATAPATH;


architecture RTL of DATAPATH is

--------------------------------------------------------------------
-- Components Declaration
--------------------------------------------------------------------

    component REGISTER_FILE is
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

    component MUX21_GENERIC is
        generic (
            NBIT      : integer;
            DELAY_MUX : time);
        port (
            A   : in  std_logic_vector(NBIT-1 downto 0);
            B   : in  std_logic_vector(NBIT-1 downto 0);
            SEL : in  std_logic;
            Y   : out std_logic_vector(NBIT-1 downto 0));
    end component MUX21_GENERIC;

    component BOOTHMUL is
        generic (
            NBIT : integer);
        port (
            A : in  std_logic_vector(NBIT - 1 downto 0);
            B : in  std_logic_vector(NBIT - 1 downto 0);
            P : out std_logic_vector(2 * NBIT - 1 downto 0));
    end component BOOTHMUL;

    component P4_ADDER is
        generic (
            NBIT : integer);
        port (
            A   : in  std_logic_vector(NBIT - 1 downto 0);
            B   : in  std_logic_vector(NBIT - 1 downto 0);
            Cin : in  std_logic;
            S   : out std_logic_vector(NBIT - 1 downto 0);

            Cout : out std_logic);
    end component P4_ADDER;

-- TODO: altri componenti

----------------------------------------------------------------
-- Signals Declaration
----------------------------------------------------------------

-- FIXME: fix sizes

    -- [IF] STAGE
    signal IR, next_IR   : std_logic_vector(IR_SIZE - 1 downto 0);
    -- signal IRAM_DOUT: std_logic_vector(IR_SIZE - 1 downto 0);
    signal PC, next_PC   : unsigned(PC_SIZE - 1 downto 0);
    signal NPC, next_NPC : unsigned(PC_SIZE - 1 downto 0);

    -- [ID] STAGE
    signal A, next_A, B, next_B      : std_logic_vector(NBIT - 1 downto 0);
    signal immediate, next_immediate : std_logic_vector(NBIT - 1 downto 0);

    -- [EX] STAGE
    signal ALU_out, next_ALU_out : std_logic_vector(NBIT - 1 downto 0);

    -- [MEM] STAGE
    signal LMD, next_LMD : std_logic_vector(NBIT - 1 downto 0);

    -- Datapath Bus signals
    signal PC_BUS : unsigned(PC_SIZE - 1 downto 0);
begin

    -- This is the input to program counter: currently zero
    -- so no uptade of PC happens
    -- TO BE REMOVED AS SOON AS THE DATAPATH IS INSERTED!!!!!
    -- a proper connection must be made here if more than one
    -- instruction must be executed
    -- PC_BUS <= (others => '0');

----------------------------------------------------------------
-- Processes
----------------------------------------------------------------

    -- purpose: Instruction Register Process
    -- type   : sequential
    -- inputs : Clk, Rst
    -- outputs: IR
    IR_P : process (CLK, RST)
    begin  -- process IR_P
        if RST = '0' then  -- asynchronous reset (active low)
            IR <= (others => '0');
        elsif CLK'event and CLK = '1' then  -- rising clock edge
            if (IR_LATCH_EN = '1') then
                IR <= IRAM_DOUT;
            end if;
        end if;
    end process IR_P;

    -- purpose: Program Counter Process
    -- type   : sequential
    -- inputs : Clk, Rst, PC_BUS
    -- outputs: IRam_Addr
    PC_P : process (CLK, RST)
    begin  -- process PC_P
        if Rst = '0' then                   -- asynchronous reset (active low)
            PC <= (others => '0');
        elsif CLK'event and CLK = '1' then  -- rising clock edge
            if (PC_LATCH_EN = '1') then
                PC <= PC_BUS;
            end if;
        end if;
    end process PC_P;

    -- purpose: Next Program Counter Process
    -- type   : sequential
    -- inputs : Clk, Rst, PC_BUS
    -- outputs: IRam_Addr
    NPC_P : process (CLK, Rst)
    begin  -- process PC_P
        if Rst = '0' then                   -- asynchronous reset (active low)
            PC <= (others => '0');
        elsif CLK'event and CLK = '1' then  -- rising clock edge
            if (NPC_LATCH_EN = '1') then
                next_NPC <= unsigned(NPC) + 4;
            end if;
        end if;
    end process NPC_P;
end architecture RTL;


configuration CFG_DP_BEH of DATAPATH is
    for RTL
end for;
end configuration;
