library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- use IEEE.std_logic_unsigned.all;
-- use IEEE.std_logic_arith.all;
use WORK.myTypes.all;
use WORK.alu_type.all;
use IEEE.math_real.all;                 -- for ceil and log2 functions

entity ALU is
  generic (N : integer := numBit);
  port (FUNC         : in  alu_op_t;
        DATA1, DATA2 : in  std_logic_vector(N-1 downto 0);
        OUTALU       : out std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is
  constant log2_numBit : integer := integer(ceil(log2(real(numBit))));
begin

  P_ALU : process (FUNC, DATA1, DATA2)

  begin
    case FUNC is
      when ALU_ADD => OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2));
      when ALU_SUB => OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));
      when ALU_MUL => OUTALU <= std_logic_vector(
        unsigned(DATA1(N/2-1 downto 0)) * unsigned(DATA2(N/2-1 downto 0)));
      when ALU_AND => OUTALU <= DATA1 and DATA2;  -- bitwise operations
      when ALU_OR  => OUTALU <= DATA1 or DATA2;
      when ALU_XOR => OUTALU <= DATA1 xor DATA2;
      when ALU_SLL => OUTALU <= std_logic_vector(
        unsigned(DATA1) sll to_integer(unsigned(DATA2(log2_numBit downto 0)))
        );
      when ALU_SRL => std_logic_vector(
        unsigned(DATA1) srl to_integer(unsigned(DATA2(log2_numBit downto 0)))
        );                              -- logical shift right
      when ALU_SGE => null; -- TODO implement functions;
      when ALU_SLE => null; -- TODO implement functions;
      when ALU_SNE => null; -- TODO implement functions;
      when others => null;
    end case;
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
