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
    signal SECW0, SECW0_default, SECW0_s, SECW1, SECW1_s, SECW2, SECW3, SECW4, SECW5 : stage_enable_t;
begin

    ---------------------------- SECW Pipeline
    SECW0_default <= (WB       => SECW0.MEMORY and SECW1.WB,
                      MEMORY   => SECW0.EXECUTE and SECW1.MEMORY,
                      EXECUTE  => SECW0.DECODE and SECW1.EXECUTE,
                      DECODE   => SECW0.FETCH and SECW1.DECODE,
                      FETCH    => SECW0.PREFETCH and SECW1.FETCH,
                      PREFETCH => '1' and SECW1.PREFETCH);

    SECW <= SECW0_s;

    stall <= SECW0_s.FETCH;

    ---------------------------- SECW Pipeline
    -- Stall generation process
    STALLS_P : process (CLK, RST)
    begin
        if RST = '1' then
            SECW0 <= STALL_CLEAR;
            SECW1 <= STALL_CLEAR;
            SECW2 <= STALL_CLEAR;
            SECW3 <= STALL_CLEAR;
            SECW4 <= STALL_CLEAR;
            SECW5 <= STALL_CLEAR;

        elsif rising_edge(clk) then
            -- Pipeline Update
            SECW0 <= SECW0_s;
            SECW1 <= SECW1_s;
            SECW2 <= SECW3;
            SECW3 <= SECW4;
            SECW4 <= SECW5;
            SECW5 <= STALL_CLEAR;
        end if;
    end process STALLS_P;

    secw_update: process(cu_to_hu.IS_JUMP, cu_to_hu.LMD_EN, SECW0_default)
    begin
        -- SECW <= STALL_CLEAR;
        SECW0_s <= SECW0_default;
        SECW1_s <= SECW2;

        if ((cu_to_hu.LMD_EN = '1') and
            ((dp_to_hu.RT_ID = dp_to_hu.RS_IF) or (dp_to_hu.RT_ID = dp_to_hu.RT_IF))) then
            SECW0_s <= insert_stall(SECW0_default, STALL_DECODE);
        elsif (cu_to_hu.IS_JUMP = '1') then
            SECW0_s <= insert_stall(SECW0_default, STALL_FETCH);
            SECW1_s <= insert_stall(SECW2, STALL_FETCH);
        end if;
    end process;
end architecture RTL;
