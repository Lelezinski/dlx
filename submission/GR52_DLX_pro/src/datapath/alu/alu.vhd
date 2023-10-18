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

    --------------------------------------------------------------------
    -- Components Declaration
    --------------------------------------------------------------------

    component P4_ADDER is
        generic (
            NBIT : integer);
        port (
            A    : in  std_logic_vector(NBIT - 1 downto 0);
            B    : in  std_logic_vector(NBIT - 1 downto 0);
            Cin  : in  std_logic;
            S    : out std_logic_vector(NBIT - 1 downto 0);
            Cout : out std_logic);
    end component P4_ADDER;

    ----------------------------------------------------------------
    -- Constants Declaration
    ----------------------------------------------------------------

    constant log2_numBit : integer := integer(ceil(log2(real(numBit))));

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    signal DATA1_s   : std_logic_vector(numBit - 1 downto 0);
    signal DATA2_s   : std_logic_vector(numBit - 1 downto 0);
    signal CIN_s     : std_logic;
    signal ADDER_OUT : std_logic_vector(numBit - 1 downto 0);

begin

    P4_ADDER_1: entity work.P4_ADDER
        generic map (
            NBIT => numBit)
        port map (
            A    => DATA1_s,
            B    => DATA2_s,
            Cin  => CIN_s,
            S    => ADDER_OUT,
            Cout => open);

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------

    P_ALU : process (FUNC, DATA1, DATA2, ADDER_OUT)
    begin
        case FUNC is

            when ALU_ADD | ALU_ADDu => -- Sum: A + B
                DATA1_s <= DATA1;
                DATA2_s <= DATA2;
                CIN_s   <= '0';
                OUTALU  <= ADDER_OUT;

            when ALU_SUB | ALU_SUBu => -- Sub: A - B
                DATA1_s <= DATA1;
                DATA2_s <= to_data(not(unsigned(DATA2)));
                CIN_s   <= '1';
                OUTALU  <= ADDER_OUT;

            when ALU_AND => -- AND: A and B
                OUTALU <= DATA1 and DATA2;

            when ALU_OR => -- OR: A or B
                OUTALU <= DATA1 or DATA2;

            when ALU_XOR => -- XOR: A xor B
                OUTALU <= DATA1 xor DATA2;

            when ALU_SLL => -- Shift Left Logical: A << B 
                OUTALU <= std_logic_vector(signed(DATA1) sll to_integer(unsigned(DATA2(log2_numBit downto 0))));

            when ALU_SRL => -- Shift Right Logical: A >> B
                OUTALU <= std_logic_vector(signed(DATA1) srl to_integer(unsigned(DATA2(log2_numBit downto 0))));

            when ALU_SEQ => -- Set Equal: A = B ? 1 : 0
                if (DATA1 = DATA2) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SNE => -- Set Not Equal: A != B ? 1 : 0
                if (DATA1 /= DATA2) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SGE => -- Set Greater Than or Equal: A >= B ? 1 : 0
                if (signed(DATA1) >= signed(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SGT => -- Set Greater Than: A > B ? 1 : 0
                if (signed(DATA1) > signed(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SLE => -- Set Less Than or Equal: A <= B ? 1 : 0
                if (signed(DATA1) <= signed(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SLT => -- Set Less Than: A < B ? 1 : 0
                if (signed(DATA1) < signed(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SGEu => -- Set Greater Than or Equal (Unsigned): A >= B ? 1 : 0
                if (unsigned(DATA1) >= unsigned(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SGTu => -- Set Greater Than (Unsigned): A > B ? 1 : 0
                if (unsigned(DATA1) > unsigned(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SLEu => -- Set Less Than or Equal (Unsigned): A <= B ? 1 : 0
                if (unsigned(DATA1) <= unsigned(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
                else
                    OUTALU <= (others => '0');
                end if;

            when ALU_SLTu => -- Set Less Than (Unsigned): A < B ? 1 : 0
                if (unsigned(DATA1) < unsigned(DATA2)) then
                    OUTALU <= (0 => '1', others => '0');
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
