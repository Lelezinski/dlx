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
        A_EN      : std_logic; -- A operad register latch enable
        B_EN      : std_logic; -- B operad register latch enable
        IMM_EN    : std_logic; -- IMM operad register latch enable
        NPC_ID_EN : std_logic; -- Next Program counter [EX] latch enable
        RF_RESET  : std_logic; -- register file reset signal
        RF_ENABLE : std_logic; -- register file enable signal
        RF_RD1    : std_logic; -- register file read port one signal
        RF_RD2    : std_logic; -- register file read port two signal
        RF_WR     : std_logic; -- register file write port signal
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
    end record execute_cw_t;

    type memory_cw_t is record
        LMD_EN            : std_logic; -- Loaded memory data latch enable
        MUXD_SEL          : std_logic; -- MuxD selection signal
        ALU_OUT_REG_ME_EN : std_logic; -- ALU_OUT register [ME] latch enable
        DRAM_ENABLE       : std_logic; -- data memory enable signal
        DRAM_READNOTWRITE : std_logic; -- data memory r/w signal
    end record memory_cw_t;

    type wb_cw_t is record
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
    signal init_cw : cw_t := (
        fetch   => (
        PC_EN   => '1',
        IR_EN   => '1',
        NPC_EN  => '1',
        IRAM_EN => '1'
        ),
        decode    => (
        A_EN      => '0',
        B_EN      => '0',
        IMM_EN    => '0',
        NPC_ID_EN => '0',
        RF_RESET  => '0',
        RF_ENABLE => '1',
        RF_RD1    => '0',
        RF_RD2    => '0',
        RF_WR     => '0'
        ),
        execute        => (
        ALU_OUT_REG_EN => '0',
        COND_EN        => '0',
        ALU_OP         => alu_add,
        B_EX_EN        => '0',
        NPC_EX_EN      => '0',
        MUXA_SEL       => '0',
        MUXB_SEL       => '0',
        MUXC_SEL       => '0'
        ),
        memory            => (
        LMD_EN            => '0',
        MUXD_SEL          => '0',
        ALU_OUT_REG_ME_EN => '0',
        DRAM_ENABLE       => '0',
        DRAM_READNOTWRITE => '0'
        ),
        wb       => (
        MUXE_SEL => '0'
        )
    );

    -----------------------------------------------------------------------------
    -- Function to cast a std_logic_vector into a cw_t
    -----------------------------------------------------------------------------
    pure function to_cw(arg : std_logic_vector) return cw_t;

end package control_words;

-- FIXME: ALU_OP
package body control_words is
    pure function to_cw(arg : std_logic_vector) return cw_t is
begin
    return (
    fetch   => (
    PC_EN   => arg(28),
    IR_EN   => arg(27),
    NPC_EN  => arg(26),
    IRAM_EN => arg(25)
    ),
    decode    => (
    A_EN      => arg(24),
    B_EN      => arg(23),
    IMM_EN    => arg(22),
    NPC_ID_EN => arg(21),
    RF_RESET  => arg(20),
    RF_ENABLE => arg(19),
    RF_RD1    => arg(18),
    RF_RD2    => arg(17),
    RF_WR     => arg(16)
    ),
    execute        => (
    ALU_OUT_REG_EN => arg(15),
    COND_EN        => arg(14),
    ALU_OP         => alu_op_t'val(to_integer(unsigned(std_logic_vector'(arg(13) & arg(12) & arg(11))))),
    B_EX_EN        => arg(10),
    NPC_EX_EN      => arg(9),
    MUXA_SEL       => arg(8),
    MUXB_SEL       => arg(7),
    MUXC_SEL       => arg(6)
    ),
    memory            => (
    LMD_EN            => arg(5),
    MUXD_SEL          => arg(4),
    ALU_OUT_REG_ME_EN => arg(3),
    DRAM_ENABLE       => arg(2),
    DRAM_READNOTWRITE => arg(1)
    ),
    wb       => (
    MUXE_SEL => arg(0)
    )
    );
end function;
end control_words;
