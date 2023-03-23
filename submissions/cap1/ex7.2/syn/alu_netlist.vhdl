
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU;

package body CONV_PACK_ALU is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW01_add_0 is

   port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (13 downto 0);  CO : out std_logic);

end ALU_DW01_add_0;

architecture SYN_cla of ALU_DW01_add_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26 : 
      std_logic;

begin
   SUM <= ( SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U2 : INV_X1 port map( A => n20, ZN => n2);
   U3 : INV_X1 port map( A => n9, ZN => n4);
   U4 : INV_X1 port map( A => n22, ZN => n3);
   U5 : INV_X1 port map( A => n14, ZN => n1);
   U6 : INV_X1 port map( A => n12, ZN => n5);
   U7 : NAND2_X1 port map( A1 => A(7), A2 => B(7), ZN => n26);
   U8 : XOR2_X1 port map( A => n6, B => n7, Z => SUM_9_port);
   U9 : NOR2_X1 port map( A1 => n8, A2 => n9, ZN => n7);
   U10 : XOR2_X1 port map( A => n10, B => n26, Z => SUM_8_port);
   U11 : NAND2_X1 port map( A1 => n5, A2 => n11, ZN => n10);
   U12 : XOR2_X1 port map( A => B(7), B => A(7), Z => SUM_7_port);
   U13 : XOR2_X1 port map( A => n13, B => B(13), Z => SUM_13_port);
   U14 : OAI21_X1 port map( B1 => n14, B2 => n15, A => n16, ZN => n13);
   U15 : XOR2_X1 port map( A => n17, B => n15, Z => SUM_12_port);
   U16 : AOI21_X1 port map( B1 => n2, B2 => n18, A => n19, ZN => n15);
   U17 : NAND2_X1 port map( A1 => n1, A2 => n16, ZN => n17);
   U18 : NAND2_X1 port map( A1 => B(12), A2 => A(12), ZN => n16);
   U19 : NOR2_X1 port map( A1 => B(12), A2 => A(12), ZN => n14);
   U20 : XOR2_X1 port map( A => n18, B => n21, Z => SUM_11_port);
   U21 : NOR2_X1 port map( A1 => n19, A2 => n20, ZN => n21);
   U22 : NOR2_X1 port map( A1 => B(11), A2 => A(11), ZN => n20);
   U23 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => n19);
   U24 : OAI21_X1 port map( B1 => n22, B2 => n23, A => n24, ZN => n18);
   U25 : XOR2_X1 port map( A => n25, B => n23, Z => SUM_10_port);
   U26 : AOI21_X1 port map( B1 => n6, B2 => n4, A => n8, ZN => n23);
   U27 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => n8);
   U28 : NOR2_X1 port map( A1 => B(9), A2 => A(9), ZN => n9);
   U29 : OAI21_X1 port map( B1 => n26, B2 => n12, A => n11, ZN => n6);
   U30 : NAND2_X1 port map( A1 => B(8), A2 => A(8), ZN => n11);
   U31 : NOR2_X1 port map( A1 => B(8), A2 => A(8), ZN => n12);
   U32 : NAND2_X1 port map( A1 => n3, A2 => n24, ZN => n25);
   U33 : NAND2_X1 port map( A1 => B(10), A2 => A(10), ZN => n24);
   U34 : NOR2_X1 port map( A1 => B(10), A2 => A(10), ZN => n22);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW02_mult_0 is

   port( A, B : in std_logic_vector (7 downto 0);  TC : in std_logic;  PRODUCT 
         : out std_logic_vector (15 downto 0));

end ALU_DW02_mult_0;

architecture SYN_csa of ALU_DW02_mult_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_DW01_add_0
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, ab_7_7_port, ab_7_6_port, ab_7_5_port, ab_7_4_port, 
      ab_7_3_port, ab_7_2_port, ab_7_1_port, ab_7_0_port, ab_6_7_port, 
      ab_6_6_port, ab_6_5_port, ab_6_4_port, ab_6_3_port, ab_6_2_port, 
      ab_6_1_port, ab_6_0_port, ab_5_7_port, ab_5_6_port, ab_5_5_port, 
      ab_5_4_port, ab_5_3_port, ab_5_2_port, ab_5_1_port, ab_5_0_port, 
      ab_4_7_port, ab_4_6_port, ab_4_5_port, ab_4_4_port, ab_4_3_port, 
      ab_4_2_port, ab_4_1_port, ab_4_0_port, ab_3_7_port, ab_3_6_port, 
      ab_3_5_port, ab_3_4_port, ab_3_3_port, ab_3_2_port, ab_3_1_port, 
      ab_3_0_port, ab_2_7_port, ab_2_6_port, ab_2_5_port, ab_2_4_port, 
      ab_2_3_port, ab_2_2_port, ab_2_1_port, ab_2_0_port, ab_1_7_port, 
      ab_1_6_port, ab_1_5_port, ab_1_4_port, ab_1_3_port, ab_1_2_port, 
      ab_1_1_port, ab_1_0_port, ab_0_7_port, ab_0_6_port, ab_0_5_port, 
      ab_0_4_port, ab_0_3_port, ab_0_2_port, ab_0_1_port, CARRYB_7_6_port, 
      CARRYB_7_5_port, CARRYB_7_4_port, CARRYB_7_3_port, CARRYB_7_2_port, 
      CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_6_port, CARRYB_6_5_port, 
      CARRYB_6_4_port, CARRYB_6_3_port, CARRYB_6_2_port, CARRYB_6_1_port, 
      CARRYB_6_0_port, CARRYB_5_6_port, CARRYB_5_5_port, CARRYB_5_4_port, 
      CARRYB_5_3_port, CARRYB_5_2_port, CARRYB_5_1_port, CARRYB_5_0_port, 
      CARRYB_4_6_port, CARRYB_4_5_port, CARRYB_4_4_port, CARRYB_4_3_port, 
      CARRYB_4_2_port, CARRYB_4_1_port, CARRYB_4_0_port, CARRYB_3_6_port, 
      CARRYB_3_5_port, CARRYB_3_4_port, CARRYB_3_3_port, CARRYB_3_2_port, 
      CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_6_port, CARRYB_2_5_port, 
      CARRYB_2_4_port, CARRYB_2_3_port, CARRYB_2_2_port, CARRYB_2_1_port, 
      CARRYB_2_0_port, SUMB_7_6_port, SUMB_7_5_port, SUMB_7_4_port, 
      SUMB_7_3_port, SUMB_7_2_port, SUMB_7_1_port, SUMB_7_0_port, SUMB_6_6_port
      , SUMB_6_5_port, SUMB_6_4_port, SUMB_6_3_port, SUMB_6_2_port, 
      SUMB_6_1_port, SUMB_5_6_port, SUMB_5_5_port, SUMB_5_4_port, SUMB_5_3_port
      , SUMB_5_2_port, SUMB_5_1_port, SUMB_4_6_port, SUMB_4_5_port, 
      SUMB_4_4_port, SUMB_4_3_port, SUMB_4_2_port, SUMB_4_1_port, SUMB_3_6_port
      , SUMB_3_5_port, SUMB_3_4_port, SUMB_3_3_port, SUMB_3_2_port, 
      SUMB_3_1_port, SUMB_2_6_port, SUMB_2_5_port, SUMB_2_4_port, SUMB_2_3_port
      , SUMB_2_2_port, SUMB_2_1_port, A1_4_port, A1_3_port, A1_2_port, 
      A1_1_port, A1_0_port, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n_1011 : std_logic;

begin
   
   X_Logic0_port <= '0';
   S4_0 : FA_X1 port map( A => ab_7_0_port, B => CARRYB_6_0_port, CI => 
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => 
                           SUMB_7_0_port);
   S4_1 : FA_X1 port map( A => ab_7_1_port, B => CARRYB_6_1_port, CI => 
                           SUMB_6_2_port, CO => CARRYB_7_1_port, S => 
                           SUMB_7_1_port);
   S4_2 : FA_X1 port map( A => ab_7_2_port, B => CARRYB_6_2_port, CI => 
                           SUMB_6_3_port, CO => CARRYB_7_2_port, S => 
                           SUMB_7_2_port);
   S4_3 : FA_X1 port map( A => ab_7_3_port, B => CARRYB_6_3_port, CI => 
                           SUMB_6_4_port, CO => CARRYB_7_3_port, S => 
                           SUMB_7_3_port);
   S4_4 : FA_X1 port map( A => ab_7_4_port, B => CARRYB_6_4_port, CI => 
                           SUMB_6_5_port, CO => CARRYB_7_4_port, S => 
                           SUMB_7_4_port);
   S4_5 : FA_X1 port map( A => ab_7_5_port, B => CARRYB_6_5_port, CI => 
                           SUMB_6_6_port, CO => CARRYB_7_5_port, S => 
                           SUMB_7_5_port);
   S5_6 : FA_X1 port map( A => ab_7_6_port, B => CARRYB_6_6_port, CI => 
                           ab_6_7_port, CO => CARRYB_7_6_port, S => 
                           SUMB_7_6_port);
   S1_6_0 : FA_X1 port map( A => ab_6_0_port, B => CARRYB_5_0_port, CI => 
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => A1_4_port
                           );
   S2_6_1 : FA_X1 port map( A => ab_6_1_port, B => CARRYB_5_1_port, CI => 
                           SUMB_5_2_port, CO => CARRYB_6_1_port, S => 
                           SUMB_6_1_port);
   S2_6_2 : FA_X1 port map( A => ab_6_2_port, B => CARRYB_5_2_port, CI => 
                           SUMB_5_3_port, CO => CARRYB_6_2_port, S => 
                           SUMB_6_2_port);
   S2_6_3 : FA_X1 port map( A => ab_6_3_port, B => CARRYB_5_3_port, CI => 
                           SUMB_5_4_port, CO => CARRYB_6_3_port, S => 
                           SUMB_6_3_port);
   S2_6_4 : FA_X1 port map( A => ab_6_4_port, B => CARRYB_5_4_port, CI => 
                           SUMB_5_5_port, CO => CARRYB_6_4_port, S => 
                           SUMB_6_4_port);
   S2_6_5 : FA_X1 port map( A => ab_6_5_port, B => CARRYB_5_5_port, CI => 
                           SUMB_5_6_port, CO => CARRYB_6_5_port, S => 
                           SUMB_6_5_port);
   S3_6_6 : FA_X1 port map( A => ab_6_6_port, B => CARRYB_5_6_port, CI => 
                           ab_5_7_port, CO => CARRYB_6_6_port, S => 
                           SUMB_6_6_port);
   S1_5_0 : FA_X1 port map( A => ab_5_0_port, B => CARRYB_4_0_port, CI => 
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : FA_X1 port map( A => ab_5_1_port, B => CARRYB_4_1_port, CI => 
                           SUMB_4_2_port, CO => CARRYB_5_1_port, S => 
                           SUMB_5_1_port);
   S2_5_2 : FA_X1 port map( A => ab_5_2_port, B => CARRYB_4_2_port, CI => 
                           SUMB_4_3_port, CO => CARRYB_5_2_port, S => 
                           SUMB_5_2_port);
   S2_5_3 : FA_X1 port map( A => ab_5_3_port, B => CARRYB_4_3_port, CI => 
                           SUMB_4_4_port, CO => CARRYB_5_3_port, S => 
                           SUMB_5_3_port);
   S2_5_4 : FA_X1 port map( A => ab_5_4_port, B => CARRYB_4_4_port, CI => 
                           SUMB_4_5_port, CO => CARRYB_5_4_port, S => 
                           SUMB_5_4_port);
   S2_5_5 : FA_X1 port map( A => ab_5_5_port, B => CARRYB_4_5_port, CI => 
                           SUMB_4_6_port, CO => CARRYB_5_5_port, S => 
                           SUMB_5_5_port);
   S3_5_6 : FA_X1 port map( A => ab_5_6_port, B => CARRYB_4_6_port, CI => 
                           ab_4_7_port, CO => CARRYB_5_6_port, S => 
                           SUMB_5_6_port);
   S1_4_0 : FA_X1 port map( A => ab_4_0_port, B => CARRYB_3_0_port, CI => 
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => A1_2_port
                           );
   S2_4_1 : FA_X1 port map( A => ab_4_1_port, B => CARRYB_3_1_port, CI => 
                           SUMB_3_2_port, CO => CARRYB_4_1_port, S => 
                           SUMB_4_1_port);
   S2_4_2 : FA_X1 port map( A => ab_4_2_port, B => CARRYB_3_2_port, CI => 
                           SUMB_3_3_port, CO => CARRYB_4_2_port, S => 
                           SUMB_4_2_port);
   S2_4_3 : FA_X1 port map( A => ab_4_3_port, B => CARRYB_3_3_port, CI => 
                           SUMB_3_4_port, CO => CARRYB_4_3_port, S => 
                           SUMB_4_3_port);
   S2_4_4 : FA_X1 port map( A => ab_4_4_port, B => CARRYB_3_4_port, CI => 
                           SUMB_3_5_port, CO => CARRYB_4_4_port, S => 
                           SUMB_4_4_port);
   S2_4_5 : FA_X1 port map( A => ab_4_5_port, B => CARRYB_3_5_port, CI => 
                           SUMB_3_6_port, CO => CARRYB_4_5_port, S => 
                           SUMB_4_5_port);
   S3_4_6 : FA_X1 port map( A => ab_4_6_port, B => CARRYB_3_6_port, CI => 
                           ab_3_7_port, CO => CARRYB_4_6_port, S => 
                           SUMB_4_6_port);
   S1_3_0 : FA_X1 port map( A => ab_3_0_port, B => CARRYB_2_0_port, CI => 
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : FA_X1 port map( A => ab_3_1_port, B => CARRYB_2_1_port, CI => 
                           SUMB_2_2_port, CO => CARRYB_3_1_port, S => 
                           SUMB_3_1_port);
   S2_3_2 : FA_X1 port map( A => ab_3_2_port, B => CARRYB_2_2_port, CI => 
                           SUMB_2_3_port, CO => CARRYB_3_2_port, S => 
                           SUMB_3_2_port);
   S2_3_3 : FA_X1 port map( A => ab_3_3_port, B => CARRYB_2_3_port, CI => 
                           SUMB_2_4_port, CO => CARRYB_3_3_port, S => 
                           SUMB_3_3_port);
   S2_3_4 : FA_X1 port map( A => ab_3_4_port, B => CARRYB_2_4_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_3_4_port, S => 
                           SUMB_3_4_port);
   S2_3_5 : FA_X1 port map( A => ab_3_5_port, B => CARRYB_2_5_port, CI => 
                           SUMB_2_6_port, CO => CARRYB_3_5_port, S => 
                           SUMB_3_5_port);
   S3_3_6 : FA_X1 port map( A => ab_3_6_port, B => CARRYB_2_6_port, CI => 
                           ab_2_7_port, CO => CARRYB_3_6_port, S => 
                           SUMB_3_6_port);
   S1_2_0 : FA_X1 port map( A => ab_2_0_port, B => n7, CI => n14, CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   S2_2_1 : FA_X1 port map( A => ab_2_1_port, B => n6, CI => n13, CO => 
                           CARRYB_2_1_port, S => SUMB_2_1_port);
   S2_2_2 : FA_X1 port map( A => ab_2_2_port, B => n5, CI => n12, CO => 
                           CARRYB_2_2_port, S => SUMB_2_2_port);
   S2_2_3 : FA_X1 port map( A => ab_2_3_port, B => n4, CI => n11, CO => 
                           CARRYB_2_3_port, S => SUMB_2_3_port);
   S2_2_4 : FA_X1 port map( A => ab_2_4_port, B => n3, CI => n10, CO => 
                           CARRYB_2_4_port, S => SUMB_2_4_port);
   S2_2_5 : FA_X1 port map( A => ab_2_5_port, B => n2, CI => n9, CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   S3_2_6 : FA_X1 port map( A => ab_2_6_port, B => n8, CI => ab_1_7_port, CO =>
                           CARRYB_2_6_port, S => SUMB_2_6_port);
   FS_1 : ALU_DW01_add_0 port map( A(13) => n46, A(12) => n17, A(11) => n23, 
                           A(10) => n19, A(9) => n24, A(8) => n18, A(7) => n15,
                           A(6) => n28, A(5) => SUMB_7_0_port, A(4) => 
                           A1_4_port, A(3) => A1_3_port, A(2) => A1_2_port, 
                           A(1) => A1_1_port, A(0) => A1_0_port, B(13) => n27, 
                           B(12) => n22, B(11) => n25, B(10) => n21, B(9) => 
                           n26, B(8) => n20, B(7) => n16, B(6) => n46, B(5) => 
                           n47, B(4) => n47, B(3) => n47, B(2) => n47, B(1) => 
                           n47, B(0) => X_Logic0_port, CI => X_Logic0_port, 
                           SUM(13) => PRODUCT(15), SUM(12) => PRODUCT(14), 
                           SUM(11) => PRODUCT(13), SUM(10) => PRODUCT(12), 
                           SUM(9) => PRODUCT(11), SUM(8) => PRODUCT(10), SUM(7)
                           => PRODUCT(9), SUM(6) => PRODUCT(8), SUM(5) => 
                           PRODUCT(7), SUM(4) => PRODUCT(6), SUM(3) => 
                           PRODUCT(5), SUM(2) => PRODUCT(4), SUM(1) => 
                           PRODUCT(3), SUM(0) => PRODUCT(2), CO => n_1011);
   U2 : AND2_X1 port map( A1 => ab_0_6_port, A2 => ab_1_5_port, ZN => n2);
   U3 : AND2_X1 port map( A1 => ab_0_5_port, A2 => ab_1_4_port, ZN => n3);
   U4 : AND2_X1 port map( A1 => ab_0_4_port, A2 => ab_1_3_port, ZN => n4);
   U5 : AND2_X1 port map( A1 => ab_0_3_port, A2 => ab_1_2_port, ZN => n5);
   U6 : AND2_X1 port map( A1 => ab_0_2_port, A2 => ab_1_1_port, ZN => n6);
   U7 : AND2_X1 port map( A1 => ab_0_1_port, A2 => ab_1_0_port, ZN => n7);
   U8 : AND2_X1 port map( A1 => ab_0_7_port, A2 => ab_1_6_port, ZN => n8);
   U9 : XOR2_X1 port map( A => ab_1_6_port, B => ab_0_7_port, Z => n9);
   U10 : XOR2_X1 port map( A => ab_1_5_port, B => ab_0_6_port, Z => n10);
   U11 : XOR2_X1 port map( A => ab_1_4_port, B => ab_0_5_port, Z => n11);
   U12 : XOR2_X1 port map( A => ab_1_3_port, B => ab_0_4_port, Z => n12);
   U13 : XOR2_X1 port map( A => ab_1_2_port, B => ab_0_3_port, Z => n13);
   U14 : XOR2_X1 port map( A => ab_1_1_port, B => ab_0_2_port, Z => n14);
   U15 : XOR2_X1 port map( A => CARRYB_7_1_port, B => SUMB_7_2_port, Z => n15);
   U16 : AND2_X1 port map( A1 => CARRYB_7_0_port, A2 => SUMB_7_1_port, ZN => 
                           n16);
   U17 : XOR2_X1 port map( A => CARRYB_7_6_port, B => ab_7_7_port, Z => n17);
   U18 : XOR2_X1 port map( A => CARRYB_7_2_port, B => SUMB_7_3_port, Z => n18);
   U19 : XOR2_X1 port map( A => CARRYB_7_4_port, B => SUMB_7_5_port, Z => n19);
   U20 : AND2_X1 port map( A1 => CARRYB_7_1_port, A2 => SUMB_7_2_port, ZN => 
                           n20);
   U21 : AND2_X1 port map( A1 => CARRYB_7_3_port, A2 => SUMB_7_4_port, ZN => 
                           n21);
   U22 : AND2_X1 port map( A1 => CARRYB_7_5_port, A2 => SUMB_7_6_port, ZN => 
                           n22);
   U23 : XOR2_X1 port map( A => CARRYB_7_5_port, B => SUMB_7_6_port, Z => n23);
   U24 : XOR2_X1 port map( A => CARRYB_7_3_port, B => SUMB_7_4_port, Z => n24);
   U25 : AND2_X1 port map( A1 => CARRYB_7_4_port, A2 => SUMB_7_5_port, ZN => 
                           n25);
   U26 : AND2_X1 port map( A1 => CARRYB_7_2_port, A2 => SUMB_7_3_port, ZN => 
                           n26);
   U27 : AND2_X1 port map( A1 => CARRYB_7_6_port, A2 => ab_7_7_port, ZN => n27)
                           ;
   U28 : XOR2_X1 port map( A => CARRYB_7_0_port, B => SUMB_7_1_port, Z => n28);
   U29 : XOR2_X1 port map( A => ab_1_0_port, B => ab_0_1_port, Z => PRODUCT(1))
                           ;
   U30 : INV_X1 port map( A => A(7), ZN => n30);
   U31 : INV_X1 port map( A => B(2), ZN => n43);
   U32 : INV_X1 port map( A => B(1), ZN => n44);
   U33 : INV_X1 port map( A => B(4), ZN => n41);
   U34 : INV_X1 port map( A => B(6), ZN => n39);
   U35 : INV_X1 port map( A => B(5), ZN => n40);
   U36 : INV_X1 port map( A => B(3), ZN => n42);
   U37 : INV_X1 port map( A => B(7), ZN => n38);
   U38 : INV_X1 port map( A => B(0), ZN => n45);
   U39 : INV_X1 port map( A => A(0), ZN => n37);
   U40 : INV_X1 port map( A => A(1), ZN => n36);
   U41 : INV_X1 port map( A => A(3), ZN => n34);
   U42 : INV_X1 port map( A => A(4), ZN => n33);
   U43 : INV_X1 port map( A => A(5), ZN => n32);
   U44 : INV_X1 port map( A => A(6), ZN => n31);
   U45 : INV_X1 port map( A => A(2), ZN => n35);
   n46 <= '0';
   U47 : NOR2_X1 port map( A1 => n30, A2 => n38, ZN => ab_7_7_port);
   U48 : NOR2_X1 port map( A1 => n30, A2 => n39, ZN => ab_7_6_port);
   U49 : NOR2_X1 port map( A1 => n30, A2 => n40, ZN => ab_7_5_port);
   U50 : NOR2_X1 port map( A1 => n30, A2 => n41, ZN => ab_7_4_port);
   U51 : NOR2_X1 port map( A1 => n30, A2 => n42, ZN => ab_7_3_port);
   U52 : NOR2_X1 port map( A1 => n30, A2 => n43, ZN => ab_7_2_port);
   U53 : NOR2_X1 port map( A1 => n30, A2 => n44, ZN => ab_7_1_port);
   U54 : NOR2_X1 port map( A1 => n30, A2 => n45, ZN => ab_7_0_port);
   U55 : NOR2_X1 port map( A1 => n38, A2 => n31, ZN => ab_6_7_port);
   U56 : NOR2_X1 port map( A1 => n39, A2 => n31, ZN => ab_6_6_port);
   U57 : NOR2_X1 port map( A1 => n40, A2 => n31, ZN => ab_6_5_port);
   U58 : NOR2_X1 port map( A1 => n41, A2 => n31, ZN => ab_6_4_port);
   U59 : NOR2_X1 port map( A1 => n42, A2 => n31, ZN => ab_6_3_port);
   U60 : NOR2_X1 port map( A1 => n43, A2 => n31, ZN => ab_6_2_port);
   U61 : NOR2_X1 port map( A1 => n44, A2 => n31, ZN => ab_6_1_port);
   U62 : NOR2_X1 port map( A1 => n45, A2 => n31, ZN => ab_6_0_port);
   U63 : NOR2_X1 port map( A1 => n38, A2 => n32, ZN => ab_5_7_port);
   U64 : NOR2_X1 port map( A1 => n39, A2 => n32, ZN => ab_5_6_port);
   U65 : NOR2_X1 port map( A1 => n40, A2 => n32, ZN => ab_5_5_port);
   U66 : NOR2_X1 port map( A1 => n41, A2 => n32, ZN => ab_5_4_port);
   U67 : NOR2_X1 port map( A1 => n42, A2 => n32, ZN => ab_5_3_port);
   U68 : NOR2_X1 port map( A1 => n43, A2 => n32, ZN => ab_5_2_port);
   U69 : NOR2_X1 port map( A1 => n44, A2 => n32, ZN => ab_5_1_port);
   U70 : NOR2_X1 port map( A1 => n45, A2 => n32, ZN => ab_5_0_port);
   U71 : NOR2_X1 port map( A1 => n38, A2 => n33, ZN => ab_4_7_port);
   U72 : NOR2_X1 port map( A1 => n39, A2 => n33, ZN => ab_4_6_port);
   U73 : NOR2_X1 port map( A1 => n40, A2 => n33, ZN => ab_4_5_port);
   U74 : NOR2_X1 port map( A1 => n41, A2 => n33, ZN => ab_4_4_port);
   U75 : NOR2_X1 port map( A1 => n42, A2 => n33, ZN => ab_4_3_port);
   U76 : NOR2_X1 port map( A1 => n43, A2 => n33, ZN => ab_4_2_port);
   U77 : NOR2_X1 port map( A1 => n44, A2 => n33, ZN => ab_4_1_port);
   U78 : NOR2_X1 port map( A1 => n45, A2 => n33, ZN => ab_4_0_port);
   U79 : NOR2_X1 port map( A1 => n38, A2 => n34, ZN => ab_3_7_port);
   U80 : NOR2_X1 port map( A1 => n39, A2 => n34, ZN => ab_3_6_port);
   U81 : NOR2_X1 port map( A1 => n40, A2 => n34, ZN => ab_3_5_port);
   U82 : NOR2_X1 port map( A1 => n41, A2 => n34, ZN => ab_3_4_port);
   U83 : NOR2_X1 port map( A1 => n42, A2 => n34, ZN => ab_3_3_port);
   U84 : NOR2_X1 port map( A1 => n43, A2 => n34, ZN => ab_3_2_port);
   U85 : NOR2_X1 port map( A1 => n44, A2 => n34, ZN => ab_3_1_port);
   U86 : NOR2_X1 port map( A1 => n45, A2 => n34, ZN => ab_3_0_port);
   U87 : NOR2_X1 port map( A1 => n38, A2 => n35, ZN => ab_2_7_port);
   U88 : NOR2_X1 port map( A1 => n39, A2 => n35, ZN => ab_2_6_port);
   U89 : NOR2_X1 port map( A1 => n40, A2 => n35, ZN => ab_2_5_port);
   U90 : NOR2_X1 port map( A1 => n41, A2 => n35, ZN => ab_2_4_port);
   U91 : NOR2_X1 port map( A1 => n42, A2 => n35, ZN => ab_2_3_port);
   U92 : NOR2_X1 port map( A1 => n43, A2 => n35, ZN => ab_2_2_port);
   U93 : NOR2_X1 port map( A1 => n44, A2 => n35, ZN => ab_2_1_port);
   U94 : NOR2_X1 port map( A1 => n45, A2 => n35, ZN => ab_2_0_port);
   U95 : NOR2_X1 port map( A1 => n38, A2 => n36, ZN => ab_1_7_port);
   U96 : NOR2_X1 port map( A1 => n39, A2 => n36, ZN => ab_1_6_port);
   U97 : NOR2_X1 port map( A1 => n40, A2 => n36, ZN => ab_1_5_port);
   U98 : NOR2_X1 port map( A1 => n41, A2 => n36, ZN => ab_1_4_port);
   U99 : NOR2_X1 port map( A1 => n42, A2 => n36, ZN => ab_1_3_port);
   U100 : NOR2_X1 port map( A1 => n43, A2 => n36, ZN => ab_1_2_port);
   U101 : NOR2_X1 port map( A1 => n44, A2 => n36, ZN => ab_1_1_port);
   U102 : NOR2_X1 port map( A1 => n45, A2 => n36, ZN => ab_1_0_port);
   U103 : NOR2_X1 port map( A1 => n38, A2 => n37, ZN => ab_0_7_port);
   U104 : NOR2_X1 port map( A1 => n39, A2 => n37, ZN => ab_0_6_port);
   U105 : NOR2_X1 port map( A1 => n40, A2 => n37, ZN => ab_0_5_port);
   U106 : NOR2_X1 port map( A1 => n41, A2 => n37, ZN => ab_0_4_port);
   U107 : NOR2_X1 port map( A1 => n42, A2 => n37, ZN => ab_0_3_port);
   U108 : NOR2_X1 port map( A1 => n43, A2 => n37, ZN => ab_0_2_port);
   U109 : NOR2_X1 port map( A1 => n44, A2 => n37, ZN => ab_0_1_port);
   U110 : NOR2_X1 port map( A1 => n45, A2 => n37, ZN => PRODUCT(0));
   n47 <= '0';

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW01_ash_0 is

   port( A : in std_logic_vector (15 downto 0);  DATA_TC : in std_logic;  SH : 
         in std_logic_vector (3 downto 0);  SH_TC : in std_logic;  B : out 
         std_logic_vector (15 downto 0));

end ALU_DW01_ash_0;

architecture SYN_mx2 of ALU_DW01_ash_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal ML_int_1_15_port, ML_int_1_14_port, ML_int_1_13_port, 
      ML_int_1_12_port, ML_int_1_11_port, ML_int_1_10_port, ML_int_1_9_port, 
      ML_int_1_8_port, ML_int_1_7_port, ML_int_1_6_port, ML_int_1_5_port, 
      ML_int_1_4_port, ML_int_1_3_port, ML_int_1_2_port, ML_int_1_1_port, 
      ML_int_1_0_port, ML_int_2_15_port, ML_int_2_14_port, ML_int_2_13_port, 
      ML_int_2_12_port, ML_int_2_11_port, ML_int_2_10_port, ML_int_2_9_port, 
      ML_int_2_8_port, ML_int_2_7_port, ML_int_2_6_port, ML_int_2_5_port, 
      ML_int_2_4_port, ML_int_2_3_port, ML_int_2_2_port, ML_int_3_15_port, 
      ML_int_3_14_port, ML_int_3_13_port, ML_int_3_12_port, ML_int_3_11_port, 
      ML_int_3_10_port, ML_int_3_9_port, ML_int_3_8_port, ML_int_3_7_port, 
      ML_int_3_6_port, ML_int_3_5_port, ML_int_3_4_port, ML_int_3_3_port, 
      ML_int_3_2_port, ML_int_3_1_port, ML_int_3_0_port, n1, n2, n3, n4, n5, n6
      , n7, n8, n9, n10, n11 : std_logic;

begin
   
   M1_3_15 : MUX2_X1 port map( A => ML_int_3_15_port, B => ML_int_3_7_port, S 
                           => SH(3), Z => B(15));
   M1_3_14 : MUX2_X1 port map( A => ML_int_3_14_port, B => ML_int_3_6_port, S 
                           => SH(3), Z => B(14));
   M1_3_13 : MUX2_X1 port map( A => ML_int_3_13_port, B => ML_int_3_5_port, S 
                           => SH(3), Z => B(13));
   M1_3_12 : MUX2_X1 port map( A => ML_int_3_12_port, B => ML_int_3_4_port, S 
                           => SH(3), Z => B(12));
   M1_3_11 : MUX2_X1 port map( A => ML_int_3_11_port, B => ML_int_3_3_port, S 
                           => SH(3), Z => B(11));
   M1_3_10 : MUX2_X1 port map( A => ML_int_3_10_port, B => ML_int_3_2_port, S 
                           => SH(3), Z => B(10));
   M1_3_9 : MUX2_X1 port map( A => ML_int_3_9_port, B => ML_int_3_1_port, S => 
                           SH(3), Z => B(9));
   M1_3_8 : MUX2_X1 port map( A => ML_int_3_8_port, B => ML_int_3_0_port, S => 
                           SH(3), Z => B(8));
   M1_2_15 : MUX2_X1 port map( A => ML_int_2_15_port, B => ML_int_2_11_port, S 
                           => SH(2), Z => ML_int_3_15_port);
   M1_2_14 : MUX2_X1 port map( A => ML_int_2_14_port, B => ML_int_2_10_port, S 
                           => SH(2), Z => ML_int_3_14_port);
   M1_2_13 : MUX2_X1 port map( A => ML_int_2_13_port, B => ML_int_2_9_port, S 
                           => SH(2), Z => ML_int_3_13_port);
   M1_2_12 : MUX2_X1 port map( A => ML_int_2_12_port, B => ML_int_2_8_port, S 
                           => SH(2), Z => ML_int_3_12_port);
   M1_2_11 : MUX2_X1 port map( A => ML_int_2_11_port, B => ML_int_2_7_port, S 
                           => SH(2), Z => ML_int_3_11_port);
   M1_2_10 : MUX2_X1 port map( A => ML_int_2_10_port, B => ML_int_2_6_port, S 
                           => SH(2), Z => ML_int_3_10_port);
   M1_2_9 : MUX2_X1 port map( A => ML_int_2_9_port, B => ML_int_2_5_port, S => 
                           SH(2), Z => ML_int_3_9_port);
   M1_2_8 : MUX2_X1 port map( A => ML_int_2_8_port, B => ML_int_2_4_port, S => 
                           SH(2), Z => ML_int_3_8_port);
   M1_2_7 : MUX2_X1 port map( A => ML_int_2_7_port, B => ML_int_2_3_port, S => 
                           SH(2), Z => ML_int_3_7_port);
   M1_2_6 : MUX2_X1 port map( A => ML_int_2_6_port, B => ML_int_2_2_port, S => 
                           SH(2), Z => ML_int_3_6_port);
   M1_2_5 : MUX2_X1 port map( A => ML_int_2_5_port, B => n3, S => SH(2), Z => 
                           ML_int_3_5_port);
   M1_2_4 : MUX2_X1 port map( A => ML_int_2_4_port, B => n4, S => SH(2), Z => 
                           ML_int_3_4_port);
   M1_1_15 : MUX2_X1 port map( A => ML_int_1_15_port, B => ML_int_1_13_port, S 
                           => SH(1), Z => ML_int_2_15_port);
   M1_1_14 : MUX2_X1 port map( A => ML_int_1_14_port, B => ML_int_1_12_port, S 
                           => SH(1), Z => ML_int_2_14_port);
   M1_1_13 : MUX2_X1 port map( A => ML_int_1_13_port, B => ML_int_1_11_port, S 
                           => SH(1), Z => ML_int_2_13_port);
   M1_1_12 : MUX2_X1 port map( A => ML_int_1_12_port, B => ML_int_1_10_port, S 
                           => SH(1), Z => ML_int_2_12_port);
   M1_1_11 : MUX2_X1 port map( A => ML_int_1_11_port, B => ML_int_1_9_port, S 
                           => SH(1), Z => ML_int_2_11_port);
   M1_1_10 : MUX2_X1 port map( A => ML_int_1_10_port, B => ML_int_1_8_port, S 
                           => SH(1), Z => ML_int_2_10_port);
   M1_1_9 : MUX2_X1 port map( A => ML_int_1_9_port, B => ML_int_1_7_port, S => 
                           SH(1), Z => ML_int_2_9_port);
   M1_1_8 : MUX2_X1 port map( A => ML_int_1_8_port, B => ML_int_1_6_port, S => 
                           SH(1), Z => ML_int_2_8_port);
   M1_1_7 : MUX2_X1 port map( A => ML_int_1_7_port, B => ML_int_1_5_port, S => 
                           SH(1), Z => ML_int_2_7_port);
   M1_1_6 : MUX2_X1 port map( A => ML_int_1_6_port, B => ML_int_1_4_port, S => 
                           SH(1), Z => ML_int_2_6_port);
   M1_1_5 : MUX2_X1 port map( A => ML_int_1_5_port, B => ML_int_1_3_port, S => 
                           SH(1), Z => ML_int_2_5_port);
   M1_1_4 : MUX2_X1 port map( A => ML_int_1_4_port, B => ML_int_1_2_port, S => 
                           SH(1), Z => ML_int_2_4_port);
   M1_1_3 : MUX2_X1 port map( A => ML_int_1_3_port, B => ML_int_1_1_port, S => 
                           SH(1), Z => ML_int_2_3_port);
   M1_1_2 : MUX2_X1 port map( A => ML_int_1_2_port, B => ML_int_1_0_port, S => 
                           SH(1), Z => ML_int_2_2_port);
   M1_0_15 : MUX2_X1 port map( A => A(15), B => A(14), S => SH(0), Z => 
                           ML_int_1_15_port);
   M1_0_14 : MUX2_X1 port map( A => A(14), B => A(13), S => SH(0), Z => 
                           ML_int_1_14_port);
   M1_0_13 : MUX2_X1 port map( A => A(13), B => A(12), S => SH(0), Z => 
                           ML_int_1_13_port);
   M1_0_12 : MUX2_X1 port map( A => A(12), B => A(11), S => SH(0), Z => 
                           ML_int_1_12_port);
   M1_0_11 : MUX2_X1 port map( A => A(11), B => A(10), S => SH(0), Z => 
                           ML_int_1_11_port);
   M1_0_10 : MUX2_X1 port map( A => A(10), B => A(9), S => SH(0), Z => 
                           ML_int_1_10_port);
   M1_0_9 : MUX2_X1 port map( A => A(9), B => A(8), S => SH(0), Z => 
                           ML_int_1_9_port);
   M1_0_8 : MUX2_X1 port map( A => A(8), B => A(7), S => SH(0), Z => 
                           ML_int_1_8_port);
   M1_0_7 : MUX2_X1 port map( A => A(7), B => A(6), S => SH(0), Z => 
                           ML_int_1_7_port);
   M1_0_6 : MUX2_X1 port map( A => A(6), B => A(5), S => SH(0), Z => 
                           ML_int_1_6_port);
   M1_0_5 : MUX2_X1 port map( A => A(5), B => A(4), S => SH(0), Z => 
                           ML_int_1_5_port);
   M1_0_4 : MUX2_X1 port map( A => A(4), B => A(3), S => SH(0), Z => 
                           ML_int_1_4_port);
   M1_0_3 : MUX2_X1 port map( A => A(3), B => A(2), S => SH(0), Z => 
                           ML_int_1_3_port);
   M1_0_2 : MUX2_X1 port map( A => A(2), B => A(1), S => SH(0), Z => 
                           ML_int_1_2_port);
   M1_0_1 : MUX2_X1 port map( A => A(1), B => A(0), S => SH(0), Z => 
                           ML_int_1_1_port);
   U3 : INV_X1 port map( A => ML_int_2_2_port, ZN => n2);
   U4 : INV_X1 port map( A => ML_int_2_3_port, ZN => n1);
   U5 : INV_X1 port map( A => SH(2), ZN => n6);
   U6 : INV_X1 port map( A => SH(0), ZN => n8);
   U7 : INV_X1 port map( A => SH(3), ZN => n5);
   U8 : INV_X1 port map( A => n11, ZN => n4);
   U9 : INV_X1 port map( A => n10, ZN => n3);
   U10 : INV_X1 port map( A => SH(1), ZN => n7);
   U11 : AND2_X1 port map( A1 => ML_int_3_7_port, A2 => n5, ZN => B(7));
   U12 : AND2_X1 port map( A1 => ML_int_3_6_port, A2 => n5, ZN => B(6));
   U13 : AND2_X1 port map( A1 => ML_int_3_5_port, A2 => n5, ZN => B(5));
   U14 : AND2_X1 port map( A1 => ML_int_3_4_port, A2 => n5, ZN => B(4));
   U15 : NOR2_X1 port map( A1 => n9, A2 => n1, ZN => B(3));
   U16 : NOR2_X1 port map( A1 => n9, A2 => n2, ZN => B(2));
   U17 : NOR2_X1 port map( A1 => n9, A2 => n10, ZN => B(1));
   U18 : NOR2_X1 port map( A1 => n9, A2 => n11, ZN => B(0));
   U19 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => n9);
   U20 : NOR2_X1 port map( A1 => SH(2), A2 => n1, ZN => ML_int_3_3_port);
   U21 : NOR2_X1 port map( A1 => SH(2), A2 => n2, ZN => ML_int_3_2_port);
   U22 : NOR2_X1 port map( A1 => SH(2), A2 => n10, ZN => ML_int_3_1_port);
   U23 : NOR2_X1 port map( A1 => SH(2), A2 => n11, ZN => ML_int_3_0_port);
   U24 : NAND2_X1 port map( A1 => ML_int_1_1_port, A2 => n7, ZN => n10);
   U25 : NAND2_X1 port map( A1 => ML_int_1_0_port, A2 => n7, ZN => n11);
   U26 : AND2_X1 port map( A1 => A(0), A2 => n8, ZN => ML_int_1_0_port);

end SYN_mx2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW_rbsh_0 is

   port( A : in std_logic_vector (15 downto 0);  SH : in std_logic_vector (3 
         downto 0);  SH_TC : in std_logic;  B : out std_logic_vector (15 downto
         0));

end ALU_DW_rbsh_0;

architecture SYN_mx2 of ALU_DW_rbsh_0 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal MR_int_1_15_port, MR_int_1_14_port, MR_int_1_13_port, 
      MR_int_1_12_port, MR_int_1_11_port, MR_int_1_10_port, MR_int_1_9_port, 
      MR_int_1_8_port, MR_int_1_7_port, MR_int_1_6_port, MR_int_1_5_port, 
      MR_int_1_4_port, MR_int_1_3_port, MR_int_1_2_port, MR_int_1_1_port, 
      MR_int_1_0_port, MR_int_2_15_port, MR_int_2_14_port, MR_int_2_13_port, 
      MR_int_2_12_port, MR_int_2_11_port, MR_int_2_10_port, MR_int_2_9_port, 
      MR_int_2_8_port, MR_int_2_7_port, MR_int_2_6_port, MR_int_2_5_port, 
      MR_int_2_4_port, MR_int_2_3_port, MR_int_2_2_port, MR_int_2_1_port, 
      MR_int_2_0_port, MR_int_3_15_port, MR_int_3_14_port, MR_int_3_13_port, 
      MR_int_3_12_port, MR_int_3_11_port, MR_int_3_10_port, MR_int_3_9_port, 
      MR_int_3_8_port, MR_int_3_7_port, MR_int_3_6_port, MR_int_3_5_port, 
      MR_int_3_4_port, MR_int_3_3_port, MR_int_3_2_port, MR_int_3_1_port, 
      MR_int_3_0_port : std_logic;

begin
   
   M1_3_15 : MUX2_X1 port map( A => MR_int_3_15_port, B => MR_int_3_7_port, S 
                           => SH(3), Z => B(15));
   M1_3_14 : MUX2_X1 port map( A => MR_int_3_14_port, B => MR_int_3_6_port, S 
                           => SH(3), Z => B(14));
   M1_3_13 : MUX2_X1 port map( A => MR_int_3_13_port, B => MR_int_3_5_port, S 
                           => SH(3), Z => B(13));
   M1_3_12 : MUX2_X1 port map( A => MR_int_3_12_port, B => MR_int_3_4_port, S 
                           => SH(3), Z => B(12));
   M1_3_11 : MUX2_X1 port map( A => MR_int_3_11_port, B => MR_int_3_3_port, S 
                           => SH(3), Z => B(11));
   M1_3_10 : MUX2_X1 port map( A => MR_int_3_10_port, B => MR_int_3_2_port, S 
                           => SH(3), Z => B(10));
   M1_3_9 : MUX2_X1 port map( A => MR_int_3_9_port, B => MR_int_3_1_port, S => 
                           SH(3), Z => B(9));
   M1_3_8 : MUX2_X1 port map( A => MR_int_3_8_port, B => MR_int_3_0_port, S => 
                           SH(3), Z => B(8));
   M1_3_7 : MUX2_X1 port map( A => MR_int_3_7_port, B => MR_int_3_15_port, S =>
                           SH(3), Z => B(7));
   M1_3_6 : MUX2_X1 port map( A => MR_int_3_6_port, B => MR_int_3_14_port, S =>
                           SH(3), Z => B(6));
   M1_3_5 : MUX2_X1 port map( A => MR_int_3_5_port, B => MR_int_3_13_port, S =>
                           SH(3), Z => B(5));
   M1_3_4 : MUX2_X1 port map( A => MR_int_3_4_port, B => MR_int_3_12_port, S =>
                           SH(3), Z => B(4));
   M1_3_3 : MUX2_X1 port map( A => MR_int_3_3_port, B => MR_int_3_11_port, S =>
                           SH(3), Z => B(3));
   M1_3_2 : MUX2_X1 port map( A => MR_int_3_2_port, B => MR_int_3_10_port, S =>
                           SH(3), Z => B(2));
   M1_3_1 : MUX2_X1 port map( A => MR_int_3_1_port, B => MR_int_3_9_port, S => 
                           SH(3), Z => B(1));
   M1_3_0 : MUX2_X1 port map( A => MR_int_3_0_port, B => MR_int_3_8_port, S => 
                           SH(3), Z => B(0));
   M1_2_15_0 : MUX2_X1 port map( A => MR_int_2_15_port, B => MR_int_2_3_port, S
                           => SH(2), Z => MR_int_3_15_port);
   M1_2_14_0 : MUX2_X1 port map( A => MR_int_2_14_port, B => MR_int_2_2_port, S
                           => SH(2), Z => MR_int_3_14_port);
   M1_2_13_0 : MUX2_X1 port map( A => MR_int_2_13_port, B => MR_int_2_1_port, S
                           => SH(2), Z => MR_int_3_13_port);
   M1_2_12_0 : MUX2_X1 port map( A => MR_int_2_12_port, B => MR_int_2_0_port, S
                           => SH(2), Z => MR_int_3_12_port);
   M1_2_11_0 : MUX2_X1 port map( A => MR_int_2_11_port, B => MR_int_2_15_port, 
                           S => SH(2), Z => MR_int_3_11_port);
   M1_2_10_0 : MUX2_X1 port map( A => MR_int_2_10_port, B => MR_int_2_14_port, 
                           S => SH(2), Z => MR_int_3_10_port);
   M1_2_9_0 : MUX2_X1 port map( A => MR_int_2_9_port, B => MR_int_2_13_port, S 
                           => SH(2), Z => MR_int_3_9_port);
   M1_2_8_0 : MUX2_X1 port map( A => MR_int_2_8_port, B => MR_int_2_12_port, S 
                           => SH(2), Z => MR_int_3_8_port);
   M1_2_7_0 : MUX2_X1 port map( A => MR_int_2_7_port, B => MR_int_2_11_port, S 
                           => SH(2), Z => MR_int_3_7_port);
   M1_2_6_0 : MUX2_X1 port map( A => MR_int_2_6_port, B => MR_int_2_10_port, S 
                           => SH(2), Z => MR_int_3_6_port);
   M1_2_5_0 : MUX2_X1 port map( A => MR_int_2_5_port, B => MR_int_2_9_port, S 
                           => SH(2), Z => MR_int_3_5_port);
   M1_2_4_0 : MUX2_X1 port map( A => MR_int_2_4_port, B => MR_int_2_8_port, S 
                           => SH(2), Z => MR_int_3_4_port);
   M1_2_3 : MUX2_X1 port map( A => MR_int_2_3_port, B => MR_int_2_7_port, S => 
                           SH(2), Z => MR_int_3_3_port);
   M1_2_2 : MUX2_X1 port map( A => MR_int_2_2_port, B => MR_int_2_6_port, S => 
                           SH(2), Z => MR_int_3_2_port);
   M1_2_1 : MUX2_X1 port map( A => MR_int_2_1_port, B => MR_int_2_5_port, S => 
                           SH(2), Z => MR_int_3_1_port);
   M1_2_0 : MUX2_X1 port map( A => MR_int_2_0_port, B => MR_int_2_4_port, S => 
                           SH(2), Z => MR_int_3_0_port);
   M1_1_15_0 : MUX2_X1 port map( A => MR_int_1_15_port, B => MR_int_1_1_port, S
                           => SH(1), Z => MR_int_2_15_port);
   M1_1_14_0 : MUX2_X1 port map( A => MR_int_1_14_port, B => MR_int_1_0_port, S
                           => SH(1), Z => MR_int_2_14_port);
   M1_1_13_0 : MUX2_X1 port map( A => MR_int_1_13_port, B => MR_int_1_15_port, 
                           S => SH(1), Z => MR_int_2_13_port);
   M1_1_12_0 : MUX2_X1 port map( A => MR_int_1_12_port, B => MR_int_1_14_port, 
                           S => SH(1), Z => MR_int_2_12_port);
   M1_1_11_0 : MUX2_X1 port map( A => MR_int_1_11_port, B => MR_int_1_13_port, 
                           S => SH(1), Z => MR_int_2_11_port);
   M1_1_10_0 : MUX2_X1 port map( A => MR_int_1_10_port, B => MR_int_1_12_port, 
                           S => SH(1), Z => MR_int_2_10_port);
   M1_1_9_0 : MUX2_X1 port map( A => MR_int_1_9_port, B => MR_int_1_11_port, S 
                           => SH(1), Z => MR_int_2_9_port);
   M1_1_8_0 : MUX2_X1 port map( A => MR_int_1_8_port, B => MR_int_1_10_port, S 
                           => SH(1), Z => MR_int_2_8_port);
   M1_1_7_0 : MUX2_X1 port map( A => MR_int_1_7_port, B => MR_int_1_9_port, S 
                           => SH(1), Z => MR_int_2_7_port);
   M1_1_6_0 : MUX2_X1 port map( A => MR_int_1_6_port, B => MR_int_1_8_port, S 
                           => SH(1), Z => MR_int_2_6_port);
   M1_1_5_0 : MUX2_X1 port map( A => MR_int_1_5_port, B => MR_int_1_7_port, S 
                           => SH(1), Z => MR_int_2_5_port);
   M1_1_4_0 : MUX2_X1 port map( A => MR_int_1_4_port, B => MR_int_1_6_port, S 
                           => SH(1), Z => MR_int_2_4_port);
   M1_1_3_0 : MUX2_X1 port map( A => MR_int_1_3_port, B => MR_int_1_5_port, S 
                           => SH(1), Z => MR_int_2_3_port);
   M1_1_2_0 : MUX2_X1 port map( A => MR_int_1_2_port, B => MR_int_1_4_port, S 
                           => SH(1), Z => MR_int_2_2_port);
   M1_1_1 : MUX2_X1 port map( A => MR_int_1_1_port, B => MR_int_1_3_port, S => 
                           SH(1), Z => MR_int_2_1_port);
   M1_1_0 : MUX2_X1 port map( A => MR_int_1_0_port, B => MR_int_1_2_port, S => 
                           SH(1), Z => MR_int_2_0_port);
   M1_0_15_0 : MUX2_X1 port map( A => A(15), B => A(0), S => SH(0), Z => 
                           MR_int_1_15_port);
   M1_0_14_0 : MUX2_X1 port map( A => A(14), B => A(15), S => SH(0), Z => 
                           MR_int_1_14_port);
   M1_0_13_0 : MUX2_X1 port map( A => A(13), B => A(14), S => SH(0), Z => 
                           MR_int_1_13_port);
   M1_0_12_0 : MUX2_X1 port map( A => A(12), B => A(13), S => SH(0), Z => 
                           MR_int_1_12_port);
   M1_0_11_0 : MUX2_X1 port map( A => A(11), B => A(12), S => SH(0), Z => 
                           MR_int_1_11_port);
   M1_0_10_0 : MUX2_X1 port map( A => A(10), B => A(11), S => SH(0), Z => 
                           MR_int_1_10_port);
   M1_0_9_0 : MUX2_X1 port map( A => A(9), B => A(10), S => SH(0), Z => 
                           MR_int_1_9_port);
   M1_0_8_0 : MUX2_X1 port map( A => A(8), B => A(9), S => SH(0), Z => 
                           MR_int_1_8_port);
   M1_0_7_0 : MUX2_X1 port map( A => A(7), B => A(8), S => SH(0), Z => 
                           MR_int_1_7_port);
   M1_0_6_0 : MUX2_X1 port map( A => A(6), B => A(7), S => SH(0), Z => 
                           MR_int_1_6_port);
   M1_0_5_0 : MUX2_X1 port map( A => A(5), B => A(6), S => SH(0), Z => 
                           MR_int_1_5_port);
   M1_0_4_0 : MUX2_X1 port map( A => A(4), B => A(5), S => SH(0), Z => 
                           MR_int_1_4_port);
   M1_0_3_0 : MUX2_X1 port map( A => A(3), B => A(4), S => SH(0), Z => 
                           MR_int_1_3_port);
   M1_0_2_0 : MUX2_X1 port map( A => A(2), B => A(3), S => SH(0), Z => 
                           MR_int_1_2_port);
   M1_0_1_0 : MUX2_X1 port map( A => A(1), B => A(2), S => SH(0), Z => 
                           MR_int_1_1_port);
   M1_0_0 : MUX2_X1 port map( A => A(0), B => A(1), S => SH(0), Z => 
                           MR_int_1_0_port);

end SYN_mx2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW_lbsh_0 is

   port( A : in std_logic_vector (15 downto 0);  SH : in std_logic_vector (3 
         downto 0);  SH_TC : in std_logic;  B : out std_logic_vector (15 downto
         0));

end ALU_DW_lbsh_0;

architecture SYN_mx2 of ALU_DW_lbsh_0 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal ML_int_1_15_port, ML_int_1_14_port, ML_int_1_13_port, 
      ML_int_1_12_port, ML_int_1_11_port, ML_int_1_10_port, ML_int_1_9_port, 
      ML_int_1_8_port, ML_int_1_7_port, ML_int_1_6_port, ML_int_1_5_port, 
      ML_int_1_4_port, ML_int_1_3_port, ML_int_1_2_port, ML_int_1_1_port, 
      ML_int_1_0_port, ML_int_2_15_port, ML_int_2_14_port, ML_int_2_13_port, 
      ML_int_2_12_port, ML_int_2_11_port, ML_int_2_10_port, ML_int_2_9_port, 
      ML_int_2_8_port, ML_int_2_7_port, ML_int_2_6_port, ML_int_2_5_port, 
      ML_int_2_4_port, ML_int_2_3_port, ML_int_2_2_port, ML_int_2_1_port, 
      ML_int_2_0_port, ML_int_3_15_port, ML_int_3_14_port, ML_int_3_13_port, 
      ML_int_3_12_port, ML_int_3_11_port, ML_int_3_10_port, ML_int_3_9_port, 
      ML_int_3_8_port, ML_int_3_7_port, ML_int_3_6_port, ML_int_3_5_port, 
      ML_int_3_4_port, ML_int_3_3_port, ML_int_3_2_port, ML_int_3_1_port, 
      ML_int_3_0_port : std_logic;

begin
   
   M1_3_15 : MUX2_X1 port map( A => ML_int_3_15_port, B => ML_int_3_7_port, S 
                           => SH(3), Z => B(15));
   M1_3_14 : MUX2_X1 port map( A => ML_int_3_14_port, B => ML_int_3_6_port, S 
                           => SH(3), Z => B(14));
   M1_3_13 : MUX2_X1 port map( A => ML_int_3_13_port, B => ML_int_3_5_port, S 
                           => SH(3), Z => B(13));
   M1_3_12 : MUX2_X1 port map( A => ML_int_3_12_port, B => ML_int_3_4_port, S 
                           => SH(3), Z => B(12));
   M1_3_11 : MUX2_X1 port map( A => ML_int_3_11_port, B => ML_int_3_3_port, S 
                           => SH(3), Z => B(11));
   M1_3_10 : MUX2_X1 port map( A => ML_int_3_10_port, B => ML_int_3_2_port, S 
                           => SH(3), Z => B(10));
   M1_3_9 : MUX2_X1 port map( A => ML_int_3_9_port, B => ML_int_3_1_port, S => 
                           SH(3), Z => B(9));
   M1_3_8 : MUX2_X1 port map( A => ML_int_3_8_port, B => ML_int_3_0_port, S => 
                           SH(3), Z => B(8));
   M0_3_7 : MUX2_X1 port map( A => ML_int_3_7_port, B => ML_int_3_15_port, S =>
                           SH(3), Z => B(7));
   M0_3_6 : MUX2_X1 port map( A => ML_int_3_6_port, B => ML_int_3_14_port, S =>
                           SH(3), Z => B(6));
   M0_3_5 : MUX2_X1 port map( A => ML_int_3_5_port, B => ML_int_3_13_port, S =>
                           SH(3), Z => B(5));
   M0_3_4 : MUX2_X1 port map( A => ML_int_3_4_port, B => ML_int_3_12_port, S =>
                           SH(3), Z => B(4));
   M0_3_3 : MUX2_X1 port map( A => ML_int_3_3_port, B => ML_int_3_11_port, S =>
                           SH(3), Z => B(3));
   M0_3_2 : MUX2_X1 port map( A => ML_int_3_2_port, B => ML_int_3_10_port, S =>
                           SH(3), Z => B(2));
   M0_3_1 : MUX2_X1 port map( A => ML_int_3_1_port, B => ML_int_3_9_port, S => 
                           SH(3), Z => B(1));
   M0_3_0 : MUX2_X1 port map( A => ML_int_3_0_port, B => ML_int_3_8_port, S => 
                           SH(3), Z => B(0));
   M1_2_15 : MUX2_X1 port map( A => ML_int_2_15_port, B => ML_int_2_11_port, S 
                           => SH(2), Z => ML_int_3_15_port);
   M1_2_14 : MUX2_X1 port map( A => ML_int_2_14_port, B => ML_int_2_10_port, S 
                           => SH(2), Z => ML_int_3_14_port);
   M1_2_13 : MUX2_X1 port map( A => ML_int_2_13_port, B => ML_int_2_9_port, S 
                           => SH(2), Z => ML_int_3_13_port);
   M1_2_12 : MUX2_X1 port map( A => ML_int_2_12_port, B => ML_int_2_8_port, S 
                           => SH(2), Z => ML_int_3_12_port);
   M1_2_11 : MUX2_X1 port map( A => ML_int_2_11_port, B => ML_int_2_7_port, S 
                           => SH(2), Z => ML_int_3_11_port);
   M1_2_10 : MUX2_X1 port map( A => ML_int_2_10_port, B => ML_int_2_6_port, S 
                           => SH(2), Z => ML_int_3_10_port);
   M1_2_9 : MUX2_X1 port map( A => ML_int_2_9_port, B => ML_int_2_5_port, S => 
                           SH(2), Z => ML_int_3_9_port);
   M1_2_8 : MUX2_X1 port map( A => ML_int_2_8_port, B => ML_int_2_4_port, S => 
                           SH(2), Z => ML_int_3_8_port);
   M1_2_7 : MUX2_X1 port map( A => ML_int_2_7_port, B => ML_int_2_3_port, S => 
                           SH(2), Z => ML_int_3_7_port);
   M1_2_6 : MUX2_X1 port map( A => ML_int_2_6_port, B => ML_int_2_2_port, S => 
                           SH(2), Z => ML_int_3_6_port);
   M1_2_5 : MUX2_X1 port map( A => ML_int_2_5_port, B => ML_int_2_1_port, S => 
                           SH(2), Z => ML_int_3_5_port);
   M1_2_4 : MUX2_X1 port map( A => ML_int_2_4_port, B => ML_int_2_0_port, S => 
                           SH(2), Z => ML_int_3_4_port);
   M0_2_3 : MUX2_X1 port map( A => ML_int_2_3_port, B => ML_int_2_15_port, S =>
                           SH(2), Z => ML_int_3_3_port);
   M0_2_2 : MUX2_X1 port map( A => ML_int_2_2_port, B => ML_int_2_14_port, S =>
                           SH(2), Z => ML_int_3_2_port);
   M0_2_1 : MUX2_X1 port map( A => ML_int_2_1_port, B => ML_int_2_13_port, S =>
                           SH(2), Z => ML_int_3_1_port);
   M0_2_0 : MUX2_X1 port map( A => ML_int_2_0_port, B => ML_int_2_12_port, S =>
                           SH(2), Z => ML_int_3_0_port);
   M1_1_15 : MUX2_X1 port map( A => ML_int_1_15_port, B => ML_int_1_13_port, S 
                           => SH(1), Z => ML_int_2_15_port);
   M1_1_14 : MUX2_X1 port map( A => ML_int_1_14_port, B => ML_int_1_12_port, S 
                           => SH(1), Z => ML_int_2_14_port);
   M1_1_13 : MUX2_X1 port map( A => ML_int_1_13_port, B => ML_int_1_11_port, S 
                           => SH(1), Z => ML_int_2_13_port);
   M1_1_12 : MUX2_X1 port map( A => ML_int_1_12_port, B => ML_int_1_10_port, S 
                           => SH(1), Z => ML_int_2_12_port);
   M1_1_11 : MUX2_X1 port map( A => ML_int_1_11_port, B => ML_int_1_9_port, S 
                           => SH(1), Z => ML_int_2_11_port);
   M1_1_10 : MUX2_X1 port map( A => ML_int_1_10_port, B => ML_int_1_8_port, S 
                           => SH(1), Z => ML_int_2_10_port);
   M1_1_9 : MUX2_X1 port map( A => ML_int_1_9_port, B => ML_int_1_7_port, S => 
                           SH(1), Z => ML_int_2_9_port);
   M1_1_8 : MUX2_X1 port map( A => ML_int_1_8_port, B => ML_int_1_6_port, S => 
                           SH(1), Z => ML_int_2_8_port);
   M1_1_7 : MUX2_X1 port map( A => ML_int_1_7_port, B => ML_int_1_5_port, S => 
                           SH(1), Z => ML_int_2_7_port);
   M1_1_6 : MUX2_X1 port map( A => ML_int_1_6_port, B => ML_int_1_4_port, S => 
                           SH(1), Z => ML_int_2_6_port);
   M1_1_5 : MUX2_X1 port map( A => ML_int_1_5_port, B => ML_int_1_3_port, S => 
                           SH(1), Z => ML_int_2_5_port);
   M1_1_4 : MUX2_X1 port map( A => ML_int_1_4_port, B => ML_int_1_2_port, S => 
                           SH(1), Z => ML_int_2_4_port);
   M1_1_3 : MUX2_X1 port map( A => ML_int_1_3_port, B => ML_int_1_1_port, S => 
                           SH(1), Z => ML_int_2_3_port);
   M1_1_2 : MUX2_X1 port map( A => ML_int_1_2_port, B => ML_int_1_0_port, S => 
                           SH(1), Z => ML_int_2_2_port);
   M0_1_1 : MUX2_X1 port map( A => ML_int_1_1_port, B => ML_int_1_15_port, S =>
                           SH(1), Z => ML_int_2_1_port);
   M0_1_0 : MUX2_X1 port map( A => ML_int_1_0_port, B => ML_int_1_14_port, S =>
                           SH(1), Z => ML_int_2_0_port);
   M1_0_15 : MUX2_X1 port map( A => A(15), B => A(14), S => SH(0), Z => 
                           ML_int_1_15_port);
   M1_0_14 : MUX2_X1 port map( A => A(14), B => A(13), S => SH(0), Z => 
                           ML_int_1_14_port);
   M1_0_13 : MUX2_X1 port map( A => A(13), B => A(12), S => SH(0), Z => 
                           ML_int_1_13_port);
   M1_0_12 : MUX2_X1 port map( A => A(12), B => A(11), S => SH(0), Z => 
                           ML_int_1_12_port);
   M1_0_11 : MUX2_X1 port map( A => A(11), B => A(10), S => SH(0), Z => 
                           ML_int_1_11_port);
   M1_0_10 : MUX2_X1 port map( A => A(10), B => A(9), S => SH(0), Z => 
                           ML_int_1_10_port);
   M1_0_9 : MUX2_X1 port map( A => A(9), B => A(8), S => SH(0), Z => 
                           ML_int_1_9_port);
   M1_0_8 : MUX2_X1 port map( A => A(8), B => A(7), S => SH(0), Z => 
                           ML_int_1_8_port);
   M1_0_7 : MUX2_X1 port map( A => A(7), B => A(6), S => SH(0), Z => 
                           ML_int_1_7_port);
   M1_0_6 : MUX2_X1 port map( A => A(6), B => A(5), S => SH(0), Z => 
                           ML_int_1_6_port);
   M1_0_5 : MUX2_X1 port map( A => A(5), B => A(4), S => SH(0), Z => 
                           ML_int_1_5_port);
   M1_0_4 : MUX2_X1 port map( A => A(4), B => A(3), S => SH(0), Z => 
                           ML_int_1_4_port);
   M1_0_3 : MUX2_X1 port map( A => A(3), B => A(2), S => SH(0), Z => 
                           ML_int_1_3_port);
   M1_0_2 : MUX2_X1 port map( A => A(2), B => A(1), S => SH(0), Z => 
                           ML_int_1_2_port);
   M1_0_1 : MUX2_X1 port map( A => A(1), B => A(0), S => SH(0), Z => 
                           ML_int_1_1_port);
   M0_0_0 : MUX2_X1 port map( A => A(0), B => A(15), S => SH(0), Z => 
                           ML_int_1_0_port);

end SYN_mx2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW01_addsub_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (15 downto 0);  CO : out std_logic);

end ALU_DW01_addsub_0;

architecture SYN_rpl of ALU_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port, B_AS_15_port, B_AS_14_port, B_AS_13_port, B_AS_12_port, 
      B_AS_11_port, B_AS_10_port, B_AS_9_port, B_AS_8_port, B_AS_7_port, 
      B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, 
      B_AS_1_port, B_AS_0_port, n_1018 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => n_1018, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B_AS_5_port, CI => carry_5_port, CO 
                           => carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B_AS_3_port, CI => carry_3_port, CO 
                           => carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B_AS_2_port, CI => carry_2_port, CO 
                           => carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B_AS_1_port, CI => carry_1_port, CO 
                           => carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => ADD_SUB, CO => 
                           carry_1_port, S => SUM(0));
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U8 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U9 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => B_AS_1_port);
   U10 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U11 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U12 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U13 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U14 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U15 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U16 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (15 downto 0); 
         OUTALU : out std_logic_vector (15 downto 0));

end ALU;

architecture SYN_BEHAVIOR of ALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X4
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_DW02_mult_0
      port( A, B : in std_logic_vector (7 downto 0);  TC : in std_logic;  
            PRODUCT : out std_logic_vector (15 downto 0));
   end component;
   
   component ALU_DW01_ash_0
      port( A : in std_logic_vector (15 downto 0);  DATA_TC : in std_logic;  SH
            : in std_logic_vector (3 downto 0);  SH_TC : in std_logic;  B : out
            std_logic_vector (15 downto 0));
   end component;
   
   component ALU_DW_rbsh_0
      port( A : in std_logic_vector (15 downto 0);  SH : in std_logic_vector (3
            downto 0);  SH_TC : in std_logic;  B : out std_logic_vector (15 
            downto 0));
   end component;
   
   component ALU_DW_lbsh_0
      port( A : in std_logic_vector (15 downto 0);  SH : in std_logic_vector (3
            downto 0);  SH_TC : in std_logic;  B : out std_logic_vector (15 
            downto 0));
   end component;
   
   component ALU_DW01_addsub_0
      port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (15 downto 0);  CO : out 
            std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N62, N63, N64, 
      N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79
      , N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, 
      N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, 
      N154, N155, N156, N157, N174, N175, N176, N177, N178, N179, N180, N181, 
      N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193, 
      N194, N195, N196, N197, N198, N199, N200, N201, N202, N203, N204, N205, 
      N206, N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, 
      N218, N219, N220, N221, N222, n1, n4, n5, n7, n8, U3_U1_Z_0, n149_port, 
      n150_port, n151_port, n152_port, n153_port, n154_port, n155_port, 
      n156_port, n157_port, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174_port, n175_port, 
      n176_port, n177_port, n178_port, n179_port, n180_port, n181_port, 
      n182_port, n183_port, n184_port, n185_port, n186_port, n187_port, 
      n188_port, n189_port, n190_port, n191_port, n192_port, n193_port, 
      n194_port, n195_port, n196_port, n197_port, n198_port, n199_port, 
      n200_port, n201_port, n202_port, n203_port, n204_port, n205_port, 
      n206_port, n207_port, n208_port, n209_port, n210_port, n211_port, 
      n212_port, n213_port, n214_port, n215_port, n216_port, n217_port, 
      n218_port, n219_port, n220_port, n221_port, n222_port, n223, n224, n225, 
      n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, 
      n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, 
      n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, 
      n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, 
      n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, 
      n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, 
      n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, 
      n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, 
      n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, 
      n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, 
      n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, 
      n358, n359, n360, n361, n362, n363, n364, n_1019 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   n1 <= '0';
   n4 <= '0';
   n5 <= '0';
   n7 <= '0';
   n8 <= '0';
   OUTALU_reg_15_inst : DLH_X1 port map( G => N206, D => N222, Q => OUTALU(15))
                           ;
   OUTALU_reg_14_inst : DLH_X1 port map( G => N206, D => N221, Q => OUTALU(14))
                           ;
   OUTALU_reg_13_inst : DLH_X1 port map( G => N206, D => N220, Q => OUTALU(13))
                           ;
   OUTALU_reg_12_inst : DLH_X1 port map( G => N206, D => N219, Q => OUTALU(12))
                           ;
   OUTALU_reg_11_inst : DLH_X1 port map( G => N206, D => N218, Q => OUTALU(11))
                           ;
   OUTALU_reg_10_inst : DLH_X1 port map( G => N206, D => N217, Q => OUTALU(10))
                           ;
   OUTALU_reg_9_inst : DLH_X1 port map( G => N206, D => N216, Q => OUTALU(9));
   OUTALU_reg_8_inst : DLH_X1 port map( G => N206, D => N215, Q => OUTALU(8));
   OUTALU_reg_7_inst : DLH_X1 port map( G => N206, D => N214, Q => OUTALU(7));
   OUTALU_reg_6_inst : DLH_X1 port map( G => N206, D => N213, Q => OUTALU(6));
   OUTALU_reg_5_inst : DLH_X1 port map( G => N206, D => N212, Q => OUTALU(5));
   OUTALU_reg_4_inst : DLH_X1 port map( G => N206, D => N211, Q => OUTALU(4));
   OUTALU_reg_3_inst : DLH_X1 port map( G => N206, D => N210, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N206, D => N209, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N206, D => N208, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N206, D => N207, Q => OUTALU(0));
   r87 : ALU_DW01_addsub_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), B(15) => DATA2(15), B(14) => DATA2(14),
                           B(13) => DATA2(13), B(12) => DATA2(12), B(11) => 
                           DATA2(11), B(10) => DATA2(10), B(9) => DATA2(9), 
                           B(8) => DATA2(8), B(7) => DATA2(7), B(6) => DATA2(6)
                           , B(5) => DATA2(5), B(4) => DATA2(4), B(3) => 
                           DATA2(3), B(2) => DATA2(2), B(1) => DATA2(1), B(0) 
                           => DATA2(0), CI => n1, ADD_SUB => n149_port, SUM(15)
                           => N77, SUM(14) => N76, SUM(13) => N75, SUM(12) => 
                           N74, SUM(11) => N73, SUM(10) => N72, SUM(9) => N71, 
                           SUM(8) => N70, SUM(7) => N69, SUM(6) => N68, SUM(5) 
                           => N67, SUM(4) => N66, SUM(3) => N65, SUM(2) => N64,
                           SUM(1) => N63, SUM(0) => N62, CO => n_1019);
   rol_48 : ALU_DW_lbsh_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), SH(3) => DATA2(3), SH(2) => DATA2(2), 
                           SH(1) => DATA2(1), SH(0) => DATA2(0), SH_TC => n4, 
                           B(15) => N189, B(14) => N188, B(13) => N187, B(12) 
                           => N186, B(11) => N185, B(10) => N184, B(9) => N183,
                           B(8) => N182, B(7) => N181, B(6) => N180, B(5) => 
                           N179, B(4) => N178, B(3) => N177, B(2) => N176, B(1)
                           => N175, B(0) => N174);
   ror_51 : ALU_DW_rbsh_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), SH(3) => DATA2(3), SH(2) => DATA2(2), 
                           SH(1) => DATA2(1), SH(0) => DATA2(0), SH_TC => n5, 
                           B(15) => N205, B(14) => N204, B(13) => N203, B(12) 
                           => N202, B(11) => N201, B(10) => N200, B(9) => N199,
                           B(8) => N198, B(7) => N197, B(6) => N196, B(5) => 
                           N195, B(4) => N194, B(3) => N193, B(2) => N192, B(1)
                           => N191, B(0) => N190);
   sll_40 : ALU_DW01_ash_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), DATA_TC => n7, SH(3) => DATA2(3), SH(2)
                           => DATA2(2), SH(1) => DATA2(1), SH(0) => DATA2(0), 
                           SH_TC => n7, B(15) => N157, B(14) => N156, B(13) => 
                           N155, B(12) => N154, B(11) => N153, B(10) => N152, 
                           B(9) => N151, B(8) => N150, B(7) => N149, B(6) => 
                           N148, B(5) => N147, B(4) => N146, B(3) => N145, B(2)
                           => N144, B(1) => N143, B(0) => N142);
   mult_27 : ALU_DW02_mult_0 port map( A(7) => DATA1(7), A(6) => DATA1(6), A(5)
                           => DATA1(5), A(4) => DATA1(4), A(3) => DATA1(3), 
                           A(2) => DATA1(2), A(1) => DATA1(1), A(0) => DATA1(0)
                           , B(7) => DATA2(7), B(6) => DATA2(6), B(5) => 
                           DATA2(5), B(4) => DATA2(4), B(3) => DATA2(3), B(2) 
                           => DATA2(2), B(1) => DATA2(1), B(0) => DATA2(0), TC 
                           => n8, PRODUCT(15) => N93, PRODUCT(14) => N92, 
                           PRODUCT(13) => N91, PRODUCT(12) => N90, PRODUCT(11) 
                           => N89, PRODUCT(10) => N88, PRODUCT(9) => N87, 
                           PRODUCT(8) => N86, PRODUCT(7) => N85, PRODUCT(6) => 
                           N84, PRODUCT(5) => N83, PRODUCT(4) => N82, 
                           PRODUCT(3) => N81, PRODUCT(2) => N80, PRODUCT(1) => 
                           N79, PRODUCT(0) => N78);
   U160 : NOR4_X2 port map( A1 => n362, A2 => n360, A3 => FUNC_2_port, A4 => 
                           FUNC_3_port, ZN => n164);
   U161 : NOR4_X4 port map( A1 => n359, A2 => n360, A3 => FUNC_1_port, A4 => 
                           FUNC_2_port, ZN => n154_port);
   U162 : NOR3_X4 port map( A1 => FUNC_1_port, A2 => FUNC_3_port, A3 => n363, 
                           ZN => n165);
   U163 : NOR4_X4 port map( A1 => n362, A2 => FUNC_0_port, A3 => FUNC_2_port, 
                           A4 => FUNC_3_port, ZN => n155_port);
   U164 : OR4_X1 port map( A1 => n360, A2 => FUNC_1_port, A3 => FUNC_2_port, A4
                           => FUNC_3_port, ZN => U3_U1_Z_0);
   U165 : INV_X1 port map( A => U3_U1_Z_0, ZN => n149_port);
   U166 : NAND4_X1 port map( A1 => n150_port, A2 => n151_port, A3 => n152_port,
                           A4 => n153_port, ZN => N222);
   U167 : AOI222_X1 port map( A1 => N205, A2 => n154_port, B1 => N93, B2 => 
                           n155_port, C1 => N189, C2 => n156_port, ZN => 
                           n153_port);
   U168 : AOI22_X1 port map( A1 => N77, A2 => n157_port, B1 => N157, B2 => n158
                           , ZN => n152_port);
   U169 : OAI21_X1 port map( B1 => n159, B2 => n160, A => DATA1(15), ZN => 
                           n151_port);
   U170 : NOR2_X1 port map( A1 => DATA2(15), A2 => n161, ZN => n160);
   U171 : OAI21_X1 port map( B1 => n162, B2 => n163, A => DATA2(15), ZN => 
                           n150_port);
   U172 : MUX2_X1 port map( A => n164, B => n165, S => n166, Z => n163);
   U173 : NAND3_X1 port map( A1 => n167, A2 => n168, A3 => n169, ZN => N221);
   U174 : AOI221_X1 port map( B1 => n170, B2 => n171, C1 => N76, C2 => 
                           n157_port, A => n172, ZN => n169);
   U175 : OAI22_X1 port map( A1 => n173, A2 => n174_port, B1 => n175_port, B2 
                           => n176_port, ZN => n172);
   U176 : AOI21_X1 port map( B1 => n165, B2 => n174_port, A => n162, ZN => 
                           n175_port);
   U177 : INV_X1 port map( A => DATA2(14), ZN => n174_port);
   U178 : MUX2_X1 port map( A => n177_port, B => n161, S => n176_port, Z => 
                           n173);
   U179 : AOI22_X1 port map( A1 => N156, A2 => n158, B1 => N92, B2 => n155_port
                           , ZN => n168);
   U180 : AOI22_X1 port map( A1 => N188, A2 => n156_port, B1 => N204, B2 => 
                           n154_port, ZN => n167);
   U181 : NAND4_X1 port map( A1 => n178_port, A2 => n179_port, A3 => n180_port,
                           A4 => n181_port, ZN => N220);
   U182 : AOI22_X1 port map( A1 => n170, A2 => n182_port, B1 => N75, B2 => 
                           n157_port, ZN => n181_port);
   U183 : AOI22_X1 port map( A1 => N155, A2 => n158, B1 => N91, B2 => n155_port
                           , ZN => n180_port);
   U184 : MUX2_X1 port map( A => n183_port, B => n184_port, S => DATA2(13), Z 
                           => n179_port);
   U185 : NOR2_X1 port map( A1 => n162, A2 => n185_port, ZN => n184_port);
   U186 : MUX2_X1 port map( A => n164, B => n165, S => n186_port, Z => 
                           n185_port);
   U187 : NAND2_X1 port map( A1 => DATA1(13), A2 => n165, ZN => n183_port);
   U188 : AOI22_X1 port map( A1 => N187, A2 => n156_port, B1 => N203, B2 => 
                           n154_port, ZN => n178_port);
   U189 : NAND3_X1 port map( A1 => n187_port, A2 => n188_port, A3 => n189_port,
                           ZN => N219);
   U190 : AOI221_X1 port map( B1 => n170, B2 => n190_port, C1 => N74, C2 => 
                           n157_port, A => n191_port, ZN => n189_port);
   U191 : OAI22_X1 port map( A1 => n192_port, A2 => n193_port, B1 => n194_port,
                           B2 => n195_port, ZN => n191_port);
   U192 : AOI21_X1 port map( B1 => n165, B2 => n193_port, A => n162, ZN => 
                           n194_port);
   U193 : INV_X1 port map( A => DATA2(12), ZN => n193_port);
   U194 : MUX2_X1 port map( A => n177_port, B => n161, S => n195_port, Z => 
                           n192_port);
   U195 : AOI22_X1 port map( A1 => N154, A2 => n158, B1 => N90, B2 => n155_port
                           , ZN => n188_port);
   U196 : AOI22_X1 port map( A1 => N186, A2 => n156_port, B1 => N202, B2 => 
                           n154_port, ZN => n187_port);
   U197 : NAND4_X1 port map( A1 => n196_port, A2 => n197_port, A3 => n198_port,
                           A4 => n199_port, ZN => N218);
   U198 : AOI221_X1 port map( B1 => N73, B2 => n157_port, C1 => N153, C2 => 
                           n158, A => n200_port, ZN => n199_port);
   U199 : OAI22_X1 port map( A1 => n201_port, A2 => n202_port, B1 => n203_port,
                           B2 => n204_port, ZN => n200_port);
   U200 : AOI22_X1 port map( A1 => N89, A2 => n155_port, B1 => N185, B2 => 
                           n156_port, ZN => n198_port);
   U201 : NAND2_X1 port map( A1 => N201, A2 => n154_port, ZN => n197_port);
   U202 : MUX2_X1 port map( A => n205_port, B => n206_port, S => DATA2(11), Z 
                           => n196_port);
   U203 : NOR2_X1 port map( A1 => n162, A2 => n207_port, ZN => n206_port);
   U204 : MUX2_X1 port map( A => n164, B => n165, S => n208_port, Z => 
                           n207_port);
   U205 : NAND2_X1 port map( A1 => DATA1(11), A2 => n165, ZN => n205_port);
   U206 : NAND4_X1 port map( A1 => n209_port, A2 => n210_port, A3 => n211_port,
                           A4 => n212_port, ZN => N217);
   U207 : AOI221_X1 port map( B1 => N72, B2 => n157_port, C1 => N152, C2 => 
                           n158, A => n213_port, ZN => n212_port);
   U208 : OAI22_X1 port map( A1 => n214_port, A2 => n202_port, B1 => n215_port,
                           B2 => n204_port, ZN => n213_port);
   U209 : AOI22_X1 port map( A1 => N88, A2 => n155_port, B1 => N184, B2 => 
                           n156_port, ZN => n211_port);
   U210 : NAND2_X1 port map( A1 => N200, A2 => n154_port, ZN => n210_port);
   U211 : MUX2_X1 port map( A => n216_port, B => n217_port, S => DATA2(10), Z 
                           => n209_port);
   U212 : NOR2_X1 port map( A1 => n162, A2 => n218_port, ZN => n217_port);
   U213 : MUX2_X1 port map( A => n164, B => n165, S => n219_port, Z => 
                           n218_port);
   U214 : NAND2_X1 port map( A1 => DATA1(10), A2 => n165, ZN => n216_port);
   U215 : NAND4_X1 port map( A1 => n220_port, A2 => n221_port, A3 => n222_port,
                           A4 => n223, ZN => N216);
   U216 : AOI221_X1 port map( B1 => N71, B2 => n157_port, C1 => N151, C2 => 
                           n158, A => n224, ZN => n223);
   U217 : OAI22_X1 port map( A1 => n225, A2 => n202_port, B1 => n226, B2 => 
                           n204_port, ZN => n224);
   U218 : AOI22_X1 port map( A1 => N87, A2 => n155_port, B1 => N183, B2 => 
                           n156_port, ZN => n222_port);
   U219 : NAND2_X1 port map( A1 => N199, A2 => n154_port, ZN => n221_port);
   U220 : MUX2_X1 port map( A => n227, B => n228, S => DATA2(9), Z => n220_port
                           );
   U221 : NOR2_X1 port map( A1 => n162, A2 => n229, ZN => n228);
   U222 : MUX2_X1 port map( A => n164, B => n165, S => n230, Z => n229);
   U223 : NAND2_X1 port map( A1 => DATA1(9), A2 => n165, ZN => n227);
   U224 : NAND3_X1 port map( A1 => n231, A2 => n232, A3 => n233, ZN => N215);
   U225 : AOI221_X1 port map( B1 => n170, B2 => n234, C1 => N70, C2 => 
                           n157_port, A => n235, ZN => n233);
   U226 : OAI222_X1 port map( A1 => n236, A2 => n204_port, B1 => n237, B2 => 
                           n238, C1 => n239, C2 => n240, ZN => n235);
   U227 : MUX2_X1 port map( A => n177_port, B => n161, S => n238, Z => n239);
   U228 : AOI21_X1 port map( B1 => n165, B2 => n240, A => n162, ZN => n237);
   U229 : INV_X1 port map( A => DATA2(8), ZN => n240);
   U230 : AOI22_X1 port map( A1 => N150, A2 => n158, B1 => N86, B2 => n155_port
                           , ZN => n232);
   U231 : AOI22_X1 port map( A1 => N182, A2 => n156_port, B1 => N198, B2 => 
                           n154_port, ZN => n231);
   U232 : NAND3_X1 port map( A1 => n241, A2 => n242, A3 => n243, ZN => N214);
   U233 : AOI221_X1 port map( B1 => n170, B2 => n244, C1 => DATA2(7), C2 => 
                           n245, A => n246, ZN => n243);
   U234 : OAI222_X1 port map( A1 => n203_port, A2 => n247, B1 => n248, B2 => 
                           n249, C1 => n201_port, C2 => n204_port, ZN => n246);
   U235 : INV_X1 port map( A => n250, ZN => n201_port);
   U236 : INV_X1 port map( A => n251, ZN => n248);
   U237 : OAI21_X1 port map( B1 => n161, B2 => DATA2(7), A => n252, ZN => n251)
                           ;
   U238 : NAND2_X1 port map( A1 => n253, A2 => n254, ZN => n245);
   U239 : MUX2_X1 port map( A => n177_port, B => n161, S => n249, Z => n253);
   U240 : AOI222_X1 port map( A1 => N85, A2 => n155_port, B1 => N69, B2 => 
                           n157_port, C1 => N149, C2 => n158, ZN => n242);
   U241 : AOI22_X1 port map( A1 => N181, A2 => n156_port, B1 => N197, B2 => 
                           n154_port, ZN => n241);
   U242 : NAND3_X1 port map( A1 => n255, A2 => n256, A3 => n257, ZN => N213);
   U243 : AOI221_X1 port map( B1 => n170, B2 => n258, C1 => DATA2(6), C2 => 
                           n259, A => n260, ZN => n257);
   U244 : OAI222_X1 port map( A1 => n215_port, A2 => n247, B1 => n261, B2 => 
                           n262, C1 => n214_port, C2 => n204_port, ZN => n260);
   U245 : INV_X1 port map( A => n263, ZN => n214_port);
   U246 : INV_X1 port map( A => n264, ZN => n261);
   U247 : OAI21_X1 port map( B1 => n161, B2 => DATA2(6), A => n252, ZN => n264)
                           ;
   U248 : NAND2_X1 port map( A1 => n265, A2 => n254, ZN => n259);
   U249 : MUX2_X1 port map( A => n177_port, B => n161, S => n262, Z => n265);
   U250 : AOI222_X1 port map( A1 => N84, A2 => n155_port, B1 => N68, B2 => 
                           n157_port, C1 => N148, C2 => n158, ZN => n256);
   U251 : AOI22_X1 port map( A1 => N180, A2 => n156_port, B1 => N196, B2 => 
                           n154_port, ZN => n255);
   U252 : NAND3_X1 port map( A1 => n266, A2 => n267, A3 => n268, ZN => N212);
   U253 : AOI221_X1 port map( B1 => DATA2(5), B2 => n269, C1 => n170, C2 => 
                           n270, A => n271, ZN => n268);
   U254 : OAI222_X1 port map( A1 => n226, A2 => n247, B1 => n272, B2 => n273, 
                           C1 => n225, C2 => n204_port, ZN => n271);
   U255 : INV_X1 port map( A => n274, ZN => n272);
   U256 : OAI21_X1 port map( B1 => n161, B2 => DATA2(5), A => n254, ZN => n274)
                           ;
   U257 : MUX2_X1 port map( A => n164, B => n165, S => n273, Z => n269);
   U258 : AOI222_X1 port map( A1 => N83, A2 => n155_port, B1 => N67, B2 => 
                           n157_port, C1 => N147, C2 => n158, ZN => n267);
   U259 : AOI22_X1 port map( A1 => N179, A2 => n156_port, B1 => N195, B2 => 
                           n154_port, ZN => n266);
   U260 : NAND3_X1 port map( A1 => n275, A2 => n276, A3 => n277, ZN => N211);
   U261 : AOI221_X1 port map( B1 => DATA2(4), B2 => n278, C1 => n170, C2 => 
                           n279, A => n280, ZN => n277);
   U262 : OAI222_X1 port map( A1 => n236, A2 => n247, B1 => n281, B2 => n282, 
                           C1 => n283, C2 => n204_port, ZN => n280);
   U263 : NAND2_X1 port map( A1 => n284, A2 => n285, ZN => n204_port);
   U264 : INV_X1 port map( A => n286, ZN => n281);
   U265 : OAI21_X1 port map( B1 => n161, B2 => DATA2(4), A => n254, ZN => n286)
                           ;
   U266 : NAND2_X1 port map( A1 => n287, A2 => n285, ZN => n247);
   U267 : MUX2_X1 port map( A => n164, B => n165, S => n282, Z => n278);
   U268 : AOI222_X1 port map( A1 => N82, A2 => n155_port, B1 => N66, B2 => 
                           n157_port, C1 => N146, C2 => n158, ZN => n276);
   U269 : AOI22_X1 port map( A1 => N178, A2 => n156_port, B1 => N194, B2 => 
                           n154_port, ZN => n275);
   U270 : NAND3_X1 port map( A1 => n288, A2 => n289, A3 => n290, ZN => N210);
   U271 : AOI221_X1 port map( B1 => n285, B2 => n291, C1 => N65, C2 => 
                           n157_port, A => n292, ZN => n290);
   U272 : OAI22_X1 port map( A1 => n293, A2 => n294, B1 => n295, B2 => n296, ZN
                           => n292);
   U273 : AOI21_X1 port map( B1 => n165, B2 => n294, A => n162, ZN => n295);
   U274 : MUX2_X1 port map( A => n177_port, B => n161, S => n296, Z => n293);
   U275 : OAI221_X1 port map( B1 => n297, B2 => n298, C1 => n203_port, C2 => 
                           n299, A => n300, ZN => n291);
   U276 : AOI22_X1 port map( A1 => n301, A2 => n302, B1 => n287, B2 => n250, ZN
                           => n300);
   U277 : OAI221_X1 port map( B1 => n186_port, B2 => n303, C1 => n304, C2 => 
                           n195_port, A => n305, ZN => n250);
   U278 : AOI22_X1 port map( A1 => DATA1(11), A2 => n306, B1 => n307, B2 => 
                           DATA1(14), ZN => n305);
   U279 : OAI221_X1 port map( B1 => n308, B2 => n296, C1 => n304, C2 => n282, A
                           => n309, ZN => n302);
   U280 : AOI22_X1 port map( A1 => DATA1(5), A2 => n310, B1 => DATA1(6), B2 => 
                           n307, ZN => n309);
   U281 : NAND2_X1 port map( A1 => DATA1(15), A2 => n306, ZN => n203_port);
   U282 : AOI21_X1 port map( B1 => DATA1(7), B2 => n306, A => n244, ZN => n297)
                           ;
   U283 : OAI222_X1 port map( A1 => n303, A2 => n230, B1 => n304, B2 => n238, 
                           C1 => n311, C2 => n219_port, ZN => n244);
   U284 : AOI22_X1 port map( A1 => N145, A2 => n158, B1 => N81, B2 => n155_port
                           , ZN => n289);
   U285 : AOI22_X1 port map( A1 => N177, A2 => n156_port, B1 => N193, B2 => 
                           n154_port, ZN => n288);
   U286 : NAND4_X1 port map( A1 => n312, A2 => n313, A3 => n314, A4 => n315, ZN
                           => N209);
   U287 : AOI22_X1 port map( A1 => n285, A2 => n316, B1 => N64, B2 => n157_port
                           , ZN => n315);
   U288 : OAI221_X1 port map( B1 => n317, B2 => n298, C1 => n215_port, C2 => 
                           n299, A => n318, ZN => n316);
   U289 : AOI22_X1 port map( A1 => n301, A2 => n319, B1 => n287, B2 => n263, ZN
                           => n318);
   U290 : OAI221_X1 port map( B1 => n303, B2 => n195_port, C1 => n304, C2 => 
                           n208_port, A => n320, ZN => n263);
   U291 : AOI22_X1 port map( A1 => DATA1(10), A2 => n306, B1 => n307, B2 => 
                           DATA1(13), ZN => n320);
   U292 : INV_X1 port map( A => DATA1(11), ZN => n208_port);
   U293 : OAI221_X1 port map( B1 => n308, B2 => n321, C1 => n304, C2 => n296, A
                           => n322, ZN => n319);
   U294 : AOI22_X1 port map( A1 => DATA1(4), A2 => n310, B1 => DATA1(5), B2 => 
                           n307, ZN => n322);
   U295 : INV_X1 port map( A => n171, ZN => n215_port);
   U296 : OAI22_X1 port map( A1 => n166, A2 => n304, B1 => n308, B2 => 
                           n176_port, ZN => n171);
   U297 : AOI21_X1 port map( B1 => DATA1(6), B2 => n306, A => n258, ZN => n317)
                           ;
   U298 : OAI222_X1 port map( A1 => n303, A2 => n238, B1 => n304, B2 => n249, 
                           C1 => n311, C2 => n230, ZN => n258);
   U299 : INV_X1 port map( A => DATA1(7), ZN => n249);
   U300 : INV_X1 port map( A => DATA1(8), ZN => n238);
   U301 : AOI22_X1 port map( A1 => N144, A2 => n158, B1 => N80, B2 => n155_port
                           , ZN => n314);
   U302 : MUX2_X1 port map( A => n323, B => n324, S => n325, Z => n313);
   U303 : NAND2_X1 port map( A1 => DATA1(2), A2 => n165, ZN => n324);
   U304 : NOR2_X1 port map( A1 => n162, A2 => n326, ZN => n323);
   U305 : MUX2_X1 port map( A => n164, B => n165, S => n321, Z => n326);
   U306 : AOI22_X1 port map( A1 => N176, A2 => n156_port, B1 => N192, B2 => 
                           n154_port, ZN => n312);
   U307 : NAND4_X1 port map( A1 => n327, A2 => n328, A3 => n329, A4 => n330, ZN
                           => N208);
   U308 : AOI222_X1 port map( A1 => n285, A2 => n331, B1 => DATA1(1), B2 => 
                           n332, C1 => n170, C2 => n333, ZN => n330);
   U309 : OAI222_X1 port map( A1 => n303, A2 => n296, B1 => n304, B2 => n321, 
                           C1 => n311, C2 => n282, ZN => n333);
   U310 : OAI21_X1 port map( B1 => DATA2(1), B2 => n161, A => n252, ZN => n332)
                           ;
   U311 : OAI222_X1 port map( A1 => n334, A2 => n298, B1 => n226, B2 => n299, 
                           C1 => n225, C2 => n335, ZN => n331);
   U312 : INV_X1 port map( A => n336, ZN => n225);
   U313 : OAI221_X1 port map( B1 => n304, B2 => n219_port, C1 => n195_port, C2 
                           => n311, A => n337, ZN => n336);
   U314 : AOI22_X1 port map( A1 => DATA1(11), A2 => n310, B1 => DATA1(9), B2 =>
                           n306, ZN => n337);
   U315 : INV_X1 port map( A => DATA1(12), ZN => n195_port);
   U316 : INV_X1 port map( A => n182_port, ZN => n226);
   U317 : OAI222_X1 port map( A1 => n176_port, A2 => n304, B1 => n166, B2 => 
                           n303, C1 => n308, C2 => n186_port, ZN => n182_port);
   U318 : INV_X1 port map( A => DATA1(15), ZN => n166);
   U319 : INV_X1 port map( A => n270, ZN => n334);
   U320 : OAI221_X1 port map( B1 => n308, B2 => n273, C1 => n304, C2 => n262, A
                           => n338, ZN => n270);
   U321 : AOI22_X1 port map( A1 => DATA1(7), A2 => n310, B1 => DATA1(8), B2 => 
                           n307, ZN => n338);
   U322 : INV_X1 port map( A => DATA1(6), ZN => n262);
   U323 : AOI22_X1 port map( A1 => DATA2(1), A2 => n339, B1 => N63, B2 => 
                           n157_port, ZN => n329);
   U324 : NAND2_X1 port map( A1 => n340, A2 => n254, ZN => n339);
   U325 : MUX2_X1 port map( A => n177_port, B => n161, S => n341, Z => n340);
   U326 : AOI22_X1 port map( A1 => N143, A2 => n158, B1 => N79, B2 => n155_port
                           , ZN => n328);
   U327 : AOI22_X1 port map( A1 => N175, A2 => n156_port, B1 => N191, B2 => 
                           n154_port, ZN => n327);
   U328 : NAND4_X1 port map( A1 => n342, A2 => n343, A3 => n344, A4 => n345, ZN
                           => N207);
   U329 : AOI222_X1 port map( A1 => n285, A2 => n346, B1 => DATA1(0), B2 => 
                           n347, C1 => n170, C2 => n348, ZN => n345);
   U330 : OAI222_X1 port map( A1 => n303, A2 => n321, B1 => n304, B2 => n341, 
                           C1 => n311, C2 => n296, ZN => n348);
   U331 : INV_X1 port map( A => DATA1(3), ZN => n296);
   U332 : INV_X1 port map( A => DATA1(1), ZN => n341);
   U333 : INV_X1 port map( A => DATA1(2), ZN => n321);
   U334 : INV_X1 port map( A => n202_port, ZN => n170);
   U335 : OAI21_X1 port map( B1 => DATA2(0), B2 => n161, A => n252, ZN => n347)
                           ;
   U336 : INV_X1 port map( A => n159, ZN => n252);
   U337 : NOR2_X1 port map( A1 => n308, A2 => n202_port, ZN => n159);
   U338 : NAND2_X1 port map( A1 => n285, A2 => n301, ZN => n202_port);
   U339 : NOR2_X1 port map( A1 => DATA2(2), A2 => DATA2(3), ZN => n301);
   U340 : OAI222_X1 port map( A1 => n349, A2 => n298, B1 => n236, B2 => n299, 
                           C1 => n283, C2 => n335, ZN => n346);
   U341 : INV_X1 port map( A => n287, ZN => n335);
   U342 : NOR2_X1 port map( A1 => n294, A2 => DATA2(2), ZN => n287);
   U343 : INV_X1 port map( A => DATA2(3), ZN => n294);
   U344 : INV_X1 port map( A => n234, ZN => n283);
   U345 : OAI221_X1 port map( B1 => n303, B2 => n219_port, C1 => n304, C2 => 
                           n230, A => n350, ZN => n234);
   U346 : AOI22_X1 port map( A1 => DATA1(8), A2 => n306, B1 => DATA1(11), B2 =>
                           n307, ZN => n350);
   U347 : INV_X1 port map( A => DATA1(9), ZN => n230);
   U348 : INV_X1 port map( A => DATA1(10), ZN => n219_port);
   U349 : NAND2_X1 port map( A1 => DATA2(3), A2 => DATA2(2), ZN => n299);
   U350 : INV_X1 port map( A => n190_port, ZN => n236);
   U351 : OAI221_X1 port map( B1 => n176_port, B2 => n303, C1 => n304, C2 => 
                           n186_port, A => n351, ZN => n190_port);
   U352 : AOI22_X1 port map( A1 => DATA1(12), A2 => n306, B1 => n307, B2 => 
                           DATA1(15), ZN => n351);
   U353 : INV_X1 port map( A => DATA1(13), ZN => n186_port);
   U354 : INV_X1 port map( A => DATA1(14), ZN => n176_port);
   U355 : INV_X1 port map( A => n284, ZN => n298);
   U356 : NOR2_X1 port map( A1 => n325, A2 => DATA2(3), ZN => n284);
   U357 : INV_X1 port map( A => DATA2(2), ZN => n325);
   U358 : INV_X1 port map( A => n279, ZN => n349);
   U359 : OAI221_X1 port map( B1 => n308, B2 => n282, C1 => n304, C2 => n273, A
                           => n352, ZN => n279);
   U360 : AOI22_X1 port map( A1 => DATA1(6), A2 => n310, B1 => DATA1(7), B2 => 
                           n307, ZN => n352);
   U361 : INV_X1 port map( A => n311, ZN => n307);
   U362 : NAND2_X1 port map( A1 => DATA2(1), A2 => DATA2(0), ZN => n311);
   U363 : INV_X1 port map( A => n303, ZN => n310);
   U364 : NAND2_X1 port map( A1 => DATA2(1), A2 => n353, ZN => n303);
   U365 : INV_X1 port map( A => DATA1(5), ZN => n273);
   U366 : OR2_X1 port map( A1 => n353, A2 => DATA2(1), ZN => n304);
   U367 : INV_X1 port map( A => DATA2(0), ZN => n353);
   U368 : INV_X1 port map( A => DATA1(4), ZN => n282);
   U369 : INV_X1 port map( A => n306, ZN => n308);
   U370 : NOR2_X1 port map( A1 => DATA2(0), A2 => DATA2(1), ZN => n306);
   U371 : AOI22_X1 port map( A1 => DATA2(0), A2 => n354, B1 => N62, B2 => 
                           n157_port, ZN => n344);
   U372 : INV_X1 port map( A => n355, ZN => n157_port);
   U373 : NAND2_X1 port map( A1 => n356, A2 => n254, ZN => n354);
   U374 : INV_X1 port map( A => n162, ZN => n254);
   U375 : NOR2_X1 port map( A1 => n161, A2 => FUNC_0_port, ZN => n162);
   U376 : MUX2_X1 port map( A => n161, B => n177_port, S => DATA1(0), Z => n356
                           );
   U377 : INV_X1 port map( A => n164, ZN => n177_port);
   U378 : AOI22_X1 port map( A1 => N142, A2 => n158, B1 => N78, B2 => n155_port
                           , ZN => n343);
   U379 : AOI22_X1 port map( A1 => N174, A2 => n156_port, B1 => N190, B2 => 
                           n154_port, ZN => n342);
   U380 : NAND4_X1 port map( A1 => n355, A2 => n161, A3 => n357, A4 => n358, ZN
                           => N206);
   U381 : NOR4_X1 port map( A1 => n285, A2 => n155_port, A3 => n158, A4 => 
                           n154_port, ZN => n358);
   U382 : AND2_X1 port map( A1 => n361, A2 => n360, ZN => n158);
   U383 : AND2_X1 port map( A1 => n361, A2 => FUNC_0_port, ZN => n285);
   U384 : NOR3_X1 port map( A1 => n362, A2 => FUNC_3_port, A3 => n363, ZN => 
                           n361);
   U385 : NOR2_X1 port map( A1 => n156_port, A2 => n164, ZN => n357);
   U386 : INV_X1 port map( A => FUNC_1_port, ZN => n362);
   U387 : AND2_X1 port map( A1 => FUNC_3_port, A2 => n364, ZN => n156_port);
   U388 : INV_X1 port map( A => n165, ZN => n161);
   U389 : INV_X1 port map( A => FUNC_2_port, ZN => n363);
   U390 : AOI21_X1 port map( B1 => n359, B2 => n364, A => n149_port, ZN => n355
                           );
   U391 : INV_X1 port map( A => FUNC_0_port, ZN => n360);
   U392 : NOR3_X1 port map( A1 => FUNC_1_port, A2 => FUNC_2_port, A3 => 
                           FUNC_0_port, ZN => n364);
   U393 : INV_X1 port map( A => FUNC_3_port, ZN => n359);

end SYN_BEHAVIOR;
