
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ND2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2;

architecture SYN_BEHAVIORAL of ND2 is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0 : std_logic;

begin
   
   I_0 : GTECH_NOT port map( A => N0, Z => Y);
   C8 : GTECH_AND2 port map( A => A, B => B, Z => N0);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity IV is

   port( A : in std_logic;  Y : out std_logic);

end IV;

architecture SYN_BEHAVIORAL of IV is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;

begin
   
   I_0 : GTECH_NOT port map( A => A, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity FD_NBIT32 is

   port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (31 downto 0));

end FD_NBIT32;

architecture SYN_PLUTO of FD_NBIT32 is
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal X_Logic1_port, X_Logic0_port, D_31_port, D_30_port, D_29_port, 
      D_28_port, D_27_port, D_26_port, D_25_port, D_24_port, D_23_port, 
      D_22_port, D_21_port, D_20_port, D_19_port, D_18_port, D_17_port, 
      D_16_port, D_15_port, D_14_port, D_13_port, D_12_port, D_11_port, 
      D_10_port, D_9_port, D_8_port, D_7_port, D_6_port, D_5_port, D_4_port, 
      D_3_port, D_2_port, D_1_port, D_0_port, CK_port, RESET_port, Q_31_port, 
      Q_30_port, Q_29_port, Q_28_port, Q_27_port, Q_26_port, Q_25_port, 
      Q_24_port, Q_23_port, Q_22_port, Q_21_port, Q_20_port, Q_19_port, 
      Q_18_port, Q_17_port, Q_16_port, Q_15_port, Q_14_port, Q_13_port, 
      Q_12_port, Q_11_port, Q_10_port, Q_9_port, Q_8_port, Q_7_port, Q_6_port, 
      Q_5_port, Q_4_port, Q_3_port, Q_2_port, Q_1_port, Q_0_port, n_1000, 
      n_1001, n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, 
      n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, 
      n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, 
      n_1028, n_1029, n_1030, n_1031 : std_logic;

begin
   ( D_31_port, D_30_port, D_29_port, D_28_port, D_27_port, D_26_port, 
      D_25_port, D_24_port, D_23_port, D_22_port, D_21_port, D_20_port, 
      D_19_port, D_18_port, D_17_port, D_16_port, D_15_port, D_14_port, 
      D_13_port, D_12_port, D_11_port, D_10_port, D_9_port, D_8_port, D_7_port,
      D_6_port, D_5_port, D_4_port, D_3_port, D_2_port, D_1_port, D_0_port ) <=
      D;
   CK_port <= CK;
   RESET_port <= RESET;
   Q <= ( Q_31_port, Q_30_port, Q_29_port, Q_28_port, Q_27_port, Q_26_port, 
      Q_25_port, Q_24_port, Q_23_port, Q_22_port, Q_21_port, Q_20_port, 
      Q_19_port, Q_18_port, Q_17_port, Q_16_port, Q_15_port, Q_14_port, 
      Q_13_port, Q_12_port, Q_11_port, Q_10_port, Q_9_port, Q_8_port, Q_7_port,
      Q_6_port, Q_5_port, Q_4_port, Q_3_port, Q_2_port, Q_1_port, Q_0_port );
   
   Q_reg_31_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_31_port, clocked_on => CK_port, Q => Q_31_port, QN => n_1000);
   Q_reg_30_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_30_port, clocked_on => CK_port, Q => Q_30_port, QN => n_1001);
   Q_reg_29_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_29_port, clocked_on => CK_port, Q => Q_29_port, QN => n_1002);
   Q_reg_28_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_28_port, clocked_on => CK_port, Q => Q_28_port, QN => n_1003);
   Q_reg_27_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_27_port, clocked_on => CK_port, Q => Q_27_port, QN => n_1004);
   Q_reg_26_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_26_port, clocked_on => CK_port, Q => Q_26_port, QN => n_1005);
   Q_reg_25_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_25_port, clocked_on => CK_port, Q => Q_25_port, QN => n_1006);
   Q_reg_24_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_24_port, clocked_on => CK_port, Q => Q_24_port, QN => n_1007);
   Q_reg_23_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_23_port, clocked_on => CK_port, Q => Q_23_port, QN => n_1008);
   Q_reg_22_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_22_port, clocked_on => CK_port, Q => Q_22_port, QN => n_1009);
   Q_reg_21_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_21_port, clocked_on => CK_port, Q => Q_21_port, QN => n_1010);
   Q_reg_20_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_20_port, clocked_on => CK_port, Q => Q_20_port, QN => n_1011);
   Q_reg_19_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_19_port, clocked_on => CK_port, Q => Q_19_port, QN => n_1012);
   Q_reg_18_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_18_port, clocked_on => CK_port, Q => Q_18_port, QN => n_1013);
   Q_reg_17_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_17_port, clocked_on => CK_port, Q => Q_17_port, QN => n_1014);
   Q_reg_16_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_16_port, clocked_on => CK_port, Q => Q_16_port, QN => n_1015);
   Q_reg_15_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_15_port, clocked_on => CK_port, Q => Q_15_port, QN => n_1016);
   Q_reg_14_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_14_port, clocked_on => CK_port, Q => Q_14_port, QN => n_1017);
   Q_reg_13_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_13_port, clocked_on => CK_port, Q => Q_13_port, QN => n_1018);
   Q_reg_12_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_12_port, clocked_on => CK_port, Q => Q_12_port, QN => n_1019);
   Q_reg_11_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_11_port, clocked_on => CK_port, Q => Q_11_port, QN => n_1020);
   Q_reg_10_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_10_port, clocked_on => CK_port, Q => Q_10_port, QN => n_1021);
   Q_reg_9_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_9_port, clocked_on => CK_port, Q => Q_9_port, QN => n_1022);
   Q_reg_8_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_8_port, clocked_on => CK_port, Q => Q_8_port, QN => n_1023);
   Q_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_7_port, clocked_on => CK_port, Q => Q_7_port, QN => n_1024);
   Q_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_6_port, clocked_on => CK_port, Q => Q_6_port, QN => n_1025);
   Q_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_5_port, clocked_on => CK_port, Q => Q_5_port, QN => n_1026);
   Q_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_4_port, clocked_on => CK_port, Q => Q_4_port, QN => n_1027);
   Q_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_3_port, clocked_on => CK_port, Q => Q_3_port, QN => n_1028);
   Q_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_2_port, clocked_on => CK_port, Q => Q_2_port, QN => n_1029);
   Q_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_1_port, clocked_on => CK_port, Q => Q_1_port, QN => n_1030);
   Q_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_0_port, clocked_on => CK_port, Q => Q_0_port, QN => n_1031);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity RCA_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32;

architecture SYN_BEHAVIORAL of RCA_NBIT32 is

signal A_31_port, A_30_port, A_29_port, A_28_port, A_27_port, A_26_port, 
   A_25_port, A_24_port, A_23_port, A_22_port, A_21_port, A_20_port, A_19_port,
   A_18_port, A_17_port, A_16_port, A_15_port, A_14_port, A_13_port, A_12_port,
   A_11_port, A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, 
   A_4_port, A_3_port, A_2_port, A_1_port, A_0_port, B_31_port, B_30_port, 
   B_29_port, B_28_port, B_27_port, B_26_port, B_25_port, B_24_port, B_23_port,
   B_22_port, B_21_port, B_20_port, B_19_port, B_18_port, B_17_port, B_16_port,
   B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, B_9_port, 
   B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, 
   B_1_port, B_0_port, S_31_port, S_30_port, S_29_port, S_28_port, S_27_port, 
   S_26_port, S_25_port, S_24_port, S_23_port, S_22_port, S_21_port, S_20_port,
   S_19_port, S_18_port, S_17_port, S_16_port, S_15_port, S_14_port, S_13_port,
   S_12_port, S_11_port, S_10_port, S_9_port, S_8_port, S_7_port, S_6_port, 
   S_5_port, S_4_port, S_3_port, S_2_port, S_1_port, S_0_port, Co_port : 
   std_logic;

begin
   ( A_31_port, A_30_port, A_29_port, A_28_port, A_27_port, A_26_port, 
      A_25_port, A_24_port, A_23_port, A_22_port, A_21_port, A_20_port, 
      A_19_port, A_18_port, A_17_port, A_16_port, A_15_port, A_14_port, 
      A_13_port, A_12_port, A_11_port, A_10_port, A_9_port, A_8_port, A_7_port,
      A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, A_1_port, A_0_port ) <=
      A;
   ( B_31_port, B_30_port, B_29_port, B_28_port, B_27_port, B_26_port, 
      B_25_port, B_24_port, B_23_port, B_22_port, B_21_port, B_20_port, 
      B_19_port, B_18_port, B_17_port, B_16_port, B_15_port, B_14_port, 
      B_13_port, B_12_port, B_11_port, B_10_port, B_9_port, B_8_port, B_7_port,
      B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, B_0_port ) <=
      B;
   S <= ( S_31_port, S_30_port, S_29_port, S_28_port, S_27_port, S_26_port, 
      S_25_port, S_24_port, S_23_port, S_22_port, S_21_port, S_20_port, 
      S_19_port, S_18_port, S_17_port, S_16_port, S_15_port, S_14_port, 
      S_13_port, S_12_port, S_11_port, S_10_port, S_9_port, S_8_port, S_7_port,
      S_6_port, S_5_port, S_4_port, S_3_port, S_2_port, S_1_port, S_0_port );
   Co <= Co_port;
   
   add_53 : process ( A_31_port, A_30_port, A_29_port, A_28_port, A_27_port, 
         A_26_port, A_25_port, A_24_port, A_23_port, A_22_port, A_21_port, 
         A_20_port, A_19_port, A_18_port, A_17_port, A_16_port, A_15_port, 
         A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, A_9_port, 
         A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, 
         A_1_port, A_0_port, B_31_port, B_30_port, B_29_port, B_28_port, 
         B_27_port, B_26_port, B_25_port, B_24_port, B_23_port, B_22_port, 
         B_21_port, B_20_port, B_19_port, B_18_port, B_17_port, B_16_port, 
         B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, 
         B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, 
         B_2_port, B_1_port, B_0_port )
      variable A : UNSIGNED( 32 downto 0 );
      variable B : UNSIGNED( 32 downto 0 );
      variable Z : UNSIGNED( 32 downto 0 );
   begin
      A := ( '0', A_31_port, A_30_port, A_29_port, A_28_port, A_27_port, 
            A_26_port, A_25_port, A_24_port, A_23_port, A_22_port, A_21_port, 
            A_20_port, A_19_port, A_18_port, A_17_port, A_16_port, A_15_port, 
            A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, A_9_port, 
            A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, 
            A_2_port, A_1_port, A_0_port );
      B := ( '0', B_31_port, B_30_port, B_29_port, B_28_port, B_27_port, 
            B_26_port, B_25_port, B_24_port, B_23_port, B_22_port, B_21_port, 
            B_20_port, B_19_port, B_18_port, B_17_port, B_16_port, B_15_port, 
            B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, B_9_port, 
            B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, 
            B_2_port, B_1_port, B_0_port );
      Z := A + B;
      ( Co_port, S_31_port, S_30_port, S_29_port, S_28_port, S_27_port, 
            S_26_port, S_25_port, S_24_port, S_23_port, S_22_port, S_21_port, 
            S_20_port, S_19_port, S_18_port, S_17_port, S_16_port, S_15_port, 
            S_14_port, S_13_port, S_12_port, S_11_port, S_10_port, S_9_port, 
            S_8_port, S_7_port, S_6_port, S_5_port, S_4_port, S_3_port, 
            S_2_port, S_1_port, S_0_port ) <= Z;
   end process;
   

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity MUX21_GENERIC_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (31 downto 0));

end MUX21_GENERIC_NBIT32;

architecture SYN_STRUCTURAL of MUX21_GENERIC_NBIT32 is

   component ND2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1_31_port, Y1_30_port, Y1_29_port, Y1_28_port, Y1_27_port, 
      Y1_26_port, Y1_25_port, Y1_24_port, Y1_23_port, Y1_22_port, Y1_21_port, 
      Y1_20_port, Y1_19_port, Y1_18_port, Y1_17_port, Y1_16_port, Y1_15_port, 
      Y1_14_port, Y1_13_port, Y1_12_port, Y1_11_port, Y1_10_port, Y1_9_port, 
      Y1_8_port, Y1_7_port, Y1_6_port, Y1_5_port, Y1_4_port, Y1_3_port, 
      Y1_2_port, Y1_1_port, Y1_0_port, Y2_31_port, Y2_30_port, Y2_29_port, 
      Y2_28_port, Y2_27_port, Y2_26_port, Y2_25_port, Y2_24_port, Y2_23_port, 
      Y2_22_port, Y2_21_port, Y2_20_port, Y2_19_port, Y2_18_port, Y2_17_port, 
      Y2_16_port, Y2_15_port, Y2_14_port, Y2_13_port, Y2_12_port, Y2_11_port, 
      Y2_10_port, Y2_9_port, Y2_8_port, Y2_7_port, Y2_6_port, Y2_5_port, 
      Y2_4_port, Y2_3_port, Y2_2_port, Y2_1_port, Y2_0_port : std_logic;

begin
   
   UIV : IV port map( A => SEL, Y => SB);
   UND1_0 : ND2 port map( A => A(0), B => SEL, Y => Y1_0_port);
   UND2_0 : ND2 port map( A => B(0), B => SB, Y => Y2_0_port);
   UND3_0 : ND2 port map( A => Y1_0_port, B => Y2_0_port, Y => Y(0));
   UND1_1 : ND2 port map( A => A(1), B => SEL, Y => Y1_1_port);
   UND2_1 : ND2 port map( A => B(1), B => SB, Y => Y2_1_port);
   UND3_1 : ND2 port map( A => Y1_1_port, B => Y2_1_port, Y => Y(1));
   UND1_2 : ND2 port map( A => A(2), B => SEL, Y => Y1_2_port);
   UND2_2 : ND2 port map( A => B(2), B => SB, Y => Y2_2_port);
   UND3_2 : ND2 port map( A => Y1_2_port, B => Y2_2_port, Y => Y(2));
   UND1_3 : ND2 port map( A => A(3), B => SEL, Y => Y1_3_port);
   UND2_3 : ND2 port map( A => B(3), B => SB, Y => Y2_3_port);
   UND3_3 : ND2 port map( A => Y1_3_port, B => Y2_3_port, Y => Y(3));
   UND1_4 : ND2 port map( A => A(4), B => SEL, Y => Y1_4_port);
   UND2_4 : ND2 port map( A => B(4), B => SB, Y => Y2_4_port);
   UND3_4 : ND2 port map( A => Y1_4_port, B => Y2_4_port, Y => Y(4));
   UND1_5 : ND2 port map( A => A(5), B => SEL, Y => Y1_5_port);
   UND2_5 : ND2 port map( A => B(5), B => SB, Y => Y2_5_port);
   UND3_5 : ND2 port map( A => Y1_5_port, B => Y2_5_port, Y => Y(5));
   UND1_6 : ND2 port map( A => A(6), B => SEL, Y => Y1_6_port);
   UND2_6 : ND2 port map( A => B(6), B => SB, Y => Y2_6_port);
   UND3_6 : ND2 port map( A => Y1_6_port, B => Y2_6_port, Y => Y(6));
   UND1_7 : ND2 port map( A => A(7), B => SEL, Y => Y1_7_port);
   UND2_7 : ND2 port map( A => B(7), B => SB, Y => Y2_7_port);
   UND3_7 : ND2 port map( A => Y1_7_port, B => Y2_7_port, Y => Y(7));
   UND1_8 : ND2 port map( A => A(8), B => SEL, Y => Y1_8_port);
   UND2_8 : ND2 port map( A => B(8), B => SB, Y => Y2_8_port);
   UND3_8 : ND2 port map( A => Y1_8_port, B => Y2_8_port, Y => Y(8));
   UND1_9 : ND2 port map( A => A(9), B => SEL, Y => Y1_9_port);
   UND2_9 : ND2 port map( A => B(9), B => SB, Y => Y2_9_port);
   UND3_9 : ND2 port map( A => Y1_9_port, B => Y2_9_port, Y => Y(9));
   UND1_10 : ND2 port map( A => A(10), B => SEL, Y => Y1_10_port);
   UND2_10 : ND2 port map( A => B(10), B => SB, Y => Y2_10_port);
   UND3_10 : ND2 port map( A => Y1_10_port, B => Y2_10_port, Y => Y(10));
   UND1_11 : ND2 port map( A => A(11), B => SEL, Y => Y1_11_port);
   UND2_11 : ND2 port map( A => B(11), B => SB, Y => Y2_11_port);
   UND3_11 : ND2 port map( A => Y1_11_port, B => Y2_11_port, Y => Y(11));
   UND1_12 : ND2 port map( A => A(12), B => SEL, Y => Y1_12_port);
   UND2_12 : ND2 port map( A => B(12), B => SB, Y => Y2_12_port);
   UND3_12 : ND2 port map( A => Y1_12_port, B => Y2_12_port, Y => Y(12));
   UND1_13 : ND2 port map( A => A(13), B => SEL, Y => Y1_13_port);
   UND2_13 : ND2 port map( A => B(13), B => SB, Y => Y2_13_port);
   UND3_13 : ND2 port map( A => Y1_13_port, B => Y2_13_port, Y => Y(13));
   UND1_14 : ND2 port map( A => A(14), B => SEL, Y => Y1_14_port);
   UND2_14 : ND2 port map( A => B(14), B => SB, Y => Y2_14_port);
   UND3_14 : ND2 port map( A => Y1_14_port, B => Y2_14_port, Y => Y(14));
   UND1_15 : ND2 port map( A => A(15), B => SEL, Y => Y1_15_port);
   UND2_15 : ND2 port map( A => B(15), B => SB, Y => Y2_15_port);
   UND3_15 : ND2 port map( A => Y1_15_port, B => Y2_15_port, Y => Y(15));
   UND1_16 : ND2 port map( A => A(16), B => SEL, Y => Y1_16_port);
   UND2_16 : ND2 port map( A => B(16), B => SB, Y => Y2_16_port);
   UND3_16 : ND2 port map( A => Y1_16_port, B => Y2_16_port, Y => Y(16));
   UND1_17 : ND2 port map( A => A(17), B => SEL, Y => Y1_17_port);
   UND2_17 : ND2 port map( A => B(17), B => SB, Y => Y2_17_port);
   UND3_17 : ND2 port map( A => Y1_17_port, B => Y2_17_port, Y => Y(17));
   UND1_18 : ND2 port map( A => A(18), B => SEL, Y => Y1_18_port);
   UND2_18 : ND2 port map( A => B(18), B => SB, Y => Y2_18_port);
   UND3_18 : ND2 port map( A => Y1_18_port, B => Y2_18_port, Y => Y(18));
   UND1_19 : ND2 port map( A => A(19), B => SEL, Y => Y1_19_port);
   UND2_19 : ND2 port map( A => B(19), B => SB, Y => Y2_19_port);
   UND3_19 : ND2 port map( A => Y1_19_port, B => Y2_19_port, Y => Y(19));
   UND1_20 : ND2 port map( A => A(20), B => SEL, Y => Y1_20_port);
   UND2_20 : ND2 port map( A => B(20), B => SB, Y => Y2_20_port);
   UND3_20 : ND2 port map( A => Y1_20_port, B => Y2_20_port, Y => Y(20));
   UND1_21 : ND2 port map( A => A(21), B => SEL, Y => Y1_21_port);
   UND2_21 : ND2 port map( A => B(21), B => SB, Y => Y2_21_port);
   UND3_21 : ND2 port map( A => Y1_21_port, B => Y2_21_port, Y => Y(21));
   UND1_22 : ND2 port map( A => A(22), B => SEL, Y => Y1_22_port);
   UND2_22 : ND2 port map( A => B(22), B => SB, Y => Y2_22_port);
   UND3_22 : ND2 port map( A => Y1_22_port, B => Y2_22_port, Y => Y(22));
   UND1_23 : ND2 port map( A => A(23), B => SEL, Y => Y1_23_port);
   UND2_23 : ND2 port map( A => B(23), B => SB, Y => Y2_23_port);
   UND3_23 : ND2 port map( A => Y1_23_port, B => Y2_23_port, Y => Y(23));
   UND1_24 : ND2 port map( A => A(24), B => SEL, Y => Y1_24_port);
   UND2_24 : ND2 port map( A => B(24), B => SB, Y => Y2_24_port);
   UND3_24 : ND2 port map( A => Y1_24_port, B => Y2_24_port, Y => Y(24));
   UND1_25 : ND2 port map( A => A(25), B => SEL, Y => Y1_25_port);
   UND2_25 : ND2 port map( A => B(25), B => SB, Y => Y2_25_port);
   UND3_25 : ND2 port map( A => Y1_25_port, B => Y2_25_port, Y => Y(25));
   UND1_26 : ND2 port map( A => A(26), B => SEL, Y => Y1_26_port);
   UND2_26 : ND2 port map( A => B(26), B => SB, Y => Y2_26_port);
   UND3_26 : ND2 port map( A => Y1_26_port, B => Y2_26_port, Y => Y(26));
   UND1_27 : ND2 port map( A => A(27), B => SEL, Y => Y1_27_port);
   UND2_27 : ND2 port map( A => B(27), B => SB, Y => Y2_27_port);
   UND3_27 : ND2 port map( A => Y1_27_port, B => Y2_27_port, Y => Y(27));
   UND1_28 : ND2 port map( A => A(28), B => SEL, Y => Y1_28_port);
   UND2_28 : ND2 port map( A => B(28), B => SB, Y => Y2_28_port);
   UND3_28 : ND2 port map( A => Y1_28_port, B => Y2_28_port, Y => Y(28));
   UND1_29 : ND2 port map( A => A(29), B => SEL, Y => Y1_29_port);
   UND2_29 : ND2 port map( A => B(29), B => SB, Y => Y2_29_port);
   UND3_29 : ND2 port map( A => Y1_29_port, B => Y2_29_port, Y => Y(29));
   UND1_30 : ND2 port map( A => A(30), B => SEL, Y => Y1_30_port);
   UND2_30 : ND2 port map( A => B(30), B => SB, Y => Y2_30_port);
   UND3_30 : ND2 port map( A => Y1_30_port, B => Y2_30_port, Y => Y(30));
   UND1_31 : ND2 port map( A => A(31), B => SEL, Y => Y1_31_port);
   UND2_31 : ND2 port map( A => B(31), B => SB, Y => Y2_31_port);
   UND3_31 : ND2 port map( A => Y1_31_port, B => Y2_31_port, Y => Y(31));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC is

   port( A, B : in std_logic_vector (31 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (31 downto 0));

end ACC;

architecture SYN_STRUCTURAL of ACC is

   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component FD_NBIT32
      port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  
            Q : out std_logic_vector (31 downto 0));
   end component;
   
   component RCA_NBIT32
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_GENERIC_NBIT32
      port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y :
            out std_logic_vector (31 downto 0));
   end component;
   
   signal X_Logic0_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port,
      Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, 
      Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, 
      Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port
      , Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, 
      Y_0_port, OUT_MUX_31_port, OUT_MUX_30_port, OUT_MUX_29_port, 
      OUT_MUX_28_port, OUT_MUX_27_port, OUT_MUX_26_port, OUT_MUX_25_port, 
      OUT_MUX_24_port, OUT_MUX_23_port, OUT_MUX_22_port, OUT_MUX_21_port, 
      OUT_MUX_20_port, OUT_MUX_19_port, OUT_MUX_18_port, OUT_MUX_17_port, 
      OUT_MUX_16_port, OUT_MUX_15_port, OUT_MUX_14_port, OUT_MUX_13_port, 
      OUT_MUX_12_port, OUT_MUX_11_port, OUT_MUX_10_port, OUT_MUX_9_port, 
      OUT_MUX_8_port, OUT_MUX_7_port, OUT_MUX_6_port, OUT_MUX_5_port, 
      OUT_MUX_4_port, OUT_MUX_3_port, OUT_MUX_2_port, OUT_MUX_1_port, 
      OUT_MUX_0_port, OUT_ADD_31_port, OUT_ADD_30_port, OUT_ADD_29_port, 
      OUT_ADD_28_port, OUT_ADD_27_port, OUT_ADD_26_port, OUT_ADD_25_port, 
      OUT_ADD_24_port, OUT_ADD_23_port, OUT_ADD_22_port, OUT_ADD_21_port, 
      OUT_ADD_20_port, OUT_ADD_19_port, OUT_ADD_18_port, OUT_ADD_17_port, 
      OUT_ADD_16_port, OUT_ADD_15_port, OUT_ADD_14_port, OUT_ADD_13_port, 
      OUT_ADD_12_port, OUT_ADD_11_port, OUT_ADD_10_port, OUT_ADD_9_port, 
      OUT_ADD_8_port, OUT_ADD_7_port, OUT_ADD_6_port, OUT_ADD_5_port, 
      OUT_ADD_4_port, OUT_ADD_3_port, OUT_ADD_2_port, OUT_ADD_1_port, 
      OUT_ADD_0_port, RST, n_1032 : std_logic;

begin
   Y <= ( Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   UMUX : MUX21_GENERIC_NBIT32 port map( A(31) => B(31), A(30) => B(30), A(29) 
                           => B(29), A(28) => B(28), A(27) => B(27), A(26) => 
                           B(26), A(25) => B(25), A(24) => B(24), A(23) => 
                           B(23), A(22) => B(22), A(21) => B(21), A(20) => 
                           B(20), A(19) => B(19), A(18) => B(18), A(17) => 
                           B(17), A(16) => B(16), A(15) => B(15), A(14) => 
                           B(14), A(13) => B(13), A(12) => B(12), A(11) => 
                           B(11), A(10) => B(10), A(9) => B(9), A(8) => B(8), 
                           A(7) => B(7), A(6) => B(6), A(5) => B(5), A(4) => 
                           B(4), A(3) => B(3), A(2) => B(2), A(1) => B(1), A(0)
                           => B(0), B(31) => Y_31_port, B(30) => Y_30_port, 
                           B(29) => Y_29_port, B(28) => Y_28_port, B(27) => 
                           Y_27_port, B(26) => Y_26_port, B(25) => Y_25_port, 
                           B(24) => Y_24_port, B(23) => Y_23_port, B(22) => 
                           Y_22_port, B(21) => Y_21_port, B(20) => Y_20_port, 
                           B(19) => Y_19_port, B(18) => Y_18_port, B(17) => 
                           Y_17_port, B(16) => Y_16_port, B(15) => Y_15_port, 
                           B(14) => Y_14_port, B(13) => Y_13_port, B(12) => 
                           Y_12_port, B(11) => Y_11_port, B(10) => Y_10_port, 
                           B(9) => Y_9_port, B(8) => Y_8_port, B(7) => Y_7_port
                           , B(6) => Y_6_port, B(5) => Y_5_port, B(4) => 
                           Y_4_port, B(3) => Y_3_port, B(2) => Y_2_port, B(1) 
                           => Y_1_port, B(0) => Y_0_port, SEL => ACCUMULATE, 
                           Y(31) => OUT_MUX_31_port, Y(30) => OUT_MUX_30_port, 
                           Y(29) => OUT_MUX_29_port, Y(28) => OUT_MUX_28_port, 
                           Y(27) => OUT_MUX_27_port, Y(26) => OUT_MUX_26_port, 
                           Y(25) => OUT_MUX_25_port, Y(24) => OUT_MUX_24_port, 
                           Y(23) => OUT_MUX_23_port, Y(22) => OUT_MUX_22_port, 
                           Y(21) => OUT_MUX_21_port, Y(20) => OUT_MUX_20_port, 
                           Y(19) => OUT_MUX_19_port, Y(18) => OUT_MUX_18_port, 
                           Y(17) => OUT_MUX_17_port, Y(16) => OUT_MUX_16_port, 
                           Y(15) => OUT_MUX_15_port, Y(14) => OUT_MUX_14_port, 
                           Y(13) => OUT_MUX_13_port, Y(12) => OUT_MUX_12_port, 
                           Y(11) => OUT_MUX_11_port, Y(10) => OUT_MUX_10_port, 
                           Y(9) => OUT_MUX_9_port, Y(8) => OUT_MUX_8_port, Y(7)
                           => OUT_MUX_7_port, Y(6) => OUT_MUX_6_port, Y(5) => 
                           OUT_MUX_5_port, Y(4) => OUT_MUX_4_port, Y(3) => 
                           OUT_MUX_3_port, Y(2) => OUT_MUX_2_port, Y(1) => 
                           OUT_MUX_1_port, Y(0) => OUT_MUX_0_port);
   URCA : RCA_NBIT32 port map( A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(31) => OUT_MUX_31_port, B(30) => OUT_MUX_30_port, 
                           B(29) => OUT_MUX_29_port, B(28) => OUT_MUX_28_port, 
                           B(27) => OUT_MUX_27_port, B(26) => OUT_MUX_26_port, 
                           B(25) => OUT_MUX_25_port, B(24) => OUT_MUX_24_port, 
                           B(23) => OUT_MUX_23_port, B(22) => OUT_MUX_22_port, 
                           B(21) => OUT_MUX_21_port, B(20) => OUT_MUX_20_port, 
                           B(19) => OUT_MUX_19_port, B(18) => OUT_MUX_18_port, 
                           B(17) => OUT_MUX_17_port, B(16) => OUT_MUX_16_port, 
                           B(15) => OUT_MUX_15_port, B(14) => OUT_MUX_14_port, 
                           B(13) => OUT_MUX_13_port, B(12) => OUT_MUX_12_port, 
                           B(11) => OUT_MUX_11_port, B(10) => OUT_MUX_10_port, 
                           B(9) => OUT_MUX_9_port, B(8) => OUT_MUX_8_port, B(7)
                           => OUT_MUX_7_port, B(6) => OUT_MUX_6_port, B(5) => 
                           OUT_MUX_5_port, B(4) => OUT_MUX_4_port, B(3) => 
                           OUT_MUX_3_port, B(2) => OUT_MUX_2_port, B(1) => 
                           OUT_MUX_1_port, B(0) => OUT_MUX_0_port, Ci => 
                           X_Logic0_port, S(31) => OUT_ADD_31_port, S(30) => 
                           OUT_ADD_30_port, S(29) => OUT_ADD_29_port, S(28) => 
                           OUT_ADD_28_port, S(27) => OUT_ADD_27_port, S(26) => 
                           OUT_ADD_26_port, S(25) => OUT_ADD_25_port, S(24) => 
                           OUT_ADD_24_port, S(23) => OUT_ADD_23_port, S(22) => 
                           OUT_ADD_22_port, S(21) => OUT_ADD_21_port, S(20) => 
                           OUT_ADD_20_port, S(19) => OUT_ADD_19_port, S(18) => 
                           OUT_ADD_18_port, S(17) => OUT_ADD_17_port, S(16) => 
                           OUT_ADD_16_port, S(15) => OUT_ADD_15_port, S(14) => 
                           OUT_ADD_14_port, S(13) => OUT_ADD_13_port, S(12) => 
                           OUT_ADD_12_port, S(11) => OUT_ADD_11_port, S(10) => 
                           OUT_ADD_10_port, S(9) => OUT_ADD_9_port, S(8) => 
                           OUT_ADD_8_port, S(7) => OUT_ADD_7_port, S(6) => 
                           OUT_ADD_6_port, S(5) => OUT_ADD_5_port, S(4) => 
                           OUT_ADD_4_port, S(3) => OUT_ADD_3_port, S(2) => 
                           OUT_ADD_2_port, S(1) => OUT_ADD_1_port, S(0) => 
                           OUT_ADD_0_port, Co => n_1032);
   UFD : FD_NBIT32 port map( D(31) => OUT_ADD_31_port, D(30) => OUT_ADD_30_port
                           , D(29) => OUT_ADD_29_port, D(28) => OUT_ADD_28_port
                           , D(27) => OUT_ADD_27_port, D(26) => OUT_ADD_26_port
                           , D(25) => OUT_ADD_25_port, D(24) => OUT_ADD_24_port
                           , D(23) => OUT_ADD_23_port, D(22) => OUT_ADD_22_port
                           , D(21) => OUT_ADD_21_port, D(20) => OUT_ADD_20_port
                           , D(19) => OUT_ADD_19_port, D(18) => OUT_ADD_18_port
                           , D(17) => OUT_ADD_17_port, D(16) => OUT_ADD_16_port
                           , D(15) => OUT_ADD_15_port, D(14) => OUT_ADD_14_port
                           , D(13) => OUT_ADD_13_port, D(12) => OUT_ADD_12_port
                           , D(11) => OUT_ADD_11_port, D(10) => OUT_ADD_10_port
                           , D(9) => OUT_ADD_9_port, D(8) => OUT_ADD_8_port, 
                           D(7) => OUT_ADD_7_port, D(6) => OUT_ADD_6_port, D(5)
                           => OUT_ADD_5_port, D(4) => OUT_ADD_4_port, D(3) => 
                           OUT_ADD_3_port, D(2) => OUT_ADD_2_port, D(1) => 
                           OUT_ADD_1_port, D(0) => OUT_ADD_0_port, CK => CLK, 
                           RESET => RST, Q(31) => Y_31_port, Q(30) => Y_30_port
                           , Q(29) => Y_29_port, Q(28) => Y_28_port, Q(27) => 
                           Y_27_port, Q(26) => Y_26_port, Q(25) => Y_25_port, 
                           Q(24) => Y_24_port, Q(23) => Y_23_port, Q(22) => 
                           Y_22_port, Q(21) => Y_21_port, Q(20) => Y_20_port, 
                           Q(19) => Y_19_port, Q(18) => Y_18_port, Q(17) => 
                           Y_17_port, Q(16) => Y_16_port, Q(15) => Y_15_port, 
                           Q(14) => Y_14_port, Q(13) => Y_13_port, Q(12) => 
                           Y_12_port, Q(11) => Y_11_port, Q(10) => Y_10_port, 
                           Q(9) => Y_9_port, Q(8) => Y_8_port, Q(7) => Y_7_port
                           , Q(6) => Y_6_port, Q(5) => Y_5_port, Q(4) => 
                           Y_4_port, Q(3) => Y_3_port, Q(2) => Y_2_port, Q(1) 
                           => Y_1_port, Q(0) => Y_0_port);
   UIV : IV port map( A => RST_n, Y => RST);
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
