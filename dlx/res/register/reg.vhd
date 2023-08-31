library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use WORK.myTypes.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity REG is
    generic (
        DATA_WIDTH : integer := REG_WORD_LEN
        RST_VALUE  : std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => '0')
    );
    port (
        CLK : in std_logic;
        -- Control
        RST    : in std_logic; -- Active-Low
        ENABLE : in std_logic;
        -- Data Lines
        DATA_IN  : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        DATA_OUT : out std_logic_vector((DATA_WIDTH - 1) downto 0)
    );
end REG;

architecture BEHAVIOURAL of REG is

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    signal reg_memory : std_logic_vector();

    ----------------------------------------------------------------
    -- Signals Assignment
    ----------------------------------------------------------------

    DATA_OUT <= reg_memory;

begin

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------

    REG_P : process (CLK, RST)
    begin
        if RST = '0' then
            reg_memory <= RST_VALUE;

        elsif falling_edge(CLK) then
            if ENABLE = '1' then
                reg_memory <= DATA_IN;
            else
                reg_memory <= reg_memory;
            end if;
        end if;
    end process REG_P;

end BEHAVIOURAL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_REG_BEH of REG is
    for BEHAVIOURAL
    end for;
end configuration;
