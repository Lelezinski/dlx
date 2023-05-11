library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.all;

entity dlx_cu is
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
        Rst    : in std_logic; -- Active Low
    );

end dlx_cu;

architecture dlx_cu_rtl of dlx_cu is

    -- Types
    type mem_array is array (0 to UCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
    type reloc_mem_array is array (0 to RELOC_MEM_SIZE - 1) of unsigned(OP_CODE_SIZE + 1 downto 0);

    -- Relocation Memory:
    --  Used to translate the OPCODE/FUNC of the instruction into the starting
    --  address of the correspondent first-stage CW inside the CW memory

    signal reloc_mem : reloc_mem_array := (
        X"00", -- All R-Type Instructions are not Relocated                                               
        X"00",
        X"02", -- J(0x02) -> 0x02
        X"00",
        X"08", -- BEQZ(0x04) -> 0x08
        X"00",
        X"00"
        ...
    );

    -- Microcode Memory:
    --  Used to store the CW ordered in N stages for each of M instructions

    signal microcode : mem_array := (
        "000000000000000", -- RESET
        "110000000000000", -- (IF)
        "001010110000000", -- (ID) 'J' (0x02)
        "000000111000100", -- (EX)
        "000000000000101", -- (MEM)
        "000000000000000", -- (WB)
        "000000000000000",
        "000000000000000",
        "000000000000000", -- (ID) 'BEQZ' (0x04)
        "000000000000000", -- (EX)
        "000000000000000", -- (MEM)
        "000000000000000", -- (WB)
        "000000000000000"
        ...
    );

    -- FIXME: SIZES
    signal CW           : std_logic_vector(CW_SIZE - 1 downto 0);
    signal uPC          : integer range 0 to 131072;
    signal ICount       : integer range 0 to INSTRUCTIONS_EXECUTION_CYCLES;
    signal OpCode       : unsigned(OP_CODE_SIZE - 1 downto 0);
    signal OpCode_Reloc : unsigned(OP_CODE_SIZE + 1 downto 0);
    signal func         : unsigned(FUNC_SIZE - 1 downto 0);

begin

    -- Control Word
    CW   <= microcode(uPC);
    RF1  <= CW(CW_SIZE - 01);
    RF2  <= CW(CW_SIZE - 02);
    WF1  <= CW(CW_SIZE - 03);
    EN1  <= CW(CW_SIZE - 04);
    S1   <= CW(CW_SIZE - 05);
    S2   <= CW(CW_SIZE - 06);
    ALU1 <= CW(CW_SIZE - 07);
    ALU2 <= CW(CW_SIZE - 08);
    EN2  <= CW(CW_SIZE - 09);
    RM   <= CW(CW_SIZE - 10);
    WM   <= CW(CW_SIZE - 11);
    EN3  <= CW(CW_SIZE - 12);
    S3   <= CW(CW_SIZE - 13);

    -- FIXME:

    OpCode       <= unsigned(IR_IN(IR_SIZE - 1 downto 26));
    OpCode_Reloc <= reloc_mem(conv_integer(OpCode));
    func         <= unsigned(IR_IN(FUNC_SIZE - 3 downto 0)) & "00"; -- Multiply func value by 4 (Shift left)

    -- FIXME: ALU1 and ALU2 generation (from FUNC for R-Type Instructions)
    ALU_OP_CODE_P : process (OpCode, func)
    begin
        ALU_OPCODE <= (others => '0');
        if (OpCode = R_OPCODE) then        -- R-Type Instructions
            if (conv_integer(func) = 128) then -- ADD
                ALU_OPCODE <= "01";
            elsif (conv_integer(func) = 136) then
                ALU_OPCODE <= "10"; -- SUB
            end if;
        end if;
    end process ALU_OP_CODE_P;

    -- FIXME: uPC Update
    uPC_Proc : process (Clk, Rst)
    begin
        -- Active-Low Async Reset
        if (Rst = '0') then
            uPC    <= 0;
            ICount <= 0;

        -- Sequential uPC Update
        elsif rising_edge(Clk) then
            if (ICount < 1) then
                uPC    <= 1;
                ICount <= ICount + 1;

            elsif (ICount < 2) then
                -- Check if relocation is needed
                if (OpCode = R_OPCODE) then
                    uPC <= conv_integer(func);
                else
                    uPC <= conv_integer(OpCode_Reloc);
                end if;
                ICount <= ICount + 1;

            elsif (ICount < INSTRUCTION_CC) then
                upc    <= upc + 1;
                ICount <= ICount + 1;

            else
                ICount <= 1;
                uPC    <= 1;

            end if;
        end if;
    end process uPC_Proc;

end dlx_cu_rtl;
