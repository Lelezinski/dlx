library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.myTypes.all;

entity CARRY_SELECT is
    generic (
        NBIT : integer := CARRY_SELECT_NBIT);
    port (
        ci   : in  std_logic;           -- mux selection signal
        A, B : in  std_logic_vector(NBIT-1 downto 0);
        sum  : out std_logic_vector(NBIT-1 downto 0));
end entity;

architecture STRUCT of CARRY_SELECT is

    signal sum0, sum1 : std_logic_vector(NBIT-1 downto 0);

    component RCA is
        generic (
            NBIT  : integer := CARRY_SELECT_NBIT;
            DRCAS : time    := 0 ns;
            DRCAC : time    := 0 ns);
        port (
            A  : in  std_logic_vector(NBIT-1 downto 0);
            B  : in  std_logic_vector(NBIT-1 downto 0);
            Ci : in  std_logic;
            S  : out std_logic_vector(NBIT-1 downto 0);
            Co : out std_logic);
    end component;

    component MUX21_GENERIC is
        generic (
            NBIT      : integer := CARRY_SELECT_NBIT;
            DELAY_MUX : time    := tp_mux);
        port (
            A   : in  std_logic_vector(NBIT-1 downto 0);
            B   : in  std_logic_vector(NBIT-1 downto 0);
            SEL : in  std_logic;
            Y   : out std_logic_vector(NBIT-1 downto 0));
    end component;

begin
    rca0 : RCA
        generic map (NBIT => CARRY_SELECT_NBIT, DRCAS => DRCAS, DRCAC => DRCAC)
        port map (A       => A, B => B, Ci => '0', S => sum0, Co => open);

    rca1 : RCA
        generic map (NBIT => CARRY_SELECT_NBIT, DRCAS => DRCAS, DRCAC => DRCAC)
        port map (A       => A, B => B, Ci => '1', S => sum1, Co => open);

    mux0 : MUX21_GENERIC
        generic map (NBIT => CARRY_SELECT_NBIT, DELAY_MUX => tp_mux)
        port map (A       => sum1, B => sum0, SEL => ci, Y => sum);
end STRUCT;
