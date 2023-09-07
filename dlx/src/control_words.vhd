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
        MUX_J      : std_logic; -- MUX_J selection signal
    end record decode_cw_t;

    type execute_cw_t is record
        ALU_OUT_REG_EN : std_logic; -- ALU_OUT register latch enable
        COND_EN        : std_logic; -- Branch Condition latch enable
        ALU_OP         : alu_op_t;
        B_EX_EN        : std_logic; -- B operad register [EX] latch enable
        NPC_EX_EN      : std_logic; -- Next Program counter [EX] latch enable
        MUXA_SEL       : std_logic; -- MuxA selection signal
        MUXB_SEL       : std_logic; -- MuxB selection signal
        MUXC_SEL       : std_logic; -- MuxC selection signal
        REG_DST        : std_logic; -- selects between RD and RS
    end record execute_cw_t;

    type memory_cw_t is record
        LMD_EN            : std_logic; -- Loaded memory data latch enable
        MUXD_SEL          : std_logic; -- MuxD selection signal
        ALU_OUT_REG_ME_EN : std_logic; -- ALU_OUT register [ME] latch enable
        DRAM_ENABLE       : std_logic; -- data memory enable signal
        DRAM_READNOTWRITE : std_logic; -- data memory r/w signal
    end record memory_cw_t;

    type wb_cw_t is record
        RF_WR    : std_logic; -- register file write port signal
        MUXE_SEL : std_logic; -- MuxE selection signal
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

    -- Constant IF and ID Fields
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => ALU_ADDu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sub,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => ALU_SUBu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_and,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_or,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '1',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '0',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '1',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '1',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '0'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_xor,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sll,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_srl,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_seq,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sne,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_slt,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sgt,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sle,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sge,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sltu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sgtu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sleu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_sgeu,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '1'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '1',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '1',
        MUXC_SEL       => '0',
        REG_DST        => '1'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '0',
        MUXE_SEL => '1'
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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '1',
        COND_EN        => '0',
        ALU_OP         => alu_add,
        B_EX_EN        => '1',
        NPC_EX_EN      => '1',
        MUXA_SEL       => '1',
        MUXB_SEL       => '0',
        MUXC_SEL       => '0',
        REG_DST        => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '1',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '1',
        MUXE_SEL => '1'
        )
    );

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
        MUX_J      => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '0',
        COND_EN        => '0',
        ALU_OP         => alu_add,
        B_EX_EN        => '0',
        NPC_EX_EN      => '0',
        MUXA_SEL       => '0',
        MUXB_SEL       => '0',
        MUXC_SEL       => '0',
        REG_DST        => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '0',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        RF_WR    => '0',
        MUXE_SEL => '0'
        )
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
--     MUXA_SEL       => arg(10),
--     MUXB_SEL       => arg(9),
--     MUXC_SEL       => arg(8),
--     REG_DST        => arg(7)
--     ),
--     memory            => (
--     LMD_EN            => arg(6),
--     MUXD_SEL          => arg(5),
--     ALU_OUT_REG_ME_EN => arg(4),
--     DRAM_ENABLE       => arg(3),
--     DRAM_READNOTWRITE => arg(2)
--     ),
--     wb       => (
--     RF_WR    => arg(1),
--     MUXE_SEL => arg(0)
--     )
--     );
-- end function;
-- end control_words;
