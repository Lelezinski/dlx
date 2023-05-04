library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.constants.all;

entity WINDOWED_REGISTER_FILE is
    generic (
        WORD_LEN : integer := REG_WORD_LEN;
        M : integer := NUM_GLOBAL_REGISTERS; -- Number of Global Registers
        N : integer := NUM_LIO_REGISTERS; -- Number of IN/OUT/LOCAL Registers
        F : integer := NUM_WINDOWS -- Number of Windows
    );
    port (
        CLK : in std_logic;
        -- Control
        RESET : in std_logic;
        ENABLE : in std_logic;
        RD1 : in std_logic;
        RD2 : in std_logic;
        WR : in std_logic;
        -- Address Lines
        ADD_WR : in std_logic_vector(integer(ceil(log2(real((3 * N) + M)))) - 1 downto 0);
        ADD_RD1 : in std_logic_vector(integer(ceil(log2(real((3 * N) + M)))) - 1 downto 0);
        ADD_RD2 : in std_logic_vector(integer(ceil(log2(real((3 * N) + M)))) - 1 downto 0);
        -- Data Lines
        DATAIN : in std_logic_vector((WORD_LEN - 1) downto 0);
        OUT1 : out std_logic_vector((WORD_LEN - 1) downto 0);
        OUT2 : out std_logic_vector((WORD_LEN - 1) downto 0);
        -- Windowed Version Signals
        CALL : in std_logic;
        RET : in std_logic;
        FILL : out std_logic;
        SPILL : out std_logic;
        -- Memory Bus
        FROM_MEM : in std_logic_vector((WORD_LEN - 1) downto 0); -- TODO: forse DATAIN/DATAOUT bastano
        TO_MEM : out std_logic_vector((WORD_LEN - 1) downto 0) -- TODO: forse DATAIN/DATAOUT bastano
        -- MEM_ACK : in std_logic -- TODO: USARLO?
    );
end WINDOWED_REGISTER_FILE;

architecture BEHAVIORAL of WINDOWED_REGISTER_FILE is
    -- Constants
    constant REGS_NUMB : integer := ((N * 2) * F + M);
    constant MAX_CWP : integer := ((N * 2) * F); -- TODO: CHANGE TO (F) AND ( +1/-1, LSL log2(2N) ) EACH TIME
    constant MAX_SWP : integer := ((N * 2) * F);
    constant NBIT_REGS : integer := integer(ceil(log2(real(N * 2))));

    -- Register Array
    subtype REG_ADDR is natural range 0 to (REGS_NUMB - 1); -- Total WFR Addressable Space
    type REG_ARRAY is array(REG_ADDR) of std_logic_vector((WORD_LEN - 1) downto 0);
    signal REGISTERS, NEXT_REGISTERS : REG_ARRAY;
    -- Internal Counters to keep track of call/return number
    --  if they are zero, SPILL/FILL signals are risen
    signal CANSAVE, NEXT_CANSAVE, CANRESTORE, NEXT_CANRESTORE : unsigned(integer(ceil(log2(real(F)))) - 1 downto 0);
    signal CWP, NEXT_CWP : unsigned(integer(ceil(log2(real(MAX_CWP)))) - 1 downto 0); -- TODO: CHANGE TO (F) AND ( +1/-1, LSL log2(2N) ) EACH TIME
    signal SWP, NEXT_SWP : unsigned(integer(ceil(log2(real(MAX_SWP)))) - 1 downto 0);
    -- FSM
    type STATE_T is (NORMAL, SPILLING, FILLING);
    signal STATE, NEXT_STATE : STATE_T;
begin

    syncProc : process (clk)
    begin
        if rising_edge(clk) then
            if RESET = '1' then
                STATE <= NORMAL;

                REGISTERS <= (others => (others => '0'));
                CWP <= (others => '0');
                SWP <= (others => '0');
                CANSAVE <= to_unsigned(NUM_WINDOWS - 1, CANSAVE'length);
                CANRESTORE <= to_unsigned(NUM_WINDOWS - 1, CANRESTORE'length);
            else
                STATE <= NEXT_STATE;

                REGISTERS <= NEXT_REGISTERS;
                CWP <= NEXT_CWP;
                SWP <= NEXT_SWP;
                CANSAVE <= NEXT_CANSAVE;
                CANRESTORE <= NEXT_CANRESTORE;
            end if;
        end if;
    end process syncProc;

    combLogic : process (RD1, RD2, WR, ADD_RD1, ADD_RD2, ADD_WR, DATAIN, FROM_MEM,
        REGISTERS, ENABLE, STATE, CALL, RET, CWP, SWP, CANSAVE, CANRESTORE)
    begin
        -- Default Assignments
        -- Outputs
        SPILL <= '0';
        FILL <= '0';

        -- Internal registers
        NEXT_CANRESTORE <= CANRESTORE;
        NEXT_CANSAVE <= CANSAVE;

        NEXT_CWP <= CWP;
        NEXT_SWP <= SWP;

        NEXT_STATE <= STATE;

        NEXT_REGISTERS <= REGISTERS;

        -- FSM Logic
        case STATE is
            when NORMAL =>
                NEXT_STATE <= NORMAL;

                if ENABLE = '1' then 
                    if CALL = '1' then
                        if CANSAVE = 0 then
                            -- Spill to Memory
                            NEXT_SWP <= (SWP + 1);
                            NEXT_STATE <= SPILLING;
                        else
                            -- Update CWP
                            NEXT_CWP <= ((CWP) + (2 * N));
                            -- Save
                            NEXT_CANSAVE <= CANSAVE - 1;
                            NEXT_CANRESTORE <= CANRESTORE + 1;
                        end if;
                    elsif RET = '1' then
                        if CANRESTORE = 0 then
                            -- Fill from Memory
                            NEXT_SWP <= (SWP - 1);
                            NEXT_STATE <= FILLING;
                        else
                            -- Restore
                            NEXT_CWP <= ((CWP) - (2 * N));
                            NEXT_CANSAVE <= CANSAVE + 1;
                            NEXT_CANRESTORE <= CANRESTORE - 1;
                        end if;
                    else
                        -- reading 1 
                        if RD1 = '1' then
                            if unsigned(ADD_RD1) < (3 * N) then
                                -- I/O/L Area: simple CWP offset
                                OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1) + CWP));
                            else
                                -- Globals Area: end of RF
                                OUT1 <= REGISTERS(REGS_NUMB - M + to_integer(unsigned(ADD_RD1)) - (3 * N));
                            end if;
                        end if;

                        -- reading 2
                        if RD2 = '1' then
                            if unsigned(ADD_RD2) < (3 * N) then
                                -- I/O/L Area: simple CWP offset
                                OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2) + CWP));
                            else
                                -- Globals Area: end of RF
                                OUT2 <= REGISTERS(REGS_NUMB - M + to_integer(unsigned(ADD_RD2)) - (3 * N));
                            end if;
                        end if;

                        -- writing
                        if  WR = '1' then
                            if unsigned(ADD_WR) < (3 * N) then
                                -- I/O/L Area: simple CWP offset
                                NEXT_REGISTERS(to_integer(unsigned(ADD_WR) + CWP)) <= DATAIN;
                            else
                                -- Globals Area: end of RF
                                NEXT_REGISTERS(REGS_NUMB - M + to_integer(unsigned(ADD_WR)) - (3 * N)) <= DATAIN;
                            end if;
                        end if;
                    end if;
                end if;

            when SPILLING =>
                SPILL <= '1';
                TO_MEM <= REGISTERS(to_integer(SWP) - 1); -- To align SWP

                if SWP((NBIT_REGS - 1) downto 0) = 0 then
                    -- Spilling Done, SWP is now +2N
                    NEXT_CWP <= ((CWP) + (2 * N));
                    NEXT_STATE <= NORMAL;
                else 
                    NEXT_SWP <= (SWP + 1);
                    NEXT_STATE <= SPILLING;
                end if;

            when FILLING =>
                FILL <= '1';
                NEXT_REGISTERS(to_integer(SWP)) <= FROM_MEM;

                if SWP((NBIT_REGS - 1) downto 0) = 0 then
                    -- Filling Done, SWP is now -2N
                    NEXT_CWP <= ((CWP) - (2 * N));
                    NEXT_STATE <= NORMAL;
                else 
                    NEXT_SWP <= (SWP - 1);
                    NEXT_STATE <= FILLING;
                end if;
            when others =>
                NEXT_STATE <= NORMAL;
        end case;

    end process combLogic;
end BEHAVIORAL;

configuration CFG_RF_BEH of WINDOWED_REGISTER_FILE is
    for BEHAVIORAL
    end for;
end configuration;
