
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_223 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_223;

architecture SYN_BEHAVIORAL of FA_223 is

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

entity FA_222 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_222;

architecture SYN_BEHAVIORAL of FA_222 is

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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_221 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_221;

architecture SYN_BEHAVIORAL of FA_221 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal net48513, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => net48513, B => n5, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : XOR2_X1 port map( A => n8, B => n4, Z => n5);
   U4 : NOR2_X1 port map( A1 => n7, A2 => n6, ZN => Co);
   U5 : NOR2_X1 port map( A1 => Ci, A2 => A, ZN => n6);
   U6 : OAI22_X1 port map( A1 => Ci, A2 => B, B1 => A, B2 => B, ZN => n7);
   U7 : CLKBUF_X1 port map( A => Ci, Z => net48513);
   U8 : CLKBUF_X1 port map( A => A, Z => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_220 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_220;

architecture SYN_BEHAVIORAL of FA_220 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal net38805, net50737, n2, n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => net38805, B => net50737, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : BUF_X1 port map( A => Ci, Z => net38805);
   U2 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => Ci, B2 => n4, ZN => n2);
   U5 : INV_X1 port map( A => n2, ZN => Co);
   U6 : CLKBUF_X1 port map( A => A, Z => n5);
   U7 : CLKBUF_X1 port map( A => B, Z => n6);
   U8 : CLKBUF_X1 port map( A => n4, Z => net50737);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_219 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_219;

architecture SYN_BEHAVIORAL of FA_219 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
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
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : AOI21_X1 port map( B1 => Ci, B2 => n6, A => n4, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => Co);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U5 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_218 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_218;

architecture SYN_BEHAVIORAL of FA_218 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U3 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n4, ZN => n2);
   U4 : INV_X1 port map( A => n2, ZN => Co);
   U5 : INV_X1 port map( A => n6, ZN => n5);
   U6 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_217 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_217;

architecture SYN_BEHAVIORAL of FA_217 is

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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_216 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_216;

architecture SYN_BEHAVIORAL of FA_216 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U2 : OR2_X1 port map( A1 => n7, A2 => n8, ZN => n6);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n9, ZN => n5);
   U6 : INV_X1 port map( A => B, ZN => n7);
   U7 : INV_X1 port map( A => A, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_215 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_215;

architecture SYN_BEHAVIORAL of FA_215 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U2 : INV_X1 port map( A => n6, ZN => n5);
   U3 : AND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U5 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n4, ZN => n2);
   U6 : INV_X1 port map( A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_214 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_214;

architecture SYN_BEHAVIORAL of FA_214 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U3 : AOI21_X1 port map( B1 => Ci, B2 => n5, A => n4, ZN => n2);
   U4 : INV_X1 port map( A => n6, ZN => n5);
   U5 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U6 : INV_X1 port map( A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_213 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_213;

architecture SYN_BEHAVIORAL of FA_213 is

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
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_212 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_212;

architecture SYN_BEHAVIORAL of FA_212 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n4, B2 => n7, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_211 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_211;

architecture SYN_BEHAVIORAL of FA_211 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_210 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_210;

architecture SYN_BEHAVIORAL of FA_210 is

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

entity FA_209 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_209;

architecture SYN_BEHAVIORAL of FA_209 is

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
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_208 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_208;

architecture SYN_BEHAVIORAL of FA_208 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n4, B2 => n7, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_207 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_207;

architecture SYN_BEHAVIORAL of FA_207 is

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
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_206 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_206;

architecture SYN_BEHAVIORAL of FA_206 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : INV_X1 port map( A => B, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U6 : OR2_X1 port map( A1 => n4, A2 => n5, ZN => n7);
   U7 : NAND2_X1 port map( A1 => Ci, A2 => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_205 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_205;

architecture SYN_BEHAVIORAL of FA_205 is

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

entity FA_204 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_204;

architecture SYN_BEHAVIORAL of FA_204 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9, n10 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : INV_X1 port map( A => B, ZN => n5);
   U3 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U5 : OR2_X1 port map( A1 => n4, A2 => n5, ZN => n7);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n10, ZN => n8);
   U7 : INV_X1 port map( A => n10, ZN => n9);
   U8 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_203 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_203;

architecture SYN_BEHAVIORAL of FA_203 is

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
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_202 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_202;

architecture SYN_BEHAVIORAL of FA_202 is

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

entity FA_201 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_201;

architecture SYN_BEHAVIORAL of FA_201 is

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
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_200 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_200;

architecture SYN_BEHAVIORAL of FA_200 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n4, B2 => n7, ZN => Co);
   U3 : INV_X1 port map( A => B, ZN => n5);
   U4 : INV_X1 port map( A => A, ZN => n6);
   U5 : INV_X1 port map( A => Ci, ZN => n7);
   U6 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_199 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_199;

architecture SYN_BEHAVIORAL of FA_199 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n5, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_198 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_198;

architecture SYN_BEHAVIORAL of FA_198 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U2 : INV_X1 port map( A => n5, ZN => n4);
   U3 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_197 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_197;

architecture SYN_BEHAVIORAL of FA_197 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n5, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_196 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_196;

architecture SYN_BEHAVIORAL of FA_196 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n5, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_195 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_195;

architecture SYN_BEHAVIORAL of FA_195 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n5, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_194 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_194;

architecture SYN_BEHAVIORAL of FA_194 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n5, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_193 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_193;

architecture SYN_BEHAVIORAL of FA_193 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => n5);
   U3 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => n4, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_192 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_192;

architecture SYN_BEHAVIORAL of FA_192 is

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

entity FA_191 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_191;

architecture SYN_BEHAVIORAL of FA_191 is

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

entity FA_190 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_190;

architecture SYN_BEHAVIORAL of FA_190 is

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

entity FA_189 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_189;

architecture SYN_BEHAVIORAL of FA_189 is

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

entity FA_188 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_188;

architecture SYN_BEHAVIORAL of FA_188 is

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
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_187 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_187;

architecture SYN_BEHAVIORAL of FA_187 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal net38640, n4, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => net38640, Z => S);
   U1 : NAND2_X1 port map( A1 => n4, A2 => n8, ZN => Co);
   U2 : OR2_X1 port map( A1 => n7, A2 => n6, ZN => n4);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n8);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U6 : INV_X1 port map( A => n9, ZN => net38640);
   U7 : INV_X1 port map( A => Ci, ZN => n6);
   U8 : CLKBUF_X1 port map( A => n7, Z => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_186 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_186;

architecture SYN_BEHAVIORAL of FA_186 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, net38765, n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => net38765, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n4, B2 => Ci, ZN => n2);
   U2 : CLKBUF_X1 port map( A => n4, Z => net38765);
   U5 : CLKBUF_X1 port map( A => B, Z => n5);
   U6 : INV_X1 port map( A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_185 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_185;

architecture SYN_BEHAVIORAL of FA_185 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
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
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => n7, ZN => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : AND2_X1 port map( A1 => n4, A2 => n9, ZN => n5);
   U4 : CLKBUF_X1 port map( A => B, Z => n6);
   U5 : OR2_X1 port map( A1 => B, A2 => n7, ZN => n8);
   U6 : NAND2_X1 port map( A1 => B, A2 => n7, ZN => n9);
   U7 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n10);
   U8 : INV_X1 port map( A => A, ZN => n7);
   U9 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => Ci, B2 => n10, ZN => n11);
   U10 : INV_X1 port map( A => n11, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_184 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_184;

architecture SYN_BEHAVIORAL of FA_184 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
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
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n4, B2 => n5, A => n7, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n4);
   U3 : INV_X1 port map( A => n6, ZN => n5);
   U4 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n8);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U7 : XNOR2_X1 port map( A => Ci, B => n8, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_183 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_183;

architecture SYN_BEHAVIORAL of FA_183 is

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
   
   signal n2, n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_182 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_182;

architecture SYN_BEHAVIORAL of FA_182 is

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
   
   signal n2, n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_181 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_181;

architecture SYN_BEHAVIORAL of FA_181 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_180 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_180;

architecture SYN_BEHAVIORAL of FA_180 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U6 : XNOR2_X1 port map( A => n8, B => B, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_179 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_179;

architecture SYN_BEHAVIORAL of FA_179 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_178 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_178;

architecture SYN_BEHAVIORAL of FA_178 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_177 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_177;

architecture SYN_BEHAVIORAL of FA_177 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_176 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_176;

architecture SYN_BEHAVIORAL of FA_176 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => n7, Z => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_175 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_175;

architecture SYN_BEHAVIORAL of FA_175 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => n6, Z => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n7, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_174 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_174;

architecture SYN_BEHAVIORAL of FA_174 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_173 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_173;

architecture SYN_BEHAVIORAL of FA_173 is

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
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_172 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_172;

architecture SYN_BEHAVIORAL of FA_172 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_171 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_171;

architecture SYN_BEHAVIORAL of FA_171 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_170 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_170;

architecture SYN_BEHAVIORAL of FA_170 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_169 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_169;

architecture SYN_BEHAVIORAL of FA_169 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_168 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_168;

architecture SYN_BEHAVIORAL of FA_168 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_167 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_167;

architecture SYN_BEHAVIORAL of FA_167 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : OAI22_X1 port map( A1 => n4, A2 => n7, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n8, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n7, B => B, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_166 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_166;

architecture SYN_BEHAVIORAL of FA_166 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_165 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_165;

architecture SYN_BEHAVIORAL of FA_165 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_164 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_164;

architecture SYN_BEHAVIORAL of FA_164 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_163 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_163;

architecture SYN_BEHAVIORAL of FA_163 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_162 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_162;

architecture SYN_BEHAVIORAL of FA_162 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => B, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n6, B2 => Ci, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_161 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_161;

architecture SYN_BEHAVIORAL of FA_161 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => n6, Z => n4);
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_160 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_160;

architecture SYN_BEHAVIORAL of FA_160 is

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

entity FA_159 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_159;

architecture SYN_BEHAVIORAL of FA_159 is

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

entity FA_158 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_158;

architecture SYN_BEHAVIORAL of FA_158 is

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

entity FA_157 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_157;

architecture SYN_BEHAVIORAL of FA_157 is

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

entity FA_156 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_156;

architecture SYN_BEHAVIORAL of FA_156 is

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

entity FA_155 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_155;

architecture SYN_BEHAVIORAL of FA_155 is

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

entity FA_154 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_154;

architecture SYN_BEHAVIORAL of FA_154 is

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

entity FA_153 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_153;

architecture SYN_BEHAVIORAL of FA_153 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n7);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : CLKBUF_X1 port map( A => n7, Z => n6);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n7, B2 => Ci, ZN => n8);
   U7 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_152 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_152;

architecture SYN_BEHAVIORAL of FA_152 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : XOR2_X1 port map( A => B, B => n7, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_151 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_151;

architecture SYN_BEHAVIORAL of FA_151 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_150 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_150;

architecture SYN_BEHAVIORAL of FA_150 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_149 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_149;

architecture SYN_BEHAVIORAL of FA_149 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : INV_X1 port map( A => A, ZN => n5);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_148 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_148;

architecture SYN_BEHAVIORAL of FA_148 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_147 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_147;

architecture SYN_BEHAVIORAL of FA_147 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_146 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_146;

architecture SYN_BEHAVIORAL of FA_146 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => n7, Z => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_145 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_145;

architecture SYN_BEHAVIORAL of FA_145 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_144 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_144;

architecture SYN_BEHAVIORAL of FA_144 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_143 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_143;

architecture SYN_BEHAVIORAL of FA_143 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : OAI22_X1 port map( A1 => n4, A2 => n7, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n8, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_142 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_142;

architecture SYN_BEHAVIORAL of FA_142 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_141 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_141;

architecture SYN_BEHAVIORAL of FA_141 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_140 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_140;

architecture SYN_BEHAVIORAL of FA_140 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_139 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_139;

architecture SYN_BEHAVIORAL of FA_139 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_138 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_138;

architecture SYN_BEHAVIORAL of FA_138 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_137 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_137;

architecture SYN_BEHAVIORAL of FA_137 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_136 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_136;

architecture SYN_BEHAVIORAL of FA_136 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_135 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_135;

architecture SYN_BEHAVIORAL of FA_135 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_134 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_134;

architecture SYN_BEHAVIORAL of FA_134 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_133 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_133;

architecture SYN_BEHAVIORAL of FA_133 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_132 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_132;

architecture SYN_BEHAVIORAL of FA_132 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : OAI22_X1 port map( A1 => n4, A2 => n7, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n8, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_131 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_131;

architecture SYN_BEHAVIORAL of FA_131 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_130 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_130;

architecture SYN_BEHAVIORAL of FA_130 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_129 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_129;

architecture SYN_BEHAVIORAL of FA_129 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U4 : INV_X1 port map( A => n8, ZN => Co);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : XNOR2_X1 port map( A => B, B => n6, ZN => n7);
   U7 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n7, B2 => n4, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_128 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_128;

architecture SYN_BEHAVIORAL of FA_128 is

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

entity FA_127 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_127;

architecture SYN_BEHAVIORAL of FA_127 is

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

entity FA_126 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_126;

architecture SYN_BEHAVIORAL of FA_126 is

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

entity FA_125 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_125;

architecture SYN_BEHAVIORAL of FA_125 is

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

entity FA_124 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_124;

architecture SYN_BEHAVIORAL of FA_124 is

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

entity FA_123 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_123;

architecture SYN_BEHAVIORAL of FA_123 is

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

entity FA_122 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_122;

architecture SYN_BEHAVIORAL of FA_122 is

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

entity FA_121 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_121;

architecture SYN_BEHAVIORAL of FA_121 is

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

entity FA_120 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_120;

architecture SYN_BEHAVIORAL of FA_120 is

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

entity FA_119 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_119;

architecture SYN_BEHAVIORAL of FA_119 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : CLKBUF_X1 port map( A => n7, Z => n5);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n7, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_118 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_118;

architecture SYN_BEHAVIORAL of FA_118 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n7);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n7, B2 => Ci, ZN => n8);
   U7 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_117 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_117;

architecture SYN_BEHAVIORAL of FA_117 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_116 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_116;

architecture SYN_BEHAVIORAL of FA_116 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n8, A2 => Ci, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => n7, B => B, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_115 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_115;

architecture SYN_BEHAVIORAL of FA_115 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_114 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_114;

architecture SYN_BEHAVIORAL of FA_114 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n4, n5 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U1 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_113 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_113;

architecture SYN_BEHAVIORAL of FA_113 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_112 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_112;

architecture SYN_BEHAVIORAL of FA_112 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n8, B => Ci, Z => S);
   U1 : NOR2_X1 port map( A1 => n7, A2 => n9, ZN => n5);
   U2 : OR2_X2 port map( A1 => n4, A2 => n5, ZN => Co);
   U4 : AND2_X1 port map( A1 => Ci, A2 => n8, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n7);
   U6 : INV_X1 port map( A => A, ZN => n9);
   U7 : XNOR2_X1 port map( A => B, B => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_111 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_111;

architecture SYN_BEHAVIORAL of FA_111 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_110 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_110;

architecture SYN_BEHAVIORAL of FA_110 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => n7, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_109 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_109;

architecture SYN_BEHAVIORAL of FA_109 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : BUF_X1 port map( A => B, Z => n4);
   U2 : XOR2_X1 port map( A => n9, B => B, Z => n5);
   U4 : OAI22_X1 port map( A1 => n6, A2 => n9, B1 => n7, B2 => n5, ZN => Co);
   U5 : INV_X1 port map( A => n4, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n7);
   U7 : INV_X1 port map( A => A, ZN => n9);
   U8 : XNOR2_X1 port map( A => n9, B => B, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_108 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_108;

architecture SYN_BEHAVIORAL of FA_108 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n5);
   U4 : INV_X1 port map( A => n5, ZN => Co);
   U5 : INV_X1 port map( A => A, ZN => n7);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_107 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_107;

architecture SYN_BEHAVIORAL of FA_107 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => n7, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U3 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_106 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_106;

architecture SYN_BEHAVIORAL of FA_106 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_105 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_105;

architecture SYN_BEHAVIORAL of FA_105 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : XNOR2_X1 port map( A => n6, B => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_104 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_104;

architecture SYN_BEHAVIORAL of FA_104 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U4 : XNOR2_X1 port map( A => n5, B => B, ZN => n4);
   U5 : CLKBUF_X1 port map( A => B, Z => n6);
   U6 : INV_X1 port map( A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_103 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_103;

architecture SYN_BEHAVIORAL of FA_103 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_102 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_102;

architecture SYN_BEHAVIORAL of FA_102 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_101 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_101;

architecture SYN_BEHAVIORAL of FA_101 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_100 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_100;

architecture SYN_BEHAVIORAL of FA_100 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
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
   
   signal n4, n5, n6, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : INV_X1 port map( A => A, ZN => n8);
   U4 : NAND2_X1 port map( A1 => n4, A2 => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n9, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U7 : XNOR2_X1 port map( A => B, B => n8, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_99 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_99;

architecture SYN_BEHAVIORAL of FA_99 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_98 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_98;

architecture SYN_BEHAVIORAL of FA_98 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_97 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_97;

architecture SYN_BEHAVIORAL of FA_97 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : CLKBUF_X1 port map( A => n7, Z => n4);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n4, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_96 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_96;

architecture SYN_BEHAVIORAL of FA_96 is

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

entity FA_95 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_95;

architecture SYN_BEHAVIORAL of FA_95 is

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

entity FA_94 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_94;

architecture SYN_BEHAVIORAL of FA_94 is

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

entity FA_93 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_93;

architecture SYN_BEHAVIORAL of FA_93 is

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

entity FA_92 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_92;

architecture SYN_BEHAVIORAL of FA_92 is

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

entity FA_91 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_91;

architecture SYN_BEHAVIORAL of FA_91 is

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

entity FA_90 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_90;

architecture SYN_BEHAVIORAL of FA_90 is

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

entity FA_89 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_89;

architecture SYN_BEHAVIORAL of FA_89 is

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

entity FA_88 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_88;

architecture SYN_BEHAVIORAL of FA_88 is

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

entity FA_87 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_87;

architecture SYN_BEHAVIORAL of FA_87 is

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

entity FA_86 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_86;

architecture SYN_BEHAVIORAL of FA_86 is

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

entity FA_85 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_85;

architecture SYN_BEHAVIORAL of FA_85 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : CLKBUF_X1 port map( A => n7, Z => n4);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n7);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n7, B2 => Ci, ZN => n8);
   U7 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_84 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_84;

architecture SYN_BEHAVIORAL of FA_84 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n8, A2 => Ci, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_83 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_83;

architecture SYN_BEHAVIORAL of FA_83 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_82 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_82;

architecture SYN_BEHAVIORAL of FA_82 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_81 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_81;

architecture SYN_BEHAVIORAL of FA_81 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => n7, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_80 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_80;

architecture SYN_BEHAVIORAL of FA_80 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n9, B1 => n6, B2 => n7, ZN => Co);
   U4 : INV_X1 port map( A => n4, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => n8, ZN => n7);
   U7 : INV_X1 port map( A => A, ZN => n9);
   U8 : XNOR2_X1 port map( A => B, B => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_79 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_79;

architecture SYN_BEHAVIORAL of FA_79 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : INV_X1 port map( A => A, ZN => n7);
   U4 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n5);
   U5 : INV_X1 port map( A => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_78 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_78;

architecture SYN_BEHAVIORAL of FA_78 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_77 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_77;

architecture SYN_BEHAVIORAL of FA_77 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_76 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_76;

architecture SYN_BEHAVIORAL of FA_76 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_75 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_75;

architecture SYN_BEHAVIORAL of FA_75 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : OAI22_X1 port map( A1 => n4, A2 => n8, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n7, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n8);
   U7 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_74 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_74;

architecture SYN_BEHAVIORAL of FA_74 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : NOR2_X1 port map( A1 => n7, A2 => n9, ZN => n5);
   U2 : OR2_X2 port map( A1 => n4, A2 => n5, ZN => Co);
   U4 : AND2_X1 port map( A1 => Ci, A2 => n8, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n7);
   U6 : INV_X1 port map( A => A, ZN => n9);
   U7 : XNOR2_X1 port map( A => B, B => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_73 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_73;

architecture SYN_BEHAVIORAL of FA_73 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n8);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_72 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_72;

architecture SYN_BEHAVIORAL of FA_72 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U4 : INV_X1 port map( A => n2, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n5);
   U6 : XNOR2_X1 port map( A => B, B => n6, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_71 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_71;

architecture SYN_BEHAVIORAL of FA_71 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U4 : XNOR2_X1 port map( A => B, B => n6, ZN => n4);
   U5 : CLKBUF_X1 port map( A => B, Z => n5);
   U6 : INV_X1 port map( A => n2, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_70 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_70;

architecture SYN_BEHAVIORAL of FA_70 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_69 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_69;

architecture SYN_BEHAVIORAL of FA_69 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_68 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_68;

architecture SYN_BEHAVIORAL of FA_68 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
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
   
   signal n4, n5, n6, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : INV_X1 port map( A => A, ZN => n8);
   U4 : NAND2_X1 port map( A1 => n4, A2 => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n9, A2 => Ci, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U7 : XNOR2_X1 port map( A => B, B => n8, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_67 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_67;

architecture SYN_BEHAVIORAL of FA_67 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_66 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_66;

architecture SYN_BEHAVIORAL of FA_66 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_65 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_65;

architecture SYN_BEHAVIORAL of FA_65 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U4 : CLKBUF_X1 port map( A => n8, Z => n5);
   U5 : CLKBUF_X1 port map( A => B, Z => n6);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);
   U7 : INV_X1 port map( A => n9, ZN => Co);
   U8 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => n5, B2 => n4, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_64 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_64;

architecture SYN_BEHAVIORAL of FA_64 is

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

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

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

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

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

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

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

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

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

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

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

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

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

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

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

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

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

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

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

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

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

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

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

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

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

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : CLKBUF_X1 port map( A => n7, Z => n4);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n7);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n7, B2 => Ci, ZN => n8);
   U7 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n6, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : OAI22_X1 port map( A1 => n4, A2 => n7, B1 => n6, B2 => n5, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n8, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : XOR2_X1 port map( A => B, B => n7, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X32
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U1 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U2 : INV_X32 port map( A => A, ZN => n4);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);

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
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n7);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : XOR2_X1 port map( A => B, B => n7, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n7, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U1 : OAI22_X1 port map( A1 => n4, A2 => n7, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n8, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U4 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

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
   
   signal n2, n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n4, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : XOR2_X1 port map( A => B, B => n8, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n8, B1 => n6, B2 => n4, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : INV_X1 port map( A => A, ZN => n8);
   U7 : XNOR2_X1 port map( A => B, B => n8, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n9);
   U2 : NAND2_X1 port map( A1 => n8, A2 => A, ZN => n4);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U6 : CLKBUF_X1 port map( A => B, Z => n8);
   U7 : XNOR2_X1 port map( A => B, B => n9, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => n7, A2 => A, B1 => Ci, B2 => n5, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n6);
   U2 : AOI22_X1 port map( A1 => n7, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U4 : INV_X1 port map( A => n4, ZN => Co);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : XNOR2_X1 port map( A => B, B => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net39907, net39900, n4, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : OR2_X1 port map( A1 => net39900, A2 => n6, ZN => Co);
   U3 : AND2_X1 port map( A1 => A, A2 => n9, ZN => n6);
   U4 : CLKBUF_X1 port map( A => n8, Z => n7);
   U5 : XNOR2_X1 port map( A => Ci, B => n8, ZN => S);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n8);
   U7 : NOR2_X1 port map( A1 => net39907, A2 => n7, ZN => net39900);
   U8 : CLKBUF_X1 port map( A => B, Z => n9);
   U9 : INV_X1 port map( A => n4, ZN => net39907);

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

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

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

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

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

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

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

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

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

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

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

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

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

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

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

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

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

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

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

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

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

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

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
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => n6, Z => S);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n8, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U4 : INV_X1 port map( A => A, ZN => n7);
   U5 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U6 : CLKBUF_X1 port map( A => n8, Z => n6);
   U7 : XNOR2_X1 port map( A => B, B => n7, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n9, Z => S);
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => n9);
   U4 : INV_X1 port map( A => n8, ZN => n4);
   U5 : OAI22_X1 port map( A1 => n6, A2 => n7, B1 => n5, B2 => n8, ZN => Co);
   U6 : INV_X1 port map( A => B, ZN => n6);
   U7 : INV_X1 port map( A => A, ZN => n7);
   U8 : INV_X1 port map( A => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n10);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n7, B2 => n8, ZN => Co);
   U5 : INV_X1 port map( A => B, ZN => n5);
   U6 : INV_X1 port map( A => A, ZN => n6);
   U7 : INV_X1 port map( A => n10, ZN => n7);
   U8 : INV_X1 port map( A => Ci, ZN => n8);
   U9 : CLKBUF_X1 port map( A => n10, Z => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

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
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n8, B => n9, Z => S);
   U1 : INV_X1 port map( A => n4, ZN => n9);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U4 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n4, B2 => n7, ZN => Co);
   U5 : INV_X1 port map( A => B, ZN => n5);
   U6 : INV_X1 port map( A => A, ZN => n6);
   U7 : INV_X1 port map( A => Ci, ZN => n7);
   U8 : CLKBUF_X1 port map( A => Ci, Z => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

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
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

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
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n9, Z => S);
   U1 : INV_X1 port map( A => n6, ZN => n4);
   U2 : XNOR2_X1 port map( A => n8, B => B, ZN => n9);
   U4 : OAI22_X1 port map( A1 => n5, A2 => n8, B1 => n6, B2 => n7, ZN => Co);
   U5 : INV_X1 port map( A => B, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n6);
   U7 : INV_X1 port map( A => n9, ZN => n7);
   U8 : INV_X1 port map( A => A, ZN => n8);

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => n6, Z => S);
   U1 : INV_X1 port map( A => A, ZN => n4);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n6);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n7);
   U5 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n10, B => n9, Z => S);
   U1 : BUF_X1 port map( A => B, Z => n11);
   U2 : XNOR2_X1 port map( A => B, B => n4, ZN => n9);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => n11, ZN => n5);
   U6 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U7 : OR2_X1 port map( A1 => n4, A2 => n5, ZN => n7);
   U8 : NAND2_X1 port map( A1 => Ci, A2 => n9, ZN => n8);
   U9 : CLKBUF_X1 port map( A => Ci, Z => n10);

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
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal net38783, n2, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => net38783, B => n4, Z => S);
   U1 : CLKBUF_X1 port map( A => n6, Z => n4);
   U2 : INV_X1 port map( A => A, ZN => n5);
   U4 : XNOR2_X1 port map( A => B, B => n5, ZN => n6);
   U5 : AOI22_X1 port map( A1 => n7, A2 => A, B1 => n6, B2 => Ci, ZN => n2);
   U6 : INV_X1 port map( A => n2, ZN => Co);
   U7 : CLKBUF_X1 port map( A => B, Z => n7);
   U8 : CLKBUF_X1 port map( A => Ci, Z => net38783);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n9, B => n4, Z => S);
   U1 : CLKBUF_X1 port map( A => n6, Z => n4);
   U2 : INV_X1 port map( A => A, ZN => n8);
   U4 : AOI22_X1 port map( A1 => n7, A2 => A, B1 => Ci, B2 => n6, ZN => n5);
   U5 : INV_X1 port map( A => n5, ZN => Co);
   U6 : CLKBUF_X1 port map( A => B, Z => n7);
   U7 : CLKBUF_X1 port map( A => Ci, Z => n9);
   U8 : XNOR2_X1 port map( A => B, B => n8, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal net38807, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => net38807);
   U2 : XNOR2_X1 port map( A => net38807, B => n4, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U4 : AND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U5 : NOR2_X1 port map( A1 => Ci, A2 => n5, ZN => n7);
   U6 : NOR2_X1 port map( A1 => n7, A2 => n6, ZN => Co);
   U7 : NOR2_X1 port map( A1 => A, A2 => B, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net55179, net55173, net55234, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => n8, A2 => n5, ZN => Co);
   U2 : AND2_X1 port map( A1 => A, A2 => n7, ZN => n5);
   U3 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U5 : CLKBUF_X1 port map( A => n6, Z => net55179);
   U6 : CLKBUF_X1 port map( A => Ci, Z => net55234);
   U7 : CLKBUF_X1 port map( A => B, Z => n7);
   U8 : NOR2_X1 port map( A1 => net55173, A2 => net55179, ZN => n8);
   U9 : INV_X1 port map( A => net55234, ZN => net55173);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_6 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_6;

architecture SYN_STRUCTURAL of RCA_NBIT32_6 is

   component FA_161
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_162
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_163
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_164
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_165
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_166
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_167
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_168
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_169
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_170
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_171
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_172
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_173
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_174
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_175
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_176
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_177
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_178
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_179
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_180
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_181
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_182
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_183
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_184
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_185
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_186
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_187
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_188
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_189
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_190
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_191
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_192
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_192 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_191 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_190 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_189 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => CTMP_4_port);
   FAI_5 : FA_188 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4),
                           Co => CTMP_5_port);
   FAI_6 : FA_187 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5),
                           Co => CTMP_6_port);
   FAI_7 : FA_186 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6),
                           Co => CTMP_7_port);
   FAI_8 : FA_185 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7),
                           Co => CTMP_8_port);
   FAI_9 : FA_184 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8),
                           Co => CTMP_9_port);
   FAI_10 : FA_183 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9)
                           , Co => CTMP_10_port);
   FAI_11 : FA_182 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_181 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_180 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_179 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_178 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_177 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_176 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_175 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_174 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_173 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_172 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_171 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_170 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_169 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_168 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_167 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_166 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_165 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_164 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_163 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_162 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_161 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_5 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_5;

architecture SYN_STRUCTURAL of RCA_NBIT32_5 is

   component FA_129
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_130
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_131
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_132
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_133
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_134
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_135
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_136
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_137
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_138
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_139
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_140
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_141
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_142
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_143
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_144
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_145
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_146
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_147
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_148
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_149
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_150
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_151
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_152
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_153
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_154
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_155
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_156
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_157
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_158
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_159
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_160
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_160 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_159 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_158 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_157 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => CTMP_4_port);
   FAI_5 : FA_156 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4),
                           Co => CTMP_5_port);
   FAI_6 : FA_155 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5),
                           Co => CTMP_6_port);
   FAI_7 : FA_154 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6),
                           Co => CTMP_7_port);
   FAI_8 : FA_153 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7),
                           Co => CTMP_8_port);
   FAI_9 : FA_152 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8),
                           Co => CTMP_9_port);
   FAI_10 : FA_151 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9)
                           , Co => CTMP_10_port);
   FAI_11 : FA_150 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_149 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_148 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_147 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_146 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_145 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_144 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_143 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_142 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_141 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_140 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_139 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_138 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_137 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_136 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_135 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_134 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_133 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_132 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_131 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_130 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_129 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_4 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_4;

architecture SYN_STRUCTURAL of RCA_NBIT32_4 is

   component FA_97
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_98
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_99
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_100
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_101
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_102
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_103
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_104
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_105
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_106
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_107
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_108
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_109
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_110
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_111
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_112
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_113
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_114
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_115
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_116
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_117
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_118
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_119
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_120
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_121
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_122
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_123
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_124
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_125
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_126
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_127
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_128
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_128 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_127 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_126 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_125 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => CTMP_4_port);
   FAI_5 : FA_124 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4),
                           Co => CTMP_5_port);
   FAI_6 : FA_123 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5),
                           Co => CTMP_6_port);
   FAI_7 : FA_122 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6),
                           Co => CTMP_7_port);
   FAI_8 : FA_121 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7),
                           Co => CTMP_8_port);
   FAI_9 : FA_120 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8),
                           Co => CTMP_9_port);
   FAI_10 : FA_119 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9)
                           , Co => CTMP_10_port);
   FAI_11 : FA_118 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_117 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_116 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_115 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_114 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_113 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_112 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_111 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_110 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_109 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_108 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_107 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_106 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_105 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_104 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_103 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_102 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_101 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_100 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_99 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_98 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_97 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_3 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_3;

architecture SYN_STRUCTURAL of RCA_NBIT32_3 is

   component FA_65
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_66
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_67
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_68
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_69
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_70
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_71
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_72
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_73
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_74
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_75
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_76
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_77
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_78
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_79
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_80
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_81
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_82
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_83
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_84
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_85
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_86
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_87
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_88
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_89
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_90
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_91
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_92
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_93
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_94
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_95
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_96
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_96 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_95 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_94 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_93 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_92 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_91 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_90 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_89 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_88 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_87 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_86 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_85 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_84 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_83 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_82 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_81 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_80 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_79 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_78 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_77 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_76 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_75 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_74 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_73 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_72 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_71 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_70 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_69 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_68 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_67 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_66 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_65 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_2 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_2;

architecture SYN_STRUCTURAL of RCA_NBIT32_2 is

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
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_64
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_64 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_60 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_59 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_58 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_57 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_56 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_55 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_54 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_53 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_52 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_51 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_50 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_49 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_48 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_47 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_46 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_45 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_44 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_43 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_42 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_41 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_40 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_39 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_38 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_37 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_36 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_35 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_34 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_33 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_1 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_1;

architecture SYN_STRUCTURAL of RCA_NBIT32_1 is

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
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

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
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_16 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_15 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_14 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_13 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_12 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_11 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_10 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_9 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_8 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_7 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_6 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_5 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_4 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_3 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_2 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_1 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_7 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_7;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X4
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, net37175, net37173, net37449, net37469, net37467, net37785, 
      net37783, net39126, net39114, net39194, net39217, net47058, net47111, 
      net47076, net47075, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109
      , n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n76, Z => n72);
   U2 : BUF_X4 port map( A => n96, Z => net37449);
   U3 : INV_X2 port map( A => n95, ZN => net37173);
   U4 : AND2_X1 port map( A1 => n81, A2 => n87, ZN => n73);
   U5 : AND2_X1 port map( A1 => n81, A2 => n87, ZN => n79);
   U6 : BUF_X2 port map( A => n79, Z => net37467);
   U7 : BUF_X4 port map( A => net37467, Z => net37783);
   U8 : BUF_X1 port map( A => sel(0), Z => net47058);
   U9 : NOR2_X1 port map( A1 => n88, A2 => n82, ZN => n83);
   U10 : INV_X1 port map( A => A3(2), ZN => n82);
   U11 : INV_X1 port map( A => net47075, ZN => n84);
   U12 : INV_X1 port map( A => A4(2), ZN => n94);
   U13 : NAND2_X1 port map( A1 => A0(2), A2 => n75, ZN => net47111);
   U14 : INV_X1 port map( A => A3(3), ZN => n99);
   U15 : CLKBUF_X1 port map( A => n90, Z => n88);
   U16 : AND2_X2 port map( A1 => n75, A2 => n95, ZN => n74);
   U17 : AND2_X1 port map( A1 => net39126, A2 => n89, ZN => n75);
   U18 : AND2_X1 port map( A1 => net47058, A2 => net39126, ZN => n76);
   U19 : AND2_X1 port map( A1 => net47058, A2 => net39126, ZN => n80);
   U20 : INV_X1 port map( A => n90, ZN => n77);
   U21 : INV_X2 port map( A => n88, ZN => n78);
   U22 : INV_X1 port map( A => n90, ZN => net39194);
   U23 : NAND2_X1 port map( A1 => n80, A2 => A1(2), ZN => net47076);
   U24 : BUF_X2 port map( A => n72, Z => n96);
   U25 : BUF_X1 port map( A => sel(1), Z => n87);
   U26 : NAND3_X1 port map( A1 => n85, A2 => net47076, A3 => n86, ZN => O(2));
   U27 : NAND2_X1 port map( A1 => net47058, A2 => n87, ZN => net39114);
   U28 : INV_X1 port map( A => sel(1), ZN => net39126);
   U29 : INV_X1 port map( A => sel(0), ZN => n81);
   U30 : NOR2_X1 port map( A1 => n84, A2 => n83, ZN => n86);
   U31 : CLKBUF_X1 port map( A => n81, Z => n89);
   U32 : NAND2_X1 port map( A1 => n73, A2 => A2(2), ZN => n85);
   U33 : CLKBUF_X1 port map( A => net39114, Z => n90);
   U34 : BUF_X2 port map( A => sel(2), Z => net37175);
   U35 : AND2_X1 port map( A1 => A1(4), A2 => n76, ZN => n91);
   U36 : AND2_X1 port map( A1 => net39217, A2 => A3(4), ZN => n92);
   U37 : AND2_X1 port map( A1 => n73, A2 => A2(4), ZN => n93);
   U38 : NOR3_X1 port map( A1 => n92, A2 => n91, A3 => n93, ZN => n149);
   U39 : MUX2_X1 port map( A => net47111, B => n94, S => net37173, Z => 
                           net47075);
   U40 : INV_X1 port map( A => sel(2), ZN => n95);
   U41 : NAND2_X1 port map( A1 => A1(3), A2 => n72, ZN => n98);
   U42 : INV_X1 port map( A => net39114, ZN => net39217);
   U43 : AOI21_X1 port map( B1 => A2(3), B2 => n79, A => n100, ZN => n97);
   U44 : NOR2_X1 port map( A1 => n99, A2 => net39114, ZN => n100);
   U45 : NAND3_X1 port map( A1 => n18, A2 => n98, A3 => n97, ZN => O(3));
   U46 : CLKBUF_X1 port map( A => net37467, Z => net37785);
   U47 : AOI22_X1 port map( A1 => A0(4), A2 => n74, B1 => A4(4), B2 => net37175
                           , ZN => n150);
   U48 : AOI22_X1 port map( A1 => A0(9), A2 => n74, B1 => net37173, B2 => A4(9)
                           , ZN => n160);
   U49 : NAND2_X1 port map( A1 => n104, A2 => n103, ZN => O(10));
   U50 : AOI22_X1 port map( A1 => A0(10), A2 => n74, B1 => A4(10), B2 => 
                           net37175, ZN => n104);
   U51 : NAND2_X1 port map( A1 => n106, A2 => n105, ZN => O(11));
   U52 : AOI22_X1 port map( A1 => A0(11), A2 => n74, B1 => A4(11), B2 => 
                           net37173, ZN => n106);
   U53 : NAND2_X1 port map( A1 => n108, A2 => n107, ZN => O(12));
   U54 : AOI22_X1 port map( A1 => A0(12), A2 => n74, B1 => A4(12), B2 => 
                           net37173, ZN => n108);
   U55 : NAND2_X1 port map( A1 => n110, A2 => n109, ZN => O(13));
   U56 : AOI22_X1 port map( A1 => A0(13), A2 => n74, B1 => A4(13), B2 => 
                           net37175, ZN => n110);
   U57 : NAND2_X1 port map( A1 => n120, A2 => n119, ZN => O(18));
   U58 : AOI22_X1 port map( A1 => A0(18), A2 => n74, B1 => A4(18), B2 => 
                           net37173, ZN => n120);
   U59 : AOI222_X1 port map( A1 => A1(18), A2 => net37449, B1 => A3(18), B2 => 
                           n78, C1 => A2(18), C2 => net37783, ZN => n119);
   U60 : NAND2_X1 port map( A1 => n112, A2 => n111, ZN => O(14));
   U61 : AOI22_X1 port map( A1 => A0(14), A2 => n74, B1 => A4(14), B2 => 
                           net37173, ZN => n112);
   U62 : NAND2_X1 port map( A1 => n122, A2 => n121, ZN => O(19));
   U63 : AOI22_X1 port map( A1 => A0(19), A2 => n74, B1 => A4(19), B2 => 
                           net37175, ZN => n122);
   U64 : AOI222_X1 port map( A1 => A1(19), A2 => net37449, B1 => A3(19), B2 => 
                           n78, C1 => A2(19), C2 => net37783, ZN => n121);
   U65 : NAND2_X1 port map( A1 => n114, A2 => n113, ZN => O(15));
   U66 : AOI22_X1 port map( A1 => A0(15), A2 => n74, B1 => A4(15), B2 => 
                           net37175, ZN => n114);
   U67 : NAND2_X1 port map( A1 => n116, A2 => n115, ZN => O(16));
   U68 : AOI22_X1 port map( A1 => A0(16), A2 => n74, B1 => A4(16), B2 => 
                           net37173, ZN => n116);
   U69 : NAND2_X1 port map( A1 => n118, A2 => n117, ZN => O(17));
   U70 : AOI22_X1 port map( A1 => A0(17), A2 => n74, B1 => A4(17), B2 => 
                           net37173, ZN => n118);
   U71 : AOI22_X1 port map( A1 => A0(20), A2 => n74, B1 => A4(20), B2 => 
                           net37173, ZN => n126);
   U72 : AOI22_X1 port map( A1 => A0(21), A2 => n74, B1 => A4(21), B2 => 
                           net37175, ZN => n128);
   U73 : AOI22_X1 port map( A1 => A0(22), A2 => n74, B1 => A4(22), B2 => 
                           net37173, ZN => n130);
   U74 : AOI22_X1 port map( A1 => A0(23), A2 => n74, B1 => A4(23), B2 => 
                           net37173, ZN => n132);
   U75 : AOI22_X1 port map( A1 => A0(25), A2 => n74, B1 => A4(25), B2 => 
                           net37173, ZN => n136);
   U76 : AOI22_X1 port map( A1 => A0(26), A2 => n74, B1 => A4(26), B2 => 
                           net37173, ZN => n138);
   U77 : AOI22_X1 port map( A1 => A0(24), A2 => n74, B1 => A4(24), B2 => 
                           net37175, ZN => n134);
   U78 : AOI22_X1 port map( A1 => A0(27), A2 => n74, B1 => A4(27), B2 => 
                           net37173, ZN => n140);
   U79 : AOI22_X1 port map( A1 => A0(28), A2 => n74, B1 => A4(28), B2 => 
                           net37173, ZN => n142);
   U80 : AOI22_X1 port map( A1 => A0(30), A2 => n74, B1 => A4(30), B2 => 
                           net37173, ZN => n146);
   U81 : AOI22_X1 port map( A1 => A0(31), A2 => n74, B1 => A4(31), B2 => 
                           net37175, ZN => n148);
   U82 : AOI22_X1 port map( A1 => A0(29), A2 => n74, B1 => A4(29), B2 => 
                           net37175, ZN => n144);
   U83 : NAND2_X1 port map( A1 => n102, A2 => n101, ZN => O(0));
   U84 : AOI22_X1 port map( A1 => A0(0), A2 => n74, B1 => A4(0), B2 => net37173
                           , ZN => n102);
   U85 : AOI222_X1 port map( A1 => A1(0), A2 => net37449, B1 => A3(0), B2 => 
                           n78, C1 => A2(0), C2 => net37783, ZN => n101);
   U86 : NAND2_X1 port map( A1 => n124, A2 => n123, ZN => O(1));
   U87 : AOI22_X1 port map( A1 => A0(1), A2 => n74, B1 => A4(1), B2 => net37175
                           , ZN => n124);
   U88 : AOI222_X1 port map( A1 => A1(1), A2 => net37449, B1 => A3(1), B2 => 
                           n78, C1 => A2(1), C2 => net37783, ZN => n123);
   U89 : NAND2_X1 port map( A1 => n154, A2 => n153, ZN => O(6));
   U90 : NAND2_X1 port map( A1 => n148, A2 => n147, ZN => O(31));
   U91 : NAND2_X1 port map( A1 => n150, A2 => n149, ZN => O(4));
   U92 : NAND2_X1 port map( A1 => n152, A2 => n151, ZN => O(5));
   U93 : NAND2_X1 port map( A1 => n156, A2 => n155, ZN => O(7));
   U94 : NAND2_X1 port map( A1 => n158, A2 => n157, ZN => O(8));
   U95 : NAND2_X1 port map( A1 => n160, A2 => n159, ZN => O(9));
   U96 : NAND2_X1 port map( A1 => n146, A2 => n145, ZN => O(30));
   U97 : NAND2_X1 port map( A1 => n144, A2 => n143, ZN => O(29));
   U98 : NAND2_X1 port map( A1 => n142, A2 => n141, ZN => O(28));
   U99 : NAND2_X1 port map( A1 => n140, A2 => n139, ZN => O(27));
   U100 : NAND2_X1 port map( A1 => n138, A2 => n137, ZN => O(26));
   U101 : NAND2_X1 port map( A1 => n136, A2 => n135, ZN => O(25));
   U102 : NAND2_X1 port map( A1 => n134, A2 => n133, ZN => O(24));
   U103 : NAND2_X1 port map( A1 => n132, A2 => n131, ZN => O(23));
   U104 : NAND2_X1 port map( A1 => n130, A2 => n129, ZN => O(22));
   U105 : NAND2_X1 port map( A1 => n128, A2 => n127, ZN => O(21));
   U106 : NAND2_X1 port map( A1 => n126, A2 => n125, ZN => O(20));
   U107 : AOI222_X1 port map( A1 => A1(10), A2 => net37449, B1 => A3(10), B2 =>
                           n78, C1 => A2(10), C2 => net37783, ZN => n103);
   U108 : AOI222_X1 port map( A1 => A1(11), A2 => net37449, B1 => A3(11), B2 =>
                           n78, C1 => A2(11), C2 => net37783, ZN => n105);
   U109 : AOI222_X1 port map( A1 => A1(12), A2 => net37449, B1 => A3(12), B2 =>
                           n78, C1 => A2(12), C2 => net37783, ZN => n107);
   U110 : AOI222_X1 port map( A1 => A1(13), A2 => net37449, B1 => A3(13), B2 =>
                           n78, C1 => A2(13), C2 => net37783, ZN => n109);
   U111 : AOI222_X1 port map( A1 => A1(14), A2 => net37449, B1 => A3(14), B2 =>
                           n78, C1 => A2(14), C2 => net37783, ZN => n111);
   U112 : AOI222_X1 port map( A1 => A1(15), A2 => net37449, B1 => A3(15), B2 =>
                           n78, C1 => A2(15), C2 => net37783, ZN => n113);
   U113 : AOI222_X1 port map( A1 => A1(16), A2 => net37449, B1 => A3(16), B2 =>
                           n78, C1 => A2(16), C2 => net37783, ZN => n115);
   U114 : AOI222_X1 port map( A1 => A1(17), A2 => net37449, B1 => A3(17), B2 =>
                           n78, C1 => A2(17), C2 => net37783, ZN => n117);
   U115 : AOI22_X1 port map( A1 => A0(8), A2 => n74, B1 => A4(8), B2 => 
                           net37173, ZN => n158);
   U116 : AOI22_X1 port map( A1 => A0(5), A2 => n74, B1 => A4(5), B2 => 
                           net37173, ZN => n152);
   U117 : AOI222_X1 port map( A1 => A1(30), A2 => net37449, B1 => A3(30), B2 =>
                           n78, C1 => A2(30), C2 => net37783, ZN => n145);
   U118 : AOI222_X1 port map( A1 => A1(29), A2 => net37449, B1 => A3(29), B2 =>
                           n78, C1 => A2(29), C2 => net37783, ZN => n143);
   U119 : AOI222_X1 port map( A1 => A1(28), A2 => net37449, B1 => A3(28), B2 =>
                           n78, C1 => A2(28), C2 => net37783, ZN => n141);
   U120 : AOI222_X1 port map( A1 => A1(27), A2 => net37449, B1 => A3(27), B2 =>
                           n78, C1 => A2(27), C2 => net37783, ZN => n139);
   U121 : AOI222_X1 port map( A1 => A1(26), A2 => net37449, B1 => A3(26), B2 =>
                           n78, C1 => A2(26), C2 => net37783, ZN => n137);
   U122 : AOI222_X1 port map( A1 => A1(25), A2 => net37449, B1 => A3(25), B2 =>
                           n78, C1 => A2(25), C2 => net37783, ZN => n135);
   U123 : AOI222_X1 port map( A1 => A1(24), A2 => net37449, B1 => A3(24), B2 =>
                           n78, C1 => A2(24), C2 => net37783, ZN => n133);
   U124 : AOI222_X1 port map( A1 => A1(23), A2 => net37449, B1 => A3(23), B2 =>
                           n78, C1 => A2(23), C2 => net37783, ZN => n131);
   U125 : AOI222_X1 port map( A1 => A1(22), A2 => net37449, B1 => A3(22), B2 =>
                           n78, C1 => A2(22), C2 => net37783, ZN => n129);
   U126 : AOI222_X1 port map( A1 => A1(21), A2 => net37449, B1 => A3(21), B2 =>
                           n78, C1 => A2(21), C2 => net37783, ZN => n127);
   U127 : AOI222_X1 port map( A1 => A1(20), A2 => net37449, B1 => A3(20), B2 =>
                           n78, C1 => A2(20), C2 => net37783, ZN => n125);
   U128 : AOI22_X1 port map( A1 => A0(6), A2 => n74, B1 => A4(6), B2 => 
                           net37173, ZN => n154);
   U129 : AOI222_X1 port map( A1 => A1(31), A2 => net37449, B1 => A3(31), B2 =>
                           n78, C1 => A2(31), C2 => net37783, ZN => n147);
   U130 : AOI222_X1 port map( A1 => A1(5), A2 => n96, B1 => A3(5), B2 => n77, 
                           C1 => A2(5), C2 => net37469, ZN => n151);
   U131 : AOI222_X1 port map( A1 => A1(7), A2 => n96, B1 => A3(7), B2 => 
                           net39194, C1 => A2(7), C2 => net37785, ZN => n155);
   U132 : AOI222_X1 port map( A1 => A1(8), A2 => n96, B1 => A3(8), B2 => 
                           net39194, C1 => A2(8), C2 => net37783, ZN => n157);
   U133 : AOI222_X1 port map( A1 => A1(9), A2 => net37449, B1 => A3(9), B2 => 
                           net39194, C1 => A2(9), C2 => net37783, ZN => n159);
   U134 : AOI22_X1 port map( A1 => A0(7), A2 => n74, B1 => A4(7), B2 => 
                           net37175, ZN => n156);
   U135 : AOI222_X1 port map( A1 => A1(6), A2 => n96, B1 => A3(6), B2 => 
                           net39194, C1 => A2(6), C2 => net37467, ZN => n153);
   U136 : CLKBUF_X1 port map( A => n79, Z => net37469);
   U137 : AOI22_X1 port map( A1 => A0(3), A2 => n74, B1 => A4(3), B2 => sel(2),
                           ZN => n18);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_6 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_6;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158 : 
      std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(8));
   U2 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(7));
   U3 : AND2_X1 port map( A1 => sel(1), A2 => n158, ZN => n72);
   U4 : BUF_X1 port map( A => n155, Z => n81);
   U5 : NOR2_X1 port map( A1 => n158, A2 => sel(1), ZN => n73);
   U6 : BUF_X1 port map( A => n154, Z => n77);
   U7 : BUF_X1 port map( A => sel(2), Z => n91);
   U8 : BUF_X1 port map( A => n72, Z => n80);
   U9 : BUF_X1 port map( A => n81, Z => n84);
   U10 : BUF_X1 port map( A => n73, Z => n87);
   U11 : BUF_X1 port map( A => n73, Z => n85);
   U12 : BUF_X1 port map( A => n72, Z => n78);
   U13 : BUF_X1 port map( A => n81, Z => n82);
   U14 : BUF_X1 port map( A => n73, Z => n86);
   U15 : BUF_X1 port map( A => n72, Z => n79);
   U16 : BUF_X1 port map( A => n81, Z => n83);
   U17 : BUF_X1 port map( A => n77, Z => n75);
   U18 : BUF_X1 port map( A => n77, Z => n74);
   U19 : BUF_X1 port map( A => n77, Z => n76);
   U20 : BUF_X1 port map( A => n91, Z => n88);
   U21 : BUF_X1 port map( A => n91, Z => n90);
   U22 : BUF_X1 port map( A => n91, Z => n89);
   U23 : AOI22_X1 port map( A1 => A0(4), A2 => n76, B1 => A4(4), B2 => n88, ZN 
                           => n145);
   U24 : AOI222_X1 port map( A1 => A1(4), A2 => n87, B1 => A3(4), B2 => n84, C1
                           => A2(4), C2 => n80, ZN => n144);
   U25 : AOI22_X1 port map( A1 => A0(6), A2 => n76, B1 => A4(6), B2 => n88, ZN 
                           => n149);
   U26 : NAND2_X1 port map( A1 => n95, A2 => n94, ZN => O(10));
   U27 : AOI222_X1 port map( A1 => A1(10), A2 => n85, B1 => A3(10), B2 => n82, 
                           C1 => A2(10), C2 => n78, ZN => n94);
   U28 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => O(11));
   U29 : AOI22_X1 port map( A1 => A0(11), A2 => n74, B1 => A4(11), B2 => n90, 
                           ZN => n97);
   U30 : AOI222_X1 port map( A1 => A1(11), A2 => n85, B1 => A3(11), B2 => n82, 
                           C1 => A2(11), C2 => n78, ZN => n96);
   U31 : AOI22_X1 port map( A1 => A0(12), A2 => n74, B1 => A4(12), B2 => n90, 
                           ZN => n99);
   U32 : AOI222_X1 port map( A1 => A1(12), A2 => n85, B1 => A3(12), B2 => n82, 
                           C1 => A2(12), C2 => n78, ZN => n98);
   U33 : NAND2_X1 port map( A1 => n101, A2 => n100, ZN => O(13));
   U34 : AOI22_X1 port map( A1 => A0(13), A2 => n74, B1 => A4(13), B2 => n90, 
                           ZN => n101);
   U35 : AOI222_X1 port map( A1 => A1(13), A2 => n85, B1 => A3(13), B2 => n82, 
                           C1 => A2(13), C2 => n78, ZN => n100);
   U36 : NAND2_X1 port map( A1 => n103, A2 => n102, ZN => O(14));
   U37 : AOI22_X1 port map( A1 => A0(14), A2 => n74, B1 => A4(14), B2 => n90, 
                           ZN => n103);
   U38 : AOI222_X1 port map( A1 => A1(14), A2 => n85, B1 => A3(14), B2 => n82, 
                           C1 => A2(14), C2 => n78, ZN => n102);
   U39 : NAND2_X1 port map( A1 => n105, A2 => n104, ZN => O(15));
   U40 : AOI22_X1 port map( A1 => A0(15), A2 => n74, B1 => A4(15), B2 => n90, 
                           ZN => n105);
   U41 : AOI222_X1 port map( A1 => A1(15), A2 => n85, B1 => A3(15), B2 => n82, 
                           C1 => A2(15), C2 => n78, ZN => n104);
   U42 : NAND2_X1 port map( A1 => n107, A2 => n106, ZN => O(16));
   U43 : AOI22_X1 port map( A1 => A0(16), A2 => n74, B1 => A4(16), B2 => n89, 
                           ZN => n107);
   U44 : AOI222_X1 port map( A1 => A1(16), A2 => n85, B1 => A3(16), B2 => n82, 
                           C1 => A2(16), C2 => n78, ZN => n106);
   U45 : NAND2_X1 port map( A1 => n109, A2 => n108, ZN => O(17));
   U46 : AOI22_X1 port map( A1 => A0(17), A2 => n74, B1 => A4(17), B2 => n89, 
                           ZN => n109);
   U47 : AOI222_X1 port map( A1 => A1(17), A2 => n85, B1 => A3(17), B2 => n82, 
                           C1 => A2(17), C2 => n78, ZN => n108);
   U48 : NAND2_X1 port map( A1 => n117, A2 => n116, ZN => O(20));
   U49 : AOI22_X1 port map( A1 => A0(20), A2 => n75, B1 => A4(20), B2 => n89, 
                           ZN => n117);
   U50 : AOI222_X1 port map( A1 => A1(20), A2 => n86, B1 => A3(20), B2 => n83, 
                           C1 => A2(20), C2 => n79, ZN => n116);
   U51 : NAND2_X1 port map( A1 => n119, A2 => n118, ZN => O(21));
   U52 : AOI222_X1 port map( A1 => A1(21), A2 => n86, B1 => A3(21), B2 => n83, 
                           C1 => A2(21), C2 => n79, ZN => n118);
   U53 : AOI22_X1 port map( A1 => A0(21), A2 => n75, B1 => A4(21), B2 => n89, 
                           ZN => n119);
   U54 : NAND2_X1 port map( A1 => n111, A2 => n110, ZN => O(18));
   U55 : AOI22_X1 port map( A1 => A0(18), A2 => n74, B1 => A4(18), B2 => n89, 
                           ZN => n111);
   U56 : AOI222_X1 port map( A1 => A1(18), A2 => n85, B1 => A3(18), B2 => n82, 
                           C1 => A2(18), C2 => n78, ZN => n110);
   U57 : NAND2_X1 port map( A1 => n121, A2 => n120, ZN => O(22));
   U58 : AOI22_X1 port map( A1 => A0(22), A2 => n75, B1 => A4(22), B2 => n89, 
                           ZN => n121);
   U59 : AOI222_X1 port map( A1 => A1(22), A2 => n86, B1 => A3(22), B2 => n83, 
                           C1 => A2(22), C2 => n79, ZN => n120);
   U60 : NAND2_X1 port map( A1 => n113, A2 => n112, ZN => O(19));
   U61 : AOI22_X1 port map( A1 => A0(19), A2 => n74, B1 => A4(19), B2 => n89, 
                           ZN => n113);
   U62 : AOI222_X1 port map( A1 => A1(19), A2 => n85, B1 => A3(19), B2 => n82, 
                           C1 => A2(19), C2 => n78, ZN => n112);
   U63 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => O(23));
   U64 : AOI22_X1 port map( A1 => A0(23), A2 => n75, B1 => A4(23), B2 => n89, 
                           ZN => n123);
   U65 : AOI222_X1 port map( A1 => A1(23), A2 => n86, B1 => A3(23), B2 => n83, 
                           C1 => A2(23), C2 => n79, ZN => n122);
   U66 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(24));
   U67 : AOI222_X1 port map( A1 => A1(24), A2 => n86, B1 => A3(24), B2 => n83, 
                           C1 => A2(24), C2 => n79, ZN => n124);
   U68 : AOI22_X1 port map( A1 => A0(24), A2 => n75, B1 => A4(24), B2 => n89, 
                           ZN => n125);
   U69 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(25));
   U70 : AOI22_X1 port map( A1 => A0(25), A2 => n75, B1 => A4(25), B2 => n89, 
                           ZN => n127);
   U71 : AOI222_X1 port map( A1 => A1(25), A2 => n86, B1 => A3(25), B2 => n83, 
                           C1 => A2(25), C2 => n79, ZN => n126);
   U72 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(26));
   U73 : AOI22_X1 port map( A1 => A0(26), A2 => n75, B1 => A4(26), B2 => n88, 
                           ZN => n129);
   U74 : AOI222_X1 port map( A1 => A1(26), A2 => n86, B1 => A3(26), B2 => n83, 
                           C1 => A2(26), C2 => n79, ZN => n128);
   U75 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(27));
   U76 : AOI22_X1 port map( A1 => A0(27), A2 => n75, B1 => A4(27), B2 => n88, 
                           ZN => n131);
   U77 : AOI222_X1 port map( A1 => A1(27), A2 => n86, B1 => A3(27), B2 => n83, 
                           C1 => A2(27), C2 => n79, ZN => n130);
   U78 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(28));
   U79 : AOI222_X1 port map( A1 => A1(28), A2 => n86, B1 => A3(28), B2 => n83, 
                           C1 => A2(28), C2 => n79, ZN => n132);
   U80 : AOI22_X1 port map( A1 => A0(28), A2 => n75, B1 => A4(28), B2 => n88, 
                           ZN => n133);
   U81 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(29));
   U82 : AOI222_X1 port map( A1 => A1(29), A2 => n86, B1 => A3(29), B2 => n83, 
                           C1 => A2(29), C2 => n79, ZN => n134);
   U83 : AOI22_X1 port map( A1 => A0(29), A2 => n75, B1 => A4(29), B2 => n88, 
                           ZN => n135);
   U84 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(30));
   U85 : AOI22_X1 port map( A1 => A0(30), A2 => n75, B1 => A4(30), B2 => n89, 
                           ZN => n139);
   U86 : AOI222_X1 port map( A1 => A1(30), A2 => n86, B1 => A3(30), B2 => n83, 
                           C1 => A2(30), C2 => n79, ZN => n138);
   U87 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(31));
   U88 : AOI22_X1 port map( A1 => A0(31), A2 => n76, B1 => A4(31), B2 => n88, 
                           ZN => n141);
   U89 : AOI222_X1 port map( A1 => A1(31), A2 => n87, B1 => A3(31), B2 => n84, 
                           C1 => A2(31), C2 => n80, ZN => n140);
   U90 : NAND2_X1 port map( A1 => n93, A2 => n92, ZN => O(0));
   U91 : AOI22_X1 port map( A1 => A0(0), A2 => n74, B1 => A4(0), B2 => n90, ZN 
                           => n93);
   U92 : AOI222_X1 port map( A1 => A1(0), A2 => n85, B1 => A3(0), B2 => n82, C1
                           => A2(0), C2 => n78, ZN => n92);
   U93 : NAND2_X1 port map( A1 => n115, A2 => n114, ZN => O(1));
   U94 : AOI22_X1 port map( A1 => A0(1), A2 => n74, B1 => A4(1), B2 => n89, ZN 
                           => n115);
   U95 : AOI222_X1 port map( A1 => A1(1), A2 => n85, B1 => A3(1), B2 => n82, C1
                           => A2(1), C2 => n78, ZN => n114);
   U96 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(2));
   U97 : AOI22_X1 port map( A1 => A0(2), A2 => n75, B1 => A4(2), B2 => n88, ZN 
                           => n137);
   U98 : AOI222_X1 port map( A1 => A1(2), A2 => n86, B1 => A3(2), B2 => n83, C1
                           => A2(2), C2 => n79, ZN => n136);
   U99 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(3));
   U100 : AOI22_X1 port map( A1 => A0(3), A2 => n76, B1 => A4(3), B2 => n88, ZN
                           => n143);
   U101 : AOI222_X1 port map( A1 => A1(3), A2 => n87, B1 => A3(3), B2 => n84, 
                           C1 => A2(3), C2 => n80, ZN => n142);
   U102 : NAND2_X1 port map( A1 => n99, A2 => n98, ZN => O(12));
   U103 : NAND2_X1 port map( A1 => n157, A2 => n156, ZN => O(9));
   U104 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(6));
   U105 : AOI22_X1 port map( A1 => A0(10), A2 => n74, B1 => A4(10), B2 => n90, 
                           ZN => n95);
   U106 : AOI222_X1 port map( A1 => A1(9), A2 => n87, B1 => A3(9), B2 => n84, 
                           C1 => A2(9), C2 => n80, ZN => n156);
   U107 : AOI22_X1 port map( A1 => A0(7), A2 => n76, B1 => A4(7), B2 => n88, ZN
                           => n151);
   U108 : AOI222_X1 port map( A1 => A1(6), A2 => n87, B1 => A3(6), B2 => n84, 
                           C1 => A2(6), C2 => n80, ZN => n148);
   U109 : AOI22_X1 port map( A1 => A0(5), A2 => n76, B1 => A4(5), B2 => n88, ZN
                           => n147);
   U110 : AOI22_X1 port map( A1 => A0(8), A2 => n76, B1 => A4(8), B2 => n88, ZN
                           => n153);
   U111 : AOI222_X1 port map( A1 => A1(7), A2 => n87, B1 => A3(7), B2 => n84, 
                           C1 => A2(7), C2 => n80, ZN => n150);
   U112 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(5));
   U113 : AOI222_X1 port map( A1 => A1(5), A2 => n87, B1 => A3(5), B2 => n84, 
                           C1 => A2(5), C2 => n80, ZN => n146);
   U114 : AOI22_X1 port map( A1 => A0(9), A2 => n76, B1 => n90, B2 => A4(9), ZN
                           => n157);
   U115 : AOI222_X1 port map( A1 => A1(8), A2 => n87, B1 => A3(8), B2 => n84, 
                           C1 => A2(8), C2 => n80, ZN => n152);
   U116 : NOR3_X1 port map( A1 => sel(1), A2 => n90, A3 => sel(0), ZN => n154);
   U117 : AND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n155);
   U118 : INV_X1 port map( A => sel(0), ZN => n158);
   U119 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(4));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_5 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_5;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_5 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159 : 
      std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => n72, Z => n78);
   U2 : CLKBUF_X1 port map( A => n80, Z => n82);
   U3 : CLKBUF_X1 port map( A => n87, Z => n85);
   U4 : CLKBUF_X1 port map( A => n91, Z => n89);
   U5 : AND2_X1 port map( A1 => sel(1), A2 => n159, ZN => n72);
   U6 : BUF_X1 port map( A => n155, Z => n80);
   U7 : BUF_X1 port map( A => n156, Z => n87);
   U8 : BUF_X1 port map( A => n154, Z => n76);
   U9 : BUF_X1 port map( A => sel(2), Z => n91);
   U10 : BUF_X1 port map( A => n72, Z => n79);
   U11 : BUF_X1 port map( A => n87, Z => n86);
   U12 : BUF_X1 port map( A => n80, Z => n83);
   U13 : BUF_X1 port map( A => n72, Z => n77);
   U14 : BUF_X1 port map( A => n87, Z => n84);
   U15 : BUF_X1 port map( A => n80, Z => n81);
   U16 : BUF_X1 port map( A => n76, Z => n74);
   U17 : BUF_X1 port map( A => n76, Z => n73);
   U18 : BUF_X1 port map( A => n76, Z => n75);
   U19 : INV_X1 port map( A => sel(0), ZN => n159);
   U20 : NOR2_X1 port map( A1 => n159, A2 => sel(1), ZN => n156);
   U21 : AND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n155);
   U22 : BUF_X1 port map( A => n91, Z => n88);
   U23 : BUF_X1 port map( A => n91, Z => n90);
   U24 : NOR3_X1 port map( A1 => sel(1), A2 => n90, A3 => sel(0), ZN => n154);
   U25 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(6));
   U26 : AOI22_X1 port map( A1 => A0(6), A2 => n75, B1 => A4(6), B2 => n88, ZN 
                           => n149);
   U27 : AOI222_X1 port map( A1 => A1(6), A2 => n86, B1 => A3(6), B2 => n83, C1
                           => A2(6), C2 => n79, ZN => n148);
   U28 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(7));
   U29 : AOI22_X1 port map( A1 => A0(7), A2 => n75, B1 => A4(7), B2 => n88, ZN 
                           => n151);
   U30 : AOI222_X1 port map( A1 => A1(7), A2 => n86, B1 => A3(7), B2 => n83, C1
                           => A2(7), C2 => n79, ZN => n150);
   U31 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(8));
   U32 : AOI22_X1 port map( A1 => A0(8), A2 => n75, B1 => A4(8), B2 => n88, ZN 
                           => n153);
   U33 : NAND2_X1 port map( A1 => n158, A2 => n157, ZN => O(9));
   U34 : NAND2_X1 port map( A1 => n95, A2 => n94, ZN => O(10));
   U35 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => O(11));
   U36 : NAND2_X1 port map( A1 => n99, A2 => n98, ZN => O(12));
   U37 : AOI222_X1 port map( A1 => A1(12), A2 => n84, B1 => A3(12), B2 => n81, 
                           C1 => A2(12), C2 => n77, ZN => n98);
   U38 : NAND2_X1 port map( A1 => n101, A2 => n100, ZN => O(13));
   U39 : AOI22_X1 port map( A1 => A0(13), A2 => n73, B1 => A4(13), B2 => n90, 
                           ZN => n101);
   U40 : AOI222_X1 port map( A1 => A1(13), A2 => n84, B1 => A3(13), B2 => n81, 
                           C1 => A2(13), C2 => n77, ZN => n100);
   U41 : NAND2_X1 port map( A1 => n103, A2 => n102, ZN => O(14));
   U42 : AOI22_X1 port map( A1 => A0(14), A2 => n73, B1 => A4(14), B2 => n90, 
                           ZN => n103);
   U43 : AOI222_X1 port map( A1 => A1(14), A2 => n84, B1 => A3(14), B2 => n81, 
                           C1 => A2(14), C2 => n77, ZN => n102);
   U44 : NAND2_X1 port map( A1 => n105, A2 => n104, ZN => O(15));
   U45 : AOI22_X1 port map( A1 => A0(15), A2 => n73, B1 => A4(15), B2 => n90, 
                           ZN => n105);
   U46 : AOI222_X1 port map( A1 => A1(15), A2 => n84, B1 => A3(15), B2 => n81, 
                           C1 => A2(15), C2 => n77, ZN => n104);
   U47 : NAND2_X1 port map( A1 => n107, A2 => n106, ZN => O(16));
   U48 : AOI22_X1 port map( A1 => A0(16), A2 => n73, B1 => A4(16), B2 => n89, 
                           ZN => n107);
   U49 : AOI222_X1 port map( A1 => A1(16), A2 => n84, B1 => A3(16), B2 => n81, 
                           C1 => A2(16), C2 => n77, ZN => n106);
   U50 : NAND2_X1 port map( A1 => n121, A2 => n120, ZN => O(22));
   U51 : AOI22_X1 port map( A1 => A0(22), A2 => n74, B1 => A4(22), B2 => n89, 
                           ZN => n121);
   U52 : AOI222_X1 port map( A1 => A1(22), A2 => n85, B1 => A3(22), B2 => n82, 
                           C1 => A2(22), C2 => n78, ZN => n120);
   U53 : NAND2_X1 port map( A1 => n109, A2 => n108, ZN => O(17));
   U54 : AOI22_X1 port map( A1 => A0(17), A2 => n73, B1 => A4(17), B2 => n89, 
                           ZN => n109);
   U55 : AOI222_X1 port map( A1 => A1(17), A2 => n84, B1 => A3(17), B2 => n81, 
                           C1 => A2(17), C2 => n77, ZN => n108);
   U56 : NAND2_X1 port map( A1 => n111, A2 => n110, ZN => O(18));
   U57 : AOI22_X1 port map( A1 => A0(18), A2 => n73, B1 => A4(18), B2 => n89, 
                           ZN => n111);
   U58 : AOI222_X1 port map( A1 => A1(18), A2 => n84, B1 => A3(18), B2 => n81, 
                           C1 => A2(18), C2 => n77, ZN => n110);
   U59 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => O(23));
   U60 : AOI22_X1 port map( A1 => A0(23), A2 => n74, B1 => A4(23), B2 => n89, 
                           ZN => n123);
   U61 : AOI222_X1 port map( A1 => A1(23), A2 => n85, B1 => A3(23), B2 => n82, 
                           C1 => A2(23), C2 => n78, ZN => n122);
   U62 : NAND2_X1 port map( A1 => n113, A2 => n112, ZN => O(19));
   U63 : AOI22_X1 port map( A1 => A0(19), A2 => n73, B1 => A4(19), B2 => n89, 
                           ZN => n113);
   U64 : AOI222_X1 port map( A1 => A1(19), A2 => n84, B1 => A3(19), B2 => n81, 
                           C1 => A2(19), C2 => n77, ZN => n112);
   U65 : NAND2_X1 port map( A1 => n117, A2 => n116, ZN => O(20));
   U66 : AOI22_X1 port map( A1 => A0(20), A2 => n74, B1 => A4(20), B2 => n89, 
                           ZN => n117);
   U67 : AOI222_X1 port map( A1 => A1(20), A2 => n85, B1 => A3(20), B2 => n82, 
                           C1 => A2(20), C2 => n78, ZN => n116);
   U68 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(24));
   U69 : AOI22_X1 port map( A1 => A0(24), A2 => n74, B1 => A4(24), B2 => n89, 
                           ZN => n125);
   U70 : AOI222_X1 port map( A1 => A1(24), A2 => n85, B1 => A3(24), B2 => n82, 
                           C1 => A2(24), C2 => n78, ZN => n124);
   U71 : NAND2_X1 port map( A1 => n119, A2 => n118, ZN => O(21));
   U72 : AOI22_X1 port map( A1 => A0(21), A2 => n74, B1 => A4(21), B2 => n89, 
                           ZN => n119);
   U73 : AOI222_X1 port map( A1 => A1(21), A2 => n85, B1 => A3(21), B2 => n82, 
                           C1 => A2(21), C2 => n78, ZN => n118);
   U74 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(25));
   U75 : AOI222_X1 port map( A1 => A1(25), A2 => n85, B1 => A3(25), B2 => n82, 
                           C1 => A2(25), C2 => n78, ZN => n126);
   U76 : AOI22_X1 port map( A1 => A0(25), A2 => n74, B1 => A4(25), B2 => n89, 
                           ZN => n127);
   U77 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(26));
   U78 : AOI22_X1 port map( A1 => A0(26), A2 => n74, B1 => A4(26), B2 => n88, 
                           ZN => n129);
   U79 : AOI222_X1 port map( A1 => A1(26), A2 => n85, B1 => A3(26), B2 => n82, 
                           C1 => A2(26), C2 => n78, ZN => n128);
   U80 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(31));
   U81 : AOI22_X1 port map( A1 => A0(31), A2 => n75, B1 => A4(31), B2 => n88, 
                           ZN => n141);
   U82 : AOI222_X1 port map( A1 => A1(31), A2 => n86, B1 => A3(31), B2 => n83, 
                           C1 => A2(31), C2 => n79, ZN => n140);
   U83 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(28));
   U84 : AOI22_X1 port map( A1 => A0(28), A2 => n74, B1 => A4(28), B2 => n88, 
                           ZN => n133);
   U85 : AOI222_X1 port map( A1 => A1(28), A2 => n85, B1 => A3(28), B2 => n82, 
                           C1 => A2(28), C2 => n78, ZN => n132);
   U86 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(27));
   U87 : AOI222_X1 port map( A1 => A1(27), A2 => n85, B1 => A3(27), B2 => n82, 
                           C1 => A2(27), C2 => n78, ZN => n130);
   U88 : AOI22_X1 port map( A1 => A0(27), A2 => n74, B1 => A4(27), B2 => n88, 
                           ZN => n131);
   U89 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(29));
   U90 : AOI222_X1 port map( A1 => A1(29), A2 => n85, B1 => A3(29), B2 => n82, 
                           C1 => A2(29), C2 => n78, ZN => n134);
   U91 : AOI22_X1 port map( A1 => A0(29), A2 => n74, B1 => A4(29), B2 => n88, 
                           ZN => n135);
   U92 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(30));
   U93 : AOI22_X1 port map( A1 => A0(30), A2 => n74, B1 => A4(30), B2 => n89, 
                           ZN => n139);
   U94 : AOI222_X1 port map( A1 => A1(30), A2 => n85, B1 => A3(30), B2 => n82, 
                           C1 => A2(30), C2 => n78, ZN => n138);
   U95 : NAND2_X1 port map( A1 => n93, A2 => n92, ZN => O(0));
   U96 : AOI22_X1 port map( A1 => A0(0), A2 => n73, B1 => A4(0), B2 => n90, ZN 
                           => n93);
   U97 : AOI222_X1 port map( A1 => A1(0), A2 => n84, B1 => A3(0), B2 => n81, C1
                           => A2(0), C2 => n77, ZN => n92);
   U98 : NAND2_X1 port map( A1 => n115, A2 => n114, ZN => O(1));
   U99 : AOI22_X1 port map( A1 => A0(1), A2 => n73, B1 => A4(1), B2 => n89, ZN 
                           => n115);
   U100 : AOI222_X1 port map( A1 => A1(1), A2 => n84, B1 => A3(1), B2 => n81, 
                           C1 => A2(1), C2 => n77, ZN => n114);
   U101 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(2));
   U102 : AOI22_X1 port map( A1 => A0(2), A2 => n74, B1 => A4(2), B2 => n88, ZN
                           => n137);
   U103 : AOI222_X1 port map( A1 => A1(2), A2 => n85, B1 => A3(2), B2 => n82, 
                           C1 => A2(2), C2 => n78, ZN => n136);
   U104 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(3));
   U105 : AOI22_X1 port map( A1 => A0(3), A2 => n75, B1 => A4(3), B2 => n88, ZN
                           => n143);
   U106 : AOI222_X1 port map( A1 => A1(3), A2 => n86, B1 => A3(3), B2 => n83, 
                           C1 => A2(3), C2 => n79, ZN => n142);
   U107 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(4));
   U108 : AOI22_X1 port map( A1 => A0(4), A2 => n75, B1 => A4(4), B2 => n88, ZN
                           => n145);
   U109 : AOI222_X1 port map( A1 => A1(4), A2 => n86, B1 => A3(4), B2 => n83, 
                           C1 => A2(4), C2 => n79, ZN => n144);
   U110 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(5));
   U111 : AOI22_X1 port map( A1 => A0(5), A2 => n75, B1 => A4(5), B2 => n88, ZN
                           => n147);
   U112 : AOI222_X1 port map( A1 => A1(5), A2 => n86, B1 => A3(5), B2 => n83, 
                           C1 => A2(5), C2 => n79, ZN => n146);
   U113 : AOI22_X1 port map( A1 => A0(12), A2 => n73, B1 => A4(12), B2 => n90, 
                           ZN => n99);
   U114 : AOI222_X1 port map( A1 => A1(11), A2 => n84, B1 => A3(11), B2 => n81,
                           C1 => A2(11), C2 => n77, ZN => n96);
   U115 : AOI22_X1 port map( A1 => A0(9), A2 => n75, B1 => n90, B2 => A4(9), ZN
                           => n158);
   U116 : AOI222_X1 port map( A1 => A1(8), A2 => n86, B1 => A3(8), B2 => n83, 
                           C1 => A2(8), C2 => n79, ZN => n152);
   U117 : AOI22_X1 port map( A1 => A0(10), A2 => n73, B1 => A4(10), B2 => n90, 
                           ZN => n95);
   U118 : AOI222_X1 port map( A1 => A1(9), A2 => n86, B1 => A3(9), B2 => n83, 
                           C1 => A2(9), C2 => n79, ZN => n157);
   U119 : AOI22_X1 port map( A1 => A0(11), A2 => n73, B1 => A4(11), B2 => n90, 
                           ZN => n97);
   U120 : AOI222_X1 port map( A1 => A1(10), A2 => n84, B1 => A3(10), B2 => n81,
                           C1 => A2(10), C2 => n77, ZN => n94);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_3 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_3;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_3 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159 : 
      std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => sel(1), A2 => n159, ZN => n72);
   U2 : BUF_X1 port map( A => n155, Z => n80);
   U3 : BUF_X1 port map( A => n156, Z => n87);
   U4 : BUF_X1 port map( A => n154, Z => n76);
   U5 : BUF_X1 port map( A => sel(2), Z => n91);
   U6 : BUF_X1 port map( A => n72, Z => n77);
   U7 : BUF_X1 port map( A => n87, Z => n84);
   U8 : BUF_X1 port map( A => n80, Z => n81);
   U9 : BUF_X1 port map( A => n87, Z => n85);
   U10 : BUF_X1 port map( A => n72, Z => n78);
   U11 : BUF_X1 port map( A => n80, Z => n82);
   U12 : BUF_X1 port map( A => n87, Z => n86);
   U13 : BUF_X1 port map( A => n72, Z => n79);
   U14 : BUF_X1 port map( A => n80, Z => n83);
   U15 : BUF_X1 port map( A => n76, Z => n74);
   U16 : BUF_X1 port map( A => n76, Z => n73);
   U17 : BUF_X1 port map( A => n76, Z => n75);
   U18 : INV_X1 port map( A => sel(0), ZN => n159);
   U19 : NOR2_X1 port map( A1 => n159, A2 => sel(1), ZN => n156);
   U20 : AND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n155);
   U21 : BUF_X1 port map( A => n91, Z => n90);
   U22 : BUF_X1 port map( A => n91, Z => n89);
   U23 : BUF_X1 port map( A => n91, Z => n88);
   U24 : NOR3_X1 port map( A1 => sel(1), A2 => n90, A3 => sel(0), ZN => n154);
   U25 : NAND2_X1 port map( A1 => n95, A2 => n94, ZN => O(10));
   U26 : AOI22_X1 port map( A1 => A0(10), A2 => n73, B1 => A4(10), B2 => n90, 
                           ZN => n95);
   U27 : AOI222_X1 port map( A1 => A1(10), A2 => n84, B1 => A3(10), B2 => n81, 
                           C1 => A2(10), C2 => n77, ZN => n94);
   U28 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => O(11));
   U29 : AOI22_X1 port map( A1 => A0(11), A2 => n73, B1 => A4(11), B2 => n90, 
                           ZN => n97);
   U30 : AOI222_X1 port map( A1 => A1(11), A2 => n84, B1 => A3(11), B2 => n81, 
                           C1 => A2(11), C2 => n77, ZN => n96);
   U31 : NAND2_X1 port map( A1 => n99, A2 => n98, ZN => O(12));
   U32 : AOI22_X1 port map( A1 => A0(12), A2 => n73, B1 => A4(12), B2 => n90, 
                           ZN => n99);
   U33 : NAND2_X1 port map( A1 => n101, A2 => n100, ZN => O(13));
   U34 : NAND2_X1 port map( A1 => n103, A2 => n102, ZN => O(14));
   U35 : NAND2_X1 port map( A1 => n105, A2 => n104, ZN => O(15));
   U36 : NAND2_X1 port map( A1 => n107, A2 => n106, ZN => O(16));
   U37 : AOI222_X1 port map( A1 => A1(16), A2 => n84, B1 => A3(16), B2 => n81, 
                           C1 => A2(16), C2 => n77, ZN => n106);
   U38 : NAND2_X1 port map( A1 => n109, A2 => n108, ZN => O(17));
   U39 : AOI22_X1 port map( A1 => A0(17), A2 => n73, B1 => A4(17), B2 => n89, 
                           ZN => n109);
   U40 : AOI222_X1 port map( A1 => A1(17), A2 => n84, B1 => A3(17), B2 => n81, 
                           C1 => A2(17), C2 => n77, ZN => n108);
   U41 : NAND2_X1 port map( A1 => n111, A2 => n110, ZN => O(18));
   U42 : AOI22_X1 port map( A1 => A0(18), A2 => n73, B1 => A4(18), B2 => n89, 
                           ZN => n111);
   U43 : AOI222_X1 port map( A1 => A1(18), A2 => n84, B1 => A3(18), B2 => n81, 
                           C1 => A2(18), C2 => n77, ZN => n110);
   U44 : NAND2_X1 port map( A1 => n113, A2 => n112, ZN => O(19));
   U45 : AOI22_X1 port map( A1 => A0(19), A2 => n73, B1 => A4(19), B2 => n89, 
                           ZN => n113);
   U46 : AOI222_X1 port map( A1 => A1(19), A2 => n84, B1 => A3(19), B2 => n81, 
                           C1 => A2(19), C2 => n77, ZN => n112);
   U47 : NAND2_X1 port map( A1 => n117, A2 => n116, ZN => O(20));
   U48 : AOI22_X1 port map( A1 => A0(20), A2 => n74, B1 => A4(20), B2 => n89, 
                           ZN => n117);
   U49 : AOI222_X1 port map( A1 => A1(20), A2 => n85, B1 => A3(20), B2 => n82, 
                           C1 => A2(20), C2 => n78, ZN => n116);
   U50 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(26));
   U51 : AOI22_X1 port map( A1 => A0(26), A2 => n74, B1 => A4(26), B2 => n88, 
                           ZN => n129);
   U52 : AOI222_X1 port map( A1 => A1(26), A2 => n85, B1 => A3(26), B2 => n82, 
                           C1 => A2(26), C2 => n78, ZN => n128);
   U53 : NAND2_X1 port map( A1 => n119, A2 => n118, ZN => O(21));
   U54 : AOI22_X1 port map( A1 => A0(21), A2 => n74, B1 => A4(21), B2 => n89, 
                           ZN => n119);
   U55 : AOI222_X1 port map( A1 => A1(21), A2 => n85, B1 => A3(21), B2 => n82, 
                           C1 => A2(21), C2 => n78, ZN => n118);
   U56 : NAND2_X1 port map( A1 => n121, A2 => n120, ZN => O(22));
   U57 : AOI22_X1 port map( A1 => A0(22), A2 => n74, B1 => A4(22), B2 => n89, 
                           ZN => n121);
   U58 : AOI222_X1 port map( A1 => A1(22), A2 => n85, B1 => A3(22), B2 => n82, 
                           C1 => A2(22), C2 => n78, ZN => n120);
   U59 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => O(23));
   U60 : AOI22_X1 port map( A1 => A0(23), A2 => n74, B1 => A4(23), B2 => n89, 
                           ZN => n123);
   U61 : AOI222_X1 port map( A1 => A1(23), A2 => n85, B1 => A3(23), B2 => n82, 
                           C1 => A2(23), C2 => n78, ZN => n122);
   U62 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(27));
   U63 : AOI22_X1 port map( A1 => A0(27), A2 => n74, B1 => A4(27), B2 => n88, 
                           ZN => n131);
   U64 : AOI222_X1 port map( A1 => A1(27), A2 => n85, B1 => A3(27), B2 => n82, 
                           C1 => A2(27), C2 => n78, ZN => n130);
   U65 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(24));
   U66 : AOI22_X1 port map( A1 => A0(24), A2 => n74, B1 => A4(24), B2 => n89, 
                           ZN => n125);
   U67 : AOI222_X1 port map( A1 => A1(24), A2 => n85, B1 => A3(24), B2 => n82, 
                           C1 => A2(24), C2 => n78, ZN => n124);
   U68 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(25));
   U69 : AOI22_X1 port map( A1 => A0(25), A2 => n74, B1 => A4(25), B2 => n89, 
                           ZN => n127);
   U70 : AOI222_X1 port map( A1 => A1(25), A2 => n85, B1 => A3(25), B2 => n82, 
                           C1 => A2(25), C2 => n78, ZN => n126);
   U71 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(28));
   U72 : AOI222_X1 port map( A1 => A1(28), A2 => n85, B1 => A3(28), B2 => n82, 
                           C1 => A2(28), C2 => n78, ZN => n132);
   U73 : AOI22_X1 port map( A1 => A0(28), A2 => n74, B1 => A4(28), B2 => n88, 
                           ZN => n133);
   U74 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(29));
   U75 : AOI22_X1 port map( A1 => A0(29), A2 => n74, B1 => A4(29), B2 => n88, 
                           ZN => n135);
   U76 : AOI222_X1 port map( A1 => A1(29), A2 => n85, B1 => A3(29), B2 => n82, 
                           C1 => A2(29), C2 => n78, ZN => n134);
   U77 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(30));
   U78 : AOI22_X1 port map( A1 => A0(30), A2 => n74, B1 => A4(30), B2 => n89, 
                           ZN => n139);
   U79 : AOI222_X1 port map( A1 => A1(30), A2 => n85, B1 => A3(30), B2 => n82, 
                           C1 => A2(30), C2 => n78, ZN => n138);
   U80 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(31));
   U81 : AOI22_X1 port map( A1 => A0(31), A2 => n75, B1 => A4(31), B2 => n88, 
                           ZN => n141);
   U82 : AOI222_X1 port map( A1 => A1(31), A2 => n86, B1 => A3(31), B2 => n83, 
                           C1 => A2(31), C2 => n79, ZN => n140);
   U83 : NAND2_X1 port map( A1 => n93, A2 => n92, ZN => O(0));
   U84 : AOI22_X1 port map( A1 => A0(0), A2 => n73, B1 => A4(0), B2 => n90, ZN 
                           => n93);
   U85 : AOI222_X1 port map( A1 => A1(0), A2 => n84, B1 => A3(0), B2 => n81, C1
                           => A2(0), C2 => n77, ZN => n92);
   U86 : NAND2_X1 port map( A1 => n115, A2 => n114, ZN => O(1));
   U87 : AOI22_X1 port map( A1 => A0(1), A2 => n73, B1 => A4(1), B2 => n89, ZN 
                           => n115);
   U88 : AOI222_X1 port map( A1 => A1(1), A2 => n84, B1 => A3(1), B2 => n81, C1
                           => A2(1), C2 => n77, ZN => n114);
   U89 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(2));
   U90 : AOI22_X1 port map( A1 => A0(2), A2 => n74, B1 => A4(2), B2 => n88, ZN 
                           => n137);
   U91 : AOI222_X1 port map( A1 => A1(2), A2 => n85, B1 => A3(2), B2 => n82, C1
                           => A2(2), C2 => n78, ZN => n136);
   U92 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(3));
   U93 : AOI22_X1 port map( A1 => A0(3), A2 => n75, B1 => A4(3), B2 => n88, ZN 
                           => n143);
   U94 : AOI222_X1 port map( A1 => A1(3), A2 => n86, B1 => A3(3), B2 => n83, C1
                           => A2(3), C2 => n79, ZN => n142);
   U95 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(4));
   U96 : AOI22_X1 port map( A1 => A0(4), A2 => n75, B1 => A4(4), B2 => n88, ZN 
                           => n145);
   U97 : AOI222_X1 port map( A1 => A1(4), A2 => n86, B1 => A3(4), B2 => n83, C1
                           => A2(4), C2 => n79, ZN => n144);
   U98 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(5));
   U99 : AOI22_X1 port map( A1 => A0(5), A2 => n75, B1 => A4(5), B2 => n88, ZN 
                           => n147);
   U100 : AOI222_X1 port map( A1 => A1(5), A2 => n86, B1 => A3(5), B2 => n83, 
                           C1 => A2(5), C2 => n79, ZN => n146);
   U101 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(6));
   U102 : AOI22_X1 port map( A1 => A0(6), A2 => n75, B1 => A4(6), B2 => n88, ZN
                           => n149);
   U103 : AOI222_X1 port map( A1 => A1(6), A2 => n86, B1 => A3(6), B2 => n83, 
                           C1 => A2(6), C2 => n79, ZN => n148);
   U104 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(7));
   U105 : AOI22_X1 port map( A1 => A0(7), A2 => n75, B1 => A4(7), B2 => n88, ZN
                           => n151);
   U106 : AOI222_X1 port map( A1 => A1(7), A2 => n86, B1 => A3(7), B2 => n83, 
                           C1 => A2(7), C2 => n79, ZN => n150);
   U107 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(8));
   U108 : AOI22_X1 port map( A1 => A0(8), A2 => n75, B1 => A4(8), B2 => n88, ZN
                           => n153);
   U109 : AOI222_X1 port map( A1 => A1(8), A2 => n86, B1 => A3(8), B2 => n83, 
                           C1 => A2(8), C2 => n79, ZN => n152);
   U110 : NAND2_X1 port map( A1 => n158, A2 => n157, ZN => O(9));
   U111 : AOI22_X1 port map( A1 => A0(9), A2 => n75, B1 => n90, B2 => A4(9), ZN
                           => n158);
   U112 : AOI222_X1 port map( A1 => A1(9), A2 => n86, B1 => A3(9), B2 => n83, 
                           C1 => A2(9), C2 => n79, ZN => n157);
   U113 : AOI22_X1 port map( A1 => A0(16), A2 => n73, B1 => A4(16), B2 => n89, 
                           ZN => n107);
   U114 : AOI222_X1 port map( A1 => A1(15), A2 => n84, B1 => A3(15), B2 => n81,
                           C1 => A2(15), C2 => n77, ZN => n104);
   U115 : AOI22_X1 port map( A1 => A0(13), A2 => n73, B1 => A4(13), B2 => n90, 
                           ZN => n101);
   U116 : AOI222_X1 port map( A1 => A1(12), A2 => n84, B1 => A3(12), B2 => n81,
                           C1 => A2(12), C2 => n77, ZN => n98);
   U117 : AOI22_X1 port map( A1 => A0(14), A2 => n73, B1 => A4(14), B2 => n90, 
                           ZN => n103);
   U118 : AOI222_X1 port map( A1 => A1(13), A2 => n84, B1 => A3(13), B2 => n81,
                           C1 => A2(13), C2 => n77, ZN => n100);
   U119 : AOI22_X1 port map( A1 => A0(15), A2 => n73, B1 => A4(15), B2 => n90, 
                           ZN => n105);
   U120 : AOI222_X1 port map( A1 => A1(14), A2 => n84, B1 => A3(14), B2 => n81,
                           C1 => A2(14), C2 => n77, ZN => n102);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_2 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_2;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_2 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      n160 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n155, Z => n76);
   U2 : BUF_X1 port map( A => n156, Z => n80);
   U3 : BUF_X1 port map( A => n157, Z => n87);
   U4 : BUF_X1 port map( A => n154, Z => n75);
   U5 : BUF_X1 port map( A => sel(2), Z => n91);
   U6 : BUF_X1 port map( A => n76, Z => n77);
   U7 : BUF_X1 port map( A => n87, Z => n84);
   U8 : BUF_X1 port map( A => n80, Z => n81);
   U9 : BUF_X1 port map( A => n76, Z => n78);
   U10 : BUF_X1 port map( A => n87, Z => n85);
   U11 : BUF_X1 port map( A => n80, Z => n82);
   U12 : BUF_X1 port map( A => n87, Z => n86);
   U13 : BUF_X1 port map( A => n76, Z => n79);
   U14 : BUF_X1 port map( A => n80, Z => n83);
   U15 : BUF_X1 port map( A => n75, Z => n73);
   U16 : BUF_X1 port map( A => n75, Z => n72);
   U17 : BUF_X1 port map( A => n75, Z => n74);
   U18 : INV_X1 port map( A => sel(0), ZN => n160);
   U19 : AND2_X1 port map( A1 => sel(1), A2 => n160, ZN => n155);
   U20 : NOR2_X1 port map( A1 => n160, A2 => sel(1), ZN => n157);
   U21 : AND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n156);
   U22 : BUF_X1 port map( A => n91, Z => n90);
   U23 : BUF_X1 port map( A => n91, Z => n89);
   U24 : BUF_X1 port map( A => n91, Z => n88);
   U25 : NOR3_X1 port map( A1 => sel(1), A2 => n90, A3 => sel(0), ZN => n154);
   U26 : NAND2_X1 port map( A1 => n99, A2 => n98, ZN => O(12));
   U27 : AOI22_X1 port map( A1 => A0(12), A2 => n72, B1 => A4(12), B2 => n90, 
                           ZN => n99);
   U28 : AOI222_X1 port map( A1 => A1(12), A2 => n84, B1 => A3(12), B2 => n81, 
                           C1 => A2(12), C2 => n77, ZN => n98);
   U29 : NAND2_X1 port map( A1 => n101, A2 => n100, ZN => O(13));
   U30 : AOI22_X1 port map( A1 => A0(13), A2 => n72, B1 => A4(13), B2 => n90, 
                           ZN => n101);
   U31 : AOI222_X1 port map( A1 => A1(13), A2 => n84, B1 => A3(13), B2 => n81, 
                           C1 => A2(13), C2 => n77, ZN => n100);
   U32 : NAND2_X1 port map( A1 => n103, A2 => n102, ZN => O(14));
   U33 : AOI22_X1 port map( A1 => A0(14), A2 => n72, B1 => A4(14), B2 => n90, 
                           ZN => n103);
   U34 : NAND2_X1 port map( A1 => n105, A2 => n104, ZN => O(15));
   U35 : NAND2_X1 port map( A1 => n107, A2 => n106, ZN => O(16));
   U36 : NAND2_X1 port map( A1 => n109, A2 => n108, ZN => O(17));
   U37 : NAND2_X1 port map( A1 => n111, A2 => n110, ZN => O(18));
   U38 : AOI222_X1 port map( A1 => A1(18), A2 => n84, B1 => A3(18), B2 => n81, 
                           C1 => A2(18), C2 => n77, ZN => n110);
   U39 : NAND2_X1 port map( A1 => n113, A2 => n112, ZN => O(19));
   U40 : AOI22_X1 port map( A1 => A0(19), A2 => n72, B1 => A4(19), B2 => n89, 
                           ZN => n113);
   U41 : AOI222_X1 port map( A1 => A1(19), A2 => n84, B1 => A3(19), B2 => n81, 
                           C1 => A2(19), C2 => n77, ZN => n112);
   U42 : NAND2_X1 port map( A1 => n117, A2 => n116, ZN => O(20));
   U43 : AOI22_X1 port map( A1 => A0(20), A2 => n73, B1 => A4(20), B2 => n89, 
                           ZN => n117);
   U44 : AOI222_X1 port map( A1 => A1(20), A2 => n85, B1 => A3(20), B2 => n82, 
                           C1 => A2(20), C2 => n78, ZN => n116);
   U45 : NAND2_X1 port map( A1 => n119, A2 => n118, ZN => O(21));
   U46 : AOI22_X1 port map( A1 => A0(21), A2 => n73, B1 => A4(21), B2 => n89, 
                           ZN => n119);
   U47 : AOI222_X1 port map( A1 => A1(21), A2 => n85, B1 => A3(21), B2 => n82, 
                           C1 => A2(21), C2 => n78, ZN => n118);
   U48 : NAND2_X1 port map( A1 => n121, A2 => n120, ZN => O(22));
   U49 : AOI22_X1 port map( A1 => A0(22), A2 => n73, B1 => A4(22), B2 => n89, 
                           ZN => n121);
   U50 : AOI222_X1 port map( A1 => A1(22), A2 => n85, B1 => A3(22), B2 => n82, 
                           C1 => A2(22), C2 => n78, ZN => n120);
   U51 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(28));
   U52 : AOI22_X1 port map( A1 => A0(28), A2 => n73, B1 => A4(28), B2 => n88, 
                           ZN => n133);
   U53 : AOI222_X1 port map( A1 => A1(28), A2 => n85, B1 => A3(28), B2 => n82, 
                           C1 => A2(28), C2 => n78, ZN => n132);
   U54 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => O(23));
   U55 : AOI22_X1 port map( A1 => A0(23), A2 => n73, B1 => A4(23), B2 => n89, 
                           ZN => n123);
   U56 : AOI222_X1 port map( A1 => A1(23), A2 => n85, B1 => A3(23), B2 => n82, 
                           C1 => A2(23), C2 => n78, ZN => n122);
   U57 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(24));
   U58 : AOI22_X1 port map( A1 => A0(24), A2 => n73, B1 => A4(24), B2 => n89, 
                           ZN => n125);
   U59 : AOI222_X1 port map( A1 => A1(24), A2 => n85, B1 => A3(24), B2 => n82, 
                           C1 => A2(24), C2 => n78, ZN => n124);
   U60 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(25));
   U61 : AOI22_X1 port map( A1 => A0(25), A2 => n73, B1 => A4(25), B2 => n89, 
                           ZN => n127);
   U62 : AOI222_X1 port map( A1 => A1(25), A2 => n85, B1 => A3(25), B2 => n82, 
                           C1 => A2(25), C2 => n78, ZN => n126);
   U63 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(29));
   U64 : AOI22_X1 port map( A1 => A0(29), A2 => n73, B1 => A4(29), B2 => n88, 
                           ZN => n135);
   U65 : AOI222_X1 port map( A1 => A1(29), A2 => n85, B1 => A3(29), B2 => n82, 
                           C1 => A2(29), C2 => n78, ZN => n134);
   U66 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(26));
   U67 : AOI22_X1 port map( A1 => A0(26), A2 => n73, B1 => A4(26), B2 => n88, 
                           ZN => n129);
   U68 : AOI222_X1 port map( A1 => A1(26), A2 => n85, B1 => A3(26), B2 => n82, 
                           C1 => A2(26), C2 => n78, ZN => n128);
   U69 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(27));
   U70 : AOI22_X1 port map( A1 => A0(27), A2 => n73, B1 => A4(27), B2 => n88, 
                           ZN => n131);
   U71 : AOI222_X1 port map( A1 => A1(27), A2 => n85, B1 => A3(27), B2 => n82, 
                           C1 => A2(27), C2 => n78, ZN => n130);
   U72 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(30));
   U73 : AOI22_X1 port map( A1 => A0(30), A2 => n73, B1 => A4(30), B2 => n89, 
                           ZN => n139);
   U74 : AOI222_X1 port map( A1 => A1(30), A2 => n85, B1 => A3(30), B2 => n82, 
                           C1 => A2(30), C2 => n78, ZN => n138);
   U75 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(31));
   U76 : AOI22_X1 port map( A1 => A0(31), A2 => n74, B1 => A4(31), B2 => n88, 
                           ZN => n141);
   U77 : AOI222_X1 port map( A1 => A1(31), A2 => n86, B1 => A3(31), B2 => n83, 
                           C1 => A2(31), C2 => n79, ZN => n140);
   U78 : NAND2_X1 port map( A1 => n93, A2 => n92, ZN => O(0));
   U79 : AOI22_X1 port map( A1 => A0(0), A2 => n72, B1 => A4(0), B2 => n90, ZN 
                           => n93);
   U80 : AOI222_X1 port map( A1 => A1(0), A2 => n84, B1 => A3(0), B2 => n81, C1
                           => A2(0), C2 => n77, ZN => n92);
   U81 : NAND2_X1 port map( A1 => n115, A2 => n114, ZN => O(1));
   U82 : AOI22_X1 port map( A1 => A0(1), A2 => n72, B1 => A4(1), B2 => n89, ZN 
                           => n115);
   U83 : AOI222_X1 port map( A1 => A1(1), A2 => n84, B1 => A3(1), B2 => n81, C1
                           => A2(1), C2 => n77, ZN => n114);
   U84 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(2));
   U85 : AOI22_X1 port map( A1 => A0(2), A2 => n73, B1 => A4(2), B2 => n88, ZN 
                           => n137);
   U86 : AOI222_X1 port map( A1 => A1(2), A2 => n85, B1 => A3(2), B2 => n82, C1
                           => A2(2), C2 => n78, ZN => n136);
   U87 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(3));
   U88 : AOI22_X1 port map( A1 => A0(3), A2 => n74, B1 => A4(3), B2 => n88, ZN 
                           => n143);
   U89 : AOI222_X1 port map( A1 => A1(3), A2 => n86, B1 => A3(3), B2 => n83, C1
                           => A2(3), C2 => n79, ZN => n142);
   U90 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(4));
   U91 : AOI22_X1 port map( A1 => A0(4), A2 => n74, B1 => A4(4), B2 => n88, ZN 
                           => n145);
   U92 : AOI222_X1 port map( A1 => A1(4), A2 => n86, B1 => A3(4), B2 => n83, C1
                           => A2(4), C2 => n79, ZN => n144);
   U93 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(5));
   U94 : AOI22_X1 port map( A1 => A0(5), A2 => n74, B1 => A4(5), B2 => n88, ZN 
                           => n147);
   U95 : AOI222_X1 port map( A1 => A1(5), A2 => n86, B1 => A3(5), B2 => n83, C1
                           => A2(5), C2 => n79, ZN => n146);
   U96 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(6));
   U97 : AOI22_X1 port map( A1 => A0(6), A2 => n74, B1 => A4(6), B2 => n88, ZN 
                           => n149);
   U98 : AOI222_X1 port map( A1 => A1(6), A2 => n86, B1 => A3(6), B2 => n83, C1
                           => A2(6), C2 => n79, ZN => n148);
   U99 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(7));
   U100 : AOI22_X1 port map( A1 => A0(7), A2 => n74, B1 => A4(7), B2 => n88, ZN
                           => n151);
   U101 : AOI222_X1 port map( A1 => A1(7), A2 => n86, B1 => A3(7), B2 => n83, 
                           C1 => A2(7), C2 => n79, ZN => n150);
   U102 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(8));
   U103 : AOI22_X1 port map( A1 => A0(8), A2 => n74, B1 => A4(8), B2 => n88, ZN
                           => n153);
   U104 : AOI222_X1 port map( A1 => A1(8), A2 => n86, B1 => A3(8), B2 => n83, 
                           C1 => A2(8), C2 => n79, ZN => n152);
   U105 : NAND2_X1 port map( A1 => n159, A2 => n158, ZN => O(9));
   U106 : AOI22_X1 port map( A1 => A0(9), A2 => n74, B1 => n90, B2 => A4(9), ZN
                           => n159);
   U107 : AOI222_X1 port map( A1 => A1(9), A2 => n86, B1 => A3(9), B2 => n83, 
                           C1 => A2(9), C2 => n79, ZN => n158);
   U108 : NAND2_X1 port map( A1 => n95, A2 => n94, ZN => O(10));
   U109 : AOI22_X1 port map( A1 => A0(10), A2 => n72, B1 => A4(10), B2 => n90, 
                           ZN => n95);
   U110 : AOI222_X1 port map( A1 => A1(10), A2 => n84, B1 => A3(10), B2 => n81,
                           C1 => A2(10), C2 => n77, ZN => n94);
   U111 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => O(11));
   U112 : AOI22_X1 port map( A1 => A0(11), A2 => n72, B1 => A4(11), B2 => n90, 
                           ZN => n97);
   U113 : AOI222_X1 port map( A1 => A1(11), A2 => n84, B1 => A3(11), B2 => n81,
                           C1 => A2(11), C2 => n77, ZN => n96);
   U114 : AOI22_X1 port map( A1 => A0(18), A2 => n72, B1 => A4(18), B2 => n89, 
                           ZN => n111);
   U115 : AOI222_X1 port map( A1 => A1(17), A2 => n84, B1 => A3(17), B2 => n81,
                           C1 => A2(17), C2 => n77, ZN => n108);
   U116 : AOI22_X1 port map( A1 => A0(15), A2 => n72, B1 => A4(15), B2 => n90, 
                           ZN => n105);
   U117 : AOI222_X1 port map( A1 => A1(14), A2 => n84, B1 => A3(14), B2 => n81,
                           C1 => A2(14), C2 => n77, ZN => n102);
   U118 : AOI22_X1 port map( A1 => A0(16), A2 => n72, B1 => A4(16), B2 => n89, 
                           ZN => n107);
   U119 : AOI222_X1 port map( A1 => A1(15), A2 => n84, B1 => A3(15), B2 => n81,
                           C1 => A2(15), C2 => n77, ZN => n104);
   U120 : AOI22_X1 port map( A1 => A0(17), A2 => n72, B1 => A4(17), B2 => n89, 
                           ZN => n109);
   U121 : AOI222_X1 port map( A1 => A1(16), A2 => n84, B1 => A3(16), B2 => n81,
                           C1 => A2(16), C2 => n77, ZN => n106);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_1 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_1;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_1 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
      n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, 
      n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      n160 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n155, Z => n76);
   U2 : BUF_X1 port map( A => n156, Z => n80);
   U3 : BUF_X1 port map( A => n157, Z => n87);
   U4 : BUF_X1 port map( A => n154, Z => n75);
   U5 : BUF_X1 port map( A => sel(2), Z => n91);
   U6 : BUF_X1 port map( A => n76, Z => n77);
   U7 : BUF_X1 port map( A => n87, Z => n84);
   U8 : BUF_X1 port map( A => n80, Z => n81);
   U9 : BUF_X1 port map( A => n76, Z => n78);
   U10 : BUF_X1 port map( A => n87, Z => n85);
   U11 : BUF_X1 port map( A => n80, Z => n82);
   U12 : BUF_X1 port map( A => n87, Z => n86);
   U13 : BUF_X1 port map( A => n76, Z => n79);
   U14 : BUF_X1 port map( A => n80, Z => n83);
   U15 : BUF_X1 port map( A => n75, Z => n73);
   U16 : BUF_X1 port map( A => n75, Z => n72);
   U17 : BUF_X1 port map( A => n75, Z => n74);
   U18 : AND2_X1 port map( A1 => sel(1), A2 => n160, ZN => n155);
   U19 : INV_X1 port map( A => sel(0), ZN => n160);
   U20 : NOR2_X1 port map( A1 => n160, A2 => sel(1), ZN => n157);
   U21 : AND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n156);
   U22 : BUF_X1 port map( A => n91, Z => n90);
   U23 : BUF_X1 port map( A => n91, Z => n89);
   U24 : BUF_X1 port map( A => n91, Z => n88);
   U25 : NOR3_X1 port map( A1 => sel(1), A2 => n90, A3 => sel(0), ZN => n154);
   U26 : NAND2_X1 port map( A1 => n103, A2 => n102, ZN => O(14));
   U27 : AOI22_X1 port map( A1 => A0(14), A2 => n72, B1 => A4(14), B2 => n90, 
                           ZN => n103);
   U28 : AOI222_X1 port map( A1 => A1(14), A2 => n84, B1 => A3(14), B2 => n81, 
                           C1 => A2(14), C2 => n77, ZN => n102);
   U29 : NAND2_X1 port map( A1 => n105, A2 => n104, ZN => O(15));
   U30 : AOI22_X1 port map( A1 => A0(15), A2 => n72, B1 => A4(15), B2 => n90, 
                           ZN => n105);
   U31 : AOI222_X1 port map( A1 => A1(15), A2 => n84, B1 => A3(15), B2 => n81, 
                           C1 => A2(15), C2 => n77, ZN => n104);
   U32 : NAND2_X1 port map( A1 => n107, A2 => n106, ZN => O(16));
   U33 : AOI22_X1 port map( A1 => A0(16), A2 => n72, B1 => A4(16), B2 => n89, 
                           ZN => n107);
   U34 : NAND2_X1 port map( A1 => n109, A2 => n108, ZN => O(17));
   U35 : NAND2_X1 port map( A1 => n111, A2 => n110, ZN => O(18));
   U36 : NAND2_X1 port map( A1 => n113, A2 => n112, ZN => O(19));
   U37 : NAND2_X1 port map( A1 => n117, A2 => n116, ZN => O(20));
   U38 : AOI222_X1 port map( A1 => A1(20), A2 => n85, B1 => A3(20), B2 => n82, 
                           C1 => A2(20), C2 => n78, ZN => n116);
   U39 : NAND2_X1 port map( A1 => n119, A2 => n118, ZN => O(21));
   U40 : AOI22_X1 port map( A1 => A0(21), A2 => n73, B1 => A4(21), B2 => n89, 
                           ZN => n119);
   U41 : AOI222_X1 port map( A1 => A1(21), A2 => n85, B1 => A3(21), B2 => n82, 
                           C1 => A2(21), C2 => n78, ZN => n118);
   U42 : NAND2_X1 port map( A1 => n121, A2 => n120, ZN => O(22));
   U43 : AOI22_X1 port map( A1 => A0(22), A2 => n73, B1 => A4(22), B2 => n89, 
                           ZN => n121);
   U44 : AOI222_X1 port map( A1 => A1(22), A2 => n85, B1 => A3(22), B2 => n82, 
                           C1 => A2(22), C2 => n78, ZN => n120);
   U45 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => O(23));
   U46 : AOI22_X1 port map( A1 => A0(23), A2 => n73, B1 => A4(23), B2 => n89, 
                           ZN => n123);
   U47 : AOI222_X1 port map( A1 => A1(23), A2 => n85, B1 => A3(23), B2 => n82, 
                           C1 => A2(23), C2 => n78, ZN => n122);
   U48 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(24));
   U49 : AOI22_X1 port map( A1 => A0(24), A2 => n73, B1 => A4(24), B2 => n89, 
                           ZN => n125);
   U50 : AOI222_X1 port map( A1 => A1(24), A2 => n85, B1 => A3(24), B2 => n82, 
                           C1 => A2(24), C2 => n78, ZN => n124);
   U51 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(25));
   U52 : AOI22_X1 port map( A1 => A0(25), A2 => n73, B1 => A4(25), B2 => n89, 
                           ZN => n127);
   U53 : AOI222_X1 port map( A1 => A1(25), A2 => n85, B1 => A3(25), B2 => n82, 
                           C1 => A2(25), C2 => n78, ZN => n126);
   U54 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(26));
   U55 : AOI22_X1 port map( A1 => A0(26), A2 => n73, B1 => A4(26), B2 => n88, 
                           ZN => n129);
   U56 : AOI222_X1 port map( A1 => A1(26), A2 => n85, B1 => A3(26), B2 => n82, 
                           C1 => A2(26), C2 => n78, ZN => n128);
   U57 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(31));
   U58 : AOI22_X1 port map( A1 => A0(31), A2 => n74, B1 => A4(31), B2 => n88, 
                           ZN => n141);
   U59 : AOI222_X1 port map( A1 => A1(31), A2 => n86, B1 => A3(31), B2 => n83, 
                           C1 => A2(31), C2 => n79, ZN => n140);
   U60 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(27));
   U61 : AOI22_X1 port map( A1 => A0(27), A2 => n73, B1 => A4(27), B2 => n88, 
                           ZN => n131);
   U62 : AOI222_X1 port map( A1 => A1(27), A2 => n85, B1 => A3(27), B2 => n82, 
                           C1 => A2(27), C2 => n78, ZN => n130);
   U63 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(28));
   U64 : AOI22_X1 port map( A1 => A0(28), A2 => n73, B1 => A4(28), B2 => n88, 
                           ZN => n133);
   U65 : AOI222_X1 port map( A1 => A1(28), A2 => n85, B1 => A3(28), B2 => n82, 
                           C1 => A2(28), C2 => n78, ZN => n132);
   U66 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(29));
   U67 : AOI22_X1 port map( A1 => A0(29), A2 => n73, B1 => A4(29), B2 => n88, 
                           ZN => n135);
   U68 : AOI222_X1 port map( A1 => A1(29), A2 => n85, B1 => A3(29), B2 => n82, 
                           C1 => A2(29), C2 => n78, ZN => n134);
   U69 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(30));
   U70 : AOI22_X1 port map( A1 => A0(30), A2 => n73, B1 => A4(30), B2 => n89, 
                           ZN => n139);
   U71 : AOI222_X1 port map( A1 => A1(30), A2 => n85, B1 => A3(30), B2 => n82, 
                           C1 => A2(30), C2 => n78, ZN => n138);
   U72 : NAND2_X1 port map( A1 => n93, A2 => n92, ZN => O(0));
   U73 : AOI22_X1 port map( A1 => A0(0), A2 => n72, B1 => A4(0), B2 => n90, ZN 
                           => n93);
   U74 : AOI222_X1 port map( A1 => A1(0), A2 => n84, B1 => A3(0), B2 => n81, C1
                           => A2(0), C2 => n77, ZN => n92);
   U75 : NAND2_X1 port map( A1 => n115, A2 => n114, ZN => O(1));
   U76 : AOI22_X1 port map( A1 => A0(1), A2 => n72, B1 => A4(1), B2 => n89, ZN 
                           => n115);
   U77 : AOI222_X1 port map( A1 => A1(1), A2 => n84, B1 => A3(1), B2 => n81, C1
                           => A2(1), C2 => n77, ZN => n114);
   U78 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(2));
   U79 : AOI22_X1 port map( A1 => A0(2), A2 => n73, B1 => A4(2), B2 => n88, ZN 
                           => n137);
   U80 : AOI222_X1 port map( A1 => A1(2), A2 => n85, B1 => A3(2), B2 => n82, C1
                           => A2(2), C2 => n78, ZN => n136);
   U81 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(3));
   U82 : AOI22_X1 port map( A1 => A0(3), A2 => n74, B1 => A4(3), B2 => n88, ZN 
                           => n143);
   U83 : AOI222_X1 port map( A1 => A1(3), A2 => n86, B1 => A3(3), B2 => n83, C1
                           => A2(3), C2 => n79, ZN => n142);
   U84 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(4));
   U85 : AOI22_X1 port map( A1 => A0(4), A2 => n74, B1 => A4(4), B2 => n88, ZN 
                           => n145);
   U86 : AOI222_X1 port map( A1 => A1(4), A2 => n86, B1 => A3(4), B2 => n83, C1
                           => A2(4), C2 => n79, ZN => n144);
   U87 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(5));
   U88 : AOI22_X1 port map( A1 => A0(5), A2 => n74, B1 => A4(5), B2 => n88, ZN 
                           => n147);
   U89 : AOI222_X1 port map( A1 => A1(5), A2 => n86, B1 => A3(5), B2 => n83, C1
                           => A2(5), C2 => n79, ZN => n146);
   U90 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(6));
   U91 : AOI22_X1 port map( A1 => A0(6), A2 => n74, B1 => A4(6), B2 => n88, ZN 
                           => n149);
   U92 : AOI222_X1 port map( A1 => A1(6), A2 => n86, B1 => A3(6), B2 => n83, C1
                           => A2(6), C2 => n79, ZN => n148);
   U93 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(7));
   U94 : AOI22_X1 port map( A1 => A0(7), A2 => n74, B1 => A4(7), B2 => n88, ZN 
                           => n151);
   U95 : AOI222_X1 port map( A1 => A1(7), A2 => n86, B1 => A3(7), B2 => n83, C1
                           => A2(7), C2 => n79, ZN => n150);
   U96 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(8));
   U97 : AOI22_X1 port map( A1 => A0(8), A2 => n74, B1 => A4(8), B2 => n88, ZN 
                           => n153);
   U98 : AOI222_X1 port map( A1 => A1(8), A2 => n86, B1 => A3(8), B2 => n83, C1
                           => A2(8), C2 => n79, ZN => n152);
   U99 : NAND2_X1 port map( A1 => n159, A2 => n158, ZN => O(9));
   U100 : AOI22_X1 port map( A1 => A0(9), A2 => n74, B1 => n90, B2 => A4(9), ZN
                           => n159);
   U101 : AOI222_X1 port map( A1 => A1(9), A2 => n86, B1 => A3(9), B2 => n83, 
                           C1 => A2(9), C2 => n79, ZN => n158);
   U102 : NAND2_X1 port map( A1 => n95, A2 => n94, ZN => O(10));
   U103 : AOI22_X1 port map( A1 => A0(10), A2 => n72, B1 => A4(10), B2 => n90, 
                           ZN => n95);
   U104 : AOI222_X1 port map( A1 => A1(10), A2 => n84, B1 => A3(10), B2 => n81,
                           C1 => A2(10), C2 => n77, ZN => n94);
   U105 : NAND2_X1 port map( A1 => n97, A2 => n96, ZN => O(11));
   U106 : AOI22_X1 port map( A1 => A0(11), A2 => n72, B1 => A4(11), B2 => n90, 
                           ZN => n97);
   U107 : AOI222_X1 port map( A1 => A1(11), A2 => n84, B1 => A3(11), B2 => n81,
                           C1 => A2(11), C2 => n77, ZN => n96);
   U108 : NAND2_X1 port map( A1 => n99, A2 => n98, ZN => O(12));
   U109 : AOI22_X1 port map( A1 => A0(12), A2 => n72, B1 => A4(12), B2 => n90, 
                           ZN => n99);
   U110 : AOI222_X1 port map( A1 => A1(12), A2 => n84, B1 => A3(12), B2 => n81,
                           C1 => A2(12), C2 => n77, ZN => n98);
   U111 : NAND2_X1 port map( A1 => n101, A2 => n100, ZN => O(13));
   U112 : AOI22_X1 port map( A1 => A0(13), A2 => n72, B1 => A4(13), B2 => n90, 
                           ZN => n101);
   U113 : AOI222_X1 port map( A1 => A1(13), A2 => n84, B1 => A3(13), B2 => n81,
                           C1 => A2(13), C2 => n77, ZN => n100);
   U114 : AOI22_X1 port map( A1 => A0(20), A2 => n73, B1 => A4(20), B2 => n89, 
                           ZN => n117);
   U115 : AOI222_X1 port map( A1 => A1(19), A2 => n84, B1 => A3(19), B2 => n81,
                           C1 => A2(19), C2 => n77, ZN => n112);
   U116 : AOI22_X1 port map( A1 => A0(17), A2 => n72, B1 => A4(17), B2 => n89, 
                           ZN => n109);
   U117 : AOI222_X1 port map( A1 => A1(16), A2 => n84, B1 => A3(16), B2 => n81,
                           C1 => A2(16), C2 => n77, ZN => n106);
   U118 : AOI22_X1 port map( A1 => A0(18), A2 => n72, B1 => A4(18), B2 => n89, 
                           ZN => n111);
   U119 : AOI222_X1 port map( A1 => A1(17), A2 => n84, B1 => A3(17), B2 => n81,
                           C1 => A2(17), C2 => n77, ZN => n108);
   U120 : AOI22_X1 port map( A1 => A0(19), A2 => n72, B1 => A4(19), B2 => n89, 
                           ZN => n113);
   U121 : AOI222_X1 port map( A1 => A1(18), A2 => n84, B1 => A3(18), B2 => n81,
                           C1 => A2(18), C2 => n77, ZN => n110);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_7 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_7;

architecture SYN_BEHAVIORAL of BE_BLOCK_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net47180, net47149, net38636, net47181, net38356, n3, n1, n4 : 
      std_logic;

begin
   
   U3 : AND3_X1 port map( A1 => b(2), A2 => net47181, A3 => net38636, ZN => 
                           sel(2));
   U4 : OAI22_X1 port map( A1 => n3, A2 => n1, B1 => b(2), B2 => net47181, ZN 
                           => sel(1));
   U5 : INV_X1 port map( A => b(2), ZN => n1);
   U6 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => net38356, ZN => n3);
   U7 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => net38356);
   U8 : AOI21_X1 port map( B1 => net47149, B2 => net47180, A => b(2), ZN => 
                           sel(0));
   U9 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => net47181);
   U10 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => net47180);
   U11 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n4, ZN => net47149);
   U12 : CLKBUF_X1 port map( A => net47149, Z => net38636);
   U13 : NAND2_X1 port map( A1 => b(0), A2 => b(1), ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_6 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_6;

architecture SYN_BEHAVIORAL of BE_BLOCK_6 is

   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U4 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U5 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U7 : INV_X1 port map( A => b(2), ZN => n7);
   U8 : AND3_X1 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_5 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_5;

architecture SYN_BEHAVIORAL of BE_BLOCK_5 is

   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U4 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U5 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U7 : INV_X1 port map( A => b(2), ZN => n7);
   U8 : AND3_X1 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_4 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_4;

architecture SYN_BEHAVIORAL of BE_BLOCK_4 is

   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U4 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U5 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U7 : INV_X1 port map( A => b(2), ZN => n7);
   U8 : AND3_X1 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_3 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_3;

architecture SYN_BEHAVIORAL of BE_BLOCK_3 is

   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U4 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U5 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U7 : INV_X1 port map( A => b(2), ZN => n7);
   U8 : AND3_X1 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_2 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_2;

architecture SYN_BEHAVIORAL of BE_BLOCK_2 is

   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U4 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U5 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U7 : INV_X1 port map( A => b(2), ZN => n7);
   U8 : AND3_X1 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_1 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_1;

architecture SYN_BEHAVIORAL of BE_BLOCK_1 is

   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => b(2), ZN => sel(0));
   U4 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n6, ZN => n5);
   U5 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n6);
   U6 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => b(2), B2 => n6, ZN => 
                           sel(1));
   U7 : INV_X1 port map( A => b(2), ZN => n7);
   U8 : AND3_X1 port map( A1 => b(2), A2 => n6, A3 => n5, ZN => sel(2));

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

entity MUX_5TO1_NBIT32_4 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_4;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_4 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, 
      n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61
      , n62, n63, n64, n65, n66, n67, n68, n69, n72, n73, n74, n75, n76, n77, 
      n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91 : 
      std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => sel(1), A2 => n1, ZN => n72);
   U2 : BUF_X1 port map( A => n5, Z => n81);
   U3 : NOR2_X1 port map( A1 => n1, A2 => sel(1), ZN => n73);
   U4 : BUF_X1 port map( A => n7, Z => n77);
   U5 : BUF_X1 port map( A => sel(2), Z => n91);
   U6 : BUF_X1 port map( A => n72, Z => n80);
   U7 : BUF_X1 port map( A => n73, Z => n87);
   U8 : BUF_X1 port map( A => n81, Z => n84);
   U9 : BUF_X1 port map( A => n72, Z => n78);
   U10 : BUF_X1 port map( A => n73, Z => n85);
   U11 : BUF_X1 port map( A => n81, Z => n82);
   U12 : BUF_X1 port map( A => n73, Z => n86);
   U13 : BUF_X1 port map( A => n72, Z => n79);
   U14 : BUF_X1 port map( A => n81, Z => n83);
   U15 : BUF_X1 port map( A => n77, Z => n75);
   U16 : BUF_X1 port map( A => n77, Z => n74);
   U17 : BUF_X1 port map( A => n77, Z => n76);
   U18 : INV_X1 port map( A => sel(0), ZN => n1);
   U19 : AND2_X1 port map( A1 => sel(1), A2 => sel(0), ZN => n5);
   U20 : BUF_X1 port map( A => n91, Z => n90);
   U21 : BUF_X1 port map( A => n91, Z => n89);
   U22 : BUF_X1 port map( A => n91, Z => n88);
   U23 : NOR3_X1 port map( A1 => sel(1), A2 => n90, A3 => sel(0), ZN => n7);
   U24 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => O(8));
   U25 : AOI22_X1 port map( A1 => A0(8), A2 => n76, B1 => A4(8), B2 => n88, ZN 
                           => n8);
   U26 : AOI222_X1 port map( A1 => A1(8), A2 => n87, B1 => A3(8), B2 => n84, C1
                           => A2(8), C2 => n80, ZN => n9);
   U27 : NAND2_X1 port map( A1 => n2, A2 => n3, ZN => O(9));
   U28 : AOI22_X1 port map( A1 => A0(9), A2 => n76, B1 => n90, B2 => A4(9), ZN 
                           => n2);
   U29 : AOI222_X1 port map( A1 => A1(9), A2 => n87, B1 => A3(9), B2 => n84, C1
                           => A2(9), C2 => n80, ZN => n3);
   U30 : NAND2_X1 port map( A1 => n66, A2 => n67, ZN => O(10));
   U31 : AOI22_X1 port map( A1 => A0(10), A2 => n74, B1 => A4(10), B2 => n90, 
                           ZN => n66);
   U32 : NAND2_X1 port map( A1 => n64, A2 => n65, ZN => O(11));
   U33 : NAND2_X1 port map( A1 => n62, A2 => n63, ZN => O(12));
   U34 : NAND2_X1 port map( A1 => n60, A2 => n61, ZN => O(13));
   U35 : NAND2_X1 port map( A1 => n58, A2 => n59, ZN => O(14));
   U36 : AOI222_X1 port map( A1 => A1(14), A2 => n85, B1 => A3(14), B2 => n82, 
                           C1 => A2(14), C2 => n78, ZN => n59);
   U37 : NAND2_X1 port map( A1 => n56, A2 => n57, ZN => O(15));
   U38 : AOI22_X1 port map( A1 => A0(15), A2 => n74, B1 => A4(15), B2 => n90, 
                           ZN => n56);
   U39 : AOI222_X1 port map( A1 => A1(15), A2 => n85, B1 => A3(15), B2 => n82, 
                           C1 => A2(15), C2 => n78, ZN => n57);
   U40 : NAND2_X1 port map( A1 => n54, A2 => n55, ZN => O(16));
   U41 : AOI22_X1 port map( A1 => A0(16), A2 => n74, B1 => A4(16), B2 => n89, 
                           ZN => n54);
   U42 : AOI222_X1 port map( A1 => A1(16), A2 => n85, B1 => A3(16), B2 => n82, 
                           C1 => A2(16), C2 => n78, ZN => n55);
   U43 : NAND2_X1 port map( A1 => n52, A2 => n53, ZN => O(17));
   U44 : AOI22_X1 port map( A1 => A0(17), A2 => n74, B1 => A4(17), B2 => n89, 
                           ZN => n52);
   U45 : AOI222_X1 port map( A1 => A1(17), A2 => n85, B1 => A3(17), B2 => n82, 
                           C1 => A2(17), C2 => n78, ZN => n53);
   U46 : NAND2_X1 port map( A1 => n50, A2 => n51, ZN => O(18));
   U47 : AOI22_X1 port map( A1 => A0(18), A2 => n74, B1 => A4(18), B2 => n89, 
                           ZN => n50);
   U48 : AOI222_X1 port map( A1 => A1(18), A2 => n85, B1 => A3(18), B2 => n82, 
                           C1 => A2(18), C2 => n78, ZN => n51);
   U49 : NAND2_X1 port map( A1 => n48, A2 => n49, ZN => O(19));
   U50 : AOI22_X1 port map( A1 => A0(19), A2 => n74, B1 => A4(19), B2 => n89, 
                           ZN => n48);
   U51 : AOI222_X1 port map( A1 => A1(19), A2 => n85, B1 => A3(19), B2 => n82, 
                           C1 => A2(19), C2 => n78, ZN => n49);
   U52 : NAND2_X1 port map( A1 => n44, A2 => n45, ZN => O(20));
   U53 : AOI22_X1 port map( A1 => A0(20), A2 => n75, B1 => A4(20), B2 => n89, 
                           ZN => n44);
   U54 : AOI222_X1 port map( A1 => A1(20), A2 => n86, B1 => A3(20), B2 => n83, 
                           C1 => A2(20), C2 => n79, ZN => n45);
   U55 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => O(25));
   U56 : AOI22_X1 port map( A1 => A0(25), A2 => n75, B1 => A4(25), B2 => n89, 
                           ZN => n34);
   U57 : AOI222_X1 port map( A1 => A1(25), A2 => n86, B1 => A3(25), B2 => n83, 
                           C1 => A2(25), C2 => n79, ZN => n35);
   U58 : NAND2_X1 port map( A1 => n42, A2 => n43, ZN => O(21));
   U59 : AOI22_X1 port map( A1 => A0(21), A2 => n75, B1 => A4(21), B2 => n89, 
                           ZN => n42);
   U60 : AOI222_X1 port map( A1 => A1(21), A2 => n86, B1 => A3(21), B2 => n83, 
                           C1 => A2(21), C2 => n79, ZN => n43);
   U61 : NAND2_X1 port map( A1 => n40, A2 => n41, ZN => O(22));
   U62 : AOI22_X1 port map( A1 => A0(22), A2 => n75, B1 => A4(22), B2 => n89, 
                           ZN => n40);
   U63 : AOI222_X1 port map( A1 => A1(22), A2 => n86, B1 => A3(22), B2 => n83, 
                           C1 => A2(22), C2 => n79, ZN => n41);
   U64 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => O(26));
   U65 : AOI22_X1 port map( A1 => A0(26), A2 => n75, B1 => A4(26), B2 => n88, 
                           ZN => n32);
   U66 : AOI222_X1 port map( A1 => A1(26), A2 => n86, B1 => A3(26), B2 => n83, 
                           C1 => A2(26), C2 => n79, ZN => n33);
   U67 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => O(23));
   U68 : AOI22_X1 port map( A1 => A0(23), A2 => n75, B1 => A4(23), B2 => n89, 
                           ZN => n38);
   U69 : AOI222_X1 port map( A1 => A1(23), A2 => n86, B1 => A3(23), B2 => n83, 
                           C1 => A2(23), C2 => n79, ZN => n39);
   U70 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => O(24));
   U71 : AOI22_X1 port map( A1 => A0(24), A2 => n75, B1 => A4(24), B2 => n89, 
                           ZN => n36);
   U72 : AOI222_X1 port map( A1 => A1(24), A2 => n86, B1 => A3(24), B2 => n83, 
                           C1 => A2(24), C2 => n79, ZN => n37);
   U73 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => O(27));
   U74 : AOI222_X1 port map( A1 => A1(27), A2 => n86, B1 => A3(27), B2 => n83, 
                           C1 => A2(27), C2 => n79, ZN => n31);
   U75 : AOI22_X1 port map( A1 => A0(27), A2 => n75, B1 => A4(27), B2 => n88, 
                           ZN => n30);
   U76 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => O(28));
   U77 : AOI22_X1 port map( A1 => A0(28), A2 => n75, B1 => A4(28), B2 => n88, 
                           ZN => n28);
   U78 : AOI222_X1 port map( A1 => A1(28), A2 => n86, B1 => A3(28), B2 => n83, 
                           C1 => A2(28), C2 => n79, ZN => n29);
   U79 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => O(29));
   U80 : AOI22_X1 port map( A1 => A0(29), A2 => n75, B1 => A4(29), B2 => n88, 
                           ZN => n26);
   U81 : AOI222_X1 port map( A1 => A1(29), A2 => n86, B1 => A3(29), B2 => n83, 
                           C1 => A2(29), C2 => n79, ZN => n27);
   U82 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => O(31));
   U83 : AOI22_X1 port map( A1 => A0(31), A2 => n76, B1 => A4(31), B2 => n88, 
                           ZN => n20);
   U84 : AOI222_X1 port map( A1 => A1(31), A2 => n87, B1 => A3(31), B2 => n84, 
                           C1 => A2(31), C2 => n80, ZN => n21);
   U85 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => O(30));
   U86 : AOI22_X1 port map( A1 => A0(30), A2 => n75, B1 => A4(30), B2 => n89, 
                           ZN => n22);
   U87 : AOI222_X1 port map( A1 => A1(30), A2 => n86, B1 => A3(30), B2 => n83, 
                           C1 => A2(30), C2 => n79, ZN => n23);
   U88 : NAND2_X1 port map( A1 => n68, A2 => n69, ZN => O(0));
   U89 : AOI22_X1 port map( A1 => A0(0), A2 => n74, B1 => A4(0), B2 => n90, ZN 
                           => n68);
   U90 : AOI222_X1 port map( A1 => A1(0), A2 => n85, B1 => A3(0), B2 => n82, C1
                           => A2(0), C2 => n78, ZN => n69);
   U91 : NAND2_X1 port map( A1 => n46, A2 => n47, ZN => O(1));
   U92 : AOI22_X1 port map( A1 => A0(1), A2 => n74, B1 => A4(1), B2 => n89, ZN 
                           => n46);
   U93 : AOI222_X1 port map( A1 => A1(1), A2 => n85, B1 => A3(1), B2 => n82, C1
                           => A2(1), C2 => n78, ZN => n47);
   U94 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => O(2));
   U95 : AOI22_X1 port map( A1 => A0(2), A2 => n75, B1 => A4(2), B2 => n88, ZN 
                           => n24);
   U96 : AOI222_X1 port map( A1 => A1(2), A2 => n86, B1 => A3(2), B2 => n83, C1
                           => A2(2), C2 => n79, ZN => n25);
   U97 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => O(3));
   U98 : AOI22_X1 port map( A1 => A0(3), A2 => n76, B1 => A4(3), B2 => n88, ZN 
                           => n18);
   U99 : AOI222_X1 port map( A1 => A1(3), A2 => n87, B1 => A3(3), B2 => n84, C1
                           => A2(3), C2 => n80, ZN => n19);
   U100 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => O(4));
   U101 : AOI22_X1 port map( A1 => A0(4), A2 => n76, B1 => A4(4), B2 => n88, ZN
                           => n16);
   U102 : AOI222_X1 port map( A1 => A1(4), A2 => n87, B1 => A3(4), B2 => n84, 
                           C1 => A2(4), C2 => n80, ZN => n17);
   U103 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => O(5));
   U104 : AOI22_X1 port map( A1 => A0(5), A2 => n76, B1 => A4(5), B2 => n88, ZN
                           => n14);
   U105 : AOI222_X1 port map( A1 => A1(5), A2 => n87, B1 => A3(5), B2 => n84, 
                           C1 => A2(5), C2 => n80, ZN => n15);
   U106 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => O(6));
   U107 : AOI22_X1 port map( A1 => A0(6), A2 => n76, B1 => A4(6), B2 => n88, ZN
                           => n12);
   U108 : AOI222_X1 port map( A1 => A1(6), A2 => n87, B1 => A3(6), B2 => n84, 
                           C1 => A2(6), C2 => n80, ZN => n13);
   U109 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => O(7));
   U110 : AOI22_X1 port map( A1 => A0(7), A2 => n76, B1 => A4(7), B2 => n88, ZN
                           => n10);
   U111 : AOI222_X1 port map( A1 => A1(7), A2 => n87, B1 => A3(7), B2 => n84, 
                           C1 => A2(7), C2 => n80, ZN => n11);
   U112 : AOI22_X1 port map( A1 => A0(14), A2 => n74, B1 => A4(14), B2 => n90, 
                           ZN => n58);
   U113 : AOI222_X1 port map( A1 => A1(13), A2 => n85, B1 => A3(13), B2 => n82,
                           C1 => A2(13), C2 => n78, ZN => n61);
   U114 : AOI22_X1 port map( A1 => A0(11), A2 => n74, B1 => A4(11), B2 => n90, 
                           ZN => n64);
   U115 : AOI222_X1 port map( A1 => A1(10), A2 => n85, B1 => A3(10), B2 => n82,
                           C1 => A2(10), C2 => n78, ZN => n67);
   U116 : AOI22_X1 port map( A1 => A0(12), A2 => n74, B1 => A4(12), B2 => n90, 
                           ZN => n62);
   U117 : AOI222_X1 port map( A1 => A1(11), A2 => n85, B1 => A3(11), B2 => n82,
                           C1 => A2(11), C2 => n78, ZN => n65);
   U118 : AOI22_X1 port map( A1 => A0(13), A2 => n74, B1 => A4(13), B2 => n90, 
                           ZN => n60);
   U119 : AOI222_X1 port map( A1 => A1(12), A2 => n85, B1 => A3(12), B2 => n82,
                           C1 => A2(12), C2 => n78, ZN => n63);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_NBIT32_0 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_NBIT32_0;

architecture SYN_STRUCTURAL of RCA_NBIT32_0 is

   component FA_193
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_194
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_195
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_196
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_197
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_198
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_199
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_200
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_201
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_202
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_203
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_204
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_205
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_206
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_207
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_208
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_209
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_210
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_211
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_212
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_213
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_214
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_215
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_216
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_217
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_218
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_219
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_220
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_221
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_222
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_223
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_223 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_222 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_221 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => CTMP_4_port);
   FAI_5 : FA_220 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4),
                           Co => CTMP_5_port);
   FAI_6 : FA_219 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5),
                           Co => CTMP_6_port);
   FAI_7 : FA_218 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6),
                           Co => CTMP_7_port);
   FAI_8 : FA_217 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7),
                           Co => CTMP_8_port);
   FAI_9 : FA_216 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8),
                           Co => CTMP_9_port);
   FAI_10 : FA_215 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9)
                           , Co => CTMP_10_port);
   FAI_11 : FA_214 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_213 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_212 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_211 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_210 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_209 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_208 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_207 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_206 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_205 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_204 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_203 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_202 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_201 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_200 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_199 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_198 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_197 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_196 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_195 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_194 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_193 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX_5TO1_NBIT32_0 is

   port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end MUX_5TO1_NBIT32_0;

architecture SYN_BEHAVIORAL of MUX_5TO1_NBIT32_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X4
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3, n8, n9, n10, n11, n12, n13, n14, n15, n18, n20, n21, n22, n23
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, net37183, net37233, net37726, net37723, net37722, net37789, net39199
      , net47352, net47373, net47487, net52329, net52323, net52322, net52317, 
      net52315, net53838, net53812, net53808, net52364, net52348, net52287, 
      net50741, net50740, net47426, net47376, net39231, n17, n16, net52339, 
      net52310, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84
      , n85, n86, n87 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n73, ZN => n72);
   U2 : INV_X1 port map( A => net47426, ZN => n73);
   U3 : BUF_X4 port map( A => net39199, Z => net37233);
   U4 : AND2_X1 port map( A1 => net53808, A2 => net47426, ZN => net47373);
   U5 : INV_X1 port map( A => A2(2), ZN => net52315);
   U6 : NOR2_X1 port map( A1 => net52287, A2 => net53838, ZN => net50740);
   U7 : INV_X1 port map( A => A3(2), ZN => net52317);
   U8 : INV_X1 port map( A => A3(4), ZN => net52287);
   U9 : INV_X1 port map( A => A3(3), ZN => n83);
   U10 : NAND2_X1 port map( A1 => A4(2), A2 => sel(2), ZN => n80);
   U11 : INV_X1 port map( A => net53838, ZN => net39199);
   U12 : AND2_X1 port map( A1 => A4(3), A2 => sel(2), ZN => n74);
   U13 : AND2_X2 port map( A1 => n77, A2 => n78, ZN => n75);
   U14 : AND2_X1 port map( A1 => A1(4), A2 => net47352, ZN => n76);
   U15 : NOR3_X1 port map( A1 => n76, A2 => net50741, A3 => net50740, ZN => n17
                           );
   U16 : AND2_X1 port map( A1 => net52310, A2 => net52339, ZN => net47352);
   U17 : BUF_X1 port map( A => sel(0), Z => net52339);
   U18 : NOR3_X1 port map( A1 => net52315, A2 => net52339, A3 => net52310, ZN 
                           => net52322);
   U19 : AND2_X1 port map( A1 => net52310, A2 => net52339, ZN => net52329);
   U20 : INV_X1 port map( A => sel(1), ZN => net52310);
   U21 : NAND2_X1 port map( A1 => net47376, A2 => n73, ZN => net53838);
   U22 : INV_X1 port map( A => sel(0), ZN => net47426);
   U23 : INV_X1 port map( A => sel(1), ZN => net52348);
   U24 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => O(4));
   U25 : AND2_X1 port map( A1 => A2(4), A2 => net39231, ZN => net50741);
   U26 : AOI22_X1 port map( A1 => A0(4), A2 => n75, B1 => A4(4), B2 => sel(2), 
                           ZN => n16);
   U27 : INV_X4 port map( A => n78, ZN => net37183);
   U28 : INV_X1 port map( A => sel(2), ZN => n78);
   U29 : NOR2_X1 port map( A1 => net52364, A2 => net53808, ZN => n77);
   U30 : BUF_X1 port map( A => net47376, Z => net53808);
   U31 : INV_X1 port map( A => net52348, ZN => net47376);
   U32 : AND2_X1 port map( A1 => net47376, A2 => net47426, ZN => net39231);
   U33 : NOR3_X1 port map( A1 => net47426, A2 => net52317, A3 => net52348, ZN 
                           => net52323);
   U34 : INV_X1 port map( A => net53812, ZN => net52364);
   U35 : CLKBUF_X1 port map( A => n72, Z => net53812);
   U36 : INV_X1 port map( A => net39231, ZN => net37723);
   U37 : NAND4_X1 port map( A1 => n79, A2 => n80, A3 => n81, A4 => n82, ZN => 
                           O(2));
   U38 : NAND2_X1 port map( A1 => net52329, A2 => A1(2), ZN => n82);
   U39 : NOR2_X1 port map( A1 => net52322, A2 => net52323, ZN => n81);
   U40 : NAND2_X1 port map( A1 => n75, A2 => A0(2), ZN => n79);
   U41 : AOI21_X1 port map( B1 => A2(3), B2 => net47373, A => n84, ZN => n85);
   U42 : NAND2_X1 port map( A1 => A1(3), A2 => net47352, ZN => n86);
   U43 : CLKBUF_X1 port map( A => net47352, Z => net37789);
   U44 : NOR2_X1 port map( A1 => net53838, A2 => n83, ZN => n84);
   U45 : CLKBUF_X1 port map( A => net47373, Z => net47487);
   U46 : NAND3_X1 port map( A1 => n85, A2 => n86, A3 => n18, ZN => O(3));
   U47 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => O(7));
   U48 : AOI22_X1 port map( A1 => A0(7), A2 => n75, B1 => A4(7), B2 => net37183
                           , ZN => n10);
   U49 : AOI222_X1 port map( A1 => A1(7), A2 => net47352, B1 => A3(7), B2 => 
                           net39199, C1 => A2(7), C2 => net37726, ZN => n11);
   U50 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => O(8));
   U51 : AOI22_X1 port map( A1 => A0(8), A2 => n75, B1 => A4(8), B2 => net37183
                           , ZN => n8);
   U52 : AOI222_X1 port map( A1 => A1(8), A2 => net47352, B1 => A3(8), B2 => 
                           net37233, C1 => A2(8), C2 => net37726, ZN => n9);
   U53 : NAND2_X1 port map( A1 => n2, A2 => n3, ZN => O(9));
   U54 : AOI22_X1 port map( A1 => A0(9), A2 => n75, B1 => net37183, B2 => A4(9)
                           , ZN => n2);
   U55 : AOI222_X1 port map( A1 => A1(9), A2 => net47352, B1 => A3(9), B2 => 
                           net37233, C1 => A2(9), C2 => net37726, ZN => n3);
   U56 : NAND2_X1 port map( A1 => n66, A2 => n67, ZN => O(10));
   U57 : AOI22_X1 port map( A1 => A0(10), A2 => n75, B1 => A4(10), B2 => 
                           net37183, ZN => n66);
   U58 : AOI222_X1 port map( A1 => A1(10), A2 => net47352, B1 => A3(10), B2 => 
                           net37233, C1 => A2(10), C2 => net37726, ZN => n67);
   U59 : NAND2_X1 port map( A1 => n64, A2 => n65, ZN => O(11));
   U60 : AOI22_X1 port map( A1 => A0(11), A2 => n75, B1 => A4(11), B2 => 
                           net37183, ZN => n64);
   U61 : AOI222_X1 port map( A1 => A1(11), A2 => net47352, B1 => A3(11), B2 => 
                           net37233, C1 => A2(11), C2 => net37726, ZN => n65);
   U62 : NAND2_X1 port map( A1 => n62, A2 => n63, ZN => O(12));
   U63 : AOI22_X1 port map( A1 => A0(12), A2 => n75, B1 => A4(12), B2 => 
                           net37183, ZN => n62);
   U64 : AOI222_X1 port map( A1 => A1(12), A2 => net47352, B1 => A3(12), B2 => 
                           net37233, C1 => A2(12), C2 => net37726, ZN => n63);
   U65 : NAND2_X1 port map( A1 => n60, A2 => n61, ZN => O(13));
   U66 : AOI22_X1 port map( A1 => A0(13), A2 => n75, B1 => A4(13), B2 => 
                           net37183, ZN => n60);
   U67 : AOI222_X1 port map( A1 => A1(13), A2 => net37789, B1 => A3(13), B2 => 
                           net37233, C1 => A2(13), C2 => net37726, ZN => n61);
   U68 : AOI22_X1 port map( A1 => A0(16), A2 => n75, B1 => A4(16), B2 => 
                           net37183, ZN => n54);
   U69 : AOI222_X1 port map( A1 => A1(16), A2 => net37789, B1 => A3(16), B2 => 
                           net37233, C1 => A2(16), C2 => net37726, ZN => n55);
   U70 : NAND2_X1 port map( A1 => n52, A2 => n53, ZN => O(17));
   U71 : AOI22_X1 port map( A1 => A0(17), A2 => n75, B1 => A4(17), B2 => 
                           net37183, ZN => n52);
   U72 : AOI222_X1 port map( A1 => A1(17), A2 => net37789, B1 => A3(17), B2 => 
                           net37233, C1 => A2(17), C2 => net37722, ZN => n53);
   U73 : NAND2_X1 port map( A1 => n58, A2 => n59, ZN => O(14));
   U74 : AOI22_X1 port map( A1 => A0(14), A2 => n75, B1 => A4(14), B2 => 
                           net37183, ZN => n58);
   U75 : AOI222_X1 port map( A1 => A1(14), A2 => net37789, B1 => A3(14), B2 => 
                           net37233, C1 => A2(14), C2 => net37722, ZN => n59);
   U76 : NAND2_X1 port map( A1 => n56, A2 => n57, ZN => O(15));
   U77 : AOI22_X1 port map( A1 => A0(15), A2 => n75, B1 => A4(15), B2 => 
                           net37183, ZN => n56);
   U78 : AOI222_X1 port map( A1 => A1(15), A2 => net37789, B1 => A3(15), B2 => 
                           net37233, C1 => A2(15), C2 => net37722, ZN => n57);
   U79 : NAND2_X1 port map( A1 => n50, A2 => n51, ZN => O(18));
   U80 : AOI22_X1 port map( A1 => A0(18), A2 => n75, B1 => A4(18), B2 => 
                           net37183, ZN => n50);
   U81 : AOI222_X1 port map( A1 => A1(18), A2 => net37789, B1 => A3(18), B2 => 
                           net37233, C1 => A2(18), C2 => net37722, ZN => n51);
   U82 : NAND2_X1 port map( A1 => n48, A2 => n49, ZN => O(19));
   U83 : AOI22_X1 port map( A1 => A0(19), A2 => n75, B1 => A4(19), B2 => 
                           net37183, ZN => n48);
   U84 : AOI222_X1 port map( A1 => A1(19), A2 => net37789, B1 => A3(19), B2 => 
                           net37233, C1 => A2(19), C2 => net37722, ZN => n49);
   U85 : NAND2_X1 port map( A1 => n44, A2 => n45, ZN => O(20));
   U86 : AOI22_X1 port map( A1 => A0(20), A2 => n75, B1 => A4(20), B2 => 
                           net37183, ZN => n44);
   U87 : AOI222_X1 port map( A1 => A1(20), A2 => net37789, B1 => A3(20), B2 => 
                           net37233, C1 => A2(20), C2 => net37722, ZN => n45);
   U88 : NAND2_X1 port map( A1 => n42, A2 => n43, ZN => O(21));
   U89 : AOI22_X1 port map( A1 => A0(21), A2 => n75, B1 => A4(21), B2 => 
                           net37183, ZN => n42);
   U90 : AOI222_X1 port map( A1 => A1(21), A2 => net37789, B1 => A3(21), B2 => 
                           net37233, C1 => A2(21), C2 => net37722, ZN => n43);
   U91 : NAND2_X1 port map( A1 => n40, A2 => n41, ZN => O(22));
   U92 : AOI222_X1 port map( A1 => A1(22), A2 => net37789, B1 => A3(22), B2 => 
                           net37233, C1 => A2(22), C2 => net37722, ZN => n41);
   U93 : AOI22_X1 port map( A1 => A0(22), A2 => n75, B1 => A4(22), B2 => 
                           net37183, ZN => n40);
   U94 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => O(23));
   U95 : AOI22_X1 port map( A1 => A0(23), A2 => n75, B1 => A4(23), B2 => 
                           net37183, ZN => n38);
   U96 : AOI222_X1 port map( A1 => A1(23), A2 => net37789, B1 => A3(23), B2 => 
                           net37233, C1 => A2(23), C2 => net37722, ZN => n39);
   U97 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => O(24));
   U98 : AOI22_X1 port map( A1 => A0(24), A2 => n75, B1 => A4(24), B2 => 
                           net37183, ZN => n36);
   U99 : AOI222_X1 port map( A1 => A1(24), A2 => net37789, B1 => A3(24), B2 => 
                           net37233, C1 => A2(24), C2 => net37722, ZN => n37);
   U100 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => O(25));
   U101 : AOI22_X1 port map( A1 => A0(25), A2 => n75, B1 => A4(25), B2 => 
                           net37183, ZN => n34);
   U102 : AOI222_X1 port map( A1 => A1(25), A2 => net37789, B1 => A3(25), B2 =>
                           net37233, C1 => A2(25), C2 => net37722, ZN => n35);
   U103 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => O(26));
   U104 : AOI22_X1 port map( A1 => A0(26), A2 => n75, B1 => A4(26), B2 => 
                           net37183, ZN => n32);
   U105 : AOI222_X1 port map( A1 => A1(26), A2 => net37789, B1 => A3(26), B2 =>
                           net37233, C1 => A2(26), C2 => net37722, ZN => n33);
   U106 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => O(27));
   U107 : AOI22_X1 port map( A1 => A0(27), A2 => n75, B1 => A4(27), B2 => 
                           net37183, ZN => n30);
   U108 : AOI222_X1 port map( A1 => A1(27), A2 => net37789, B1 => A3(27), B2 =>
                           net37233, C1 => A2(27), C2 => net37722, ZN => n31);
   U109 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => O(28));
   U110 : AOI22_X1 port map( A1 => A0(28), A2 => n75, B1 => A4(28), B2 => 
                           net37183, ZN => n28);
   U111 : AOI222_X1 port map( A1 => A1(28), A2 => net37789, B1 => A3(28), B2 =>
                           net37233, C1 => A2(28), C2 => net37722, ZN => n29);
   U112 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => O(29));
   U113 : AOI22_X1 port map( A1 => A0(29), A2 => n75, B1 => A4(29), B2 => 
                           net37183, ZN => n26);
   U114 : AOI222_X1 port map( A1 => A1(29), A2 => net37789, B1 => A3(29), B2 =>
                           net37233, C1 => A2(29), C2 => net37722, ZN => n27);
   U115 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => O(31));
   U116 : AOI22_X1 port map( A1 => A0(31), A2 => n75, B1 => A4(31), B2 => 
                           net37183, ZN => n20);
   U117 : AOI222_X1 port map( A1 => A1(31), A2 => net37789, B1 => A3(31), B2 =>
                           net37233, C1 => A2(31), C2 => net37722, ZN => n21);
   U118 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => O(30));
   U119 : AOI222_X1 port map( A1 => A1(30), A2 => net37789, B1 => A3(30), B2 =>
                           net37233, C1 => A2(30), C2 => net37722, ZN => n23);
   U120 : AOI22_X1 port map( A1 => A0(30), A2 => n75, B1 => A4(30), B2 => 
                           net37183, ZN => n22);
   U121 : NAND2_X1 port map( A1 => n46, A2 => n47, ZN => O(1));
   U122 : AOI22_X1 port map( A1 => A0(1), A2 => n75, B1 => A4(1), B2 => 
                           net37183, ZN => n46);
   U123 : AOI222_X1 port map( A1 => A1(1), A2 => net37789, B1 => A3(1), B2 => 
                           net37233, C1 => A2(1), C2 => net37722, ZN => n47);
   U124 : NAND2_X1 port map( A1 => n68, A2 => n69, ZN => O(0));
   U125 : AOI22_X1 port map( A1 => A0(0), A2 => n75, B1 => A4(0), B2 => 
                           net37183, ZN => n68);
   U126 : AOI222_X1 port map( A1 => A1(0), A2 => net37789, B1 => A3(0), B2 => 
                           net37233, C1 => A2(0), C2 => net37722, ZN => n69);
   U127 : CLKBUF_X1 port map( A => net37726, Z => net37722);
   U128 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => O(6));
   U129 : AOI222_X1 port map( A1 => A1(6), A2 => net47352, B1 => A3(6), B2 => 
                           net39199, C1 => A2(6), C2 => net47487, ZN => n13);
   U130 : INV_X1 port map( A => net37723, ZN => net37726);
   U131 : AOI22_X1 port map( A1 => A0(6), A2 => n75, B1 => A4(6), B2 => 
                           net37183, ZN => n12);
   U132 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => O(5));
   U133 : AOI222_X1 port map( A1 => A1(5), A2 => net47352, B1 => A3(5), B2 => 
                           net39199, C1 => A2(5), C2 => net47373, ZN => n15);
   U134 : AOI22_X1 port map( A1 => A0(5), A2 => n75, B1 => A4(5), B2 => sel(2),
                           ZN => n14);
   U135 : AND2_X1 port map( A1 => A0(3), A2 => n75, ZN => n87);
   U136 : NOR2_X1 port map( A1 => n87, A2 => n74, ZN => n18);
   U137 : NAND2_X1 port map( A1 => n54, A2 => n55, ZN => O(16));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BE_BLOCK_0 is

   port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector (2 
         downto 0));

end BE_BLOCK_0;

architecture SYN_BEHAVIORAL of BE_BLOCK_0 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net47151, n3, n2, n1, n4 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => b(1), A2 => b(0), ZN => n2);
   U4 : OAI22_X1 port map( A1 => n3, A2 => n1, B1 => b(2), B2 => n2, ZN => 
                           sel(1));
   U5 : INV_X1 port map( A => b(2), ZN => n1);
   U6 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n2, ZN => n3);
   U7 : AND3_X1 port map( A1 => b(2), A2 => n2, A3 => net47151, ZN => sel(2));
   U8 : AOI21_X1 port map( B1 => n4, B2 => n2, A => b(2), ZN => sel(0));
   U9 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n2, ZN => net47151);
   U10 : OAI21_X1 port map( B1 => b(1), B2 => b(0), A => n2, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL is

   port( A, B : in std_logic_vector (15 downto 0);  P : out std_logic_vector 
         (31 downto 0));

end BOOTHMUL;

architecture SYN_MIXED of BOOTHMUL is

   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X4
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX_5TO1_NBIT32_1
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_1
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_1
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_2
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_2
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_2
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_3
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_3
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_3
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_4
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_4
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_4
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_5
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_5
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_5
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_6
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_6
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_6
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_7
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component RCA_NBIT32_0
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component BE_BLOCK_7
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   component MUX_5TO1_NBIT32_0
      port( A0, A1, A2, A3, A4 : in std_logic_vector (31 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component BE_BLOCK_0
      port( b : in std_logic_vector (2 downto 0);  sel : out std_logic_vector 
            (2 downto 0));
   end component;
   
   signal X_Logic0_port, selVector_7_2_port, selVector_7_1_port, 
      selVector_7_0_port, selVector_6_2_port, selVector_6_1_port, 
      selVector_6_0_port, selVector_5_2_port, selVector_5_1_port, 
      selVector_5_0_port, selVector_4_2_port, selVector_4_1_port, 
      selVector_4_0_port, selVector_3_2_port, selVector_3_1_port, 
      selVector_3_0_port, selVector_2_2_port, selVector_2_1_port, 
      selVector_2_0_port, selVector_1_2_port, selVector_1_1_port, 
      selVector_1_0_port, selVector_0_2_port, selVector_0_1_port, 
      selVector_0_0_port, muxOutVector_7_31_port, muxOutVector_7_30_port, 
      muxOutVector_7_29_port, muxOutVector_7_28_port, muxOutVector_7_27_port, 
      muxOutVector_7_26_port, muxOutVector_7_25_port, muxOutVector_7_24_port, 
      muxOutVector_7_23_port, muxOutVector_7_22_port, muxOutVector_7_21_port, 
      muxOutVector_7_20_port, muxOutVector_7_19_port, muxOutVector_7_18_port, 
      muxOutVector_7_17_port, muxOutVector_7_16_port, muxOutVector_7_15_port, 
      muxOutVector_7_14_port, muxOutVector_7_13_port, muxOutVector_7_12_port, 
      muxOutVector_7_11_port, muxOutVector_7_10_port, muxOutVector_7_9_port, 
      muxOutVector_7_8_port, muxOutVector_7_7_port, muxOutVector_7_6_port, 
      muxOutVector_7_5_port, muxOutVector_7_4_port, muxOutVector_7_3_port, 
      muxOutVector_7_2_port, muxOutVector_7_1_port, muxOutVector_7_0_port, 
      muxOutVector_6_31_port, muxOutVector_6_30_port, muxOutVector_6_29_port, 
      muxOutVector_6_28_port, muxOutVector_6_27_port, muxOutVector_6_26_port, 
      muxOutVector_6_25_port, muxOutVector_6_24_port, muxOutVector_6_23_port, 
      muxOutVector_6_22_port, muxOutVector_6_21_port, muxOutVector_6_20_port, 
      muxOutVector_6_19_port, muxOutVector_6_18_port, muxOutVector_6_17_port, 
      muxOutVector_6_16_port, muxOutVector_6_15_port, muxOutVector_6_14_port, 
      muxOutVector_6_13_port, muxOutVector_6_12_port, muxOutVector_6_11_port, 
      muxOutVector_6_10_port, muxOutVector_6_9_port, muxOutVector_6_8_port, 
      muxOutVector_6_7_port, muxOutVector_6_6_port, muxOutVector_6_5_port, 
      muxOutVector_6_4_port, muxOutVector_6_3_port, muxOutVector_6_2_port, 
      muxOutVector_6_1_port, muxOutVector_6_0_port, muxOutVector_5_31_port, 
      muxOutVector_5_30_port, muxOutVector_5_29_port, muxOutVector_5_28_port, 
      muxOutVector_5_27_port, muxOutVector_5_26_port, muxOutVector_5_25_port, 
      muxOutVector_5_24_port, muxOutVector_5_23_port, muxOutVector_5_22_port, 
      muxOutVector_5_21_port, muxOutVector_5_20_port, muxOutVector_5_19_port, 
      muxOutVector_5_18_port, muxOutVector_5_17_port, muxOutVector_5_16_port, 
      muxOutVector_5_15_port, muxOutVector_5_14_port, muxOutVector_5_13_port, 
      muxOutVector_5_12_port, muxOutVector_5_11_port, muxOutVector_5_10_port, 
      muxOutVector_5_9_port, muxOutVector_5_8_port, muxOutVector_5_7_port, 
      muxOutVector_5_6_port, muxOutVector_5_5_port, muxOutVector_5_4_port, 
      muxOutVector_5_3_port, muxOutVector_5_2_port, muxOutVector_5_1_port, 
      muxOutVector_5_0_port, muxOutVector_4_31_port, muxOutVector_4_30_port, 
      muxOutVector_4_29_port, muxOutVector_4_28_port, muxOutVector_4_27_port, 
      muxOutVector_4_26_port, muxOutVector_4_25_port, muxOutVector_4_24_port, 
      muxOutVector_4_23_port, muxOutVector_4_22_port, muxOutVector_4_21_port, 
      muxOutVector_4_20_port, muxOutVector_4_19_port, muxOutVector_4_18_port, 
      muxOutVector_4_17_port, muxOutVector_4_16_port, muxOutVector_4_15_port, 
      muxOutVector_4_14_port, muxOutVector_4_13_port, muxOutVector_4_12_port, 
      muxOutVector_4_11_port, muxOutVector_4_10_port, muxOutVector_4_9_port, 
      muxOutVector_4_8_port, muxOutVector_4_7_port, muxOutVector_4_6_port, 
      muxOutVector_4_5_port, muxOutVector_4_4_port, muxOutVector_4_3_port, 
      muxOutVector_4_2_port, muxOutVector_4_1_port, muxOutVector_4_0_port, 
      muxOutVector_3_31_port, muxOutVector_3_30_port, muxOutVector_3_29_port, 
      muxOutVector_3_28_port, muxOutVector_3_27_port, muxOutVector_3_26_port, 
      muxOutVector_3_25_port, muxOutVector_3_24_port, muxOutVector_3_23_port, 
      muxOutVector_3_22_port, muxOutVector_3_21_port, muxOutVector_3_20_port, 
      muxOutVector_3_19_port, muxOutVector_3_18_port, muxOutVector_3_17_port, 
      muxOutVector_3_16_port, muxOutVector_3_15_port, muxOutVector_3_14_port, 
      muxOutVector_3_13_port, muxOutVector_3_12_port, muxOutVector_3_11_port, 
      muxOutVector_3_10_port, muxOutVector_3_9_port, muxOutVector_3_8_port, 
      muxOutVector_3_7_port, muxOutVector_3_6_port, muxOutVector_3_5_port, 
      muxOutVector_3_4_port, muxOutVector_3_3_port, muxOutVector_3_2_port, 
      muxOutVector_3_1_port, muxOutVector_3_0_port, muxOutVector_2_31_port, 
      muxOutVector_2_30_port, muxOutVector_2_29_port, muxOutVector_2_28_port, 
      muxOutVector_2_27_port, muxOutVector_2_26_port, muxOutVector_2_25_port, 
      muxOutVector_2_24_port, muxOutVector_2_23_port, muxOutVector_2_22_port, 
      muxOutVector_2_21_port, muxOutVector_2_20_port, muxOutVector_2_19_port, 
      muxOutVector_2_18_port, muxOutVector_2_17_port, muxOutVector_2_16_port, 
      muxOutVector_2_15_port, muxOutVector_2_14_port, muxOutVector_2_13_port, 
      muxOutVector_2_12_port, muxOutVector_2_11_port, muxOutVector_2_10_port, 
      muxOutVector_2_9_port, muxOutVector_2_8_port, muxOutVector_2_7_port, 
      muxOutVector_2_6_port, muxOutVector_2_5_port, muxOutVector_2_4_port, 
      muxOutVector_2_3_port, muxOutVector_2_2_port, muxOutVector_2_1_port, 
      muxOutVector_2_0_port, muxOutVector_1_31_port, muxOutVector_1_30_port, 
      muxOutVector_1_29_port, muxOutVector_1_28_port, muxOutVector_1_27_port, 
      muxOutVector_1_26_port, muxOutVector_1_25_port, muxOutVector_1_24_port, 
      muxOutVector_1_23_port, muxOutVector_1_22_port, muxOutVector_1_21_port, 
      muxOutVector_1_20_port, muxOutVector_1_19_port, muxOutVector_1_18_port, 
      muxOutVector_1_17_port, muxOutVector_1_16_port, muxOutVector_1_15_port, 
      muxOutVector_1_14_port, muxOutVector_1_13_port, muxOutVector_1_12_port, 
      muxOutVector_1_11_port, muxOutVector_1_10_port, muxOutVector_1_9_port, 
      muxOutVector_1_8_port, muxOutVector_1_7_port, muxOutVector_1_6_port, 
      muxOutVector_1_5_port, muxOutVector_1_4_port, muxOutVector_1_3_port, 
      muxOutVector_1_2_port, muxOutVector_1_1_port, muxOutVector_1_0_port, 
      muxOutVector_0_31_port, muxOutVector_0_30_port, muxOutVector_0_29_port, 
      muxOutVector_0_28_port, muxOutVector_0_27_port, muxOutVector_0_26_port, 
      muxOutVector_0_25_port, muxOutVector_0_24_port, muxOutVector_0_23_port, 
      muxOutVector_0_22_port, muxOutVector_0_21_port, muxOutVector_0_20_port, 
      muxOutVector_0_19_port, muxOutVector_0_18_port, muxOutVector_0_17_port, 
      muxOutVector_0_16_port, muxOutVector_0_15_port, muxOutVector_0_14_port, 
      muxOutVector_0_13_port, muxOutVector_0_12_port, muxOutVector_0_11_port, 
      muxOutVector_0_10_port, muxOutVector_0_9_port, muxOutVector_0_8_port, 
      muxOutVector_0_7_port, muxOutVector_0_6_port, muxOutVector_0_5_port, 
      muxOutVector_0_4_port, muxOutVector_0_3_port, muxOutVector_0_2_port, 
      muxOutVector_0_1_port, muxOutVector_0_0_port, sumVector_6_31_port, 
      sumVector_6_30_port, sumVector_6_29_port, sumVector_6_28_port, 
      sumVector_6_27_port, sumVector_6_26_port, sumVector_6_25_port, 
      sumVector_6_24_port, sumVector_6_23_port, sumVector_6_22_port, 
      sumVector_6_21_port, sumVector_6_20_port, sumVector_6_19_port, 
      sumVector_6_18_port, sumVector_6_17_port, sumVector_6_16_port, 
      sumVector_6_15_port, sumVector_6_14_port, sumVector_6_13_port, 
      sumVector_6_12_port, sumVector_6_11_port, sumVector_6_10_port, 
      sumVector_6_9_port, sumVector_6_8_port, sumVector_6_7_port, 
      sumVector_6_6_port, sumVector_6_5_port, sumVector_6_4_port, 
      sumVector_6_3_port, sumVector_6_2_port, sumVector_6_1_port, 
      sumVector_6_0_port, sumVector_5_31_port, sumVector_5_30_port, 
      sumVector_5_29_port, sumVector_5_28_port, sumVector_5_27_port, 
      sumVector_5_26_port, sumVector_5_25_port, sumVector_5_24_port, 
      sumVector_5_23_port, sumVector_5_22_port, sumVector_5_21_port, 
      sumVector_5_20_port, sumVector_5_19_port, sumVector_5_18_port, 
      sumVector_5_17_port, sumVector_5_16_port, sumVector_5_15_port, 
      sumVector_5_14_port, sumVector_5_13_port, sumVector_5_12_port, 
      sumVector_5_11_port, sumVector_5_10_port, sumVector_5_9_port, 
      sumVector_5_8_port, sumVector_5_7_port, sumVector_5_6_port, 
      sumVector_5_5_port, sumVector_5_4_port, sumVector_5_3_port, 
      sumVector_5_2_port, sumVector_5_1_port, sumVector_5_0_port, 
      sumVector_4_31_port, sumVector_4_30_port, sumVector_4_29_port, 
      sumVector_4_28_port, sumVector_4_27_port, sumVector_4_26_port, 
      sumVector_4_25_port, sumVector_4_24_port, sumVector_4_23_port, 
      sumVector_4_22_port, sumVector_4_21_port, sumVector_4_20_port, 
      sumVector_4_19_port, sumVector_4_18_port, sumVector_4_17_port, 
      sumVector_4_16_port, sumVector_4_15_port, sumVector_4_14_port, 
      sumVector_4_13_port, sumVector_4_12_port, sumVector_4_11_port, 
      sumVector_4_10_port, sumVector_4_9_port, sumVector_4_8_port, 
      sumVector_4_7_port, sumVector_4_6_port, sumVector_4_5_port, 
      sumVector_4_4_port, sumVector_4_3_port, sumVector_4_2_port, 
      sumVector_4_1_port, sumVector_4_0_port, sumVector_3_31_port, 
      sumVector_3_30_port, sumVector_3_29_port, sumVector_3_28_port, 
      sumVector_3_27_port, sumVector_3_26_port, sumVector_3_25_port, 
      sumVector_3_24_port, sumVector_3_23_port, sumVector_3_22_port, 
      sumVector_3_21_port, sumVector_3_20_port, sumVector_3_19_port, 
      sumVector_3_18_port, sumVector_3_17_port, sumVector_3_16_port, 
      sumVector_3_15_port, sumVector_3_14_port, sumVector_3_13_port, 
      sumVector_3_12_port, sumVector_3_11_port, sumVector_3_10_port, 
      sumVector_3_9_port, sumVector_3_8_port, sumVector_3_7_port, 
      sumVector_3_6_port, sumVector_3_5_port, sumVector_3_4_port, 
      sumVector_3_3_port, sumVector_3_2_port, sumVector_3_1_port, 
      sumVector_3_0_port, sumVector_2_31_port, sumVector_2_30_port, 
      sumVector_2_29_port, sumVector_2_28_port, sumVector_2_27_port, 
      sumVector_2_26_port, sumVector_2_25_port, sumVector_2_24_port, 
      sumVector_2_23_port, sumVector_2_22_port, sumVector_2_21_port, 
      sumVector_2_20_port, sumVector_2_19_port, sumVector_2_18_port, 
      sumVector_2_17_port, sumVector_2_16_port, sumVector_2_15_port, 
      sumVector_2_14_port, sumVector_2_13_port, sumVector_2_12_port, 
      sumVector_2_11_port, sumVector_2_10_port, sumVector_2_9_port, 
      sumVector_2_8_port, sumVector_2_7_port, sumVector_2_6_port, 
      sumVector_2_5_port, sumVector_2_4_port, sumVector_2_3_port, 
      sumVector_2_2_port, sumVector_2_1_port, sumVector_2_0_port, 
      sumVector_1_31_port, sumVector_1_30_port, sumVector_1_29_port, 
      sumVector_1_28_port, sumVector_1_27_port, sumVector_1_26_port, 
      sumVector_1_25_port, sumVector_1_24_port, sumVector_1_23_port, 
      sumVector_1_22_port, sumVector_1_21_port, sumVector_1_20_port, 
      sumVector_1_19_port, sumVector_1_18_port, sumVector_1_17_port, 
      sumVector_1_16_port, sumVector_1_15_port, sumVector_1_14_port, 
      sumVector_1_13_port, sumVector_1_12_port, sumVector_1_11_port, 
      sumVector_1_10_port, sumVector_1_9_port, sumVector_1_8_port, 
      sumVector_1_7_port, sumVector_1_6_port, sumVector_1_5_port, 
      sumVector_1_4_port, sumVector_1_3_port, sumVector_1_2_port, 
      sumVector_1_1_port, sumVector_1_0_port, r113_DIFF_1_port, 
      r113_DIFF_2_port, r113_DIFF_3_port, r113_DIFF_4_port, r113_DIFF_5_port, 
      r113_DIFF_6_port, r113_DIFF_7_port, r113_DIFF_8_port, r113_DIFF_9_port, 
      r113_DIFF_10_port, r113_DIFF_11_port, r113_DIFF_12_port, 
      r113_DIFF_13_port, r113_DIFF_14_port, r113_DIFF_15_port, n68, n70, n71, 
      n72, n73, n74, n76, n77, n78, n79, n80, n81, n83, n84, n85, n86, n87, n88
      , n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102
      , n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n_1000, n_1001, n_1002, n_1003,
      n_1004, n_1005, n_1006 : std_logic;

begin
   
   X_Logic0_port <= '0';
   eb_0 : BE_BLOCK_0 port map( b(2) => B(1), b(1) => B(0), b(0) => 
                           X_Logic0_port, sel(2) => selVector_0_2_port, sel(1) 
                           => selVector_0_1_port, sel(0) => selVector_0_0_port)
                           ;
   mux_0 : MUX_5TO1_NBIT32_0 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n134, A1(30) => n137, 
                           A1(29) => n137, A1(28) => n136, A1(27) => n137, 
                           A1(26) => n136, A1(25) => n137, A1(24) => n136, 
                           A1(23) => n136, A1(22) => n135, A1(21) => n136, 
                           A1(20) => n137, A1(19) => n136, A1(18) => n135, 
                           A1(17) => n135, A1(16) => n135, A1(15) => n135, 
                           A1(14) => A(14), A1(13) => A(13), A1(12) => A(12), 
                           A1(11) => A(11), A1(10) => A(10), A1(9) => A(9), 
                           A1(8) => A(8), A1(7) => A(7), A1(6) => A(6), A1(5) 
                           => A(5), A1(4) => A(4), A1(3) => A(3), A1(2) => A(2)
                           , A1(1) => n98, A1(0) => n129, A2(31) => n124, 
                           A2(30) => n111, A2(29) => n114, A2(28) => n123, 
                           A2(27) => n118, A2(26) => n121, A2(25) => n118, 
                           A2(24) => n124, A2(23) => n113, A2(22) => n111, 
                           A2(21) => n119, A2(20) => n124, A2(19) => n116, 
                           A2(18) => n115, A2(17) => n126, A2(16) => n112, 
                           A2(15) => r113_DIFF_15_port, A2(14) => 
                           r113_DIFF_14_port, A2(13) => r113_DIFF_13_port, 
                           A2(12) => r113_DIFF_12_port, A2(11) => 
                           r113_DIFF_11_port, A2(10) => r113_DIFF_10_port, 
                           A2(9) => r113_DIFF_9_port, A2(8) => r113_DIFF_8_port
                           , A2(7) => r113_DIFF_7_port, A2(6) => 
                           r113_DIFF_6_port, A2(5) => r113_DIFF_5_port, A2(4) 
                           => r113_DIFF_4_port, A2(3) => r113_DIFF_3_port, 
                           A2(2) => r113_DIFF_2_port, A2(1) => r113_DIFF_1_port
                           , A2(0) => n128, A3(31) => n138, A3(30) => n138, 
                           A3(29) => n139, A3(28) => n137, A3(27) => n139, 
                           A3(26) => n137, A3(25) => n138, A3(24) => n137, 
                           A3(23) => n138, A3(22) => n137, A3(21) => n138, 
                           A3(20) => n138, A3(19) => n138, A3(18) => n138, 
                           A3(17) => n138, A3(16) => n138, A3(15) => A(14), 
                           A3(14) => A(13), A3(13) => A(12), A3(12) => A(11), 
                           A3(11) => A(10), A3(10) => A(9), A3(9) => A(8), 
                           A3(8) => A(7), A3(7) => A(6), A3(6) => A(5), A3(5) 
                           => A(4), A3(4) => A(3), A3(3) => A(2), A3(2) => A(1)
                           , A3(1) => n128, A3(0) => X_Logic0_port, A4(31) => 
                           n127, A4(30) => n110, A4(29) => n122, A4(28) => n117
                           , A4(27) => n111, A4(26) => n117, A4(25) => n119, 
                           A4(24) => n125, A4(23) => n127, A4(22) => n123, 
                           A4(21) => n68, A4(20) => n110, A4(19) => n127, 
                           A4(18) => n121, A4(17) => n68, A4(16) => 
                           r113_DIFF_15_port, A4(15) => r113_DIFF_14_port, 
                           A4(14) => r113_DIFF_13_port, A4(13) => 
                           r113_DIFF_12_port, A4(12) => r113_DIFF_11_port, 
                           A4(11) => r113_DIFF_10_port, A4(10) => 
                           r113_DIFF_9_port, A4(9) => r113_DIFF_8_port, A4(8) 
                           => r113_DIFF_7_port, A4(7) => r113_DIFF_6_port, 
                           A4(6) => r113_DIFF_5_port, A4(5) => r113_DIFF_4_port
                           , A4(4) => r113_DIFF_3_port, A4(3) => 
                           r113_DIFF_2_port, A4(2) => r113_DIFF_1_port, A4(1) 
                           => n128, A4(0) => X_Logic0_port, sel(2) => 
                           selVector_0_2_port, sel(1) => selVector_0_1_port, 
                           sel(0) => selVector_0_0_port, O(31) => 
                           muxOutVector_0_31_port, O(30) => 
                           muxOutVector_0_30_port, O(29) => 
                           muxOutVector_0_29_port, O(28) => 
                           muxOutVector_0_28_port, O(27) => 
                           muxOutVector_0_27_port, O(26) => 
                           muxOutVector_0_26_port, O(25) => 
                           muxOutVector_0_25_port, O(24) => 
                           muxOutVector_0_24_port, O(23) => 
                           muxOutVector_0_23_port, O(22) => 
                           muxOutVector_0_22_port, O(21) => 
                           muxOutVector_0_21_port, O(20) => 
                           muxOutVector_0_20_port, O(19) => 
                           muxOutVector_0_19_port, O(18) => 
                           muxOutVector_0_18_port, O(17) => 
                           muxOutVector_0_17_port, O(16) => 
                           muxOutVector_0_16_port, O(15) => 
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
   eb_1 : BE_BLOCK_7 port map( b(2) => B(3), b(1) => B(2), b(0) => B(1), sel(2)
                           => selVector_1_2_port, sel(1) => selVector_1_1_port,
                           sel(0) => selVector_1_0_port);
   sum_1 : RCA_NBIT32_0 port map( A(31) => muxOutVector_0_31_port, A(30) => 
                           muxOutVector_0_30_port, A(29) => 
                           muxOutVector_0_29_port, A(28) => 
                           muxOutVector_0_28_port, A(27) => 
                           muxOutVector_0_27_port, A(26) => 
                           muxOutVector_0_26_port, A(25) => 
                           muxOutVector_0_25_port, A(24) => 
                           muxOutVector_0_24_port, A(23) => 
                           muxOutVector_0_23_port, A(22) => 
                           muxOutVector_0_22_port, A(21) => 
                           muxOutVector_0_21_port, A(20) => 
                           muxOutVector_0_20_port, A(19) => 
                           muxOutVector_0_19_port, A(18) => 
                           muxOutVector_0_18_port, A(17) => 
                           muxOutVector_0_17_port, A(16) => 
                           muxOutVector_0_16_port, A(15) => 
                           muxOutVector_0_15_port, A(14) => 
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
                           muxOutVector_0_0_port, B(31) => 
                           muxOutVector_1_31_port, B(30) => 
                           muxOutVector_1_30_port, B(29) => 
                           muxOutVector_1_29_port, B(28) => 
                           muxOutVector_1_28_port, B(27) => 
                           muxOutVector_1_27_port, B(26) => 
                           muxOutVector_1_26_port, B(25) => 
                           muxOutVector_1_25_port, B(24) => 
                           muxOutVector_1_24_port, B(23) => 
                           muxOutVector_1_23_port, B(22) => 
                           muxOutVector_1_22_port, B(21) => 
                           muxOutVector_1_21_port, B(20) => 
                           muxOutVector_1_20_port, B(19) => 
                           muxOutVector_1_19_port, B(18) => 
                           muxOutVector_1_18_port, B(17) => 
                           muxOutVector_1_17_port, B(16) => 
                           muxOutVector_1_16_port, B(15) => 
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
                           muxOutVector_1_0_port, Ci => X_Logic0_port, S(31) =>
                           sumVector_1_31_port, S(30) => sumVector_1_30_port, 
                           S(29) => sumVector_1_29_port, S(28) => 
                           sumVector_1_28_port, S(27) => sumVector_1_27_port, 
                           S(26) => sumVector_1_26_port, S(25) => 
                           sumVector_1_25_port, S(24) => sumVector_1_24_port, 
                           S(23) => sumVector_1_23_port, S(22) => 
                           sumVector_1_22_port, S(21) => sumVector_1_21_port, 
                           S(20) => sumVector_1_20_port, S(19) => 
                           sumVector_1_19_port, S(18) => sumVector_1_18_port, 
                           S(17) => sumVector_1_17_port, S(16) => 
                           sumVector_1_16_port, S(15) => sumVector_1_15_port, 
                           S(14) => sumVector_1_14_port, S(13) => 
                           sumVector_1_13_port, S(12) => sumVector_1_12_port, 
                           S(11) => sumVector_1_11_port, S(10) => 
                           sumVector_1_10_port, S(9) => sumVector_1_9_port, 
                           S(8) => sumVector_1_8_port, S(7) => 
                           sumVector_1_7_port, S(6) => sumVector_1_6_port, S(5)
                           => sumVector_1_5_port, S(4) => sumVector_1_4_port, 
                           S(3) => sumVector_1_3_port, S(2) => 
                           sumVector_1_2_port, S(1) => sumVector_1_1_port, S(0)
                           => sumVector_1_0_port, Co => n_1000);
   mux_1 : MUX_5TO1_NBIT32_7 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n135, A1(30) => n135, 
                           A1(29) => n136, A1(28) => n135, A1(27) => n136, 
                           A1(26) => n135, A1(25) => n136, A1(24) => n135, 
                           A1(23) => n135, A1(22) => n136, A1(21) => n137, 
                           A1(20) => n136, A1(19) => n137, A1(18) => n136, 
                           A1(17) => n137, A1(16) => A(14), A1(15) => A(13), 
                           A1(14) => A(12), A1(13) => A(11), A1(12) => A(10), 
                           A1(11) => A(9), A1(10) => A(8), A1(9) => A(7), A1(8)
                           => A(6), A1(7) => A(5), A1(6) => A(4), A1(5) => A(3)
                           , A1(4) => A(2), A1(3) => A(1), A1(2) => n104, A1(1)
                           => X_Logic0_port, A1(0) => X_Logic0_port, A2(31) => 
                           n122, A2(30) => n126, A2(29) => n68, A2(28) => n116,
                           A2(27) => n125, A2(26) => n118, A2(25) => n113, 
                           A2(24) => n110, A2(23) => n117, A2(22) => n124, 
                           A2(21) => n122, A2(20) => n126, A2(19) => n118, 
                           A2(18) => n114, A2(17) => r113_DIFF_15_port, A2(16) 
                           => r113_DIFF_14_port, A2(15) => r113_DIFF_13_port, 
                           A2(14) => r113_DIFF_12_port, A2(13) => 
                           r113_DIFF_11_port, A2(12) => r113_DIFF_10_port, 
                           A2(11) => r113_DIFF_9_port, A2(10) => 
                           r113_DIFF_8_port, A2(9) => r113_DIFF_7_port, A2(8) 
                           => r113_DIFF_6_port, A2(7) => r113_DIFF_5_port, 
                           A2(6) => r113_DIFF_4_port, A2(5) => r113_DIFF_3_port
                           , A2(4) => n105, A2(3) => r113_DIFF_1_port, A2(2) =>
                           n93, A2(1) => X_Logic0_port, A2(0) => X_Logic0_port,
                           A3(31) => n140, A3(30) => n140, A3(29) => n140, 
                           A3(28) => n140, A3(27) => n136, A3(26) => n139, 
                           A3(25) => n136, A3(24) => n139, A3(23) => n136, 
                           A3(22) => n136, A3(21) => n139, A3(20) => n136, 
                           A3(19) => n139, A3(18) => n139, A3(17) => A(14), 
                           A3(16) => A(13), A3(15) => A(12), A3(14) => A(11), 
                           A3(13) => A(10), A3(12) => A(9), A3(11) => A(8), 
                           A3(10) => A(7), A3(9) => A(6), A3(8) => A(5), A3(7) 
                           => A(4), A3(6) => A(3), A3(5) => A(2), A3(4) => A(1)
                           , A3(3) => n130, A3(2) => X_Logic0_port, A3(1) => 
                           X_Logic0_port, A3(0) => X_Logic0_port, A4(31) => 
                           n125, A4(30) => n110, A4(29) => n109, A4(28) => n120
                           , A4(27) => n109, A4(26) => n120, A4(25) => n112, 
                           A4(24) => n109, A4(23) => n120, A4(22) => n113, 
                           A4(21) => n123, A4(20) => n125, A4(19) => n120, 
                           A4(18) => r113_DIFF_15_port, A4(17) => 
                           r113_DIFF_14_port, A4(16) => r113_DIFF_13_port, 
                           A4(15) => r113_DIFF_12_port, A4(14) => 
                           r113_DIFF_11_port, A4(13) => r113_DIFF_10_port, 
                           A4(12) => r113_DIFF_9_port, A4(11) => 
                           r113_DIFF_8_port, A4(10) => r113_DIFF_7_port, A4(9) 
                           => n92, A4(8) => r113_DIFF_5_port, A4(7) => 
                           r113_DIFF_4_port, A4(6) => r113_DIFF_3_port, A4(5) 
                           => n105, A4(4) => r113_DIFF_1_port, A4(3) => n94, 
                           A4(2) => X_Logic0_port, A4(1) => X_Logic0_port, 
                           A4(0) => X_Logic0_port, sel(2) => selVector_1_2_port
                           , sel(1) => selVector_1_1_port, sel(0) => 
                           selVector_1_0_port, O(31) => muxOutVector_1_31_port,
                           O(30) => muxOutVector_1_30_port, O(29) => 
                           muxOutVector_1_29_port, O(28) => 
                           muxOutVector_1_28_port, O(27) => 
                           muxOutVector_1_27_port, O(26) => 
                           muxOutVector_1_26_port, O(25) => 
                           muxOutVector_1_25_port, O(24) => 
                           muxOutVector_1_24_port, O(23) => 
                           muxOutVector_1_23_port, O(22) => 
                           muxOutVector_1_22_port, O(21) => 
                           muxOutVector_1_21_port, O(20) => 
                           muxOutVector_1_20_port, O(19) => 
                           muxOutVector_1_19_port, O(18) => 
                           muxOutVector_1_18_port, O(17) => 
                           muxOutVector_1_17_port, O(16) => 
                           muxOutVector_1_16_port, O(15) => 
                           muxOutVector_1_15_port, O(14) => 
                           muxOutVector_1_14_port, O(13) => 
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
   eb_2 : BE_BLOCK_6 port map( b(2) => B(5), b(1) => B(4), b(0) => B(3), sel(2)
                           => selVector_2_2_port, sel(1) => selVector_2_1_port,
                           sel(0) => selVector_2_0_port);
   sum_2 : RCA_NBIT32_6 port map( A(31) => muxOutVector_2_31_port, A(30) => 
                           muxOutVector_2_30_port, A(29) => 
                           muxOutVector_2_29_port, A(28) => 
                           muxOutVector_2_28_port, A(27) => 
                           muxOutVector_2_27_port, A(26) => 
                           muxOutVector_2_26_port, A(25) => 
                           muxOutVector_2_25_port, A(24) => 
                           muxOutVector_2_24_port, A(23) => 
                           muxOutVector_2_23_port, A(22) => 
                           muxOutVector_2_22_port, A(21) => 
                           muxOutVector_2_21_port, A(20) => 
                           muxOutVector_2_20_port, A(19) => 
                           muxOutVector_2_19_port, A(18) => 
                           muxOutVector_2_18_port, A(17) => 
                           muxOutVector_2_17_port, A(16) => 
                           muxOutVector_2_16_port, A(15) => 
                           muxOutVector_2_15_port, A(14) => 
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
                           muxOutVector_2_0_port, B(31) => sumVector_1_31_port,
                           B(30) => sumVector_1_30_port, B(29) => 
                           sumVector_1_29_port, B(28) => sumVector_1_28_port, 
                           B(27) => sumVector_1_27_port, B(26) => 
                           sumVector_1_26_port, B(25) => sumVector_1_25_port, 
                           B(24) => sumVector_1_24_port, B(23) => 
                           sumVector_1_23_port, B(22) => sumVector_1_22_port, 
                           B(21) => sumVector_1_21_port, B(20) => 
                           sumVector_1_20_port, B(19) => sumVector_1_19_port, 
                           B(18) => sumVector_1_18_port, B(17) => 
                           sumVector_1_17_port, B(16) => sumVector_1_16_port, 
                           B(15) => sumVector_1_15_port, B(14) => 
                           sumVector_1_14_port, B(13) => sumVector_1_13_port, 
                           B(12) => sumVector_1_12_port, B(11) => 
                           sumVector_1_11_port, B(10) => sumVector_1_10_port, 
                           B(9) => sumVector_1_9_port, B(8) => 
                           sumVector_1_8_port, B(7) => sumVector_1_7_port, B(6)
                           => sumVector_1_6_port, B(5) => sumVector_1_5_port, 
                           B(4) => sumVector_1_4_port, B(3) => 
                           sumVector_1_3_port, B(2) => sumVector_1_2_port, B(1)
                           => sumVector_1_1_port, B(0) => sumVector_1_0_port, 
                           Ci => X_Logic0_port, S(31) => sumVector_2_31_port, 
                           S(30) => sumVector_2_30_port, S(29) => 
                           sumVector_2_29_port, S(28) => sumVector_2_28_port, 
                           S(27) => sumVector_2_27_port, S(26) => 
                           sumVector_2_26_port, S(25) => sumVector_2_25_port, 
                           S(24) => sumVector_2_24_port, S(23) => 
                           sumVector_2_23_port, S(22) => sumVector_2_22_port, 
                           S(21) => sumVector_2_21_port, S(20) => 
                           sumVector_2_20_port, S(19) => sumVector_2_19_port, 
                           S(18) => sumVector_2_18_port, S(17) => 
                           sumVector_2_17_port, S(16) => sumVector_2_16_port, 
                           S(15) => sumVector_2_15_port, S(14) => 
                           sumVector_2_14_port, S(13) => sumVector_2_13_port, 
                           S(12) => sumVector_2_12_port, S(11) => 
                           sumVector_2_11_port, S(10) => sumVector_2_10_port, 
                           S(9) => sumVector_2_9_port, S(8) => 
                           sumVector_2_8_port, S(7) => sumVector_2_7_port, S(6)
                           => sumVector_2_6_port, S(5) => sumVector_2_5_port, 
                           S(4) => sumVector_2_4_port, S(3) => 
                           sumVector_2_3_port, S(2) => sumVector_2_2_port, S(1)
                           => sumVector_2_1_port, S(0) => sumVector_2_0_port, 
                           Co => n_1001);
   mux_2 : MUX_5TO1_NBIT32_6 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n133, A1(30) => n134, 
                           A1(29) => n134, A1(28) => n134, A1(27) => n134, 
                           A1(26) => n134, A1(25) => n134, A1(24) => n134, 
                           A1(23) => n134, A1(22) => n134, A1(21) => n134, 
                           A1(20) => n134, A1(19) => n135, A1(18) => A(14), 
                           A1(17) => A(13), A1(16) => A(12), A1(15) => A(11), 
                           A1(14) => A(10), A1(13) => A(9), A1(12) => A(8), 
                           A1(11) => A(7), A1(10) => A(6), A1(9) => A(5), A1(8)
                           => A(4), A1(7) => A(3), A1(6) => A(2), A1(5) => A(1)
                           , A1(4) => n129, A1(3) => X_Logic0_port, A1(2) => 
                           X_Logic0_port, A1(1) => X_Logic0_port, A1(0) => 
                           X_Logic0_port, A2(31) => n122, A2(30) => n117, 
                           A2(29) => n126, A2(28) => n126, A2(27) => n120, 
                           A2(26) => n122, A2(25) => n121, A2(24) => n111, 
                           A2(23) => n119, A2(22) => n115, A2(21) => n127, 
                           A2(20) => n109, A2(19) => r113_DIFF_15_port, A2(18) 
                           => r113_DIFF_14_port, A2(17) => r113_DIFF_13_port, 
                           A2(16) => r113_DIFF_12_port, A2(15) => 
                           r113_DIFF_11_port, A2(14) => r113_DIFF_10_port, 
                           A2(13) => r113_DIFF_9_port, A2(12) => 
                           r113_DIFF_8_port, A2(11) => r113_DIFF_7_port, A2(10)
                           => n92, A2(9) => r113_DIFF_5_port, A2(8) => n95, 
                           A2(7) => r113_DIFF_3_port, A2(6) => n105, A2(5) => 
                           r113_DIFF_1_port, A2(4) => n129, A2(3) => 
                           X_Logic0_port, A2(2) => X_Logic0_port, A2(1) => 
                           X_Logic0_port, A2(0) => X_Logic0_port, A3(31) => 
                           n136, A3(30) => n133, A3(29) => n133, A3(28) => n139
                           , A3(27) => n140, A3(26) => n140, A3(25) => n140, 
                           A3(24) => n140, A3(23) => n140, A3(22) => n140, 
                           A3(21) => n140, A3(20) => n140, A3(19) => A(14), 
                           A3(18) => A(13), A3(17) => A(12), A3(16) => A(11), 
                           A3(15) => A(10), A3(14) => A(9), A3(13) => A(8), 
                           A3(12) => A(7), A3(11) => A(6), A3(10) => A(5), 
                           A3(9) => A(4), A3(8) => A(3), A3(7) => A(2), A3(6) 
                           => A(1), A3(5) => n128, A3(4) => X_Logic0_port, 
                           A3(3) => X_Logic0_port, A3(2) => X_Logic0_port, 
                           A3(1) => X_Logic0_port, A3(0) => X_Logic0_port, 
                           A4(31) => n117, A4(30) => n113, A4(29) => n119, 
                           A4(28) => n121, A4(27) => n115, A4(26) => n111, 
                           A4(25) => n68, A4(24) => n116, A4(23) => n117, 
                           A4(22) => n111, A4(21) => n116, A4(20) => 
                           r113_DIFF_15_port, A4(19) => r113_DIFF_14_port, 
                           A4(18) => r113_DIFF_13_port, A4(17) => 
                           r113_DIFF_12_port, A4(16) => r113_DIFF_11_port, 
                           A4(15) => r113_DIFF_10_port, A4(14) => 
                           r113_DIFF_9_port, A4(13) => r113_DIFF_8_port, A4(12)
                           => r113_DIFF_7_port, A4(11) => n92, A4(10) => n96, 
                           A4(9) => n95, A4(8) => n107, A4(7) => n105, A4(6) =>
                           r113_DIFF_1_port, A4(5) => n128, A4(4) => 
                           X_Logic0_port, A4(3) => X_Logic0_port, A4(2) => 
                           X_Logic0_port, A4(1) => X_Logic0_port, A4(0) => 
                           X_Logic0_port, sel(2) => selVector_2_2_port, sel(1) 
                           => selVector_2_1_port, sel(0) => selVector_2_0_port,
                           O(31) => muxOutVector_2_31_port, O(30) => 
                           muxOutVector_2_30_port, O(29) => 
                           muxOutVector_2_29_port, O(28) => 
                           muxOutVector_2_28_port, O(27) => 
                           muxOutVector_2_27_port, O(26) => 
                           muxOutVector_2_26_port, O(25) => 
                           muxOutVector_2_25_port, O(24) => 
                           muxOutVector_2_24_port, O(23) => 
                           muxOutVector_2_23_port, O(22) => 
                           muxOutVector_2_22_port, O(21) => 
                           muxOutVector_2_21_port, O(20) => 
                           muxOutVector_2_20_port, O(19) => 
                           muxOutVector_2_19_port, O(18) => 
                           muxOutVector_2_18_port, O(17) => 
                           muxOutVector_2_17_port, O(16) => 
                           muxOutVector_2_16_port, O(15) => 
                           muxOutVector_2_15_port, O(14) => 
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
   eb_3 : BE_BLOCK_5 port map( b(2) => B(7), b(1) => B(6), b(0) => B(5), sel(2)
                           => selVector_3_2_port, sel(1) => selVector_3_1_port,
                           sel(0) => selVector_3_0_port);
   sum_3 : RCA_NBIT32_5 port map( A(31) => muxOutVector_3_31_port, A(30) => 
                           muxOutVector_3_30_port, A(29) => 
                           muxOutVector_3_29_port, A(28) => 
                           muxOutVector_3_28_port, A(27) => 
                           muxOutVector_3_27_port, A(26) => 
                           muxOutVector_3_26_port, A(25) => 
                           muxOutVector_3_25_port, A(24) => 
                           muxOutVector_3_24_port, A(23) => 
                           muxOutVector_3_23_port, A(22) => 
                           muxOutVector_3_22_port, A(21) => 
                           muxOutVector_3_21_port, A(20) => 
                           muxOutVector_3_20_port, A(19) => 
                           muxOutVector_3_19_port, A(18) => 
                           muxOutVector_3_18_port, A(17) => 
                           muxOutVector_3_17_port, A(16) => 
                           muxOutVector_3_16_port, A(15) => 
                           muxOutVector_3_15_port, A(14) => 
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
                           muxOutVector_3_0_port, B(31) => sumVector_2_31_port,
                           B(30) => sumVector_2_30_port, B(29) => 
                           sumVector_2_29_port, B(28) => sumVector_2_28_port, 
                           B(27) => sumVector_2_27_port, B(26) => 
                           sumVector_2_26_port, B(25) => sumVector_2_25_port, 
                           B(24) => sumVector_2_24_port, B(23) => 
                           sumVector_2_23_port, B(22) => sumVector_2_22_port, 
                           B(21) => sumVector_2_21_port, B(20) => 
                           sumVector_2_20_port, B(19) => sumVector_2_19_port, 
                           B(18) => sumVector_2_18_port, B(17) => 
                           sumVector_2_17_port, B(16) => sumVector_2_16_port, 
                           B(15) => sumVector_2_15_port, B(14) => 
                           sumVector_2_14_port, B(13) => sumVector_2_13_port, 
                           B(12) => sumVector_2_12_port, B(11) => 
                           sumVector_2_11_port, B(10) => sumVector_2_10_port, 
                           B(9) => sumVector_2_9_port, B(8) => 
                           sumVector_2_8_port, B(7) => sumVector_2_7_port, B(6)
                           => sumVector_2_6_port, B(5) => sumVector_2_5_port, 
                           B(4) => sumVector_2_4_port, B(3) => 
                           sumVector_2_3_port, B(2) => sumVector_2_2_port, B(1)
                           => sumVector_2_1_port, B(0) => sumVector_2_0_port, 
                           Ci => X_Logic0_port, S(31) => sumVector_3_31_port, 
                           S(30) => sumVector_3_30_port, S(29) => 
                           sumVector_3_29_port, S(28) => sumVector_3_28_port, 
                           S(27) => sumVector_3_27_port, S(26) => 
                           sumVector_3_26_port, S(25) => sumVector_3_25_port, 
                           S(24) => sumVector_3_24_port, S(23) => 
                           sumVector_3_23_port, S(22) => sumVector_3_22_port, 
                           S(21) => sumVector_3_21_port, S(20) => 
                           sumVector_3_20_port, S(19) => sumVector_3_19_port, 
                           S(18) => sumVector_3_18_port, S(17) => 
                           sumVector_3_17_port, S(16) => sumVector_3_16_port, 
                           S(15) => sumVector_3_15_port, S(14) => 
                           sumVector_3_14_port, S(13) => sumVector_3_13_port, 
                           S(12) => sumVector_3_12_port, S(11) => 
                           sumVector_3_11_port, S(10) => sumVector_3_10_port, 
                           S(9) => sumVector_3_9_port, S(8) => 
                           sumVector_3_8_port, S(7) => sumVector_3_7_port, S(6)
                           => sumVector_3_6_port, S(5) => sumVector_3_5_port, 
                           S(4) => sumVector_3_4_port, S(3) => 
                           sumVector_3_3_port, S(2) => sumVector_3_2_port, S(1)
                           => sumVector_3_1_port, S(0) => sumVector_3_0_port, 
                           Co => n_1002);
   mux_3 : MUX_5TO1_NBIT32_5 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n133, A1(30) => n136, 
                           A1(29) => n133, A1(28) => n133, A1(27) => n133, 
                           A1(26) => n133, A1(25) => n133, A1(24) => n133, 
                           A1(23) => n133, A1(22) => n133, A1(21) => n133, 
                           A1(20) => A(14), A1(19) => A(13), A1(18) => A(12), 
                           A1(17) => A(11), A1(16) => A(10), A1(15) => A(9), 
                           A1(14) => A(8), A1(13) => A(7), A1(12) => A(6), 
                           A1(11) => A(5), A1(10) => A(4), A1(9) => A(3), A1(8)
                           => A(2), A1(7) => A(1), A1(6) => n128, A1(5) => 
                           X_Logic0_port, A1(4) => X_Logic0_port, A1(3) => 
                           X_Logic0_port, A1(2) => X_Logic0_port, A1(1) => 
                           X_Logic0_port, A1(0) => X_Logic0_port, A2(31) => 
                           n125, A2(30) => n125, A2(29) => n112, A2(28) => n112
                           , A2(27) => n110, A2(26) => n125, A2(25) => n109, 
                           A2(24) => n119, A2(23) => n122, A2(22) => n118, 
                           A2(21) => r113_DIFF_15_port, A2(20) => 
                           r113_DIFF_14_port, A2(19) => r113_DIFF_13_port, 
                           A2(18) => r113_DIFF_12_port, A2(17) => 
                           r113_DIFF_11_port, A2(16) => r113_DIFF_10_port, 
                           A2(15) => r113_DIFF_9_port, A2(14) => 
                           r113_DIFF_8_port, A2(13) => r113_DIFF_7_port, A2(12)
                           => n92, A2(11) => n96, A2(10) => n95, A2(9) => n107,
                           A2(8) => n105, A2(7) => r113_DIFF_1_port, A2(6) => 
                           n128, A2(5) => X_Logic0_port, A2(4) => X_Logic0_port
                           , A2(3) => X_Logic0_port, A2(2) => X_Logic0_port, 
                           A2(1) => X_Logic0_port, A2(0) => X_Logic0_port, 
                           A3(31) => n133, A3(30) => n136, A3(29) => n133, 
                           A3(28) => n139, A3(27) => n133, A3(26) => n139, 
                           A3(25) => n133, A3(24) => n139, A3(23) => n133, 
                           A3(22) => n133, A3(21) => A(14), A3(20) => A(13), 
                           A3(19) => A(12), A3(18) => A(11), A3(17) => A(10), 
                           A3(16) => A(9), A3(15) => A(8), A3(14) => A(7), 
                           A3(13) => A(6), A3(12) => A(5), A3(11) => A(4), 
                           A3(10) => A(3), A3(9) => A(2), A3(8) => A(1), A3(7) 
                           => n128, A3(6) => X_Logic0_port, A3(5) => 
                           X_Logic0_port, A3(4) => X_Logic0_port, A3(3) => 
                           X_Logic0_port, A3(2) => X_Logic0_port, A3(1) => 
                           X_Logic0_port, A3(0) => X_Logic0_port, A4(31) => 
                           n127, A4(30) => n126, A4(29) => n115, A4(28) => n114
                           , A4(27) => n127, A4(26) => n124, A4(25) => n123, 
                           A4(24) => n121, A4(23) => n114, A4(22) => 
                           r113_DIFF_15_port, A4(21) => r113_DIFF_14_port, 
                           A4(20) => r113_DIFF_13_port, A4(19) => 
                           r113_DIFF_12_port, A4(18) => r113_DIFF_11_port, 
                           A4(17) => r113_DIFF_10_port, A4(16) => 
                           r113_DIFF_9_port, A4(15) => r113_DIFF_8_port, A4(14)
                           => r113_DIFF_7_port, A4(13) => n92, A4(12) => n96, 
                           A4(11) => n102, A4(10) => n107, A4(9) => n105, A4(8)
                           => r113_DIFF_1_port, A4(7) => n128, A4(6) => 
                           X_Logic0_port, A4(5) => X_Logic0_port, A4(4) => 
                           X_Logic0_port, A4(3) => X_Logic0_port, A4(2) => 
                           X_Logic0_port, A4(1) => X_Logic0_port, A4(0) => 
                           X_Logic0_port, sel(2) => selVector_3_2_port, sel(1) 
                           => selVector_3_1_port, sel(0) => selVector_3_0_port,
                           O(31) => muxOutVector_3_31_port, O(30) => 
                           muxOutVector_3_30_port, O(29) => 
                           muxOutVector_3_29_port, O(28) => 
                           muxOutVector_3_28_port, O(27) => 
                           muxOutVector_3_27_port, O(26) => 
                           muxOutVector_3_26_port, O(25) => 
                           muxOutVector_3_25_port, O(24) => 
                           muxOutVector_3_24_port, O(23) => 
                           muxOutVector_3_23_port, O(22) => 
                           muxOutVector_3_22_port, O(21) => 
                           muxOutVector_3_21_port, O(20) => 
                           muxOutVector_3_20_port, O(19) => 
                           muxOutVector_3_19_port, O(18) => 
                           muxOutVector_3_18_port, O(17) => 
                           muxOutVector_3_17_port, O(16) => 
                           muxOutVector_3_16_port, O(15) => 
                           muxOutVector_3_15_port, O(14) => 
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
   eb_4 : BE_BLOCK_4 port map( b(2) => B(9), b(1) => B(8), b(0) => B(7), sel(2)
                           => selVector_4_2_port, sel(1) => selVector_4_1_port,
                           sel(0) => selVector_4_0_port);
   sum_4 : RCA_NBIT32_4 port map( A(31) => muxOutVector_4_31_port, A(30) => 
                           muxOutVector_4_30_port, A(29) => 
                           muxOutVector_4_29_port, A(28) => 
                           muxOutVector_4_28_port, A(27) => 
                           muxOutVector_4_27_port, A(26) => 
                           muxOutVector_4_26_port, A(25) => 
                           muxOutVector_4_25_port, A(24) => 
                           muxOutVector_4_24_port, A(23) => 
                           muxOutVector_4_23_port, A(22) => 
                           muxOutVector_4_22_port, A(21) => 
                           muxOutVector_4_21_port, A(20) => 
                           muxOutVector_4_20_port, A(19) => 
                           muxOutVector_4_19_port, A(18) => 
                           muxOutVector_4_18_port, A(17) => 
                           muxOutVector_4_17_port, A(16) => 
                           muxOutVector_4_16_port, A(15) => 
                           muxOutVector_4_15_port, A(14) => 
                           muxOutVector_4_14_port, A(13) => 
                           muxOutVector_4_13_port, A(12) => 
                           muxOutVector_4_12_port, A(11) => 
                           muxOutVector_4_11_port, A(10) => 
                           muxOutVector_4_10_port, A(9) => 
                           muxOutVector_4_9_port, A(8) => muxOutVector_4_8_port
                           , A(7) => muxOutVector_4_7_port, A(6) => 
                           muxOutVector_4_6_port, A(5) => muxOutVector_4_5_port
                           , A(4) => muxOutVector_4_4_port, A(3) => 
                           muxOutVector_4_3_port, A(2) => muxOutVector_4_2_port
                           , A(1) => muxOutVector_4_1_port, A(0) => 
                           muxOutVector_4_0_port, B(31) => sumVector_3_31_port,
                           B(30) => sumVector_3_30_port, B(29) => 
                           sumVector_3_29_port, B(28) => sumVector_3_28_port, 
                           B(27) => sumVector_3_27_port, B(26) => 
                           sumVector_3_26_port, B(25) => sumVector_3_25_port, 
                           B(24) => sumVector_3_24_port, B(23) => 
                           sumVector_3_23_port, B(22) => sumVector_3_22_port, 
                           B(21) => sumVector_3_21_port, B(20) => 
                           sumVector_3_20_port, B(19) => sumVector_3_19_port, 
                           B(18) => sumVector_3_18_port, B(17) => 
                           sumVector_3_17_port, B(16) => sumVector_3_16_port, 
                           B(15) => sumVector_3_15_port, B(14) => 
                           sumVector_3_14_port, B(13) => sumVector_3_13_port, 
                           B(12) => sumVector_3_12_port, B(11) => 
                           sumVector_3_11_port, B(10) => sumVector_3_10_port, 
                           B(9) => sumVector_3_9_port, B(8) => 
                           sumVector_3_8_port, B(7) => sumVector_3_7_port, B(6)
                           => sumVector_3_6_port, B(5) => sumVector_3_5_port, 
                           B(4) => sumVector_3_4_port, B(3) => 
                           sumVector_3_3_port, B(2) => sumVector_3_2_port, B(1)
                           => sumVector_3_1_port, B(0) => sumVector_3_0_port, 
                           Ci => X_Logic0_port, S(31) => sumVector_4_31_port, 
                           S(30) => sumVector_4_30_port, S(29) => 
                           sumVector_4_29_port, S(28) => sumVector_4_28_port, 
                           S(27) => sumVector_4_27_port, S(26) => 
                           sumVector_4_26_port, S(25) => sumVector_4_25_port, 
                           S(24) => sumVector_4_24_port, S(23) => 
                           sumVector_4_23_port, S(22) => sumVector_4_22_port, 
                           S(21) => sumVector_4_21_port, S(20) => 
                           sumVector_4_20_port, S(19) => sumVector_4_19_port, 
                           S(18) => sumVector_4_18_port, S(17) => 
                           sumVector_4_17_port, S(16) => sumVector_4_16_port, 
                           S(15) => sumVector_4_15_port, S(14) => 
                           sumVector_4_14_port, S(13) => sumVector_4_13_port, 
                           S(12) => sumVector_4_12_port, S(11) => 
                           sumVector_4_11_port, S(10) => sumVector_4_10_port, 
                           S(9) => sumVector_4_9_port, S(8) => 
                           sumVector_4_8_port, S(7) => sumVector_4_7_port, S(6)
                           => sumVector_4_6_port, S(5) => sumVector_4_5_port, 
                           S(4) => sumVector_4_4_port, S(3) => 
                           sumVector_4_3_port, S(2) => sumVector_4_2_port, S(1)
                           => sumVector_4_1_port, S(0) => sumVector_4_0_port, 
                           Co => n_1003);
   mux_4 : MUX_5TO1_NBIT32_4 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n133, A1(30) => n133, 
                           A1(29) => n134, A1(28) => n137, A1(27) => n133, 
                           A1(26) => n133, A1(25) => n137, A1(24) => n136, 
                           A1(23) => n137, A1(22) => A(14), A1(21) => A(13), 
                           A1(20) => A(12), A1(19) => A(11), A1(18) => A(10), 
                           A1(17) => A(9), A1(16) => A(8), A1(15) => A(7), 
                           A1(14) => A(6), A1(13) => A(5), A1(12) => A(4), 
                           A1(11) => A(3), A1(10) => A(2), A1(9) => A(1), A1(8)
                           => n128, A1(7) => X_Logic0_port, A1(6) => 
                           X_Logic0_port, A1(5) => X_Logic0_port, A1(4) => 
                           X_Logic0_port, A1(3) => X_Logic0_port, A1(2) => 
                           X_Logic0_port, A1(1) => X_Logic0_port, A1(0) => 
                           X_Logic0_port, A2(31) => n123, A2(30) => n109, 
                           A2(29) => n115, A2(28) => n123, A2(27) => n124, 
                           A2(26) => n115, A2(25) => n116, A2(24) => n68, 
                           A2(23) => r113_DIFF_15_port, A2(22) => 
                           r113_DIFF_14_port, A2(21) => r113_DIFF_13_port, 
                           A2(20) => r113_DIFF_12_port, A2(19) => 
                           r113_DIFF_11_port, A2(18) => r113_DIFF_10_port, 
                           A2(17) => r113_DIFF_9_port, A2(16) => 
                           r113_DIFF_8_port, A2(15) => r113_DIFF_7_port, A2(14)
                           => n92, A2(13) => n96, A2(12) => n95, A2(11) => n107
                           , A2(10) => n105, A2(9) => r113_DIFF_1_port, A2(8) 
                           => n128, A2(7) => X_Logic0_port, A2(6) => 
                           X_Logic0_port, A2(5) => X_Logic0_port, A2(4) => 
                           X_Logic0_port, A2(3) => X_Logic0_port, A2(2) => 
                           X_Logic0_port, A2(1) => X_Logic0_port, A2(0) => 
                           X_Logic0_port, A3(31) => n138, A3(30) => n139, 
                           A3(29) => n138, A3(28) => n139, A3(27) => n139, 
                           A3(26) => n139, A3(25) => n139, A3(24) => n139, 
                           A3(23) => A(14), A3(22) => A(13), A3(21) => A(12), 
                           A3(20) => A(11), A3(19) => A(10), A3(18) => A(9), 
                           A3(17) => A(8), A3(16) => A(7), A3(15) => A(6), 
                           A3(14) => A(5), A3(13) => A(4), A3(12) => A(3), 
                           A3(11) => A(2), A3(10) => n98, A3(9) => n128, A3(8) 
                           => X_Logic0_port, A3(7) => X_Logic0_port, A3(6) => 
                           X_Logic0_port, A3(5) => X_Logic0_port, A3(4) => 
                           X_Logic0_port, A3(3) => X_Logic0_port, A3(2) => 
                           X_Logic0_port, A3(1) => X_Logic0_port, A3(0) => 
                           X_Logic0_port, A4(31) => n116, A4(30) => n110, 
                           A4(29) => n112, A4(28) => n118, A4(27) => n122, 
                           A4(26) => n112, A4(25) => n116, A4(24) => 
                           r113_DIFF_15_port, A4(23) => r113_DIFF_14_port, 
                           A4(22) => r113_DIFF_13_port, A4(21) => 
                           r113_DIFF_12_port, A4(20) => r113_DIFF_11_port, 
                           A4(19) => r113_DIFF_10_port, A4(18) => 
                           r113_DIFF_9_port, A4(17) => r113_DIFF_8_port, A4(16)
                           => r113_DIFF_7_port, A4(15) => n92, A4(14) => n96, 
                           A4(13) => n102, A4(12) => n108, A4(11) => n105, 
                           A4(10) => r113_DIFF_1_port, A4(9) => n128, A4(8) => 
                           X_Logic0_port, A4(7) => X_Logic0_port, A4(6) => 
                           X_Logic0_port, A4(5) => X_Logic0_port, A4(4) => 
                           X_Logic0_port, A4(3) => X_Logic0_port, A4(2) => 
                           X_Logic0_port, A4(1) => X_Logic0_port, A4(0) => 
                           X_Logic0_port, sel(2) => selVector_4_2_port, sel(1) 
                           => selVector_4_1_port, sel(0) => selVector_4_0_port,
                           O(31) => muxOutVector_4_31_port, O(30) => 
                           muxOutVector_4_30_port, O(29) => 
                           muxOutVector_4_29_port, O(28) => 
                           muxOutVector_4_28_port, O(27) => 
                           muxOutVector_4_27_port, O(26) => 
                           muxOutVector_4_26_port, O(25) => 
                           muxOutVector_4_25_port, O(24) => 
                           muxOutVector_4_24_port, O(23) => 
                           muxOutVector_4_23_port, O(22) => 
                           muxOutVector_4_22_port, O(21) => 
                           muxOutVector_4_21_port, O(20) => 
                           muxOutVector_4_20_port, O(19) => 
                           muxOutVector_4_19_port, O(18) => 
                           muxOutVector_4_18_port, O(17) => 
                           muxOutVector_4_17_port, O(16) => 
                           muxOutVector_4_16_port, O(15) => 
                           muxOutVector_4_15_port, O(14) => 
                           muxOutVector_4_14_port, O(13) => 
                           muxOutVector_4_13_port, O(12) => 
                           muxOutVector_4_12_port, O(11) => 
                           muxOutVector_4_11_port, O(10) => 
                           muxOutVector_4_10_port, O(9) => 
                           muxOutVector_4_9_port, O(8) => muxOutVector_4_8_port
                           , O(7) => muxOutVector_4_7_port, O(6) => 
                           muxOutVector_4_6_port, O(5) => muxOutVector_4_5_port
                           , O(4) => muxOutVector_4_4_port, O(3) => 
                           muxOutVector_4_3_port, O(2) => muxOutVector_4_2_port
                           , O(1) => muxOutVector_4_1_port, O(0) => 
                           muxOutVector_4_0_port);
   eb_5 : BE_BLOCK_3 port map( b(2) => B(11), b(1) => B(10), b(0) => B(9), 
                           sel(2) => selVector_5_2_port, sel(1) => 
                           selVector_5_1_port, sel(0) => selVector_5_0_port);
   sum_5 : RCA_NBIT32_3 port map( A(31) => muxOutVector_5_31_port, A(30) => 
                           muxOutVector_5_30_port, A(29) => 
                           muxOutVector_5_29_port, A(28) => 
                           muxOutVector_5_28_port, A(27) => 
                           muxOutVector_5_27_port, A(26) => 
                           muxOutVector_5_26_port, A(25) => 
                           muxOutVector_5_25_port, A(24) => 
                           muxOutVector_5_24_port, A(23) => 
                           muxOutVector_5_23_port, A(22) => 
                           muxOutVector_5_22_port, A(21) => 
                           muxOutVector_5_21_port, A(20) => 
                           muxOutVector_5_20_port, A(19) => 
                           muxOutVector_5_19_port, A(18) => 
                           muxOutVector_5_18_port, A(17) => 
                           muxOutVector_5_17_port, A(16) => 
                           muxOutVector_5_16_port, A(15) => 
                           muxOutVector_5_15_port, A(14) => 
                           muxOutVector_5_14_port, A(13) => 
                           muxOutVector_5_13_port, A(12) => 
                           muxOutVector_5_12_port, A(11) => 
                           muxOutVector_5_11_port, A(10) => 
                           muxOutVector_5_10_port, A(9) => 
                           muxOutVector_5_9_port, A(8) => muxOutVector_5_8_port
                           , A(7) => muxOutVector_5_7_port, A(6) => 
                           muxOutVector_5_6_port, A(5) => muxOutVector_5_5_port
                           , A(4) => muxOutVector_5_4_port, A(3) => 
                           muxOutVector_5_3_port, A(2) => muxOutVector_5_2_port
                           , A(1) => muxOutVector_5_1_port, A(0) => 
                           muxOutVector_5_0_port, B(31) => sumVector_4_31_port,
                           B(30) => sumVector_4_30_port, B(29) => 
                           sumVector_4_29_port, B(28) => sumVector_4_28_port, 
                           B(27) => sumVector_4_27_port, B(26) => 
                           sumVector_4_26_port, B(25) => sumVector_4_25_port, 
                           B(24) => sumVector_4_24_port, B(23) => 
                           sumVector_4_23_port, B(22) => sumVector_4_22_port, 
                           B(21) => sumVector_4_21_port, B(20) => 
                           sumVector_4_20_port, B(19) => sumVector_4_19_port, 
                           B(18) => sumVector_4_18_port, B(17) => 
                           sumVector_4_17_port, B(16) => sumVector_4_16_port, 
                           B(15) => sumVector_4_15_port, B(14) => 
                           sumVector_4_14_port, B(13) => sumVector_4_13_port, 
                           B(12) => sumVector_4_12_port, B(11) => 
                           sumVector_4_11_port, B(10) => sumVector_4_10_port, 
                           B(9) => sumVector_4_9_port, B(8) => 
                           sumVector_4_8_port, B(7) => sumVector_4_7_port, B(6)
                           => sumVector_4_6_port, B(5) => sumVector_4_5_port, 
                           B(4) => sumVector_4_4_port, B(3) => 
                           sumVector_4_3_port, B(2) => sumVector_4_2_port, B(1)
                           => sumVector_4_1_port, B(0) => sumVector_4_0_port, 
                           Ci => X_Logic0_port, S(31) => sumVector_5_31_port, 
                           S(30) => sumVector_5_30_port, S(29) => 
                           sumVector_5_29_port, S(28) => sumVector_5_28_port, 
                           S(27) => sumVector_5_27_port, S(26) => 
                           sumVector_5_26_port, S(25) => sumVector_5_25_port, 
                           S(24) => sumVector_5_24_port, S(23) => 
                           sumVector_5_23_port, S(22) => sumVector_5_22_port, 
                           S(21) => sumVector_5_21_port, S(20) => 
                           sumVector_5_20_port, S(19) => sumVector_5_19_port, 
                           S(18) => sumVector_5_18_port, S(17) => 
                           sumVector_5_17_port, S(16) => sumVector_5_16_port, 
                           S(15) => sumVector_5_15_port, S(14) => 
                           sumVector_5_14_port, S(13) => sumVector_5_13_port, 
                           S(12) => sumVector_5_12_port, S(11) => 
                           sumVector_5_11_port, S(10) => sumVector_5_10_port, 
                           S(9) => sumVector_5_9_port, S(8) => 
                           sumVector_5_8_port, S(7) => sumVector_5_7_port, S(6)
                           => sumVector_5_6_port, S(5) => sumVector_5_5_port, 
                           S(4) => sumVector_5_4_port, S(3) => 
                           sumVector_5_3_port, S(2) => sumVector_5_2_port, S(1)
                           => sumVector_5_1_port, S(0) => sumVector_5_0_port, 
                           Co => n_1004);
   mux_5 : MUX_5TO1_NBIT32_3 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n139, A1(30) => n136, 
                           A1(29) => n133, A1(28) => n137, A1(27) => n137, 
                           A1(26) => n137, A1(25) => n137, A1(24) => A(14), 
                           A1(23) => A(13), A1(22) => A(12), A1(21) => A(11), 
                           A1(20) => A(10), A1(19) => A(9), A1(18) => A(8), 
                           A1(17) => A(7), A1(16) => A(6), A1(15) => A(5), 
                           A1(14) => A(4), A1(13) => A(3), A1(12) => A(2), 
                           A1(11) => n98, A1(10) => n128, A1(9) => 
                           X_Logic0_port, A1(8) => X_Logic0_port, A1(7) => 
                           X_Logic0_port, A1(6) => X_Logic0_port, A1(5) => 
                           X_Logic0_port, A1(4) => X_Logic0_port, A1(3) => 
                           X_Logic0_port, A1(2) => X_Logic0_port, A1(1) => 
                           X_Logic0_port, A1(0) => X_Logic0_port, A2(31) => 
                           n118, A2(30) => n123, A2(29) => n121, A2(28) => n68,
                           A2(27) => n114, A2(26) => n120, A2(25) => 
                           r113_DIFF_15_port, A2(24) => r113_DIFF_14_port, 
                           A2(23) => r113_DIFF_13_port, A2(22) => 
                           r113_DIFF_12_port, A2(21) => r113_DIFF_11_port, 
                           A2(20) => r113_DIFF_10_port, A2(19) => 
                           r113_DIFF_9_port, A2(18) => r113_DIFF_8_port, A2(17)
                           => r113_DIFF_7_port, A2(16) => n92, A2(15) => n96, 
                           A2(14) => n102, A2(13) => n108, A2(12) => n105, 
                           A2(11) => r113_DIFF_1_port, A2(10) => n128, A2(9) =>
                           X_Logic0_port, A2(8) => X_Logic0_port, A2(7) => 
                           X_Logic0_port, A2(6) => X_Logic0_port, A2(5) => 
                           X_Logic0_port, A2(4) => X_Logic0_port, A2(3) => 
                           X_Logic0_port, A2(2) => X_Logic0_port, A2(1) => 
                           X_Logic0_port, A2(0) => X_Logic0_port, A3(31) => 
                           n139, A3(30) => n139, A3(29) => n137, A3(28) => n136
                           , A3(27) => n133, A3(26) => n139, A3(25) => A(14), 
                           A3(24) => A(13), A3(23) => A(12), A3(22) => A(11), 
                           A3(21) => A(10), A3(20) => A(9), A3(19) => A(8), 
                           A3(18) => A(7), A3(17) => A(6), A3(16) => A(5), 
                           A3(15) => A(4), A3(14) => A(3), A3(13) => A(2), 
                           A3(12) => n98, A3(11) => n128, A3(10) => 
                           X_Logic0_port, A3(9) => X_Logic0_port, A3(8) => 
                           X_Logic0_port, A3(7) => X_Logic0_port, A3(6) => 
                           X_Logic0_port, A3(5) => X_Logic0_port, A3(4) => 
                           X_Logic0_port, A3(3) => X_Logic0_port, A3(2) => 
                           X_Logic0_port, A3(1) => X_Logic0_port, A3(0) => 
                           X_Logic0_port, A4(31) => n111, A4(30) => n119, 
                           A4(29) => n115, A4(28) => n119, A4(27) => n113, 
                           A4(26) => r113_DIFF_15_port, A4(25) => 
                           r113_DIFF_14_port, A4(24) => r113_DIFF_13_port, 
                           A4(23) => r113_DIFF_12_port, A4(22) => 
                           r113_DIFF_11_port, A4(21) => r113_DIFF_10_port, 
                           A4(20) => r113_DIFF_9_port, A4(19) => 
                           r113_DIFF_8_port, A4(18) => r113_DIFF_7_port, A4(17)
                           => n92, A4(16) => n96, A4(15) => n102, A4(14) => 
                           n108, A4(13) => n105, A4(12) => r113_DIFF_1_port, 
                           A4(11) => n128, A4(10) => X_Logic0_port, A4(9) => 
                           X_Logic0_port, A4(8) => X_Logic0_port, A4(7) => 
                           X_Logic0_port, A4(6) => X_Logic0_port, A4(5) => 
                           X_Logic0_port, A4(4) => X_Logic0_port, A4(3) => 
                           X_Logic0_port, A4(2) => X_Logic0_port, A4(1) => 
                           X_Logic0_port, A4(0) => X_Logic0_port, sel(2) => 
                           selVector_5_2_port, sel(1) => selVector_5_1_port, 
                           sel(0) => selVector_5_0_port, O(31) => 
                           muxOutVector_5_31_port, O(30) => 
                           muxOutVector_5_30_port, O(29) => 
                           muxOutVector_5_29_port, O(28) => 
                           muxOutVector_5_28_port, O(27) => 
                           muxOutVector_5_27_port, O(26) => 
                           muxOutVector_5_26_port, O(25) => 
                           muxOutVector_5_25_port, O(24) => 
                           muxOutVector_5_24_port, O(23) => 
                           muxOutVector_5_23_port, O(22) => 
                           muxOutVector_5_22_port, O(21) => 
                           muxOutVector_5_21_port, O(20) => 
                           muxOutVector_5_20_port, O(19) => 
                           muxOutVector_5_19_port, O(18) => 
                           muxOutVector_5_18_port, O(17) => 
                           muxOutVector_5_17_port, O(16) => 
                           muxOutVector_5_16_port, O(15) => 
                           muxOutVector_5_15_port, O(14) => 
                           muxOutVector_5_14_port, O(13) => 
                           muxOutVector_5_13_port, O(12) => 
                           muxOutVector_5_12_port, O(11) => 
                           muxOutVector_5_11_port, O(10) => 
                           muxOutVector_5_10_port, O(9) => 
                           muxOutVector_5_9_port, O(8) => muxOutVector_5_8_port
                           , O(7) => muxOutVector_5_7_port, O(6) => 
                           muxOutVector_5_6_port, O(5) => muxOutVector_5_5_port
                           , O(4) => muxOutVector_5_4_port, O(3) => 
                           muxOutVector_5_3_port, O(2) => muxOutVector_5_2_port
                           , O(1) => muxOutVector_5_1_port, O(0) => 
                           muxOutVector_5_0_port);
   eb_6 : BE_BLOCK_2 port map( b(2) => B(13), b(1) => B(12), b(0) => B(11), 
                           sel(2) => selVector_6_2_port, sel(1) => 
                           selVector_6_1_port, sel(0) => selVector_6_0_port);
   sum_6 : RCA_NBIT32_2 port map( A(31) => muxOutVector_6_31_port, A(30) => 
                           muxOutVector_6_30_port, A(29) => 
                           muxOutVector_6_29_port, A(28) => 
                           muxOutVector_6_28_port, A(27) => 
                           muxOutVector_6_27_port, A(26) => 
                           muxOutVector_6_26_port, A(25) => 
                           muxOutVector_6_25_port, A(24) => 
                           muxOutVector_6_24_port, A(23) => 
                           muxOutVector_6_23_port, A(22) => 
                           muxOutVector_6_22_port, A(21) => 
                           muxOutVector_6_21_port, A(20) => 
                           muxOutVector_6_20_port, A(19) => 
                           muxOutVector_6_19_port, A(18) => 
                           muxOutVector_6_18_port, A(17) => 
                           muxOutVector_6_17_port, A(16) => 
                           muxOutVector_6_16_port, A(15) => 
                           muxOutVector_6_15_port, A(14) => 
                           muxOutVector_6_14_port, A(13) => 
                           muxOutVector_6_13_port, A(12) => 
                           muxOutVector_6_12_port, A(11) => 
                           muxOutVector_6_11_port, A(10) => 
                           muxOutVector_6_10_port, A(9) => 
                           muxOutVector_6_9_port, A(8) => muxOutVector_6_8_port
                           , A(7) => muxOutVector_6_7_port, A(6) => 
                           muxOutVector_6_6_port, A(5) => muxOutVector_6_5_port
                           , A(4) => muxOutVector_6_4_port, A(3) => 
                           muxOutVector_6_3_port, A(2) => muxOutVector_6_2_port
                           , A(1) => muxOutVector_6_1_port, A(0) => 
                           muxOutVector_6_0_port, B(31) => sumVector_5_31_port,
                           B(30) => sumVector_5_30_port, B(29) => 
                           sumVector_5_29_port, B(28) => sumVector_5_28_port, 
                           B(27) => sumVector_5_27_port, B(26) => 
                           sumVector_5_26_port, B(25) => sumVector_5_25_port, 
                           B(24) => sumVector_5_24_port, B(23) => 
                           sumVector_5_23_port, B(22) => sumVector_5_22_port, 
                           B(21) => sumVector_5_21_port, B(20) => 
                           sumVector_5_20_port, B(19) => sumVector_5_19_port, 
                           B(18) => sumVector_5_18_port, B(17) => 
                           sumVector_5_17_port, B(16) => sumVector_5_16_port, 
                           B(15) => sumVector_5_15_port, B(14) => 
                           sumVector_5_14_port, B(13) => sumVector_5_13_port, 
                           B(12) => sumVector_5_12_port, B(11) => 
                           sumVector_5_11_port, B(10) => sumVector_5_10_port, 
                           B(9) => sumVector_5_9_port, B(8) => 
                           sumVector_5_8_port, B(7) => sumVector_5_7_port, B(6)
                           => sumVector_5_6_port, B(5) => sumVector_5_5_port, 
                           B(4) => sumVector_5_4_port, B(3) => 
                           sumVector_5_3_port, B(2) => sumVector_5_2_port, B(1)
                           => sumVector_5_1_port, B(0) => sumVector_5_0_port, 
                           Ci => X_Logic0_port, S(31) => sumVector_6_31_port, 
                           S(30) => sumVector_6_30_port, S(29) => 
                           sumVector_6_29_port, S(28) => sumVector_6_28_port, 
                           S(27) => sumVector_6_27_port, S(26) => 
                           sumVector_6_26_port, S(25) => sumVector_6_25_port, 
                           S(24) => sumVector_6_24_port, S(23) => 
                           sumVector_6_23_port, S(22) => sumVector_6_22_port, 
                           S(21) => sumVector_6_21_port, S(20) => 
                           sumVector_6_20_port, S(19) => sumVector_6_19_port, 
                           S(18) => sumVector_6_18_port, S(17) => 
                           sumVector_6_17_port, S(16) => sumVector_6_16_port, 
                           S(15) => sumVector_6_15_port, S(14) => 
                           sumVector_6_14_port, S(13) => sumVector_6_13_port, 
                           S(12) => sumVector_6_12_port, S(11) => 
                           sumVector_6_11_port, S(10) => sumVector_6_10_port, 
                           S(9) => sumVector_6_9_port, S(8) => 
                           sumVector_6_8_port, S(7) => sumVector_6_7_port, S(6)
                           => sumVector_6_6_port, S(5) => sumVector_6_5_port, 
                           S(4) => sumVector_6_4_port, S(3) => 
                           sumVector_6_3_port, S(2) => sumVector_6_2_port, S(1)
                           => sumVector_6_1_port, S(0) => sumVector_6_0_port, 
                           Co => n_1005);
   mux_6 : MUX_5TO1_NBIT32_2 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n140, A1(30) => n137, 
                           A1(29) => n136, A1(28) => n137, A1(27) => n136, 
                           A1(26) => A(14), A1(25) => A(13), A1(24) => A(12), 
                           A1(23) => A(11), A1(22) => A(10), A1(21) => A(9), 
                           A1(20) => A(8), A1(19) => A(7), A1(18) => A(6), 
                           A1(17) => A(5), A1(16) => A(4), A1(15) => A(3), 
                           A1(14) => A(2), A1(13) => n98, A1(12) => n128, 
                           A1(11) => X_Logic0_port, A1(10) => X_Logic0_port, 
                           A1(9) => X_Logic0_port, A1(8) => X_Logic0_port, 
                           A1(7) => X_Logic0_port, A1(6) => X_Logic0_port, 
                           A1(5) => X_Logic0_port, A1(4) => X_Logic0_port, 
                           A1(3) => X_Logic0_port, A1(2) => X_Logic0_port, 
                           A1(1) => X_Logic0_port, A1(0) => X_Logic0_port, 
                           A2(31) => n114, A2(30) => n126, A2(29) => n124, 
                           A2(28) => n121, A2(27) => r113_DIFF_15_port, A2(26) 
                           => r113_DIFF_14_port, A2(25) => r113_DIFF_13_port, 
                           A2(24) => r113_DIFF_12_port, A2(23) => 
                           r113_DIFF_11_port, A2(22) => r113_DIFF_10_port, 
                           A2(21) => r113_DIFF_9_port, A2(20) => 
                           r113_DIFF_8_port, A2(19) => r113_DIFF_7_port, A2(18)
                           => n92, A2(17) => n96, A2(16) => n102, A2(15) => 
                           n108, A2(14) => n105, A2(13) => r113_DIFF_1_port, 
                           A2(12) => n128, A2(11) => X_Logic0_port, A2(10) => 
                           X_Logic0_port, A2(9) => X_Logic0_port, A2(8) => 
                           X_Logic0_port, A2(7) => X_Logic0_port, A2(6) => 
                           X_Logic0_port, A2(5) => X_Logic0_port, A2(4) => 
                           X_Logic0_port, A2(3) => X_Logic0_port, A2(2) => 
                           X_Logic0_port, A2(1) => X_Logic0_port, A2(0) => 
                           X_Logic0_port, A3(31) => n139, A3(30) => n139, 
                           A3(29) => n139, A3(28) => n133, A3(27) => A(14), 
                           A3(26) => A(13), A3(25) => A(12), A3(24) => A(11), 
                           A3(23) => A(10), A3(22) => A(9), A3(21) => A(8), 
                           A3(20) => A(7), A3(19) => A(6), A3(18) => A(5), 
                           A3(17) => A(4), A3(16) => A(3), A3(15) => A(2), 
                           A3(14) => n98, A3(13) => n128, A3(12) => 
                           X_Logic0_port, A3(11) => X_Logic0_port, A3(10) => 
                           X_Logic0_port, A3(9) => X_Logic0_port, A3(8) => 
                           X_Logic0_port, A3(7) => X_Logic0_port, A3(6) => 
                           X_Logic0_port, A3(5) => X_Logic0_port, A3(4) => 
                           X_Logic0_port, A3(3) => X_Logic0_port, A3(2) => 
                           X_Logic0_port, A3(1) => X_Logic0_port, A3(0) => 
                           X_Logic0_port, A4(31) => n68, A4(30) => n113, A4(29)
                           => n109, A4(28) => r113_DIFF_15_port, A4(27) => 
                           r113_DIFF_14_port, A4(26) => r113_DIFF_13_port, 
                           A4(25) => r113_DIFF_12_port, A4(24) => 
                           r113_DIFF_11_port, A4(23) => r113_DIFF_10_port, 
                           A4(22) => r113_DIFF_9_port, A4(21) => 
                           r113_DIFF_8_port, A4(20) => r113_DIFF_7_port, A4(19)
                           => n92, A4(18) => n96, A4(17) => n102, A4(16) => 
                           n108, A4(15) => n105, A4(14) => r113_DIFF_1_port, 
                           A4(13) => n128, A4(12) => X_Logic0_port, A4(11) => 
                           X_Logic0_port, A4(10) => X_Logic0_port, A4(9) => 
                           X_Logic0_port, A4(8) => X_Logic0_port, A4(7) => 
                           X_Logic0_port, A4(6) => X_Logic0_port, A4(5) => 
                           X_Logic0_port, A4(4) => X_Logic0_port, A4(3) => 
                           X_Logic0_port, A4(2) => X_Logic0_port, A4(1) => 
                           X_Logic0_port, A4(0) => X_Logic0_port, sel(2) => 
                           selVector_6_2_port, sel(1) => selVector_6_1_port, 
                           sel(0) => selVector_6_0_port, O(31) => 
                           muxOutVector_6_31_port, O(30) => 
                           muxOutVector_6_30_port, O(29) => 
                           muxOutVector_6_29_port, O(28) => 
                           muxOutVector_6_28_port, O(27) => 
                           muxOutVector_6_27_port, O(26) => 
                           muxOutVector_6_26_port, O(25) => 
                           muxOutVector_6_25_port, O(24) => 
                           muxOutVector_6_24_port, O(23) => 
                           muxOutVector_6_23_port, O(22) => 
                           muxOutVector_6_22_port, O(21) => 
                           muxOutVector_6_21_port, O(20) => 
                           muxOutVector_6_20_port, O(19) => 
                           muxOutVector_6_19_port, O(18) => 
                           muxOutVector_6_18_port, O(17) => 
                           muxOutVector_6_17_port, O(16) => 
                           muxOutVector_6_16_port, O(15) => 
                           muxOutVector_6_15_port, O(14) => 
                           muxOutVector_6_14_port, O(13) => 
                           muxOutVector_6_13_port, O(12) => 
                           muxOutVector_6_12_port, O(11) => 
                           muxOutVector_6_11_port, O(10) => 
                           muxOutVector_6_10_port, O(9) => 
                           muxOutVector_6_9_port, O(8) => muxOutVector_6_8_port
                           , O(7) => muxOutVector_6_7_port, O(6) => 
                           muxOutVector_6_6_port, O(5) => muxOutVector_6_5_port
                           , O(4) => muxOutVector_6_4_port, O(3) => 
                           muxOutVector_6_3_port, O(2) => muxOutVector_6_2_port
                           , O(1) => muxOutVector_6_1_port, O(0) => 
                           muxOutVector_6_0_port);
   eb_7 : BE_BLOCK_1 port map( b(2) => B(15), b(1) => B(14), b(0) => B(13), 
                           sel(2) => selVector_7_2_port, sel(1) => 
                           selVector_7_1_port, sel(0) => selVector_7_0_port);
   sum_7 : RCA_NBIT32_1 port map( A(31) => muxOutVector_7_31_port, A(30) => 
                           muxOutVector_7_30_port, A(29) => 
                           muxOutVector_7_29_port, A(28) => 
                           muxOutVector_7_28_port, A(27) => 
                           muxOutVector_7_27_port, A(26) => 
                           muxOutVector_7_26_port, A(25) => 
                           muxOutVector_7_25_port, A(24) => 
                           muxOutVector_7_24_port, A(23) => 
                           muxOutVector_7_23_port, A(22) => 
                           muxOutVector_7_22_port, A(21) => 
                           muxOutVector_7_21_port, A(20) => 
                           muxOutVector_7_20_port, A(19) => 
                           muxOutVector_7_19_port, A(18) => 
                           muxOutVector_7_18_port, A(17) => 
                           muxOutVector_7_17_port, A(16) => 
                           muxOutVector_7_16_port, A(15) => 
                           muxOutVector_7_15_port, A(14) => 
                           muxOutVector_7_14_port, A(13) => 
                           muxOutVector_7_13_port, A(12) => 
                           muxOutVector_7_12_port, A(11) => 
                           muxOutVector_7_11_port, A(10) => 
                           muxOutVector_7_10_port, A(9) => 
                           muxOutVector_7_9_port, A(8) => muxOutVector_7_8_port
                           , A(7) => muxOutVector_7_7_port, A(6) => 
                           muxOutVector_7_6_port, A(5) => muxOutVector_7_5_port
                           , A(4) => muxOutVector_7_4_port, A(3) => 
                           muxOutVector_7_3_port, A(2) => muxOutVector_7_2_port
                           , A(1) => muxOutVector_7_1_port, A(0) => 
                           muxOutVector_7_0_port, B(31) => sumVector_6_31_port,
                           B(30) => sumVector_6_30_port, B(29) => 
                           sumVector_6_29_port, B(28) => sumVector_6_28_port, 
                           B(27) => sumVector_6_27_port, B(26) => 
                           sumVector_6_26_port, B(25) => sumVector_6_25_port, 
                           B(24) => sumVector_6_24_port, B(23) => 
                           sumVector_6_23_port, B(22) => sumVector_6_22_port, 
                           B(21) => sumVector_6_21_port, B(20) => 
                           sumVector_6_20_port, B(19) => sumVector_6_19_port, 
                           B(18) => sumVector_6_18_port, B(17) => 
                           sumVector_6_17_port, B(16) => sumVector_6_16_port, 
                           B(15) => sumVector_6_15_port, B(14) => 
                           sumVector_6_14_port, B(13) => sumVector_6_13_port, 
                           B(12) => sumVector_6_12_port, B(11) => 
                           sumVector_6_11_port, B(10) => sumVector_6_10_port, 
                           B(9) => sumVector_6_9_port, B(8) => 
                           sumVector_6_8_port, B(7) => sumVector_6_7_port, B(6)
                           => sumVector_6_6_port, B(5) => sumVector_6_5_port, 
                           B(4) => sumVector_6_4_port, B(3) => 
                           sumVector_6_3_port, B(2) => sumVector_6_2_port, B(1)
                           => sumVector_6_1_port, B(0) => sumVector_6_0_port, 
                           Ci => X_Logic0_port, S(31) => P(31), S(30) => P(30),
                           S(29) => P(29), S(28) => P(28), S(27) => P(27), 
                           S(26) => P(26), S(25) => P(25), S(24) => P(24), 
                           S(23) => P(23), S(22) => P(22), S(21) => P(21), 
                           S(20) => P(20), S(19) => P(19), S(18) => P(18), 
                           S(17) => P(17), S(16) => P(16), S(15) => P(15), 
                           S(14) => P(14), S(13) => P(13), S(12) => P(12), 
                           S(11) => P(11), S(10) => P(10), S(9) => P(9), S(8) 
                           => P(8), S(7) => P(7), S(6) => P(6), S(5) => P(5), 
                           S(4) => P(4), S(3) => P(3), S(2) => P(2), S(1) => 
                           P(1), S(0) => P(0), Co => n_1006);
   mux_7 : MUX_5TO1_NBIT32_1 port map( A0(31) => X_Logic0_port, A0(30) => 
                           X_Logic0_port, A0(29) => X_Logic0_port, A0(28) => 
                           X_Logic0_port, A0(27) => X_Logic0_port, A0(26) => 
                           X_Logic0_port, A0(25) => X_Logic0_port, A0(24) => 
                           X_Logic0_port, A0(23) => X_Logic0_port, A0(22) => 
                           X_Logic0_port, A0(21) => X_Logic0_port, A0(20) => 
                           X_Logic0_port, A0(19) => X_Logic0_port, A0(18) => 
                           X_Logic0_port, A0(17) => X_Logic0_port, A0(16) => 
                           X_Logic0_port, A0(15) => X_Logic0_port, A0(14) => 
                           X_Logic0_port, A0(13) => X_Logic0_port, A0(12) => 
                           X_Logic0_port, A0(11) => X_Logic0_port, A0(10) => 
                           X_Logic0_port, A0(9) => X_Logic0_port, A0(8) => 
                           X_Logic0_port, A0(7) => X_Logic0_port, A0(6) => 
                           X_Logic0_port, A0(5) => X_Logic0_port, A0(4) => 
                           X_Logic0_port, A0(3) => X_Logic0_port, A0(2) => 
                           X_Logic0_port, A0(1) => X_Logic0_port, A0(0) => 
                           X_Logic0_port, A1(31) => n137, A1(30) => n134, 
                           A1(29) => n136, A1(28) => A(14), A1(27) => A(13), 
                           A1(26) => A(12), A1(25) => A(11), A1(24) => A(10), 
                           A1(23) => A(9), A1(22) => A(8), A1(21) => A(7), 
                           A1(20) => A(6), A1(19) => A(5), A1(18) => A(4), 
                           A1(17) => A(3), A1(16) => A(2), A1(15) => n98, 
                           A1(14) => n128, A1(13) => X_Logic0_port, A1(12) => 
                           X_Logic0_port, A1(11) => X_Logic0_port, A1(10) => 
                           X_Logic0_port, A1(9) => X_Logic0_port, A1(8) => 
                           X_Logic0_port, A1(7) => X_Logic0_port, A1(6) => 
                           X_Logic0_port, A1(5) => X_Logic0_port, A1(4) => 
                           X_Logic0_port, A1(3) => X_Logic0_port, A1(2) => 
                           X_Logic0_port, A1(1) => X_Logic0_port, A1(0) => 
                           X_Logic0_port, A2(31) => n120, A2(30) => n110, 
                           A2(29) => r113_DIFF_15_port, A2(28) => 
                           r113_DIFF_14_port, A2(27) => r113_DIFF_13_port, 
                           A2(26) => r113_DIFF_12_port, A2(25) => 
                           r113_DIFF_11_port, A2(24) => r113_DIFF_10_port, 
                           A2(23) => r113_DIFF_9_port, A2(22) => 
                           r113_DIFF_8_port, A2(21) => r113_DIFF_7_port, A2(20)
                           => n92, A2(19) => n96, A2(18) => n102, A2(17) => 
                           n108, A2(16) => n105, A2(15) => r113_DIFF_1_port, 
                           A2(14) => n128, A2(13) => X_Logic0_port, A2(12) => 
                           X_Logic0_port, A2(11) => X_Logic0_port, A2(10) => 
                           X_Logic0_port, A2(9) => X_Logic0_port, A2(8) => 
                           X_Logic0_port, A2(7) => X_Logic0_port, A2(6) => 
                           X_Logic0_port, A2(5) => X_Logic0_port, A2(4) => 
                           X_Logic0_port, A2(3) => X_Logic0_port, A2(2) => 
                           X_Logic0_port, A2(1) => X_Logic0_port, A2(0) => 
                           X_Logic0_port, A3(31) => n139, A3(30) => n139, 
                           A3(29) => A(14), A3(28) => A(13), A3(27) => A(12), 
                           A3(26) => A(11), A3(25) => A(10), A3(24) => A(9), 
                           A3(23) => A(8), A3(22) => A(7), A3(21) => A(6), 
                           A3(20) => A(5), A3(19) => A(4), A3(18) => A(3), 
                           A3(17) => A(2), A3(16) => n98, A3(15) => n128, 
                           A3(14) => X_Logic0_port, A3(13) => X_Logic0_port, 
                           A3(12) => X_Logic0_port, A3(11) => X_Logic0_port, 
                           A3(10) => X_Logic0_port, A3(9) => X_Logic0_port, 
                           A3(8) => X_Logic0_port, A3(7) => X_Logic0_port, 
                           A3(6) => X_Logic0_port, A3(5) => X_Logic0_port, 
                           A3(4) => X_Logic0_port, A3(3) => X_Logic0_port, 
                           A3(2) => X_Logic0_port, A3(1) => X_Logic0_port, 
                           A3(0) => X_Logic0_port, A4(31) => n127, A4(30) => 
                           r113_DIFF_15_port, A4(29) => r113_DIFF_14_port, 
                           A4(28) => r113_DIFF_13_port, A4(27) => 
                           r113_DIFF_12_port, A4(26) => r113_DIFF_11_port, 
                           A4(25) => r113_DIFF_10_port, A4(24) => 
                           r113_DIFF_9_port, A4(23) => r113_DIFF_8_port, A4(22)
                           => r113_DIFF_7_port, A4(21) => n92, A4(20) => n96, 
                           A4(19) => n102, A4(18) => n108, A4(17) => n105, 
                           A4(16) => r113_DIFF_1_port, A4(15) => n128, A4(14) 
                           => X_Logic0_port, A4(13) => X_Logic0_port, A4(12) =>
                           X_Logic0_port, A4(11) => X_Logic0_port, A4(10) => 
                           X_Logic0_port, A4(9) => X_Logic0_port, A4(8) => 
                           X_Logic0_port, A4(7) => X_Logic0_port, A4(6) => 
                           X_Logic0_port, A4(5) => X_Logic0_port, A4(4) => 
                           X_Logic0_port, A4(3) => X_Logic0_port, A4(2) => 
                           X_Logic0_port, A4(1) => X_Logic0_port, A4(0) => 
                           X_Logic0_port, sel(2) => selVector_7_2_port, sel(1) 
                           => selVector_7_1_port, sel(0) => selVector_7_0_port,
                           O(31) => muxOutVector_7_31_port, O(30) => 
                           muxOutVector_7_30_port, O(29) => 
                           muxOutVector_7_29_port, O(28) => 
                           muxOutVector_7_28_port, O(27) => 
                           muxOutVector_7_27_port, O(26) => 
                           muxOutVector_7_26_port, O(25) => 
                           muxOutVector_7_25_port, O(24) => 
                           muxOutVector_7_24_port, O(23) => 
                           muxOutVector_7_23_port, O(22) => 
                           muxOutVector_7_22_port, O(21) => 
                           muxOutVector_7_21_port, O(20) => 
                           muxOutVector_7_20_port, O(19) => 
                           muxOutVector_7_19_port, O(18) => 
                           muxOutVector_7_18_port, O(17) => 
                           muxOutVector_7_17_port, O(16) => 
                           muxOutVector_7_16_port, O(15) => 
                           muxOutVector_7_15_port, O(14) => 
                           muxOutVector_7_14_port, O(13) => 
                           muxOutVector_7_13_port, O(12) => 
                           muxOutVector_7_12_port, O(11) => 
                           muxOutVector_7_11_port, O(10) => 
                           muxOutVector_7_10_port, O(9) => 
                           muxOutVector_7_9_port, O(8) => muxOutVector_7_8_port
                           , O(7) => muxOutVector_7_7_port, O(6) => 
                           muxOutVector_7_6_port, O(5) => muxOutVector_7_5_port
                           , O(4) => muxOutVector_7_4_port, O(3) => 
                           muxOutVector_7_3_port, O(2) => muxOutVector_7_2_port
                           , O(1) => muxOutVector_7_1_port, O(0) => 
                           muxOutVector_7_0_port);
   U5 : OAI21_X2 port map( B1 => n84, B2 => n145, A => n85, ZN => 
                           r113_DIFF_15_port);
   U6 : XNOR2_X2 port map( A => A(14), B => n86, ZN => r113_DIFF_14_port);
   U43 : XNOR2_X1 port map( A => n97, B => A(3), ZN => r113_DIFF_3_port);
   U44 : NOR2_X1 port map( A1 => n80, A2 => A(5), ZN => n79);
   U45 : NOR2_X1 port map( A1 => n76, A2 => A(9), ZN => n90);
   U46 : BUF_X1 port map( A => n109, Z => n124);
   U47 : XNOR2_X1 port map( A => A(1), B => A(0), ZN => n91);
   U48 : INV_X2 port map( A => n91, ZN => r113_DIFF_1_port);
   U49 : NOR2_X1 port map( A1 => A(3), A2 => A(2), ZN => n101);
   U50 : BUF_X1 port map( A => r113_DIFF_5_port, Z => n96);
   U51 : BUF_X2 port map( A => r113_DIFF_6_port, Z => n92);
   U52 : XNOR2_X1 port map( A => n79, B => A(6), ZN => r113_DIFF_6_port);
   U53 : BUF_X1 port map( A => A(0), Z => n93);
   U54 : BUF_X1 port map( A => A(0), Z => n94);
   U55 : BUF_X1 port map( A => A(0), Z => n129);
   U56 : CLKBUF_X1 port map( A => r113_DIFF_4_port, Z => n95);
   U57 : XOR2_X1 port map( A => n81, B => n74, Z => r113_DIFF_4_port);
   U58 : BUF_X2 port map( A => r113_DIFF_2_port, Z => n105);
   U59 : XOR2_X1 port map( A => n80, B => A(5), Z => r113_DIFF_5_port);
   U60 : XNOR2_X1 port map( A => n106, B => A(2), ZN => r113_DIFF_2_port);
   U61 : AND2_X1 port map( A1 => n83, A2 => n99, ZN => n97);
   U62 : BUF_X1 port map( A => A(1), Z => n98);
   U63 : INV_X1 port map( A => A(2), ZN => n99);
   U64 : NOR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n100);
   U65 : AND2_X1 port map( A1 => n100, A2 => n101, ZN => n81);
   U66 : BUF_X2 port map( A => n111, Z => n109);
   U67 : CLKBUF_X1 port map( A => n95, Z => n102);
   U68 : BUF_X1 port map( A => A(0), Z => n103);
   U69 : BUF_X1 port map( A => A(0), Z => n104);
   U70 : BUF_X1 port map( A => A(0), Z => n130);
   U71 : BUF_X4 port map( A => A(0), Z => n128);
   U72 : BUF_X2 port map( A => n110, Z => n127);
   U73 : BUF_X2 port map( A => n68, Z => n111);
   U74 : INV_X1 port map( A => n131, ZN => n142);
   U75 : INV_X1 port map( A => n131, ZN => n143);
   U76 : INV_X1 port map( A => n132, ZN => n144);
   U77 : INV_X1 port map( A => n131, ZN => n141);
   U78 : BUF_X1 port map( A => A(15), Z => n132);
   U79 : BUF_X1 port map( A => A(15), Z => n131);
   U80 : BUF_X1 port map( A => n127, Z => n112);
   U81 : CLKBUF_X1 port map( A => n126, Z => n115);
   U82 : BUF_X1 port map( A => n124, Z => n121);
   U83 : BUF_X1 port map( A => n125, Z => n118);
   U84 : CLKBUF_X1 port map( A => n126, Z => n116);
   U85 : CLKBUF_X1 port map( A => n125, Z => n120);
   U86 : CLKBUF_X1 port map( A => n125, Z => n119);
   U87 : CLKBUF_X1 port map( A => n124, Z => n122);
   U88 : CLKBUF_X1 port map( A => n124, Z => n123);
   U89 : BUF_X1 port map( A => n111, Z => n110);
   U90 : INV_X1 port map( A => n85, ZN => n68);
   U91 : INV_X1 port map( A => n142, ZN => n135);
   U92 : INV_X1 port map( A => n143, ZN => n138);
   U93 : INV_X1 port map( A => n143, ZN => n137);
   U94 : INV_X1 port map( A => n142, ZN => n136);
   U95 : INV_X1 port map( A => n144, ZN => n139);
   U96 : INV_X1 port map( A => n142, ZN => n134);
   U97 : INV_X1 port map( A => n145, ZN => n140);
   U98 : INV_X1 port map( A => n141, ZN => n133);
   U99 : NAND2_X1 port map( A1 => n81, A2 => n74, ZN => n80);
   U100 : NAND2_X1 port map( A1 => n79, A2 => n73, ZN => n78);
   U101 : NAND2_X1 port map( A1 => n90, A2 => n71, ZN => n89);
   U102 : INV_X1 port map( A => n132, ZN => n145);
   U103 : NOR2_X1 port map( A1 => n78, A2 => A(7), ZN => n77);
   U104 : INV_X1 port map( A => A(4), ZN => n74);
   U105 : NOR2_X1 port map( A1 => n89, A2 => A(11), ZN => n88);
   U106 : INV_X1 port map( A => A(6), ZN => n73);
   U107 : INV_X1 port map( A => A(8), ZN => n72);
   U108 : INV_X1 port map( A => A(10), ZN => n71);
   U109 : INV_X1 port map( A => A(12), ZN => n70);
   U110 : BUF_X2 port map( A => n109, Z => n125);
   U111 : BUF_X2 port map( A => n109, Z => n126);
   U112 : BUF_X1 port map( A => n126, Z => n117);
   U113 : CLKBUF_X1 port map( A => n127, Z => n113);
   U114 : CLKBUF_X1 port map( A => n127, Z => n114);
   U115 : NOR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n106);
   U116 : CLKBUF_X1 port map( A => r113_DIFF_3_port, Z => n107);
   U117 : CLKBUF_X1 port map( A => n107, Z => n108);
   U118 : NAND2_X1 port map( A1 => n77, A2 => n72, ZN => n76);
   U119 : NOR2_X1 port map( A1 => A(1), A2 => n103, ZN => n83);
   U120 : NAND2_X1 port map( A1 => n145, A2 => n84, ZN => n85);
   U121 : NOR2_X1 port map( A1 => A(13), A2 => n87, ZN => n86);
   U122 : OR3_X2 port map( A1 => A(13), A2 => A(14), A3 => n87, ZN => n84);
   U123 : NAND2_X1 port map( A1 => n88, A2 => n70, ZN => n87);
   U124 : XOR2_X2 port map( A => n90, B => n71, Z => r113_DIFF_10_port);
   U125 : XOR2_X2 port map( A => n89, B => A(11), Z => r113_DIFF_11_port);
   U126 : XOR2_X2 port map( A => n88, B => n70, Z => r113_DIFF_12_port);
   U127 : XOR2_X2 port map( A => n87, B => A(13), Z => r113_DIFF_13_port);
   U128 : XOR2_X2 port map( A => n78, B => A(7), Z => r113_DIFF_7_port);
   U129 : XOR2_X2 port map( A => n77, B => n72, Z => r113_DIFF_8_port);
   U130 : XOR2_X2 port map( A => n76, B => A(9), Z => r113_DIFF_9_port);

end SYN_MIXED;
