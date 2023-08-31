package alu_type is

    -- ALU OP Type
    type alu_op_t is (
        ALU_ADD,
        ALU_SUB,
        ALU_MUL,
        ALU_AND,
        ALU_OR,
        ALU_XOR,
        ALU_SLL,
        ALU_SRL,
        ALU_SEQ,
        ALU_SNE,
        ALU_SGE,
        ALU_SGT,
        ALU_SLE,
        ALU_SLT
    );

end alu_type;
