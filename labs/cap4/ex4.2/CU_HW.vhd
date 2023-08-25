library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity cu is
    generic (
        MICROCODE_MEM_SIZE        :   integer := 17; -- Microcode Memory Size
        FUNC_SIZE                 :   integer := 11; -- Func Field Size for R-Type Ops
        OP_CODE_SIZE              :   integer := 6;  -- Op Code Size
        -- ALU_OPC_SIZE           :   integer := 6;  -- ALU Op Code Word Size
        CW_SIZE                   :   integer := 13; -- Control Word Size
        FIRST_STAGE_SIGNALS_SIZE  :   integer := 3;
        SECOND_STAGE_SIGNALS_SIZE :   integer := 5;
        THIRD_STAGE_SIGNALS_SIZE  :   integer := 5);
    port (
        -- FIRST PIPE STAGE OUTPUTS
        EN1 : out std_logic; -- enables the register file and the pipeline registers
        RF1 : out std_logic; -- enables the read port 1 of the register file
        RF2 : out std_logic; -- enables the read port 2 of the register file
        WF1 : out std_logic; -- enables the write port of the register file
        -- SECOND PIPE STAGE OUTPUTS
        EN2  : out std_logic; -- enables the pipe registers
        S1   : out std_logic; -- input selection of the first multiplexer
        S2   : out std_logic; -- input selection of the second multiplexer
        ALU1 : out std_logic; -- alu control bit
        ALU2 : out std_logic; -- alu control bit
        -- THIRD PIPE STAGE OUTPUTS
        EN3 : out std_logic; -- enables the memory and the pipeline registers
        RM  : out std_logic; -- enables the read-out of the memory
        WM  : out std_logic; -- enables the write-in of the memory
        S3  : out std_logic; -- input selection of the multiplexer
        -- INPUTS
        OPCODE : in std_logic_vector(OP_CODE_SIZE - 1 downto 0);
        FUNC   : in std_logic_vector(FUNC_SIZE - 1 downto 0);
        CLK    : in std_logic;
        RST    : in std_logic); -- Active Low
end cu;

architecture cu_rtl of cu is
    type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
    signal cw_mem : mem_array := (
        "1111100010001",
        "0111000010001",
        "0111000110001",
        "0111001010001",
        "0111001110001",
        "1011110010001",
        "1011110110001",
        "1011111010001",
        "1011111100011",
        "1011100100011",
        "0111000010001",
        "1011110010001",
        "1101110010110",
        "0111000011010",
        "1011110011010");

    -- Control word registers
    -- cw is combinational and mantains the control word of the OPCODE at the input
    signal cw  : std_logic_vector(CW_SIZE - 1 downto 0);
    -- (Stage 1 - CC1) All the control signals of the current instruction are saved into cw1.
    signal cw1 : std_logic_vector(CW_SIZE - 1 downto 0);
    -- (Stage 2 - CC2) The control signals of the second and third stages are saved in cw2 
    signal cw2 : std_logic_vector(CW_SIZE - 1 - FIRST_STAGE_SIGNALS_SIZE downto 0); 
    -- (Stage 3 - CC3) The control signals of third stage are saved in cw3 
    signal cw3 : std_logic_vector(CW_SIZE - 1 - (FIRST_STAGE_SIGNALS_SIZE + SECOND_STAGE_SIGNALS_SIZE) downto 0);

    -- These signals are needed to avoid conflicts on the cw registers.
    signal ALU_OPCODE, ALU_OPCODE1, ALU_OPCODE2: std_logic_vector(1 downto 0) := "00";

    -- one
    signal FUNC_OP: func_t;
begin

    -- Convert the func field into enum type func_t
    FUNC_OP <= func_t'val(to_integer(unsigned(FUNC)));

    -- Assign the control signal to the outputs
    -- stage one 
    RF1                <= cw1(CW_SIZE - 1);
    RF2                <= cw1(CW_SIZE - 2);
    -- WF1                <= cw1(CW_SIZE - 3);
    EN1                <= cw1(CW_SIZE - 3);
    -- second stage
    S1                 <= cw2(CW_SIZE - 4);
    S2                 <= cw2(CW_SIZE - 5);
    ALU1               <= ALU_OPCODE2(1);
    ALU2               <= ALU_OPCODE2(0);
    EN2                <= cw2(CW_SIZE - 8);
    -- third stage
    RM                 <= cw3(CW_SIZE - 9);
    WM                 <= cw3(CW_SIZE - 10);
    EN3                <= cw3(CW_SIZE - 11);
    S3                 <= cw3(CW_SIZE - 12);
    WF1                <= cw3(CW_SIZE - 13);

    -- OPCODE is used as index of cw_mem.
    cw <= cw_mem(to_integer(unsigned(OPCODE)));

    -- process to pipeline control words
    CW_PIPE: process (clk, rst)
    begin  -- process clk
        if rst = '0' then
            cw1 <= (others => '0');
            cw2 <= (others => '0');
            cw3 <= (others => '0');
        elsif rising_edge(clk) then  -- rising clock edge
            -- shift the slice of the control word to the correct control register
            cw1 <= cw;
            cw2 <= cw1(CW_SIZE - 1 - FIRST_STAGE_SIGNALS_SIZE downto 0);
            cw3 <= cw2(CW_SIZE - 1 - (FIRST_STAGE_SIGNALS_SIZE + SECOND_STAGE_SIGNALS_SIZE) downto 0);

            ALU_OPCODE1 <= ALU_OPCODE;
            ALU_OPCODE2 <= ALU_OPCODE1;
        end if;
    end process CW_PIPE;

    -- purpose: Generation of ALU OpCode
    -- type   : combinational
    -- inputs : IR_i
    -- outputs: ALU_OPCODE
    -- ALU_OPCODE Generation (from FUNC for R-Type Instructions)
    ALU_OPCODE_P : process (OPCODE, FUNC_OP, CW)
    begin
        -- default assignment for all the instructions that are not RTYPE
        ALU_OPCODE <= CW(5) & CW(4);

        -- Because all RTYPE instructions index the same element in cw_mem, we
        -- use the FUNC field to select correctly their ALU_OPCODE.
        -- Updating directly CW(6) and CW(5) would gerenare a conflict
        if (OPCODE = RTYPE) then
            case FUNC_OP is
                when RTYPE_ADD =>
                    ALU_OPCODE <= "00";
                when RTYPE_SUB =>
                    ALU_OPCODE <= "01";
                when RTYPE_AND =>
                    ALU_OPCODE <= "10";
                when RTYPE_OR  =>
                    ALU_OPCODE <= "11";
                when others =>
                    ALU_OPCODE <= "00";
            end case;
        end if;
    end process ALU_OPCODE_P;
end cu_rtl;
