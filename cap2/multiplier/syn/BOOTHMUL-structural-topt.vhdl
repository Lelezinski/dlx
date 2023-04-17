
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net59241, net59238, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => net59241);
   U2 : NAND2_X1 port map( A1 => A, A2 => n7, ZN => n5);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U4 : XNOR2_X1 port map( A => net59238, B => n6, ZN => S);
   U5 : OAI21_X1 port map( B1 => n4, B2 => net59241, A => n5, ZN => Co);
   U6 : CLKBUF_X1 port map( A => n4, Z => n6);
   U7 : CLKBUF_X1 port map( A => B, Z => n7);
   U8 : INV_X1 port map( A => net59241, ZN => net59238);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U5 : CLKBUF_X1 port map( A => Ci, Z => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n6);
   U3 : XNOR2_X1 port map( A => n7, B => n4, ZN => S);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n8, ZN => n7);
   U6 : OAI21_X1 port map( B1 => n5, B2 => n4, A => n6, ZN => Co);
   U7 : CLKBUF_X1 port map( A => n5, Z => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net59552, n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U3 : XNOR2_X1 port map( A => net59552, B => n4, ZN => S);
   U4 : OAI21_X1 port map( B1 => n6, B2 => n4, A => n5, ZN => Co);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => n6, ZN => net59552);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT8_1 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (7 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (7 downto 0)
         );

end MUX_5TO1_NBIT8_1;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT8_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n13, n15, n16, net58778, net58793, net58796, net58795, net58802, 
      net58804, net58827, net58864, net58872, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53 : std_logic;

begin
   
   U1 : INV_X1 port map( A => A3(2), ZN => n30);
   U2 : INV_X1 port map( A => A3(4), ZN => n29);
   U3 : AND2_X1 port map( A1 => n33, A2 => net58778, ZN => n22);
   U4 : NOR2_X1 port map( A1 => n23, A2 => n24, ZN => n13);
   U5 : NOR2_X1 port map( A1 => n28, A2 => n29, ZN => n23);
   U6 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => n24);
   U7 : MUX2_X1 port map( A => n39, B => n38, S => sel(0), Z => n36);
   U8 : AND2_X1 port map( A1 => sel(1), A2 => net58778, ZN => net58804);
   U9 : CLKBUF_X1 port map( A => net58802, Z => net58872);
   U10 : NAND2_X1 port map( A1 => A1(4), A2 => net58802, ZN => n34);
   U11 : INV_X1 port map( A => n28, ZN => net58864);
   U12 : NAND2_X1 port map( A1 => net58804, A2 => A2(4), ZN => n35);
   U13 : BUF_X1 port map( A => sel(1), Z => n40);
   U14 : NAND3_X1 port map( A1 => A1(3), A2 => n27, A3 => net58827, ZN => n37);
   U15 : NAND2_X1 port map( A1 => n40, A2 => A2(3), ZN => n39);
   U16 : NAND2_X1 port map( A1 => n40, A2 => A3(3), ZN => n38);
   U17 : NOR2_X1 port map( A1 => n41, A2 => sel(2), ZN => n33);
   U18 : NAND2_X1 port map( A1 => n41, A2 => net58827, ZN => n28);
   U19 : INV_X1 port map( A => sel(1), ZN => n27);
   U20 : INV_X1 port map( A => sel(0), ZN => net58778);
   U21 : INV_X1 port map( A => n27, ZN => n41);
   U22 : NOR2_X1 port map( A1 => n28, A2 => n30, ZN => n31);
   U23 : AOI21_X1 port map( B1 => A2(2), B2 => net58804, A => n31, ZN => n26);
   U24 : NAND2_X1 port map( A1 => n26, A2 => n25, ZN => O(2));
   U25 : AND2_X1 port map( A1 => n36, A2 => n37, ZN => n15);
   U26 : INV_X1 port map( A => n16, ZN => n32);
   U27 : AOI21_X1 port map( B1 => A1(2), B2 => net58802, A => n32, ZN => n25);
   U28 : AND2_X1 port map( A1 => n27, A2 => sel(0), ZN => net58802);
   U29 : INV_X1 port map( A => net58778, ZN => net58827);
   U30 : INV_X1 port map( A => net58804, ZN => net58795);
   U31 : INV_X1 port map( A => net58795, ZN => net58796);
   U32 : CLKBUF_X1 port map( A => net58872, Z => net58793);
   U33 : AOI22_X1 port map( A1 => A0(2), A2 => n22, B1 => A4(2), B2 => sel(2), 
                           ZN => n16);
   U34 : NAND2_X1 port map( A1 => n47, A2 => n13, ZN => O(4));
   U35 : AOI22_X1 port map( A1 => A0(4), A2 => n22, B1 => A4(4), B2 => sel(2), 
                           ZN => n47);
   U36 : NAND2_X1 port map( A1 => n49, A2 => n48, ZN => O(5));
   U37 : AOI22_X1 port map( A1 => A0(5), A2 => n22, B1 => A4(5), B2 => sel(2), 
                           ZN => n49);
   U38 : NAND2_X1 port map( A1 => n51, A2 => n50, ZN => O(6));
   U39 : AOI22_X1 port map( A1 => A0(6), A2 => n22, B1 => A4(6), B2 => sel(2), 
                           ZN => n51);
   U40 : NAND2_X1 port map( A1 => n53, A2 => n52, ZN => O(7));
   U41 : AOI22_X1 port map( A1 => A0(7), A2 => n22, B1 => sel(2), B2 => A4(7), 
                           ZN => n53);
   U42 : NAND2_X1 port map( A1 => n43, A2 => n42, ZN => O(0));
   U43 : AOI22_X1 port map( A1 => A0(0), A2 => n22, B1 => A4(0), B2 => sel(2), 
                           ZN => n43);
   U44 : NAND2_X1 port map( A1 => n45, A2 => n44, ZN => O(1));
   U45 : AOI22_X1 port map( A1 => A0(1), A2 => n22, B1 => A4(1), B2 => sel(2), 
                           ZN => n45);
   U46 : AOI222_X1 port map( A1 => A1(7), A2 => net58872, B1 => A3(7), B2 => 
                           net58864, C1 => A2(7), C2 => net58796, ZN => n52);
   U47 : AOI222_X1 port map( A1 => A1(6), A2 => net58872, B1 => A3(6), B2 => 
                           net58864, C1 => A2(6), C2 => net58796, ZN => n50);
   U48 : AOI222_X1 port map( A1 => A1(5), A2 => net58872, B1 => A3(5), B2 => 
                           net58864, C1 => A2(5), C2 => net58796, ZN => n48);
   U49 : AOI222_X1 port map( A1 => A1(1), A2 => net58793, B1 => A3(1), B2 => 
                           net58864, C1 => A2(1), C2 => net58796, ZN => n44);
   U50 : AOI222_X1 port map( A1 => A1(0), A2 => net58793, B1 => A3(0), B2 => 
                           net58864, C1 => A2(0), C2 => net58796, ZN => n42);
   U51 : AOI22_X1 port map( A1 => A0(3), A2 => n22, B1 => A4(3), B2 => sel(2), 
                           ZN => n46);
   U52 : NAND2_X1 port map( A1 => n46, A2 => n15, ZN => O(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_1 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_1;

architecture SYN_BEHAVIORAL of BE_BLOCK_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U3 : OR2_X1 port map( A1 => b(1), A2 => b(0), ZN => n4);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n6, ZN => n8);
   U5 : OAI22_X1 port map( A1 => n8, A2 => n5, B1 => b(2), B2 => n7, ZN => 
                           sel(1));
   U6 : INV_X1 port map( A => b(2), ZN => n5);
   U7 : CLKBUF_X1 port map( A => n8, Z => n9);
   U8 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n6);
   U9 : AOI21_X1 port map( B1 => n3, B2 => n7, A => b(2), ZN => sel(0));
   U10 : AND3_X1 port map( A1 => b(2), A2 => n7, A3 => n9, ZN => sel(2));
   U11 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n7);
   U12 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n10);
   U13 : OR2_X1 port map( A1 => b(0), A2 => b(1), ZN => n11);
   U14 : NAND2_X1 port map( A1 => n11, A2 => n10, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (7 downto 0);  Co : out std_logic);

end RCA_NBIT8;

architecture SYN_STRUCTURAL of RCA_NBIT8 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_7_port, CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, 
      CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_4 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_3 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_2 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_1 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT8_0 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (7 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (7 downto 0)
         );

end MUX_5TO1_NBIT8_0;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT8_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n19, n20,
      n21, net58800, net58817, net58836, net58860, net58859, net58882, net59046
      , n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, 
      n36, n37 : std_logic;

begin
   
   U1 : INV_X1 port map( A => A3(2), ZN => n28);
   U2 : AND2_X1 port map( A1 => n34, A2 => n27, ZN => n4);
   U3 : AND2_X1 port map( A1 => n32, A2 => n33, ZN => n22);
   U4 : INV_X1 port map( A => net58882, ZN => n33);
   U5 : NOR2_X1 port map( A1 => net58859, A2 => n23, ZN => net58836);
   U6 : NOR2_X1 port map( A1 => n28, A2 => n29, ZN => n30);
   U7 : INV_X1 port map( A => n29, ZN => net59046);
   U8 : NOR2_X1 port map( A1 => n34, A2 => n35, ZN => n32);
   U9 : NAND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n29);
   U10 : INV_X1 port map( A => sel(0), ZN => n24);
   U11 : INV_X1 port map( A => sel(1), ZN => n27);
   U12 : NAND2_X1 port map( A1 => sel(1), A2 => n24, ZN => net58859);
   U13 : INV_X1 port map( A => n24, ZN => n34);
   U14 : CLKBUF_X3 port map( A => sel(2), Z => n35);
   U15 : INV_X1 port map( A => n16, ZN => n31);
   U16 : AOI21_X1 port map( B1 => n4, B2 => A1(2), A => n31, ZN => n25);
   U17 : NAND2_X1 port map( A1 => n25, A2 => n26, ZN => O(2));
   U18 : AOI21_X1 port map( B1 => A2(2), B2 => net58860, A => n30, ZN => n26);
   U19 : INV_X1 port map( A => A2(3), ZN => n23);
   U20 : CLKBUF_X1 port map( A => net59046, Z => net58817);
   U21 : CLKBUF_X1 port map( A => sel(1), Z => net58882);
   U22 : INV_X1 port map( A => net58859, ZN => net58860);
   U23 : AND2_X1 port map( A1 => A1(3), A2 => n4, ZN => n36);
   U24 : AND2_X1 port map( A1 => A3(3), A2 => net59046, ZN => n37);
   U25 : NOR3_X1 port map( A1 => n36, A2 => net58836, A3 => n37, ZN => n15);
   U26 : CLKBUF_X1 port map( A => n4, Z => net58800);
   U27 : AOI22_X1 port map( A1 => A0(3), A2 => n22, B1 => A4(3), B2 => n35, ZN 
                           => n14);
   U28 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => O(4));
   U29 : AOI22_X1 port map( A1 => A0(4), A2 => n22, B1 => A4(4), B2 => n35, ZN 
                           => n12);
   U30 : AOI222_X1 port map( A1 => A1(4), A2 => n4, B1 => A3(4), B2 => net59046
                           , C1 => A2(4), C2 => net58860, ZN => n13);
   U31 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => O(5));
   U32 : AOI22_X1 port map( A1 => A0(5), A2 => n22, B1 => A4(5), B2 => n35, ZN 
                           => n10);
   U33 : AOI222_X1 port map( A1 => A1(5), A2 => n4, B1 => A3(5), B2 => net58817
                           , C1 => A2(5), C2 => net58860, ZN => n11);
   U34 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => O(6));
   U35 : AOI22_X1 port map( A1 => A0(6), A2 => n22, B1 => A4(6), B2 => n35, ZN 
                           => n8);
   U36 : AOI222_X1 port map( A1 => A1(6), A2 => net58800, B1 => A3(6), B2 => 
                           net58817, C1 => A2(6), C2 => net58860, ZN => n9);
   U37 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => O(1));
   U38 : AOI22_X1 port map( A1 => A0(1), A2 => n22, B1 => A4(1), B2 => n35, ZN 
                           => n18);
   U39 : AOI222_X1 port map( A1 => A1(1), A2 => net58800, B1 => A3(1), B2 => 
                           net58817, C1 => A2(1), C2 => net58860, ZN => n19);
   U40 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => O(0));
   U41 : AOI22_X1 port map( A1 => A0(0), A2 => n22, B1 => A4(0), B2 => n35, ZN 
                           => n20);
   U42 : AOI222_X1 port map( A1 => A1(0), A2 => net58800, B1 => A3(0), B2 => 
                           net58817, C1 => A2(0), C2 => net58860, ZN => n21);
   U43 : NAND2_X1 port map( A1 => n2, A2 => n3, ZN => O(7));
   U44 : AOI22_X1 port map( A1 => A0(7), A2 => n22, B1 => n35, B2 => A4(7), ZN 
                           => n2);
   U45 : AOI222_X1 port map( A1 => A1(7), A2 => net58800, B1 => A3(7), B2 => 
                           net58817, C1 => A2(7), C2 => net58860, ZN => n3);
   U46 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => O(3));
   U47 : AOI22_X1 port map( A1 => A0(2), A2 => n22, B1 => A4(2), B2 => sel(2), 
                           ZN => n16);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_0 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_0;

architecture SYN_BEHAVIORAL of BE_BLOCK_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n2);
   U4 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n2, ZN => n4);
   U5 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n2, ZN => n3);
   U6 : INV_X1 port map( A => b(2), ZN => n1);
   U7 : AND3_X1 port map( A1 => n4, A2 => n2, A3 => b(2), ZN => sel(2));
   U8 : OAI22_X1 port map( A1 => n1, A2 => n4, B1 => b(2), B2 => n2, ZN => 
                           sel(1));
   U9 : AOI21_X1 port map( B1 => n3, B2 => n2, A => b(2), ZN => sel(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL is

   port( A, B : in std_logic_vector (3 downto 0);  P : out std_logic_vector (7 
         downto 0));

end BOOTHMUL;

architecture SYN_MIXED of BOOTHMUL is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX_5TO1_NBIT8_1
      port( A0, A1, A2, A3, A4 : in std_logic_vector (7 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (7 downto 
            0));
   end component;
   
   component RCA_NBIT8
      port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (7 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_1
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT8_0
      port( A0, A1, A2, A3, A4 : in std_logic_vector (7 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (7 downto 
            0));
   end component;
   
   component BE_BLOCK_0
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   signal X_Logic0_port, selVector_1_2_port, selVector_1_1_port, 
      selVector_1_0_port, selVector_0_2_port, selVector_0_1_port, 
      selVector_0_0_port, muxOutVector_1_7_port, muxOutVector_1_6_port, 
      muxOutVector_1_5_port, muxOutVector_1_4_port, muxOutVector_1_3_port, 
      muxOutVector_1_2_port, muxOutVector_1_1_port, muxOutVector_1_0_port, 
      muxOutVector_0_7_port, muxOutVector_0_6_port, muxOutVector_0_5_port, 
      muxOutVector_0_4_port, muxOutVector_0_3_port, muxOutVector_0_2_port, 
      muxOutVector_0_1_port, muxOutVector_0_0_port, muxInputs_0_1_3_port, 
      muxInputs_0_1_2_port, muxInputs_0_1_1_port, n8, n9, n10, n11, n12, n13, 
      n_1000 : std_logic;

begin
   
   X_Logic0_port <= '0';
   eb_0 : BE_BLOCK_0 port map( b(2) => B(1), b(1) => B(0), b(0) => 
                           X_Logic0_port, sel(2) => selVector_0_2_port, sel(1) 
                           => selVector_0_1_port, sel(0) => selVector_0_0_port)
                           ;
   mux_0 : MUX_5TO1_NBIT8_0 port map( A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(7) => A(3), A1(6) => A(3), A1(5) 
                           => A(3), A1(4) => A(3), A1(3) => A(3), A1(2) => A(2)
                           , A1(1) => A(1), A1(0) => A(0), A2(7) => n8, A2(6) 
                           => n8, A2(5) => n8, A2(4) => n8, A2(3) => 
                           muxInputs_0_1_3_port, A2(2) => muxInputs_0_1_2_port,
                           A2(1) => muxInputs_0_1_1_port, A2(0) => A(0), A3(7) 
                           => A(3), A3(6) => A(3), A3(5) => A(3), A3(4) => A(3)
                           , A3(3) => A(2), A3(2) => A(1), A3(1) => A(0), A3(0)
                           => X_Logic0_port, A4(7) => n8, A4(6) => n8, A4(5) =>
                           n8, A4(4) => n13, A4(3) => muxInputs_0_1_2_port, 
                           A4(2) => muxInputs_0_1_1_port, A4(1) => A(0), A4(0) 
                           => X_Logic0_port, sel(2) => selVector_0_2_port, 
                           sel(1) => selVector_0_1_port, sel(0) => 
                           selVector_0_0_port, O(7) => muxOutVector_0_7_port, 
                           O(6) => muxOutVector_0_6_port, O(5) => 
                           muxOutVector_0_5_port, O(4) => muxOutVector_0_4_port
                           , O(3) => muxOutVector_0_3_port, O(2) => 
                           muxOutVector_0_2_port, O(1) => muxOutVector_0_1_port
                           , O(0) => muxOutVector_0_0_port);
   eb_1 : BE_BLOCK_1 port map( b(2) => B(3), b(1) => B(2), b(0) => B(1), sel(2)
                           => selVector_1_2_port, sel(1) => selVector_1_1_port,
                           sel(0) => selVector_1_0_port);
   sum_1 : RCA_NBIT8 port map( A(7) => muxOutVector_0_7_port, A(6) => 
                           muxOutVector_0_6_port, A(5) => muxOutVector_0_5_port
                           , A(4) => muxOutVector_0_4_port, A(3) => 
                           muxOutVector_0_3_port, A(2) => muxOutVector_0_2_port
                           , A(1) => muxOutVector_0_1_port, A(0) => 
                           muxOutVector_0_0_port, B(7) => muxOutVector_1_7_port
                           , B(6) => muxOutVector_1_6_port, B(5) => 
                           muxOutVector_1_5_port, B(4) => muxOutVector_1_4_port
                           , B(3) => muxOutVector_1_3_port, B(2) => 
                           muxOutVector_1_2_port, B(1) => muxOutVector_1_1_port
                           , B(0) => muxOutVector_1_0_port, Ci => X_Logic0_port
                           , S(7) => P(7), S(6) => P(6), S(5) => P(5), S(4) => 
                           P(4), S(3) => P(3), S(2) => P(2), S(1) => P(1), S(0)
                           => P(0), Co => n_1000);
   mux_1 : MUX_5TO1_NBIT8_1 port map( A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(7) => A(3), A1(6) => A(3), A1(5) 
                           => A(3), A1(4) => A(2), A1(3) => A(1), A1(2) => A(0)
                           , A1(1) => X_Logic0_port, A1(0) => X_Logic0_port, 
                           A2(7) => n8, A2(6) => n8, A2(5) => n13, A2(4) => 
                           muxInputs_0_1_2_port, A2(3) => muxInputs_0_1_1_port,
                           A2(2) => A(0), A2(1) => X_Logic0_port, A2(0) => 
                           X_Logic0_port, A3(7) => A(3), A3(6) => A(3), A3(5) 
                           => A(2), A3(4) => A(1), A3(3) => A(0), A3(2) => 
                           X_Logic0_port, A3(1) => X_Logic0_port, A3(0) => 
                           X_Logic0_port, A4(7) => n8, A4(6) => n13, A4(5) => 
                           muxInputs_0_1_2_port, A4(4) => muxInputs_0_1_1_port,
                           A4(3) => A(0), A4(2) => X_Logic0_port, A4(1) => 
                           X_Logic0_port, A4(0) => X_Logic0_port, sel(2) => 
                           selVector_1_2_port, sel(1) => selVector_1_1_port, 
                           sel(0) => selVector_1_0_port, O(7) => 
                           muxOutVector_1_7_port, O(6) => muxOutVector_1_6_port
                           , O(5) => muxOutVector_1_5_port, O(4) => 
                           muxOutVector_1_4_port, O(3) => muxOutVector_1_3_port
                           , O(2) => muxOutVector_1_2_port, O(1) => 
                           muxOutVector_1_1_port, O(0) => muxOutVector_1_0_port
                           );
   U12 : XOR2_X1 port map( A => A(0), B => A(1), Z => muxInputs_0_1_1_port);
   U13 : CLKBUF_X1 port map( A => muxInputs_0_1_3_port, Z => n13);
   U14 : INV_X1 port map( A => n10, ZN => n8);
   U15 : OAI21_X1 port map( B1 => n11, B2 => n9, A => n10, ZN => 
                           muxInputs_0_1_3_port);
   U16 : NAND2_X1 port map( A1 => n9, A2 => n11, ZN => n10);
   U17 : OR3_X2 port map( A1 => A(2), A2 => A(0), A3 => A(1), ZN => n11);
   U18 : INV_X1 port map( A => A(3), ZN => n9);
   U19 : NOR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n12);
   U20 : XNOR2_X1 port map( A => A(2), B => n12, ZN => muxInputs_0_1_2_port);

end SYN_MIXED;
