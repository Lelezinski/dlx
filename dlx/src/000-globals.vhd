library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.ceil;
use IEEE.math_real.log2;

package myTypes is

    ---- CONSTANTS -----

    -- Data
    constant numBit : integer := 32;
    subtype data_t is std_logic_vector(numBit - 1 downto 0);
    subtype double_data_t is std_logic_vector(2*numBit - 1 downto 0);

    -- Instructions Size
    constant INS_SIZE         : integer := 32;
    subtype ins_t is std_logic_vector(INS_SIZE - 1 downto 0);
    constant INS_OP_CODE_SIZE : integer := 6;  -- OPCODE field size
    constant INS_R1_SIZE      : integer := 5;  -- R1 field size
    constant INS_R2_SIZE      : integer := 5;  -- R2 field size
    constant INS_R3_SIZE      : integer := 5;  -- R3 field size
    constant INS_IMM_SIZE     : integer := 16; -- IMM field size
    constant INS_FUNC_SIZE    : integer := 11; -- FUNC field size

    -- Instrucions Left and Right bit
    constant INS_OP_CODE_L : integer := 31;
    constant INS_OP_CODE_R : integer := 26;
    constant INS_R1_L : integer := 25;
    constant INS_R1_R : integer := 21;
    constant INS_R2_L : integer := 20;
    constant INS_R2_R : integer := 16;
    constant INS_R3_L : integer := 15;
    constant INS_R3_R : integer := 11;
    constant INS_IMM_L : integer := 15;
    constant INS_IMM_R : integer := 0;
    constant INS_FUNC_L : integer := 10;
    constant INS_FUNC_R : integer := 0;

    -- Mux
    constant IVDELAY     : time := 0 ns; --0.1 ns;
    constant NDDELAY     : time := 0 ns; -- 0.2 ns;
    constant NDDELAYRISE : time := 0 ns; -- 0.6 ns;
    constant NDDELAYFALL : time := 0 ns; -- 0.4 ns;
    constant NRDELAY     : time := 0 ns; -- 0.2 ns;
    constant DRCAS       : time := 0 ns; -- 1
    constant DRCAC       : time := 0 ns; -- 2
    constant TP_MUX      : time := 0 ns;

    -- Adder
    constant CARRY_SELECT_NBIT     : integer := 4;                        -- how many bits generate a carry
    constant SUM_GENERATOR_NBLOCKS : integer := numBit/CARRY_SELECT_NBIT; -- numBit / CARRY_SELECT_NBIT

    -- Multiplier
    constant NUMBIT_MUL : integer := 32;

    -- Register Fil
    constant R_NUM       : integer := 32;
    constant RF_WORD_LEN : integer := 32;
    constant RF_REG_NUM  : integer := 8;
    constant RF_ADDR_LEN : integer := integer(ceil(log2(real(R_NUM))));
    -- WRF
    -- constant NUM_GLOBAL_REGISTERS : integer := 1;  -- M
    -- constant NUM_LIO_REGISTERS    : integer := 3;  -- N (LOCAL/INPUT/OUTPUT REGS)
    -- constant NUM_WINDOWS          : integer := 4;  -- F

    -- TestBench
    constant C_TB_STAGES : integer := 3; -- Number of Clock Cycles between two instructions

    -- IRAM
    constant IRAM_DEPTH : integer := 48;
    constant PC_SIZE    : integer := integer(ceil(log2(real(IRAM_DEPTH))));
    constant IRAM_ADDR_SIZE : integer := PC_SIZE;
    subtype pc_t is unsigned(PC_SIZE - 1 downto 0);

    -- Control Unit Input Sizes
    constant C_OP_CODE_SIZE : integer := 6;        -- OPCODE field size
    constant C_FUNC_SIZE    : integer := 11;        -- FUNC field size
    constant C_IR_SIZE      : integer := INS_SIZE; -- Instruction Register Size
    constant C_CW_SIZE      : integer := 30;       -- Control Word Size
    constant ALU_OP_SIZE    : integer := 2;

    -- Number of Available Instructions
    constant C_NUM_OF_R_INSTRUCTION : integer := 5;
    constant C_NUM_OF_I_INSTRUCTION : integer := 14;
    constant C_NUM_OF_INSTRUCTION   : integer := C_NUM_OF_R_INSTRUCTION + C_NUM_OF_I_INSTRUCTION;

    -- Micro Programmed CU Constants
    constant C_INSTRUCTION_CC : integer := 3;                            -- Instructions Execution Clock Cycles (#n of stages)
    constant C_RELOC_MEM_SIZE : integer := (C_NUM_OF_I_INSTRUCTION + 1); -- Microcode Relocation Memory Size
    constant C_UCODE_MEM_SIZE : integer := (C_RELOC_MEM_SIZE * 3 + 1);   -- Microcode Memory Size

    ---- INSTRUCTIONS -----

    -- TODO: add missing ones: SEQ, SGT, SLT

    -- R-Type instruction -> FUNC field
    subtype func_t is std_logic_vector(C_FUNC_SIZE - 1 downto 0); -- (RTYPE_ADD, RTYPE_SUB, RTYPE_AND, RTYPE_OR, NOP);
    subtype opcode_t is std_logic_vector(C_OP_CODE_SIZE - 1 downto 0);

    constant FUNC_ADD : func_t := "00000010000";
    constant FUNC_SUB : func_t := "00000000010";
    constant FUNC_AND : func_t := "00000000011";
    constant FUNC_OR  : func_t := "00000000100";
    constant FUNC_XOR : func_t := "00000000101";
    constant FUNC_SLL : func_t := "00000000110";
    constant FUNC_SRL : func_t := "00000000111";
    constant FUNC_SGE : func_t := "00000001000";
    constant FUNC_SLE : func_t := "00000001001";
    constant FUNC_SNE : func_t := "00000001010";
    constant FUNC_MUL : func_t := "00000001011";

    -- R-Type instruction -> OPCODE field
    constant RTYPE : opcode_t := "000000"; -- for ADD, SUB, AND, OR register-to-register operation

    -- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI : opcode_t := "001000";  -- ADDI  RS1,RD,INP1
    constant ITYPE_SUBI : opcode_t := "001010";  -- SUBI  RA,RB,INP1
    constant ITYPE_ANDI : opcode_t := "001100";  -- ANDI  RA,RB,INP1
    constant ITYPE_ORI  : opcode_t := "001101";  -- ORI  RA,RB,INP1
    constant ITYPE_XORI : opcode_t := "001110";  -- XORI  RA,RB,INP2
    -- TODO: fix from the pearl file
    constant ITYPE_SGEI : opcode_t := "000110";  -- SGEI RA,RB,INP2
    constant ITYPE_SLEI : opcode_t := "000111";  -- SLEI RA,RB,INP2
    constant ITYPE_SLLI : opcode_t := "001000";  -- SLLI RA,RB,INP2
    constant ITYPE_SNEI : opcode_t := "001001";  -- SNEI RA,RB
    constant ITYPE_SRLI : opcode_t := "001010";  -- SRLI RB,INP1
    constant ITYPE_BEQ  : opcode_t := "001011";  -- BEQ RB,INP2
    constant ITYPE_BNEQ : opcode_t := "001100";  -- BNEQ RA,RB,INP2
    constant ITYPE_LW   : opcode_t := "001101";  -- LW RA,RB,INP1
    constant ITYPE_SW   : opcode_t := "001110";  -- SW RA,RB,INP2

    -- J-Type instruction -> OPCODE field
    constant JTYPE_J   : opcode_t := "001111";  -- J TARGET
    constant JTYPE_JAL : opcode_t := "010000";  -- J TARGET

    -- N-Type instruction -> OPCODE field
    constant NTYPE_NOP : opcode_t := "010101";  -- NOP

    -- Only for simulation purpose
    constant RO_HEX      : string := "./memories/ro/hex.txt";
    constant RW_HEX_INIT : string := "./memories/rw/hex_init.txt";
    constant RW_HEX      : string := "./memories/rw/hex.txt";
    -- LORENZO
    -- constant RO_HEX      : string := "C:\Users\ruoto\OneDrive\UNI\08 MS Microelectronic Systems\Progetto\ms\dlx\src\memories\ro\hex.txt";
    -- constant RW_HEX_INIT : string := "C:\Users\ruoto\OneDrive\UNI\08 MS Microelectronic Systems\Progetto\ms\dlx\src\memories\rw\hex_init.txt";
    -- constant RW_HEX      : string := "C:\Users\ruoto\OneDrive\UNI\08 MS Microelectronic Systems\Progetto\ms\dlx\src\memories\rw\hex.txt";

    ---- Process declarations ----
    pure function to_data(arg : pc_t) return data_t;

end myTypes;

package body myTypes is
    pure function to_data(arg: pc_t) return data_t is
    begin
        return data_t(resize(unsigned(arg), numBit));
    end function to_data;
end package body myTypes;
