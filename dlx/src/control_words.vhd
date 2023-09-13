library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.alu_type.all;
use work.myTypes.all;

package control_words is

    -----------------------------------------------------------------------------
    -- Pipeline control signals type definitions
    -----------------------------------------------------------------------------
    type fetch_cw_t is record
        PC_EN   : std_logic; -- Progam counter latch enable
        IR_EN   : std_logic; -- Instruction Register Latch Enable
        NPC_EN  : std_logic; -- Next Program counter latch enable
        IRAM_EN : std_logic; -- instruction ram enable signal
    end record fetch_cw_t;

    type decode_cw_t is record
        A_EN       : std_logic; -- A operad register latch enable
        B_EN       : std_logic; -- B operad register latch enable
        IMM_EN     : std_logic; -- IMM operad register latch enable
        NPC_ID_EN  : std_logic; -- Next Program counter [EX] latch enable
        RF_RESET   : std_logic; -- register file reset signal
        RF_ENABLE  : std_logic; -- register file enable signal
        RF_RD1     : std_logic; -- register file read port one signal
        RF_RD2     : std_logic; -- register file read port two signal
        MUX_SIGNED : std_logic; -- MUX_SIGNED selection signal
        MUX_J_SEL  : std_logic; -- MUX_J_SEL selection signal
        MUX_R_SEL  : std_logic_vector(1 downto 0); -- selects between RD, RS and LR
    end record decode_cw_t;

    type execute_cw_t is record
        ALU_OUT_REG_EN : std_logic; -- ALU_OUT register latch enable
        COND_EN        : std_logic; -- Branch Condition latch enable
        ALU_OP         : alu_op_t;
        B_EX_EN        : std_logic; -- B operad register [EX] latch enable
        NPC_EX_EN      : std_logic; -- Next Program counter [EX] latch enable
        MUX_A_SEL      : std_logic; -- MUX_A selection signal
        MUX_B_SEL      : std_logic; -- MUX_B selection signal
        MUX_LL_SEL     : std_logic; -- MUX_LL selection signal
        MUX_COND_SEL   : std_logic; -- MUX_COND selection signal
    end record execute_cw_t;

    type memory_cw_t is record
        LMD_EN            : std_logic; -- Loaded memory data latch enable
        ALU_OUT_REG_ME_EN : std_logic; -- ALU_OUT register [ME] latch enable
        DRAM_ENABLE       : std_logic; -- data memory enable signal
        DRAM_READNOTWRITE : std_logic; -- data memory r/w signal
    end record memory_cw_t;

    type wb_cw_t is record
        RF_WR       : std_logic; -- register file write port signal
        MUX_LMD_SEL : std_logic_vector(1 downto 0); -- MUX_LMD selection signal
    end record wb_cw_t;

    type cw_t is record
        fetch   : fetch_cw_t;
        decode  : decode_cw_t;
        execute : execute_cw_t;
        memory  : memory_cw_t;
        wb      : wb_cw_t;
    end record cw_t;

    type cw_from_mem is record
        IRAM_DATA_READY : std_logic; -- instruction ram data ready signal
        DRAM_DATA_READY : std_logic;
    end record cw_from_mem;

    -----------------------------------------------------------------------------
    -- Control word signal definition
    -----------------------------------------------------------------------------

    -- Default IF Field
    constant fetch_cw_def : fetch_cw_t := (
        PC_EN   => '1',
        IR_EN   => '1',
        NPC_EN  => '1',
        IRAM_EN => '1'
    );

    ---------------------------- I TYPE

    -- ADDI
    constant ADDI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- ADDUI
    constant ADDUI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '0',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => ALU_ADDu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SUBI
    constant SUBI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sub,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SUBUI
    constant SUBUI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '0',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => ALU_SUBu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- ANDI
    constant ANDI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_and,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- ORI
    constant ORI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_or,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SW
    constant SW_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '1',
        DRAM_READNOTWRITE => '0'
        ),
        wb          => (
        RF_WR       => '0',
        MUX_LMD_SEL => "01"
        )
    );

    -- LW
    constant LW_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '1',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '1',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "00"
        )
    );

    -- XORI
    constant XORI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_xor,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SLLI
    constant SLLI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sll,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SRLI
    constant SRLI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_srl,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SEQI
    constant SEQI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_seq,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SNEI
    constant SNEI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sne,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SLTI
    constant SLTI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_slt,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SGTI
    constant SGTI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sgt,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SLEI
    constant SLEI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sle,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SGEI
    constant SGEI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sge,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SLTUI
    constant SLTUI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '0',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sltu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SGTUI
    constant SGTUI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '0',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sgtu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SLEUI
    constant SLEUI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '0',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sleu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    -- SGEUI
    constant SGEUI_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '0',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sgeu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );
    ---------------------------- N TYPE 

    -- NOP
    constant NOP_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "01"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '0',
        MUX_LMD_SEL => "01"
        )
    );

    ---------------------------- R TYPE 

    -- R TYPE
    constant RTYPE_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "00"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '0',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '1',
        MUX_B_SEL      => '0',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "01"
        )
    );

    ---------------------------- J TYPE 

    -- J
    constant J_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '1',
        MUX_R_SEL  => "00"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '0',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '0',
        MUX_LMD_SEL => "00"
        )
    );

    -- JAL
    constant JAL_CW : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '1',
        MUX_R_SEL  => "10"
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUX_A_SEL      => '0',
        MUX_B_SEL      => '1',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '1',
        MUX_LMD_SEL => "10"
        )
    );

    ---------------------------- RESET

    -- Reset Init
    signal init_cw : cw_t := (
        fetch_cw_def,
        decode     => (
        A_EN       => '1',
        B_EN       => '1',
        IMM_EN     => '1',
        NPC_ID_EN  => '1',
        RF_RESET   => '0',
        RF_ENABLE  => '1',
        RF_RD1     => '1',
        RF_RD2     => '1',
        MUX_SIGNED => '1',
        MUX_J_SEL  => '0',
        MUX_R_SEL  => "00"
        ),
        execute        => (
        ALU_OUT_REG_EN => '0',
        COND_EN        => '0',
        ALU_OP         => alu_add,
        B_EX_EN        => '0',
        NPC_EX_EN      => '0',
        MUX_A_SEL      => '0',
        MUX_B_SEL      => '0',
        MUX_LL_SEL     => '0',
        MUX_COND_SEL   => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        ALU_OUT_REG_ME_EN => '0',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb          => (
        RF_WR       => '0',
        MUX_LMD_SEL => "00"
        )
    );

    -----------------------------------------------------------------------------
    -- Stalls control
    -----------------------------------------------------------------------------

    ---------------------------- Definition

    type stage_enable_t is record
        FETCH   : std_logic;
        DECODE  : std_logic;
        EXECUTE : std_logic;
        MEMORY  : std_logic;
        WB      : std_logic;
    end record stage_enable_t;

    ---------------------------- Constants

    constant STALL_CLEAR : stage_enable_t := (
        FETCH   => '1',
        DECODE  => '1',
        EXECUTE => '1',
        MEMORY  => '1',
        WB      => '1'
    );

    constant STALL_FETCH : stage_enable_t := (
        FETCH   => '0',
        DECODE  => '1',
        EXECUTE => '1',
        MEMORY  => '1',
        WB      => '1'
    );

    constant STALL_DECODE : stage_enable_t := (
        FETCH   => '0',
        DECODE  => '0',
        EXECUTE => '1',
        MEMORY  => '1',
        WB      => '1'
    );

    constant STALL_EXECUTE : stage_enable_t := (
        FETCH   => '0',
        DECODE  => '0',
        EXECUTE => '0',
        MEMORY  => '1',
        WB      => '1'
    );

    constant STALL_MEMORY : stage_enable_t := (
        FETCH   => '0',
        DECODE  => '0',
        EXECUTE => '0',
        MEMORY  => '0',
        WB      => '1'
    );

    constant STALL_WB : stage_enable_t := (
        FETCH   => '0',
        DECODE  => '0',
        EXECUTE => '0',
        MEMORY  => '0',
        WB      => '0'
    );

    -----------------------------------------------------------------------------
    -- Function to cast a std_logic_vector into a cw_t
    -----------------------------------------------------------------------------
    --pure function to_cw(arg : std_logic_vector) return cw_t;

end package control_words;

-- FIXME: da fixare/rimuovere?
-- package body control_words is
--     pure function to_cw(arg : std_logic_vector) return cw_t is
-- begin
--     return (
--     fetch   => (
--     PC_EN   => arg(29),
--     IR_EN   => arg(28),
--     NPC_EN  => arg(27),
--     IRAM_EN => arg(26)
--     ),
--     decode    => (
--     A_EN      => arg(25),
--     B_EN      => arg(24),
--     IMM_EN    => arg(23),
--     NPC_ID_EN => arg(22),
--     RF_RESET  => arg(21),
--     RF_ENABLE => arg(20),
--     RF_RD1    => arg(19),
--     RF_RD2    => arg(18)
--     ),
--     execute        => (
--     ALU_OUT_REG_EN => arg(17),
--     COND_EN        => arg(16),
--     ALU_OP         => alu_op_t'val(to_integer(unsigned(std_logic_vector'(arg(15) & arg(14) & arg(13))))),
--     B_EX_EN        => arg(12),
--     NPC_EX_EN      => arg(11),
--     MUX_A_SEL       => arg(10),
--     MUX_B_SEL       => arg(9),
--     MUX_LL_SEL       => arg(8),
--     MUX_R_SEL        => arg(7)
--     ),
--     memory            => (
--     LMD_EN            => arg(6),
--     MUX_COND_SEL          => arg(5),
--     ALU_OUT_REG_ME_EN => arg(4),
--     DRAM_ENABLE       => arg(3),
--     DRAM_READNOTWRITE => arg(2)
--     ),
--     wb       => (
--     RF_WR    => arg(1),
--     MUX_LMD_SEL => arg(0)
--     )
--     );
-- end function;
-- end control_words;
