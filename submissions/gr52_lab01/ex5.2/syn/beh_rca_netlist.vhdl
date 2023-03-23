
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

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15 : std_logic;

begin
   
   U3 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n3);
   U4 : XOR2_X1 port map( A => n4, B => n5, Z => S(3));
   U5 : XOR2_X1 port map( A => B(3), B => A(3), Z => n5);
   U6 : XNOR2_X1 port map( A => n6, B => n7, ZN => S(2));
   U7 : XNOR2_X1 port map( A => A(2), B => B(2), ZN => n6);
   U8 : XOR2_X1 port map( A => n3, B => n8, Z => S(1));
   U9 : XOR2_X1 port map( A => B(1), B => A(1), Z => n8);
   U10 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U11 : INV_X1 port map( A => n9, ZN => Co);
   U12 : AOI22_X1 port map( A1 => n4, A2 => A(3), B1 => n10, B2 => B(3), ZN => 
                           n9);
   U13 : OR2_X1 port map( A1 => A(3), A2 => n4, ZN => n10);
   U14 : OAI21_X1 port map( B1 => n11, B2 => n12, A => n13, ZN => n4);
   U15 : OAI21_X1 port map( B1 => A(2), B2 => n7, A => B(2), ZN => n13);
   U16 : INV_X1 port map( A => n11, ZN => n7);
   U17 : INV_X1 port map( A => A(2), ZN => n12);
   U18 : AOI21_X1 port map( B1 => n3, B2 => A(1), A => n14, ZN => n11);
   U19 : INV_X1 port map( A => n15, ZN => n14);
   U20 : OAI21_X1 port map( B1 => n3, B2 => A(1), A => B(1), ZN => n15);

end SYN_BEHAVIORAL;
