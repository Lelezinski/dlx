library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

--------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------

entity RWMEM is
    generic (
        FILE_PATH      : string;
        FILE_PATH_INIT : string;
        DATA_SIZE      : natural := 32;
        INSTR_SIZE     : natural := 32;
        RAM_DEPTH      : natural := 128;
        DATA_DELAY     : natural := 2
    );
    port (
        CLK          : in std_logic;
        RST          : in std_logic;
        ADDR         : in std_logic_vector(INSTR_SIZE - 1 downto 0);
        DATA_IN      : in std_logic_vector(DATA_SIZE - 1 downto 0);
        ENABLE       : in std_logic;
        READNOTWRITE : in std_logic;
        DATA_READY   : out std_logic;
        DATA_OUT     : out std_logic_vector(DATA_SIZE - 1 downto 0)
    );
end RWMEM;

architecture beh of RWMEM is

    ----------------------------------------------------------------
    -- Signals Declaration
    ----------------------------------------------------------------

    type DRAMtype is array (0 to RAM_DEPTH - 1) of std_logic_vector(DATA_SIZE - 1 downto 0);
    signal DRAM_mem                  : DRAMtype;
    signal tmp_data                  : std_logic_vector(Data_size - 1 downto 0);
    signal int_data_ready, mem_ready : std_logic;
    signal counter                   : natural := 0;

    ----------------------------------------------------------------
    -- Procedures
    ----------------------------------------------------------------

    procedure rewrite_contenent(data : in DRAMtype; path_file : string) is
        variable index   : natural range 0 to RAM_DEPTH;
        file wr_file     : text;
        variable line_in : line;
    begin
        index := 0;
        file_open(wr_file, path_file, write_mode);
        while index < RAM_DEPTH loop
            hwrite(line_in, data(index));
            writeline(wr_file, line_in);
            index := index + 1;
        end loop;
    end rewrite_contenent;

begin

    ----------------------------------------------------------------
    -- Processes
    ----------------------------------------------------------------

    -- Write Process
    WR_PROCESS :
    process (CLK, RST, READNOTWRITE)
        
        file mem_fp         : text;
        variable index      : integer range 0 to RAM_DEPTH;
        variable file_line  : line;
        variable tmp_data_u : std_logic_vector(INSTR_SIZE - 1 downto 0);

    begin
        if RST = '1' then
            --          while index < RAM_DEPTH loop
            --              DRAM_mem(index) <= std_logic_vector(to_unsigned(index,instr_size));
            --              index := index + 1;
            --          end loop;

            file_open(
            mem_fp,
            file_path_init,
            read_mode
            );

            while (not endfile(mem_fp)) loop
                readline(mem_fp, file_line);
                hread(file_line, tmp_data_u);
                DRAM_mem(index) <= tmp_data_u;
                index := index + 1;
            end loop;

            file_close(mem_fp);
            DRAM_mem <= (others => (others => '0'));

            int_data_ready <= '1';
            mem_ready      <= '1';

        elsif rising_edge(CLK) then
            if (ENABLE = '1') then
                counter <= counter + 1;
                if (counter = data_delay) then
                    counter <= 0;
                    if (READNOTWRITE = '0') then
                        DRAM_Mem(to_integer(unsigned(ADDR))) <= DATA_IN;
                        -- DDR below
                        -- DRAM_Mem(to_integer(unsigned(ADDR)))   <= DATA_IN(Data_size - 1 downto Instr_size);
                        mem_ready <= '1';
                    else
                        tmp_data       <= DRAM_mem(to_integer(unsigned(ADDR)));
                        int_data_ready <= '1';
                    end if;
                else
                    mem_ready      <= '0';
                    int_data_ready <= '0';
                end if;
            else
                tmp_data <= (others => 'Z');
                counter  <= 0;
            end if;
        end if;
    end process;

    rewrite_contenent(DRAM_mem, file_path); -- refresh the file
    DATA_OUT <= tmp_data when int_data_ready = '1' else
        (others => 'Z');
    data_ready <= int_data_ready or mem_ready; --delay add

end beh;
