library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity dlx_cu is
  generic (
    MICROCODE_MEM_SIZE :     integer := 15;  -- Microcode Memory Size
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
    -- ALU_OPC_SIZE       :     integer := 6;  -- ALU Op Code Word Size
    CW_SIZE            :     integer := 13);  -- Control Word Size
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

end dlx_cu;

architecture dlx_cu_FSM of dlx_cu is
    type StateType is (s_fetch_and_decode, s_execute, s_mem, s_reset); -- stages of the pipeline
    type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
    signal cw: std_logic_vector(CW_SIZE - 1 downto 0); -- control word register
    -- LUT for instruction indexing
    signal cw_mem : mem_array := (  -- R-Type, ALU configuration is dedicated process
                                    "1111100010001", -- RTYPE, generic R-Type instruction
                                    -- I-Type
                                    "0111000010001", -- ITYPE_ADDI1
                                    "0111000110001", -- ITYPE_SUBI1
                                    "0111001010001", -- ITYPE_ANDI1
                                    "0111001110001", -- ITYPE_ORI1
                                    
                                    "1011110010001", -- ITYPE_ADDI2
                                    "1011110110001", -- ITYPE_SUBI2
                                    "1011111010001", -- ITYPE_ANDI2
                                    "1011111110001", -- ITYPE_ORI2
                                    
                                    "1011110010001", -- ITYPE_MOV
                                    
                                    "0111000010001", -- ITYPE_S_REG1 TODO
                                    "1011110010001", -- ITYPE_S_REG2 TODO
                                    "1101110010110", -- ITYPE_S_MEM
                                    
                                    "0111000011010", -- ITYPE_L_MEM1
                                    "1011110011010"  -- ITYPE_L_MEM2 
                                  ); 
    -- state and signals registers
    signal CurrState, NextState: StateType;
    signal CurrOPCODE, NextOPCODE: std_logic_vector(C_OP_CODE_SIZE - 1 downto 0);
    signal CurrFUNC, NextFUNC: std_logic_vector(C_FUNC_SIZE - 1 downto 0);
    
    signal ALU_OPCODE: std_logic_vector(1 downto 0);
    signal FUNC_OP: func_t;
begin
    -- - Moore model for FSMs is used
    -- - every operation is done assuming that OPCODE and FUNC inputs stay the same for 3 CC
    
    -- assign cw based on current OPCODE
    cw <= cw_mem(to_integer(unsigned(CurrOPCODE)));
    
    -- convert current FUNC into enum found in myTypes.vhd, needed for determining ALU configuration
    FUNC_OP <= func_t'val(to_integer(unsigned(CurrFUNC))); 
    
    -- ALU_OPCODE assignment process based on current FUNC 
    AluOpcodeProcess: process(FUNC_OP, CurrOPCODE, cw)
    begin
        
        if (CurrOPCODE = RTYPE) then
            case (FUNC_OP) is
                when RTYPE_ADD => ALU_OPCODE <= "00";
                when RTYPE_SUB => ALU_OPCODE <= "01";
                when RTYPE_AND => ALU_OPCODE <= "10";
                when RTYPE_OR  => ALU_OPCODE <= "11";
                when others    => ALU_OPCODE <= "00";
            end case;
        else
            -- default case when OPCODE is anything other than RTYPE
            ALU_OPCODE <= cw(6) & cw(5);
        end if;
    end process;
    
    -- reset handling, state transition and signal updating process
    StateReg: process(Clk, Rst)
    begin
        if (Rst = '0') then
            CurrOPCODE <= (others => '0');
            CurrFUNC   <= (others => '0');
            CurrState <= s_reset;
        elsif (rising_edge(Clk)) then
            CurrOPCODE    <= NextOPCODE;
            CurrFUNC      <= NextFUNC;
            CurrState <= NextState;
        end if;
    end process;
    
    -- state transitions and decode logic process 
    CombLogic: process(CurrState, cw, ALU_OPCODE, OPCODE, FUNC)
    begin
        -- default assignment for registers and control signals
        NextOPCODE <= CurrOPCODE;
        NextFUNC   <= CurrFUNC;
        
        RF1 <= '0';
        RF2 <= '0';
        EN1 <= '0';
        
        EN2 <= '0';
        S1 <= '0';
        S2 <= '0';
        ALU1 <= '0';
        ALU2 <= '0';
        S3 <= '0';

        RM <= '0';
        WM <= '0';
        EN3 <= '0';
        WF1 <= '0';
        case CurrState is
            when s_reset  => 
                            NextState <= s_fetch_and_decode;
            when s_fetch_and_decode =>
                            -- save control word into a register, then use that only for the next states
                            NextOPCODE    <= OPCODE;
                            NextFUNC      <= FUNC;
                            -- enable first stage outputs
                            RF1 <= cw_mem(to_integer(unsigned(OPCODE)))(CW_SIZE - 1);
                            RF2 <= cw_mem(to_integer(unsigned(OPCODE)))(CW_SIZE - 2);
                            EN1 <= cw_mem(to_integer(unsigned(OPCODE)))(CW_SIZE - 4);
                            NextState <= s_execute;
            when s_execute =>
                            -- enable second stage outputs
                            S1   <= cw(CW_SIZE - 5);
                            S2   <= cw(CW_SIZE - 6);
                            ALU1 <= ALU_OPCODE(1);
                            ALU2 <= ALU_OPCODE(0);
                            EN2  <= cw(CW_SIZE - 9);
                            EN1 <= cw(CW_SIZE - 4);
                            NextState <= s_mem;
                            
            when s_mem =>
                            -- enable third stage outputs
                            RM  <= cw(CW_SIZE - 10);
                            WM  <= cw(CW_SIZE - 11);
                            EN3 <= cw(CW_SIZE - 12);
                            EN2 <= cw(CW_SIZE - 9);
                            S3  <= cw(CW_SIZE - 13);
                            WF1 <= cw(CW_SIZE - 3);
                            NextState <= s_fetch_and_decode;
                            
            when others =>  NextState <= s_reset;
        end case;
    end process;
    
end dlx_cu_FSM;

















