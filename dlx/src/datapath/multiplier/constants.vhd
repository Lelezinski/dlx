package CONSTANTS is
   -- DELAYS
   constant IVDELAY : time := 0 ns; --0.1 ns;
   constant NDDELAY : time := 0 ns; -- 0.2 ns;
   constant NDDELAYRISE : time := 0 ns; -- 0.6 ns;
   constant NDDELAYFALL : time := 0 ns; -- 0.4 ns;
   constant NRDELAY : time := 0 ns; -- 0.2 ns;
   constant DRCAS : time := 0 ns; -- 1
   constant DRCAC : time := 0 ns; -- 2
   constant TP_MUX : time := 0 ns;

   -- NUMBIT
   constant numBit : integer := 8;
   constant NUMBIT_MUL : integer := 32;
end CONSTANTS;
