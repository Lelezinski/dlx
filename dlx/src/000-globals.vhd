library ieee;
use ieee.std_logic_1164.all;
use IEEE.math_real.ceil;
use IEEE.math_real.log2;

package myTypes is

    ---- CONSTANTS -----

    -- Data
    constant numBit : integer := 32;

    -- Instructions Size
    constant INS_SIZE         : integer := 32;
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

    -- Register File
    constant R_NUM       : integer := 16;
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

    -- Control Unit Input Sizes
    constant C_OP_CODE_SIZE : integer := 6;        -- OPCODE field size
    constant C_FUNC_SIZE    : integer := 11;       -- FUNC field size
    constant C_IR_SIZE      : integer := INS_SIZE; -- Instruction Register Size
    constant C_CW_SIZE      : integer := 23;       -- Control Word Size
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

    -- R-Type instruction -> FUNC field
    type func_t is (RTYPE_ADD, RTYPE_SUB, RTYPE_AND, RTYPE_OR, NOP);

    -- constant RTYPE_ADD : std_logic_vector(C_FUNC_SIZE - 1 downto 0) := "00000000000"; -- ADD RS1,RS2,RD
    -- constant RTYPE_SUB : std_logic_vector(C_FUNC_SIZE - 1 downto 0) := "00000000001"; -- SUB RS1,RS2,RD
    -- constant RTYPE_AND : std_logic_vector(C_FUNC_SIZE - 1 downto 0) := "00000000010"; -- AND RA,RB,RC 
    -- constant RTYPE_OR  : std_logic_vector(C_FUNC_SIZE - 1 downto 0) := "00000000011"; -- OR RA,RB,RC 
    -- constant NOP       : std_logic_vector(C_FUNC_SIZE - 1 downto 0) := "11111111111"; -- NOP

    -- R-Type instruction -> OPCODE field
    constant RTYPE : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000000"; -- for ADD, SUB, AND, OR register-to-register operation

    -- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI1  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000001"; -- ADDI1 RS1,RD,INP1
    constant ITYPE_SUBI1  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000010"; -- SUBI1 RA,RB,INP1
    constant ITYPE_ANDI1  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000011"; -- ANDI1 RA,RB,INP1
    constant ITYPE_ORI1   : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000100"; -- ORI1 RA,RB,INP1
    constant ITYPE_ADDI2  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000101"; -- ADDI2 RA,RB,INP2
    constant ITYPE_SUBI2  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000110"; -- SUBI2 RA,RB,INP2
    constant ITYPE_ANDI2  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "000111"; -- ANDI2 RA,RB,INP2
    constant ITYPE_ORI2   : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001000"; -- ORI2 RA,RB,INP2
    constant ITYPE_MOV    : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001001"; -- MOV RA,RB
    constant ITYPE_S_REG1 : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001010"; -- S_REG1 RB,INP1
    constant ITYPE_S_REG2 : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001011"; -- S_REG2 RB,INP2
    constant ITYPE_S_MEM  : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001100"; -- S_MEM RA,RB,INP2
    constant ITYPE_L_MEM1 : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001101"; -- L_MEM1 RA,RB,INP1
    constant ITYPE_L_MEM2 : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := "001110"; -- L_MEM2 RA,RB,INP2

    -- Only for simulation purpose
    constant RO_HEX      : string := "./memories/ro/hex.txt";
    constant RW_HEX_INIT : string := "./memories/rw/hex_init.txt";
    constant RW_HEX      : string := "./memories/rw/hex.txt";

end myTypes;
