
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => n4, A2 => n5, B1 => n6, B2 => n7, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n7);
   U3 : INV_X1 port map( A => A, ZN => n6);
   U4 : XOR2_X1 port map( A => n6, B => n8, Z => n4);
   U5 : INV_X1 port map( A => Ci, ZN => n5);
   U6 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U7 : CLKBUF_X1 port map( A => B, Z => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n5);
   U2 : NOR2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U3 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : XOR2_X1 port map( A => B, B => n4, Z => S);
   U5 : XOR2_X1 port map( A => n7, B => A, Z => n4);
   U6 : CLKBUF_X1 port map( A => Ci, Z => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n6, B2 => n5, A => n7, ZN => Co);
   U2 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U4 : INV_X1 port map( A => Ci, ZN => n6);
   U5 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U6 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => n7, A2 => n6, B1 => Ci, B2 => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : XNOR2_X1 port map( A => B, B => n5, ZN => n7);
   U4 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => n6, A2 => n5, B1 => Ci, B2 => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U5 : XOR2_X1 port map( A => Ci, B => n5, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U5 : XOR2_X1 port map( A => Ci, B => n5, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U5 : XOR2_X1 port map( A => A, B => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U5 : XOR2_X1 port map( A => A, B => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => Ci, A2 => n6, B1 => n6, B2 => n5, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U5 : XOR2_X1 port map( A => A, B => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U5 : XOR2_X1 port map( A => A, B => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17641, n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : OAI22_X1 port map( A1 => Ci, A2 => n5, B1 => n5, B2 => n4, ZN => 
                           net17641);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : INV_X1 port map( A => net17641, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U3 : OAI22_X1 port map( A1 => Ci, A2 => n4, B1 => n4, B2 => n5, ZN => n6);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : XOR2_X1 port map( A => Ci, B => n5, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n6, B => B, ZN => n5);
   U3 : INV_X1 port map( A => A, ZN => n6);
   U4 : OAI22_X1 port map( A1 => Ci, A2 => n4, B1 => n4, B2 => n5, ZN => n7);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : XOR2_X1 port map( A => Ci, B => n5, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);
   U5 : XOR2_X1 port map( A => Ci, B => n5, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : OAI22_X1 port map( A1 => n8, A2 => n7, B1 => n6, B2 => n5, ZN => Co);
   U3 : XNOR2_X1 port map( A => Ci, B => n8, ZN => S);
   U4 : INV_X1 port map( A => A, ZN => n6);
   U5 : XOR2_X1 port map( A => n6, B => n4, Z => n8);
   U6 : INV_X1 port map( A => Ci, ZN => n7);
   U7 : INV_X1 port map( A => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U3 : OR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n8);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U6 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U7 : XOR2_X1 port map( A => n5, B => A, Z => n9);
   U8 : XOR2_X1 port map( A => n4, B => n9, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => B, ZN => S);
   U2 : XNOR2_X1 port map( A => Ci, B => A, ZN => n4);
   U3 : AOI21_X1 port map( B1 => n6, B2 => n7, A => n5, ZN => Co);
   U4 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U6 : INV_X1 port map( A => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => n7, ZN => n5);
   U4 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U5 : INV_X1 port map( A => Ci, ZN => n7);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U7 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U4 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U6 : INV_X1 port map( A => Ci, ZN => n7);
   U7 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => n7, ZN => n5);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U7 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : NOR2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U4 : NOR2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : BUF_X1 port map( A => Ci, Z => n7);
   U7 : AND2_X1 port map( A1 => B, A2 => A, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : NOR2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U3 : AND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U4 : NOR2_X1 port map( A1 => Ci, A2 => n5, ZN => n8);
   U5 : XNOR2_X1 port map( A => n4, B => n6, ZN => S);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U7 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net18148, net18153, n4, n5, n6 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U2 : OAI21_X1 port map( B1 => Ci, B2 => n6, A => n4, ZN => n5);
   U3 : INV_X1 port map( A => n5, ZN => Co);
   U4 : AND2_X1 port map( A1 => A, A2 => B, ZN => n6);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => net18153);
   U6 : CLKBUF_X1 port map( A => Ci, Z => net18148);
   U7 : XNOR2_X1 port map( A => net18148, B => net18153, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n5, B2 => n4, A => n6, ZN => Co);
   U2 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U6 : XNOR2_X1 port map( A => Ci, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal net18070, net18150, n4, n5, n6 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => net18150);
   U2 : AOI21_X1 port map( B1 => n5, B2 => n4, A => n6, ZN => Co);
   U3 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U5 : INV_X1 port map( A => Ci, ZN => n5);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => net18070);
   U7 : XNOR2_X1 port map( A => net18150, B => net18070, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17530, net17531, net17532, net18100, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U4 : CLKBUF_X1 port map( A => B, Z => net18100);
   U5 : INV_X1 port map( A => A, ZN => net17530);
   U6 : OAI21_X1 port map( B1 => net18100, B2 => A, A => n5, ZN => net17532);
   U7 : INV_X1 port map( A => net18100, ZN => net17531);
   U8 : OAI21_X1 port map( B1 => net17530, B2 => net17531, A => net17532, ZN =>
                           Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n7, ZN => S);
   U2 : INV_X1 port map( A => A, ZN => n5);
   U3 : XOR2_X1 port map( A => B, B => n5, Z => n7);
   U4 : INV_X1 port map( A => Ci, ZN => n6);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n6, B1 => n5, B2 => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => B, Z => n4);
   U2 : OR2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U3 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n8);
   U4 : CLKBUF_X1 port map( A => Ci, Z => n6);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U7 : XOR2_X1 port map( A => n6, B => A, Z => n9);
   U8 : XOR2_X1 port map( A => n4, B => n9, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => n8, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U3 : INV_X1 port map( A => n4, ZN => n6);
   U4 : AOI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => Co);
   U5 : INV_X1 port map( A => Ci, ZN => n8);
   U6 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n9);
   U7 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U8 : XOR2_X1 port map( A => A, B => n6, Z => n10);
   U9 : XOR2_X1 port map( A => n5, B => n10, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => n7, Z => n4);
   U2 : INV_X1 port map( A => n4, ZN => n5);
   U3 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U5 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U6 : INV_X1 port map( A => Ci, ZN => n7);
   U7 : XOR2_X1 port map( A => A, B => n5, Z => n9);
   U8 : XOR2_X1 port map( A => B, B => n9, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => n4);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U3 : AOI21_X1 port map( B1 => n6, B2 => n7, A => n5, ZN => Co);
   U4 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : XOR2_X1 port map( A => A, B => n4, Z => n8);
   U7 : XOR2_X1 port map( A => B, B => n8, Z => S);

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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => B, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => n4, ZN => S);
   U3 : XOR2_X1 port map( A => n6, B => A, Z => n5);
   U4 : CLKBUF_X1 port map( A => n8, Z => n6);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n9);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U7 : AOI21_X1 port map( B1 => n8, B2 => n9, A => n7, ZN => Co);
   U8 : INV_X1 port map( A => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X32
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n4, ZN => n9);
   U2 : INV_X32 port map( A => n5, ZN => n4);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U7 : INV_X1 port map( A => Ci, ZN => n7);
   U8 : XOR2_X1 port map( A => n9, B => B, Z => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => n5, B => A, ZN => n4);
   U3 : INV_X1 port map( A => n7, ZN => n5);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U7 : INV_X1 port map( A => Ci, ZN => n7);

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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => n5, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => n7, ZN => n5);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : AOI21_X1 port map( B1 => n7, B2 => n8, A => n6, ZN => Co);
   U7 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17448, net17449, net17450, net17911, net17816, n4 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : CLKBUF_X1 port map( A => Ci, Z => net17816);
   U4 : CLKBUF_X1 port map( A => B, Z => net17911);
   U5 : OAI21_X1 port map( B1 => net17911, B2 => A, A => net17816, ZN => 
                           net17450);
   U6 : INV_X1 port map( A => A, ZN => net17448);
   U7 : INV_X1 port map( A => net17911, ZN => net17449);
   U8 : OAI21_X1 port map( B1 => net17448, B2 => net17449, A => net17450, ZN =>
                           Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT16_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_2;

architecture SYN_STRUCTURAL of RCA_NBIT16_2 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_28 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_27 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_26 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_25 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_24 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_23 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_22 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_21 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_20 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_19 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_18 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_17 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_1;

architecture SYN_STRUCTURAL of RCA_NBIT16_1 is

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
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_12 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_11 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_10 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_9 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_8 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_7 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9), 
                           Co => CTMP_10_port);
   FAI_11 : FA_6 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_5 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_4 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_3 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_2 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_1 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT16_3 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto 0)
         );

end MUX_5TO1_NBIT16_3;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT16_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
      n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66
      , n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, 
      n81, n82, n83, n84, n85, n86, n87, n88 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel(1), ZN => n38);
   U2 : INV_X1 port map( A => n38, ZN => n39);
   U3 : CLKBUF_X1 port map( A => n42, Z => n43);
   U4 : AND2_X2 port map( A1 => sel(0), A2 => n42, ZN => n46);
   U5 : BUF_X1 port map( A => sel(1), Z => n42);
   U6 : CLKBUF_X1 port map( A => n45, Z => n40);
   U7 : INV_X1 port map( A => sel(0), ZN => n41);
   U8 : AND2_X2 port map( A1 => n39, A2 => n41, ZN => n45);
   U9 : AND2_X1 port map( A1 => sel(0), A2 => n38, ZN => n47);
   U10 : OAI221_X1 port map( B1 => A3(4), B2 => n41, C1 => A2(4), C2 => sel(0),
                           A => n43, ZN => n65);
   U11 : AND3_X1 port map( A1 => n41, A2 => n38, A3 => n49, ZN => n44);
   U12 : AOI22_X1 port map( A1 => A0(2), A2 => n44, B1 => A3(2), B2 => n46, ZN 
                           => n55);
   U13 : NAND4_X1 port map( A1 => n57, A2 => n55, A3 => n56, A4 => n54, ZN => 
                           O(2));
   U14 : INV_X2 port map( A => n49, ZN => n48);
   U15 : NAND2_X1 port map( A1 => A4(2), A2 => n48, ZN => n54);
   U16 : INV_X1 port map( A => sel(1), ZN => n58);
   U17 : INV_X1 port map( A => sel(0), ZN => n63);
   U18 : AOI222_X1 port map( A1 => A1(0), A2 => n47, B1 => A2(0), B2 => n40, C1
                           => A3(0), C2 => n46, ZN => n51);
   U19 : INV_X1 port map( A => sel(2), ZN => n49);
   U20 : AOI22_X1 port map( A1 => A0(0), A2 => n44, B1 => A4(0), B2 => n48, ZN 
                           => n50);
   U21 : NAND2_X1 port map( A1 => n51, A2 => n50, ZN => O(0));
   U22 : AOI222_X1 port map( A1 => A1(1), A2 => n47, B1 => A2(1), B2 => n40, C1
                           => A3(1), C2 => n46, ZN => n53);
   U23 : AOI22_X1 port map( A1 => A0(1), A2 => n44, B1 => A4(1), B2 => n48, ZN 
                           => n52);
   U24 : NAND2_X1 port map( A1 => n53, A2 => n52, ZN => O(1));
   U25 : NAND3_X1 port map( A1 => n42, A2 => n63, A3 => A2(2), ZN => n57);
   U26 : NAND3_X1 port map( A1 => sel(0), A2 => n58, A3 => A1(2), ZN => n56);
   U27 : NAND2_X1 port map( A1 => A0(3), A2 => n44, ZN => n62);
   U28 : NAND3_X1 port map( A1 => A1(3), A2 => sel(0), A3 => n38, ZN => n61);
   U29 : OAI221_X1 port map( B1 => A3(3), B2 => n41, C1 => A2(3), C2 => sel(0),
                           A => n43, ZN => n60);
   U30 : NAND2_X1 port map( A1 => A4(3), A2 => sel(2), ZN => n59);
   U31 : NAND4_X1 port map( A1 => n62, A2 => n61, A3 => n60, A4 => n59, ZN => 
                           O(3));
   U32 : NAND2_X1 port map( A1 => A1(4), A2 => n47, ZN => n66);
   U33 : AOI22_X1 port map( A1 => A0(4), A2 => n44, B1 => A4(4), B2 => n48, ZN 
                           => n64);
   U34 : NAND3_X1 port map( A1 => n66, A2 => n65, A3 => n64, ZN => O(4));
   U35 : AOI222_X1 port map( A1 => A1(5), A2 => n47, B1 => A2(5), B2 => n45, C1
                           => A3(5), C2 => n46, ZN => n68);
   U36 : AOI22_X1 port map( A1 => A0(5), A2 => n44, B1 => A4(5), B2 => n48, ZN 
                           => n67);
   U37 : NAND2_X1 port map( A1 => n68, A2 => n67, ZN => O(5));
   U38 : AOI222_X1 port map( A1 => A1(6), A2 => n47, B1 => A2(6), B2 => n45, C1
                           => A3(6), C2 => n46, ZN => n70);
   U39 : AOI22_X1 port map( A1 => A0(6), A2 => n44, B1 => A4(6), B2 => n48, ZN 
                           => n69);
   U40 : NAND2_X1 port map( A1 => n70, A2 => n69, ZN => O(6));
   U41 : AOI222_X1 port map( A1 => A1(7), A2 => n47, B1 => A2(7), B2 => n45, C1
                           => A3(7), C2 => n46, ZN => n72);
   U42 : AOI22_X1 port map( A1 => A0(7), A2 => n44, B1 => A4(7), B2 => n48, ZN 
                           => n71);
   U43 : NAND2_X1 port map( A1 => n72, A2 => n71, ZN => O(7));
   U44 : AOI222_X1 port map( A1 => A1(8), A2 => n47, B1 => A2(8), B2 => n45, C1
                           => A3(8), C2 => n46, ZN => n74);
   U45 : AOI22_X1 port map( A1 => A0(8), A2 => n44, B1 => A4(8), B2 => n48, ZN 
                           => n73);
   U46 : NAND2_X1 port map( A1 => n74, A2 => n73, ZN => O(8));
   U47 : AOI222_X1 port map( A1 => A1(9), A2 => n47, B1 => A2(9), B2 => n45, C1
                           => A3(9), C2 => n46, ZN => n76);
   U48 : AOI22_X1 port map( A1 => A0(9), A2 => n44, B1 => A4(9), B2 => n48, ZN 
                           => n75);
   U49 : NAND2_X1 port map( A1 => n76, A2 => n75, ZN => O(9));
   U50 : AOI222_X1 port map( A1 => A1(10), A2 => n47, B1 => A2(10), B2 => n45, 
                           C1 => A3(10), C2 => n46, ZN => n78);
   U51 : AOI22_X1 port map( A1 => A0(10), A2 => n44, B1 => A4(10), B2 => n48, 
                           ZN => n77);
   U52 : NAND2_X1 port map( A1 => n78, A2 => n77, ZN => O(10));
   U53 : AOI222_X1 port map( A1 => A1(11), A2 => n47, B1 => A2(11), B2 => n45, 
                           C1 => A3(11), C2 => n46, ZN => n80);
   U54 : AOI22_X1 port map( A1 => A0(11), A2 => n44, B1 => A4(11), B2 => n48, 
                           ZN => n79);
   U55 : NAND2_X1 port map( A1 => n80, A2 => n79, ZN => O(11));
   U56 : AOI222_X1 port map( A1 => A1(12), A2 => n47, B1 => A2(12), B2 => n45, 
                           C1 => A3(12), C2 => n46, ZN => n82);
   U57 : AOI22_X1 port map( A1 => A0(12), A2 => n44, B1 => A4(12), B2 => n48, 
                           ZN => n81);
   U58 : NAND2_X1 port map( A1 => n82, A2 => n81, ZN => O(12));
   U59 : AOI222_X1 port map( A1 => A1(13), A2 => n47, B1 => A2(13), B2 => n45, 
                           C1 => A3(13), C2 => n46, ZN => n84);
   U60 : AOI22_X1 port map( A1 => A0(13), A2 => n44, B1 => A4(13), B2 => n48, 
                           ZN => n83);
   U61 : NAND2_X1 port map( A1 => n84, A2 => n83, ZN => O(13));
   U62 : AOI222_X1 port map( A1 => A1(14), A2 => n47, B1 => A2(14), B2 => n45, 
                           C1 => A3(14), C2 => n46, ZN => n86);
   U63 : AOI22_X1 port map( A1 => A0(14), A2 => n44, B1 => A4(14), B2 => n48, 
                           ZN => n85);
   U64 : NAND2_X1 port map( A1 => n86, A2 => n85, ZN => O(14));
   U65 : AOI222_X1 port map( A1 => A1(15), A2 => n47, B1 => A2(15), B2 => n40, 
                           C1 => A3(15), C2 => n46, ZN => n88);
   U66 : AOI22_X1 port map( A1 => A0(15), A2 => n44, B1 => A4(15), B2 => n48, 
                           ZN => n87);
   U67 : NAND2_X1 port map( A1 => n88, A2 => n87, ZN => O(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT16_2 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto 0)
         );

end MUX_5TO1_NBIT16_2;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT16_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
      n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66
      , n67, n68, n69, n70, n71, n72, n73, n74, n75, n76 : std_logic;

begin
   
   U1 : AND2_X2 port map( A1 => sel(0), A2 => n43, ZN => n38);
   U2 : AND2_X2 port map( A1 => sel(1), A2 => n44, ZN => n39);
   U3 : AND2_X2 port map( A1 => sel(0), A2 => sel(1), ZN => n40);
   U4 : AND3_X1 port map( A1 => n44, A2 => n43, A3 => n42, ZN => n41);
   U5 : INV_X1 port map( A => sel(1), ZN => n43);
   U6 : INV_X1 port map( A => sel(0), ZN => n44);
   U7 : AOI222_X1 port map( A1 => A1(0), A2 => n38, B1 => A2(0), B2 => n39, C1 
                           => A3(0), C2 => n40, ZN => n46);
   U8 : INV_X1 port map( A => sel(2), ZN => n42);
   U9 : AOI22_X1 port map( A1 => A0(0), A2 => n41, B1 => A4(0), B2 => sel(2), 
                           ZN => n45);
   U10 : NAND2_X1 port map( A1 => n46, A2 => n45, ZN => O(0));
   U11 : AOI222_X1 port map( A1 => A1(1), A2 => n38, B1 => A2(1), B2 => n39, C1
                           => A3(1), C2 => n40, ZN => n48);
   U12 : AOI22_X1 port map( A1 => A0(1), A2 => n41, B1 => A4(1), B2 => sel(2), 
                           ZN => n47);
   U13 : NAND2_X1 port map( A1 => n48, A2 => n47, ZN => O(1));
   U14 : AOI222_X1 port map( A1 => A1(2), A2 => n38, B1 => A2(2), B2 => n39, C1
                           => A3(2), C2 => n40, ZN => n50);
   U15 : AOI22_X1 port map( A1 => A0(2), A2 => n41, B1 => A4(2), B2 => sel(2), 
                           ZN => n49);
   U16 : NAND2_X1 port map( A1 => n50, A2 => n49, ZN => O(2));
   U17 : AOI222_X1 port map( A1 => A1(3), A2 => n38, B1 => A2(3), B2 => n39, C1
                           => A3(3), C2 => n40, ZN => n52);
   U18 : AOI22_X1 port map( A1 => A0(3), A2 => n41, B1 => A4(3), B2 => sel(2), 
                           ZN => n51);
   U19 : NAND2_X1 port map( A1 => n52, A2 => n51, ZN => O(3));
   U20 : AOI222_X1 port map( A1 => A1(4), A2 => n38, B1 => A2(4), B2 => n39, C1
                           => A3(4), C2 => n40, ZN => n54);
   U21 : AOI22_X1 port map( A1 => A0(4), A2 => n41, B1 => A4(4), B2 => sel(2), 
                           ZN => n53);
   U22 : NAND2_X1 port map( A1 => n54, A2 => n53, ZN => O(4));
   U23 : AOI222_X1 port map( A1 => A1(5), A2 => n38, B1 => A2(5), B2 => n39, C1
                           => A3(5), C2 => n40, ZN => n56);
   U24 : AOI22_X1 port map( A1 => A0(5), A2 => n41, B1 => A4(5), B2 => sel(2), 
                           ZN => n55);
   U25 : NAND2_X1 port map( A1 => n56, A2 => n55, ZN => O(5));
   U26 : AOI222_X1 port map( A1 => A1(6), A2 => n38, B1 => A2(6), B2 => n39, C1
                           => A3(6), C2 => n40, ZN => n58);
   U27 : AOI22_X1 port map( A1 => A0(6), A2 => n41, B1 => A4(6), B2 => sel(2), 
                           ZN => n57);
   U28 : NAND2_X1 port map( A1 => n58, A2 => n57, ZN => O(6));
   U29 : AOI222_X1 port map( A1 => A1(7), A2 => n38, B1 => A2(7), B2 => n39, C1
                           => A3(7), C2 => n40, ZN => n60);
   U30 : AOI22_X1 port map( A1 => A0(7), A2 => n41, B1 => A4(7), B2 => sel(2), 
                           ZN => n59);
   U31 : NAND2_X1 port map( A1 => n60, A2 => n59, ZN => O(7));
   U32 : AOI222_X1 port map( A1 => A1(8), A2 => n38, B1 => A2(8), B2 => n39, C1
                           => A3(8), C2 => n40, ZN => n62);
   U33 : AOI22_X1 port map( A1 => A0(8), A2 => n41, B1 => A4(8), B2 => sel(2), 
                           ZN => n61);
   U34 : NAND2_X1 port map( A1 => n62, A2 => n61, ZN => O(8));
   U35 : AOI222_X1 port map( A1 => A1(9), A2 => n38, B1 => A2(9), B2 => n39, C1
                           => A3(9), C2 => n40, ZN => n64);
   U36 : AOI22_X1 port map( A1 => A0(9), A2 => n41, B1 => A4(9), B2 => sel(2), 
                           ZN => n63);
   U37 : NAND2_X1 port map( A1 => n64, A2 => n63, ZN => O(9));
   U38 : AOI222_X1 port map( A1 => A1(10), A2 => n38, B1 => A2(10), B2 => n39, 
                           C1 => A3(10), C2 => n40, ZN => n66);
   U39 : AOI22_X1 port map( A1 => A0(10), A2 => n41, B1 => A4(10), B2 => sel(2)
                           , ZN => n65);
   U40 : NAND2_X1 port map( A1 => n66, A2 => n65, ZN => O(10));
   U41 : AOI222_X1 port map( A1 => A1(11), A2 => n38, B1 => A2(11), B2 => n39, 
                           C1 => A3(11), C2 => n40, ZN => n68);
   U42 : AOI22_X1 port map( A1 => A0(11), A2 => n41, B1 => A4(11), B2 => sel(2)
                           , ZN => n67);
   U43 : NAND2_X1 port map( A1 => n68, A2 => n67, ZN => O(11));
   U44 : AOI222_X1 port map( A1 => A1(12), A2 => n38, B1 => A2(12), B2 => n39, 
                           C1 => A3(12), C2 => n40, ZN => n70);
   U45 : AOI22_X1 port map( A1 => A0(12), A2 => n41, B1 => A4(12), B2 => sel(2)
                           , ZN => n69);
   U46 : NAND2_X1 port map( A1 => n70, A2 => n69, ZN => O(12));
   U47 : AOI222_X1 port map( A1 => A1(13), A2 => n38, B1 => A2(13), B2 => n39, 
                           C1 => A3(13), C2 => n40, ZN => n72);
   U48 : AOI22_X1 port map( A1 => A0(13), A2 => n41, B1 => A4(13), B2 => sel(2)
                           , ZN => n71);
   U49 : NAND2_X1 port map( A1 => n72, A2 => n71, ZN => O(13));
   U50 : AOI222_X1 port map( A1 => A1(14), A2 => n38, B1 => A2(14), B2 => n39, 
                           C1 => A3(14), C2 => n40, ZN => n74);
   U51 : AOI22_X1 port map( A1 => A0(14), A2 => n41, B1 => A4(14), B2 => sel(2)
                           , ZN => n73);
   U52 : NAND2_X1 port map( A1 => n74, A2 => n73, ZN => O(14));
   U53 : AOI222_X1 port map( A1 => A1(15), A2 => n38, B1 => A2(15), B2 => n39, 
                           C1 => A3(15), C2 => n40, ZN => n76);
   U54 : AOI22_X1 port map( A1 => A0(15), A2 => n41, B1 => A4(15), B2 => sel(2)
                           , ZN => n75);
   U55 : NAND2_X1 port map( A1 => n76, A2 => n75, ZN => O(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT16_1 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto 0)
         );

end MUX_5TO1_NBIT16_1;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT16_1 is

   component AND2_X4
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X4
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
      n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66
      , n67, n68, n69, n70, n71, n72, n73, n74 : std_logic;

begin
   
   U1 : NOR3_X4 port map( A1 => sel(1), A2 => sel(2), A3 => sel(0), ZN => n68);
   U2 : NOR2_X4 port map( A1 => n74, A2 => sel(1), ZN => n71);
   U3 : INV_X1 port map( A => sel(0), ZN => n74);
   U4 : AND2_X2 port map( A1 => sel(1), A2 => sel(0), ZN => n70);
   U5 : NAND2_X1 port map( A1 => n63, A2 => n62, ZN => O(6));
   U6 : AOI22_X1 port map( A1 => A0(6), A2 => n68, B1 => A4(6), B2 => sel(2), 
                           ZN => n63);
   U7 : AOI222_X1 port map( A1 => A1(6), A2 => n71, B1 => A3(6), B2 => n70, C1 
                           => A2(6), C2 => n69, ZN => n62);
   U8 : NAND2_X1 port map( A1 => n65, A2 => n64, ZN => O(7));
   U9 : AOI22_X1 port map( A1 => A0(7), A2 => n68, B1 => A4(7), B2 => sel(2), 
                           ZN => n65);
   U10 : NAND2_X1 port map( A1 => n67, A2 => n66, ZN => O(8));
   U11 : AOI222_X1 port map( A1 => A1(8), A2 => n71, B1 => A3(8), B2 => n70, C1
                           => A2(8), C2 => n69, ZN => n66);
   U12 : NAND2_X1 port map( A1 => n73, A2 => n72, ZN => O(9));
   U13 : AOI22_X1 port map( A1 => A0(9), A2 => n68, B1 => sel(2), B2 => A4(9), 
                           ZN => n73);
   U14 : AOI222_X1 port map( A1 => A1(9), A2 => n71, B1 => A3(9), B2 => n70, C1
                           => A2(9), C2 => n69, ZN => n72);
   U15 : NAND2_X1 port map( A1 => n41, A2 => n40, ZN => O(10));
   U16 : AOI22_X1 port map( A1 => A0(10), A2 => n68, B1 => A4(10), B2 => sel(2)
                           , ZN => n41);
   U17 : AOI222_X1 port map( A1 => A1(10), A2 => n71, B1 => A3(10), B2 => n70, 
                           C1 => A2(10), C2 => n69, ZN => n40);
   U18 : NAND2_X1 port map( A1 => n43, A2 => n42, ZN => O(11));
   U19 : AOI22_X1 port map( A1 => A0(11), A2 => n68, B1 => A4(11), B2 => sel(2)
                           , ZN => n43);
   U20 : AOI222_X1 port map( A1 => A1(11), A2 => n71, B1 => A3(11), B2 => n70, 
                           C1 => A2(11), C2 => n69, ZN => n42);
   U21 : NAND2_X1 port map( A1 => n45, A2 => n44, ZN => O(12));
   U22 : AOI22_X1 port map( A1 => A0(12), A2 => n68, B1 => A4(12), B2 => sel(2)
                           , ZN => n45);
   U23 : AOI222_X1 port map( A1 => A1(12), A2 => n71, B1 => A3(12), B2 => n70, 
                           C1 => A2(12), C2 => n69, ZN => n44);
   U24 : NAND2_X1 port map( A1 => n49, A2 => n48, ZN => O(14));
   U25 : AOI22_X1 port map( A1 => A0(14), A2 => n68, B1 => A4(14), B2 => sel(2)
                           , ZN => n49);
   U26 : AOI222_X1 port map( A1 => A1(14), A2 => n71, B1 => A3(14), B2 => n70, 
                           C1 => A2(14), C2 => n69, ZN => n48);
   U27 : NAND2_X1 port map( A1 => n47, A2 => n46, ZN => O(13));
   U28 : AOI22_X1 port map( A1 => A0(13), A2 => n68, B1 => A4(13), B2 => sel(2)
                           , ZN => n47);
   U29 : AOI222_X1 port map( A1 => A1(13), A2 => n71, B1 => A3(13), B2 => n70, 
                           C1 => A2(13), C2 => n69, ZN => n46);
   U30 : NAND2_X1 port map( A1 => n51, A2 => n50, ZN => O(15));
   U31 : AOI22_X1 port map( A1 => A0(15), A2 => n68, B1 => A4(15), B2 => sel(2)
                           , ZN => n51);
   U32 : AOI222_X1 port map( A1 => A1(15), A2 => n71, B1 => A3(15), B2 => n70, 
                           C1 => A2(15), C2 => n69, ZN => n50);
   U33 : NAND2_X1 port map( A1 => n39, A2 => n38, ZN => O(0));
   U34 : AOI22_X1 port map( A1 => A0(0), A2 => n68, B1 => A4(0), B2 => sel(2), 
                           ZN => n39);
   U35 : AOI222_X1 port map( A1 => A1(0), A2 => n71, B1 => A3(0), B2 => n70, C1
                           => A2(0), C2 => n69, ZN => n38);
   U36 : NAND2_X1 port map( A1 => n53, A2 => n52, ZN => O(1));
   U37 : AOI22_X1 port map( A1 => A0(1), A2 => n68, B1 => A4(1), B2 => sel(2), 
                           ZN => n53);
   U38 : AOI222_X1 port map( A1 => A1(1), A2 => n71, B1 => A3(1), B2 => n70, C1
                           => A2(1), C2 => n69, ZN => n52);
   U39 : NAND2_X1 port map( A1 => n55, A2 => n54, ZN => O(2));
   U40 : AOI22_X1 port map( A1 => A0(2), A2 => n68, B1 => A4(2), B2 => sel(2), 
                           ZN => n55);
   U41 : AOI222_X1 port map( A1 => A1(2), A2 => n71, B1 => A3(2), B2 => n70, C1
                           => A2(2), C2 => n69, ZN => n54);
   U42 : NAND2_X1 port map( A1 => n57, A2 => n56, ZN => O(3));
   U43 : AOI22_X1 port map( A1 => A0(3), A2 => n68, B1 => A4(3), B2 => sel(2), 
                           ZN => n57);
   U44 : AOI222_X1 port map( A1 => A1(3), A2 => n71, B1 => A3(3), B2 => n70, C1
                           => A2(3), C2 => n69, ZN => n56);
   U45 : NAND2_X1 port map( A1 => n59, A2 => n58, ZN => O(4));
   U46 : AOI22_X1 port map( A1 => A0(4), A2 => n68, B1 => A4(4), B2 => sel(2), 
                           ZN => n59);
   U47 : AOI222_X1 port map( A1 => A1(4), A2 => n71, B1 => A3(4), B2 => n70, C1
                           => A2(4), C2 => n69, ZN => n58);
   U48 : NAND2_X1 port map( A1 => n61, A2 => n60, ZN => O(5));
   U49 : AOI22_X1 port map( A1 => A0(5), A2 => n68, B1 => A4(5), B2 => sel(2), 
                           ZN => n61);
   U50 : AOI222_X1 port map( A1 => A1(5), A2 => n71, B1 => A3(5), B2 => n70, C1
                           => A2(5), C2 => n69, ZN => n60);
   U51 : AOI22_X1 port map( A1 => A0(8), A2 => n68, B1 => A4(8), B2 => sel(2), 
                           ZN => n67);
   U52 : AOI222_X1 port map( A1 => A1(7), A2 => n71, B1 => A3(7), B2 => n70, C1
                           => A2(7), C2 => n69, ZN => n64);
   U53 : AND2_X4 port map( A1 => sel(1), A2 => n74, ZN => n69);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_3 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_3;

architecture SYN_BEHAVIORAL of BE_BLOCK_3 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U3 : NOR2_X2 port map( A1 => n4, A2 => b(2), ZN => sel(0));
   U4 : INV_X1 port map( A => n4, ZN => n10);
   U5 : NOR2_X1 port map( A1 => b(0), A2 => b(1), ZN => n4);
   U6 : INV_X1 port map( A => b(0), ZN => n6);
   U7 : INV_X1 port map( A => b(1), ZN => n5);
   U8 : INV_X1 port map( A => b(2), ZN => n9);
   U9 : NAND3_X1 port map( A1 => b(1), A2 => b(0), A3 => n9, ZN => n8);
   U10 : OAI221_X1 port map( B1 => b(1), B2 => b(0), C1 => n6, C2 => n5, A => 
                           b(2), ZN => n7);
   U11 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => sel(1));
   U12 : NOR2_X1 port map( A1 => n10, A2 => n9, ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_2 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_2;

architecture SYN_BEHAVIORAL of BE_BLOCK_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : NOR3_X4 port map( A1 => n8, A2 => n7, A3 => n6, ZN => sel(2));
   U4 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n4);
   U5 : OAI21_X1 port map( B1 => b(0), B2 => b(1), A => n4, ZN => n5);
   U6 : AOI21_X1 port map( B1 => n5, B2 => n4, A => b(2), ZN => sel(0));
   U7 : INV_X1 port map( A => n4, ZN => n7);
   U8 : INV_X1 port map( A => n5, ZN => n8);
   U9 : MUX2_X1 port map( A => n7, B => n8, S => b(2), Z => sel(1));
   U10 : INV_X1 port map( A => b(2), ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_1 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_1;

architecture SYN_BEHAVIORAL of BE_BLOCK_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U4 : AND3_X2 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));
   U5 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U6 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U7 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U8 : INV_X1 port map( A => b(2), ZN => n7);

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

entity RCA_NBIT16_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_0;

architecture SYN_STRUCTURAL of RCA_NBIT16_0 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_44 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_43 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_42 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_41 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_40 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_39 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_38 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_37 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_36 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_35 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_34 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_33 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT16_0 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto 0)
         );

end MUX_5TO1_NBIT16_0;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT16_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17738, net17739, net17845, net17864, net17881, net17884, net17927,
      net17943, net17742, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48
      , n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, 
      n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76 : 
      std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => sel(1), Z => n38);
   U2 : OAI211_X1 port map( C1 => n40, C2 => net17738, A => net17742, B => n41,
                           ZN => O(2));
   U3 : NAND3_X1 port map( A1 => n43, A2 => net17738, A3 => A2(2), ZN => n41);
   U4 : INV_X1 port map( A => sel(0), ZN => net17738);
   U5 : BUF_X1 port map( A => sel(1), Z => n43);
   U6 : AOI22_X1 port map( A1 => n43, A2 => A3(2), B1 => n39, B2 => A1(2), ZN 
                           => n40);
   U7 : AOI22_X1 port map( A1 => A0(2), A2 => net17864, B1 => sel(2), B2 => 
                           A4(2), ZN => net17742);
   U8 : INV_X1 port map( A => sel(1), ZN => n39);
   U9 : BUF_X1 port map( A => n39, Z => net17943);
   U10 : AND2_X2 port map( A1 => sel(0), A2 => net17943, ZN => net17884);
   U11 : AND2_X1 port map( A1 => sel(0), A2 => n38, ZN => net17881);
   U12 : CLKBUF_X1 port map( A => sel(1), Z => net17845);
   U13 : AND3_X1 port map( A1 => net17738, A2 => net17943, A3 => n42, ZN => 
                           net17864);
   U14 : INV_X1 port map( A => net17927, ZN => n42);
   U15 : BUF_X2 port map( A => sel(2), Z => net17927);
   U16 : NOR2_X1 port map( A1 => net17943, A2 => net17738, ZN => net17739);
   U17 : AND2_X2 port map( A1 => net17845, A2 => net17738, ZN => n44);
   U18 : AOI222_X1 port map( A1 => A1(0), A2 => net17884, B1 => A2(0), B2 => 
                           n44, C1 => A3(0), C2 => net17881, ZN => n46);
   U19 : AOI22_X1 port map( A1 => A0(0), A2 => net17864, B1 => A4(0), B2 => 
                           sel(2), ZN => n45);
   U20 : NAND2_X1 port map( A1 => n46, A2 => n45, ZN => O(0));
   U21 : AOI222_X1 port map( A1 => A1(1), A2 => net17884, B1 => A2(1), B2 => 
                           n44, C1 => A3(1), C2 => net17881, ZN => n48);
   U22 : AOI22_X1 port map( A1 => A0(1), A2 => net17864, B1 => A4(1), B2 => 
                           sel(2), ZN => n47);
   U23 : NAND2_X1 port map( A1 => n48, A2 => n47, ZN => O(1));
   U24 : AOI22_X1 port map( A1 => A0(3), A2 => net17864, B1 => net17739, B2 => 
                           A3(3), ZN => n52);
   U25 : NAND3_X1 port map( A1 => net17845, A2 => net17738, A3 => A2(3), ZN => 
                           n51);
   U26 : NOR2_X1 port map( A1 => net17845, A2 => net17738, ZN => n49);
   U27 : AOI22_X1 port map( A1 => n49, A2 => A1(3), B1 => A4(3), B2 => net17927
                           , ZN => n50);
   U28 : NAND3_X1 port map( A1 => n52, A2 => n51, A3 => n50, ZN => O(3));
   U29 : AOI222_X1 port map( A1 => A1(4), A2 => net17884, B1 => A0(4), B2 => 
                           net17864, C1 => A4(4), C2 => net17927, ZN => n54);
   U30 : AOI22_X1 port map( A1 => A3(4), A2 => net17881, B1 => A2(4), B2 => n44
                           , ZN => n53);
   U31 : NAND2_X1 port map( A1 => n53, A2 => n54, ZN => O(4));
   U32 : AOI222_X1 port map( A1 => A1(5), A2 => net17884, B1 => A2(5), B2 => 
                           n44, C1 => A3(5), C2 => net17881, ZN => n56);
   U33 : AOI22_X1 port map( A1 => A0(5), A2 => net17864, B1 => A4(5), B2 => 
                           net17927, ZN => n55);
   U34 : NAND2_X1 port map( A1 => n56, A2 => n55, ZN => O(5));
   U35 : AOI222_X1 port map( A1 => A4(6), A2 => net17927, B1 => A2(6), B2 => 
                           n44, C1 => A3(6), C2 => net17881, ZN => n58);
   U36 : AOI22_X1 port map( A1 => A1(6), A2 => net17884, B1 => A0(6), B2 => 
                           net17864, ZN => n57);
   U37 : NAND2_X1 port map( A1 => n58, A2 => n57, ZN => O(6));
   U38 : AOI222_X1 port map( A1 => A1(7), A2 => net17884, B1 => A2(7), B2 => 
                           n44, C1 => A3(7), C2 => net17881, ZN => n60);
   U39 : AOI22_X1 port map( A1 => A0(7), A2 => net17864, B1 => A4(7), B2 => 
                           net17927, ZN => n59);
   U40 : NAND2_X1 port map( A1 => n60, A2 => n59, ZN => O(7));
   U41 : AOI222_X1 port map( A1 => A1(8), A2 => net17884, B1 => A2(8), B2 => 
                           n44, C1 => A3(8), C2 => net17881, ZN => n62);
   U42 : AOI22_X1 port map( A1 => A0(8), A2 => net17864, B1 => A4(8), B2 => 
                           net17927, ZN => n61);
   U43 : NAND2_X1 port map( A1 => n62, A2 => n61, ZN => O(8));
   U44 : AOI222_X1 port map( A1 => A1(9), A2 => net17884, B1 => A2(9), B2 => 
                           n44, C1 => A3(9), C2 => net17881, ZN => n64);
   U45 : AOI22_X1 port map( A1 => A0(9), A2 => net17864, B1 => A4(9), B2 => 
                           sel(2), ZN => n63);
   U46 : NAND2_X1 port map( A1 => n64, A2 => n63, ZN => O(9));
   U47 : AOI222_X1 port map( A1 => A1(10), A2 => net17884, B1 => A2(10), B2 => 
                           n44, C1 => A3(10), C2 => net17881, ZN => n66);
   U48 : AOI22_X1 port map( A1 => A0(10), A2 => net17864, B1 => A4(10), B2 => 
                           sel(2), ZN => n65);
   U49 : NAND2_X1 port map( A1 => n66, A2 => n65, ZN => O(10));
   U50 : AOI222_X1 port map( A1 => A1(11), A2 => net17884, B1 => A2(11), B2 => 
                           n44, C1 => A3(11), C2 => net17881, ZN => n68);
   U51 : AOI22_X1 port map( A1 => A0(11), A2 => net17864, B1 => A4(11), B2 => 
                           sel(2), ZN => n67);
   U52 : NAND2_X1 port map( A1 => n68, A2 => n67, ZN => O(11));
   U53 : AOI222_X1 port map( A1 => A1(12), A2 => net17884, B1 => A2(12), B2 => 
                           n44, C1 => A3(12), C2 => net17881, ZN => n70);
   U54 : AOI22_X1 port map( A1 => A0(12), A2 => net17864, B1 => A4(12), B2 => 
                           sel(2), ZN => n69);
   U55 : NAND2_X1 port map( A1 => n70, A2 => n69, ZN => O(12));
   U56 : AOI222_X1 port map( A1 => A1(13), A2 => net17884, B1 => A2(13), B2 => 
                           n44, C1 => A3(13), C2 => net17881, ZN => n72);
   U57 : AOI22_X1 port map( A1 => A0(13), A2 => net17864, B1 => A4(13), B2 => 
                           sel(2), ZN => n71);
   U58 : NAND2_X1 port map( A1 => n72, A2 => n71, ZN => O(13));
   U59 : AOI222_X1 port map( A1 => A1(14), A2 => net17884, B1 => A2(14), B2 => 
                           n44, C1 => A3(14), C2 => net17881, ZN => n74);
   U60 : AOI22_X1 port map( A1 => A0(14), A2 => net17864, B1 => A4(14), B2 => 
                           sel(2), ZN => n73);
   U61 : NAND2_X1 port map( A1 => n74, A2 => n73, ZN => O(14));
   U62 : AOI222_X1 port map( A1 => A1(15), A2 => net17884, B1 => A2(15), B2 => 
                           n44, C1 => A3(15), C2 => net17881, ZN => n76);
   U63 : AOI22_X1 port map( A1 => A0(15), A2 => net17864, B1 => A4(15), B2 => 
                           sel(2), ZN => n75);
   U64 : NAND2_X1 port map( A1 => n76, A2 => n75, ZN => O(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_0 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_0;

architecture SYN_BEHAVIORAL of BE_BLOCK_0 is

   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : AOI21_X2 port map( B1 => n5, B2 => n6, A => n7, ZN => sel(1));
   U4 : XNOR2_X1 port map( A => n8, B => b(2), ZN => n7);
   U5 : AND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n8);
   U6 : INV_X1 port map( A => b(0), ZN => n6);
   U7 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U8 : INV_X1 port map( A => b(1), ZN => n5);
   U9 : INV_X1 port map( A => b(2), ZN => n4);
   U10 : NOR3_X4 port map( A1 => n4, A2 => b(0), A3 => b(1), ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL is

   port( A, B : in std_logic_vector (7 downto 0);  P : out std_logic_vector (15
         downto 0));

end BOOTHMUL;

architecture SYN_MIXED of BOOTHMUL is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX_5TO1_NBIT16_1
      port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto
            0));
   end component;
   
   component RCA_NBIT16_1
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_1
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT16_2
      port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto
            0));
   end component;
   
   component RCA_NBIT16_2
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_2
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT16_3
      port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto
            0));
   end component;
   
   component RCA_NBIT16_0
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_3
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT16_0
      port( A0, A1, A2, A3, A4 : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (15 downto
            0));
   end component;
   
   component BE_BLOCK_0
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   signal X_Logic0_port, selVector_3_2_port, selVector_3_1_port, 
      selVector_3_0_port, selVector_2_2_port, selVector_2_1_port, 
      selVector_2_0_port, selVector_1_2_port, selVector_1_1_port, 
      selVector_1_0_port, selVector_0_2_port, selVector_0_1_port, 
      selVector_0_0_port, muxOutVector_3_15_port, muxOutVector_3_14_port, 
      muxOutVector_3_13_port, muxOutVector_3_12_port, muxOutVector_3_11_port, 
      muxOutVector_3_10_port, muxOutVector_3_9_port, muxOutVector_3_8_port, 
      muxOutVector_3_7_port, muxOutVector_3_6_port, muxOutVector_3_5_port, 
      muxOutVector_3_4_port, muxOutVector_3_3_port, muxOutVector_3_2_port, 
      muxOutVector_3_1_port, muxOutVector_3_0_port, muxOutVector_2_15_port, 
      muxOutVector_2_14_port, muxOutVector_2_13_port, muxOutVector_2_12_port, 
      muxOutVector_2_11_port, muxOutVector_2_10_port, muxOutVector_2_9_port, 
      muxOutVector_2_8_port, muxOutVector_2_7_port, muxOutVector_2_6_port, 
      muxOutVector_2_5_port, muxOutVector_2_4_port, muxOutVector_2_3_port, 
      muxOutVector_2_2_port, muxOutVector_2_1_port, muxOutVector_2_0_port, 
      muxOutVector_1_15_port, muxOutVector_1_14_port, muxOutVector_1_13_port, 
      muxOutVector_1_12_port, muxOutVector_1_11_port, muxOutVector_1_10_port, 
      muxOutVector_1_9_port, muxOutVector_1_8_port, muxOutVector_1_7_port, 
      muxOutVector_1_6_port, muxOutVector_1_5_port, muxOutVector_1_4_port, 
      muxOutVector_1_3_port, muxOutVector_1_2_port, muxOutVector_1_1_port, 
      muxOutVector_1_0_port, muxOutVector_0_15_port, muxOutVector_0_14_port, 
      muxOutVector_0_13_port, muxOutVector_0_12_port, muxOutVector_0_11_port, 
      muxOutVector_0_10_port, muxOutVector_0_9_port, muxOutVector_0_8_port, 
      muxOutVector_0_7_port, muxOutVector_0_6_port, muxOutVector_0_5_port, 
      muxOutVector_0_4_port, muxOutVector_0_3_port, muxOutVector_0_2_port, 
      muxOutVector_0_1_port, muxOutVector_0_0_port, sumVector_2_15_port, 
      sumVector_2_14_port, sumVector_2_13_port, sumVector_2_12_port, 
      sumVector_2_11_port, sumVector_2_10_port, sumVector_2_9_port, 
      sumVector_2_8_port, sumVector_2_7_port, sumVector_2_6_port, 
      sumVector_2_5_port, sumVector_2_4_port, sumVector_2_3_port, 
      sumVector_2_2_port, sumVector_2_1_port, sumVector_2_0_port, 
      sumVector_1_15_port, sumVector_1_14_port, sumVector_1_13_port, 
      sumVector_1_12_port, sumVector_1_11_port, sumVector_1_10_port, 
      sumVector_1_9_port, sumVector_1_8_port, sumVector_1_7_port, 
      sumVector_1_6_port, sumVector_1_5_port, sumVector_1_4_port, 
      sumVector_1_3_port, sumVector_1_2_port, sumVector_1_1_port, 
      sumVector_1_0_port, r81_DIFF_2_port, r81_DIFF_3_port, r81_DIFF_4_port, 
      r81_DIFF_5_port, r81_DIFF_6_port, r81_DIFF_7_port, n32, n33, n34, n35, 
      n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50
      , n51, n52, n53, n54, n55, n56, n57, n58, n59, n_1000, n_1001, n_1002 : 
      std_logic;

begin
   
   X_Logic0_port <= '0';
   eb_0 : BE_BLOCK_0 port map( b(2) => B(1), b(1) => B(0), b(0) => 
                           X_Logic0_port, sel(2) => selVector_0_2_port, sel(1) 
                           => selVector_0_1_port, sel(0) => selVector_0_0_port)
                           ;
   mux_0 : MUX_5TO1_NBIT16_0 port map( A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(15) => n41, A1(14) => n41, A1(13) 
                           => n41, A1(12) => n41, A1(11) => n41, A1(10) => n41,
                           A1(9) => n41, A1(8) => n41, A1(7) => n41, A1(6) => 
                           A(6), A1(5) => A(5), A1(4) => A(4), A1(3) => A(3), 
                           A1(2) => A(2), A1(1) => A(1), A1(0) => A(0), A2(15) 
                           => n39, A2(14) => n39, A2(13) => n32, A2(12) => n32,
                           A2(11) => n38, A2(10) => n38, A2(9) => n38, A2(8) =>
                           n38, A2(7) => r81_DIFF_7_port, A2(6) => 
                           r81_DIFF_6_port, A2(5) => r81_DIFF_5_port, A2(4) => 
                           r81_DIFF_4_port, A2(3) => r81_DIFF_3_port, A2(2) => 
                           r81_DIFF_2_port, A2(1) => n35, A2(0) => A(0), A3(15)
                           => n43, A3(14) => n43, A3(13) => n42, A3(12) => n43,
                           A3(11) => n42, A3(10) => n42, A3(9) => n42, A3(8) =>
                           n42, A3(7) => A(6), A3(6) => A(5), A3(5) => A(4), 
                           A3(4) => A(3), A3(3) => A(2), A3(2) => A(1), A3(1) 
                           => A(0), A3(0) => X_Logic0_port, A4(15) => n32, 
                           A4(14) => n32, A4(13) => n37, A4(12) => n37, A4(11) 
                           => n37, A4(10) => n37, A4(9) => n37, A4(8) => 
                           r81_DIFF_7_port, A4(7) => r81_DIFF_6_port, A4(6) => 
                           r81_DIFF_5_port, A4(5) => r81_DIFF_4_port, A4(4) => 
                           r81_DIFF_3_port, A4(3) => n57, A4(2) => n36, A4(1) 
                           => A(0), A4(0) => X_Logic0_port, sel(2) => 
                           selVector_0_2_port, sel(1) => selVector_0_1_port, 
                           sel(0) => selVector_0_0_port, O(15) => 
                           muxOutVector_0_15_port, O(14) => 
                           muxOutVector_0_14_port, O(13) => 
                           muxOutVector_0_13_port, O(12) => 
                           muxOutVector_0_12_port, O(11) => 
                           muxOutVector_0_11_port, O(10) => 
                           muxOutVector_0_10_port, O(9) => 
                           muxOutVector_0_9_port, O(8) => muxOutVector_0_8_port
                           , O(7) => muxOutVector_0_7_port, O(6) => 
                           muxOutVector_0_6_port, O(5) => muxOutVector_0_5_port
                           , O(4) => muxOutVector_0_4_port, O(3) => 
                           muxOutVector_0_3_port, O(2) => muxOutVector_0_2_port
                           , O(1) => muxOutVector_0_1_port, O(0) => 
                           muxOutVector_0_0_port);
   eb_1 : BE_BLOCK_3 port map( b(2) => B(3), b(1) => B(2), b(0) => B(1), sel(2)
                           => selVector_1_2_port, sel(1) => selVector_1_1_port,
                           sel(0) => selVector_1_0_port);
   sum_1 : RCA_NBIT16_0 port map( A(15) => muxOutVector_0_15_port, A(14) => 
                           muxOutVector_0_14_port, A(13) => 
                           muxOutVector_0_13_port, A(12) => 
                           muxOutVector_0_12_port, A(11) => 
                           muxOutVector_0_11_port, A(10) => 
                           muxOutVector_0_10_port, A(9) => 
                           muxOutVector_0_9_port, A(8) => muxOutVector_0_8_port
                           , A(7) => muxOutVector_0_7_port, A(6) => 
                           muxOutVector_0_6_port, A(5) => muxOutVector_0_5_port
                           , A(4) => muxOutVector_0_4_port, A(3) => 
                           muxOutVector_0_3_port, A(2) => muxOutVector_0_2_port
                           , A(1) => muxOutVector_0_1_port, A(0) => 
                           muxOutVector_0_0_port, B(15) => 
                           muxOutVector_1_15_port, B(14) => 
                           muxOutVector_1_14_port, B(13) => 
                           muxOutVector_1_13_port, B(12) => 
                           muxOutVector_1_12_port, B(11) => 
                           muxOutVector_1_11_port, B(10) => 
                           muxOutVector_1_10_port, B(9) => 
                           muxOutVector_1_9_port, B(8) => muxOutVector_1_8_port
                           , B(7) => muxOutVector_1_7_port, B(6) => 
                           muxOutVector_1_6_port, B(5) => muxOutVector_1_5_port
                           , B(4) => muxOutVector_1_4_port, B(3) => 
                           muxOutVector_1_3_port, B(2) => muxOutVector_1_2_port
                           , B(1) => muxOutVector_1_1_port, B(0) => 
                           muxOutVector_1_0_port, Ci => X_Logic0_port, S(15) =>
                           sumVector_1_15_port, S(14) => sumVector_1_14_port, 
                           S(13) => sumVector_1_13_port, S(12) => 
                           sumVector_1_12_port, S(11) => sumVector_1_11_port, 
                           S(10) => sumVector_1_10_port, S(9) => 
                           sumVector_1_9_port, S(8) => sumVector_1_8_port, S(7)
                           => sumVector_1_7_port, S(6) => sumVector_1_6_port, 
                           S(5) => sumVector_1_5_port, S(4) => 
                           sumVector_1_4_port, S(3) => sumVector_1_3_port, S(2)
                           => sumVector_1_2_port, S(1) => sumVector_1_1_port, 
                           S(0) => sumVector_1_0_port, Co => n_1000);
   mux_1 : MUX_5TO1_NBIT16_3 port map( A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(15) => n42, A1(14) => n42, A1(13) 
                           => n42, A1(12) => n42, A1(11) => n42, A1(10) => n42,
                           A1(9) => n42, A1(8) => A(6), A1(7) => A(5), A1(6) =>
                           A(4), A1(5) => A(3), A1(4) => A(2), A1(3) => A(1), 
                           A1(2) => A(0), A1(1) => X_Logic0_port, A1(0) => 
                           X_Logic0_port, A2(15) => n32, A2(14) => n32, A2(13) 
                           => n32, A2(12) => n38, A2(11) => n38, A2(10) => n38,
                           A2(9) => r81_DIFF_7_port, A2(8) => r81_DIFF_6_port, 
                           A2(7) => r81_DIFF_5_port, A2(6) => r81_DIFF_4_port, 
                           A2(5) => n58, A2(4) => n57, A2(3) => n35, A2(2) => 
                           A(0), A2(1) => X_Logic0_port, A2(0) => X_Logic0_port
                           , A3(15) => n43, A3(14) => n43, A3(13) => n43, 
                           A3(12) => n43, A3(11) => n43, A3(10) => n43, A3(9) 
                           => A(6), A3(8) => A(5), A3(7) => A(4), A3(6) => A(3)
                           , A3(5) => A(2), A3(4) => A(1), A3(3) => A(0), A3(2)
                           => X_Logic0_port, A3(1) => X_Logic0_port, A3(0) => 
                           X_Logic0_port, A4(15) => n37, A4(14) => n37, A4(13) 
                           => n37, A4(12) => n37, A4(11) => n37, A4(10) => 
                           r81_DIFF_7_port, A4(9) => r81_DIFF_6_port, A4(8) => 
                           r81_DIFF_5_port, A4(7) => r81_DIFF_4_port, A4(6) => 
                           n58, A4(5) => n57, A4(4) => n36, A4(3) => A(0), 
                           A4(2) => X_Logic0_port, A4(1) => X_Logic0_port, 
                           A4(0) => X_Logic0_port, sel(2) => selVector_1_2_port
                           , sel(1) => selVector_1_1_port, sel(0) => 
                           selVector_1_0_port, O(15) => muxOutVector_1_15_port,
                           O(14) => muxOutVector_1_14_port, O(13) => 
                           muxOutVector_1_13_port, O(12) => 
                           muxOutVector_1_12_port, O(11) => 
                           muxOutVector_1_11_port, O(10) => 
                           muxOutVector_1_10_port, O(9) => 
                           muxOutVector_1_9_port, O(8) => muxOutVector_1_8_port
                           , O(7) => muxOutVector_1_7_port, O(6) => 
                           muxOutVector_1_6_port, O(5) => muxOutVector_1_5_port
                           , O(4) => muxOutVector_1_4_port, O(3) => 
                           muxOutVector_1_3_port, O(2) => muxOutVector_1_2_port
                           , O(1) => muxOutVector_1_1_port, O(0) => 
                           muxOutVector_1_0_port);
   eb_2 : BE_BLOCK_2 port map( b(2) => B(5), b(1) => B(4), b(0) => B(3), sel(2)
                           => selVector_2_2_port, sel(1) => selVector_2_1_port,
                           sel(0) => selVector_2_0_port);
   sum_2 : RCA_NBIT16_2 port map( A(15) => muxOutVector_2_15_port, A(14) => 
                           muxOutVector_2_14_port, A(13) => 
                           muxOutVector_2_13_port, A(12) => 
                           muxOutVector_2_12_port, A(11) => 
                           muxOutVector_2_11_port, A(10) => 
                           muxOutVector_2_10_port, A(9) => 
                           muxOutVector_2_9_port, A(8) => muxOutVector_2_8_port
                           , A(7) => muxOutVector_2_7_port, A(6) => 
                           muxOutVector_2_6_port, A(5) => muxOutVector_2_5_port
                           , A(4) => muxOutVector_2_4_port, A(3) => 
                           muxOutVector_2_3_port, A(2) => muxOutVector_2_2_port
                           , A(1) => muxOutVector_2_1_port, A(0) => 
                           muxOutVector_2_0_port, B(15) => sumVector_1_15_port,
                           B(14) => sumVector_1_14_port, B(13) => 
                           sumVector_1_13_port, B(12) => sumVector_1_12_port, 
                           B(11) => sumVector_1_11_port, B(10) => 
                           sumVector_1_10_port, B(9) => sumVector_1_9_port, 
                           B(8) => sumVector_1_8_port, B(7) => 
                           sumVector_1_7_port, B(6) => sumVector_1_6_port, B(5)
                           => sumVector_1_5_port, B(4) => sumVector_1_4_port, 
                           B(3) => sumVector_1_3_port, B(2) => 
                           sumVector_1_2_port, B(1) => sumVector_1_1_port, B(0)
                           => sumVector_1_0_port, Ci => X_Logic0_port, S(15) =>
                           sumVector_2_15_port, S(14) => sumVector_2_14_port, 
                           S(13) => sumVector_2_13_port, S(12) => 
                           sumVector_2_12_port, S(11) => sumVector_2_11_port, 
                           S(10) => sumVector_2_10_port, S(9) => 
                           sumVector_2_9_port, S(8) => sumVector_2_8_port, S(7)
                           => sumVector_2_7_port, S(6) => sumVector_2_6_port, 
                           S(5) => sumVector_2_5_port, S(4) => 
                           sumVector_2_4_port, S(3) => sumVector_2_3_port, S(2)
                           => sumVector_2_2_port, S(1) => sumVector_2_1_port, 
                           S(0) => sumVector_2_0_port, Co => n_1001);
   mux_2 : MUX_5TO1_NBIT16_2 port map( A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(15) => n42, A1(14) => n41, A1(13) 
                           => n41, A1(12) => n42, A1(11) => n42, A1(10) => A(6)
                           , A1(9) => A(5), A1(8) => A(4), A1(7) => A(3), A1(6)
                           => A(2), A1(5) => A(1), A1(4) => A(0), A1(3) => 
                           X_Logic0_port, A1(2) => X_Logic0_port, A1(1) => 
                           X_Logic0_port, A1(0) => X_Logic0_port, A2(15) => n32
                           , A2(14) => n32, A2(13) => n32, A2(12) => n32, 
                           A2(11) => r81_DIFF_7_port, A2(10) => r81_DIFF_6_port
                           , A2(9) => r81_DIFF_5_port, A2(8) => r81_DIFF_4_port
                           , A2(7) => n58, A2(6) => n57, A2(5) => n35, A2(4) =>
                           A(0), A2(3) => X_Logic0_port, A2(2) => X_Logic0_port
                           , A2(1) => X_Logic0_port, A2(0) => X_Logic0_port, 
                           A3(15) => n42, A3(14) => n42, A3(13) => n42, A3(12) 
                           => n42, A3(11) => A(6), A3(10) => A(5), A3(9) => 
                           A(4), A3(8) => A(3), A3(7) => A(2), A3(6) => A(1), 
                           A3(5) => A(0), A3(4) => X_Logic0_port, A3(3) => 
                           X_Logic0_port, A3(2) => X_Logic0_port, A3(1) => 
                           X_Logic0_port, A3(0) => X_Logic0_port, A4(15) => n37
                           , A4(14) => n37, A4(13) => n37, A4(12) => 
                           r81_DIFF_7_port, A4(11) => r81_DIFF_6_port, A4(10) 
                           => n33, A4(9) => r81_DIFF_4_port, A4(8) => n58, 
                           A4(7) => n57, A4(6) => n36, A4(5) => A(0), A4(4) => 
                           X_Logic0_port, A4(3) => X_Logic0_port, A4(2) => 
                           X_Logic0_port, A4(1) => X_Logic0_port, A4(0) => 
                           X_Logic0_port, sel(2) => selVector_2_2_port, sel(1) 
                           => selVector_2_1_port, sel(0) => selVector_2_0_port,
                           O(15) => muxOutVector_2_15_port, O(14) => 
                           muxOutVector_2_14_port, O(13) => 
                           muxOutVector_2_13_port, O(12) => 
                           muxOutVector_2_12_port, O(11) => 
                           muxOutVector_2_11_port, O(10) => 
                           muxOutVector_2_10_port, O(9) => 
                           muxOutVector_2_9_port, O(8) => muxOutVector_2_8_port
                           , O(7) => muxOutVector_2_7_port, O(6) => 
                           muxOutVector_2_6_port, O(5) => muxOutVector_2_5_port
                           , O(4) => muxOutVector_2_4_port, O(3) => 
                           muxOutVector_2_3_port, O(2) => muxOutVector_2_2_port
                           , O(1) => muxOutVector_2_1_port, O(0) => 
                           muxOutVector_2_0_port);
   eb_3 : BE_BLOCK_1 port map( b(2) => B(7), b(1) => B(6), b(0) => B(5), sel(2)
                           => selVector_3_2_port, sel(1) => selVector_3_1_port,
                           sel(0) => selVector_3_0_port);
   sum_3 : RCA_NBIT16_1 port map( A(15) => muxOutVector_3_15_port, A(14) => 
                           muxOutVector_3_14_port, A(13) => 
                           muxOutVector_3_13_port, A(12) => 
                           muxOutVector_3_12_port, A(11) => 
                           muxOutVector_3_11_port, A(10) => 
                           muxOutVector_3_10_port, A(9) => 
                           muxOutVector_3_9_port, A(8) => muxOutVector_3_8_port
                           , A(7) => muxOutVector_3_7_port, A(6) => 
                           muxOutVector_3_6_port, A(5) => muxOutVector_3_5_port
                           , A(4) => muxOutVector_3_4_port, A(3) => 
                           muxOutVector_3_3_port, A(2) => muxOutVector_3_2_port
                           , A(1) => muxOutVector_3_1_port, A(0) => 
                           muxOutVector_3_0_port, B(15) => sumVector_2_15_port,
                           B(14) => sumVector_2_14_port, B(13) => 
                           sumVector_2_13_port, B(12) => sumVector_2_12_port, 
                           B(11) => sumVector_2_11_port, B(10) => 
                           sumVector_2_10_port, B(9) => sumVector_2_9_port, 
                           B(8) => sumVector_2_8_port, B(7) => 
                           sumVector_2_7_port, B(6) => sumVector_2_6_port, B(5)
                           => sumVector_2_5_port, B(4) => sumVector_2_4_port, 
                           B(3) => sumVector_2_3_port, B(2) => 
                           sumVector_2_2_port, B(1) => sumVector_2_1_port, B(0)
                           => sumVector_2_0_port, Ci => X_Logic0_port, S(15) =>
                           P(15), S(14) => P(14), S(13) => P(13), S(12) => 
                           P(12), S(11) => P(11), S(10) => P(10), S(9) => P(9),
                           S(8) => P(8), S(7) => P(7), S(6) => P(6), S(5) => 
                           P(5), S(4) => P(4), S(3) => P(3), S(2) => P(2), S(1)
                           => P(1), S(0) => P(0), Co => n_1002);
   mux_3 : MUX_5TO1_NBIT16_1 port map( A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(15) => n41, A1(14) => n41, A1(13) 
                           => n41, A1(12) => A(6), A1(11) => A(5), A1(10) => 
                           A(4), A1(9) => A(3), A1(8) => A(2), A1(7) => A(1), 
                           A1(6) => A(0), A1(5) => X_Logic0_port, A1(4) => 
                           X_Logic0_port, A1(3) => X_Logic0_port, A1(2) => 
                           X_Logic0_port, A1(1) => X_Logic0_port, A1(0) => 
                           X_Logic0_port, A2(15) => n37, A2(14) => n37, A2(13) 
                           => r81_DIFF_7_port, A2(12) => r81_DIFF_6_port, 
                           A2(11) => n33, A2(10) => r81_DIFF_4_port, A2(9) => 
                           n58, A2(8) => n57, A2(7) => n35, A2(6) => A(0), 
                           A2(5) => X_Logic0_port, A2(4) => X_Logic0_port, 
                           A2(3) => X_Logic0_port, A2(2) => X_Logic0_port, 
                           A2(1) => X_Logic0_port, A2(0) => X_Logic0_port, 
                           A3(15) => n41, A3(14) => n41, A3(13) => A(6), A3(12)
                           => A(5), A3(11) => A(4), A3(10) => A(3), A3(9) => 
                           A(2), A3(8) => A(1), A3(7) => A(0), A3(6) => 
                           X_Logic0_port, A3(5) => X_Logic0_port, A3(4) => 
                           X_Logic0_port, A3(3) => X_Logic0_port, A3(2) => 
                           X_Logic0_port, A3(1) => X_Logic0_port, A3(0) => 
                           X_Logic0_port, A4(15) => n37, A4(14) => 
                           r81_DIFF_7_port, A4(13) => r81_DIFF_6_port, A4(12) 
                           => n33, A4(11) => r81_DIFF_4_port, A4(10) => n58, 
                           A4(9) => n57, A4(8) => n36, A4(7) => A(0), A4(6) => 
                           X_Logic0_port, A4(5) => X_Logic0_port, A4(4) => 
                           X_Logic0_port, A4(3) => X_Logic0_port, A4(2) => 
                           X_Logic0_port, A4(1) => X_Logic0_port, A4(0) => 
                           X_Logic0_port, sel(2) => selVector_3_2_port, sel(1) 
                           => selVector_3_1_port, sel(0) => selVector_3_0_port,
                           O(15) => muxOutVector_3_15_port, O(14) => 
                           muxOutVector_3_14_port, O(13) => 
                           muxOutVector_3_13_port, O(12) => 
                           muxOutVector_3_12_port, O(11) => 
                           muxOutVector_3_11_port, O(10) => 
                           muxOutVector_3_10_port, O(9) => 
                           muxOutVector_3_9_port, O(8) => muxOutVector_3_8_port
                           , O(7) => muxOutVector_3_7_port, O(6) => 
                           muxOutVector_3_6_port, O(5) => muxOutVector_3_5_port
                           , O(4) => muxOutVector_3_4_port, O(3) => 
                           muxOutVector_3_3_port, O(2) => muxOutVector_3_2_port
                           , O(1) => muxOutVector_3_1_port, O(0) => 
                           muxOutVector_3_0_port);
   U23 : OR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n55);
   U24 : INV_X1 port map( A => n54, ZN => n32);
   U25 : BUF_X2 port map( A => n40, Z => n38);
   U26 : CLKBUF_X1 port map( A => r81_DIFF_5_port, Z => n33);
   U27 : NAND4_X1 port map( A1 => n49, A2 => n48, A3 => n47, A4 => n46, ZN => 
                           n34);
   U28 : XOR2_X2 port map( A => n55, B => A(2), Z => n57);
   U29 : XOR2_X1 port map( A => A(1), B => A(0), Z => n35);
   U30 : XOR2_X1 port map( A => A(1), B => A(0), Z => n36);
   U31 : BUF_X1 port map( A => n59, Z => n40);
   U32 : INV_X2 port map( A => n44, ZN => n41);
   U33 : BUF_X1 port map( A => n40, Z => n37);
   U34 : BUF_X1 port map( A => n40, Z => n39);
   U35 : INV_X1 port map( A => n44, ZN => n42);
   U36 : OR2_X1 port map( A1 => n50, A2 => A(4), ZN => n51);
   U37 : OR2_X1 port map( A1 => n51, A2 => A(5), ZN => n52);
   U38 : OR2_X1 port map( A1 => n52, A2 => A(6), ZN => n53);
   U39 : INV_X1 port map( A => A(7), ZN => n44);
   U40 : OAI21_X2 port map( B1 => n53, B2 => n45, A => n54, ZN => 
                           r81_DIFF_7_port);
   U41 : INV_X1 port map( A => A(7), ZN => n45);
   U42 : INV_X1 port map( A => n44, ZN => n43);
   U43 : INV_X1 port map( A => A(1), ZN => n47);
   U44 : INV_X1 port map( A => A(0), ZN => n46);
   U45 : INV_X1 port map( A => A(2), ZN => n49);
   U46 : NAND3_X1 port map( A1 => n47, A2 => n46, A3 => n49, ZN => n56);
   U47 : XOR2_X1 port map( A => n56, B => A(3), Z => n58);
   U48 : INV_X1 port map( A => A(3), ZN => n48);
   U49 : NAND4_X1 port map( A1 => n49, A2 => n48, A3 => n47, A4 => n46, ZN => 
                           n50);
   U50 : XOR2_X1 port map( A => n34, B => A(4), Z => r81_DIFF_4_port);
   U51 : XOR2_X1 port map( A => n51, B => A(5), Z => r81_DIFF_5_port);
   U52 : XOR2_X1 port map( A => n52, B => A(6), Z => r81_DIFF_6_port);
   U53 : NAND2_X1 port map( A1 => n53, A2 => n45, ZN => n54);
   U54 : INV_X1 port map( A => n54, ZN => n59);
   U55 : XOR2_X1 port map( A => n55, B => A(2), Z => r81_DIFF_2_port);
   U56 : XOR2_X1 port map( A => n56, B => A(3), Z => r81_DIFF_3_port);

end SYN_MIXED;
