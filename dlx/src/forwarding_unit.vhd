library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;

entity forwarding_unit is
  -- generic (
  -- );
  port (
    -- signals coming from the cu
    cu_to_fu : in cu_to_fu_t;

    -- signals coming from the datapth
    dp_to_fu : in dp_to_fu_t;
    -- RD_EX     : in data_t;
    -- RD_MEM    : in data_t;
    -- RS_ID     : in data_t;
    -- RT_ID     : in data_t;

    MUX_FWD_MEM_LMD_SEL : out std_logic;
    MUX_FWD_EX_LMD_SEL : out std_logic;
    MUX_A_SEL : out std_logic_vector(1 downto 0);
    MUX_B_SEL : out std_logic_vector(1 downto 0)
    );
end forwarding_unit;

architecture RTL of forwarding_unit is
begin

  forwarding : process(cu_to_fu, dp_to_fu)
  begin
    MUX_A_SEL <= '0' & cu_to_fu.MUX_A_CU;
    MUX_B_SEL <= '0' & cu_to_fu.MUX_B_CU;
    MUX_FWD_MEM_LMD_SEL <= '0';
    MUX_FWD_EX_LMD_SEL <= '0';

    -- detect hazards in execute stage
    -- forwarding from the exe/mem stage
    if (cu_to_fu.RF_WR_EX = '1' or cu_to_fu.DRAM_ENABLE = '1')
      and (unsigned(dp_to_fu.RD_EX) /= 0) then
      if (dp_to_fu.RD_EX = dp_to_fu.RS_ID) then
        MUX_A_SEL <= "10";
      end if;

      if ((dp_to_fu.RD_EX = dp_to_fu.RT_ID) and (cu_to_fu.DRAM_ENABLE = '0') and (cu_to_fu.MUX_A_CU = '1' and cu_to_fu.MUX_B_CU = '0')) then
        MUX_B_SEL <= "10";
      end if;
    end if;

    -- detect hazards in memory stage
    -- forwarding from the mem/wb stage
    if (cu_to_fu.RF_WR_MEM = '1' or cu_to_fu.DRAM_ENABLE = '1')
      and (unsigned(dp_to_fu.RD_MEM) /= 0)
      and (cu_to_fu.IS_JUMP_EX = '0') then
      if ((dp_to_fu.RD_MEM = dp_to_fu.RS_ID) and
          not((cu_to_fu.RF_WR_EX = '1' or cu_to_fu.DRAM_ENABLE = '1')
              and (unsigned(dp_to_fu.RD_EX) /= 0)
              and (dp_to_fu.RD_EX = dp_to_fu.RS_ID))) then
        MUX_A_SEL <= "11";
      end if;
      if (((dp_to_fu.RD_MEM = dp_to_fu.RT_ID) and (cu_to_fu.DRAM_ENABLE = '0'))
          and (cu_to_fu.MUX_A_CU = '1' and cu_to_fu.MUX_B_CU = '0')
          and not((cu_to_fu.RF_WR_EX = '1' or cu_to_fu.DRAM_ENABLE = '1')
              and (unsigned(dp_to_fu.RD_EX) /= 0)
              and (dp_to_fu.RD_EX = dp_to_fu.RT_ID))) then
        MUX_B_SEL <= "11";
      end if;
    end if;

    -- forward loaded data if storing it is needed
    if ((cu_to_fu.DRAM_READNOTWRITE = '0') and
      (unsigned(dp_to_fu.RD_MEM) /= 0) and
      (dp_to_fu.RD_EX = dp_to_fu.RD_MEM)) then
      MUX_FWD_MEM_LMD_SEL <= '1';
    end if;

    -- forward rd or rt (destination register)
    -- from prev instruction when sw or lw are in mem
    if ((cu_to_fu.DRAM_ENABLE = '1') and
        (unsigned(dp_to_fu.RD_MEM) /= 0) and
        (dp_to_fu.RS_ID = dp_to_fu.RD_MEM)) then
      MUX_FWD_EX_LMD_SEL  <= '1';
    end if;

  end process;

end RTL;
