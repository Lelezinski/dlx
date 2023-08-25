
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_BEHAVIORAL of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_BEHAVIORAL of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_BEHAVIORAL of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_BEHAVIORAL of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_BEHAVIORAL of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_BEHAVIORAL of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_BEHAVIORAL of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_BEHAVIORAL of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_BEHAVIORAL of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_BEHAVIORAL of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_BEHAVIORAL of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_BEHAVIORAL of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_BEHAVIORAL of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_BEHAVIORAL of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_BEHAVIORAL of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_BEHAVIORAL of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_BEHAVIORAL of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_BEHAVIORAL of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_BEHAVIORAL of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_BEHAVIORAL of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_BEHAVIORAL of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_BEHAVIORAL of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_BEHAVIORAL of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_BEHAVIORAL of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity IV is

   port( A : in std_logic;  Y : out std_logic);

end IV;

architecture SYN_BEHAVIORAL of IV is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity MUX21_GENERIC is

   port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (7 downto 0));

end MUX21_GENERIC;

architecture SYN_STRUCTURAL of MUX21_GENERIC is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1_7_port, Y1_6_port, Y1_5_port, Y1_4_port, Y1_3_port, Y1_2_port,
      Y1_1_port, Y1_0_port, Y2_7_port, Y2_6_port, Y2_5_port, Y2_4_port, 
      Y2_3_port, Y2_2_port, Y2_1_port, Y2_0_port : std_logic;

begin
   
   UIV : IV port map( A => SEL, Y => SB);
   UND1_0 : ND2_0 port map( A => A(0), B => SEL, Y => Y1_0_port);
   UND2_0 : ND2_23 port map( A => B(0), B => SB, Y => Y2_0_port);
   UND3_0 : ND2_22 port map( A => Y1_0_port, B => Y2_0_port, Y => Y(0));
   UND1_1 : ND2_21 port map( A => A(1), B => SEL, Y => Y1_1_port);
   UND2_1 : ND2_20 port map( A => B(1), B => SB, Y => Y2_1_port);
   UND3_1 : ND2_19 port map( A => Y1_1_port, B => Y2_1_port, Y => Y(1));
   UND1_2 : ND2_18 port map( A => A(2), B => SEL, Y => Y1_2_port);
   UND2_2 : ND2_17 port map( A => B(2), B => SB, Y => Y2_2_port);
   UND3_2 : ND2_16 port map( A => Y1_2_port, B => Y2_2_port, Y => Y(2));
   UND1_3 : ND2_15 port map( A => A(3), B => SEL, Y => Y1_3_port);
   UND2_3 : ND2_14 port map( A => B(3), B => SB, Y => Y2_3_port);
   UND3_3 : ND2_13 port map( A => Y1_3_port, B => Y2_3_port, Y => Y(3));
   UND1_4 : ND2_12 port map( A => A(4), B => SEL, Y => Y1_4_port);
   UND2_4 : ND2_11 port map( A => B(4), B => SB, Y => Y2_4_port);
   UND3_4 : ND2_10 port map( A => Y1_4_port, B => Y2_4_port, Y => Y(4));
   UND1_5 : ND2_9 port map( A => A(5), B => SEL, Y => Y1_5_port);
   UND2_5 : ND2_8 port map( A => B(5), B => SB, Y => Y2_5_port);
   UND3_5 : ND2_7 port map( A => Y1_5_port, B => Y2_5_port, Y => Y(5));
   UND1_6 : ND2_6 port map( A => A(6), B => SEL, Y => Y1_6_port);
   UND2_6 : ND2_5 port map( A => B(6), B => SB, Y => Y2_6_port);
   UND3_6 : ND2_4 port map( A => Y1_6_port, B => Y2_6_port, Y => Y(6));
   UND1_7 : ND2_3 port map( A => A(7), B => SEL, Y => Y1_7_port);
   UND2_7 : ND2_2 port map( A => B(7), B => SB, Y => Y2_7_port);
   UND3_7 : ND2_1 port map( A => Y1_7_port, B => Y2_7_port, Y => Y(7));

end SYN_STRUCTURAL;
