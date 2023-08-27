entity DATAPATH is
    generic (
        IR_SIZE : integer := 32;        -- Instruction Register Size
        PC_SIZE : integer := 32         -- Program Counter Size
        );
    port (
        -- Inputs
        CLK : in std_logic;             -- Clock
        RST : in std_logic;             -- Reset:Active-High
        );
end DATAPATH;

architecture rtl of DATAPATH is
    component MUX21_GENERIC is
        generic (
            NBIT      : integer;
            DELAY_MUX : time);
        port (
            A   : in  std_logic_vector(NBIT-1 downto 0);
            B   : in  std_logic_vector(NBIT-1 downto 0);
            SEL : in  std_logic;
            Y   : out std_logic_vector(NBIT-1 downto 0));
    end component MUX21_GENERIC;

    component BOOTHMUL is
        generic (
            NBIT : integer);
        port (
            A : in  std_logic_vector(NBIT - 1 downto 0);
            B : in  std_logic_vector(NBIT - 1 downto 0);
            P : out std_logic_vector(2 * NBIT - 1 downto 0));
    end component BOOTHMUL;

    component P4_ADDER is
        generic (
            NBIT : integer);
        port (
            A   : in  std_logic_vector(NBIT - 1 downto 0);
            B   : in  std_logic_vector(NBIT - 1 downto 0);
            Cin : in  std_logic;
            S   : out std_logic_vector(NBIT - 1 downto 0);

            Cout : out std_logic);
    end component P4_ADDER;

    signal PC, nextPC, NPC, nextNPC : std_logic_vector(NBIT - 1 downto 0);
    signal IR, nextIR               : std_logic_vector(IR_SIZE - 1 downto 0);


end architecture;

end entity DATAPATH;
