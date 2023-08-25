package CONSTANTS is
    -- Register File
    constant REG_WORD_LEN : integer := 8;
    constant REG_NUM : integer := 8;
    -- WRF (Assuming everything is a power of 2)
    constant NUM_GLOBAL_REGISTERS : integer := 4; -- M
    constant NUM_LIO_REGISTERS : integer := 4; -- N (LOCAL/INPUT/OUTPUT REGS)
    constant NUM_WINDOWS : integer := 4; -- F
 end CONSTANTS;
 