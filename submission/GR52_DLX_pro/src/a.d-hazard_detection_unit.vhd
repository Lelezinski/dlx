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

    MUX_FWD_MEM_LMD_SEL : out std_logic;
    MUX_FWD_EX_LMD_SEL : out std_logic;
    MUX_FWD_BZ_SEL : out std_logic_vector(1 downto 0);
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
    MUX_FWD_BZ_SEL <= "00";

    -- detect hazards in execute stage. Forward them from memory stage to execute stage
    if (cu_to_fu.RF_WR_EX = '1' or cu_to_fu.DRAM_ENABLE_MEM = '1') -- forward only instructions that write the RF or lw/sw
      and (cu_to_fu.MUX_COND_SEL /= "01" ) -- do not forward if the instruction is a bnez
      and (cu_to_fu.MUX_COND_SEL /= "10" ) -- do not forward if the instruction is a bez
      and (unsigned(dp_to_fu.RD_EX) /= 0) then

      if (dp_to_fu.RD_EX = dp_to_fu.RS_ID) then -- forward the first operand of the alu
        MUX_A_SEL <= "10";
      end if;

      if ((dp_to_fu.RD_EX = dp_to_fu.RT_ID) -- forward the second operand of the alu
          and (cu_to_fu.DRAM_ENABLE_MEM = '0') -- do not forward the second operand if the instruction is a lw/sw, because they always use the immediate field
          and (cu_to_fu.MUX_A_CU = '1' and cu_to_fu.MUX_B_CU = '0')) then -- forward the second operad only if the instruction should use the data coming from B
        MUX_B_SEL <= "10";
      end if;
    end if;

    -- detect hazards in execute stage. Forward them from memory stage to execute stage
    if (cu_to_fu.RF_WR_MEM = '1' or cu_to_fu.DRAM_ENABLE_MEM = '1') -- forward only instructions that write the RF or lw/sw
      and (cu_to_fu.MUX_COND_SEL /= "01" ) -- do not forward if the instruction is a bnez
      and (cu_to_fu.MUX_COND_SEL /= "10" ) -- do not forward if the instruction is a bez
      and (unsigned(dp_to_fu.RD_MEM) /= 0)
      and (cu_to_fu.IS_JUMP_EX = '0') then -- avoid detecting false forwarding paths
      if ((dp_to_fu.RD_MEM = dp_to_fu.RS_ID) and -- forward the first operad of the ALU
          not((cu_to_fu.RF_WR_EX = '1' or cu_to_fu.DRAM_ENABLE_MEM = '1')
              and (unsigned(dp_to_fu.RD_EX) /= 0)
              and (dp_to_fu.RD_EX = dp_to_fu.RS_ID))) then -- avoid detecting false hazards
        MUX_A_SEL <= "11";
      end if;
      if (((dp_to_fu.RD_MEM = dp_to_fu.RT_ID) -- forward the second operand of the alu
          and (cu_to_fu.DRAM_ENABLE_MEM = '0')) -- do not forward the second operand if the instruction is a lw/sw, because they always use the immediate field
          and (cu_to_fu.MUX_A_CU = '1' and cu_to_fu.MUX_B_CU = '0') -- forward the second operad only if the instruction should use the data coming from B
          and not((cu_to_fu.RF_WR_EX = '1' or cu_to_fu.DRAM_ENABLE_MEM = '1')
              and (unsigned(dp_to_fu.RD_EX) /= 0)
              and (dp_to_fu.RD_EX = dp_to_fu.RT_ID))) then -- avoid detecting false hazards
        MUX_B_SEL <= "11";
      end if;
    end if;

    if (cu_to_fu.MUX_COND_SEL = "01" or cu_to_fu.MUX_COND_SEL = "10") -- if the istruction is a bne or a beqz
      and (unsigned(dp_to_fu.RD_EX) /= 0) and (dp_to_fu.RD_EX = dp_to_fu.RS_ID) then -- forward data to check the branch result from memory
      MUX_FWD_BZ_SEL <= "10";
    elsif (cu_to_fu.MUX_COND_SEL = "01" or cu_to_fu.MUX_COND_SEL = "10") and
      (unsigned(dp_to_fu.RD_EX) /= 0) and
      (dp_to_fu.RD_MEM = dp_to_fu.RS_ID) then -- forward data to check the branch result from write back stage
        MUX_FWD_BZ_SEL <= "11";
    end if;

    -- forward loaded data if storing it is needed
    if ((cu_to_fu.DRAM_READNOTWRITE = '0') and -- it exists but it does not work
      (unsigned(dp_to_fu.RD_MEM) /= 0) and
      (dp_to_fu.RD_EX = dp_to_fu.RD_MEM)) then
      MUX_FWD_MEM_LMD_SEL <= '1';
    end if;

    -- forward rd or rt (destination register)
    if ((cu_to_fu.DRAM_ENABLE_MEM = '1') and -- if the instruction is a lw or sw
        (unsigned(dp_to_fu.RD_MEM) /= 0) and -- if destination register is not 0
        (dp_to_fu.RS_ID = dp_to_fu.RD_MEM)) then -- if the data to be stored is in the memory stage
      MUX_FWD_EX_LMD_SEL  <= '1';
    end if;

    if ((cu_to_fu.DRAM_ENABLE_EX = '1') and -- if the instruction is a lw or sw
        (unsigned(dp_to_fu.RD_MEM) /= 0) and -- if destination register is not 0
        (dp_to_fu.RD_ID = dp_to_fu.RD_MEM)) then -- if the data to be stored is in the memory stage
      MUX_FWD_EX_LMD_SEL  <= '1';
    end if;

  end process;

end RTL;
