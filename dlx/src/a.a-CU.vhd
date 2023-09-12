library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;
use work.ALU_TYPE.all;
use work.control_words.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity CU is
    generic (
        -- TODO: use constants
        MICROCODE_MEM_SIZE : integer := 15; -- Microcode Memory Size
        FUNC_SIZE          : integer := 11; -- Func Field Size for R-Type Ops
        OP_CODE_SIZE       : integer := 6;  -- Op Code Size
        CW_SIZE            : integer := 23  -- Control Word Size
    );
    port (
        CLK : in std_logic;
        RST : in std_logic; -- Active High
        -- Control
        CW   : out cw_t;           -- control word for datapath and memories
        SECW : out stage_enable_t; -- stage enable control word
        cu_to_fu : out cu_to_fu_t;
        -- Inputs
        IN_CW  : in cw_from_mem; -- input signals coming from datapath and memories
        OPCODE : in opcode_t;
        FUNC   : in func_t;
        -- RAM
        IRAM_READY        : in std_logic;
        DRAM_READY        : in std_logic;
        IRAM_ENABLE       : out std_logic;
        DRAM_ENABLE       : out std_logic;
        DRAM_READNOTWRITE : out std_logic
    );
end CU;

architecture RTL of CU is

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    signal FUNC_OP : func_t;

    ---------------------------- CW Pipeline
    signal cw_s, cw1, cw2, cw3, cw4, cw5 : cw_t;
    signal ir_en_s, lmd_en_s             : std_logic;

    -- These signals are needed to avoid conflicts on the cw registers.
    signal ALU_OPCODE, ALU_OPCODE_UPDATED, ALU_OPCODE_UPDATED_2 : alu_op_t; -- OPCODE updated after ID stage

    ---------------------------- SECW Pipeline
    signal SECW0, SECW1, SECW2, SECW3, SECW4, SECW5 : stage_enable_t;

begin

    ----------------------------------------------------------------
    -- Signals Assignment
    ----------------------------------------------------------------

    ---------------------------- CW Pipeline
    -- Convert the func field into enum type func_t
    FUNC_OP <= FUNC;

    -- Assign the control signals to the outputs
    CW <= (
        cw1.fetch,
        cw1.decode,
        (
        cw2.execute.ALU_OUT_REG_EN,
        cw2.execute.COND_EN,
        ALU_OPCODE_UPDATED_2,
        cw2.execute.B_EX_EN,
        cw2.execute.NPC_EX_EN,
        cw2.execute.MUX_A_SEL,
        cw2.execute.MUX_B_SEL,
        cw2.execute.MUX_LL_SEL,
        cw2.execute.MUX_COND_SEL
        ),
        cw3.memory,
        cw4.wb
        );

    -- ir_en_s <= IRAM_READY;
    ir_en_s <= '1';

    ---------------------------- SECW Pipeline
    SECW <= SECW0;
    --(
    --     SECW1.FETCH,
    --     SECW2.DECODE,
    --     SECW3.EXECUTE,
    --     SECW4.MEMORY,
    --     SECW5.WB
    -- );

    ---------------------------- Forwarding unit
    cu_to_fu <= (
        RF_WR_EX  => cw2.wb.RF_WR,
        RF_WR_MEM => cw3.wb.RF_WR,
        MUX_A_CU  => cw2.execute.MUX_A_SEL,
        MUX_B_CU  => cw2.execute.MUX_B_SEL
   );

    ---------------------------- RAM
    IRAM_ENABLE       <= '1';
    DRAM_ENABLE       <= cw3.memory.DRAM_ENABLE;
    DRAM_READNOTWRITE <= cw3.memory.DRAM_READNOTWRITE;

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------

    ---------------------------- CW Pipeline
    -- OPCODE is used as index of cw_mem.
    -- get the complete control word of the current instruction
    CW_S_UP : process (OPCODE)
    begin
        case OPCODE is

            when ITYPE_ADDI => -- ITYPE
                cw_s <= ADDI_CW;
            when ITYPE_SUBI =>
                cw_s <= SUBI_CW;
            when ITYPE_ADDUI =>
                cw_s <= ADDUI_CW;
            when ITYPE_SUBUI =>
                cw_s <= SUBUI_CW;
            when ITYPE_ANDI =>
                cw_s <= ANDI_CW;
            when ITYPE_ORI =>
                cw_s <= ORI_CW;
            when ITYPE_XORI =>
                cw_s <= XORI_CW;
            when ITYPE_SLLI =>
                cw_s <= SLLI_CW;
            when ITYPE_SRLI =>
                cw_s <= SRLI_CW;
            when ITYPE_SEQI =>
                cw_s <= SEQI_CW;
            when ITYPE_SNEI =>
                cw_s <= SNEI_CW;
            when ITYPE_SLTI =>
                cw_s <= SLTI_CW;
            when ITYPE_SGTI =>
                cw_s <= SGTI_CW;
            when ITYPE_SLEI =>
                cw_s <= SLEI_CW;
            when ITYPE_SGEI =>
                cw_s <= SGEI_CW;
            when ITYPE_SLTUI =>
                cw_s <= SLTUI_CW;
            when ITYPE_SGTUI =>
                cw_s <= SGTUI_CW;
            when ITYPE_SLEUI =>
                cw_s <= SLEUI_CW;
            when ITYPE_SGEUI =>
                cw_s <= SGEUI_CW;

            when NTYPE_NOP => -- NTYPE
                cw_s <= NOP_CW;
            when ITYPE_SW =>
                cw_s <= SW_CW;
            when ITYPE_LW =>
                cw_s <= LW_CW;

            when JTYPE_J => -- JTYPE
                cw_s <= J_CW;
                --when JTYPE_JAL =>
                --    cw_s <= JAL_CW;

            when others => -- RTYPE
                cw_s <= RTYPE_CW;
        end case;
    end process;

    -- process to pipeline control words
    CW_PIPE : process (clk, rst)
    begin -- process clk
        if rst = '1' then
            cw1 <= init_cw;
            cw2 <= init_cw;
            cw3 <= init_cw;
            cw4 <= init_cw;
            cw5 <= init_cw;
        elsif falling_edge(clk) then
            -- shift the slice of the control word to the correct control register
            cw1 <= cw_s;
            cw2 <= cw1;
            cw3 <= cw2;
            cw4 <= cw3;
            cw5 <= cw4;
            -- update the OPCODE during ID stage
            ALU_OPCODE_UPDATED   <= ALU_OPCODE;
            ALU_OPCODE_UPDATED_2 <= ALU_OPCODE_UPDATED;

        end if;
    end process CW_PIPE;

    -- ALU_OPCODE Generation (from FUNC for R-Type Instructions)
    ALU_OPCODE_P : process (OPCODE, FUNC_OP, cw_s)
    begin
        -- default assignment for all the instructions that are not RTYPE
        ALU_OPCODE <= cw_s.execute.ALU_OP;

        -- Because all RTYPE instructions index the same element in cw_mem, we
        -- use the FUNC field to select correctly their ALU_OPCODE.
        -- Updating directly CW(6) and CW(5) would gerenare a conflict
        if (OPCODE = RTYPE) then
            case FUNC_OP is
                when func_add =>
                    ALU_OPCODE <= alu_add;
                when FUNC_ADDu =>
                    ALU_OPCODE <= ALU_ADDu;
                when func_sub =>
                    ALU_OPCODE <= alu_sub;
                when FUNC_SUBu =>
                    ALU_OPCODE <= ALU_SUBu;
                when func_and =>
                    ALU_OPCODE <= alu_and;
                when func_or =>
                    ALU_OPCODE <= alu_or;
                when func_xor =>
                    ALU_OPCODE <= alu_xor;
                when func_sll =>
                    ALU_OPCODE <= alu_sll;
                when func_srl =>
                    ALU_OPCODE <= alu_srl;

                when func_seq =>
                    ALU_OPCODE <= alu_seq;
                when func_sne =>
                    ALU_OPCODE <= alu_sne;
                when func_sge =>
                    ALU_OPCODE <= alu_sge;
                when func_sgt =>
                    ALU_OPCODE <= alu_sgt;
                when func_sle =>
                    ALU_OPCODE <= alu_sle;
                when func_slt =>
                    ALU_OPCODE <= alu_slt;
                when func_sgeu =>
                    ALU_OPCODE <= alu_sgeu;
                when func_sgtu =>
                    ALU_OPCODE <= alu_sgtu;
                when func_sleu =>
                    ALU_OPCODE <= alu_sleu;
                when func_sltu =>
                    ALU_OPCODE <= alu_sltu;

                when func_mul =>
                    ALU_OPCODE <= alu_mul;
                when others =>
                    ALU_OPCODE <= alu_add;
            end case;
        end if;
    end process ALU_OPCODE_P;

    ---------------------------- SECW Pipeline

    -- Stall generation process
    -- TODO: add other stall sources
    STALLS_P : process (CLK, RST)
    begin
        if RST = '1' then
            SECW0 <= STALL_CLEAR;
            SECW1 <= STALL_CLEAR;
            SECW2 <= STALL_CLEAR;
            SECW3 <= STALL_CLEAR;
            SECW4 <= STALL_CLEAR;
            SECW5 <= STALL_CLEAR;

        elsif falling_edge(clk) then
            -- Pipeline Update
            SECW0.WB      <= SECW0.MEMORY and SECW1.WB;
            SECW0.MEMORY  <= SECW0.EXECUTE and SECW1.MEMORY;
            SECW0.EXECUTE <= SECW0.DECODE and SECW1.EXECUTE;
            SECW0.DECODE  <= SECW0.FETCH and SECW1.DECODE;
            SECW0.FETCH   <= '1' and SECW1.FETCH;

            SECW1 <= SECW2;
            SECW2 <= SECW3;
            SECW3 <= SECW4;
            SECW4 <= SECW5;
            SECW5 <= STALL_CLEAR;

            -- Stall sources check, in descending order to avoid conflicts
            -- WB Stalls
            -- ME Stalls
            -- RST is a placeholder
            if RST = '1' then -- Wait for DRAM ready
                SECW1 <= STALL_MEMORY;
                -- EX Stalls
                -- ID Stalls
            elsif RST = '1' then -- Wait for IRAM ready
                SECW1 <= STALL_DECODE;
                -- IF Stalls
            elsif OPCODE = JTYPE_J then -- Stall 2 cc for j/branches
                --SECW2 <= STALL_FETCH;
                --SECW3 <= STALL_FETCH;
            end if;
        end if;
    end process STALLS_P;

    -- CW1_P : process(cw1_s, ir_en_s)
    -- begin
    --     cw1_s <= ((cw1.fetch.PC_EN, ir_en_s, cw1.fetch.NPC_EN, cw1.fetch.IRAM_EN),
    --             cw1.decode,
    --             cw1.execute,
    --             cw1.memory,
    --             cw1.wb);
    -- end process;

    -- CW4_P : process(cw4, lmd_en_s)
    -- begin
    --     cw4_s <= (cw4.fetch,
    --               cw4.decode,
    --               cw4.execute,
    --               (lmd_en_s, cw4.memory.ALU_OUT_REG_ME_EN, cw4.memory.DRAM_ENABLE, cw4.memory.DRAM_READNOTWRITE),
    --               cw4.wb);
    -- end process;
end RTL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_CU_BEH of CU is
    for RTL
    end for;
end configuration;
