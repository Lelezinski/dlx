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

    -- detect hazards in execute stage
    -- forwarding from the exe/mem stage
    if (cu_to_fu.RF_WR_EX = '1') and (unsigned(dp_to_fu.RD_EX) /= 0) then
      if (dp_to_fu.RD_EX = dp_to_fu.RS_ID) then
        MUX_A_SEL <= "10";
      end if;

      if (dp_to_fu.RD_EX = dp_to_fu.RT_ID) then
        MUX_B_SEL <= "10";
      end if;
    end if;

    -- detect hazards in memory stage
    -- forwarding from the mem/wb stage
    if (cu_to_fu.RF_WR_MEM = '1') and (unsigned(dp_to_fu.RD_MEM) /= 0) then
      if ((dp_to_fu.RD_MEM = dp_to_fu.RS_ID) and
          not((cu_to_fu.RF_WR_EX = '1')
              and (unsigned(dp_to_fu.RD_EX) /= 0)
              and (dp_to_fu.RD_EX /= dp_to_fu.RS_ID))) then
        MUX_A_SEL <= "11";
      end if;
      if ((dp_to_fu.RD_MEM = dp_to_fu.RT_ID) and
          not((cu_to_fu.RF_WR_EX = '1')
              and (unsigned(dp_to_fu.RD_EX) /= 0)
              and (dp_to_fu.RD_EX /= dp_to_fu.RT_ID))) then
        MUX_B_SEL <= "11";
      end if;
    end if;
  end process;

end RTL;
