
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_3_port, NEXT_STATE_2_port, 
      NEXT_STATE_1_port, NEXT_STATE_0_port, n7, n9, n50, n51, net1367, net1368,
      net1379, net1381, net1391, net1393, net1396, net1397, net1402, net1403, 
      net1404, net1408, net1411, net1412, net1416, net1420, net1421, net1422, 
      net1426, net1428, net1467, net1474, net1472, net1471, net1480, net1478, 
      net1481, net1487, net1491, net1500, net1499, net1508, net1509, net1526, 
      net1703, net1702, net1706, net1713, net1489, net1385, net1715, net1710, 
      net1704, net1510, net1488, net1387, net1386, net1698, net1519, net1414, 
      net1373, net1372, net1409, net1419, net1392, net1389, net1384, net1383, 
      net1382, net1380, net1378, net1377, net1376, net1374, net1371, net1370, 
      net1369, n52, n53, n54, n55, n56, n57, n58, n60, n61, n62, n63, n64, n65,
      n66, n67, n68, n69, n70 : std_logic;

begin
   loadB <= net1508;
   startC <= net1480;
   
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => NEXT_STATE_3_port, CK => 
                           clk, RN => n70, Q => net1478, QN => n7);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n70, Q => net1487, QN => net1491);
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n70, Q => n50, QN => net1710);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n70, Q => n51, QN => net1411);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n70, Q => net1467, QN => n9);
   U3 : INV_X1 port map( A => n53, ZN => n52);
   U4 : OR2_X1 port map( A1 => n61, A2 => net1411, ZN => n53);
   U5 : OR2_X1 port map( A1 => n61, A2 => net1411, ZN => net1367);
   U6 : CLKBUF_X1 port map( A => net1710, Z => n54);
   U7 : AND2_X1 port map( A1 => n9, A2 => net1710, ZN => n55);
   U8 : NAND2_X1 port map( A1 => net1376, A2 => net1369, ZN => 
                           NEXT_STATE_1_port);
   U9 : AOI221_X1 port map( B1 => net1371, B2 => net1377, C1 => net1378, C2 => 
                           net1374, A => net1480, ZN => net1376);
   U10 : NAND2_X1 port map( A1 => net1382, A2 => net1383, ZN => net1378);
   U11 : INV_X1 port map( A => net1391, ZN => net1377);
   U12 : OAI22_X1 port map( A1 => net1377, A2 => net1379, B1 => net1380, B2 => 
                           net1381, ZN => net1374);
   U13 : INV_X1 port map( A => net1389, ZN => net1369);
   U14 : NAND2_X1 port map( A1 => net1370, A2 => net1369, ZN => 
                           NEXT_STATE_2_port);
   U15 : OAI21_X1 port map( B1 => n56, B2 => net1391, A => net1392, ZN => 
                           net1389);
   U16 : AND3_X1 port map( A1 => net1706, A2 => net1368, A3 => net1412, ZN => 
                           n56);
   U17 : OAI211_X1 port map( C1 => net1384, C2 => net1385, A => net1387, B => 
                           net1386, ZN => net1371);
   U18 : AOI221_X1 port map( B1 => net1371, B2 => net1372, C1 => net1373, C2 =>
                           net1374, A => net1480, ZN => net1370);
   U19 : NOR2_X1 port map( A1 => n55, A2 => net1509, ZN => net1384);
   U20 : NOR3_X1 port map( A1 => net1715, A2 => n55, A3 => net1704, ZN => 
                           shiftA);
   U21 : INV_X1 port map( A => net1372, ZN => net1380);
   U22 : NAND2_X1 port map( A1 => net1393, A2 => net1380, ZN => net1472);
   U23 : NAND2_X1 port map( A1 => net1380, A2 => net1409, ZN => net1474);
   U24 : AND2_X1 port map( A1 => n57, A2 => net1509, ZN => net1480);
   U25 : AOI21_X1 port map( B1 => net1397, B2 => net1471, A => net1480, ZN => 
                           net1396);
   U26 : NAND2_X1 port map( A1 => net1397, A2 => n52, ZN => net1392);
   U27 : NAND2_X1 port map( A1 => net1467, A2 => net1710, ZN => net1382);
   U28 : INV_X1 port map( A => net1382, ZN => net1397);
   U29 : NAND2_X1 port map( A1 => n50, A2 => n9, ZN => net1383);
   U30 : OR2_X1 port map( A1 => net1383, A2 => net1385, ZN => net1702);
   U31 : NAND2_X1 port map( A1 => strobeB, A2 => net1419, ZN => net1391);
   U32 : INV_X1 port map( A => strobeA, ZN => net1419);
   U33 : INV_X1 port map( A => net1392, ZN => net1420);
   U34 : OR2_X1 port map( A1 => net1404, A2 => net1385, ZN => net1703);
   U35 : AND3_X1 port map( A1 => net1387, A2 => net1391, A3 => net1386, ZN => 
                           net1416);
   U36 : INV_X1 port map( A => net1379, ZN => net1402);
   U37 : AOI21_X1 port map( B1 => net1379, B2 => n53, A => net1404, ZN => 
                           net1403);
   U38 : INV_X1 port map( A => net1381, ZN => net1409);
   U39 : NOR2_X1 port map( A1 => net1519, A2 => net1698, ZN => net1373);
   U40 : INV_X1 port map( A => n50, ZN => net1698);
   U41 : NOR3_X1 port map( A1 => net1519, A2 => net1698, A3 => n53, ZN => 
                           NEXT_STATE_4_port);
   U42 : CLKBUF_X1 port map( A => n9, Z => net1519);
   U43 : NAND2_X1 port map( A1 => strobeA, A2 => net1414, ZN => net1372);
   U44 : INV_X1 port map( A => strobeB, ZN => net1414);
   U45 : AND2_X1 port map( A1 => n50, A2 => n9, ZN => net1509);
   U46 : NAND3_X1 port map( A1 => net1510, A2 => n54, A3 => net1715, ZN => 
                           net1387);
   U47 : BUF_X1 port map( A => n51, Z => net1715);
   U48 : NAND2_X1 port map( A1 => net1500, A2 => net1715, ZN => net1385);
   U49 : NAND2_X1 port map( A1 => net1489, A2 => n54, ZN => net1386);
   U50 : BUF_X1 port map( A => net1488, Z => net1510);
   U51 : NOR2_X1 port map( A1 => n51, A2 => net1467, ZN => net1426);
   U52 : AND4_X1 port map( A1 => net1467, A2 => net1713, A3 => net1491, A4 => 
                           n51, ZN => net1508);
   U53 : AND4_X1 port map( A1 => net1467, A2 => n7, A3 => net1491, A4 => n51, 
                           ZN => net1489);
   U54 : NOR2_X1 port map( A1 => net1487, A2 => n7, ZN => net1488);
   U55 : OAI21_X1 port map( B1 => net1488, B2 => net1499, A => net1411, ZN => 
                           net1428);
   U56 : CLKBUF_X1 port map( A => net1488, Z => net1471);
   U57 : CLKBUF_X1 port map( A => net1487, Z => net1704);
   U58 : NAND2_X1 port map( A1 => n9, A2 => net1710, ZN => net1404);
   U59 : NAND2_X1 port map( A1 => net1500, A2 => net1411, ZN => net1381);
   U60 : NAND2_X1 port map( A1 => net1489, A2 => n50, ZN => net1412);
   U61 : BUF_X1 port map( A => n7, Z => net1713);
   U62 : OR2_X1 port map( A1 => net1428, A2 => net1404, ZN => net1706);
   U63 : OR2_X1 port map( A1 => net1428, A2 => net1404, ZN => n64);
   U64 : NAND3_X1 port map( A1 => net1702, A2 => net1703, A3 => net1416, ZN => 
                           n63);
   U65 : CLKBUF_X1 port map( A => net1428, Z => net1526);
   U66 : NOR2_X1 port map( A1 => n61, A2 => net1411, ZN => n57);
   U67 : AND2_X1 port map( A1 => net1491, A2 => n7, ZN => net1499);
   U68 : AND2_X1 port map( A1 => net1491, A2 => net1713, ZN => net1500);
   U69 : AND2_X1 port map( A1 => net1508, A2 => n50, ZN => n58);
   U70 : NOR2_X1 port map( A1 => net1478, A2 => net1491, ZN => n62);
   U71 : CLKBUF_X1 port map( A => net1467, Z => net1481);
   U72 : AND2_X2 port map( A1 => n57, A2 => net1509, ZN => loadC);
   U73 : NAND2_X1 port map( A1 => net1408, A2 => net1397, ZN => n60);
   U74 : AND3_X1 port map( A1 => net1472, A2 => n60, A3 => net1474, ZN => n65);
   U75 : NAND2_X1 port map( A1 => net1478, A2 => net1491, ZN => n61);
   U76 : INV_X1 port map( A => net1526, ZN => net1408);
   U77 : INV_X1 port map( A => net1706, ZN => net1421);
   U78 : NAND3_X1 port map( A1 => n62, A2 => net1426, A3 => net1710, ZN => 
                           net1368);
   U79 : INV_X1 port map( A => net1368, ZN => net1422);
   U80 : NOR4_X1 port map( A1 => net1420, A2 => net1421, A3 => net1422, A4 => 
                           n58, ZN => n67);
   U81 : NAND2_X1 port map( A1 => net1471, A2 => net1411, ZN => net1379);
   U82 : OAI21_X1 port map( B1 => net1402, B2 => net1391, A => n63, ZN => n66);
   U83 : NAND3_X1 port map( A1 => n64, A2 => net1368, A3 => net1412, ZN => 
                           net1393);
   U84 : OAI211_X1 port map( C1 => n67, C2 => net1391, A => n65, B => n66, ZN 
                           => NEXT_STATE_0_port);
   U85 : INV_X1 port map( A => rst, ZN => n70);
   U86 : OAI21_X1 port map( B1 => net1508, B2 => net1403, A => net1391, ZN => 
                           n69);
   U87 : OAI21_X1 port map( B1 => net1509, B2 => net1481, A => net1402, ZN => 
                           n68);
   U88 : NAND3_X1 port map( A1 => n69, A2 => n68, A3 => net1396, ZN => 
                           NEXT_STATE_3_port);
   U89 : OAI21_X1 port map( B1 => net1367, B2 => n9, A => net1368, ZN => shiftC
                           );

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal C_port, EA, LDB, LDC, SHIFTC, n39, n40, n41, n42, n43, n44, n46, n48,
      n49, n50, n51, n73, n74, n104, n105, n108, n109, n110, n111, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n_1000, n_1001, n_1002 : std_logic;

begin
   C <= C_port;
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n152, Q => 
                           n139, QN => n111);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n43, CK => CLK, RN => n152, Q => 
                           n124, QN => n_1000);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n42, CK => CLK, RN => n152, Q => 
                           n_1001, QN => n113);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n41, CK => CLK, RN => n152, Q => 
                           n73, QN => n128);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n40, CK => CLK, RN => n152, Q => 
                           n125, QN => n114);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n39, CK => CLK, RN => n152, Q => 
                           n147, QN => n115);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n152, Q => 
                           n74, QN => n129);
   PISO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n152, Q => 
                           n108, QN => n143);
   PISO_reg_1_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n152, Q => 
                           n110, QN => n150);
   PISO_reg_3_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n152, Q => 
                           n109, QN => n137);
   PISO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n152, Q => 
                           C_port, QN => n_1002);
   U80 : NAND3_X1 port map( A1 => C_port, A2 => n144, A3 => n141, ZN => n149);
   U81 : BUF_X1 port map( A => EA, Z => n116);
   U82 : NOR2_X1 port map( A1 => n118, A2 => n115, ZN => n117);
   U83 : INV_X1 port map( A => A, ZN => n118);
   U84 : NOR2_X1 port map( A1 => n118, A2 => n115, ZN => n119);
   U85 : CLKBUF_X1 port map( A => n147, Z => n120);
   U86 : XNOR2_X1 port map( A => n131, B => n121, ZN => n133);
   U87 : XNOR2_X1 port map( A => n124, B => n113, ZN => n121);
   U88 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n104);
   U89 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n105);
   U90 : INV_X1 port map( A => LDC, ZN => n122);
   U91 : INV_X1 port map( A => LDC, ZN => n123);
   U92 : MUX2_X1 port map( A => n120, B => B(0), S => LDB, Z => n39);
   U93 : INV_X1 port map( A => RESET, ZN => n152);
   U94 : MUX2_X1 port map( A => n139, B => A, S => n116, Z => n46);
   U95 : MUX2_X1 port map( A => n125, B => B(1), S => LDB, Z => n40);
   U96 : MUX2_X1 port map( A => n74, B => n139, S => n116, Z => n44);
   U97 : OAI21_X1 port map( B1 => LDB, B2 => n128, A => n105, ZN => n41);
   U98 : MUX2_X1 port map( A => n124, B => n74, S => n116, Z => n43);
   U99 : OAI21_X1 port map( B1 => n113, B2 => LDB, A => n104, ZN => n42);
   U100 : NAND2_X1 port map( A1 => A, A2 => n147, ZN => n146);
   U101 : OAI21_X1 port map( B1 => n139, B2 => n125, A => n119, ZN => n126);
   U102 : OAI21_X1 port map( B1 => n114, B2 => n111, A => n126, ZN => n127);
   U103 : INV_X1 port map( A => n127, ZN => n135);
   U104 : NAND2_X1 port map( A1 => n73, A2 => n74, ZN => n130);
   U105 : AOI22_X1 port map( A1 => n135, A2 => n130, B1 => n129, B2 => n128, ZN
                           => n131);
   U106 : INV_X1 port map( A => LDC, ZN => n144);
   U107 : INV_X1 port map( A => SHIFTC, ZN => n141);
   U108 : NAND3_X1 port map( A1 => n141, A2 => n122, A3 => n109, ZN => n132);
   U109 : OAI21_X1 port map( B1 => n133, B2 => n122, A => n132, ZN => n49);
   U110 : XOR2_X1 port map( A => n73, B => n74, Z => n134);
   U111 : XOR2_X1 port map( A => n135, B => n134, Z => n138);
   U112 : NAND2_X1 port map( A1 => SHIFTC, A2 => n144, ZN => n151);
   U113 : NAND3_X1 port map( A1 => n141, A2 => n123, A3 => n108, ZN => n136);
   U114 : OAI221_X1 port map( B1 => n138, B2 => n122, C1 => n151, C2 => n137, A
                           => n136, ZN => n50);
   U115 : XOR2_X1 port map( A => n139, B => n114, Z => n140);
   U116 : XOR2_X1 port map( A => n140, B => n117, Z => n145);
   U117 : NAND3_X1 port map( A1 => n141, A2 => n123, A3 => n110, ZN => n142);
   U118 : OAI221_X1 port map( B1 => n145, B2 => n123, C1 => n151, C2 => n143, A
                           => n142, ZN => n51);
   U119 : OAI211_X1 port map( C1 => A, C2 => n120, A => LDC, B => n146, ZN => 
                           n148);
   U120 : OAI211_X1 port map( C1 => n151, C2 => n150, A => n149, B => n148, ZN 
                           => n48);

end SYN_A;
