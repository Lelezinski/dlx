
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC_DW01_add_0 is

   port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (31 downto 0);  CO : out std_logic);

end ACC_DW01_add_0;

architecture SYN_rpl of ACC_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_31_port, carry_30_port, carry_29_port, carry_28_port, 
      carry_27_port, carry_26_port, carry_25_port, carry_24_port, carry_23_port
      , carry_22_port, carry_21_port, carry_20_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           n_1002, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC is

   port( A, B : in std_logic_vector (31 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (31 downto 0));

end ACC;

architecture SYN_BEHAVIORAL of ACC is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component ACC_DW01_add_0
      port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (31 downto 0);  CO : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, 
      OUT_ADD_31_port, OUT_ADD_30_port, OUT_ADD_29_port, OUT_ADD_28_port, 
      OUT_ADD_27_port, OUT_ADD_26_port, OUT_ADD_25_port, OUT_ADD_24_port, 
      OUT_ADD_23_port, OUT_ADD_22_port, OUT_ADD_21_port, OUT_ADD_20_port, 
      OUT_ADD_19_port, OUT_ADD_18_port, OUT_ADD_17_port, OUT_ADD_16_port, 
      OUT_ADD_15_port, OUT_ADD_14_port, OUT_ADD_13_port, OUT_ADD_12_port, 
      OUT_ADD_11_port, OUT_ADD_10_port, OUT_ADD_9_port, OUT_ADD_8_port, 
      OUT_ADD_7_port, OUT_ADD_6_port, OUT_ADD_5_port, OUT_ADD_4_port, 
      OUT_ADD_3_port, OUT_ADD_2_port, OUT_ADD_1_port, OUT_ADD_0_port, n1, n101,
      n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, 
      n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009,
      n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, 
      n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, 
      n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, n_1035 : 
      std_logic;

begin
   Y <= ( Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   n1 <= '0';
   REG_reg_0_inst : DFFR_X1 port map( D => n132, CK => CLK, RN => RST_n, Q => 
                           Y_0_port, QN => n_1003);
   REG_reg_1_inst : DFFR_X1 port map( D => n131, CK => CLK, RN => RST_n, Q => 
                           Y_1_port, QN => n_1004);
   REG_reg_2_inst : DFFR_X1 port map( D => n130, CK => CLK, RN => RST_n, Q => 
                           Y_2_port, QN => n_1005);
   REG_reg_3_inst : DFFR_X1 port map( D => n129, CK => CLK, RN => RST_n, Q => 
                           Y_3_port, QN => n_1006);
   REG_reg_4_inst : DFFR_X1 port map( D => n128, CK => CLK, RN => RST_n, Q => 
                           Y_4_port, QN => n_1007);
   REG_reg_5_inst : DFFR_X1 port map( D => n127, CK => CLK, RN => RST_n, Q => 
                           Y_5_port, QN => n_1008);
   REG_reg_6_inst : DFFR_X1 port map( D => n126, CK => CLK, RN => RST_n, Q => 
                           Y_6_port, QN => n_1009);
   REG_reg_7_inst : DFFR_X1 port map( D => n125, CK => CLK, RN => RST_n, Q => 
                           Y_7_port, QN => n_1010);
   REG_reg_8_inst : DFFR_X1 port map( D => n124, CK => CLK, RN => RST_n, Q => 
                           Y_8_port, QN => n_1011);
   REG_reg_9_inst : DFFR_X1 port map( D => n123, CK => CLK, RN => RST_n, Q => 
                           Y_9_port, QN => n_1012);
   REG_reg_10_inst : DFFR_X1 port map( D => n122, CK => CLK, RN => RST_n, Q => 
                           Y_10_port, QN => n_1013);
   REG_reg_11_inst : DFFR_X1 port map( D => n121, CK => CLK, RN => RST_n, Q => 
                           Y_11_port, QN => n_1014);
   REG_reg_12_inst : DFFR_X1 port map( D => n120, CK => CLK, RN => RST_n, Q => 
                           Y_12_port, QN => n_1015);
   REG_reg_13_inst : DFFR_X1 port map( D => n119, CK => CLK, RN => RST_n, Q => 
                           Y_13_port, QN => n_1016);
   REG_reg_14_inst : DFFR_X1 port map( D => n118, CK => CLK, RN => RST_n, Q => 
                           Y_14_port, QN => n_1017);
   REG_reg_15_inst : DFFR_X1 port map( D => n117, CK => CLK, RN => RST_n, Q => 
                           Y_15_port, QN => n_1018);
   REG_reg_16_inst : DFFR_X1 port map( D => n116, CK => CLK, RN => RST_n, Q => 
                           Y_16_port, QN => n_1019);
   REG_reg_17_inst : DFFR_X1 port map( D => n115, CK => CLK, RN => RST_n, Q => 
                           Y_17_port, QN => n_1020);
   REG_reg_18_inst : DFFR_X1 port map( D => n114, CK => CLK, RN => RST_n, Q => 
                           Y_18_port, QN => n_1021);
   REG_reg_19_inst : DFFR_X1 port map( D => n113, CK => CLK, RN => RST_n, Q => 
                           Y_19_port, QN => n_1022);
   REG_reg_20_inst : DFFR_X1 port map( D => n112, CK => CLK, RN => RST_n, Q => 
                           Y_20_port, QN => n_1023);
   REG_reg_21_inst : DFFR_X1 port map( D => n111, CK => CLK, RN => RST_n, Q => 
                           Y_21_port, QN => n_1024);
   REG_reg_22_inst : DFFR_X1 port map( D => n110, CK => CLK, RN => RST_n, Q => 
                           Y_22_port, QN => n_1025);
   REG_reg_23_inst : DFFR_X1 port map( D => n109, CK => CLK, RN => RST_n, Q => 
                           Y_23_port, QN => n_1026);
   REG_reg_24_inst : DFFR_X1 port map( D => n108, CK => CLK, RN => RST_n, Q => 
                           Y_24_port, QN => n_1027);
   REG_reg_25_inst : DFFR_X1 port map( D => n107, CK => CLK, RN => RST_n, Q => 
                           Y_25_port, QN => n_1028);
   REG_reg_26_inst : DFFR_X1 port map( D => n106, CK => CLK, RN => RST_n, Q => 
                           Y_26_port, QN => n_1029);
   REG_reg_27_inst : DFFR_X1 port map( D => n105, CK => CLK, RN => RST_n, Q => 
                           Y_27_port, QN => n_1030);
   REG_reg_28_inst : DFFR_X1 port map( D => n104, CK => CLK, RN => RST_n, Q => 
                           Y_28_port, QN => n_1031);
   REG_reg_29_inst : DFFR_X1 port map( D => n103, CK => CLK, RN => RST_n, Q => 
                           Y_29_port, QN => n_1032);
   REG_reg_30_inst : DFFR_X1 port map( D => n102, CK => CLK, RN => RST_n, Q => 
                           Y_30_port, QN => n_1033);
   REG_reg_31_inst : DFFR_X1 port map( D => n101, CK => CLK, RN => RST_n, Q => 
                           Y_31_port, QN => n_1034);
   add_43 : ACC_DW01_add_0 port map( A(31) => A(31), A(30) => A(30), A(29) => 
                           A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => n133, B(30) => n134, B(29) => n135
                           , B(28) => n136, B(27) => n137, B(26) => n138, B(25)
                           => n139, B(24) => n140, B(23) => n141, B(22) => n142
                           , B(21) => n143, B(20) => n144, B(19) => n145, B(18)
                           => n146, B(17) => n147, B(16) => n148, B(15) => n149
                           , B(14) => n150, B(13) => n151, B(12) => n152, B(11)
                           => n153, B(10) => n154, B(9) => n155, B(8) => n156, 
                           B(7) => n157, B(6) => n158, B(5) => n159, B(4) => 
                           n160, B(3) => n161, B(2) => n162, B(1) => n163, B(0)
                           => n164, CI => n1, SUM(31) => OUT_ADD_31_port, 
                           SUM(30) => OUT_ADD_30_port, SUM(29) => 
                           OUT_ADD_29_port, SUM(28) => OUT_ADD_28_port, SUM(27)
                           => OUT_ADD_27_port, SUM(26) => OUT_ADD_26_port, 
                           SUM(25) => OUT_ADD_25_port, SUM(24) => 
                           OUT_ADD_24_port, SUM(23) => OUT_ADD_23_port, SUM(22)
                           => OUT_ADD_22_port, SUM(21) => OUT_ADD_21_port, 
                           SUM(20) => OUT_ADD_20_port, SUM(19) => 
                           OUT_ADD_19_port, SUM(18) => OUT_ADD_18_port, SUM(17)
                           => OUT_ADD_17_port, SUM(16) => OUT_ADD_16_port, 
                           SUM(15) => OUT_ADD_15_port, SUM(14) => 
                           OUT_ADD_14_port, SUM(13) => OUT_ADD_13_port, SUM(12)
                           => OUT_ADD_12_port, SUM(11) => OUT_ADD_11_port, 
                           SUM(10) => OUT_ADD_10_port, SUM(9) => OUT_ADD_9_port
                           , SUM(8) => OUT_ADD_8_port, SUM(7) => OUT_ADD_7_port
                           , SUM(6) => OUT_ADD_6_port, SUM(5) => OUT_ADD_5_port
                           , SUM(4) => OUT_ADD_4_port, SUM(3) => OUT_ADD_3_port
                           , SUM(2) => OUT_ADD_2_port, SUM(1) => OUT_ADD_1_port
                           , SUM(0) => OUT_ADD_0_port, CO => n_1035);
   U133 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => 
                           n164);
   U134 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => 
                           n163);
   U135 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => 
                           n162);
   U136 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => 
                           n161);
   U137 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => 
                           n160);
   U138 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => 
                           n159);
   U139 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => 
                           n158);
   U140 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => 
                           n157);
   U141 : MUX2_X1 port map( A => B(8), B => Y_8_port, S => ACCUMULATE, Z => 
                           n156);
   U142 : MUX2_X1 port map( A => B(9), B => Y_9_port, S => ACCUMULATE, Z => 
                           n155);
   U143 : MUX2_X1 port map( A => B(10), B => Y_10_port, S => ACCUMULATE, Z => 
                           n154);
   U144 : MUX2_X1 port map( A => B(11), B => Y_11_port, S => ACCUMULATE, Z => 
                           n153);
   U145 : MUX2_X1 port map( A => B(12), B => Y_12_port, S => ACCUMULATE, Z => 
                           n152);
   U146 : MUX2_X1 port map( A => B(13), B => Y_13_port, S => ACCUMULATE, Z => 
                           n151);
   U147 : MUX2_X1 port map( A => B(14), B => Y_14_port, S => ACCUMULATE, Z => 
                           n150);
   U148 : MUX2_X1 port map( A => B(15), B => Y_15_port, S => ACCUMULATE, Z => 
                           n149);
   U149 : MUX2_X1 port map( A => B(16), B => Y_16_port, S => ACCUMULATE, Z => 
                           n148);
   U150 : MUX2_X1 port map( A => B(17), B => Y_17_port, S => ACCUMULATE, Z => 
                           n147);
   U151 : MUX2_X1 port map( A => B(18), B => Y_18_port, S => ACCUMULATE, Z => 
                           n146);
   U152 : MUX2_X1 port map( A => B(19), B => Y_19_port, S => ACCUMULATE, Z => 
                           n145);
   U153 : MUX2_X1 port map( A => B(20), B => Y_20_port, S => ACCUMULATE, Z => 
                           n144);
   U154 : MUX2_X1 port map( A => B(21), B => Y_21_port, S => ACCUMULATE, Z => 
                           n143);
   U155 : MUX2_X1 port map( A => B(22), B => Y_22_port, S => ACCUMULATE, Z => 
                           n142);
   U156 : MUX2_X1 port map( A => B(23), B => Y_23_port, S => ACCUMULATE, Z => 
                           n141);
   U157 : MUX2_X1 port map( A => B(24), B => Y_24_port, S => ACCUMULATE, Z => 
                           n140);
   U158 : MUX2_X1 port map( A => B(25), B => Y_25_port, S => ACCUMULATE, Z => 
                           n139);
   U159 : MUX2_X1 port map( A => B(26), B => Y_26_port, S => ACCUMULATE, Z => 
                           n138);
   U160 : MUX2_X1 port map( A => B(27), B => Y_27_port, S => ACCUMULATE, Z => 
                           n137);
   U161 : MUX2_X1 port map( A => B(28), B => Y_28_port, S => ACCUMULATE, Z => 
                           n136);
   U162 : MUX2_X1 port map( A => B(29), B => Y_29_port, S => ACCUMULATE, Z => 
                           n135);
   U163 : MUX2_X1 port map( A => B(30), B => Y_30_port, S => ACCUMULATE, Z => 
                           n134);
   U164 : MUX2_X1 port map( A => B(31), B => Y_31_port, S => ACCUMULATE, Z => 
                           n133);
   U165 : MUX2_X1 port map( A => OUT_ADD_0_port, B => Y_0_port, S => ACC_EN_n, 
                           Z => n132);
   U166 : MUX2_X1 port map( A => OUT_ADD_1_port, B => Y_1_port, S => ACC_EN_n, 
                           Z => n131);
   U167 : MUX2_X1 port map( A => OUT_ADD_2_port, B => Y_2_port, S => ACC_EN_n, 
                           Z => n130);
   U168 : MUX2_X1 port map( A => OUT_ADD_3_port, B => Y_3_port, S => ACC_EN_n, 
                           Z => n129);
   U169 : MUX2_X1 port map( A => OUT_ADD_4_port, B => Y_4_port, S => ACC_EN_n, 
                           Z => n128);
   U170 : MUX2_X1 port map( A => OUT_ADD_5_port, B => Y_5_port, S => ACC_EN_n, 
                           Z => n127);
   U171 : MUX2_X1 port map( A => OUT_ADD_6_port, B => Y_6_port, S => ACC_EN_n, 
                           Z => n126);
   U172 : MUX2_X1 port map( A => OUT_ADD_7_port, B => Y_7_port, S => ACC_EN_n, 
                           Z => n125);
   U173 : MUX2_X1 port map( A => OUT_ADD_8_port, B => Y_8_port, S => ACC_EN_n, 
                           Z => n124);
   U174 : MUX2_X1 port map( A => OUT_ADD_9_port, B => Y_9_port, S => ACC_EN_n, 
                           Z => n123);
   U175 : MUX2_X1 port map( A => OUT_ADD_10_port, B => Y_10_port, S => ACC_EN_n
                           , Z => n122);
   U176 : MUX2_X1 port map( A => OUT_ADD_11_port, B => Y_11_port, S => ACC_EN_n
                           , Z => n121);
   U177 : MUX2_X1 port map( A => OUT_ADD_12_port, B => Y_12_port, S => ACC_EN_n
                           , Z => n120);
   U178 : MUX2_X1 port map( A => OUT_ADD_13_port, B => Y_13_port, S => ACC_EN_n
                           , Z => n119);
   U179 : MUX2_X1 port map( A => OUT_ADD_14_port, B => Y_14_port, S => ACC_EN_n
                           , Z => n118);
   U180 : MUX2_X1 port map( A => OUT_ADD_15_port, B => Y_15_port, S => ACC_EN_n
                           , Z => n117);
   U181 : MUX2_X1 port map( A => OUT_ADD_16_port, B => Y_16_port, S => ACC_EN_n
                           , Z => n116);
   U182 : MUX2_X1 port map( A => OUT_ADD_17_port, B => Y_17_port, S => ACC_EN_n
                           , Z => n115);
   U183 : MUX2_X1 port map( A => OUT_ADD_18_port, B => Y_18_port, S => ACC_EN_n
                           , Z => n114);
   U184 : MUX2_X1 port map( A => OUT_ADD_19_port, B => Y_19_port, S => ACC_EN_n
                           , Z => n113);
   U185 : MUX2_X1 port map( A => OUT_ADD_20_port, B => Y_20_port, S => ACC_EN_n
                           , Z => n112);
   U186 : MUX2_X1 port map( A => OUT_ADD_21_port, B => Y_21_port, S => ACC_EN_n
                           , Z => n111);
   U187 : MUX2_X1 port map( A => OUT_ADD_22_port, B => Y_22_port, S => ACC_EN_n
                           , Z => n110);
   U188 : MUX2_X1 port map( A => OUT_ADD_23_port, B => Y_23_port, S => ACC_EN_n
                           , Z => n109);
   U189 : MUX2_X1 port map( A => OUT_ADD_24_port, B => Y_24_port, S => ACC_EN_n
                           , Z => n108);
   U190 : MUX2_X1 port map( A => OUT_ADD_25_port, B => Y_25_port, S => ACC_EN_n
                           , Z => n107);
   U191 : MUX2_X1 port map( A => OUT_ADD_26_port, B => Y_26_port, S => ACC_EN_n
                           , Z => n106);
   U192 : MUX2_X1 port map( A => OUT_ADD_27_port, B => Y_27_port, S => ACC_EN_n
                           , Z => n105);
   U193 : MUX2_X1 port map( A => OUT_ADD_28_port, B => Y_28_port, S => ACC_EN_n
                           , Z => n104);
   U194 : MUX2_X1 port map( A => OUT_ADD_29_port, B => Y_29_port, S => ACC_EN_n
                           , Z => n103);
   U195 : MUX2_X1 port map( A => OUT_ADD_30_port, B => Y_30_port, S => ACC_EN_n
                           , Z => n102);
   U196 : MUX2_X1 port map( A => OUT_ADD_31_port, B => Y_31_port, S => ACC_EN_n
                           , Z => n101);

end SYN_BEHAVIORAL;
