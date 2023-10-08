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

        stall : out std_logic;
        SECW  : out stage_enable_t
        );
end entity HAZARD_DETECTION_UNIT;

architecture RTL of HAZARD_DETECTION_UNIT is
    ---------------------------- SECW Pipeline
begin
    ---------------------------- SECW Pipeline
    secw_update : process(cu_to_hu.IS_JUMP_ID, cu_to_hu.LMD_EN, dp_to_hu.RS_IF,
                          dp_to_hu.RT_ID, dp_to_hu.RT_IF)
    begin
        if ((cu_to_hu.LMD_EN = '1') and
            ((dp_to_hu.RT_ID = dp_to_hu.RS_IF) or (dp_to_hu.RT_ID = dp_to_hu.RT_IF))) then
            SECW <= (
                FLUSH_IF => '0',
                PREFETCH => '0',
                FETCH    => '0',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        elsif (cu_to_hu.IS_JUMP_ID = '1') then
            SECW <= (
                FLUSH_IF => '1',
                PREFETCH => '0',
                FETCH    => '1',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        elsif (cu_to_hu.IS_JUMP_EX = '1') then
            SECW <= (
                FLUSH_IF => '1',
                PREFETCH => '1',
                FETCH    => '0',
                DECODE   => '1',
                EXECUTE  => '1',
                MEMORY   => '1',
                WB       => '1'
            );
        else
            SECW <= STALL_CLEAR;
        end if;
    end process;
end architecture RTL;
