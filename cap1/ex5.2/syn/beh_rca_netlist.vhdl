
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity RCA is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA;

architecture SYN_BEHAVIORAL of RCA is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18 : std_logic;

begin
   
   U3 : XNOR2_X1 port map( A => n3, B => n4, ZN => S(3));
   U4 : XOR2_X1 port map( A => B(3), B => A(3), Z => n4);
   U5 : XOR2_X1 port map( A => n5, B => n6, Z => S(2));
   U6 : XOR2_X1 port map( A => B(2), B => A(2), Z => n6);
   U7 : XOR2_X1 port map( A => n7, B => n8, Z => S(1));
   U8 : XOR2_X1 port map( A => B(1), B => A(1), Z => n8);
   U9 : XOR2_X1 port map( A => A(0), B => n9, Z => S(0));
   U10 : XOR2_X1 port map( A => Ci, B => B(0), Z => n9);
   U11 : OAI22_X1 port map( A1 => n3, A2 => n10, B1 => n11, B2 => n12, ZN => Co
                           );
   U12 : INV_X1 port map( A => B(3), ZN => n12);
   U13 : AND2_X1 port map( A1 => n10, A2 => n3, ZN => n11);
   U14 : INV_X1 port map( A => A(3), ZN => n10);
   U15 : AOI22_X1 port map( A1 => n5, A2 => A(2), B1 => n13, B2 => B(2), ZN => 
                           n3);
   U16 : OR2_X1 port map( A1 => A(2), A2 => n5, ZN => n13);
   U17 : INV_X1 port map( A => n14, ZN => n5);
   U18 : AOI22_X1 port map( A1 => n7, A2 => A(1), B1 => n15, B2 => B(1), ZN => 
                           n14);
   U19 : OR2_X1 port map( A1 => A(1), A2 => n7, ZN => n15);
   U20 : OAI21_X1 port map( B1 => n16, B2 => n17, A => n18, ZN => n7);
   U21 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Ci, ZN => n18);
   U22 : INV_X1 port map( A => B(0), ZN => n17);
   U23 : INV_X1 port map( A => A(0), ZN => n16);

end SYN_BEHAVIORAL;
