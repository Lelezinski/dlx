package CONSTANTS is
   constant IVDELAY : time := 0 ns; --0.1 ns;
   constant NDDELAY : time := 0 ns; -- 0.2 ns;
   constant NDDELAYRISE : time := 0 ns; -- 0.6 ns;
   constant NDDELAYFALL : time := 0 ns; -- 0.4 ns;
   constant NRDELAY : time := 0 ns; -- 0.2 ns;
   constant DRCAS : time := 0 ns; -- 1
   constant DRCAC : time := 0 ns; -- 2
   constant numBit : integer := 32;
   constant TP_MUX : time := 0 ns;
   constant CARRY_SELECT_NBIT : integer := 4; -- how many bits generate a carry
   constant SUM_GENERATOR_NBLOCKS : integer := numBit/CARRY_SELECT_NBIT; -- numBit / CARRY_SELECT_NBIT
end CONSTANTS;
