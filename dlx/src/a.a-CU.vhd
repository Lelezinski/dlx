library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;
use work.ALU_TYPE.all;
use work.control_words.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity CU is
    generic (
        -- FIXME: use constants
        MICROCODE_MEM_SIZE        : integer := 15;  -- Microcode Memory Size
        FUNC_SIZE                 : integer := 11;  -- Func Field Size for R-Type Ops
        OP_CODE_SIZE              : integer := 6;   -- Op Code Size
        -- ALU_OPC_SIZE           :   integer := 6;  -- ALU Op Code Word Size
        CW_SIZE                   : integer := 23);  -- Control Word Size
    port (
        cw    : out cw_t;  -- control word for datapath and memories
        in_cw : in  cw_from_mem; -- input signals coming from datapath and memories

        -- Inputs
        OPCODE : in  opcode_t;
        FUNC   : in  func_t;
        CLK    : in  std_logic;
        RST    : in  std_logic);          -- Active Low
end CU;

architecture RTL of CU is

----------------------------------------------------------------
-- Signals Declaration
----------------------------------------------------------------

    type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
    signal cw_mem : mem_array := (
        -- TODO define the actual control words
        "11111000100010000000000",
        "01110000100010000000000",
        "01110001100010000000000",
        "01110010100010000000000",
        "01110011100010000000000",
        "10111100100010000000000",
        "10111101100010000000000",
        "10111110100010000000000",
        "10111111100010000000000",
        "10111100100010000000000",
        "00000000000000000000000",                -- TODO
        "00000000000000000000000",                -- TODO
        "11011100101100000000000",
        "01110000110100000000000",
        "10111100110100000000000");

    signal cw_s, cw1, cw2, cw3, cw4, cw5 : cw_t;

    -- These signals are needed to avoid conflicts on the cw registers.
    signal ALU_OPCODE, ALU_OPCODE1, ALU_OPCODE2, ALU_OPCODE3 : alu_op_t;

    -- one
    signal FUNC_OP : func_t;
begin

----------------------------------------------------------------
-- Signals Assignment
----------------------------------------------------------------

    -- Convert the func field into enum type func_t
    FUNC_OP <= FUNC;

    -- OPCODE is used as index of cw_mem.
    -- get the complete control word of the current instruction
    cw_s <= to_cw(cw_mem(to_integer(unsigned(OPCODE))));

    -- -- Assign the control signals to the outputs
    cw <= (cw1.fetch, cw2.decode, cw3.execute, cw4.memory, cw5.wb);
    cw.execute.ALU_OP <= ALU_OPCODE2;

----------------------------------------------------------------
-- Processes
----------------------------------------------------------------

    -- process to pipeline control words
    CW_PIPE : process (clk, rst)
    begin  -- process clk
        if rst = '0' then
            cw1 <= init_cw;
            cw2 <= init_cw;
            cw3 <= init_cw;
            cw4 <= init_cw;
            cw5 <= init_cw;
        elsif rising_edge(clk) then     -- rising clock edge
            -- shift the slice of the control word to the correct control register
            cw1 <= cw_s;
            cw2 <= cw1;
            cw3 <= cw2;
            cw4 <= cw5;
            ALU_OPCODE1 <= ALU_OPCODE;
            ALU_OPCODE2 <= ALU_OPCODE1;
            ALU_OPCODE3 <= ALU_OPCODE2;
        end if;
    end process CW_PIPE;

    -- purpose: Generation of ALU OpCode
    -- type   : combinational
    -- inputs : IR_i
    -- outputs: ALU_OPCODE
    -- ALU_OPCODE Generation (from FUNC for R-Type Instructions)
    ALU_OPCODE_P : process (OPCODE, FUNC_OP, cw_s)
    begin
        -- default assignment for all the instructions that are not RTYPE
        ALU_OPCODE <= cw_s.execute.ALU_OP;

        -- Because all RTYPE instructions index the same element in cw_mem, we
        -- use the FUNC field to select correctly their ALU_OPCODE.
        -- Updating directly CW(6) and CW(5) would gerenare a conflict
        if (OPCODE = RTYPE) then
            case FUNC_OP is
                when func_add =>
                    ALU_OPCODE <= alu_add;
                when func_sub =>
                    ALU_OPCODE <= alu_sub;
                when func_and =>
                    ALU_OPCODE <= alu_and;
                when func_or =>
                    ALU_OPCODE <= alu_or;
                when func_xor =>
                    ALU_OPCODE <= alu_xor;
                when func_sll =>
                    ALU_OPCODE <= alu_sll;
                when func_srl =>
                    ALU_OPCODE <= alu_srl;
                when func_sge =>
                    ALU_OPCODE <= alu_sge;
                when func_sle =>
                    ALU_OPCODE <= alu_sle;
                when func_sne =>
                    ALU_OPCODE <= alu_sne;
                when func_mul =>
                    ALU_OPCODE <= alu_mul;
                when others   =>
                    ALU_OPCODE <= alu_add;
            end case;
        end if;
    end process ALU_OPCODE_P;
end RTL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_CU_BEH of CU is
    for RTL
    end for;
end configuration;
