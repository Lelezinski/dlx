library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.all;
use myTypes.all;

entity cu_test is
end cu_test;

architecture TEST of cu_test is

    component cu
        port (
            -- FIRST PIPE STAGE OUTPUTS
            EN1 : out std_logic; -- enables the register file and the pipeline registers
            RF1 : out std_logic; -- enables the read port 1 of the register file
            RF2 : out std_logic; -- enables the read port 2 of the register file
            WF1 : out std_logic; -- enables the write port of the register file
            -- SECOND PIPE STAGE OUTPUTS
            EN2  : out std_logic; -- enables the pipe registers
            S1   : out std_logic; -- input selection of the first multiplexer
            S2   : out std_logic; -- input selection of the second multiplexer
            ALU1 : out std_logic; -- alu control bit
            ALU2 : out std_logic; -- alu control bit
            -- THIRD PIPE STAGE OUTPUTS
            EN3 : out std_logic; -- enables the memory and the pipeline registers
            RM  : out std_logic; -- enables the read-out of the memory
            WM  : out std_logic; -- enables the write-in of the memory
            S3  : out std_logic; -- input selection of the multiplexer
            -- INPUTS
            OPCODE : in std_logic_vector(C_OP_CODE_SIZE - 1 downto 0);
            FUNC   : in std_logic_vector(C_FUNC_SIZE - 1 downto 0);
            Clk    : in std_logic;
            Rst    : in std_logic -- Active Low
        );
    end component;

    constant CLK_PERIOD : time      := 1 ns;
    signal Clock        : std_logic := '0';
    signal Reset        : std_logic := '0';

    signal cu_opcode_i : std_logic_vector(C_OP_CODE_SIZE - 1 downto 0) := (others => '0');
    signal cu_func_i   : std_logic_vector(C_FUNC_SIZE - 1 downto 0)    := (others => '0');

    signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i : std_logic := '0';

begin

    -- instance of DLX
    dut : cu
    port map(
        -- OUTPUTS
        EN1  => EN1_i,
        RF1  => RF1_i,
        RF2  => RF2_i,
        WF1  => WF1_i,
        EN2  => EN2_i,
        S1   => S1_i,
        S2   => S2_i,
        ALU1 => ALU1_i,
        ALU2 => ALU2_i,
        EN3  => EN3_i,
        RM   => RM_i,
        WM   => WM_i,
        S3   => S3_i,
        -- INPUTS
        OPCODE => cu_opcode_i,
        FUNC   => cu_func_i,
        Clk    => Clock,
        Rst    => Reset
    );

    Clock <= not Clock after (CLK_PERIOD / 2);
    Reset <= '0', '1' after CLK_PERIOD;

    CONTROL : process
    begin

        wait for CLK_PERIOD;

        ---- R-Type ----
        -- decimal values of r-type func fields are between 0 and 4
        r : for i in 0 to (C_NUM_OF_R_INSTRUCTION - 1) loop
            cu_opcode_i <= RTYPE;
            cu_func_i   <= std_logic_vector(to_unsigned(i, C_FUNC_SIZE));
            wait for C_TB_STAGES * CLK_PERIOD;
        end loop r;

        ---- I-Type ----
        -- decimal values of i-type opcode fields are between 1 and 14
        i : for i in 1 to (C_NUM_OF_I_INSTRUCTION) loop
            cu_opcode_i <= std_logic_vector(to_unsigned(i, C_OP_CODE_SIZE));
            cu_func_i   <= (others => '0');
            wait for C_TB_STAGES * CLK_PERIOD;
        end loop i;

        wait;
    end process;

end TEST;
