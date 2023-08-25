library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.all;
use myTypes.all;

entity cu is
    generic (
        INSTRUCTION_CC : integer := C_INSTRUCTION_CC; -- Instructions Execution Clock Cycles (#n of stages)
        UCODE_MEM_SIZE : integer := C_UCODE_MEM_SIZE; -- Microcode Memory Size
        RELOC_MEM_SIZE : integer := C_RELOC_MEM_SIZE; -- Microcode Relocation Memory Size
        IR_SIZE        : integer := C_IR_SIZE;        -- Instruction Register Size 
        OP_CODE_SIZE   : integer := C_OP_CODE_SIZE;   -- Op Code Size
        FUNC_SIZE      : integer := C_FUNC_SIZE;      -- Func Field Size for R-Type Ops
        CW_SIZE        : integer := C_CW_SIZE         -- Control Word Size
    );
    port (
        -- FIRST DP STAGE OUTPUTS
        EN1 : out std_logic; -- enables the register file and the pipeline registers
        RF1 : out std_logic; -- enables the read port 1 of the register file
        RF2 : out std_logic; -- enables the read port 2 of the register file
        WF1 : out std_logic; -- enables the write port of the register file
        -- SECOND DP STAGE OUTPUTS
        EN2  : out std_logic; -- enables the pipe registers
        S1   : out std_logic; -- input selection of the first multiplexer
        S2   : out std_logic; -- input selection of the second multiplexer
        ALU1 : out std_logic; -- alu control bit
        ALU2 : out std_logic; -- alu control bit
        -- THIRD DP STAGE OUTPUTS
        EN3 : out std_logic; -- enables the memory and the pipeline registers
        RM  : out std_logic; -- enables the read-out of the memory
        WM  : out std_logic; -- enables the write-in of the memory
        S3  : out std_logic; -- input selection of the multiplexer
        -- INPUTS
        OPCODE : in std_logic_vector(OP_CODE_SIZE - 1 downto 0);
        FUNC   : in std_logic_vector(FUNC_SIZE - 1 downto 0);
        Clk    : in std_logic;
        Rst    : in std_logic -- Active Low
    );

end cu;

architecture dlx_cu_rtl of cu is

    -- Types
    type mem_array is array (integer range 0 to UCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
    type reloc_mem_array is array (integer range 0 to RELOC_MEM_SIZE - 1) of unsigned(OP_CODE_SIZE + 1 downto 0);

    -- Internal Registers
    signal CW           : std_logic_vector(CW_SIZE - 1 downto 0);
    signal uPC          : integer range 0 to (UCODE_MEM_SIZE);
    signal CC           : integer range 0 to (INSTRUCTION_CC);
    signal OPCODE_RELOC : unsigned(OP_CODE_SIZE + 1 downto 0);
    signal FUNC_OP      : func_t;
    signal ALU_OPCODE   : std_logic_vector(1 downto 0);

    -- Relocation Memory
    --  Used to translate the OPCODE/FUNC of the instruction into the starting
    --  address of the correspondent first-stage CW inside the CW memory
    signal reloc_mem : reloc_mem_array :=
    (
    x"01", -- R-Type offset (to account for RESET)

    x"04", -- ADDI1
    x"07", -- SUBI1
    x"0A", -- ANDI1
    x"0D", -- ORI1

    x"10", -- ADDI2
    x"13", -- SUBI2
    x"16", -- ANDI2
    x"19", -- ORI2

    x"1C", -- MOV

    x"1F", -- S_REG1
    x"22", -- S_REG2
    x"25", -- S_MEM

    x"28", -- L_MEM1
    x"2B"  -- L_MEM2
    );

    -- Microcode Memory
    --  Used to store the CW ordered in N stages for each of M instructions
    --  RRWE'SSAAE'RWES: same signal order of the datapath shown in the lab pdf
    signal microcode : mem_array :=
    (
    "0000000000000", -- [0x00] RESET

    -- R-Type
    "1101000000000", -- [0x01] R-TYPE (ID)
    "0001100010000", -- [0x02] R-TYPE (EX)
    "0010000010001", -- [0x03] R-TYPE (ME)

    -- IMM1
    "0101000000000", -- [0x04] ADDI1 (ID)
    "0001000010000", -- [0x05] ADDI1 (EX)
    "0010000010001", -- [0x06] ADDI1 (ME)

    "0101000000000", -- [0x07] SUBI1 (ID)
    "0001000110000", -- [0x08] SUBI1 (EX)
    "0010000010001", -- [0x09] SUBI1 (ME)

    "0101000000000", -- [0x0A] ANDI1 (ID)
    "0001001010000", -- [0x0B] ANDI1 (EX)
    "0010000010001", -- [0x0C] ANDI1 (ME)

    "0101000000000", -- [0x0D] ORI1 (ID)
    "0001001110000", -- [0x0E] ORI1 (EX)
    "0010000010001", -- [0x0F] ORI1 (ME)

    -- IMM2
    "1001000000000", -- [0x10] ADDI2 (ID)
    "0001110010000", -- [0x11] ADDI2 (EX)
    "0010000010001", -- [0x12] ADDI2 (ME)

    "1001000000000", -- [0x13] SUBI2 (ID)
    "0001110110000", -- [0x14] SUBI2 (EX)
    "0010000010001", -- [0x15] SUBI2 (ME)

    "1001000000000", -- [0x16] ANDI2 (ID)
    "0001111010000", -- [0x17] ANDI2 (EX)
    "0010000010001", -- [0x18] ANDI2 (ME)

    "1001000000000", -- [0x19] ORI2 (ID)
    "0001111110000", -- [0x1A] ORI2 (EX)
    "0010000010001", -- [0x1B] ORI2 (ME)

    -- Move
    "1001000000000", -- [0x1C] MOV (ID)
    "0001110010000", -- [0x1D] MOV (EX)
    "0010000010001", -- [0x1E] MOV (ME)

    -- Store
    "0101000000000", -- [0x1F] S_REG1 (ID)
    "0001000010000", -- [0x20] S_REG1 (EX)
    "0010000010001", -- [0x21] S_REG1 (ME)

    "1001000000000", -- [0x22] S_REG2 (ID)
    "0001110010000", -- [0x23] S_REG2 (EX)
    "0010000010001", -- [0x24] S_REG2 (ME)

    "1101000000000", -- [0x25] S_MEM (ID)
    "0001110010000", -- [0x26] S_MEM (EX)
    "0000000010110", -- [0x27] S_MEM (ME)

    -- Load
    "0101000000000", -- [0x28] L_MEM1 (ID)
    "0001000010000", -- [0x29] L_MEM1 (EX)
    "0010000011010", -- [0x2A] L_MEM1 (ME)

    "1001000000000", -- [0x2B] L_MEM2 (ID)
    "0001110010000", -- [0x2C] L_MEM2 (EX)
    "0010000011010"  -- [0x2D] L_MEM2 (ME)
    );

begin

    -- Control Word
    CW   <= microcode(uPC);
    RF1  <= CW(CW_SIZE - 01);
    RF2  <= CW(CW_SIZE - 02);
    WF1  <= CW(CW_SIZE - 03);
    EN1  <= CW(CW_SIZE - 04);
    S1   <= CW(CW_SIZE - 05);
    S2   <= CW(CW_SIZE - 06);
    ALU1 <= ALU_OPCODE(1);
    ALU2 <= ALU_OPCODE(0);
    EN2  <= CW(CW_SIZE - 09);
    RM   <= CW(CW_SIZE - 10);
    WM   <= CW(CW_SIZE - 11);
    EN3  <= CW(CW_SIZE - 12);
    S3   <= CW(CW_SIZE - 13);

    -- Internal Registers
    OPCODE_RELOC <= reloc_mem(to_integer(unsigned(OPCODE)));
    FUNC_OP      <= func_t'val(to_integer(unsigned(FUNC))); -- To use constants

    -- ALU_OPCODE Generation (from FUNC for R-Type Instructions)
    ALU_OPCODE_P : process (OPCODE, FUNC_OP, CW, CC)
    begin
        if (OPCODE = RTYPE) and (CC = 2) then
            -- R-Type Instructions: taken from FUNC
            case (FUNC_OP) is
                when RTYPE_ADD =>
                    ALU_OPCODE <= "00";
                when RTYPE_SUB =>
                    ALU_OPCODE <= "01";
                when RTYPE_AND =>
                    ALU_OPCODE <= "10";
                when RTYPE_OR =>
                    ALU_OPCODE <= "11";
                when others =>
                    ALU_OPCODE <= "00";
            end case;

        else
            -- I-Type Instructions: taken from CW
            ALU_OPCODE <= CW(CW_SIZE - 07) & CW(CW_SIZE - 08);
        end if;
    end process ALU_OPCODE_P;

    -- uPC Update
    uPC_P : process (Clk, Rst)
    begin
        if (Rst = '0') then
            -- Active-Low Async Reset
            uPC <= 0;
            CC  <= 0;

        elsif rising_edge(Clk) then
            -- Sequential uPC Update
            case CC is

                when 0 =>
                    -- Reset
                    uPC <= to_integer(OPCODE_RELOC);
                    CC  <= CC + 1;

                when 1 =>
                    -- ID Stage
                    CC  <= CC + 1;
                    uPC <= uPC + 1;

                when 2 =>
                    -- EX Stage
                    CC  <= CC + 1;
                    uPC <= uPC + 1;

                when 3 =>
                    -- MEM Stage
                    CC  <= 1;
                    uPC <= to_integer(OPCODE_RELOC);

                when others =>
                    CC  <= 0;
                    uPC <= 0;

            end case;
        end if;
    end process uPC_P;

end dlx_cu_rtl;
