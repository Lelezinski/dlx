library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;
use work.control_words.all;

entity HAZARD_DETECTION_UNIT is
    port(
        CLK      : in std_logic;
        RST      : in std_logic;
        dp_to_hu : in dp_to_hu_t;
        cu_to_hu : in cu_to_hu_t;

        IRAM_READY : in std_logic;
        DRAM_READY : in std_logic;
        SECW  : out stage_enable_t
        );
end entity HAZARD_DETECTION_UNIT;

architecture RTL of HAZARD_DETECTION_UNIT is
    ---------------------------- SECW Pipeline
begin
    ---------------------------- SECW Pipeline
    secw_update : process(DRAM_READY, IRAM_READY, cu_to_hu.IS_B_EX,
                          cu_to_hu.IS_B_ID, cu_to_hu.IS_JUMP_EX,
                          cu_to_hu.IS_JUMP_ID, cu_to_hu.LMD_EN,
                          dp_to_hu.B_TAKEN, dp_to_hu.RS_IF, dp_to_hu.RT_ID,
                          dp_to_hu.RT_IF)
    begin
        if (IRAM_READY = '0') then -- fetch a nop if the iram is still reading
            SECW <= (
                FLUSH_IF => '1',
                PREFETCH => '0',
                FETCH    => '1',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
                );
        elsif (DRAM_READY = '0') then -- freeze the pipeline until memory, if the dram is still reading or writing
            SECW <= (
                FLUSH_IF => '0',
                PREFETCH => '0',
                FETCH    => '0',
                DECODE   => '0',
                EXECUTE  => '0',
                MEMORY   => '0',
                WB       => '1'
                );
        elsif (cu_to_hu.IS_B_EX = "01" or cu_to_hu.IS_B_EX = "10") then -- if a branch is in execute
            if (dp_to_hu.B_TAKEN = '1') then -- assume not taken, then flush IR when it is taken
                SECW <= (
                    FLUSH_IF => '1',
                    PREFETCH => '1',
                    FETCH    => '0',
                    DECODE   => '0',
                    EXECUTE  => '1',
                    MEMORY   => '1',
                    WB       => '1'
                    );
            else
                SECW <= STALL_CLEAR; -- do nothing if the branch is not taken
            end if;
        elsif (cu_to_hu.IS_JUMP_EX = '1') then -- insert a nop in IR when the jump is in execute, but load PC with target address
            SECW <= (
                FLUSH_IF => '1',
                PREFETCH => '1',
                FETCH    => '1',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        elsif ((cu_to_hu.LMD_EN = '1') and -- if the instruction is a load
            ((dp_to_hu.RT_ID = dp_to_hu.RS_IF) or (dp_to_hu.RT_ID = dp_to_hu.RT_IF))) then -- if the instruction in decode needs the loaded value, stall it in decode
            SECW <= (
                FLUSH_IF => '0',
                PREFETCH => '0',
                FETCH    => '0',
                DECODE   => '0',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        elsif (cu_to_hu.IS_B_ID = "10" or cu_to_hu.IS_B_ID = "01") then -- if a branch is decoded, continue fetching the next instruction normally (assume not-taken)
            SECW <= (
                FLUSH_IF => '0',
                PREFETCH => '1',
                FETCH    => '1',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        elsif (cu_to_hu.IS_JUMP_ID = '1') then -- if a jump is decoded, put a nop in IR and do not update the PC.
            SECW <= (
                FLUSH_IF => '1',
                PREFETCH => '0',
                FETCH    => '1',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        else
            SECW <= STALL_CLEAR; -- do not stall anything otherwise
        end if;
    end process;
end architecture RTL;
