
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC.all;

entity MUX21_GENERIC is

   port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (7 downto 0));

end MUX21_GENERIC;

architecture SYN_BEHAVIORAL of MUX21_GENERIC is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U18 : MUX2_X1 port map( A => B(7), B => A(7), S => SEL, Z => Y(7));
   U19 : MUX2_X1 port map( A => B(6), B => A(6), S => SEL, Z => Y(6));
   U20 : MUX2_X1 port map( A => B(5), B => A(5), S => SEL, Z => Y(5));
   U21 : MUX2_X1 port map( A => B(4), B => A(4), S => SEL, Z => Y(4));
   U22 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U23 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U24 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U25 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;
