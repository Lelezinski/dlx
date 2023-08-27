library IEEE;
use IEEE.std_logic_1164.all;

use work.myTypes.all;
use work.ALU_TYPE.all;


--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity DATAPATH is
    generic (
        -- FIXME: use constants
        IR_SIZE : integer := 32;        -- Instruction Register Size
        PC_SIZE : integer := 32         -- Program Counter Size
        );
    port (
        CLK : in std_logic;                 -- Clock
        RST : in std_logic;                 -- Reset:Active-High
        -- TODO: CW da CU, IRAM/DRAM 
    );
end entity DATAPATH;

architecture RTL of DATAPATH is

--------------------------------------------------------------------
-- Components Declaration
--------------------------------------------------------------------
    
    component REGISTER_FILE is
        generic (
            WORD_LEN : integer := REG_WORD_LEN;
            R_NUM    : integer := REG_NUM);
        port (
            CLK     : in  std_logic;
            -- Control
            RESET   : in  std_logic;
            ENABLE  : in  std_logic;
            RD1     : in  std_logic;
            RD2     : in  std_logic;
            WR      : in  std_logic;
            -- Address Lines
            ADD_WR  : in  std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
            ADD_RD1 : in  std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
            ADD_RD2 : in  std_logic_vector(integer(ceil(log2(real(R_NUM)))) - 1 downto 0);
            -- Data Lines
            DATAIN  : in  std_logic_vector((WORD_LEN - 1) downto 0);
            OUT1    : out std_logic_vector((WORD_LEN - 1) downto 0);
            OUT2    : out std_logic_vector((WORD_LEN - 1) downto 0));
    end component;

    component MUX21_GENERIC is
        generic (
            NBIT      : integer;
            DELAY_MUX : time);
        port (
            A   : in  std_logic_vector(NBIT-1 downto 0);
            B   : in  std_logic_vector(NBIT-1 downto 0);
            SEL : in  std_logic;
            Y   : out std_logic_vector(NBIT-1 downto 0));
    end component MUX21_GENERIC;

    component BOOTHMUL is
        generic (
            NBIT : integer);
        port (
            A : in  std_logic_vector(NBIT - 1 downto 0);
            B : in  std_logic_vector(NBIT - 1 downto 0);
            P : out std_logic_vector(2 * NBIT - 1 downto 0));
    end component BOOTHMUL;

    component P4_ADDER is
        generic (
            NBIT : integer);
        port (
            A   : in  std_logic_vector(NBIT - 1 downto 0);
            B   : in  std_logic_vector(NBIT - 1 downto 0);
            Cin : in  std_logic;
            S   : out std_logic_vector(NBIT - 1 downto 0);

            Cout : out std_logic);
    end component P4_ADDER;

-- TODO: altri componenti

----------------------------------------------------------------
-- Signals Declaration
----------------------------------------------------------------

-- FIXME: fix sizes

    -- [IF] STAGE
    signal IR : std_logic_vector(IR_SIZE - 1 downto 0);
    signal PC : std_logic_vector(PC_SIZE - 1 downto 0);
    signal NPC : std_logic_vector(PC_SIZE - 1 downto 0);
    --TODO: altri segnali

    
----------------------------------------------------------------
-- Processes
----------------------------------------------------------------
    
begin
    
end architecture RTL;

----------------------------------------------------------------
-- Processes
----------------------------------------------------------------

configuration CFG_DP_BEH of DATAPATH is
    for RTL
    end for;
end configuration;
