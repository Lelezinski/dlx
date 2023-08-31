library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

use WORK.myTypes.all;
use WORK.alu_type.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity ALU is
    generic (
        N : integer := numBit
    );
    port (
        FUNC   : in alu_op_t;
        DATA1  : in std_logic_vector(N - 1 downto 0);
        DATA2  : in std_logic_vector(N - 1 downto 0);
        OUTALU : out std_logic_vector(N - 1 downto 0)
    );
end ALU;

architecture BEHAVIORAL of ALU is

    constant log2_numBit : integer := integer(ceil(log2(real(numBit))));

begin

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------

    P_ALU : process (FUNC, DATA1, DATA2)
    begin
        case FUNC is

            when ALU_ADD => -- Sum: A + B
                OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2));

            when ALU_SUB => -- Sub: A - B
                OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));

            when ALU_MUL => -- Mul: A * B (TODO: most significant half truncated)
                OUTALU <= std_logic_vector(unsigned(DATA1(N/2 - 1 downto 0)) * unsigned(DATA2(N/2 - 1 downto 0)));

            when ALU_AND => -- AND: A and B
                OUTALU <= DATA1 and DATA2;

            when ALU_OR => -- OR: A or B
                OUTALU <= DATA1 or DATA2;

            when ALU_XOR => -- XOR: A xor B
                OUTALU <= DATA1 xor DATA2;

            when ALU_SLL => -- Shift Left Logical: A << B 
                OUTALU <= std_logic_vector(unsigned(DATA1) sll to_integer(unsigned(DATA2(log2_numBit downto 0))));

            when ALU_SRL => -- Shift Right Logical: A >> B
                OUTALU <= std_logic_vector(unsigned(DATA1) srl to_integer(unsigned(DATA2(log2_numBit downto 0))));

            when ALU_SEQ => -- Set Equal: A = B ? 1 : 0
                if (DATA1 = DATA2) then
                    OUTALU <= (others => '1');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SNE => -- Set Not Equal: A != B ? 1 : 0
                if (DATA1 /= DATA2) then
                    OUTALU <= (others => '1');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SGE => -- Set Greater Than or Equal: A >= B ? 1 : 0
                if (DATA1 >= DATA2) then
                    OUTALU <= (others => '1');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SGT => -- Set Greater Than: A > B ? 1 : 0
                if (DATA1 > DATA2) then
                    OUTALU <= (others => '1');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SLE => -- Set Less Than or Equal: A <= B ? 1 : 0
                if (DATA1 <= DATA2) then
                    OUTALU    <= (others => '1');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SLT => -- Set Less Than: A < B ? 1 : 0
                if (DATA1 < DATA2) then
                    OUTALU <= (others => '1');
                else
                    OUTALU <= (others => '0');
                end if;

            when others =>
                OUTALU <= DATA1;

        end case;
    end process P_ALU;

end BEHAVIORAL;

----------------------------------------------------------------
-- Configurations
----------------------------------------------------------------

configuration CFG_ALU_BEHAVIORAL of ALU is
    for BEHAVIORAL
    end for;
end CFG_ALU_BEHAVIORAL;
