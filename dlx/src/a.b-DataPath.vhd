library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.myTypes.all;
use work.control_words.all;
use work.alu_type.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity DATAPATH is
    generic (
        DATA_SIZE : integer := numBit;    -- Data Size
        INS_SIZE  : integer := INS_SIZE;  -- Instructions Size
        CW_SIZE   : integer := C_CW_SIZE; -- CW Size
        PC_SIZE   : integer := PC_SIZE;   -- PC Size
        IR_SIZE   : integer := IRAM_DEPTH -- instruction register size
    );
    port (
        CLK          : in std_logic; -- Clock
        RST          : in std_logic; -- Active Low Reset
        CW           : in cw_t;      -- Control Word
        DRAM_IN      : in data_t;
        DRAM_OUT     : in data_t;
        OUT_CW       : out cw_from_mem; -- Output Signals to CU
        OPCODE       : out opcode_t;
        FUNC         : out func_t;
        IRAM_DATA    : in data_t;
        IRAM_ADDRESS : out std_logic_vector(IRAM_ADDR_SIZE - 1 downto 0);
        DRAM_ADDRESS : out std_logic_vector(INS_SIZE - 1 downto 0));
end entity DATAPATH;

architecture RTL of DATAPATH is

    --------------------------------------------------------------------
    -- Components Declaration
    --------------------------------------------------------------------

    component REGISTER_FILE is
        generic (
            WORD_LEN : integer;
            R_NUM    : integer;
            ADDR_LEN : integer
        );
        port (
            CLK : in std_logic;
            -- Control
            RESET  : in std_logic;
            ENABLE : in std_logic;
            RD1    : in std_logic;
            RD2    : in std_logic;
            WR     : in std_logic;
            -- Address Lines
            ADD_WR  : in std_logic_vector(ADDR_LEN - 1 downto 0);
            ADD_RD1 : in std_logic_vector(ADDR_LEN - 1 downto 0);
            ADD_RD2 : in std_logic_vector(ADDR_LEN - 1 downto 0);
            -- Data Lines
            DATAIN : in std_logic_vector((WORD_LEN - 1) downto 0);
            OUT1   : out std_logic_vector((WORD_LEN - 1) downto 0);
            OUT2   : out std_logic_vector((WORD_LEN - 1) downto 0)
        );
    end component;

    -- ALU
    component ALU is
        generic (
            N : integer := numBit
        );
        port (
            FUNC   : in alu_op_t;
            DATA1  : in std_logic_vector(N - 1 downto 0);
            DATA2  : in std_logic_vector(N - 1 downto 0);
            OUTALU : out std_logic_vector(N - 1 downto 0)
        );
    end component ALU;

    -- TODO: LL_ALU

    -- TODO: DRAM

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    ---------------------------- Instructions Fields
    signal INS_OP_CODE : std_logic_vector(INS_OP_CODE_SIZE - 1 downto 0);
    signal INS_RS1     : std_logic_vector(INS_R1_SIZE - 1 downto 0);
    signal INS_RS2     : std_logic_vector(INS_R2_SIZE - 1 downto 0);
    signal INS_RD      : std_logic_vector(INS_R3_SIZE - 1 downto 0);
    signal INS_IMM     : std_logic_vector(INS_IMM_SIZE - 1 downto 0);
    signal INS_FUNC    : std_logic_vector(INS_FUNC_SIZE - 1 downto 0);

    ---------------------------- [IF] STAGE
    signal IR  : std_logic_vector(INS_SIZE - 1 downto 0);
    signal PC  : pc_t;
    signal NPC : pc_t;

    ---------------------------- [ID] STAGE
    signal RF_OUT_1 : data_t;
    signal RF_OUT_2 : data_t;
    signal A        : data_t;
    signal B        : data_t;
    signal IMM      : data_t;
    signal NPC_ID   : pc_t;
    signal RD_ID    : std_logic_vector(INS_R2_SIZE - 1 downto 0);
    signal RS_ID    : std_logic_vector(INS_R2_SIZE - 1 downto 0);

    ---------------------------- [EX] STAGE
    signal ALU_IN_1    : data_t;
    signal ALU_IN_2    : data_t;
    signal ALU_OUT     : data_t;
    signal LL_ALU_OUT  : data_t;
    signal MUXC_OUT    : data_t;
    signal ALU_OUT_REG : data_t;
    signal COND        : std_logic;
    signal B_EX        : data_t;
    signal NPC_EX      : pc_t;
    signal RD_EX       : std_logic_vector(INS_R3_SIZE - 1 downto 0);

    ---------------------------- [ME] STAGE
    signal MUXD_OUT       : pc_t;
    signal LMD            : data_t;
    signal ALU_OUT_REG_ME : data_t;
    signal RD_MEM         : std_logic_vector(INS_R2_SIZE - 1 downto 0);

    ---------------------------- [WB] STAGE
    signal MUXE_OUT : data_t;
begin

    ----------------------------------------------------------------
    -- Signals Assignment
    ----------------------------------------------------------------

    ---------------------------- IR Split
    INS_OP_CODE <= IR(INS_OP_CODE_L downto INS_OP_CODE_R);
    INS_RS1     <= IR(INS_R1_L downto INS_R1_R);
    INS_RS2     <= IR(INS_R2_L downto INS_R2_R);
    -- INS_RD      <= IR(INS_R2_L downto INS_R2_R) when IR(INS_OP_CODE_L downto INS_OP_CODE_R) /= "000000" else IR(INS_R3_L downto INS_R3_R);
    INS_RD      <= IR(INS_R3_L downto INS_R3_R);
    INS_IMM     <= IR(INS_IMM_L downto INS_IMM_R);
    INS_FUNC    <= IR(INS_FUNC_L downto INS_FUNC_R);

    FUNC   <= IR(INS_FUNC_L downto INS_FUNC_R);       -- send the func field to the controller
    OPCODE <= IR(INS_OP_CODE_L downto INS_OP_CODE_R); -- send the opcode to the controller

    ---------------------------- MUXes
    -- MUXA
    ALU_IN_1 <= to_data(NPC_ID) when CW.execute.MUXA_SEL = '0' else
        A;

    -- MUXB
    ALU_IN_2 <= B when CW.execute.MUXB_SEL = '0' else
        IMM;

    -- MUXC
    MUXC_OUT <= ALU_OUT when CW.execute.MUXC_SEL = '0' else
        LL_ALU_OUT;

    -- MUXD
    MUXD_OUT <= (PC + 4) when CW.memory.MUXD_SEL = '0' else
        pc_t(ALU_OUT_REG(PC_SIZE - 1 downto 0));

    -- MUXE
    MUXE_OUT <= LMD when CW.wb.MUXE_SEL = '0' else
        ALU_OUT_REG_ME;

    IRAM_ADDRESS <= std_logic_vector(resize(unsigned(PC), IRAM_ADDR_SIZE));
    ----------------------------------------------------------------
    -- Component Instantiation
    ----------------------------------------------------------------

    RF_i : REGISTER_FILE
    generic map(
        WORD_LEN => RF_WORD_LEN,
        R_NUM    => R_NUM,
        ADDR_LEN => RF_ADDR_LEN
    )
    port map(
        CLK     => CLK,
        RESET   => RST,
        ENABLE  => CW.decode.RF_ENABLE,
        RD1     => CW.decode.RF_RD1,
        RD2     => CW.decode.RF_RD2,
        WR      => CW.wb.RF_WR,
        ADD_WR  => RD_MEM,
        ADD_RD1 => INS_RS1,
        ADD_RD2 => INS_RS2,
        DATAIN  => ALU_OUT_REG_ME,
        OUT1    => RF_OUT_1,
        OUT2    => RF_OUT_2
    );

    ALU_1_i : entity work.ALU
        generic map(
            N => numBit
        )
        port map(
            FUNC   => CW.execute.ALU_OP,
            DATA1  => ALU_IN_1,
            DATA2  => ALU_IN_2,
            OUTALU => ALU_OUT
        );

    -- TODO: others

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------

    ---------------------------- [IF] STAGE
    -- PC
    PC_P : process (CLK, RST)
    begin
        if RST = '1' then
            PC <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.fetch.PC_EN = '1') then
                PC <= MUXD_OUT;
            end if;
        end if;
    end process PC_P;

    -- NPC
    NPC_P : process (CLK, RST)
    begin
        if RST = '1' then
            NPC <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.fetch.NPC_EN = '1') then
                NPC <= PC + 4; -- TODO: generalizzare?
            end if;
        end if;
    end process NPC_P;

    -- IR
    IR_P : process (CLK, RST)
    begin
        if RST = '1' then
            IR <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.fetch.IR_EN = '1') then
                IR <= IRAM_DATA;
            end if;
        end if;
    end process IR_P;

    ---------------------------- [ID] STAGE
    -- A
    A_P : process (CLK, RST)
    begin
        if RST = '1' then
            A <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.decode.A_EN = '1') then
                A <= RF_OUT_1;
            end if;
        end if;
    end process A_P;

    -- B
    B_P : process (CLK, RST)
    begin
        if RST = '1' then
            B <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.decode.B_EN = '1') then
                B <= RF_OUT_2;
            end if;
        end if;
    end process B_P;

    -- IMM
    IMM_P : process (CLK, RST)
    begin
        if RST = '1' then
            IMM <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.decode.IMM_EN = '1') then
                IMM <= std_logic_vector(resize(unsigned(INS_IMM), IMM'length));
            end if;
        end if;
    end process IMM_P;

    -- NPC_ID
    NPC_ID_P : process (CLK, RST)
    begin
        if RST = '1' then
            NPC_ID <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.decode.NPC_ID_EN = '1') then
                NPC_ID <= NPC;
            end if;
        end if;
    end process NPC_ID_P;

    RD_RS_ID_P: process(CLK, RST)
    begin
        if RST = '1' then
            RD_ID <= (others => '0');
            RS_ID <= (others => '0');
        elsif falling_edge(CLK) then
            RD_ID <= INS_RD;
            RS_ID <= INS_RS2;
        end if;
    end process RD_RS_ID_P;

    ---------------------------- [EX] STAGE
    -- COND
    COND_P : process (CLK, RST)
    begin
        if RST = '1' then
            COND <= '0';
        elsif falling_edge(CLK) then
            if (CW.execute.COND_EN = '1') then
                if unsigned(A) = 0 then
                    COND <= '1';
                else
                    COND <= '0';
                end if;
            end if;
        end if;
    end process COND_P;

    -- ALU_OUT_REG
    ALU_OUT_REG_P : process (CLK, RST)
    begin
        if RST = '1' then
            ALU_OUT_REG <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.execute.ALU_OUT_REG_EN = '1') then
                ALU_OUT_REG <= MUXC_OUT;
            end if;
        end if;
    end process ALU_OUT_REG_P;

    -- B_EX
    B_EX_P : process (CLK, RST)
    begin
        if RST = '1' then
            B_EX <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.execute.B_EX_EN = '1') then
                B_EX <= B;
            end if;
        end if;
    end process B_EX_P;

    -- NPC_EX
    NPC_EX_P : process (CLK, RST)
    begin
        if RST = '1' then
            NPC_EX <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.execute.NPC_EX_EN = '1') then
                NPC_EX <= NPC_ID;
            end if;
        end if;
    end process NPC_EX_P;

    RD_EX_P: process(CLK, RST)
    begin
        if RST = '1' then
            RD_EX <= (others => '0');
        elsif falling_edge(CLK) then
            if CW.execute.REG_DST = '0' then
                RD_EX <= RD_ID;
            else
                RD_EX <= RS_ID;
            end if;
        end if;
    end process RD_EX_P;

    ---------------------------- [ME] STAGE
    -- LMD
    LMD_P : process (CLK, RST)
    begin
        if RST = '1' then
            LMD <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.memory.LMD_EN = '1') then
                LMD <= DRAM_OUT;
            end if;
        end if;
    end process LMD_P;

    -- ALU_OUT_REG_ME
    ALU_OUT_REG_ME_P : process (CLK, RST)
    begin
        if RST = '1' then
            ALU_OUT_REG_ME <= (others => '0');
        elsif falling_edge(CLK) then
            if (CW.memory.ALU_OUT_REG_ME_EN = '1') then
                ALU_OUT_REG_ME <= ALU_OUT_REG;
            end if;
        end if;
    end process ALU_OUT_REG_ME_P;

    RD_MEM_P: process(CLK, RST)
    begin
        if RST = '1' then
            RD_MEM <= (others => '0');
        elsif falling_edge(CLK) then
            RD_MEM <= RD_EX;
        end if;
    end process RD_MEM_P;

    ---------------------------- [WB] STAGE
    -- TODO: controllare timing per il WB al RF

end architecture RTL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_DP_BEH of DATAPATH is
    for RTL
    end for;
end configuration;
