/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu May  4 17:44:54 2023
/////////////////////////////////////////////////////////////


module sipisoAluControl ( clk, rst, strobeA, strobeB, shiftA, loadB, loadC, 
        shiftC, startC );
  input clk, rst, strobeA, strobeB;
  output shiftA, loadB, loadC, shiftC, startC;
  wire   n7, n9, n50, n51, net1367, net1368, net1379, net1381, net1391,
         net1393, net1396, net1397, net1402, net1403, net1404, net1408,
         net1411, net1412, net1416, net1420, net1421, net1422, net1426,
         net1428, net1467, net1474, net1472, net1471, net1480, net1478,
         net1481, net1487, net1491, net1500, net1499, net1508, net1509,
         net1526, net1703, net1702, net1706, net1713, net1489, net1385,
         net1715, net1710, net1704, net1510, net1488, net1387, net1386,
         net1698, net1519, net1414, net1373, net1372, net1409, net1419,
         net1392, net1389, net1384, net1383, net1382, net1380, net1378,
         net1377, net1376, net1374, net1371, net1370, net1369, n52, n53, n54,
         n55, n56, n57, n58, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70;
  wire   [4:0] NEXT_STATE;
  assign startC = net1480;
  assign loadB = net1508;

  DFFR_X1 \CURRENT_STATE_reg[3]  ( .D(NEXT_STATE[3]), .CK(clk), .RN(n70), .Q(
        net1478), .QN(n7) );
  DFFR_X1 \CURRENT_STATE_reg[4]  ( .D(NEXT_STATE[4]), .CK(clk), .RN(n70), .Q(
        net1487), .QN(net1491) );
  DFFR_X1 \CURRENT_STATE_reg[0]  ( .D(NEXT_STATE[0]), .CK(clk), .RN(n70), .Q(
        n50), .QN(net1710) );
  DFFR_X1 \CURRENT_STATE_reg[2]  ( .D(NEXT_STATE[2]), .CK(clk), .RN(n70), .Q(
        n51), .QN(net1411) );
  DFFR_X1 \CURRENT_STATE_reg[1]  ( .D(NEXT_STATE[1]), .CK(clk), .RN(n70), .Q(
        net1467), .QN(n9) );
  INV_X1 U3 ( .A(n53), .ZN(n52) );
  OR2_X1 U4 ( .A1(n61), .A2(net1411), .ZN(n53) );
  OR2_X1 U5 ( .A1(n61), .A2(net1411), .ZN(net1367) );
  CLKBUF_X1 U6 ( .A(net1710), .Z(n54) );
  AND2_X1 U7 ( .A1(n9), .A2(net1710), .ZN(n55) );
  NAND2_X1 U8 ( .A1(net1376), .A2(net1369), .ZN(NEXT_STATE[1]) );
  AOI221_X1 U9 ( .B1(net1371), .B2(net1377), .C1(net1378), .C2(net1374), .A(
        net1480), .ZN(net1376) );
  NAND2_X1 U10 ( .A1(net1382), .A2(net1383), .ZN(net1378) );
  INV_X1 U11 ( .A(net1391), .ZN(net1377) );
  OAI22_X1 U12 ( .A1(net1377), .A2(net1379), .B1(net1380), .B2(net1381), .ZN(
        net1374) );
  INV_X1 U13 ( .A(net1389), .ZN(net1369) );
  NAND2_X1 U14 ( .A1(net1370), .A2(net1369), .ZN(NEXT_STATE[2]) );
  OAI21_X1 U15 ( .B1(n56), .B2(net1391), .A(net1392), .ZN(net1389) );
  AND3_X1 U16 ( .A1(net1706), .A2(net1368), .A3(net1412), .ZN(n56) );
  OAI211_X1 U17 ( .C1(net1384), .C2(net1385), .A(net1387), .B(net1386), .ZN(
        net1371) );
  AOI221_X1 U18 ( .B1(net1371), .B2(net1372), .C1(net1373), .C2(net1374), .A(
        net1480), .ZN(net1370) );
  NOR2_X1 U19 ( .A1(n55), .A2(net1509), .ZN(net1384) );
  NOR3_X1 U20 ( .A1(net1715), .A2(n55), .A3(net1704), .ZN(shiftA) );
  INV_X1 U21 ( .A(net1372), .ZN(net1380) );
  NAND2_X1 U22 ( .A1(net1393), .A2(net1380), .ZN(net1472) );
  NAND2_X1 U23 ( .A1(net1380), .A2(net1409), .ZN(net1474) );
  AND2_X1 U24 ( .A1(n57), .A2(net1509), .ZN(net1480) );
  AOI21_X1 U25 ( .B1(net1397), .B2(net1471), .A(net1480), .ZN(net1396) );
  NAND2_X1 U26 ( .A1(net1397), .A2(n52), .ZN(net1392) );
  NAND2_X1 U27 ( .A1(net1467), .A2(net1710), .ZN(net1382) );
  INV_X1 U28 ( .A(net1382), .ZN(net1397) );
  NAND2_X1 U29 ( .A1(n50), .A2(n9), .ZN(net1383) );
  OR2_X1 U30 ( .A1(net1383), .A2(net1385), .ZN(net1702) );
  NAND2_X1 U31 ( .A1(strobeB), .A2(net1419), .ZN(net1391) );
  INV_X1 U32 ( .A(strobeA), .ZN(net1419) );
  INV_X1 U33 ( .A(net1392), .ZN(net1420) );
  OR2_X1 U34 ( .A1(net1404), .A2(net1385), .ZN(net1703) );
  AND3_X1 U35 ( .A1(net1387), .A2(net1391), .A3(net1386), .ZN(net1416) );
  INV_X1 U36 ( .A(net1379), .ZN(net1402) );
  AOI21_X1 U37 ( .B1(net1379), .B2(n53), .A(net1404), .ZN(net1403) );
  INV_X1 U38 ( .A(net1381), .ZN(net1409) );
  NOR2_X1 U39 ( .A1(net1519), .A2(net1698), .ZN(net1373) );
  INV_X1 U40 ( .A(n50), .ZN(net1698) );
  NOR3_X1 U41 ( .A1(net1519), .A2(net1698), .A3(n53), .ZN(NEXT_STATE[4]) );
  CLKBUF_X1 U42 ( .A(n9), .Z(net1519) );
  NAND2_X1 U43 ( .A1(strobeA), .A2(net1414), .ZN(net1372) );
  INV_X1 U44 ( .A(strobeB), .ZN(net1414) );
  AND2_X1 U45 ( .A1(n50), .A2(n9), .ZN(net1509) );
  NAND3_X1 U46 ( .A1(net1510), .A2(n54), .A3(net1715), .ZN(net1387) );
  BUF_X1 U47 ( .A(n51), .Z(net1715) );
  NAND2_X1 U48 ( .A1(net1500), .A2(net1715), .ZN(net1385) );
  NAND2_X1 U49 ( .A1(net1489), .A2(n54), .ZN(net1386) );
  BUF_X1 U50 ( .A(net1488), .Z(net1510) );
  NOR2_X1 U51 ( .A1(n51), .A2(net1467), .ZN(net1426) );
  AND4_X1 U52 ( .A1(net1467), .A2(net1713), .A3(net1491), .A4(n51), .ZN(
        net1508) );
  AND4_X1 U53 ( .A1(net1467), .A2(n7), .A3(net1491), .A4(n51), .ZN(net1489) );
  NOR2_X1 U54 ( .A1(net1487), .A2(n7), .ZN(net1488) );
  OAI21_X1 U55 ( .B1(net1488), .B2(net1499), .A(net1411), .ZN(net1428) );
  CLKBUF_X1 U56 ( .A(net1488), .Z(net1471) );
  CLKBUF_X1 U57 ( .A(net1487), .Z(net1704) );
  NAND2_X1 U58 ( .A1(n9), .A2(net1710), .ZN(net1404) );
  NAND2_X1 U59 ( .A1(net1500), .A2(net1411), .ZN(net1381) );
  NAND2_X1 U60 ( .A1(net1489), .A2(n50), .ZN(net1412) );
  BUF_X1 U61 ( .A(n7), .Z(net1713) );
  OR2_X1 U62 ( .A1(net1428), .A2(net1404), .ZN(net1706) );
  OR2_X1 U63 ( .A1(net1428), .A2(net1404), .ZN(n64) );
  NAND3_X1 U64 ( .A1(net1702), .A2(net1703), .A3(net1416), .ZN(n63) );
  CLKBUF_X1 U65 ( .A(net1428), .Z(net1526) );
  NOR2_X1 U66 ( .A1(n61), .A2(net1411), .ZN(n57) );
  AND2_X1 U67 ( .A1(net1491), .A2(n7), .ZN(net1499) );
  AND2_X1 U68 ( .A1(net1491), .A2(net1713), .ZN(net1500) );
  AND2_X1 U69 ( .A1(net1508), .A2(n50), .ZN(n58) );
  NOR2_X1 U70 ( .A1(net1478), .A2(net1491), .ZN(n62) );
  CLKBUF_X1 U71 ( .A(net1467), .Z(net1481) );
  AND2_X2 U72 ( .A1(n57), .A2(net1509), .ZN(loadC) );
  NAND2_X1 U73 ( .A1(net1408), .A2(net1397), .ZN(n60) );
  AND3_X1 U74 ( .A1(net1472), .A2(n60), .A3(net1474), .ZN(n65) );
  NAND2_X1 U75 ( .A1(net1478), .A2(net1491), .ZN(n61) );
  INV_X1 U76 ( .A(net1526), .ZN(net1408) );
  INV_X1 U77 ( .A(net1706), .ZN(net1421) );
  NAND3_X1 U78 ( .A1(n62), .A2(net1426), .A3(net1710), .ZN(net1368) );
  INV_X1 U79 ( .A(net1368), .ZN(net1422) );
  NOR4_X1 U80 ( .A1(net1420), .A2(net1421), .A3(net1422), .A4(n58), .ZN(n67)
         );
  NAND2_X1 U81 ( .A1(net1471), .A2(net1411), .ZN(net1379) );
  OAI21_X1 U82 ( .B1(net1402), .B2(net1391), .A(n63), .ZN(n66) );
  NAND3_X1 U83 ( .A1(n64), .A2(net1368), .A3(net1412), .ZN(net1393) );
  OAI211_X1 U84 ( .C1(n67), .C2(net1391), .A(n65), .B(n66), .ZN(NEXT_STATE[0])
         );
  INV_X1 U85 ( .A(rst), .ZN(n70) );
  OAI21_X1 U86 ( .B1(net1508), .B2(net1403), .A(net1391), .ZN(n69) );
  OAI21_X1 U87 ( .B1(net1509), .B2(net1481), .A(net1402), .ZN(n68) );
  NAND3_X1 U88 ( .A1(n69), .A2(n68), .A3(net1396), .ZN(NEXT_STATE[3]) );
  OAI21_X1 U89 ( .B1(net1367), .B2(n9), .A(net1368), .ZN(shiftC) );
endmodule


module SIPISOALU ( CLK, RESET, STARTA, A, LOADB, B, STARTC, C );
  input [3:0] B;
  input CLK, RESET, STARTA, A, LOADB;
  output STARTC, C;
  wire   EA, LDB, LDC, SHIFTC, n39, n40, n41, n42, n43, n44, n46, n48, n49,
         n50, n51, n73, n74, n104, n105, n108, n109, n110, n111, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152;

  sipisoAluControl control ( .clk(CLK), .rst(RESET), .strobeA(STARTA), 
        .strobeB(LOADB), .shiftA(EA), .loadB(LDB), .loadC(LDC), .shiftC(SHIFTC), .startC(STARTC) );
  DFFR_X1 \SIPO_reg[0]  ( .D(n46), .CK(CLK), .RN(n152), .Q(n139), .QN(n111) );
  DFFR_X1 \SIPO_reg[2]  ( .D(n43), .CK(CLK), .RN(n152), .Q(n124) );
  DFFR_X1 \PIPO_reg[3]  ( .D(n42), .CK(CLK), .RN(n152), .QN(n113) );
  DFFR_X1 \PIPO_reg[2]  ( .D(n41), .CK(CLK), .RN(n152), .Q(n73), .QN(n128) );
  DFFR_X1 \PIPO_reg[1]  ( .D(n40), .CK(CLK), .RN(n152), .Q(n125), .QN(n114) );
  DFFR_X1 \PIPO_reg[0]  ( .D(n39), .CK(CLK), .RN(n152), .Q(n147), .QN(n115) );
  DFFR_X1 \SIPO_reg[1]  ( .D(n44), .CK(CLK), .RN(n152), .Q(n74), .QN(n129) );
  DFFR_X1 \PISO_reg[2]  ( .D(n50), .CK(CLK), .RN(n152), .Q(n108), .QN(n143) );
  DFFR_X1 \PISO_reg[1]  ( .D(n51), .CK(CLK), .RN(n152), .Q(n110), .QN(n150) );
  DFFR_X1 \PISO_reg[3]  ( .D(n49), .CK(CLK), .RN(n152), .Q(n109), .QN(n137) );
  DFFR_X1 \PISO_reg[0]  ( .D(n48), .CK(CLK), .RN(n152), .Q(C) );
  NAND3_X1 U80 ( .A1(C), .A2(n144), .A3(n141), .ZN(n149) );
  BUF_X1 U81 ( .A(EA), .Z(n116) );
  NOR2_X1 U82 ( .A1(n118), .A2(n115), .ZN(n117) );
  INV_X1 U83 ( .A(A), .ZN(n118) );
  NOR2_X1 U84 ( .A1(n118), .A2(n115), .ZN(n119) );
  CLKBUF_X1 U85 ( .A(n147), .Z(n120) );
  XNOR2_X1 U86 ( .A(n131), .B(n121), .ZN(n133) );
  XNOR2_X1 U87 ( .A(n124), .B(n113), .ZN(n121) );
  NAND2_X1 U88 ( .A1(LDB), .A2(B[3]), .ZN(n104) );
  NAND2_X1 U89 ( .A1(B[2]), .A2(LDB), .ZN(n105) );
  INV_X1 U90 ( .A(LDC), .ZN(n122) );
  INV_X1 U91 ( .A(LDC), .ZN(n123) );
  MUX2_X1 U92 ( .A(n120), .B(B[0]), .S(LDB), .Z(n39) );
  INV_X1 U93 ( .A(RESET), .ZN(n152) );
  MUX2_X1 U94 ( .A(n139), .B(A), .S(n116), .Z(n46) );
  MUX2_X1 U95 ( .A(n125), .B(B[1]), .S(LDB), .Z(n40) );
  MUX2_X1 U96 ( .A(n74), .B(n139), .S(n116), .Z(n44) );
  OAI21_X1 U97 ( .B1(LDB), .B2(n128), .A(n105), .ZN(n41) );
  MUX2_X1 U98 ( .A(n124), .B(n74), .S(n116), .Z(n43) );
  OAI21_X1 U99 ( .B1(n113), .B2(LDB), .A(n104), .ZN(n42) );
  NAND2_X1 U100 ( .A1(A), .A2(n147), .ZN(n146) );
  OAI21_X1 U101 ( .B1(n139), .B2(n125), .A(n119), .ZN(n126) );
  OAI21_X1 U102 ( .B1(n114), .B2(n111), .A(n126), .ZN(n127) );
  INV_X1 U103 ( .A(n127), .ZN(n135) );
  NAND2_X1 U104 ( .A1(n73), .A2(n74), .ZN(n130) );
  AOI22_X1 U105 ( .A1(n135), .A2(n130), .B1(n129), .B2(n128), .ZN(n131) );
  INV_X1 U106 ( .A(LDC), .ZN(n144) );
  INV_X1 U107 ( .A(SHIFTC), .ZN(n141) );
  NAND3_X1 U108 ( .A1(n141), .A2(n122), .A3(n109), .ZN(n132) );
  OAI21_X1 U109 ( .B1(n133), .B2(n122), .A(n132), .ZN(n49) );
  XOR2_X1 U110 ( .A(n73), .B(n74), .Z(n134) );
  XOR2_X1 U111 ( .A(n135), .B(n134), .Z(n138) );
  NAND2_X1 U112 ( .A1(SHIFTC), .A2(n144), .ZN(n151) );
  NAND3_X1 U113 ( .A1(n141), .A2(n123), .A3(n108), .ZN(n136) );
  OAI221_X1 U114 ( .B1(n138), .B2(n122), .C1(n151), .C2(n137), .A(n136), .ZN(
        n50) );
  XOR2_X1 U115 ( .A(n139), .B(n114), .Z(n140) );
  XOR2_X1 U116 ( .A(n140), .B(n117), .Z(n145) );
  NAND3_X1 U117 ( .A1(n141), .A2(n123), .A3(n110), .ZN(n142) );
  OAI221_X1 U118 ( .B1(n145), .B2(n123), .C1(n151), .C2(n143), .A(n142), .ZN(
        n51) );
  OAI211_X1 U119 ( .C1(A), .C2(n120), .A(LDC), .B(n146), .ZN(n148) );
  OAI211_X1 U120 ( .C1(n151), .C2(n150), .A(n149), .B(n148), .ZN(n48) );
endmodule

