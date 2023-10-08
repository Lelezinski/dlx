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
    subtype double_data_t is std_logic_vector(2 * numBit - 1 downto 0);

    -- Instructions Size
    constant INS_SIZE : integer := 32;
    subtype ins_t is std_logic_vector(INS_SIZE - 1 downto 0);
    constant INS_OP_CODE_SIZE : integer := 6;  -- OPCODE field size
    constant INS_R1_SIZE      : integer := 5;  -- R1 field size
    constant INS_R2_SIZE      : integer := 5;  -- R2 field size
    constant INS_R3_SIZE      : integer := 5;  -- R3 field size
    constant INS_IMM_SIZE     : integer := 16; -- IMM field size
    constant INS_J_IMM_SIZE   : integer := 26; -- IMM field size for J-TYPEs
    constant INS_FUNC_SIZE    : integer := 11; -- FUNC field size

    -- Instrucions Left and Right bit
    constant INS_OP_CODE_L : integer := 31;
    constant INS_OP_CODE_R : integer := 26;
    constant INS_R1_L      : integer := 25;
    constant INS_R1_R      : integer := 21;
    constant INS_R2_L      : integer := 20;
    constant INS_R2_R      : integer := 16;
    constant INS_R3_L      : integer := 15;
    constant INS_R3_R      : integer := 11;
    constant INS_IMM_L     : integer := 15;
    constant INS_IMM_R     : integer := 0;
    constant INS_J_IMM_L   : integer := 25;
    constant INS_J_IMM_R   : integer := 0;
    constant INS_FUNC_L    : integer := 10;
    constant INS_FUNC_R    : integer := 0;

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
    constant LR_INDEX    : integer := 31; -- link register, or last register in RF
    -- WRF
    -- constant NUM_GLOBAL_REGISTERS : integer := 1;  -- M
    -- constant NUM_LIO_REGISTERS    : integer := 3;  -- N (LOCAL/INPUT/OUTPUT REGS)
    -- constant NUM_WINDOWS          : integer := 4;  -- F

    -- TestBench
    constant C_TB_STAGES : integer := 3; -- Number of Clock Cycles between two instructions

    -- IRAM
    constant IRAM_DEPTH     : integer := 256;
    constant PC_SIZE        : integer := numBit;
    constant IRAM_ADDR_SIZE : integer := PC_SIZE;
    subtype pc_t is unsigned(PC_SIZE - 1 downto 0);

    -- Control Unit Input Sizes
    constant C_OP_CODE_SIZE : integer := 6;        -- OPCODE field size
    constant C_FUNC_SIZE    : integer := 11;       -- FUNC field size
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
    subtype func_t is std_logic_vector(C_FUNC_SIZE - 1 downto 0);
    subtype opcode_t is std_logic_vector(C_OP_CODE_SIZE - 1 downto 0);

    -- R-Type instruction -> FUNC field
    constant FUNC_ADD  : func_t := "00000100000";
    constant FUNC_ADDu : func_t := "00000100001";
    constant FUNC_SUB  : func_t := "00000100010";
    constant FUNC_SUBu : func_t := "00000100011";
    constant FUNC_AND  : func_t := "00000100100";
    constant FUNC_OR   : func_t := "00000100101";
    constant FUNC_XOR  : func_t := "00000100110";
    constant FUNC_SLL  : func_t := "00000000100";
    constant FUNC_SRL  : func_t := "00000000110";
    constant FUNC_SEQ  : func_t := "00000101000";
    constant FUNC_SNE  : func_t := "00000101001";
    constant FUNC_SLT  : func_t := "00000101010";
    constant FUNC_SGT  : func_t := "00000101011";
    constant FUNC_SLE  : func_t := "00000101100";
    constant FUNC_SGE  : func_t := "00000101101";
    constant FUNC_MUL  : func_t := "00000111110";
    constant FUNC_SLTu : func_t := "00000111010";
    constant FUNC_SGTu : func_t := "00000111011";
    constant FUNC_SLEu : func_t := "00000111100";
    constant FUNC_SGEu : func_t := "00000111101";

    -- R-Type instruction -> OPCODE field
    constant RTYPE : opcode_t := "000000";

    -- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI  : opcode_t := "001000";
    constant ITYPE_SUBI  : opcode_t := "001010";
    constant ITYPE_ADDUI : opcode_t := "001001";
    constant ITYPE_SUBUI : opcode_t := "001011";
    constant ITYPE_ANDI  : opcode_t := "001100";
    constant ITYPE_ORI   : opcode_t := "001101";
    constant ITYPE_XORI  : opcode_t := "001110";
    constant ITYPE_SLLI  : opcode_t := "010100";
    constant ITYPE_SRLI  : opcode_t := "010110";
    constant ITYPE_SEQI  : opcode_t := "011000";
    constant ITYPE_SNEI  : opcode_t := "011001";
    constant ITYPE_SLTI  : opcode_t := "011010";
    constant ITYPE_SGTI  : opcode_t := "011011";
    constant ITYPE_SLEI  : opcode_t := "011100";
    constant ITYPE_SGEI  : opcode_t := "011101";
    constant ITYPE_SLTUI : opcode_t := "111010";
    constant ITYPE_SGTUI : opcode_t := "111011";
    constant ITYPE_SLEUI : opcode_t := "111100";
    constant ITYPE_SGEUI : opcode_t := "111101";
    constant ITYPE_BEQZ  : opcode_t := "000100";
    constant ITYPE_BNEZ  : opcode_t := "000101";
    constant ITYPE_LW    : opcode_t := "100011";
    constant ITYPE_SW    : opcode_t := "101011";

    -- J-Type instruction -> OPCODE field
    constant JTYPE_J   : opcode_t := "000010";
    constant JTYPE_JAL : opcode_t := "000011";
    constant JTYPE_JR  : opcode_t := "010010";

    -- N-Type instruction -> OPCODE field
    constant NTYPE_NOP : opcode_t := "010101";

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

    type dp_to_fu_t is record
        RD_EX     : std_logic_vector(INS_R1_SIZE - 1 downto 0);
        RD_MEM    : std_logic_vector(INS_R1_SIZE - 1 downto 0);
        RS_ID     : std_logic_vector(INS_R1_SIZE - 1 downto 0);
        RT_ID     : std_logic_vector(INS_R1_SIZE - 1 downto 0);
    end record;

    type cu_to_fu_t is record
        RF_WR_EX  : std_logic;
        RF_WR_MEM : std_logic;
        MUX_A_CU  : std_logic;
        MUX_B_CU  : std_logic;
        DRAM_READNOTWRITE: std_logic;
        DRAM_ENABLE : std_logic;
        IS_JUMP_EX   : std_logic;
    end record;

    type dp_to_hu_t is record
        RT_ID  : std_logic_vector(INS_R1_SIZE - 1 downto 0);
        RS_IF  : std_logic_vector(INS_R1_SIZE - 1 downto 0);
        RT_IF  : std_logic_vector(INS_R1_SIZE - 1 downto 0);
    end record;

    type cu_to_hu_t is record
        LMD_EN     : std_logic;
        IS_JUMP_ID : std_logic;
        IS_JUMP_EX : std_logic;
    end record;

end myTypes;

package body myTypes is
    pure function to_data(arg : pc_t) return data_t is
begin
    return data_t(resize(unsigned(arg), numBit));
end function to_data;
end package body myTypes;
