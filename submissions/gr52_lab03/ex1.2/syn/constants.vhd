package CONSTANTS is
    -- Register File
    constant REG_WORD_LEN : integer := 64;
    constant REG_NUM : integer := 32;
    -- WRF
    constant NUM_GLOBAL_REGISTERS : integer := 1; -- M
    constant NUM_LIO_REGISTERS : integer := 3; -- N (LOCAL/INPUT/OUTPUT REGS)
    constant NUM_WINDOWS : integer := 4; -- F
 end CONSTANTS;
 