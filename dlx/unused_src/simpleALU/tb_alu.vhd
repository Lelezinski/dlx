library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- USE IEEE.std_logic_unsigned.all;
-- use IEEE.std_logic_arith.all;
use WORK.myTypes.all;
use WORK.alu_type.all;

entity TBALU is
end TBALU;

architecture TEST of TBALU is
    constant NBIT    : integer := numBit;
    signal FUNC_CODE : TYPE_OP := ADD;
    signal OP1       : std_logic_vector(NBIT-1 downto 0);
    signal OP2       : std_logic_vector(NBIT-1 downto 0);
    signal RESULT    : std_logic_vector(NBIT-1 downto 0);

    component ALU
        generic (N : integer := numBit);
        port (FUNC         : in  TYPE_OP;
              DATA1, DATA2 : in  std_logic_vector(N-1 downto 0);
              OUTALU       : out std_logic_vector(N-1 downto 0));
    end component;

begin

    U1 : ALU
        generic map (NBIT)
        port map (FUNC_CODE, OP1, OP2, RESULT);


--  OP1 <= ('0',others => '1') after 0.5 ns, ('1',others => '0') after 3 ns,('0','0','0',others => '1') after 6 ns,('0',others => '1')
--  after 9 ns,('1',others => '0') after 12 ns,('0','0','0',others => '1') after 15 ns;

--  OP2 <= ('0',others => '1') after 0.5 ns, ('1',others => '0') after 3 ns,('0','0','0',others => '1') after 6 ns,('0',others => '1')
--  after 9 ns,('1',others => '0') after 12 ns,('0','0','0',others => '1') after 15 ns;

    OP1       <= "0000000000110101";
    OP2       <= "0000000000010110";
    FUNC_CODE <= ADD after 2 ns,
                 SUB     after 4 ns,
                 MULT    after 6 ns,
                 BITAND  after 8 ns,
                 BITOR   after 10 ns,
                 BITXOR  after 12 ns,
                 FUNCRL  after 14 ns,
                 FUNCRR  after 16 ns,
                 FUNCLSL after 18 ns,
                 FUNCLSR after 20 ns;


end TEST;

configuration ALU_TEST of TBALU is
    for TEST
        for U1 : ALU
            use configuration WORK.CFG_ALU_BEHAVIORAL;
        end for;

    end for;
end ALU_TEST;
