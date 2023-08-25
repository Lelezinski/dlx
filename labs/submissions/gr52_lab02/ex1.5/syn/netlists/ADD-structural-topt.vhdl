
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_25 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_25;

architecture SYN_BEHAVIORAL of PG_BLOCK_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => G_right, A2 => G_left, ZN => n5);
   U2 : AOI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => G_out);
   U3 : INV_X1 port map( A => P_left, ZN => n3);
   U4 : INV_X1 port map( A => G_left, ZN => n4);
   U5 : AND2_X1 port map( A1 => P_left, A2 => P_right, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_24 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_24;

architecture SYN_BEHAVIORAL of PG_BLOCK_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_23 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_23;

architecture SYN_BEHAVIORAL of PG_BLOCK_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => G_right, A2 => G_left, ZN => n5);
   U2 : AOI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => G_out);
   U3 : INV_X1 port map( A => P_left, ZN => n3);
   U4 : INV_X1 port map( A => G_left, ZN => n4);
   U5 : AND2_X1 port map( A1 => P_left, A2 => P_right, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_22 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_22;

architecture SYN_BEHAVIORAL of PG_BLOCK_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_21 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_21;

architecture SYN_BEHAVIORAL of PG_BLOCK_21 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_left, A2 => P_right, ZN => P_out);
   U2 : INV_X1 port map( A => n3, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_20 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_20;

architecture SYN_BEHAVIORAL of PG_BLOCK_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_19 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_19;

architecture SYN_BEHAVIORAL of PG_BLOCK_19 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : INV_X1 port map( A => n3, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_18 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_18;

architecture SYN_BEHAVIORAL of PG_BLOCK_18 is

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
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => G_out);
   U2 : INV_X1 port map( A => P_left, ZN => n3);
   U3 : INV_X1 port map( A => G_left, ZN => n4);
   U4 : NOR2_X1 port map( A1 => G_right, A2 => G_left, ZN => n5);
   U5 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_17 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_17;

architecture SYN_BEHAVIORAL of PG_BLOCK_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => P_left, A2 => G_right, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n5, ZN => G_out);
   U3 : AND2_X1 port map( A1 => P_left, A2 => P_right, ZN => P_out);
   U4 : INV_X1 port map( A => G_left, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_16 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_16;

architecture SYN_BEHAVIORAL of PG_BLOCK_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_15 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_15;

architecture SYN_BEHAVIORAL of PG_BLOCK_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_14 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_14;

architecture SYN_BEHAVIORAL of PG_BLOCK_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_13 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_13;

architecture SYN_BEHAVIORAL of PG_BLOCK_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => P_left, Z => n3);
   U2 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n4);
   U3 : AND2_X1 port map( A1 => n3, A2 => P_right, ZN => P_out);
   U4 : INV_X1 port map( A => n4, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_12 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_12;

architecture SYN_BEHAVIORAL of PG_BLOCK_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => G_out);
   U3 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_11 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_11;

architecture SYN_BEHAVIORAL of PG_BLOCK_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => G_out);
   U3 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_10 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_10;

architecture SYN_BEHAVIORAL of PG_BLOCK_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_9 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_9;

architecture SYN_BEHAVIORAL of PG_BLOCK_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => G_out);
   U2 : NAND2_X1 port map( A1 => P_left, A2 => G_right, ZN => n4);
   U3 : INV_X1 port map( A => G_left, ZN => n5);
   U4 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_8 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_8;

architecture SYN_BEHAVIORAL of PG_BLOCK_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => G_right, A2 => G_left, ZN => n3);
   U2 : NOR2_X1 port map( A1 => P_left, A2 => G_left, ZN => n4);
   U3 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => G_out);
   U4 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_7 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_7;

architecture SYN_BEHAVIORAL of PG_BLOCK_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => G_out);
   U2 : INV_X1 port map( A => P_left, ZN => n3);
   U3 : INV_X1 port map( A => G_right, ZN => n4);
   U4 : INV_X1 port map( A => G_left, ZN => n5);
   U5 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_6 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_6;

architecture SYN_BEHAVIORAL of PG_BLOCK_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_left, A2 => P_right, ZN => P_out);
   U2 : INV_X1 port map( A => n3, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_5 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_5;

architecture SYN_BEHAVIORAL of PG_BLOCK_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : INV_X1 port map( A => G_left, ZN => n4);
   U3 : NAND2_X1 port map( A1 => G_right, A2 => P_left, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_4 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_4;

architecture SYN_BEHAVIORAL of PG_BLOCK_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => G_out);
   U3 : INV_X1 port map( A => G_left, ZN => n3);
   U4 : NAND2_X1 port map( A1 => G_right, A2 => P_left, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_3 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_3;

architecture SYN_BEHAVIORAL of PG_BLOCK_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => G_out);
   U3 : INV_X1 port map( A => G_left, ZN => n3);
   U4 : NAND2_X1 port map( A1 => G_right, A2 => P_left, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_2 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_2;

architecture SYN_BEHAVIORAL of PG_BLOCK_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : INV_X1 port map( A => n3, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_1 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_1;

architecture SYN_BEHAVIORAL of PG_BLOCK_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);
   U2 : INV_X1 port map( A => G_left, ZN => n4);
   U3 : NAND2_X1 port map( A1 => G_right, A2 => P_left, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_7 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_7;

architecture SYN_BEHAVIORAL of G_BLOCK_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => G_out);
   U2 : NAND2_X1 port map( A1 => G_right, A2 => P_left, ZN => n4);
   U3 : INV_X1 port map( A => G_left, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_6 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_6;

architecture SYN_BEHAVIORAL of G_BLOCK_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_5 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_5;

architecture SYN_BEHAVIORAL of G_BLOCK_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => G_out);
   U2 : NAND2_X1 port map( A1 => G_right, A2 => P_left, ZN => n4);
   U3 : INV_X1 port map( A => G_left, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_4 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_4;

architecture SYN_BEHAVIORAL of G_BLOCK_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_3 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_3;

architecture SYN_BEHAVIORAL of G_BLOCK_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_2 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_2;

architecture SYN_BEHAVIORAL of G_BLOCK_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_1 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_1;

architecture SYN_BEHAVIORAL of G_BLOCK_1 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => G_out);
   U2 : NOR2_X1 port map( A1 => G_left, A2 => P_left, ZN => n4);
   U3 : NOR2_X1 port map( A1 => G_right, A2 => G_left, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_8 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_8;

architecture SYN_BEHAVIORAL of G_BLOCK_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => G_out);
   U2 : INV_X1 port map( A => P_left, ZN => n3);
   U3 : INV_X1 port map( A => G_right, ZN => n4);
   U4 : INV_X1 port map( A => G_left, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_26 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_26;

architecture SYN_BEHAVIORAL of PG_BLOCK_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => G_out);
   U3 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_0 is

   port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : out 
         std_logic);

end PG_BLOCK_0;

architecture SYN_BEHAVIORAL of PG_BLOCK_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => G_out);
   U3 : AND2_X1 port map( A1 => P_right, A2 => P_left, ZN => P_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_0 is

   port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);

end G_BLOCK_0;

architecture SYN_BEHAVIORAL of G_BLOCK_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_left, B2 => G_right, A => G_left, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => G_out);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  g, p :
         out std_logic_vector (32 downto 1));

end PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_BEHAVIORAL of PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19 : std_logic;

begin
   
   U37 : XOR2_X1 port map( A => B(8), B => A(8), Z => p(9));
   U39 : XOR2_X1 port map( A => B(6), B => A(6), Z => p(7));
   U40 : XOR2_X1 port map( A => B(5), B => A(5), Z => p(6));
   U41 : XOR2_X1 port map( A => B(4), B => A(4), Z => p(5));
   U43 : XOR2_X1 port map( A => B(2), B => A(2), Z => p(3));
   U45 : XOR2_X1 port map( A => B(30), B => A(30), Z => p(31));
   U46 : XOR2_X1 port map( A => B(29), B => A(29), Z => p(30));
   U47 : XOR2_X1 port map( A => B(1), B => A(1), Z => p(2));
   U48 : XOR2_X1 port map( A => B(28), B => A(28), Z => p(29));
   U49 : XOR2_X1 port map( A => B(27), B => A(27), Z => p(28));
   U50 : XOR2_X1 port map( A => B(26), B => A(26), Z => p(27));
   U51 : XOR2_X1 port map( A => B(25), B => A(25), Z => p(26));
   U52 : XOR2_X1 port map( A => B(24), B => A(24), Z => p(25));
   U54 : XOR2_X1 port map( A => B(22), B => A(22), Z => p(23));
   U55 : XOR2_X1 port map( A => B(21), B => A(21), Z => p(22));
   U56 : XOR2_X1 port map( A => B(20), B => A(20), Z => p(21));
   U57 : XOR2_X1 port map( A => B(19), B => A(19), Z => p(20));
   U58 : XOR2_X1 port map( A => B(18), B => A(18), Z => p(19));
   U59 : XOR2_X1 port map( A => B(17), B => A(17), Z => p(18));
   U60 : XOR2_X1 port map( A => B(16), B => A(16), Z => p(17));
   U62 : XOR2_X1 port map( A => B(14), B => A(14), Z => p(15));
   U63 : XOR2_X1 port map( A => B(13), B => A(13), Z => p(14));
   U64 : XOR2_X1 port map( A => B(12), B => A(12), Z => p(13));
   U66 : XOR2_X1 port map( A => B(10), B => A(10), Z => p(11));
   U67 : XOR2_X1 port map( A => B(9), B => A(9), Z => p(10));
   U1 : XOR2_X1 port map( A => A(15), B => B(15), Z => p(16));
   U2 : XOR2_X1 port map( A => A(3), B => B(3), Z => p(4));
   U3 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => g(4));
   U4 : NAND2_X1 port map( A1 => n5, A2 => B(11), ZN => n6);
   U5 : NAND2_X1 port map( A1 => n4, A2 => A(11), ZN => n7);
   U6 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => p(12));
   U7 : INV_X1 port map( A => B(11), ZN => n4);
   U8 : INV_X1 port map( A => A(11), ZN => n5);
   U9 : NAND2_X1 port map( A1 => n9, A2 => B(7), ZN => n10);
   U10 : NAND2_X1 port map( A1 => n8, A2 => A(7), ZN => n11);
   U11 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => p(8));
   U12 : INV_X1 port map( A => B(7), ZN => n8);
   U13 : INV_X1 port map( A => A(7), ZN => n9);
   U14 : NAND2_X1 port map( A1 => n13, A2 => B(31), ZN => n14);
   U15 : NAND2_X1 port map( A1 => n12, A2 => A(31), ZN => n15);
   U16 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => p(32));
   U17 : INV_X1 port map( A => B(31), ZN => n12);
   U18 : INV_X1 port map( A => A(31), ZN => n13);
   U19 : NAND2_X1 port map( A1 => n17, A2 => B(23), ZN => n18);
   U20 : NAND2_X1 port map( A1 => n16, A2 => A(23), ZN => n19);
   U21 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => p(24));
   U22 : INV_X1 port map( A => B(23), ZN => n16);
   U23 : INV_X1 port map( A => A(23), ZN => n17);
   U24 : XNOR2_X1 port map( A => n2, B => A(0), ZN => p(1));
   U25 : AND2_X1 port map( A1 => B(14), A2 => A(14), ZN => g(15));
   U26 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => g(7));
   U27 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => g(8));
   U28 : AND2_X1 port map( A1 => B(10), A2 => A(10), ZN => g(11));
   U29 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => g(12));
   U30 : AND2_X1 port map( A1 => B(30), A2 => A(30), ZN => g(31));
   U31 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => g(32));
   U32 : AND2_X1 port map( A1 => B(12), A2 => A(12), ZN => g(13));
   U33 : AND2_X1 port map( A1 => B(13), A2 => A(13), ZN => g(14));
   U34 : AND2_X1 port map( A1 => B(26), A2 => A(26), ZN => g(27));
   U35 : AND2_X1 port map( A1 => B(27), A2 => A(27), ZN => g(28));
   U36 : AND2_X1 port map( A1 => B(8), A2 => A(8), ZN => g(9));
   U38 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => g(10));
   U42 : AND2_X1 port map( A1 => B(22), A2 => A(22), ZN => g(23));
   U44 : AND2_X1 port map( A1 => B(23), A2 => A(23), ZN => g(24));
   U53 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => g(2));
   U61 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n3);
   U65 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => g(3));
   U68 : AND2_X1 port map( A1 => B(18), A2 => A(18), ZN => g(19));
   U69 : AND2_X1 port map( A1 => B(19), A2 => A(19), ZN => g(20));
   U70 : AND2_X1 port map( A1 => B(20), A2 => A(20), ZN => g(21));
   U71 : AND2_X1 port map( A1 => B(21), A2 => A(21), ZN => g(22));
   U72 : AND2_X1 port map( A1 => B(16), A2 => A(16), ZN => g(17));
   U73 : AND2_X1 port map( A1 => B(17), A2 => A(17), ZN => g(18));
   U74 : AND2_X1 port map( A1 => B(24), A2 => A(24), ZN => g(25));
   U75 : AND2_X1 port map( A1 => B(25), A2 => A(25), ZN => g(26));
   U76 : INV_X1 port map( A => B(0), ZN => n2);
   U77 : INV_X1 port map( A => A(0), ZN => n1);
   U78 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => g(6));
   U79 : AND2_X1 port map( A1 => B(29), A2 => A(29), ZN => g(30));
   U80 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => g(5));
   U81 : AND2_X1 port map( A1 => B(28), A2 => A(28), ZN => g(29));
   U82 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => g(16));
   U83 : OAI21_X1 port map( B1 => n2, B2 => n1, A => n3, ZN => g(1));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_STRUCTURAL of SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   component CARRY_SELECT
      port( ci : in std_logic;  A, B : in std_logic_vector (3 downto 0);  sum :
            out std_logic_vector (3 downto 0));
   end component;

begin
   
   cs_0 : CARRY_SELECT port map( ci => Ci(0), A(3) => A(3), A(2) => A(2), A(1) 
                           => A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), 
                           B(1) => B(1), B(0) => B(0), sum(3) => S(3), sum(2) 
                           => S(2), sum(1) => S(1), sum(0) => S(0));
   cs_1 : CARRY_SELECT port map( ci => Ci(1), A(3) => A(7), A(2) => A(6), A(1) 
                           => A(5), A(0) => A(4), B(3) => B(7), B(2) => B(6), 
                           B(1) => B(5), B(0) => B(4), sum(3) => S(7), sum(2) 
                           => S(6), sum(1) => S(5), sum(0) => S(4));
   cs_2 : CARRY_SELECT port map( ci => Ci(2), A(3) => A(11), A(2) => A(10), 
                           A(1) => A(9), A(0) => A(8), B(3) => B(11), B(2) => 
                           B(10), B(1) => B(9), B(0) => B(8), sum(3) => S(11), 
                           sum(2) => S(10), sum(1) => S(9), sum(0) => S(8));
   cs_3 : CARRY_SELECT port map( ci => Ci(3), A(3) => A(15), A(2) => A(14), 
                           A(1) => A(13), A(0) => A(12), B(3) => B(15), B(2) =>
                           B(14), B(1) => B(13), B(0) => B(12), sum(3) => S(15)
                           , sum(2) => S(14), sum(1) => S(13), sum(0) => S(12))
                           ;
   cs_4 : CARRY_SELECT port map( ci => Ci(4), A(3) => A(19), A(2) => A(18), 
                           A(1) => A(17), A(0) => A(16), B(3) => B(19), B(2) =>
                           B(18), B(1) => B(17), B(0) => B(16), sum(3) => S(19)
                           , sum(2) => S(18), sum(1) => S(17), sum(0) => S(16))
                           ;
   cs_5 : CARRY_SELECT port map( ci => Ci(5), A(3) => A(23), A(2) => A(22), 
                           A(1) => A(21), A(0) => A(20), B(3) => B(23), B(2) =>
                           B(22), B(1) => B(21), B(0) => B(20), sum(3) => S(23)
                           , sum(2) => S(22), sum(1) => S(21), sum(0) => S(20))
                           ;
   cs_6 : CARRY_SELECT port map( ci => Ci(6), A(3) => A(27), A(2) => A(26), 
                           A(1) => A(25), A(0) => A(24), B(3) => B(27), B(2) =>
                           B(26), B(1) => B(25), B(0) => B(24), sum(3) => S(27)
                           , sum(2) => S(26), sum(1) => S(25), sum(0) => S(24))
                           ;
   cs_7 : CARRY_SELECT port map( ci => Ci(7), A(3) => A(31), A(2) => A(30), 
                           A(1) => A(29), A(0) => A(28), B(3) => B(31), B(2) =>
                           B(30), B(1) => B(29), B(0) => B(28), sum(3) => S(31)
                           , sum(2) => S(30), sum(1) => S(29), sum(0) => S(28))
                           ;

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component G_BLOCK_1
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component G_BLOCK_2
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component G_BLOCK_3
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component G_BLOCK_4
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component PG_BLOCK_1
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_2
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component G_BLOCK_5
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component G_BLOCK_6
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component PG_BLOCK_3
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_4
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_5
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component G_BLOCK_7
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component PG_BLOCK_6
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_7
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_8
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_9
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_10
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_11
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_12
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component G_BLOCK_8
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component PG_BLOCK_13
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_14
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_15
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_16
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_17
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_18
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_19
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_20
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_21
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_22
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_23
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_24
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_25
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_26
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component PG_BLOCK_0
      port( G_left, P_left, G_right, P_right : in std_logic;  P_out, G_out : 
            out std_logic);
   end component;
   
   component G_BLOCK_0
      port( G_left, P_left, G_right : in std_logic;  G_out : out std_logic);
   end component;
   
   component PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  g, 
            p : out std_logic_vector (32 downto 1));
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, n6, Co_2_port, n7, 
      Co_0_port, pg_outputs_1_32_port, pg_outputs_1_31_port, 
      pg_outputs_1_30_port, pg_outputs_1_29_port, pg_outputs_1_28_port, 
      pg_outputs_1_27_port, pg_outputs_1_26_port, pg_outputs_1_25_port, 
      pg_outputs_1_24_port, pg_outputs_1_23_port, pg_outputs_1_22_port, 
      pg_outputs_1_21_port, pg_outputs_1_20_port, pg_outputs_1_19_port, 
      pg_outputs_1_18_port, pg_outputs_1_17_port, pg_outputs_1_16_port, 
      pg_outputs_1_15_port, pg_outputs_1_14_port, pg_outputs_1_13_port, 
      pg_outputs_1_12_port, pg_outputs_1_11_port, pg_outputs_1_10_port, 
      pg_outputs_1_9_port, pg_outputs_1_8_port, pg_outputs_1_7_port, 
      pg_outputs_1_6_port, pg_outputs_1_5_port, pg_outputs_1_4_port, 
      pg_outputs_1_3_port, pg_outputs_1_2_port, pg_outputs_1_1_port, 
      pg_outputs_0_32_port, pg_outputs_0_31_port, pg_outputs_0_30_port, 
      pg_outputs_0_29_port, pg_outputs_0_28_port, pg_outputs_0_27_port, 
      pg_outputs_0_26_port, pg_outputs_0_25_port, pg_outputs_0_24_port, 
      pg_outputs_0_23_port, pg_outputs_0_22_port, pg_outputs_0_21_port, 
      pg_outputs_0_20_port, pg_outputs_0_19_port, pg_outputs_0_18_port, 
      pg_outputs_0_17_port, pg_outputs_0_16_port, pg_outputs_0_15_port, 
      pg_outputs_0_14_port, pg_outputs_0_13_port, pg_outputs_0_12_port, 
      pg_outputs_0_11_port, pg_outputs_0_10_port, pg_outputs_0_9_port, 
      pg_outputs_0_8_port, pg_outputs_0_7_port, pg_outputs_0_6_port, 
      pg_outputs_0_5_port, pg_outputs_0_4_port, pg_outputs_0_3_port, 
      pg_outputs_0_2_port, internal_g_outputs_1_16_port, 
      internal_g_outputs_1_15_port, internal_g_outputs_1_14_port, 
      internal_g_outputs_1_13_port, internal_g_outputs_1_12_port, 
      internal_g_outputs_1_11_port, internal_g_outputs_1_10_port, 
      internal_g_outputs_1_9_port, internal_g_outputs_1_8_port, 
      internal_g_outputs_1_7_port, internal_g_outputs_1_6_port, 
      internal_g_outputs_1_5_port, internal_g_outputs_1_4_port, 
      internal_g_outputs_1_3_port, internal_g_outputs_1_2_port, 
      internal_g_outputs_1_1_port, internal_g_outputs_2_16_port, 
      internal_g_outputs_2_14_port, internal_g_outputs_2_12_port, 
      internal_g_outputs_2_10_port, internal_g_outputs_2_8_port, 
      internal_g_outputs_2_6_port, internal_g_outputs_2_4_port, 
      internal_g_outputs_3_16_port, internal_g_outputs_3_12_port, 
      internal_g_outputs_3_8_port, internal_g_outputs_4_16_port, 
      internal_g_outputs_4_14_port, internal_p_outputs_1_16_port, 
      internal_p_outputs_1_15_port, internal_p_outputs_1_14_port, 
      internal_p_outputs_1_13_port, internal_p_outputs_1_12_port, 
      internal_p_outputs_1_11_port, internal_p_outputs_1_10_port, 
      internal_p_outputs_1_9_port, internal_p_outputs_1_8_port, 
      internal_p_outputs_1_7_port, internal_p_outputs_1_6_port, 
      internal_p_outputs_1_5_port, internal_p_outputs_1_4_port, 
      internal_p_outputs_1_3_port, internal_p_outputs_1_2_port, 
      internal_p_outputs_2_16_port, internal_p_outputs_2_14_port, 
      internal_p_outputs_2_12_port, internal_p_outputs_2_10_port, 
      internal_p_outputs_2_8_port, internal_p_outputs_2_6_port, 
      internal_p_outputs_2_4_port, internal_p_outputs_3_16_port, 
      internal_p_outputs_3_12_port, internal_p_outputs_3_8_port, 
      internal_p_outputs_4_16_port, internal_p_outputs_4_14_port, n1, n2, 
      Co_1_port, n4, Co_3_port, n_1000 : std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   pgn : PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), A(30) =>
                           A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Cin => Cin, g(32) => 
                           pg_outputs_1_32_port, g(31) => pg_outputs_1_31_port,
                           g(30) => pg_outputs_1_30_port, g(29) => 
                           pg_outputs_1_29_port, g(28) => pg_outputs_1_28_port,
                           g(27) => pg_outputs_1_27_port, g(26) => 
                           pg_outputs_1_26_port, g(25) => pg_outputs_1_25_port,
                           g(24) => pg_outputs_1_24_port, g(23) => 
                           pg_outputs_1_23_port, g(22) => pg_outputs_1_22_port,
                           g(21) => pg_outputs_1_21_port, g(20) => 
                           pg_outputs_1_20_port, g(19) => pg_outputs_1_19_port,
                           g(18) => pg_outputs_1_18_port, g(17) => 
                           pg_outputs_1_17_port, g(16) => pg_outputs_1_16_port,
                           g(15) => pg_outputs_1_15_port, g(14) => 
                           pg_outputs_1_14_port, g(13) => pg_outputs_1_13_port,
                           g(12) => pg_outputs_1_12_port, g(11) => 
                           pg_outputs_1_11_port, g(10) => pg_outputs_1_10_port,
                           g(9) => pg_outputs_1_9_port, g(8) => 
                           pg_outputs_1_8_port, g(7) => pg_outputs_1_7_port, 
                           g(6) => pg_outputs_1_6_port, g(5) => 
                           pg_outputs_1_5_port, g(4) => pg_outputs_1_4_port, 
                           g(3) => pg_outputs_1_3_port, g(2) => 
                           pg_outputs_1_2_port, g(1) => pg_outputs_1_1_port, 
                           p(32) => pg_outputs_0_32_port, p(31) => 
                           pg_outputs_0_31_port, p(30) => pg_outputs_0_30_port,
                           p(29) => pg_outputs_0_29_port, p(28) => 
                           pg_outputs_0_28_port, p(27) => pg_outputs_0_27_port,
                           p(26) => pg_outputs_0_26_port, p(25) => 
                           pg_outputs_0_25_port, p(24) => pg_outputs_0_24_port,
                           p(23) => pg_outputs_0_23_port, p(22) => 
                           pg_outputs_0_22_port, p(21) => pg_outputs_0_21_port,
                           p(20) => pg_outputs_0_20_port, p(19) => 
                           pg_outputs_0_19_port, p(18) => pg_outputs_0_18_port,
                           p(17) => pg_outputs_0_17_port, p(16) => 
                           pg_outputs_0_16_port, p(15) => pg_outputs_0_15_port,
                           p(14) => pg_outputs_0_14_port, p(13) => 
                           pg_outputs_0_13_port, p(12) => pg_outputs_0_12_port,
                           p(11) => pg_outputs_0_11_port, p(10) => 
                           pg_outputs_0_10_port, p(9) => pg_outputs_0_9_port, 
                           p(8) => pg_outputs_0_8_port, p(7) => 
                           pg_outputs_0_7_port, p(6) => pg_outputs_0_6_port, 
                           p(5) => pg_outputs_0_5_port, p(4) => 
                           pg_outputs_0_4_port, p(3) => pg_outputs_0_3_port, 
                           p(2) => pg_outputs_0_2_port, p(1) => n_1000);
   g1_1 : G_BLOCK_0 port map( G_left => pg_outputs_1_2_port, P_left => 
                           pg_outputs_0_2_port, G_right => pg_outputs_1_1_port,
                           G_out => internal_g_outputs_1_1_port);
   p1_2 : PG_BLOCK_0 port map( G_left => pg_outputs_1_4_port, P_left => 
                           pg_outputs_0_4_port, G_right => pg_outputs_1_3_port,
                           P_right => pg_outputs_0_3_port, P_out => 
                           internal_p_outputs_1_2_port, G_out => 
                           internal_g_outputs_1_2_port);
   p1_3 : PG_BLOCK_26 port map( G_left => pg_outputs_1_6_port, P_left => 
                           pg_outputs_0_6_port, G_right => pg_outputs_1_5_port,
                           P_right => pg_outputs_0_5_port, P_out => 
                           internal_p_outputs_1_3_port, G_out => 
                           internal_g_outputs_1_3_port);
   p1_4 : PG_BLOCK_25 port map( G_left => pg_outputs_1_8_port, P_left => 
                           pg_outputs_0_8_port, G_right => pg_outputs_1_7_port,
                           P_right => pg_outputs_0_7_port, P_out => 
                           internal_p_outputs_1_4_port, G_out => 
                           internal_g_outputs_1_4_port);
   p1_5 : PG_BLOCK_24 port map( G_left => pg_outputs_1_10_port, P_left => 
                           pg_outputs_0_10_port, G_right => pg_outputs_1_9_port
                           , P_right => pg_outputs_0_9_port, P_out => 
                           internal_p_outputs_1_5_port, G_out => 
                           internal_g_outputs_1_5_port);
   p1_6 : PG_BLOCK_23 port map( G_left => pg_outputs_1_12_port, P_left => 
                           pg_outputs_0_12_port, G_right => 
                           pg_outputs_1_11_port, P_right => 
                           pg_outputs_0_11_port, P_out => 
                           internal_p_outputs_1_6_port, G_out => 
                           internal_g_outputs_1_6_port);
   p1_7 : PG_BLOCK_22 port map( G_left => pg_outputs_1_14_port, P_left => 
                           pg_outputs_0_14_port, G_right => 
                           pg_outputs_1_13_port, P_right => 
                           pg_outputs_0_13_port, P_out => 
                           internal_p_outputs_1_7_port, G_out => 
                           internal_g_outputs_1_7_port);
   p1_8 : PG_BLOCK_21 port map( G_left => pg_outputs_1_16_port, P_left => 
                           pg_outputs_0_16_port, G_right => 
                           pg_outputs_1_15_port, P_right => 
                           pg_outputs_0_15_port, P_out => 
                           internal_p_outputs_1_8_port, G_out => 
                           internal_g_outputs_1_8_port);
   p1_9 : PG_BLOCK_20 port map( G_left => pg_outputs_1_18_port, P_left => 
                           pg_outputs_0_18_port, G_right => 
                           pg_outputs_1_17_port, P_right => 
                           pg_outputs_0_17_port, P_out => 
                           internal_p_outputs_1_9_port, G_out => 
                           internal_g_outputs_1_9_port);
   p1_10 : PG_BLOCK_19 port map( G_left => pg_outputs_1_20_port, P_left => 
                           pg_outputs_0_20_port, G_right => 
                           pg_outputs_1_19_port, P_right => 
                           pg_outputs_0_19_port, P_out => 
                           internal_p_outputs_1_10_port, G_out => 
                           internal_g_outputs_1_10_port);
   p1_11 : PG_BLOCK_18 port map( G_left => pg_outputs_1_22_port, P_left => 
                           pg_outputs_0_22_port, G_right => 
                           pg_outputs_1_21_port, P_right => 
                           pg_outputs_0_21_port, P_out => 
                           internal_p_outputs_1_11_port, G_out => 
                           internal_g_outputs_1_11_port);
   p1_12 : PG_BLOCK_17 port map( G_left => pg_outputs_1_24_port, P_left => 
                           pg_outputs_0_24_port, G_right => 
                           pg_outputs_1_23_port, P_right => 
                           pg_outputs_0_23_port, P_out => 
                           internal_p_outputs_1_12_port, G_out => 
                           internal_g_outputs_1_12_port);
   p1_13 : PG_BLOCK_16 port map( G_left => pg_outputs_1_26_port, P_left => 
                           pg_outputs_0_26_port, G_right => 
                           pg_outputs_1_25_port, P_right => 
                           pg_outputs_0_25_port, P_out => 
                           internal_p_outputs_1_13_port, G_out => 
                           internal_g_outputs_1_13_port);
   p1_14 : PG_BLOCK_15 port map( G_left => pg_outputs_1_28_port, P_left => 
                           pg_outputs_0_28_port, G_right => 
                           pg_outputs_1_27_port, P_right => 
                           pg_outputs_0_27_port, P_out => 
                           internal_p_outputs_1_14_port, G_out => 
                           internal_g_outputs_1_14_port);
   p1_15 : PG_BLOCK_14 port map( G_left => pg_outputs_1_30_port, P_left => 
                           pg_outputs_0_30_port, G_right => 
                           pg_outputs_1_29_port, P_right => 
                           pg_outputs_0_29_port, P_out => 
                           internal_p_outputs_1_15_port, G_out => 
                           internal_g_outputs_1_15_port);
   p1_16 : PG_BLOCK_13 port map( G_left => pg_outputs_1_32_port, P_left => 
                           pg_outputs_0_32_port, G_right => 
                           pg_outputs_1_31_port, P_right => 
                           pg_outputs_0_31_port, P_out => 
                           internal_p_outputs_1_16_port, G_out => 
                           internal_g_outputs_1_16_port);
   g2_1 : G_BLOCK_8 port map( G_left => internal_g_outputs_1_2_port, P_left => 
                           internal_p_outputs_1_2_port, G_right => 
                           internal_g_outputs_1_1_port, G_out => Co_0_port);
   p2_2 : PG_BLOCK_12 port map( G_left => internal_g_outputs_1_4_port, P_left 
                           => internal_p_outputs_1_4_port, G_right => 
                           internal_g_outputs_1_3_port, P_right => 
                           internal_p_outputs_1_3_port, P_out => 
                           internal_p_outputs_2_4_port, G_out => 
                           internal_g_outputs_2_4_port);
   p2_3 : PG_BLOCK_11 port map( G_left => internal_g_outputs_1_6_port, P_left 
                           => internal_p_outputs_1_6_port, G_right => 
                           internal_g_outputs_1_5_port, P_right => 
                           internal_p_outputs_1_5_port, P_out => 
                           internal_p_outputs_2_6_port, G_out => 
                           internal_g_outputs_2_6_port);
   p2_4 : PG_BLOCK_10 port map( G_left => internal_g_outputs_1_8_port, P_left 
                           => internal_p_outputs_1_8_port, G_right => 
                           internal_g_outputs_1_7_port, P_right => 
                           internal_p_outputs_1_7_port, P_out => 
                           internal_p_outputs_2_8_port, G_out => 
                           internal_g_outputs_2_8_port);
   p2_5 : PG_BLOCK_9 port map( G_left => internal_g_outputs_1_10_port, P_left 
                           => internal_p_outputs_1_10_port, G_right => 
                           internal_g_outputs_1_9_port, P_right => 
                           internal_p_outputs_1_9_port, P_out => 
                           internal_p_outputs_2_10_port, G_out => 
                           internal_g_outputs_2_10_port);
   p2_6 : PG_BLOCK_8 port map( G_left => internal_g_outputs_1_12_port, P_left 
                           => internal_p_outputs_1_12_port, G_right => 
                           internal_g_outputs_1_11_port, P_right => 
                           internal_p_outputs_1_11_port, P_out => 
                           internal_p_outputs_2_12_port, G_out => 
                           internal_g_outputs_2_12_port);
   p2_7 : PG_BLOCK_7 port map( G_left => internal_g_outputs_1_14_port, P_left 
                           => internal_p_outputs_1_14_port, G_right => 
                           internal_g_outputs_1_13_port, P_right => 
                           internal_p_outputs_1_13_port, P_out => 
                           internal_p_outputs_2_14_port, G_out => 
                           internal_g_outputs_2_14_port);
   p2_8 : PG_BLOCK_6 port map( G_left => internal_g_outputs_1_16_port, P_left 
                           => internal_p_outputs_1_16_port, G_right => 
                           internal_g_outputs_1_15_port, P_right => 
                           internal_p_outputs_1_15_port, P_out => 
                           internal_p_outputs_2_16_port, G_out => 
                           internal_g_outputs_2_16_port);
   g_3_1 : G_BLOCK_7 port map( G_left => internal_g_outputs_2_4_port, P_left =>
                           internal_p_outputs_2_4_port, G_right => Co_0_port, 
                           G_out => n7);
   p_3_2 : PG_BLOCK_5 port map( G_left => internal_g_outputs_2_8_port, P_left 
                           => internal_p_outputs_2_8_port, G_right => 
                           internal_g_outputs_2_6_port, P_right => 
                           internal_p_outputs_2_6_port, P_out => 
                           internal_p_outputs_3_8_port, G_out => 
                           internal_g_outputs_3_8_port);
   p_3_3 : PG_BLOCK_4 port map( G_left => internal_g_outputs_2_12_port, P_left 
                           => internal_p_outputs_2_12_port, G_right => 
                           internal_g_outputs_2_10_port, P_right => 
                           internal_p_outputs_2_10_port, P_out => 
                           internal_p_outputs_3_12_port, G_out => 
                           internal_g_outputs_3_12_port);
   p_3_4 : PG_BLOCK_3 port map( G_left => internal_g_outputs_2_16_port, P_left 
                           => internal_p_outputs_2_16_port, G_right => 
                           internal_g_outputs_2_14_port, P_right => 
                           internal_p_outputs_2_14_port, P_out => 
                           internal_p_outputs_3_16_port, G_out => 
                           internal_g_outputs_3_16_port);
   g_4_1 : G_BLOCK_6 port map( G_left => n2, P_left => 
                           internal_p_outputs_2_6_port, G_right => Co_1_port, 
                           G_out => Co_2_port);
   g_4_2 : G_BLOCK_5 port map( G_left => internal_g_outputs_3_8_port, P_left =>
                           internal_p_outputs_3_8_port, G_right => n7, G_out =>
                           n6);
   p_4_3 : PG_BLOCK_2 port map( G_left => internal_g_outputs_2_14_port, P_left 
                           => internal_p_outputs_2_14_port, G_right => n4, 
                           P_right => internal_p_outputs_3_12_port, P_out => 
                           internal_p_outputs_4_14_port, G_out => 
                           internal_g_outputs_4_14_port);
   p_4_4 : PG_BLOCK_1 port map( G_left => internal_g_outputs_3_16_port, P_left 
                           => internal_p_outputs_3_16_port, G_right => 
                           internal_g_outputs_3_12_port, P_right => 
                           internal_p_outputs_3_12_port, P_out => 
                           internal_p_outputs_4_16_port, G_out => 
                           internal_g_outputs_4_16_port);
   g_5_1 : G_BLOCK_4 port map( G_left => n1, P_left => 
                           internal_p_outputs_2_10_port, G_right => Co_3_port, 
                           G_out => Co_4_port);
   g_5_2 : G_BLOCK_3 port map( G_left => n4, P_left => 
                           internal_p_outputs_3_12_port, G_right => Co_3_port, 
                           G_out => Co_5_port);
   g_5_3 : G_BLOCK_2 port map( G_left => internal_g_outputs_4_14_port, P_left 
                           => internal_p_outputs_4_14_port, G_right => 
                           Co_3_port, G_out => Co_6_port);
   g_5_4 : G_BLOCK_1 port map( G_left => internal_g_outputs_4_16_port, P_left 
                           => internal_p_outputs_4_16_port, G_right => n6, 
                           G_out => Co_7_port);
   U1 : CLKBUF_X1 port map( A => internal_g_outputs_2_10_port, Z => n1);
   U2 : CLKBUF_X1 port map( A => internal_g_outputs_2_6_port, Z => n2);
   U3 : CLKBUF_X1 port map( A => n7, Z => Co_1_port);
   U4 : CLKBUF_X1 port map( A => internal_g_outputs_3_12_port, Z => n4);
   U5 : CLKBUF_X1 port map( A => n6, Z => Co_3_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity P4_ADDER is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER;

architecture SYN_STRUCTURAL of P4_ADDER is

   component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal cg_out_6_port, cg_out_5_port, cg_out_4_port, cg_out_3_port, 
      cg_out_2_port, cg_out_1_port, cg_out_0_port : std_logic;

begin
   
   carry_net : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31),
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Cin => Cin, Co(7) 
                           => Cout, Co(6) => cg_out_6_port, Co(5) => 
                           cg_out_5_port, Co(4) => cg_out_4_port, Co(3) => 
                           cg_out_3_port, Co(2) => cg_out_2_port, Co(1) => 
                           cg_out_1_port, Co(0) => cg_out_0_port);
   sum_gen : SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci(7) => 
                           cg_out_6_port, Ci(6) => cg_out_5_port, Ci(5) => 
                           cg_out_4_port, Ci(4) => cg_out_3_port, Ci(3) => 
                           cg_out_2_port, Ci(2) => cg_out_1_port, Ci(1) => 
                           cg_out_0_port, Ci(0) => Cin, S(31) => S(31), S(30) 
                           => S(30), S(29) => S(29), S(28) => S(28), S(27) => 
                           S(27), S(26) => S(26), S(25) => S(25), S(24) => 
                           S(24), S(23) => S(23), S(22) => S(22), S(21) => 
                           S(21), S(20) => S(20), S(19) => S(19), S(18) => 
                           S(18), S(17) => S(17), S(16) => S(16), S(15) => 
                           S(15), S(14) => S(14), S(13) => S(13), S(12) => 
                           S(12), S(11) => S(11), S(10) => S(10), S(9) => S(9),
                           S(8) => S(8), S(7) => S(7), S(6) => S(6), S(5) => 
                           S(5), S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1)
                           => S(1), S(0) => S(0));

end SYN_STRUCTURAL;
