library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use WORK.myTypes.all;
use WORK.alu_type.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity long_latency_alu is
    generic (
        N: integer := numBit
        );
    port (
        FUNC: in alu_op_t;
        A,B: in std_logic_vector(N - 1 downto 0);
        LL_ALU_OUT: out std_logic_vector(N - 1 downto 0) -- should be double word length
        -- maybe a start and end computation signals?
        );
end long_latency_alu;

architecture mixed of long_latency_alu is

    --------------------------------------------------------------------
    -- Components Declaration
    --------------------------------------------------------------------

    -- multiplier
    component BOOTHMUL is
        generic (
            NBIT : integer := numBit);
        port (
            A : in std_logic_vector(NBIT - 1 downto 0);
            B : in std_logic_vector(NBIT - 1 downto 0);
            P : out std_logic_vector(2 * NBIT - 1 downto 0));
    end component BOOTHMUL;
    
    -- TODO: divider
    -- TODO: square root?

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------
    --signal A_internal, B_internal : std_logic_vector(numBit - 1 downto 0);
    signal P_internal: std_logic_vector(2 * numBit - 1 downto 0);
begin

    ----------------------------------------------------------------
    -- Component Instantiation
    ----------------------------------------------------------------
    BOOTHMUL_i : BOOTHMUL
    generic map(
        NBIT => numBit
    )
    port map(
        A => A,
        B => B,
        P => P_internal
    );

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------
    
    P_LL_ALU : process (FUNC, A, B)
    begin
        case FUNC is
            when ALU_MUL => 
                --A_internal <= A;
                --B_internal <= B;
                LL_ALU_OUT <= P_internal(numBit - 1 downto 0); -- FIXME: avoid truncating output to word size 
            when others =>
                LL_ALU_OUT <= (others => '0');
        end case;
    end process P_LL_ALU;
    
end mixed;
