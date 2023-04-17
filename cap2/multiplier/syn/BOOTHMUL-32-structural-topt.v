/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Apr 17 18:30:35 2023
/////////////////////////////////////////////////////////////


module BE_BLOCK_0 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   net47151, n3, n2, n1, n4;

  NAND2_X1 U3 ( .A1(b[1]), .A2(b[0]), .ZN(n2) );
  OAI22_X1 U4 ( .A1(n3), .A2(n1), .B1(b[2]), .B2(n2), .ZN(sel[1]) );
  INV_X1 U5 ( .A(b[2]), .ZN(n1) );
  OAI21_X1 U6 ( .B1(b[1]), .B2(b[0]), .A(n2), .ZN(n3) );
  AND3_X1 U7 ( .A1(b[2]), .A2(n2), .A3(net47151), .ZN(sel[2]) );
  AOI21_X1 U8 ( .B1(n4), .B2(n2), .A(b[2]), .ZN(sel[0]) );
  OAI21_X1 U9 ( .B1(b[1]), .B2(b[0]), .A(n2), .ZN(net47151) );
  OAI21_X1 U10 ( .B1(b[1]), .B2(b[0]), .A(n2), .ZN(n4) );
endmodule


module MUX_5TO1_NBIT32_0 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n2, n3, n8, n9, n10, n11, n12, n13, n14, n15, n18, n20, n21, n22, n23,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, net37183, net37179, net37233, net37726, net37723, net37722,
         net37789, net39199, net47352, net47373, net47487, net52329, net52323,
         net52322, net52317, net52315, net53838, net53812, net53808, net52364,
         net52348, net52287, net50741, net50740, net47426, net47376, net39231,
         n17, n16, net52339, net52310, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87;
  assign net37179 = sel[2];

  INV_X1 U1 ( .A(n73), .ZN(n72) );
  INV_X1 U2 ( .A(net47426), .ZN(n73) );
  BUF_X4 U3 ( .A(net39199), .Z(net37233) );
  AND2_X1 U4 ( .A1(net53808), .A2(net47426), .ZN(net47373) );
  INV_X1 U5 ( .A(A2[2]), .ZN(net52315) );
  NOR2_X1 U6 ( .A1(net52287), .A2(net53838), .ZN(net50740) );
  INV_X1 U7 ( .A(A3[2]), .ZN(net52317) );
  INV_X1 U8 ( .A(A3[4]), .ZN(net52287) );
  INV_X1 U9 ( .A(A3[3]), .ZN(n83) );
  NAND2_X1 U10 ( .A1(A4[2]), .A2(net37179), .ZN(n80) );
  INV_X1 U11 ( .A(net53838), .ZN(net39199) );
  AND2_X1 U12 ( .A1(A4[3]), .A2(net37179), .ZN(n74) );
  AND2_X2 U13 ( .A1(n77), .A2(n78), .ZN(n75) );
  AND2_X1 U14 ( .A1(A1[4]), .A2(net47352), .ZN(n76) );
  NOR3_X1 U15 ( .A1(n76), .A2(net50741), .A3(net50740), .ZN(n17) );
  AND2_X1 U16 ( .A1(net52310), .A2(net52339), .ZN(net47352) );
  BUF_X1 U17 ( .A(sel[0]), .Z(net52339) );
  NOR3_X1 U18 ( .A1(net52315), .A2(net52339), .A3(net52310), .ZN(net52322) );
  AND2_X1 U19 ( .A1(net52310), .A2(net52339), .ZN(net52329) );
  INV_X1 U20 ( .A(sel[1]), .ZN(net52310) );
  NAND2_X1 U21 ( .A1(net47376), .A2(n73), .ZN(net53838) );
  INV_X1 U22 ( .A(sel[0]), .ZN(net47426) );
  INV_X1 U23 ( .A(sel[1]), .ZN(net52348) );
  NAND2_X1 U24 ( .A1(n16), .A2(n17), .ZN(O[4]) );
  AND2_X1 U25 ( .A1(A2[4]), .A2(net39231), .ZN(net50741) );
  AOI22_X1 U26 ( .A1(A0[4]), .A2(n75), .B1(A4[4]), .B2(net37179), .ZN(n16) );
  INV_X4 U27 ( .A(n78), .ZN(net37183) );
  INV_X1 U28 ( .A(net37179), .ZN(n78) );
  NOR2_X1 U29 ( .A1(net52364), .A2(net53808), .ZN(n77) );
  BUF_X1 U30 ( .A(net47376), .Z(net53808) );
  INV_X1 U31 ( .A(net52348), .ZN(net47376) );
  AND2_X1 U32 ( .A1(net47376), .A2(net47426), .ZN(net39231) );
  NOR3_X1 U33 ( .A1(net47426), .A2(net52317), .A3(net52348), .ZN(net52323) );
  INV_X1 U34 ( .A(net53812), .ZN(net52364) );
  CLKBUF_X1 U35 ( .A(n72), .Z(net53812) );
  INV_X1 U36 ( .A(net39231), .ZN(net37723) );
  NAND4_X1 U37 ( .A1(n79), .A2(n80), .A3(n81), .A4(n82), .ZN(O[2]) );
  NAND2_X1 U38 ( .A1(net52329), .A2(A1[2]), .ZN(n82) );
  NOR2_X1 U39 ( .A1(net52322), .A2(net52323), .ZN(n81) );
  NAND2_X1 U40 ( .A1(n75), .A2(A0[2]), .ZN(n79) );
  AOI21_X1 U41 ( .B1(A2[3]), .B2(net47373), .A(n84), .ZN(n85) );
  NAND2_X1 U42 ( .A1(A1[3]), .A2(net47352), .ZN(n86) );
  CLKBUF_X1 U43 ( .A(net47352), .Z(net37789) );
  NOR2_X1 U44 ( .A1(net53838), .A2(n83), .ZN(n84) );
  CLKBUF_X1 U45 ( .A(net47373), .Z(net47487) );
  NAND3_X1 U46 ( .A1(n85), .A2(n86), .A3(n18), .ZN(O[3]) );
  NAND2_X1 U47 ( .A1(n10), .A2(n11), .ZN(O[7]) );
  AOI22_X1 U48 ( .A1(A0[7]), .A2(n75), .B1(A4[7]), .B2(net37183), .ZN(n10) );
  AOI222_X1 U49 ( .A1(A1[7]), .A2(net47352), .B1(A3[7]), .B2(net39199), .C1(
        A2[7]), .C2(net37726), .ZN(n11) );
  NAND2_X1 U50 ( .A1(n8), .A2(n9), .ZN(O[8]) );
  AOI22_X1 U51 ( .A1(A0[8]), .A2(n75), .B1(A4[8]), .B2(net37183), .ZN(n8) );
  AOI222_X1 U52 ( .A1(A1[8]), .A2(net47352), .B1(A3[8]), .B2(net37233), .C1(
        A2[8]), .C2(net37726), .ZN(n9) );
  NAND2_X1 U53 ( .A1(n2), .A2(n3), .ZN(O[9]) );
  AOI22_X1 U54 ( .A1(A0[9]), .A2(n75), .B1(net37183), .B2(A4[9]), .ZN(n2) );
  AOI222_X1 U55 ( .A1(A1[9]), .A2(net47352), .B1(A3[9]), .B2(net37233), .C1(
        A2[9]), .C2(net37726), .ZN(n3) );
  NAND2_X1 U56 ( .A1(n66), .A2(n67), .ZN(O[10]) );
  AOI22_X1 U57 ( .A1(A0[10]), .A2(n75), .B1(A4[10]), .B2(net37183), .ZN(n66)
         );
  AOI222_X1 U58 ( .A1(A1[10]), .A2(net47352), .B1(A3[10]), .B2(net37233), .C1(
        A2[10]), .C2(net37726), .ZN(n67) );
  NAND2_X1 U59 ( .A1(n64), .A2(n65), .ZN(O[11]) );
  AOI22_X1 U60 ( .A1(A0[11]), .A2(n75), .B1(A4[11]), .B2(net37183), .ZN(n64)
         );
  AOI222_X1 U61 ( .A1(A1[11]), .A2(net47352), .B1(A3[11]), .B2(net37233), .C1(
        A2[11]), .C2(net37726), .ZN(n65) );
  NAND2_X1 U62 ( .A1(n62), .A2(n63), .ZN(O[12]) );
  AOI22_X1 U63 ( .A1(A0[12]), .A2(n75), .B1(A4[12]), .B2(net37183), .ZN(n62)
         );
  AOI222_X1 U64 ( .A1(A1[12]), .A2(net47352), .B1(A3[12]), .B2(net37233), .C1(
        A2[12]), .C2(net37726), .ZN(n63) );
  NAND2_X1 U65 ( .A1(n60), .A2(n61), .ZN(O[13]) );
  AOI22_X1 U66 ( .A1(A0[13]), .A2(n75), .B1(A4[13]), .B2(net37183), .ZN(n60)
         );
  AOI222_X1 U67 ( .A1(A1[13]), .A2(net37789), .B1(A3[13]), .B2(net37233), .C1(
        A2[13]), .C2(net37726), .ZN(n61) );
  AOI22_X1 U68 ( .A1(A0[16]), .A2(n75), .B1(A4[16]), .B2(net37183), .ZN(n54)
         );
  AOI222_X1 U69 ( .A1(A1[16]), .A2(net37789), .B1(A3[16]), .B2(net37233), .C1(
        A2[16]), .C2(net37726), .ZN(n55) );
  NAND2_X1 U70 ( .A1(n52), .A2(n53), .ZN(O[17]) );
  AOI22_X1 U71 ( .A1(A0[17]), .A2(n75), .B1(A4[17]), .B2(net37183), .ZN(n52)
         );
  AOI222_X1 U72 ( .A1(A1[17]), .A2(net37789), .B1(A3[17]), .B2(net37233), .C1(
        A2[17]), .C2(net37722), .ZN(n53) );
  NAND2_X1 U73 ( .A1(n58), .A2(n59), .ZN(O[14]) );
  AOI22_X1 U74 ( .A1(A0[14]), .A2(n75), .B1(A4[14]), .B2(net37183), .ZN(n58)
         );
  AOI222_X1 U75 ( .A1(A1[14]), .A2(net37789), .B1(A3[14]), .B2(net37233), .C1(
        A2[14]), .C2(net37722), .ZN(n59) );
  NAND2_X1 U76 ( .A1(n56), .A2(n57), .ZN(O[15]) );
  AOI22_X1 U77 ( .A1(A0[15]), .A2(n75), .B1(A4[15]), .B2(net37183), .ZN(n56)
         );
  AOI222_X1 U78 ( .A1(A1[15]), .A2(net37789), .B1(A3[15]), .B2(net37233), .C1(
        A2[15]), .C2(net37722), .ZN(n57) );
  NAND2_X1 U79 ( .A1(n50), .A2(n51), .ZN(O[18]) );
  AOI22_X1 U80 ( .A1(A0[18]), .A2(n75), .B1(A4[18]), .B2(net37183), .ZN(n50)
         );
  AOI222_X1 U81 ( .A1(A1[18]), .A2(net37789), .B1(A3[18]), .B2(net37233), .C1(
        A2[18]), .C2(net37722), .ZN(n51) );
  NAND2_X1 U82 ( .A1(n48), .A2(n49), .ZN(O[19]) );
  AOI22_X1 U83 ( .A1(A0[19]), .A2(n75), .B1(A4[19]), .B2(net37183), .ZN(n48)
         );
  AOI222_X1 U84 ( .A1(A1[19]), .A2(net37789), .B1(A3[19]), .B2(net37233), .C1(
        A2[19]), .C2(net37722), .ZN(n49) );
  NAND2_X1 U85 ( .A1(n44), .A2(n45), .ZN(O[20]) );
  AOI22_X1 U86 ( .A1(A0[20]), .A2(n75), .B1(A4[20]), .B2(net37183), .ZN(n44)
         );
  AOI222_X1 U87 ( .A1(A1[20]), .A2(net37789), .B1(A3[20]), .B2(net37233), .C1(
        A2[20]), .C2(net37722), .ZN(n45) );
  NAND2_X1 U88 ( .A1(n42), .A2(n43), .ZN(O[21]) );
  AOI22_X1 U89 ( .A1(A0[21]), .A2(n75), .B1(A4[21]), .B2(net37183), .ZN(n42)
         );
  AOI222_X1 U90 ( .A1(A1[21]), .A2(net37789), .B1(A3[21]), .B2(net37233), .C1(
        A2[21]), .C2(net37722), .ZN(n43) );
  NAND2_X1 U91 ( .A1(n40), .A2(n41), .ZN(O[22]) );
  AOI222_X1 U92 ( .A1(A1[22]), .A2(net37789), .B1(A3[22]), .B2(net37233), .C1(
        A2[22]), .C2(net37722), .ZN(n41) );
  AOI22_X1 U93 ( .A1(A0[22]), .A2(n75), .B1(A4[22]), .B2(net37183), .ZN(n40)
         );
  NAND2_X1 U94 ( .A1(n38), .A2(n39), .ZN(O[23]) );
  AOI22_X1 U95 ( .A1(A0[23]), .A2(n75), .B1(A4[23]), .B2(net37183), .ZN(n38)
         );
  AOI222_X1 U96 ( .A1(A1[23]), .A2(net37789), .B1(A3[23]), .B2(net37233), .C1(
        A2[23]), .C2(net37722), .ZN(n39) );
  NAND2_X1 U97 ( .A1(n36), .A2(n37), .ZN(O[24]) );
  AOI22_X1 U98 ( .A1(A0[24]), .A2(n75), .B1(A4[24]), .B2(net37183), .ZN(n36)
         );
  AOI222_X1 U99 ( .A1(A1[24]), .A2(net37789), .B1(A3[24]), .B2(net37233), .C1(
        A2[24]), .C2(net37722), .ZN(n37) );
  NAND2_X1 U100 ( .A1(n34), .A2(n35), .ZN(O[25]) );
  AOI22_X1 U101 ( .A1(A0[25]), .A2(n75), .B1(A4[25]), .B2(net37183), .ZN(n34)
         );
  AOI222_X1 U102 ( .A1(A1[25]), .A2(net37789), .B1(A3[25]), .B2(net37233), 
        .C1(A2[25]), .C2(net37722), .ZN(n35) );
  NAND2_X1 U103 ( .A1(n32), .A2(n33), .ZN(O[26]) );
  AOI22_X1 U104 ( .A1(A0[26]), .A2(n75), .B1(A4[26]), .B2(net37183), .ZN(n32)
         );
  AOI222_X1 U105 ( .A1(A1[26]), .A2(net37789), .B1(A3[26]), .B2(net37233), 
        .C1(A2[26]), .C2(net37722), .ZN(n33) );
  NAND2_X1 U106 ( .A1(n30), .A2(n31), .ZN(O[27]) );
  AOI22_X1 U107 ( .A1(A0[27]), .A2(n75), .B1(A4[27]), .B2(net37183), .ZN(n30)
         );
  AOI222_X1 U108 ( .A1(A1[27]), .A2(net37789), .B1(A3[27]), .B2(net37233), 
        .C1(A2[27]), .C2(net37722), .ZN(n31) );
  NAND2_X1 U109 ( .A1(n28), .A2(n29), .ZN(O[28]) );
  AOI22_X1 U110 ( .A1(A0[28]), .A2(n75), .B1(A4[28]), .B2(net37183), .ZN(n28)
         );
  AOI222_X1 U111 ( .A1(A1[28]), .A2(net37789), .B1(A3[28]), .B2(net37233), 
        .C1(A2[28]), .C2(net37722), .ZN(n29) );
  NAND2_X1 U112 ( .A1(n26), .A2(n27), .ZN(O[29]) );
  AOI22_X1 U113 ( .A1(A0[29]), .A2(n75), .B1(A4[29]), .B2(net37183), .ZN(n26)
         );
  AOI222_X1 U114 ( .A1(A1[29]), .A2(net37789), .B1(A3[29]), .B2(net37233), 
        .C1(A2[29]), .C2(net37722), .ZN(n27) );
  NAND2_X1 U115 ( .A1(n20), .A2(n21), .ZN(O[31]) );
  AOI22_X1 U116 ( .A1(A0[31]), .A2(n75), .B1(A4[31]), .B2(net37183), .ZN(n20)
         );
  AOI222_X1 U117 ( .A1(A1[31]), .A2(net37789), .B1(A3[31]), .B2(net37233), 
        .C1(A2[31]), .C2(net37722), .ZN(n21) );
  NAND2_X1 U118 ( .A1(n22), .A2(n23), .ZN(O[30]) );
  AOI222_X1 U119 ( .A1(A1[30]), .A2(net37789), .B1(A3[30]), .B2(net37233), 
        .C1(A2[30]), .C2(net37722), .ZN(n23) );
  AOI22_X1 U120 ( .A1(A0[30]), .A2(n75), .B1(A4[30]), .B2(net37183), .ZN(n22)
         );
  NAND2_X1 U121 ( .A1(n46), .A2(n47), .ZN(O[1]) );
  AOI22_X1 U122 ( .A1(A0[1]), .A2(n75), .B1(A4[1]), .B2(net37183), .ZN(n46) );
  AOI222_X1 U123 ( .A1(A1[1]), .A2(net37789), .B1(A3[1]), .B2(net37233), .C1(
        A2[1]), .C2(net37722), .ZN(n47) );
  NAND2_X1 U124 ( .A1(n68), .A2(n69), .ZN(O[0]) );
  AOI22_X1 U125 ( .A1(A0[0]), .A2(n75), .B1(A4[0]), .B2(net37183), .ZN(n68) );
  AOI222_X1 U126 ( .A1(A1[0]), .A2(net37789), .B1(A3[0]), .B2(net37233), .C1(
        A2[0]), .C2(net37722), .ZN(n69) );
  CLKBUF_X1 U127 ( .A(net37726), .Z(net37722) );
  NAND2_X1 U128 ( .A1(n12), .A2(n13), .ZN(O[6]) );
  AOI222_X1 U129 ( .A1(A1[6]), .A2(net47352), .B1(A3[6]), .B2(net39199), .C1(
        A2[6]), .C2(net47487), .ZN(n13) );
  INV_X1 U130 ( .A(net37723), .ZN(net37726) );
  AOI22_X1 U131 ( .A1(A0[6]), .A2(n75), .B1(A4[6]), .B2(net37183), .ZN(n12) );
  NAND2_X1 U132 ( .A1(n14), .A2(n15), .ZN(O[5]) );
  AOI222_X1 U133 ( .A1(A1[5]), .A2(net47352), .B1(A3[5]), .B2(net39199), .C1(
        A2[5]), .C2(net47373), .ZN(n15) );
  AOI22_X1 U134 ( .A1(A0[5]), .A2(n75), .B1(A4[5]), .B2(net37179), .ZN(n14) );
  AND2_X1 U135 ( .A1(A0[3]), .A2(n75), .ZN(n87) );
  NOR2_X1 U136 ( .A1(n87), .A2(n74), .ZN(n18) );
  NAND2_X1 U137 ( .A1(n54), .A2(n55), .ZN(O[16]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_193 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n6) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(n5) );
  XNOR2_X1 U3 ( .A(Ci), .B(n5), .ZN(S) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(B), .A2(A), .B1(n6), .B2(n4), .ZN(n7) );
endmodule


module FA_194 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_195 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_196 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_197 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  INV_X1 U3 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_198 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U2 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U3 ( .A(Ci), .B(n4), .ZN(S) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_199 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n5), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  INV_X1 U3 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_200 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n6), .B1(n4), .B2(n7), .ZN(Co) );
  INV_X1 U3 ( .A(B), .ZN(n5) );
  INV_X1 U4 ( .A(A), .ZN(n6) );
  INV_X1 U5 ( .A(Ci), .ZN(n7) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_201 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_202 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_203 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_204 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9, n10;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n10) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  INV_X1 U2 ( .A(B), .ZN(n5) );
  NAND2_X1 U3 ( .A1(n7), .A2(n8), .ZN(Co) );
  OR2_X1 U5 ( .A1(n4), .A2(n5), .ZN(n7) );
  NAND2_X1 U6 ( .A1(Ci), .A2(n10), .ZN(n8) );
  INV_X1 U7 ( .A(n10), .ZN(n9) );
  XNOR2_X1 U8 ( .A(Ci), .B(n9), .ZN(S) );
endmodule


module FA_205 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_206 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n9), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n9) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  INV_X1 U2 ( .A(B), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n8), .A2(n7), .ZN(Co) );
  OR2_X1 U6 ( .A1(n4), .A2(n5), .ZN(n7) );
  NAND2_X1 U7 ( .A1(Ci), .A2(n9), .ZN(n8) );
endmodule


module FA_207 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_208 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  OAI22_X1 U3 ( .A1(n5), .A2(n6), .B1(n4), .B2(n7), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(A), .ZN(n6) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
endmodule


module FA_209 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_210 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_211 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n7) );
  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U2 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(Co) );
endmodule


module FA_212 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XNOR2_X1 U1 ( .A(A), .B(B), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  OAI22_X1 U3 ( .A1(n5), .A2(n6), .B1(n4), .B2(n7), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(A), .ZN(n6) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
endmodule


module FA_213 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_214 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n6) );
  AND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  AOI21_X1 U3 ( .B1(Ci), .B2(n5), .A(n4), .ZN(n2) );
  INV_X1 U4 ( .A(n6), .ZN(n5) );
  XNOR2_X1 U5 ( .A(Ci), .B(n6), .ZN(S) );
  INV_X1 U6 ( .A(n2), .ZN(Co) );
endmodule


module FA_215 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n6) );
  INV_X1 U2 ( .A(n6), .ZN(n5) );
  AND2_X1 U3 ( .A1(B), .A2(A), .ZN(n4) );
  XNOR2_X1 U4 ( .A(Ci), .B(n6), .ZN(S) );
  AOI21_X1 U5 ( .B1(Ci), .B2(n5), .A(n4), .ZN(n2) );
  INV_X1 U6 ( .A(n2), .ZN(Co) );
endmodule


module FA_216 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n9), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n9) );
  NAND2_X1 U1 ( .A1(n5), .A2(n6), .ZN(Co) );
  OR2_X1 U2 ( .A1(n7), .A2(n8), .ZN(n6) );
  NAND2_X1 U5 ( .A1(Ci), .A2(n9), .ZN(n5) );
  INV_X1 U6 ( .A(B), .ZN(n7) );
  INV_X1 U7 ( .A(A), .ZN(n8) );
endmodule


module FA_217 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(Co) );
endmodule


module FA_218 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n6) );
  AND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  AOI21_X1 U3 ( .B1(Ci), .B2(n5), .A(n4), .ZN(n2) );
  INV_X1 U4 ( .A(n2), .ZN(Co) );
  INV_X1 U5 ( .A(n6), .ZN(n5) );
  XNOR2_X1 U6 ( .A(Ci), .B(n6), .ZN(S) );
endmodule


module FA_219 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  AOI21_X1 U2 ( .B1(Ci), .B2(n6), .A(n4), .ZN(n2) );
  INV_X1 U3 ( .A(n2), .ZN(Co) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  XNOR2_X1 U5 ( .A(Ci), .B(n5), .ZN(S) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n5) );
endmodule


module FA_220 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net38805, net50737, n2, n4, n5, n6;

  XOR2_X1 U3 ( .A(net38805), .B(net50737), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  BUF_X1 U1 ( .A(Ci), .Z(net38805) );
  AOI22_X1 U2 ( .A1(n6), .A2(n5), .B1(Ci), .B2(n4), .ZN(n2) );
  INV_X1 U5 ( .A(n2), .ZN(Co) );
  CLKBUF_X1 U6 ( .A(A), .Z(n5) );
  CLKBUF_X1 U7 ( .A(B), .Z(n6) );
  CLKBUF_X1 U8 ( .A(n4), .Z(net50737) );
endmodule


module FA_221 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net39192, net48513, n4, n5, n6, n7, n8;
  assign net39192 = Ci;

  XOR2_X1 U3 ( .A(net48513), .B(n5), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  XOR2_X1 U2 ( .A(n8), .B(n4), .Z(n5) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(Co) );
  NOR2_X1 U5 ( .A1(net39192), .A2(A), .ZN(n6) );
  OAI22_X1 U6 ( .A1(net39192), .A2(B), .B1(A), .B2(B), .ZN(n7) );
  CLKBUF_X1 U7 ( .A(net39192), .Z(net48513) );
  CLKBUF_X1 U8 ( .A(A), .Z(n8) );
endmodule


module FA_222 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n5) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(Co) );
endmodule


module FA_223 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_0 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_223 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_222 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_221 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_220 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_219 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_218 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_217 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_216 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_215 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_214 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11]) );
  FA_213 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12]) );
  FA_212 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13]) );
  FA_211 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14]) );
  FA_210 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15]) );
  FA_209 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16]) );
  FA_208 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17]) );
  FA_207 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18]) );
  FA_206 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19]) );
  FA_205 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20]) );
  FA_204 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21]) );
  FA_203 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22]) );
  FA_202 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23]) );
  FA_201 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24]) );
  FA_200 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25]) );
  FA_199 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26]) );
  FA_198 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27]) );
  FA_197 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28]) );
  FA_196 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29]) );
  FA_195 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30]) );
  FA_194 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31]) );
  FA_193 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module MUX_5TO1_NBIT32_4 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n1, n2, n3, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91;

  AND2_X1 U1 ( .A1(sel[1]), .A2(n1), .ZN(n72) );
  BUF_X1 U2 ( .A(n5), .Z(n81) );
  NOR2_X1 U3 ( .A1(n1), .A2(sel[1]), .ZN(n73) );
  BUF_X1 U4 ( .A(n7), .Z(n77) );
  BUF_X1 U5 ( .A(sel[2]), .Z(n91) );
  BUF_X1 U6 ( .A(n72), .Z(n80) );
  BUF_X1 U7 ( .A(n73), .Z(n87) );
  BUF_X1 U8 ( .A(n81), .Z(n84) );
  BUF_X1 U9 ( .A(n72), .Z(n78) );
  BUF_X1 U10 ( .A(n73), .Z(n85) );
  BUF_X1 U11 ( .A(n81), .Z(n82) );
  BUF_X1 U12 ( .A(n73), .Z(n86) );
  BUF_X1 U13 ( .A(n72), .Z(n79) );
  BUF_X1 U14 ( .A(n81), .Z(n83) );
  BUF_X1 U15 ( .A(n77), .Z(n75) );
  BUF_X1 U16 ( .A(n77), .Z(n74) );
  BUF_X1 U17 ( .A(n77), .Z(n76) );
  INV_X1 U18 ( .A(sel[0]), .ZN(n1) );
  AND2_X1 U19 ( .A1(sel[1]), .A2(sel[0]), .ZN(n5) );
  BUF_X1 U20 ( .A(n91), .Z(n90) );
  BUF_X1 U21 ( .A(n91), .Z(n89) );
  BUF_X1 U22 ( .A(n91), .Z(n88) );
  NOR3_X1 U23 ( .A1(sel[1]), .A2(n90), .A3(sel[0]), .ZN(n7) );
  NAND2_X1 U24 ( .A1(n8), .A2(n9), .ZN(O[8]) );
  AOI22_X1 U25 ( .A1(A0[8]), .A2(n76), .B1(A4[8]), .B2(n88), .ZN(n8) );
  AOI222_X1 U26 ( .A1(A1[8]), .A2(n87), .B1(A3[8]), .B2(n84), .C1(A2[8]), .C2(
        n80), .ZN(n9) );
  NAND2_X1 U27 ( .A1(n2), .A2(n3), .ZN(O[9]) );
  AOI22_X1 U28 ( .A1(A0[9]), .A2(n76), .B1(n90), .B2(A4[9]), .ZN(n2) );
  AOI222_X1 U29 ( .A1(A1[9]), .A2(n87), .B1(A3[9]), .B2(n84), .C1(A2[9]), .C2(
        n80), .ZN(n3) );
  NAND2_X1 U30 ( .A1(n66), .A2(n67), .ZN(O[10]) );
  AOI22_X1 U31 ( .A1(A0[10]), .A2(n74), .B1(A4[10]), .B2(n90), .ZN(n66) );
  NAND2_X1 U32 ( .A1(n64), .A2(n65), .ZN(O[11]) );
  NAND2_X1 U33 ( .A1(n62), .A2(n63), .ZN(O[12]) );
  NAND2_X1 U34 ( .A1(n60), .A2(n61), .ZN(O[13]) );
  NAND2_X1 U35 ( .A1(n58), .A2(n59), .ZN(O[14]) );
  AOI222_X1 U36 ( .A1(A1[14]), .A2(n85), .B1(A3[14]), .B2(n82), .C1(A2[14]), 
        .C2(n78), .ZN(n59) );
  NAND2_X1 U37 ( .A1(n56), .A2(n57), .ZN(O[15]) );
  AOI22_X1 U38 ( .A1(A0[15]), .A2(n74), .B1(A4[15]), .B2(n90), .ZN(n56) );
  AOI222_X1 U39 ( .A1(A1[15]), .A2(n85), .B1(A3[15]), .B2(n82), .C1(A2[15]), 
        .C2(n78), .ZN(n57) );
  NAND2_X1 U40 ( .A1(n54), .A2(n55), .ZN(O[16]) );
  AOI22_X1 U41 ( .A1(A0[16]), .A2(n74), .B1(A4[16]), .B2(n89), .ZN(n54) );
  AOI222_X1 U42 ( .A1(A1[16]), .A2(n85), .B1(A3[16]), .B2(n82), .C1(A2[16]), 
        .C2(n78), .ZN(n55) );
  NAND2_X1 U43 ( .A1(n52), .A2(n53), .ZN(O[17]) );
  AOI22_X1 U44 ( .A1(A0[17]), .A2(n74), .B1(A4[17]), .B2(n89), .ZN(n52) );
  AOI222_X1 U45 ( .A1(A1[17]), .A2(n85), .B1(A3[17]), .B2(n82), .C1(A2[17]), 
        .C2(n78), .ZN(n53) );
  NAND2_X1 U46 ( .A1(n50), .A2(n51), .ZN(O[18]) );
  AOI22_X1 U47 ( .A1(A0[18]), .A2(n74), .B1(A4[18]), .B2(n89), .ZN(n50) );
  AOI222_X1 U48 ( .A1(A1[18]), .A2(n85), .B1(A3[18]), .B2(n82), .C1(A2[18]), 
        .C2(n78), .ZN(n51) );
  NAND2_X1 U49 ( .A1(n48), .A2(n49), .ZN(O[19]) );
  AOI22_X1 U50 ( .A1(A0[19]), .A2(n74), .B1(A4[19]), .B2(n89), .ZN(n48) );
  AOI222_X1 U51 ( .A1(A1[19]), .A2(n85), .B1(A3[19]), .B2(n82), .C1(A2[19]), 
        .C2(n78), .ZN(n49) );
  NAND2_X1 U52 ( .A1(n44), .A2(n45), .ZN(O[20]) );
  AOI22_X1 U53 ( .A1(A0[20]), .A2(n75), .B1(A4[20]), .B2(n89), .ZN(n44) );
  AOI222_X1 U54 ( .A1(A1[20]), .A2(n86), .B1(A3[20]), .B2(n83), .C1(A2[20]), 
        .C2(n79), .ZN(n45) );
  NAND2_X1 U55 ( .A1(n34), .A2(n35), .ZN(O[25]) );
  AOI22_X1 U56 ( .A1(A0[25]), .A2(n75), .B1(A4[25]), .B2(n89), .ZN(n34) );
  AOI222_X1 U57 ( .A1(A1[25]), .A2(n86), .B1(A3[25]), .B2(n83), .C1(A2[25]), 
        .C2(n79), .ZN(n35) );
  NAND2_X1 U58 ( .A1(n42), .A2(n43), .ZN(O[21]) );
  AOI22_X1 U59 ( .A1(A0[21]), .A2(n75), .B1(A4[21]), .B2(n89), .ZN(n42) );
  AOI222_X1 U60 ( .A1(A1[21]), .A2(n86), .B1(A3[21]), .B2(n83), .C1(A2[21]), 
        .C2(n79), .ZN(n43) );
  NAND2_X1 U61 ( .A1(n40), .A2(n41), .ZN(O[22]) );
  AOI22_X1 U62 ( .A1(A0[22]), .A2(n75), .B1(A4[22]), .B2(n89), .ZN(n40) );
  AOI222_X1 U63 ( .A1(A1[22]), .A2(n86), .B1(A3[22]), .B2(n83), .C1(A2[22]), 
        .C2(n79), .ZN(n41) );
  NAND2_X1 U64 ( .A1(n32), .A2(n33), .ZN(O[26]) );
  AOI22_X1 U65 ( .A1(A0[26]), .A2(n75), .B1(A4[26]), .B2(n88), .ZN(n32) );
  AOI222_X1 U66 ( .A1(A1[26]), .A2(n86), .B1(A3[26]), .B2(n83), .C1(A2[26]), 
        .C2(n79), .ZN(n33) );
  NAND2_X1 U67 ( .A1(n38), .A2(n39), .ZN(O[23]) );
  AOI22_X1 U68 ( .A1(A0[23]), .A2(n75), .B1(A4[23]), .B2(n89), .ZN(n38) );
  AOI222_X1 U69 ( .A1(A1[23]), .A2(n86), .B1(A3[23]), .B2(n83), .C1(A2[23]), 
        .C2(n79), .ZN(n39) );
  NAND2_X1 U70 ( .A1(n36), .A2(n37), .ZN(O[24]) );
  AOI22_X1 U71 ( .A1(A0[24]), .A2(n75), .B1(A4[24]), .B2(n89), .ZN(n36) );
  AOI222_X1 U72 ( .A1(A1[24]), .A2(n86), .B1(A3[24]), .B2(n83), .C1(A2[24]), 
        .C2(n79), .ZN(n37) );
  NAND2_X1 U73 ( .A1(n30), .A2(n31), .ZN(O[27]) );
  AOI222_X1 U74 ( .A1(A1[27]), .A2(n86), .B1(A3[27]), .B2(n83), .C1(A2[27]), 
        .C2(n79), .ZN(n31) );
  AOI22_X1 U75 ( .A1(A0[27]), .A2(n75), .B1(A4[27]), .B2(n88), .ZN(n30) );
  NAND2_X1 U76 ( .A1(n28), .A2(n29), .ZN(O[28]) );
  AOI22_X1 U77 ( .A1(A0[28]), .A2(n75), .B1(A4[28]), .B2(n88), .ZN(n28) );
  AOI222_X1 U78 ( .A1(A1[28]), .A2(n86), .B1(A3[28]), .B2(n83), .C1(A2[28]), 
        .C2(n79), .ZN(n29) );
  NAND2_X1 U79 ( .A1(n26), .A2(n27), .ZN(O[29]) );
  AOI22_X1 U80 ( .A1(A0[29]), .A2(n75), .B1(A4[29]), .B2(n88), .ZN(n26) );
  AOI222_X1 U81 ( .A1(A1[29]), .A2(n86), .B1(A3[29]), .B2(n83), .C1(A2[29]), 
        .C2(n79), .ZN(n27) );
  NAND2_X1 U82 ( .A1(n20), .A2(n21), .ZN(O[31]) );
  AOI22_X1 U83 ( .A1(A0[31]), .A2(n76), .B1(A4[31]), .B2(n88), .ZN(n20) );
  AOI222_X1 U84 ( .A1(A1[31]), .A2(n87), .B1(A3[31]), .B2(n84), .C1(A2[31]), 
        .C2(n80), .ZN(n21) );
  NAND2_X1 U85 ( .A1(n22), .A2(n23), .ZN(O[30]) );
  AOI22_X1 U86 ( .A1(A0[30]), .A2(n75), .B1(A4[30]), .B2(n89), .ZN(n22) );
  AOI222_X1 U87 ( .A1(A1[30]), .A2(n86), .B1(A3[30]), .B2(n83), .C1(A2[30]), 
        .C2(n79), .ZN(n23) );
  NAND2_X1 U88 ( .A1(n68), .A2(n69), .ZN(O[0]) );
  AOI22_X1 U89 ( .A1(A0[0]), .A2(n74), .B1(A4[0]), .B2(n90), .ZN(n68) );
  AOI222_X1 U90 ( .A1(A1[0]), .A2(n85), .B1(A3[0]), .B2(n82), .C1(A2[0]), .C2(
        n78), .ZN(n69) );
  NAND2_X1 U91 ( .A1(n46), .A2(n47), .ZN(O[1]) );
  AOI22_X1 U92 ( .A1(A0[1]), .A2(n74), .B1(A4[1]), .B2(n89), .ZN(n46) );
  AOI222_X1 U93 ( .A1(A1[1]), .A2(n85), .B1(A3[1]), .B2(n82), .C1(A2[1]), .C2(
        n78), .ZN(n47) );
  NAND2_X1 U94 ( .A1(n24), .A2(n25), .ZN(O[2]) );
  AOI22_X1 U95 ( .A1(A0[2]), .A2(n75), .B1(A4[2]), .B2(n88), .ZN(n24) );
  AOI222_X1 U96 ( .A1(A1[2]), .A2(n86), .B1(A3[2]), .B2(n83), .C1(A2[2]), .C2(
        n79), .ZN(n25) );
  NAND2_X1 U97 ( .A1(n18), .A2(n19), .ZN(O[3]) );
  AOI22_X1 U98 ( .A1(A0[3]), .A2(n76), .B1(A4[3]), .B2(n88), .ZN(n18) );
  AOI222_X1 U99 ( .A1(A1[3]), .A2(n87), .B1(A3[3]), .B2(n84), .C1(A2[3]), .C2(
        n80), .ZN(n19) );
  NAND2_X1 U100 ( .A1(n16), .A2(n17), .ZN(O[4]) );
  AOI22_X1 U101 ( .A1(A0[4]), .A2(n76), .B1(A4[4]), .B2(n88), .ZN(n16) );
  AOI222_X1 U102 ( .A1(A1[4]), .A2(n87), .B1(A3[4]), .B2(n84), .C1(A2[4]), 
        .C2(n80), .ZN(n17) );
  NAND2_X1 U103 ( .A1(n14), .A2(n15), .ZN(O[5]) );
  AOI22_X1 U104 ( .A1(A0[5]), .A2(n76), .B1(A4[5]), .B2(n88), .ZN(n14) );
  AOI222_X1 U105 ( .A1(A1[5]), .A2(n87), .B1(A3[5]), .B2(n84), .C1(A2[5]), 
        .C2(n80), .ZN(n15) );
  NAND2_X1 U106 ( .A1(n12), .A2(n13), .ZN(O[6]) );
  AOI22_X1 U107 ( .A1(A0[6]), .A2(n76), .B1(A4[6]), .B2(n88), .ZN(n12) );
  AOI222_X1 U108 ( .A1(A1[6]), .A2(n87), .B1(A3[6]), .B2(n84), .C1(A2[6]), 
        .C2(n80), .ZN(n13) );
  NAND2_X1 U109 ( .A1(n10), .A2(n11), .ZN(O[7]) );
  AOI22_X1 U110 ( .A1(A0[7]), .A2(n76), .B1(A4[7]), .B2(n88), .ZN(n10) );
  AOI222_X1 U111 ( .A1(A1[7]), .A2(n87), .B1(A3[7]), .B2(n84), .C1(A2[7]), 
        .C2(n80), .ZN(n11) );
  AOI22_X1 U112 ( .A1(A0[14]), .A2(n74), .B1(A4[14]), .B2(n90), .ZN(n58) );
  AOI222_X1 U113 ( .A1(A1[13]), .A2(n85), .B1(A3[13]), .B2(n82), .C1(A2[13]), 
        .C2(n78), .ZN(n61) );
  AOI22_X1 U114 ( .A1(A0[11]), .A2(n74), .B1(A4[11]), .B2(n90), .ZN(n64) );
  AOI222_X1 U115 ( .A1(A1[10]), .A2(n85), .B1(A3[10]), .B2(n82), .C1(A2[10]), 
        .C2(n78), .ZN(n67) );
  AOI22_X1 U116 ( .A1(A0[12]), .A2(n74), .B1(A4[12]), .B2(n90), .ZN(n62) );
  AOI222_X1 U117 ( .A1(A1[11]), .A2(n85), .B1(A3[11]), .B2(n82), .C1(A2[11]), 
        .C2(n78), .ZN(n65) );
  AOI22_X1 U118 ( .A1(A0[13]), .A2(n74), .B1(A4[13]), .B2(n90), .ZN(n60) );
  AOI222_X1 U119 ( .A1(A1[12]), .A2(n85), .B1(A3[12]), .B2(n82), .C1(A2[12]), 
        .C2(n78), .ZN(n63) );
endmodule


module BE_BLOCK_1 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  OAI21_X1 U4 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U6 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U7 ( .A(b[2]), .ZN(n7) );
  AND3_X1 U8 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
endmodule


module BE_BLOCK_2 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  OAI21_X1 U4 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U6 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U7 ( .A(b[2]), .ZN(n7) );
  AND3_X1 U8 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
endmodule


module BE_BLOCK_3 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  OAI21_X1 U4 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U6 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U7 ( .A(b[2]), .ZN(n7) );
  AND3_X1 U8 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
endmodule


module BE_BLOCK_4 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  OAI21_X1 U4 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U6 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U7 ( .A(b[2]), .ZN(n7) );
  AND3_X1 U8 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
endmodule


module BE_BLOCK_5 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  OAI21_X1 U4 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U6 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U7 ( .A(b[2]), .ZN(n7) );
  AND3_X1 U8 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
endmodule


module BE_BLOCK_6 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  OAI21_X1 U3 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  AOI21_X1 U4 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U6 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U7 ( .A(b[2]), .ZN(n7) );
  AND3_X1 U8 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
endmodule


module BE_BLOCK_7 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   net47180, net47149, net38636, net47181, net38356, n3, n1, n4;

  AND3_X1 U3 ( .A1(b[2]), .A2(net47181), .A3(net38636), .ZN(sel[2]) );
  OAI22_X1 U4 ( .A1(n3), .A2(n1), .B1(b[2]), .B2(net47181), .ZN(sel[1]) );
  INV_X1 U5 ( .A(b[2]), .ZN(n1) );
  OAI21_X1 U6 ( .B1(b[1]), .B2(b[0]), .A(net38356), .ZN(n3) );
  NAND2_X1 U7 ( .A1(b[0]), .A2(b[1]), .ZN(net38356) );
  AOI21_X1 U8 ( .B1(net47149), .B2(net47180), .A(b[2]), .ZN(sel[0]) );
  NAND2_X1 U9 ( .A1(b[0]), .A2(b[1]), .ZN(net47181) );
  NAND2_X1 U10 ( .A1(b[0]), .A2(b[1]), .ZN(net47180) );
  OAI21_X1 U11 ( .B1(b[1]), .B2(b[0]), .A(n4), .ZN(net47149) );
  CLKBUF_X1 U12 ( .A(net47149), .Z(net38636) );
  NAND2_X1 U13 ( .A1(b[0]), .A2(b[1]), .ZN(n4) );
endmodule


module MUX_5TO1_NBIT32_1 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160;

  BUF_X1 U1 ( .A(n155), .Z(n76) );
  BUF_X1 U2 ( .A(n156), .Z(n80) );
  BUF_X1 U3 ( .A(n157), .Z(n87) );
  BUF_X1 U4 ( .A(n154), .Z(n75) );
  BUF_X1 U5 ( .A(sel[2]), .Z(n91) );
  BUF_X1 U6 ( .A(n76), .Z(n77) );
  BUF_X1 U7 ( .A(n87), .Z(n84) );
  BUF_X1 U8 ( .A(n80), .Z(n81) );
  BUF_X1 U9 ( .A(n76), .Z(n78) );
  BUF_X1 U10 ( .A(n87), .Z(n85) );
  BUF_X1 U11 ( .A(n80), .Z(n82) );
  BUF_X1 U12 ( .A(n87), .Z(n86) );
  BUF_X1 U13 ( .A(n76), .Z(n79) );
  BUF_X1 U14 ( .A(n80), .Z(n83) );
  BUF_X1 U15 ( .A(n75), .Z(n73) );
  BUF_X1 U16 ( .A(n75), .Z(n72) );
  BUF_X1 U17 ( .A(n75), .Z(n74) );
  AND2_X1 U18 ( .A1(sel[1]), .A2(n160), .ZN(n155) );
  INV_X1 U19 ( .A(sel[0]), .ZN(n160) );
  NOR2_X1 U20 ( .A1(n160), .A2(sel[1]), .ZN(n157) );
  AND2_X1 U21 ( .A1(sel[1]), .A2(sel[0]), .ZN(n156) );
  BUF_X1 U22 ( .A(n91), .Z(n90) );
  BUF_X1 U23 ( .A(n91), .Z(n89) );
  BUF_X1 U24 ( .A(n91), .Z(n88) );
  NOR3_X1 U25 ( .A1(sel[1]), .A2(n90), .A3(sel[0]), .ZN(n154) );
  NAND2_X1 U26 ( .A1(n103), .A2(n102), .ZN(O[14]) );
  AOI22_X1 U27 ( .A1(A0[14]), .A2(n72), .B1(A4[14]), .B2(n90), .ZN(n103) );
  AOI222_X1 U28 ( .A1(A1[14]), .A2(n84), .B1(A3[14]), .B2(n81), .C1(A2[14]), 
        .C2(n77), .ZN(n102) );
  NAND2_X1 U29 ( .A1(n105), .A2(n104), .ZN(O[15]) );
  AOI22_X1 U30 ( .A1(A0[15]), .A2(n72), .B1(A4[15]), .B2(n90), .ZN(n105) );
  AOI222_X1 U31 ( .A1(A1[15]), .A2(n84), .B1(A3[15]), .B2(n81), .C1(A2[15]), 
        .C2(n77), .ZN(n104) );
  NAND2_X1 U32 ( .A1(n107), .A2(n106), .ZN(O[16]) );
  AOI22_X1 U33 ( .A1(A0[16]), .A2(n72), .B1(A4[16]), .B2(n89), .ZN(n107) );
  NAND2_X1 U34 ( .A1(n109), .A2(n108), .ZN(O[17]) );
  NAND2_X1 U35 ( .A1(n111), .A2(n110), .ZN(O[18]) );
  NAND2_X1 U36 ( .A1(n113), .A2(n112), .ZN(O[19]) );
  NAND2_X1 U37 ( .A1(n117), .A2(n116), .ZN(O[20]) );
  AOI222_X1 U38 ( .A1(A1[20]), .A2(n85), .B1(A3[20]), .B2(n82), .C1(A2[20]), 
        .C2(n78), .ZN(n116) );
  NAND2_X1 U39 ( .A1(n119), .A2(n118), .ZN(O[21]) );
  AOI22_X1 U40 ( .A1(A0[21]), .A2(n73), .B1(A4[21]), .B2(n89), .ZN(n119) );
  AOI222_X1 U41 ( .A1(A1[21]), .A2(n85), .B1(A3[21]), .B2(n82), .C1(A2[21]), 
        .C2(n78), .ZN(n118) );
  NAND2_X1 U42 ( .A1(n121), .A2(n120), .ZN(O[22]) );
  AOI22_X1 U43 ( .A1(A0[22]), .A2(n73), .B1(A4[22]), .B2(n89), .ZN(n121) );
  AOI222_X1 U44 ( .A1(A1[22]), .A2(n85), .B1(A3[22]), .B2(n82), .C1(A2[22]), 
        .C2(n78), .ZN(n120) );
  NAND2_X1 U45 ( .A1(n123), .A2(n122), .ZN(O[23]) );
  AOI22_X1 U46 ( .A1(A0[23]), .A2(n73), .B1(A4[23]), .B2(n89), .ZN(n123) );
  AOI222_X1 U47 ( .A1(A1[23]), .A2(n85), .B1(A3[23]), .B2(n82), .C1(A2[23]), 
        .C2(n78), .ZN(n122) );
  NAND2_X1 U48 ( .A1(n125), .A2(n124), .ZN(O[24]) );
  AOI22_X1 U49 ( .A1(A0[24]), .A2(n73), .B1(A4[24]), .B2(n89), .ZN(n125) );
  AOI222_X1 U50 ( .A1(A1[24]), .A2(n85), .B1(A3[24]), .B2(n82), .C1(A2[24]), 
        .C2(n78), .ZN(n124) );
  NAND2_X1 U51 ( .A1(n127), .A2(n126), .ZN(O[25]) );
  AOI22_X1 U52 ( .A1(A0[25]), .A2(n73), .B1(A4[25]), .B2(n89), .ZN(n127) );
  AOI222_X1 U53 ( .A1(A1[25]), .A2(n85), .B1(A3[25]), .B2(n82), .C1(A2[25]), 
        .C2(n78), .ZN(n126) );
  NAND2_X1 U54 ( .A1(n129), .A2(n128), .ZN(O[26]) );
  AOI22_X1 U55 ( .A1(A0[26]), .A2(n73), .B1(A4[26]), .B2(n88), .ZN(n129) );
  AOI222_X1 U56 ( .A1(A1[26]), .A2(n85), .B1(A3[26]), .B2(n82), .C1(A2[26]), 
        .C2(n78), .ZN(n128) );
  NAND2_X1 U57 ( .A1(n141), .A2(n140), .ZN(O[31]) );
  AOI22_X1 U58 ( .A1(A0[31]), .A2(n74), .B1(A4[31]), .B2(n88), .ZN(n141) );
  AOI222_X1 U59 ( .A1(A1[31]), .A2(n86), .B1(A3[31]), .B2(n83), .C1(A2[31]), 
        .C2(n79), .ZN(n140) );
  NAND2_X1 U60 ( .A1(n131), .A2(n130), .ZN(O[27]) );
  AOI22_X1 U61 ( .A1(A0[27]), .A2(n73), .B1(A4[27]), .B2(n88), .ZN(n131) );
  AOI222_X1 U62 ( .A1(A1[27]), .A2(n85), .B1(A3[27]), .B2(n82), .C1(A2[27]), 
        .C2(n78), .ZN(n130) );
  NAND2_X1 U63 ( .A1(n133), .A2(n132), .ZN(O[28]) );
  AOI22_X1 U64 ( .A1(A0[28]), .A2(n73), .B1(A4[28]), .B2(n88), .ZN(n133) );
  AOI222_X1 U65 ( .A1(A1[28]), .A2(n85), .B1(A3[28]), .B2(n82), .C1(A2[28]), 
        .C2(n78), .ZN(n132) );
  NAND2_X1 U66 ( .A1(n135), .A2(n134), .ZN(O[29]) );
  AOI22_X1 U67 ( .A1(A0[29]), .A2(n73), .B1(A4[29]), .B2(n88), .ZN(n135) );
  AOI222_X1 U68 ( .A1(A1[29]), .A2(n85), .B1(A3[29]), .B2(n82), .C1(A2[29]), 
        .C2(n78), .ZN(n134) );
  NAND2_X1 U69 ( .A1(n139), .A2(n138), .ZN(O[30]) );
  AOI22_X1 U70 ( .A1(A0[30]), .A2(n73), .B1(A4[30]), .B2(n89), .ZN(n139) );
  AOI222_X1 U71 ( .A1(A1[30]), .A2(n85), .B1(A3[30]), .B2(n82), .C1(A2[30]), 
        .C2(n78), .ZN(n138) );
  NAND2_X1 U72 ( .A1(n93), .A2(n92), .ZN(O[0]) );
  AOI22_X1 U73 ( .A1(A0[0]), .A2(n72), .B1(A4[0]), .B2(n90), .ZN(n93) );
  AOI222_X1 U74 ( .A1(A1[0]), .A2(n84), .B1(A3[0]), .B2(n81), .C1(A2[0]), .C2(
        n77), .ZN(n92) );
  NAND2_X1 U75 ( .A1(n115), .A2(n114), .ZN(O[1]) );
  AOI22_X1 U76 ( .A1(A0[1]), .A2(n72), .B1(A4[1]), .B2(n89), .ZN(n115) );
  AOI222_X1 U77 ( .A1(A1[1]), .A2(n84), .B1(A3[1]), .B2(n81), .C1(A2[1]), .C2(
        n77), .ZN(n114) );
  NAND2_X1 U78 ( .A1(n137), .A2(n136), .ZN(O[2]) );
  AOI22_X1 U79 ( .A1(A0[2]), .A2(n73), .B1(A4[2]), .B2(n88), .ZN(n137) );
  AOI222_X1 U80 ( .A1(A1[2]), .A2(n85), .B1(A3[2]), .B2(n82), .C1(A2[2]), .C2(
        n78), .ZN(n136) );
  NAND2_X1 U81 ( .A1(n143), .A2(n142), .ZN(O[3]) );
  AOI22_X1 U82 ( .A1(A0[3]), .A2(n74), .B1(A4[3]), .B2(n88), .ZN(n143) );
  AOI222_X1 U83 ( .A1(A1[3]), .A2(n86), .B1(A3[3]), .B2(n83), .C1(A2[3]), .C2(
        n79), .ZN(n142) );
  NAND2_X1 U84 ( .A1(n145), .A2(n144), .ZN(O[4]) );
  AOI22_X1 U85 ( .A1(A0[4]), .A2(n74), .B1(A4[4]), .B2(n88), .ZN(n145) );
  AOI222_X1 U86 ( .A1(A1[4]), .A2(n86), .B1(A3[4]), .B2(n83), .C1(A2[4]), .C2(
        n79), .ZN(n144) );
  NAND2_X1 U87 ( .A1(n147), .A2(n146), .ZN(O[5]) );
  AOI22_X1 U88 ( .A1(A0[5]), .A2(n74), .B1(A4[5]), .B2(n88), .ZN(n147) );
  AOI222_X1 U89 ( .A1(A1[5]), .A2(n86), .B1(A3[5]), .B2(n83), .C1(A2[5]), .C2(
        n79), .ZN(n146) );
  NAND2_X1 U90 ( .A1(n149), .A2(n148), .ZN(O[6]) );
  AOI22_X1 U91 ( .A1(A0[6]), .A2(n74), .B1(A4[6]), .B2(n88), .ZN(n149) );
  AOI222_X1 U92 ( .A1(A1[6]), .A2(n86), .B1(A3[6]), .B2(n83), .C1(A2[6]), .C2(
        n79), .ZN(n148) );
  NAND2_X1 U93 ( .A1(n151), .A2(n150), .ZN(O[7]) );
  AOI22_X1 U94 ( .A1(A0[7]), .A2(n74), .B1(A4[7]), .B2(n88), .ZN(n151) );
  AOI222_X1 U95 ( .A1(A1[7]), .A2(n86), .B1(A3[7]), .B2(n83), .C1(A2[7]), .C2(
        n79), .ZN(n150) );
  NAND2_X1 U96 ( .A1(n153), .A2(n152), .ZN(O[8]) );
  AOI22_X1 U97 ( .A1(A0[8]), .A2(n74), .B1(A4[8]), .B2(n88), .ZN(n153) );
  AOI222_X1 U98 ( .A1(A1[8]), .A2(n86), .B1(A3[8]), .B2(n83), .C1(A2[8]), .C2(
        n79), .ZN(n152) );
  NAND2_X1 U99 ( .A1(n159), .A2(n158), .ZN(O[9]) );
  AOI22_X1 U100 ( .A1(A0[9]), .A2(n74), .B1(n90), .B2(A4[9]), .ZN(n159) );
  AOI222_X1 U101 ( .A1(A1[9]), .A2(n86), .B1(A3[9]), .B2(n83), .C1(A2[9]), 
        .C2(n79), .ZN(n158) );
  NAND2_X1 U102 ( .A1(n95), .A2(n94), .ZN(O[10]) );
  AOI22_X1 U103 ( .A1(A0[10]), .A2(n72), .B1(A4[10]), .B2(n90), .ZN(n95) );
  AOI222_X1 U104 ( .A1(A1[10]), .A2(n84), .B1(A3[10]), .B2(n81), .C1(A2[10]), 
        .C2(n77), .ZN(n94) );
  NAND2_X1 U105 ( .A1(n97), .A2(n96), .ZN(O[11]) );
  AOI22_X1 U106 ( .A1(A0[11]), .A2(n72), .B1(A4[11]), .B2(n90), .ZN(n97) );
  AOI222_X1 U107 ( .A1(A1[11]), .A2(n84), .B1(A3[11]), .B2(n81), .C1(A2[11]), 
        .C2(n77), .ZN(n96) );
  NAND2_X1 U108 ( .A1(n99), .A2(n98), .ZN(O[12]) );
  AOI22_X1 U109 ( .A1(A0[12]), .A2(n72), .B1(A4[12]), .B2(n90), .ZN(n99) );
  AOI222_X1 U110 ( .A1(A1[12]), .A2(n84), .B1(A3[12]), .B2(n81), .C1(A2[12]), 
        .C2(n77), .ZN(n98) );
  NAND2_X1 U111 ( .A1(n101), .A2(n100), .ZN(O[13]) );
  AOI22_X1 U112 ( .A1(A0[13]), .A2(n72), .B1(A4[13]), .B2(n90), .ZN(n101) );
  AOI222_X1 U113 ( .A1(A1[13]), .A2(n84), .B1(A3[13]), .B2(n81), .C1(A2[13]), 
        .C2(n77), .ZN(n100) );
  AOI22_X1 U114 ( .A1(A0[20]), .A2(n73), .B1(A4[20]), .B2(n89), .ZN(n117) );
  AOI222_X1 U115 ( .A1(A1[19]), .A2(n84), .B1(A3[19]), .B2(n81), .C1(A2[19]), 
        .C2(n77), .ZN(n112) );
  AOI22_X1 U116 ( .A1(A0[17]), .A2(n72), .B1(A4[17]), .B2(n89), .ZN(n109) );
  AOI222_X1 U117 ( .A1(A1[16]), .A2(n84), .B1(A3[16]), .B2(n81), .C1(A2[16]), 
        .C2(n77), .ZN(n106) );
  AOI22_X1 U118 ( .A1(A0[18]), .A2(n72), .B1(A4[18]), .B2(n89), .ZN(n111) );
  AOI222_X1 U119 ( .A1(A1[17]), .A2(n84), .B1(A3[17]), .B2(n81), .C1(A2[17]), 
        .C2(n77), .ZN(n108) );
  AOI22_X1 U120 ( .A1(A0[19]), .A2(n72), .B1(A4[19]), .B2(n89), .ZN(n113) );
  AOI222_X1 U121 ( .A1(A1[18]), .A2(n84), .B1(A3[18]), .B2(n81), .C1(A2[18]), 
        .C2(n77), .ZN(n110) );
endmodule


module MUX_5TO1_NBIT32_2 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160;

  BUF_X1 U1 ( .A(n155), .Z(n76) );
  BUF_X1 U2 ( .A(n156), .Z(n80) );
  BUF_X1 U3 ( .A(n157), .Z(n87) );
  BUF_X1 U4 ( .A(n154), .Z(n75) );
  BUF_X1 U5 ( .A(sel[2]), .Z(n91) );
  BUF_X1 U6 ( .A(n76), .Z(n77) );
  BUF_X1 U7 ( .A(n87), .Z(n84) );
  BUF_X1 U8 ( .A(n80), .Z(n81) );
  BUF_X1 U9 ( .A(n76), .Z(n78) );
  BUF_X1 U10 ( .A(n87), .Z(n85) );
  BUF_X1 U11 ( .A(n80), .Z(n82) );
  BUF_X1 U12 ( .A(n87), .Z(n86) );
  BUF_X1 U13 ( .A(n76), .Z(n79) );
  BUF_X1 U14 ( .A(n80), .Z(n83) );
  BUF_X1 U15 ( .A(n75), .Z(n73) );
  BUF_X1 U16 ( .A(n75), .Z(n72) );
  BUF_X1 U17 ( .A(n75), .Z(n74) );
  INV_X1 U18 ( .A(sel[0]), .ZN(n160) );
  AND2_X1 U19 ( .A1(sel[1]), .A2(n160), .ZN(n155) );
  NOR2_X1 U20 ( .A1(n160), .A2(sel[1]), .ZN(n157) );
  AND2_X1 U21 ( .A1(sel[1]), .A2(sel[0]), .ZN(n156) );
  BUF_X1 U22 ( .A(n91), .Z(n90) );
  BUF_X1 U23 ( .A(n91), .Z(n89) );
  BUF_X1 U24 ( .A(n91), .Z(n88) );
  NOR3_X1 U25 ( .A1(sel[1]), .A2(n90), .A3(sel[0]), .ZN(n154) );
  NAND2_X1 U26 ( .A1(n99), .A2(n98), .ZN(O[12]) );
  AOI22_X1 U27 ( .A1(A0[12]), .A2(n72), .B1(A4[12]), .B2(n90), .ZN(n99) );
  AOI222_X1 U28 ( .A1(A1[12]), .A2(n84), .B1(A3[12]), .B2(n81), .C1(A2[12]), 
        .C2(n77), .ZN(n98) );
  NAND2_X1 U29 ( .A1(n101), .A2(n100), .ZN(O[13]) );
  AOI22_X1 U30 ( .A1(A0[13]), .A2(n72), .B1(A4[13]), .B2(n90), .ZN(n101) );
  AOI222_X1 U31 ( .A1(A1[13]), .A2(n84), .B1(A3[13]), .B2(n81), .C1(A2[13]), 
        .C2(n77), .ZN(n100) );
  NAND2_X1 U32 ( .A1(n103), .A2(n102), .ZN(O[14]) );
  AOI22_X1 U33 ( .A1(A0[14]), .A2(n72), .B1(A4[14]), .B2(n90), .ZN(n103) );
  NAND2_X1 U34 ( .A1(n105), .A2(n104), .ZN(O[15]) );
  NAND2_X1 U35 ( .A1(n107), .A2(n106), .ZN(O[16]) );
  NAND2_X1 U36 ( .A1(n109), .A2(n108), .ZN(O[17]) );
  NAND2_X1 U37 ( .A1(n111), .A2(n110), .ZN(O[18]) );
  AOI222_X1 U38 ( .A1(A1[18]), .A2(n84), .B1(A3[18]), .B2(n81), .C1(A2[18]), 
        .C2(n77), .ZN(n110) );
  NAND2_X1 U39 ( .A1(n113), .A2(n112), .ZN(O[19]) );
  AOI22_X1 U40 ( .A1(A0[19]), .A2(n72), .B1(A4[19]), .B2(n89), .ZN(n113) );
  AOI222_X1 U41 ( .A1(A1[19]), .A2(n84), .B1(A3[19]), .B2(n81), .C1(A2[19]), 
        .C2(n77), .ZN(n112) );
  NAND2_X1 U42 ( .A1(n117), .A2(n116), .ZN(O[20]) );
  AOI22_X1 U43 ( .A1(A0[20]), .A2(n73), .B1(A4[20]), .B2(n89), .ZN(n117) );
  AOI222_X1 U44 ( .A1(A1[20]), .A2(n85), .B1(A3[20]), .B2(n82), .C1(A2[20]), 
        .C2(n78), .ZN(n116) );
  NAND2_X1 U45 ( .A1(n119), .A2(n118), .ZN(O[21]) );
  AOI22_X1 U46 ( .A1(A0[21]), .A2(n73), .B1(A4[21]), .B2(n89), .ZN(n119) );
  AOI222_X1 U47 ( .A1(A1[21]), .A2(n85), .B1(A3[21]), .B2(n82), .C1(A2[21]), 
        .C2(n78), .ZN(n118) );
  NAND2_X1 U48 ( .A1(n121), .A2(n120), .ZN(O[22]) );
  AOI22_X1 U49 ( .A1(A0[22]), .A2(n73), .B1(A4[22]), .B2(n89), .ZN(n121) );
  AOI222_X1 U50 ( .A1(A1[22]), .A2(n85), .B1(A3[22]), .B2(n82), .C1(A2[22]), 
        .C2(n78), .ZN(n120) );
  NAND2_X1 U51 ( .A1(n133), .A2(n132), .ZN(O[28]) );
  AOI22_X1 U52 ( .A1(A0[28]), .A2(n73), .B1(A4[28]), .B2(n88), .ZN(n133) );
  AOI222_X1 U53 ( .A1(A1[28]), .A2(n85), .B1(A3[28]), .B2(n82), .C1(A2[28]), 
        .C2(n78), .ZN(n132) );
  NAND2_X1 U54 ( .A1(n123), .A2(n122), .ZN(O[23]) );
  AOI22_X1 U55 ( .A1(A0[23]), .A2(n73), .B1(A4[23]), .B2(n89), .ZN(n123) );
  AOI222_X1 U56 ( .A1(A1[23]), .A2(n85), .B1(A3[23]), .B2(n82), .C1(A2[23]), 
        .C2(n78), .ZN(n122) );
  NAND2_X1 U57 ( .A1(n125), .A2(n124), .ZN(O[24]) );
  AOI22_X1 U58 ( .A1(A0[24]), .A2(n73), .B1(A4[24]), .B2(n89), .ZN(n125) );
  AOI222_X1 U59 ( .A1(A1[24]), .A2(n85), .B1(A3[24]), .B2(n82), .C1(A2[24]), 
        .C2(n78), .ZN(n124) );
  NAND2_X1 U60 ( .A1(n127), .A2(n126), .ZN(O[25]) );
  AOI22_X1 U61 ( .A1(A0[25]), .A2(n73), .B1(A4[25]), .B2(n89), .ZN(n127) );
  AOI222_X1 U62 ( .A1(A1[25]), .A2(n85), .B1(A3[25]), .B2(n82), .C1(A2[25]), 
        .C2(n78), .ZN(n126) );
  NAND2_X1 U63 ( .A1(n135), .A2(n134), .ZN(O[29]) );
  AOI22_X1 U64 ( .A1(A0[29]), .A2(n73), .B1(A4[29]), .B2(n88), .ZN(n135) );
  AOI222_X1 U65 ( .A1(A1[29]), .A2(n85), .B1(A3[29]), .B2(n82), .C1(A2[29]), 
        .C2(n78), .ZN(n134) );
  NAND2_X1 U66 ( .A1(n129), .A2(n128), .ZN(O[26]) );
  AOI22_X1 U67 ( .A1(A0[26]), .A2(n73), .B1(A4[26]), .B2(n88), .ZN(n129) );
  AOI222_X1 U68 ( .A1(A1[26]), .A2(n85), .B1(A3[26]), .B2(n82), .C1(A2[26]), 
        .C2(n78), .ZN(n128) );
  NAND2_X1 U69 ( .A1(n131), .A2(n130), .ZN(O[27]) );
  AOI22_X1 U70 ( .A1(A0[27]), .A2(n73), .B1(A4[27]), .B2(n88), .ZN(n131) );
  AOI222_X1 U71 ( .A1(A1[27]), .A2(n85), .B1(A3[27]), .B2(n82), .C1(A2[27]), 
        .C2(n78), .ZN(n130) );
  NAND2_X1 U72 ( .A1(n139), .A2(n138), .ZN(O[30]) );
  AOI22_X1 U73 ( .A1(A0[30]), .A2(n73), .B1(A4[30]), .B2(n89), .ZN(n139) );
  AOI222_X1 U74 ( .A1(A1[30]), .A2(n85), .B1(A3[30]), .B2(n82), .C1(A2[30]), 
        .C2(n78), .ZN(n138) );
  NAND2_X1 U75 ( .A1(n141), .A2(n140), .ZN(O[31]) );
  AOI22_X1 U76 ( .A1(A0[31]), .A2(n74), .B1(A4[31]), .B2(n88), .ZN(n141) );
  AOI222_X1 U77 ( .A1(A1[31]), .A2(n86), .B1(A3[31]), .B2(n83), .C1(A2[31]), 
        .C2(n79), .ZN(n140) );
  NAND2_X1 U78 ( .A1(n93), .A2(n92), .ZN(O[0]) );
  AOI22_X1 U79 ( .A1(A0[0]), .A2(n72), .B1(A4[0]), .B2(n90), .ZN(n93) );
  AOI222_X1 U80 ( .A1(A1[0]), .A2(n84), .B1(A3[0]), .B2(n81), .C1(A2[0]), .C2(
        n77), .ZN(n92) );
  NAND2_X1 U81 ( .A1(n115), .A2(n114), .ZN(O[1]) );
  AOI22_X1 U82 ( .A1(A0[1]), .A2(n72), .B1(A4[1]), .B2(n89), .ZN(n115) );
  AOI222_X1 U83 ( .A1(A1[1]), .A2(n84), .B1(A3[1]), .B2(n81), .C1(A2[1]), .C2(
        n77), .ZN(n114) );
  NAND2_X1 U84 ( .A1(n137), .A2(n136), .ZN(O[2]) );
  AOI22_X1 U85 ( .A1(A0[2]), .A2(n73), .B1(A4[2]), .B2(n88), .ZN(n137) );
  AOI222_X1 U86 ( .A1(A1[2]), .A2(n85), .B1(A3[2]), .B2(n82), .C1(A2[2]), .C2(
        n78), .ZN(n136) );
  NAND2_X1 U87 ( .A1(n143), .A2(n142), .ZN(O[3]) );
  AOI22_X1 U88 ( .A1(A0[3]), .A2(n74), .B1(A4[3]), .B2(n88), .ZN(n143) );
  AOI222_X1 U89 ( .A1(A1[3]), .A2(n86), .B1(A3[3]), .B2(n83), .C1(A2[3]), .C2(
        n79), .ZN(n142) );
  NAND2_X1 U90 ( .A1(n145), .A2(n144), .ZN(O[4]) );
  AOI22_X1 U91 ( .A1(A0[4]), .A2(n74), .B1(A4[4]), .B2(n88), .ZN(n145) );
  AOI222_X1 U92 ( .A1(A1[4]), .A2(n86), .B1(A3[4]), .B2(n83), .C1(A2[4]), .C2(
        n79), .ZN(n144) );
  NAND2_X1 U93 ( .A1(n147), .A2(n146), .ZN(O[5]) );
  AOI22_X1 U94 ( .A1(A0[5]), .A2(n74), .B1(A4[5]), .B2(n88), .ZN(n147) );
  AOI222_X1 U95 ( .A1(A1[5]), .A2(n86), .B1(A3[5]), .B2(n83), .C1(A2[5]), .C2(
        n79), .ZN(n146) );
  NAND2_X1 U96 ( .A1(n149), .A2(n148), .ZN(O[6]) );
  AOI22_X1 U97 ( .A1(A0[6]), .A2(n74), .B1(A4[6]), .B2(n88), .ZN(n149) );
  AOI222_X1 U98 ( .A1(A1[6]), .A2(n86), .B1(A3[6]), .B2(n83), .C1(A2[6]), .C2(
        n79), .ZN(n148) );
  NAND2_X1 U99 ( .A1(n151), .A2(n150), .ZN(O[7]) );
  AOI22_X1 U100 ( .A1(A0[7]), .A2(n74), .B1(A4[7]), .B2(n88), .ZN(n151) );
  AOI222_X1 U101 ( .A1(A1[7]), .A2(n86), .B1(A3[7]), .B2(n83), .C1(A2[7]), 
        .C2(n79), .ZN(n150) );
  NAND2_X1 U102 ( .A1(n153), .A2(n152), .ZN(O[8]) );
  AOI22_X1 U103 ( .A1(A0[8]), .A2(n74), .B1(A4[8]), .B2(n88), .ZN(n153) );
  AOI222_X1 U104 ( .A1(A1[8]), .A2(n86), .B1(A3[8]), .B2(n83), .C1(A2[8]), 
        .C2(n79), .ZN(n152) );
  NAND2_X1 U105 ( .A1(n159), .A2(n158), .ZN(O[9]) );
  AOI22_X1 U106 ( .A1(A0[9]), .A2(n74), .B1(n90), .B2(A4[9]), .ZN(n159) );
  AOI222_X1 U107 ( .A1(A1[9]), .A2(n86), .B1(A3[9]), .B2(n83), .C1(A2[9]), 
        .C2(n79), .ZN(n158) );
  NAND2_X1 U108 ( .A1(n95), .A2(n94), .ZN(O[10]) );
  AOI22_X1 U109 ( .A1(A0[10]), .A2(n72), .B1(A4[10]), .B2(n90), .ZN(n95) );
  AOI222_X1 U110 ( .A1(A1[10]), .A2(n84), .B1(A3[10]), .B2(n81), .C1(A2[10]), 
        .C2(n77), .ZN(n94) );
  NAND2_X1 U111 ( .A1(n97), .A2(n96), .ZN(O[11]) );
  AOI22_X1 U112 ( .A1(A0[11]), .A2(n72), .B1(A4[11]), .B2(n90), .ZN(n97) );
  AOI222_X1 U113 ( .A1(A1[11]), .A2(n84), .B1(A3[11]), .B2(n81), .C1(A2[11]), 
        .C2(n77), .ZN(n96) );
  AOI22_X1 U114 ( .A1(A0[18]), .A2(n72), .B1(A4[18]), .B2(n89), .ZN(n111) );
  AOI222_X1 U115 ( .A1(A1[17]), .A2(n84), .B1(A3[17]), .B2(n81), .C1(A2[17]), 
        .C2(n77), .ZN(n108) );
  AOI22_X1 U116 ( .A1(A0[15]), .A2(n72), .B1(A4[15]), .B2(n90), .ZN(n105) );
  AOI222_X1 U117 ( .A1(A1[14]), .A2(n84), .B1(A3[14]), .B2(n81), .C1(A2[14]), 
        .C2(n77), .ZN(n102) );
  AOI22_X1 U118 ( .A1(A0[16]), .A2(n72), .B1(A4[16]), .B2(n89), .ZN(n107) );
  AOI222_X1 U119 ( .A1(A1[15]), .A2(n84), .B1(A3[15]), .B2(n81), .C1(A2[15]), 
        .C2(n77), .ZN(n104) );
  AOI22_X1 U120 ( .A1(A0[17]), .A2(n72), .B1(A4[17]), .B2(n89), .ZN(n109) );
  AOI222_X1 U121 ( .A1(A1[16]), .A2(n84), .B1(A3[16]), .B2(n81), .C1(A2[16]), 
        .C2(n77), .ZN(n106) );
endmodule


module MUX_5TO1_NBIT32_3 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159;

  AND2_X1 U1 ( .A1(sel[1]), .A2(n159), .ZN(n72) );
  BUF_X1 U2 ( .A(n155), .Z(n80) );
  BUF_X1 U3 ( .A(n156), .Z(n87) );
  BUF_X1 U4 ( .A(n154), .Z(n76) );
  BUF_X1 U5 ( .A(sel[2]), .Z(n91) );
  BUF_X1 U6 ( .A(n72), .Z(n77) );
  BUF_X1 U7 ( .A(n87), .Z(n84) );
  BUF_X1 U8 ( .A(n80), .Z(n81) );
  BUF_X1 U9 ( .A(n87), .Z(n85) );
  BUF_X1 U10 ( .A(n72), .Z(n78) );
  BUF_X1 U11 ( .A(n80), .Z(n82) );
  BUF_X1 U12 ( .A(n87), .Z(n86) );
  BUF_X1 U13 ( .A(n72), .Z(n79) );
  BUF_X1 U14 ( .A(n80), .Z(n83) );
  BUF_X1 U15 ( .A(n76), .Z(n74) );
  BUF_X1 U16 ( .A(n76), .Z(n73) );
  BUF_X1 U17 ( .A(n76), .Z(n75) );
  INV_X1 U18 ( .A(sel[0]), .ZN(n159) );
  NOR2_X1 U19 ( .A1(n159), .A2(sel[1]), .ZN(n156) );
  AND2_X1 U20 ( .A1(sel[1]), .A2(sel[0]), .ZN(n155) );
  BUF_X1 U21 ( .A(n91), .Z(n90) );
  BUF_X1 U22 ( .A(n91), .Z(n89) );
  BUF_X1 U23 ( .A(n91), .Z(n88) );
  NOR3_X1 U24 ( .A1(sel[1]), .A2(n90), .A3(sel[0]), .ZN(n154) );
  NAND2_X1 U25 ( .A1(n95), .A2(n94), .ZN(O[10]) );
  AOI22_X1 U26 ( .A1(A0[10]), .A2(n73), .B1(A4[10]), .B2(n90), .ZN(n95) );
  AOI222_X1 U27 ( .A1(A1[10]), .A2(n84), .B1(A3[10]), .B2(n81), .C1(A2[10]), 
        .C2(n77), .ZN(n94) );
  NAND2_X1 U28 ( .A1(n97), .A2(n96), .ZN(O[11]) );
  AOI22_X1 U29 ( .A1(A0[11]), .A2(n73), .B1(A4[11]), .B2(n90), .ZN(n97) );
  AOI222_X1 U30 ( .A1(A1[11]), .A2(n84), .B1(A3[11]), .B2(n81), .C1(A2[11]), 
        .C2(n77), .ZN(n96) );
  NAND2_X1 U31 ( .A1(n99), .A2(n98), .ZN(O[12]) );
  AOI22_X1 U32 ( .A1(A0[12]), .A2(n73), .B1(A4[12]), .B2(n90), .ZN(n99) );
  NAND2_X1 U33 ( .A1(n101), .A2(n100), .ZN(O[13]) );
  NAND2_X1 U34 ( .A1(n103), .A2(n102), .ZN(O[14]) );
  NAND2_X1 U35 ( .A1(n105), .A2(n104), .ZN(O[15]) );
  NAND2_X1 U36 ( .A1(n107), .A2(n106), .ZN(O[16]) );
  AOI222_X1 U37 ( .A1(A1[16]), .A2(n84), .B1(A3[16]), .B2(n81), .C1(A2[16]), 
        .C2(n77), .ZN(n106) );
  NAND2_X1 U38 ( .A1(n109), .A2(n108), .ZN(O[17]) );
  AOI22_X1 U39 ( .A1(A0[17]), .A2(n73), .B1(A4[17]), .B2(n89), .ZN(n109) );
  AOI222_X1 U40 ( .A1(A1[17]), .A2(n84), .B1(A3[17]), .B2(n81), .C1(A2[17]), 
        .C2(n77), .ZN(n108) );
  NAND2_X1 U41 ( .A1(n111), .A2(n110), .ZN(O[18]) );
  AOI22_X1 U42 ( .A1(A0[18]), .A2(n73), .B1(A4[18]), .B2(n89), .ZN(n111) );
  AOI222_X1 U43 ( .A1(A1[18]), .A2(n84), .B1(A3[18]), .B2(n81), .C1(A2[18]), 
        .C2(n77), .ZN(n110) );
  NAND2_X1 U44 ( .A1(n113), .A2(n112), .ZN(O[19]) );
  AOI22_X1 U45 ( .A1(A0[19]), .A2(n73), .B1(A4[19]), .B2(n89), .ZN(n113) );
  AOI222_X1 U46 ( .A1(A1[19]), .A2(n84), .B1(A3[19]), .B2(n81), .C1(A2[19]), 
        .C2(n77), .ZN(n112) );
  NAND2_X1 U47 ( .A1(n117), .A2(n116), .ZN(O[20]) );
  AOI22_X1 U48 ( .A1(A0[20]), .A2(n74), .B1(A4[20]), .B2(n89), .ZN(n117) );
  AOI222_X1 U49 ( .A1(A1[20]), .A2(n85), .B1(A3[20]), .B2(n82), .C1(A2[20]), 
        .C2(n78), .ZN(n116) );
  NAND2_X1 U50 ( .A1(n129), .A2(n128), .ZN(O[26]) );
  AOI22_X1 U51 ( .A1(A0[26]), .A2(n74), .B1(A4[26]), .B2(n88), .ZN(n129) );
  AOI222_X1 U52 ( .A1(A1[26]), .A2(n85), .B1(A3[26]), .B2(n82), .C1(A2[26]), 
        .C2(n78), .ZN(n128) );
  NAND2_X1 U53 ( .A1(n119), .A2(n118), .ZN(O[21]) );
  AOI22_X1 U54 ( .A1(A0[21]), .A2(n74), .B1(A4[21]), .B2(n89), .ZN(n119) );
  AOI222_X1 U55 ( .A1(A1[21]), .A2(n85), .B1(A3[21]), .B2(n82), .C1(A2[21]), 
        .C2(n78), .ZN(n118) );
  NAND2_X1 U56 ( .A1(n121), .A2(n120), .ZN(O[22]) );
  AOI22_X1 U57 ( .A1(A0[22]), .A2(n74), .B1(A4[22]), .B2(n89), .ZN(n121) );
  AOI222_X1 U58 ( .A1(A1[22]), .A2(n85), .B1(A3[22]), .B2(n82), .C1(A2[22]), 
        .C2(n78), .ZN(n120) );
  NAND2_X1 U59 ( .A1(n123), .A2(n122), .ZN(O[23]) );
  AOI22_X1 U60 ( .A1(A0[23]), .A2(n74), .B1(A4[23]), .B2(n89), .ZN(n123) );
  AOI222_X1 U61 ( .A1(A1[23]), .A2(n85), .B1(A3[23]), .B2(n82), .C1(A2[23]), 
        .C2(n78), .ZN(n122) );
  NAND2_X1 U62 ( .A1(n131), .A2(n130), .ZN(O[27]) );
  AOI22_X1 U63 ( .A1(A0[27]), .A2(n74), .B1(A4[27]), .B2(n88), .ZN(n131) );
  AOI222_X1 U64 ( .A1(A1[27]), .A2(n85), .B1(A3[27]), .B2(n82), .C1(A2[27]), 
        .C2(n78), .ZN(n130) );
  NAND2_X1 U65 ( .A1(n125), .A2(n124), .ZN(O[24]) );
  AOI22_X1 U66 ( .A1(A0[24]), .A2(n74), .B1(A4[24]), .B2(n89), .ZN(n125) );
  AOI222_X1 U67 ( .A1(A1[24]), .A2(n85), .B1(A3[24]), .B2(n82), .C1(A2[24]), 
        .C2(n78), .ZN(n124) );
  NAND2_X1 U68 ( .A1(n127), .A2(n126), .ZN(O[25]) );
  AOI22_X1 U69 ( .A1(A0[25]), .A2(n74), .B1(A4[25]), .B2(n89), .ZN(n127) );
  AOI222_X1 U70 ( .A1(A1[25]), .A2(n85), .B1(A3[25]), .B2(n82), .C1(A2[25]), 
        .C2(n78), .ZN(n126) );
  NAND2_X1 U71 ( .A1(n133), .A2(n132), .ZN(O[28]) );
  AOI222_X1 U72 ( .A1(A1[28]), .A2(n85), .B1(A3[28]), .B2(n82), .C1(A2[28]), 
        .C2(n78), .ZN(n132) );
  AOI22_X1 U73 ( .A1(A0[28]), .A2(n74), .B1(A4[28]), .B2(n88), .ZN(n133) );
  NAND2_X1 U74 ( .A1(n135), .A2(n134), .ZN(O[29]) );
  AOI22_X1 U75 ( .A1(A0[29]), .A2(n74), .B1(A4[29]), .B2(n88), .ZN(n135) );
  AOI222_X1 U76 ( .A1(A1[29]), .A2(n85), .B1(A3[29]), .B2(n82), .C1(A2[29]), 
        .C2(n78), .ZN(n134) );
  NAND2_X1 U77 ( .A1(n139), .A2(n138), .ZN(O[30]) );
  AOI22_X1 U78 ( .A1(A0[30]), .A2(n74), .B1(A4[30]), .B2(n89), .ZN(n139) );
  AOI222_X1 U79 ( .A1(A1[30]), .A2(n85), .B1(A3[30]), .B2(n82), .C1(A2[30]), 
        .C2(n78), .ZN(n138) );
  NAND2_X1 U80 ( .A1(n141), .A2(n140), .ZN(O[31]) );
  AOI22_X1 U81 ( .A1(A0[31]), .A2(n75), .B1(A4[31]), .B2(n88), .ZN(n141) );
  AOI222_X1 U82 ( .A1(A1[31]), .A2(n86), .B1(A3[31]), .B2(n83), .C1(A2[31]), 
        .C2(n79), .ZN(n140) );
  NAND2_X1 U83 ( .A1(n93), .A2(n92), .ZN(O[0]) );
  AOI22_X1 U84 ( .A1(A0[0]), .A2(n73), .B1(A4[0]), .B2(n90), .ZN(n93) );
  AOI222_X1 U85 ( .A1(A1[0]), .A2(n84), .B1(A3[0]), .B2(n81), .C1(A2[0]), .C2(
        n77), .ZN(n92) );
  NAND2_X1 U86 ( .A1(n115), .A2(n114), .ZN(O[1]) );
  AOI22_X1 U87 ( .A1(A0[1]), .A2(n73), .B1(A4[1]), .B2(n89), .ZN(n115) );
  AOI222_X1 U88 ( .A1(A1[1]), .A2(n84), .B1(A3[1]), .B2(n81), .C1(A2[1]), .C2(
        n77), .ZN(n114) );
  NAND2_X1 U89 ( .A1(n137), .A2(n136), .ZN(O[2]) );
  AOI22_X1 U90 ( .A1(A0[2]), .A2(n74), .B1(A4[2]), .B2(n88), .ZN(n137) );
  AOI222_X1 U91 ( .A1(A1[2]), .A2(n85), .B1(A3[2]), .B2(n82), .C1(A2[2]), .C2(
        n78), .ZN(n136) );
  NAND2_X1 U92 ( .A1(n143), .A2(n142), .ZN(O[3]) );
  AOI22_X1 U93 ( .A1(A0[3]), .A2(n75), .B1(A4[3]), .B2(n88), .ZN(n143) );
  AOI222_X1 U94 ( .A1(A1[3]), .A2(n86), .B1(A3[3]), .B2(n83), .C1(A2[3]), .C2(
        n79), .ZN(n142) );
  NAND2_X1 U95 ( .A1(n145), .A2(n144), .ZN(O[4]) );
  AOI22_X1 U96 ( .A1(A0[4]), .A2(n75), .B1(A4[4]), .B2(n88), .ZN(n145) );
  AOI222_X1 U97 ( .A1(A1[4]), .A2(n86), .B1(A3[4]), .B2(n83), .C1(A2[4]), .C2(
        n79), .ZN(n144) );
  NAND2_X1 U98 ( .A1(n147), .A2(n146), .ZN(O[5]) );
  AOI22_X1 U99 ( .A1(A0[5]), .A2(n75), .B1(A4[5]), .B2(n88), .ZN(n147) );
  AOI222_X1 U100 ( .A1(A1[5]), .A2(n86), .B1(A3[5]), .B2(n83), .C1(A2[5]), 
        .C2(n79), .ZN(n146) );
  NAND2_X1 U101 ( .A1(n149), .A2(n148), .ZN(O[6]) );
  AOI22_X1 U102 ( .A1(A0[6]), .A2(n75), .B1(A4[6]), .B2(n88), .ZN(n149) );
  AOI222_X1 U103 ( .A1(A1[6]), .A2(n86), .B1(A3[6]), .B2(n83), .C1(A2[6]), 
        .C2(n79), .ZN(n148) );
  NAND2_X1 U104 ( .A1(n151), .A2(n150), .ZN(O[7]) );
  AOI22_X1 U105 ( .A1(A0[7]), .A2(n75), .B1(A4[7]), .B2(n88), .ZN(n151) );
  AOI222_X1 U106 ( .A1(A1[7]), .A2(n86), .B1(A3[7]), .B2(n83), .C1(A2[7]), 
        .C2(n79), .ZN(n150) );
  NAND2_X1 U107 ( .A1(n153), .A2(n152), .ZN(O[8]) );
  AOI22_X1 U108 ( .A1(A0[8]), .A2(n75), .B1(A4[8]), .B2(n88), .ZN(n153) );
  AOI222_X1 U109 ( .A1(A1[8]), .A2(n86), .B1(A3[8]), .B2(n83), .C1(A2[8]), 
        .C2(n79), .ZN(n152) );
  NAND2_X1 U110 ( .A1(n158), .A2(n157), .ZN(O[9]) );
  AOI22_X1 U111 ( .A1(A0[9]), .A2(n75), .B1(n90), .B2(A4[9]), .ZN(n158) );
  AOI222_X1 U112 ( .A1(A1[9]), .A2(n86), .B1(A3[9]), .B2(n83), .C1(A2[9]), 
        .C2(n79), .ZN(n157) );
  AOI22_X1 U113 ( .A1(A0[16]), .A2(n73), .B1(A4[16]), .B2(n89), .ZN(n107) );
  AOI222_X1 U114 ( .A1(A1[15]), .A2(n84), .B1(A3[15]), .B2(n81), .C1(A2[15]), 
        .C2(n77), .ZN(n104) );
  AOI22_X1 U115 ( .A1(A0[13]), .A2(n73), .B1(A4[13]), .B2(n90), .ZN(n101) );
  AOI222_X1 U116 ( .A1(A1[12]), .A2(n84), .B1(A3[12]), .B2(n81), .C1(A2[12]), 
        .C2(n77), .ZN(n98) );
  AOI22_X1 U117 ( .A1(A0[14]), .A2(n73), .B1(A4[14]), .B2(n90), .ZN(n103) );
  AOI222_X1 U118 ( .A1(A1[13]), .A2(n84), .B1(A3[13]), .B2(n81), .C1(A2[13]), 
        .C2(n77), .ZN(n100) );
  AOI22_X1 U119 ( .A1(A0[15]), .A2(n73), .B1(A4[15]), .B2(n90), .ZN(n105) );
  AOI222_X1 U120 ( .A1(A1[14]), .A2(n84), .B1(A3[14]), .B2(n81), .C1(A2[14]), 
        .C2(n77), .ZN(n102) );
endmodule


module MUX_5TO1_NBIT32_5 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159;

  CLKBUF_X1 U1 ( .A(n72), .Z(n78) );
  CLKBUF_X1 U2 ( .A(n80), .Z(n82) );
  CLKBUF_X1 U3 ( .A(n87), .Z(n85) );
  CLKBUF_X1 U4 ( .A(n91), .Z(n89) );
  AND2_X1 U5 ( .A1(sel[1]), .A2(n159), .ZN(n72) );
  BUF_X1 U6 ( .A(n155), .Z(n80) );
  BUF_X1 U7 ( .A(n156), .Z(n87) );
  BUF_X1 U8 ( .A(n154), .Z(n76) );
  BUF_X1 U9 ( .A(sel[2]), .Z(n91) );
  BUF_X1 U10 ( .A(n72), .Z(n79) );
  BUF_X1 U11 ( .A(n87), .Z(n86) );
  BUF_X1 U12 ( .A(n80), .Z(n83) );
  BUF_X1 U13 ( .A(n72), .Z(n77) );
  BUF_X1 U14 ( .A(n87), .Z(n84) );
  BUF_X1 U15 ( .A(n80), .Z(n81) );
  BUF_X1 U16 ( .A(n76), .Z(n74) );
  BUF_X1 U17 ( .A(n76), .Z(n73) );
  BUF_X1 U18 ( .A(n76), .Z(n75) );
  INV_X1 U19 ( .A(sel[0]), .ZN(n159) );
  NOR2_X1 U20 ( .A1(n159), .A2(sel[1]), .ZN(n156) );
  AND2_X1 U21 ( .A1(sel[1]), .A2(sel[0]), .ZN(n155) );
  BUF_X1 U22 ( .A(n91), .Z(n88) );
  BUF_X1 U23 ( .A(n91), .Z(n90) );
  NOR3_X1 U24 ( .A1(sel[1]), .A2(n90), .A3(sel[0]), .ZN(n154) );
  NAND2_X1 U25 ( .A1(n149), .A2(n148), .ZN(O[6]) );
  AOI22_X1 U26 ( .A1(A0[6]), .A2(n75), .B1(A4[6]), .B2(n88), .ZN(n149) );
  AOI222_X1 U27 ( .A1(A1[6]), .A2(n86), .B1(A3[6]), .B2(n83), .C1(A2[6]), .C2(
        n79), .ZN(n148) );
  NAND2_X1 U28 ( .A1(n151), .A2(n150), .ZN(O[7]) );
  AOI22_X1 U29 ( .A1(A0[7]), .A2(n75), .B1(A4[7]), .B2(n88), .ZN(n151) );
  AOI222_X1 U30 ( .A1(A1[7]), .A2(n86), .B1(A3[7]), .B2(n83), .C1(A2[7]), .C2(
        n79), .ZN(n150) );
  NAND2_X1 U31 ( .A1(n153), .A2(n152), .ZN(O[8]) );
  AOI22_X1 U32 ( .A1(A0[8]), .A2(n75), .B1(A4[8]), .B2(n88), .ZN(n153) );
  NAND2_X1 U33 ( .A1(n158), .A2(n157), .ZN(O[9]) );
  NAND2_X1 U34 ( .A1(n95), .A2(n94), .ZN(O[10]) );
  NAND2_X1 U35 ( .A1(n97), .A2(n96), .ZN(O[11]) );
  NAND2_X1 U36 ( .A1(n99), .A2(n98), .ZN(O[12]) );
  AOI222_X1 U37 ( .A1(A1[12]), .A2(n84), .B1(A3[12]), .B2(n81), .C1(A2[12]), 
        .C2(n77), .ZN(n98) );
  NAND2_X1 U38 ( .A1(n101), .A2(n100), .ZN(O[13]) );
  AOI22_X1 U39 ( .A1(A0[13]), .A2(n73), .B1(A4[13]), .B2(n90), .ZN(n101) );
  AOI222_X1 U40 ( .A1(A1[13]), .A2(n84), .B1(A3[13]), .B2(n81), .C1(A2[13]), 
        .C2(n77), .ZN(n100) );
  NAND2_X1 U41 ( .A1(n103), .A2(n102), .ZN(O[14]) );
  AOI22_X1 U42 ( .A1(A0[14]), .A2(n73), .B1(A4[14]), .B2(n90), .ZN(n103) );
  AOI222_X1 U43 ( .A1(A1[14]), .A2(n84), .B1(A3[14]), .B2(n81), .C1(A2[14]), 
        .C2(n77), .ZN(n102) );
  NAND2_X1 U44 ( .A1(n105), .A2(n104), .ZN(O[15]) );
  AOI22_X1 U45 ( .A1(A0[15]), .A2(n73), .B1(A4[15]), .B2(n90), .ZN(n105) );
  AOI222_X1 U46 ( .A1(A1[15]), .A2(n84), .B1(A3[15]), .B2(n81), .C1(A2[15]), 
        .C2(n77), .ZN(n104) );
  NAND2_X1 U47 ( .A1(n107), .A2(n106), .ZN(O[16]) );
  AOI22_X1 U48 ( .A1(A0[16]), .A2(n73), .B1(A4[16]), .B2(n89), .ZN(n107) );
  AOI222_X1 U49 ( .A1(A1[16]), .A2(n84), .B1(A3[16]), .B2(n81), .C1(A2[16]), 
        .C2(n77), .ZN(n106) );
  NAND2_X1 U50 ( .A1(n121), .A2(n120), .ZN(O[22]) );
  AOI22_X1 U51 ( .A1(A0[22]), .A2(n74), .B1(A4[22]), .B2(n89), .ZN(n121) );
  AOI222_X1 U52 ( .A1(A1[22]), .A2(n85), .B1(A3[22]), .B2(n82), .C1(A2[22]), 
        .C2(n78), .ZN(n120) );
  NAND2_X1 U53 ( .A1(n109), .A2(n108), .ZN(O[17]) );
  AOI22_X1 U54 ( .A1(A0[17]), .A2(n73), .B1(A4[17]), .B2(n89), .ZN(n109) );
  AOI222_X1 U55 ( .A1(A1[17]), .A2(n84), .B1(A3[17]), .B2(n81), .C1(A2[17]), 
        .C2(n77), .ZN(n108) );
  NAND2_X1 U56 ( .A1(n111), .A2(n110), .ZN(O[18]) );
  AOI22_X1 U57 ( .A1(A0[18]), .A2(n73), .B1(A4[18]), .B2(n89), .ZN(n111) );
  AOI222_X1 U58 ( .A1(A1[18]), .A2(n84), .B1(A3[18]), .B2(n81), .C1(A2[18]), 
        .C2(n77), .ZN(n110) );
  NAND2_X1 U59 ( .A1(n123), .A2(n122), .ZN(O[23]) );
  AOI22_X1 U60 ( .A1(A0[23]), .A2(n74), .B1(A4[23]), .B2(n89), .ZN(n123) );
  AOI222_X1 U61 ( .A1(A1[23]), .A2(n85), .B1(A3[23]), .B2(n82), .C1(A2[23]), 
        .C2(n78), .ZN(n122) );
  NAND2_X1 U62 ( .A1(n113), .A2(n112), .ZN(O[19]) );
  AOI22_X1 U63 ( .A1(A0[19]), .A2(n73), .B1(A4[19]), .B2(n89), .ZN(n113) );
  AOI222_X1 U64 ( .A1(A1[19]), .A2(n84), .B1(A3[19]), .B2(n81), .C1(A2[19]), 
        .C2(n77), .ZN(n112) );
  NAND2_X1 U65 ( .A1(n117), .A2(n116), .ZN(O[20]) );
  AOI22_X1 U66 ( .A1(A0[20]), .A2(n74), .B1(A4[20]), .B2(n89), .ZN(n117) );
  AOI222_X1 U67 ( .A1(A1[20]), .A2(n85), .B1(A3[20]), .B2(n82), .C1(A2[20]), 
        .C2(n78), .ZN(n116) );
  NAND2_X1 U68 ( .A1(n125), .A2(n124), .ZN(O[24]) );
  AOI22_X1 U69 ( .A1(A0[24]), .A2(n74), .B1(A4[24]), .B2(n89), .ZN(n125) );
  AOI222_X1 U70 ( .A1(A1[24]), .A2(n85), .B1(A3[24]), .B2(n82), .C1(A2[24]), 
        .C2(n78), .ZN(n124) );
  NAND2_X1 U71 ( .A1(n119), .A2(n118), .ZN(O[21]) );
  AOI22_X1 U72 ( .A1(A0[21]), .A2(n74), .B1(A4[21]), .B2(n89), .ZN(n119) );
  AOI222_X1 U73 ( .A1(A1[21]), .A2(n85), .B1(A3[21]), .B2(n82), .C1(A2[21]), 
        .C2(n78), .ZN(n118) );
  NAND2_X1 U74 ( .A1(n127), .A2(n126), .ZN(O[25]) );
  AOI222_X1 U75 ( .A1(A1[25]), .A2(n85), .B1(A3[25]), .B2(n82), .C1(A2[25]), 
        .C2(n78), .ZN(n126) );
  AOI22_X1 U76 ( .A1(A0[25]), .A2(n74), .B1(A4[25]), .B2(n89), .ZN(n127) );
  NAND2_X1 U77 ( .A1(n129), .A2(n128), .ZN(O[26]) );
  AOI22_X1 U78 ( .A1(A0[26]), .A2(n74), .B1(A4[26]), .B2(n88), .ZN(n129) );
  AOI222_X1 U79 ( .A1(A1[26]), .A2(n85), .B1(A3[26]), .B2(n82), .C1(A2[26]), 
        .C2(n78), .ZN(n128) );
  NAND2_X1 U80 ( .A1(n141), .A2(n140), .ZN(O[31]) );
  AOI22_X1 U81 ( .A1(A0[31]), .A2(n75), .B1(A4[31]), .B2(n88), .ZN(n141) );
  AOI222_X1 U82 ( .A1(A1[31]), .A2(n86), .B1(A3[31]), .B2(n83), .C1(A2[31]), 
        .C2(n79), .ZN(n140) );
  NAND2_X1 U83 ( .A1(n133), .A2(n132), .ZN(O[28]) );
  AOI22_X1 U84 ( .A1(A0[28]), .A2(n74), .B1(A4[28]), .B2(n88), .ZN(n133) );
  AOI222_X1 U85 ( .A1(A1[28]), .A2(n85), .B1(A3[28]), .B2(n82), .C1(A2[28]), 
        .C2(n78), .ZN(n132) );
  NAND2_X1 U86 ( .A1(n131), .A2(n130), .ZN(O[27]) );
  AOI222_X1 U87 ( .A1(A1[27]), .A2(n85), .B1(A3[27]), .B2(n82), .C1(A2[27]), 
        .C2(n78), .ZN(n130) );
  AOI22_X1 U88 ( .A1(A0[27]), .A2(n74), .B1(A4[27]), .B2(n88), .ZN(n131) );
  NAND2_X1 U89 ( .A1(n135), .A2(n134), .ZN(O[29]) );
  AOI222_X1 U90 ( .A1(A1[29]), .A2(n85), .B1(A3[29]), .B2(n82), .C1(A2[29]), 
        .C2(n78), .ZN(n134) );
  AOI22_X1 U91 ( .A1(A0[29]), .A2(n74), .B1(A4[29]), .B2(n88), .ZN(n135) );
  NAND2_X1 U92 ( .A1(n139), .A2(n138), .ZN(O[30]) );
  AOI22_X1 U93 ( .A1(A0[30]), .A2(n74), .B1(A4[30]), .B2(n89), .ZN(n139) );
  AOI222_X1 U94 ( .A1(A1[30]), .A2(n85), .B1(A3[30]), .B2(n82), .C1(A2[30]), 
        .C2(n78), .ZN(n138) );
  NAND2_X1 U95 ( .A1(n93), .A2(n92), .ZN(O[0]) );
  AOI22_X1 U96 ( .A1(A0[0]), .A2(n73), .B1(A4[0]), .B2(n90), .ZN(n93) );
  AOI222_X1 U97 ( .A1(A1[0]), .A2(n84), .B1(A3[0]), .B2(n81), .C1(A2[0]), .C2(
        n77), .ZN(n92) );
  NAND2_X1 U98 ( .A1(n115), .A2(n114), .ZN(O[1]) );
  AOI22_X1 U99 ( .A1(A0[1]), .A2(n73), .B1(A4[1]), .B2(n89), .ZN(n115) );
  AOI222_X1 U100 ( .A1(A1[1]), .A2(n84), .B1(A3[1]), .B2(n81), .C1(A2[1]), 
        .C2(n77), .ZN(n114) );
  NAND2_X1 U101 ( .A1(n137), .A2(n136), .ZN(O[2]) );
  AOI22_X1 U102 ( .A1(A0[2]), .A2(n74), .B1(A4[2]), .B2(n88), .ZN(n137) );
  AOI222_X1 U103 ( .A1(A1[2]), .A2(n85), .B1(A3[2]), .B2(n82), .C1(A2[2]), 
        .C2(n78), .ZN(n136) );
  NAND2_X1 U104 ( .A1(n143), .A2(n142), .ZN(O[3]) );
  AOI22_X1 U105 ( .A1(A0[3]), .A2(n75), .B1(A4[3]), .B2(n88), .ZN(n143) );
  AOI222_X1 U106 ( .A1(A1[3]), .A2(n86), .B1(A3[3]), .B2(n83), .C1(A2[3]), 
        .C2(n79), .ZN(n142) );
  NAND2_X1 U107 ( .A1(n145), .A2(n144), .ZN(O[4]) );
  AOI22_X1 U108 ( .A1(A0[4]), .A2(n75), .B1(A4[4]), .B2(n88), .ZN(n145) );
  AOI222_X1 U109 ( .A1(A1[4]), .A2(n86), .B1(A3[4]), .B2(n83), .C1(A2[4]), 
        .C2(n79), .ZN(n144) );
  NAND2_X1 U110 ( .A1(n147), .A2(n146), .ZN(O[5]) );
  AOI22_X1 U111 ( .A1(A0[5]), .A2(n75), .B1(A4[5]), .B2(n88), .ZN(n147) );
  AOI222_X1 U112 ( .A1(A1[5]), .A2(n86), .B1(A3[5]), .B2(n83), .C1(A2[5]), 
        .C2(n79), .ZN(n146) );
  AOI22_X1 U113 ( .A1(A0[12]), .A2(n73), .B1(A4[12]), .B2(n90), .ZN(n99) );
  AOI222_X1 U114 ( .A1(A1[11]), .A2(n84), .B1(A3[11]), .B2(n81), .C1(A2[11]), 
        .C2(n77), .ZN(n96) );
  AOI22_X1 U115 ( .A1(A0[9]), .A2(n75), .B1(n90), .B2(A4[9]), .ZN(n158) );
  AOI222_X1 U116 ( .A1(A1[8]), .A2(n86), .B1(A3[8]), .B2(n83), .C1(A2[8]), 
        .C2(n79), .ZN(n152) );
  AOI22_X1 U117 ( .A1(A0[10]), .A2(n73), .B1(A4[10]), .B2(n90), .ZN(n95) );
  AOI222_X1 U118 ( .A1(A1[9]), .A2(n86), .B1(A3[9]), .B2(n83), .C1(A2[9]), 
        .C2(n79), .ZN(n157) );
  AOI22_X1 U119 ( .A1(A0[11]), .A2(n73), .B1(A4[11]), .B2(n90), .ZN(n97) );
  AOI222_X1 U120 ( .A1(A1[10]), .A2(n84), .B1(A3[10]), .B2(n81), .C1(A2[10]), 
        .C2(n77), .ZN(n94) );
endmodule


module MUX_5TO1_NBIT32_6 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158;

  NAND2_X1 U1 ( .A1(n153), .A2(n152), .ZN(O[8]) );
  NAND2_X1 U2 ( .A1(n151), .A2(n150), .ZN(O[7]) );
  AND2_X1 U3 ( .A1(sel[1]), .A2(n158), .ZN(n72) );
  BUF_X1 U4 ( .A(n155), .Z(n81) );
  NOR2_X1 U5 ( .A1(n158), .A2(sel[1]), .ZN(n73) );
  BUF_X1 U6 ( .A(n154), .Z(n77) );
  BUF_X1 U7 ( .A(sel[2]), .Z(n91) );
  BUF_X1 U8 ( .A(n72), .Z(n80) );
  BUF_X1 U9 ( .A(n81), .Z(n84) );
  BUF_X1 U10 ( .A(n73), .Z(n87) );
  BUF_X1 U11 ( .A(n73), .Z(n85) );
  BUF_X1 U12 ( .A(n72), .Z(n78) );
  BUF_X1 U13 ( .A(n81), .Z(n82) );
  BUF_X1 U14 ( .A(n73), .Z(n86) );
  BUF_X1 U15 ( .A(n72), .Z(n79) );
  BUF_X1 U16 ( .A(n81), .Z(n83) );
  BUF_X1 U17 ( .A(n77), .Z(n75) );
  BUF_X1 U18 ( .A(n77), .Z(n74) );
  BUF_X1 U19 ( .A(n77), .Z(n76) );
  BUF_X1 U20 ( .A(n91), .Z(n88) );
  BUF_X1 U21 ( .A(n91), .Z(n90) );
  BUF_X1 U22 ( .A(n91), .Z(n89) );
  AOI22_X1 U23 ( .A1(A0[4]), .A2(n76), .B1(A4[4]), .B2(n88), .ZN(n145) );
  AOI222_X1 U24 ( .A1(A1[4]), .A2(n87), .B1(A3[4]), .B2(n84), .C1(A2[4]), .C2(
        n80), .ZN(n144) );
  AOI22_X1 U25 ( .A1(A0[6]), .A2(n76), .B1(A4[6]), .B2(n88), .ZN(n149) );
  NAND2_X1 U26 ( .A1(n95), .A2(n94), .ZN(O[10]) );
  AOI222_X1 U27 ( .A1(A1[10]), .A2(n85), .B1(A3[10]), .B2(n82), .C1(A2[10]), 
        .C2(n78), .ZN(n94) );
  NAND2_X1 U28 ( .A1(n97), .A2(n96), .ZN(O[11]) );
  AOI22_X1 U29 ( .A1(A0[11]), .A2(n74), .B1(A4[11]), .B2(n90), .ZN(n97) );
  AOI222_X1 U30 ( .A1(A1[11]), .A2(n85), .B1(A3[11]), .B2(n82), .C1(A2[11]), 
        .C2(n78), .ZN(n96) );
  AOI22_X1 U31 ( .A1(A0[12]), .A2(n74), .B1(A4[12]), .B2(n90), .ZN(n99) );
  AOI222_X1 U32 ( .A1(A1[12]), .A2(n85), .B1(A3[12]), .B2(n82), .C1(A2[12]), 
        .C2(n78), .ZN(n98) );
  NAND2_X1 U33 ( .A1(n101), .A2(n100), .ZN(O[13]) );
  AOI22_X1 U34 ( .A1(A0[13]), .A2(n74), .B1(A4[13]), .B2(n90), .ZN(n101) );
  AOI222_X1 U35 ( .A1(A1[13]), .A2(n85), .B1(A3[13]), .B2(n82), .C1(A2[13]), 
        .C2(n78), .ZN(n100) );
  NAND2_X1 U36 ( .A1(n103), .A2(n102), .ZN(O[14]) );
  AOI22_X1 U37 ( .A1(A0[14]), .A2(n74), .B1(A4[14]), .B2(n90), .ZN(n103) );
  AOI222_X1 U38 ( .A1(A1[14]), .A2(n85), .B1(A3[14]), .B2(n82), .C1(A2[14]), 
        .C2(n78), .ZN(n102) );
  NAND2_X1 U39 ( .A1(n105), .A2(n104), .ZN(O[15]) );
  AOI22_X1 U40 ( .A1(A0[15]), .A2(n74), .B1(A4[15]), .B2(n90), .ZN(n105) );
  AOI222_X1 U41 ( .A1(A1[15]), .A2(n85), .B1(A3[15]), .B2(n82), .C1(A2[15]), 
        .C2(n78), .ZN(n104) );
  NAND2_X1 U42 ( .A1(n107), .A2(n106), .ZN(O[16]) );
  AOI22_X1 U43 ( .A1(A0[16]), .A2(n74), .B1(A4[16]), .B2(n89), .ZN(n107) );
  AOI222_X1 U44 ( .A1(A1[16]), .A2(n85), .B1(A3[16]), .B2(n82), .C1(A2[16]), 
        .C2(n78), .ZN(n106) );
  NAND2_X1 U45 ( .A1(n109), .A2(n108), .ZN(O[17]) );
  AOI22_X1 U46 ( .A1(A0[17]), .A2(n74), .B1(A4[17]), .B2(n89), .ZN(n109) );
  AOI222_X1 U47 ( .A1(A1[17]), .A2(n85), .B1(A3[17]), .B2(n82), .C1(A2[17]), 
        .C2(n78), .ZN(n108) );
  NAND2_X1 U48 ( .A1(n117), .A2(n116), .ZN(O[20]) );
  AOI22_X1 U49 ( .A1(A0[20]), .A2(n75), .B1(A4[20]), .B2(n89), .ZN(n117) );
  AOI222_X1 U50 ( .A1(A1[20]), .A2(n86), .B1(A3[20]), .B2(n83), .C1(A2[20]), 
        .C2(n79), .ZN(n116) );
  NAND2_X1 U51 ( .A1(n119), .A2(n118), .ZN(O[21]) );
  AOI222_X1 U52 ( .A1(A1[21]), .A2(n86), .B1(A3[21]), .B2(n83), .C1(A2[21]), 
        .C2(n79), .ZN(n118) );
  AOI22_X1 U53 ( .A1(A0[21]), .A2(n75), .B1(A4[21]), .B2(n89), .ZN(n119) );
  NAND2_X1 U54 ( .A1(n111), .A2(n110), .ZN(O[18]) );
  AOI22_X1 U55 ( .A1(A0[18]), .A2(n74), .B1(A4[18]), .B2(n89), .ZN(n111) );
  AOI222_X1 U56 ( .A1(A1[18]), .A2(n85), .B1(A3[18]), .B2(n82), .C1(A2[18]), 
        .C2(n78), .ZN(n110) );
  NAND2_X1 U57 ( .A1(n121), .A2(n120), .ZN(O[22]) );
  AOI22_X1 U58 ( .A1(A0[22]), .A2(n75), .B1(A4[22]), .B2(n89), .ZN(n121) );
  AOI222_X1 U59 ( .A1(A1[22]), .A2(n86), .B1(A3[22]), .B2(n83), .C1(A2[22]), 
        .C2(n79), .ZN(n120) );
  NAND2_X1 U60 ( .A1(n113), .A2(n112), .ZN(O[19]) );
  AOI22_X1 U61 ( .A1(A0[19]), .A2(n74), .B1(A4[19]), .B2(n89), .ZN(n113) );
  AOI222_X1 U62 ( .A1(A1[19]), .A2(n85), .B1(A3[19]), .B2(n82), .C1(A2[19]), 
        .C2(n78), .ZN(n112) );
  NAND2_X1 U63 ( .A1(n123), .A2(n122), .ZN(O[23]) );
  AOI22_X1 U64 ( .A1(A0[23]), .A2(n75), .B1(A4[23]), .B2(n89), .ZN(n123) );
  AOI222_X1 U65 ( .A1(A1[23]), .A2(n86), .B1(A3[23]), .B2(n83), .C1(A2[23]), 
        .C2(n79), .ZN(n122) );
  NAND2_X1 U66 ( .A1(n125), .A2(n124), .ZN(O[24]) );
  AOI222_X1 U67 ( .A1(A1[24]), .A2(n86), .B1(A3[24]), .B2(n83), .C1(A2[24]), 
        .C2(n79), .ZN(n124) );
  AOI22_X1 U68 ( .A1(A0[24]), .A2(n75), .B1(A4[24]), .B2(n89), .ZN(n125) );
  NAND2_X1 U69 ( .A1(n127), .A2(n126), .ZN(O[25]) );
  AOI22_X1 U70 ( .A1(A0[25]), .A2(n75), .B1(A4[25]), .B2(n89), .ZN(n127) );
  AOI222_X1 U71 ( .A1(A1[25]), .A2(n86), .B1(A3[25]), .B2(n83), .C1(A2[25]), 
        .C2(n79), .ZN(n126) );
  NAND2_X1 U72 ( .A1(n129), .A2(n128), .ZN(O[26]) );
  AOI22_X1 U73 ( .A1(A0[26]), .A2(n75), .B1(A4[26]), .B2(n88), .ZN(n129) );
  AOI222_X1 U74 ( .A1(A1[26]), .A2(n86), .B1(A3[26]), .B2(n83), .C1(A2[26]), 
        .C2(n79), .ZN(n128) );
  NAND2_X1 U75 ( .A1(n131), .A2(n130), .ZN(O[27]) );
  AOI22_X1 U76 ( .A1(A0[27]), .A2(n75), .B1(A4[27]), .B2(n88), .ZN(n131) );
  AOI222_X1 U77 ( .A1(A1[27]), .A2(n86), .B1(A3[27]), .B2(n83), .C1(A2[27]), 
        .C2(n79), .ZN(n130) );
  NAND2_X1 U78 ( .A1(n133), .A2(n132), .ZN(O[28]) );
  AOI222_X1 U79 ( .A1(A1[28]), .A2(n86), .B1(A3[28]), .B2(n83), .C1(A2[28]), 
        .C2(n79), .ZN(n132) );
  AOI22_X1 U80 ( .A1(A0[28]), .A2(n75), .B1(A4[28]), .B2(n88), .ZN(n133) );
  NAND2_X1 U81 ( .A1(n135), .A2(n134), .ZN(O[29]) );
  AOI222_X1 U82 ( .A1(A1[29]), .A2(n86), .B1(A3[29]), .B2(n83), .C1(A2[29]), 
        .C2(n79), .ZN(n134) );
  AOI22_X1 U83 ( .A1(A0[29]), .A2(n75), .B1(A4[29]), .B2(n88), .ZN(n135) );
  NAND2_X1 U84 ( .A1(n139), .A2(n138), .ZN(O[30]) );
  AOI22_X1 U85 ( .A1(A0[30]), .A2(n75), .B1(A4[30]), .B2(n89), .ZN(n139) );
  AOI222_X1 U86 ( .A1(A1[30]), .A2(n86), .B1(A3[30]), .B2(n83), .C1(A2[30]), 
        .C2(n79), .ZN(n138) );
  NAND2_X1 U87 ( .A1(n141), .A2(n140), .ZN(O[31]) );
  AOI22_X1 U88 ( .A1(A0[31]), .A2(n76), .B1(A4[31]), .B2(n88), .ZN(n141) );
  AOI222_X1 U89 ( .A1(A1[31]), .A2(n87), .B1(A3[31]), .B2(n84), .C1(A2[31]), 
        .C2(n80), .ZN(n140) );
  NAND2_X1 U90 ( .A1(n93), .A2(n92), .ZN(O[0]) );
  AOI22_X1 U91 ( .A1(A0[0]), .A2(n74), .B1(A4[0]), .B2(n90), .ZN(n93) );
  AOI222_X1 U92 ( .A1(A1[0]), .A2(n85), .B1(A3[0]), .B2(n82), .C1(A2[0]), .C2(
        n78), .ZN(n92) );
  NAND2_X1 U93 ( .A1(n115), .A2(n114), .ZN(O[1]) );
  AOI22_X1 U94 ( .A1(A0[1]), .A2(n74), .B1(A4[1]), .B2(n89), .ZN(n115) );
  AOI222_X1 U95 ( .A1(A1[1]), .A2(n85), .B1(A3[1]), .B2(n82), .C1(A2[1]), .C2(
        n78), .ZN(n114) );
  NAND2_X1 U96 ( .A1(n137), .A2(n136), .ZN(O[2]) );
  AOI22_X1 U97 ( .A1(A0[2]), .A2(n75), .B1(A4[2]), .B2(n88), .ZN(n137) );
  AOI222_X1 U98 ( .A1(A1[2]), .A2(n86), .B1(A3[2]), .B2(n83), .C1(A2[2]), .C2(
        n79), .ZN(n136) );
  NAND2_X1 U99 ( .A1(n143), .A2(n142), .ZN(O[3]) );
  AOI22_X1 U100 ( .A1(A0[3]), .A2(n76), .B1(A4[3]), .B2(n88), .ZN(n143) );
  AOI222_X1 U101 ( .A1(A1[3]), .A2(n87), .B1(A3[3]), .B2(n84), .C1(A2[3]), 
        .C2(n80), .ZN(n142) );
  NAND2_X1 U102 ( .A1(n99), .A2(n98), .ZN(O[12]) );
  NAND2_X1 U103 ( .A1(n157), .A2(n156), .ZN(O[9]) );
  NAND2_X1 U104 ( .A1(n149), .A2(n148), .ZN(O[6]) );
  AOI22_X1 U105 ( .A1(A0[10]), .A2(n74), .B1(A4[10]), .B2(n90), .ZN(n95) );
  AOI222_X1 U106 ( .A1(A1[9]), .A2(n87), .B1(A3[9]), .B2(n84), .C1(A2[9]), 
        .C2(n80), .ZN(n156) );
  AOI22_X1 U107 ( .A1(A0[7]), .A2(n76), .B1(A4[7]), .B2(n88), .ZN(n151) );
  AOI222_X1 U108 ( .A1(A1[6]), .A2(n87), .B1(A3[6]), .B2(n84), .C1(A2[6]), 
        .C2(n80), .ZN(n148) );
  AOI22_X1 U109 ( .A1(A0[5]), .A2(n76), .B1(A4[5]), .B2(n88), .ZN(n147) );
  AOI22_X1 U110 ( .A1(A0[8]), .A2(n76), .B1(A4[8]), .B2(n88), .ZN(n153) );
  AOI222_X1 U111 ( .A1(A1[7]), .A2(n87), .B1(A3[7]), .B2(n84), .C1(A2[7]), 
        .C2(n80), .ZN(n150) );
  NAND2_X1 U112 ( .A1(n147), .A2(n146), .ZN(O[5]) );
  AOI222_X1 U113 ( .A1(A1[5]), .A2(n87), .B1(A3[5]), .B2(n84), .C1(A2[5]), 
        .C2(n80), .ZN(n146) );
  AOI22_X1 U114 ( .A1(A0[9]), .A2(n76), .B1(n90), .B2(A4[9]), .ZN(n157) );
  AOI222_X1 U115 ( .A1(A1[8]), .A2(n87), .B1(A3[8]), .B2(n84), .C1(A2[8]), 
        .C2(n80), .ZN(n152) );
  NOR3_X1 U116 ( .A1(sel[1]), .A2(n90), .A3(sel[0]), .ZN(n154) );
  AND2_X1 U117 ( .A1(sel[1]), .A2(sel[0]), .ZN(n155) );
  INV_X1 U118 ( .A(sel[0]), .ZN(n158) );
  NAND2_X1 U119 ( .A1(n145), .A2(n144), .ZN(O[4]) );
endmodule


module MUX_5TO1_NBIT32_7 ( A0, A1, A2, A3, A4, sel, O );
  input [31:0] A0;
  input [31:0] A1;
  input [31:0] A2;
  input [31:0] A3;
  input [31:0] A4;
  input [2:0] sel;
  output [31:0] O;
  wire   n18, net37175, net37173, net37171, net37449, net37469, net37467,
         net37785, net37783, net39126, net39114, net39194, net39217, net47058,
         net47111, net47076, net47075, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160;
  assign net37171 = sel[2];

  BUF_X1 U1 ( .A(n76), .Z(n72) );
  BUF_X4 U2 ( .A(n96), .Z(net37449) );
  INV_X2 U3 ( .A(n95), .ZN(net37173) );
  AND2_X1 U4 ( .A1(n81), .A2(n87), .ZN(n73) );
  AND2_X1 U5 ( .A1(n81), .A2(n87), .ZN(n79) );
  BUF_X2 U6 ( .A(n79), .Z(net37467) );
  BUF_X4 U7 ( .A(net37467), .Z(net37783) );
  BUF_X1 U8 ( .A(sel[0]), .Z(net47058) );
  NOR2_X1 U9 ( .A1(n88), .A2(n82), .ZN(n83) );
  INV_X1 U10 ( .A(A3[2]), .ZN(n82) );
  INV_X1 U11 ( .A(net47075), .ZN(n84) );
  INV_X1 U12 ( .A(A4[2]), .ZN(n94) );
  NAND2_X1 U13 ( .A1(A0[2]), .A2(n75), .ZN(net47111) );
  INV_X1 U14 ( .A(A3[3]), .ZN(n99) );
  CLKBUF_X1 U15 ( .A(n90), .Z(n88) );
  AND2_X2 U16 ( .A1(n75), .A2(n95), .ZN(n74) );
  AND2_X1 U17 ( .A1(net39126), .A2(n89), .ZN(n75) );
  AND2_X1 U18 ( .A1(net47058), .A2(net39126), .ZN(n76) );
  AND2_X1 U19 ( .A1(net47058), .A2(net39126), .ZN(n80) );
  INV_X1 U20 ( .A(n90), .ZN(n77) );
  INV_X2 U21 ( .A(n88), .ZN(n78) );
  INV_X1 U22 ( .A(n90), .ZN(net39194) );
  NAND2_X1 U23 ( .A1(n80), .A2(A1[2]), .ZN(net47076) );
  BUF_X2 U24 ( .A(n72), .Z(n96) );
  BUF_X1 U25 ( .A(sel[1]), .Z(n87) );
  NAND3_X1 U26 ( .A1(n85), .A2(net47076), .A3(n86), .ZN(O[2]) );
  NAND2_X1 U27 ( .A1(net47058), .A2(n87), .ZN(net39114) );
  INV_X1 U28 ( .A(sel[1]), .ZN(net39126) );
  INV_X1 U29 ( .A(sel[0]), .ZN(n81) );
  NOR2_X1 U30 ( .A1(n84), .A2(n83), .ZN(n86) );
  CLKBUF_X1 U31 ( .A(n81), .Z(n89) );
  NAND2_X1 U32 ( .A1(n73), .A2(A2[2]), .ZN(n85) );
  CLKBUF_X1 U33 ( .A(net39114), .Z(n90) );
  BUF_X2 U34 ( .A(net37171), .Z(net37175) );
  AND2_X1 U35 ( .A1(A1[4]), .A2(n76), .ZN(n91) );
  AND2_X1 U36 ( .A1(net39217), .A2(A3[4]), .ZN(n92) );
  AND2_X1 U37 ( .A1(n73), .A2(A2[4]), .ZN(n93) );
  NOR3_X1 U38 ( .A1(n92), .A2(n91), .A3(n93), .ZN(n149) );
  MUX2_X1 U39 ( .A(net47111), .B(n94), .S(net37173), .Z(net47075) );
  INV_X1 U40 ( .A(net37171), .ZN(n95) );
  NAND2_X1 U41 ( .A1(A1[3]), .A2(n72), .ZN(n98) );
  INV_X1 U42 ( .A(net39114), .ZN(net39217) );
  AOI21_X1 U43 ( .B1(A2[3]), .B2(n79), .A(n100), .ZN(n97) );
  NOR2_X1 U44 ( .A1(n99), .A2(net39114), .ZN(n100) );
  NAND3_X1 U45 ( .A1(n18), .A2(n98), .A3(n97), .ZN(O[3]) );
  CLKBUF_X1 U46 ( .A(net37467), .Z(net37785) );
  AOI22_X1 U47 ( .A1(A0[4]), .A2(n74), .B1(A4[4]), .B2(net37175), .ZN(n150) );
  AOI22_X1 U48 ( .A1(A0[9]), .A2(n74), .B1(net37173), .B2(A4[9]), .ZN(n160) );
  NAND2_X1 U49 ( .A1(n104), .A2(n103), .ZN(O[10]) );
  AOI22_X1 U50 ( .A1(A0[10]), .A2(n74), .B1(A4[10]), .B2(net37175), .ZN(n104)
         );
  NAND2_X1 U51 ( .A1(n106), .A2(n105), .ZN(O[11]) );
  AOI22_X1 U52 ( .A1(A0[11]), .A2(n74), .B1(A4[11]), .B2(net37173), .ZN(n106)
         );
  NAND2_X1 U53 ( .A1(n108), .A2(n107), .ZN(O[12]) );
  AOI22_X1 U54 ( .A1(A0[12]), .A2(n74), .B1(A4[12]), .B2(net37173), .ZN(n108)
         );
  NAND2_X1 U55 ( .A1(n110), .A2(n109), .ZN(O[13]) );
  AOI22_X1 U56 ( .A1(A0[13]), .A2(n74), .B1(A4[13]), .B2(net37175), .ZN(n110)
         );
  NAND2_X1 U57 ( .A1(n120), .A2(n119), .ZN(O[18]) );
  AOI22_X1 U58 ( .A1(A0[18]), .A2(n74), .B1(A4[18]), .B2(net37173), .ZN(n120)
         );
  AOI222_X1 U59 ( .A1(A1[18]), .A2(net37449), .B1(A3[18]), .B2(n78), .C1(
        A2[18]), .C2(net37783), .ZN(n119) );
  NAND2_X1 U60 ( .A1(n112), .A2(n111), .ZN(O[14]) );
  AOI22_X1 U61 ( .A1(A0[14]), .A2(n74), .B1(A4[14]), .B2(net37173), .ZN(n112)
         );
  NAND2_X1 U62 ( .A1(n122), .A2(n121), .ZN(O[19]) );
  AOI22_X1 U63 ( .A1(A0[19]), .A2(n74), .B1(A4[19]), .B2(net37175), .ZN(n122)
         );
  AOI222_X1 U64 ( .A1(A1[19]), .A2(net37449), .B1(A3[19]), .B2(n78), .C1(
        A2[19]), .C2(net37783), .ZN(n121) );
  NAND2_X1 U65 ( .A1(n114), .A2(n113), .ZN(O[15]) );
  AOI22_X1 U66 ( .A1(A0[15]), .A2(n74), .B1(A4[15]), .B2(net37175), .ZN(n114)
         );
  NAND2_X1 U67 ( .A1(n116), .A2(n115), .ZN(O[16]) );
  AOI22_X1 U68 ( .A1(A0[16]), .A2(n74), .B1(A4[16]), .B2(net37173), .ZN(n116)
         );
  NAND2_X1 U69 ( .A1(n118), .A2(n117), .ZN(O[17]) );
  AOI22_X1 U70 ( .A1(A0[17]), .A2(n74), .B1(A4[17]), .B2(net37173), .ZN(n118)
         );
  AOI22_X1 U71 ( .A1(A0[20]), .A2(n74), .B1(A4[20]), .B2(net37173), .ZN(n126)
         );
  AOI22_X1 U72 ( .A1(A0[21]), .A2(n74), .B1(A4[21]), .B2(net37175), .ZN(n128)
         );
  AOI22_X1 U73 ( .A1(A0[22]), .A2(n74), .B1(A4[22]), .B2(net37173), .ZN(n130)
         );
  AOI22_X1 U74 ( .A1(A0[23]), .A2(n74), .B1(A4[23]), .B2(net37173), .ZN(n132)
         );
  AOI22_X1 U75 ( .A1(A0[25]), .A2(n74), .B1(A4[25]), .B2(net37173), .ZN(n136)
         );
  AOI22_X1 U76 ( .A1(A0[26]), .A2(n74), .B1(A4[26]), .B2(net37173), .ZN(n138)
         );
  AOI22_X1 U77 ( .A1(A0[24]), .A2(n74), .B1(A4[24]), .B2(net37175), .ZN(n134)
         );
  AOI22_X1 U78 ( .A1(A0[27]), .A2(n74), .B1(A4[27]), .B2(net37173), .ZN(n140)
         );
  AOI22_X1 U79 ( .A1(A0[28]), .A2(n74), .B1(A4[28]), .B2(net37173), .ZN(n142)
         );
  AOI22_X1 U80 ( .A1(A0[30]), .A2(n74), .B1(A4[30]), .B2(net37173), .ZN(n146)
         );
  AOI22_X1 U81 ( .A1(A0[31]), .A2(n74), .B1(A4[31]), .B2(net37175), .ZN(n148)
         );
  AOI22_X1 U82 ( .A1(A0[29]), .A2(n74), .B1(A4[29]), .B2(net37175), .ZN(n144)
         );
  NAND2_X1 U83 ( .A1(n102), .A2(n101), .ZN(O[0]) );
  AOI22_X1 U84 ( .A1(A0[0]), .A2(n74), .B1(A4[0]), .B2(net37173), .ZN(n102) );
  AOI222_X1 U85 ( .A1(A1[0]), .A2(net37449), .B1(A3[0]), .B2(n78), .C1(A2[0]), 
        .C2(net37783), .ZN(n101) );
  NAND2_X1 U86 ( .A1(n124), .A2(n123), .ZN(O[1]) );
  AOI22_X1 U87 ( .A1(A0[1]), .A2(n74), .B1(A4[1]), .B2(net37175), .ZN(n124) );
  AOI222_X1 U88 ( .A1(A1[1]), .A2(net37449), .B1(A3[1]), .B2(n78), .C1(A2[1]), 
        .C2(net37783), .ZN(n123) );
  NAND2_X1 U89 ( .A1(n154), .A2(n153), .ZN(O[6]) );
  NAND2_X1 U90 ( .A1(n148), .A2(n147), .ZN(O[31]) );
  NAND2_X1 U91 ( .A1(n150), .A2(n149), .ZN(O[4]) );
  NAND2_X1 U92 ( .A1(n152), .A2(n151), .ZN(O[5]) );
  NAND2_X1 U93 ( .A1(n156), .A2(n155), .ZN(O[7]) );
  NAND2_X1 U94 ( .A1(n158), .A2(n157), .ZN(O[8]) );
  NAND2_X1 U95 ( .A1(n160), .A2(n159), .ZN(O[9]) );
  NAND2_X1 U96 ( .A1(n146), .A2(n145), .ZN(O[30]) );
  NAND2_X1 U97 ( .A1(n144), .A2(n143), .ZN(O[29]) );
  NAND2_X1 U98 ( .A1(n142), .A2(n141), .ZN(O[28]) );
  NAND2_X1 U99 ( .A1(n140), .A2(n139), .ZN(O[27]) );
  NAND2_X1 U100 ( .A1(n138), .A2(n137), .ZN(O[26]) );
  NAND2_X1 U101 ( .A1(n136), .A2(n135), .ZN(O[25]) );
  NAND2_X1 U102 ( .A1(n134), .A2(n133), .ZN(O[24]) );
  NAND2_X1 U103 ( .A1(n132), .A2(n131), .ZN(O[23]) );
  NAND2_X1 U104 ( .A1(n130), .A2(n129), .ZN(O[22]) );
  NAND2_X1 U105 ( .A1(n128), .A2(n127), .ZN(O[21]) );
  NAND2_X1 U106 ( .A1(n126), .A2(n125), .ZN(O[20]) );
  AOI222_X1 U107 ( .A1(A1[10]), .A2(net37449), .B1(A3[10]), .B2(n78), .C1(
        A2[10]), .C2(net37783), .ZN(n103) );
  AOI222_X1 U108 ( .A1(A1[11]), .A2(net37449), .B1(A3[11]), .B2(n78), .C1(
        A2[11]), .C2(net37783), .ZN(n105) );
  AOI222_X1 U109 ( .A1(A1[12]), .A2(net37449), .B1(A3[12]), .B2(n78), .C1(
        A2[12]), .C2(net37783), .ZN(n107) );
  AOI222_X1 U110 ( .A1(A1[13]), .A2(net37449), .B1(A3[13]), .B2(n78), .C1(
        A2[13]), .C2(net37783), .ZN(n109) );
  AOI222_X1 U111 ( .A1(A1[14]), .A2(net37449), .B1(A3[14]), .B2(n78), .C1(
        A2[14]), .C2(net37783), .ZN(n111) );
  AOI222_X1 U112 ( .A1(A1[15]), .A2(net37449), .B1(A3[15]), .B2(n78), .C1(
        A2[15]), .C2(net37783), .ZN(n113) );
  AOI222_X1 U113 ( .A1(A1[16]), .A2(net37449), .B1(A3[16]), .B2(n78), .C1(
        A2[16]), .C2(net37783), .ZN(n115) );
  AOI222_X1 U114 ( .A1(A1[17]), .A2(net37449), .B1(A3[17]), .B2(n78), .C1(
        A2[17]), .C2(net37783), .ZN(n117) );
  AOI22_X1 U115 ( .A1(A0[8]), .A2(n74), .B1(A4[8]), .B2(net37173), .ZN(n158)
         );
  AOI22_X1 U116 ( .A1(A0[5]), .A2(n74), .B1(A4[5]), .B2(net37173), .ZN(n152)
         );
  AOI222_X1 U117 ( .A1(A1[30]), .A2(net37449), .B1(A3[30]), .B2(n78), .C1(
        A2[30]), .C2(net37783), .ZN(n145) );
  AOI222_X1 U118 ( .A1(A1[29]), .A2(net37449), .B1(A3[29]), .B2(n78), .C1(
        A2[29]), .C2(net37783), .ZN(n143) );
  AOI222_X1 U119 ( .A1(A1[28]), .A2(net37449), .B1(A3[28]), .B2(n78), .C1(
        A2[28]), .C2(net37783), .ZN(n141) );
  AOI222_X1 U120 ( .A1(A1[27]), .A2(net37449), .B1(A3[27]), .B2(n78), .C1(
        A2[27]), .C2(net37783), .ZN(n139) );
  AOI222_X1 U121 ( .A1(A1[26]), .A2(net37449), .B1(A3[26]), .B2(n78), .C1(
        A2[26]), .C2(net37783), .ZN(n137) );
  AOI222_X1 U122 ( .A1(A1[25]), .A2(net37449), .B1(A3[25]), .B2(n78), .C1(
        A2[25]), .C2(net37783), .ZN(n135) );
  AOI222_X1 U123 ( .A1(A1[24]), .A2(net37449), .B1(A3[24]), .B2(n78), .C1(
        A2[24]), .C2(net37783), .ZN(n133) );
  AOI222_X1 U124 ( .A1(A1[23]), .A2(net37449), .B1(A3[23]), .B2(n78), .C1(
        A2[23]), .C2(net37783), .ZN(n131) );
  AOI222_X1 U125 ( .A1(A1[22]), .A2(net37449), .B1(A3[22]), .B2(n78), .C1(
        A2[22]), .C2(net37783), .ZN(n129) );
  AOI222_X1 U126 ( .A1(A1[21]), .A2(net37449), .B1(A3[21]), .B2(n78), .C1(
        A2[21]), .C2(net37783), .ZN(n127) );
  AOI222_X1 U127 ( .A1(A1[20]), .A2(net37449), .B1(A3[20]), .B2(n78), .C1(
        A2[20]), .C2(net37783), .ZN(n125) );
  AOI22_X1 U128 ( .A1(A0[6]), .A2(n74), .B1(A4[6]), .B2(net37173), .ZN(n154)
         );
  AOI222_X1 U129 ( .A1(A1[31]), .A2(net37449), .B1(A3[31]), .B2(n78), .C1(
        A2[31]), .C2(net37783), .ZN(n147) );
  AOI222_X1 U130 ( .A1(A1[5]), .A2(n96), .B1(A3[5]), .B2(n77), .C1(A2[5]), 
        .C2(net37469), .ZN(n151) );
  AOI222_X1 U131 ( .A1(A1[7]), .A2(n96), .B1(A3[7]), .B2(net39194), .C1(A2[7]), 
        .C2(net37785), .ZN(n155) );
  AOI222_X1 U132 ( .A1(A1[8]), .A2(n96), .B1(A3[8]), .B2(net39194), .C1(A2[8]), 
        .C2(net37783), .ZN(n157) );
  AOI222_X1 U133 ( .A1(A1[9]), .A2(net37449), .B1(A3[9]), .B2(net39194), .C1(
        A2[9]), .C2(net37783), .ZN(n159) );
  AOI22_X1 U134 ( .A1(A0[7]), .A2(n74), .B1(A4[7]), .B2(net37175), .ZN(n156)
         );
  AOI222_X1 U135 ( .A1(A1[6]), .A2(n96), .B1(A3[6]), .B2(net39194), .C1(A2[6]), 
        .C2(net37467), .ZN(n153) );
  CLKBUF_X1 U136 ( .A(n79), .Z(net37469) );
  AOI22_X1 U137 ( .A1(A0[3]), .A2(n74), .B1(A4[3]), .B2(net37171), .ZN(n18) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net55179, net55173, net55234, n5, n6, n7, n8;

  OR2_X1 U1 ( .A1(n8), .A2(n5), .ZN(Co) );
  AND2_X1 U2 ( .A1(A), .A2(n7), .ZN(n5) );
  XNOR2_X1 U3 ( .A(n6), .B(Ci), .ZN(S) );
  XNOR2_X1 U4 ( .A(B), .B(A), .ZN(n6) );
  CLKBUF_X1 U5 ( .A(n6), .Z(net55179) );
  CLKBUF_X1 U6 ( .A(Ci), .Z(net55234) );
  CLKBUF_X1 U7 ( .A(B), .Z(n7) );
  NOR2_X1 U8 ( .A1(net55173), .A2(net55179), .ZN(n8) );
  INV_X1 U9 ( .A(net55234), .ZN(net55173) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net38807, n4, n5, n6, n7;

  CLKBUF_X1 U1 ( .A(Ci), .Z(net38807) );
  XNOR2_X1 U2 ( .A(net38807), .B(n4), .ZN(S) );
  XNOR2_X1 U3 ( .A(B), .B(A), .ZN(n4) );
  AND2_X1 U4 ( .A1(A), .A2(B), .ZN(n5) );
  NOR2_X1 U5 ( .A1(Ci), .A2(n5), .ZN(n7) );
  NOR2_X1 U6 ( .A1(n7), .A2(n6), .ZN(Co) );
  NOR2_X1 U7 ( .A1(A), .A2(B), .ZN(n6) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(n9), .B(n4), .Z(S) );
  CLKBUF_X1 U1 ( .A(n6), .Z(n4) );
  INV_X1 U2 ( .A(A), .ZN(n8) );
  AOI22_X1 U4 ( .A1(n7), .A2(A), .B1(Ci), .B2(n6), .ZN(n5) );
  INV_X1 U5 ( .A(n5), .ZN(Co) );
  CLKBUF_X1 U6 ( .A(B), .Z(n7) );
  CLKBUF_X1 U7 ( .A(Ci), .Z(n9) );
  XNOR2_X1 U8 ( .A(B), .B(n8), .ZN(n6) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net38783, n2, n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(net38783), .B(n4), .Z(S) );
  CLKBUF_X1 U1 ( .A(n6), .Z(n4) );
  INV_X1 U2 ( .A(A), .ZN(n5) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n7), .A2(A), .B1(n6), .B2(Ci), .ZN(n2) );
  INV_X1 U6 ( .A(n2), .ZN(Co) );
  CLKBUF_X1 U7 ( .A(B), .Z(n7) );
  CLKBUF_X1 U8 ( .A(Ci), .Z(net38783) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9, n10, n11;

  XOR2_X1 U3 ( .A(n10), .B(n9), .Z(S) );
  BUF_X1 U1 ( .A(B), .Z(n11) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n9) );
  INV_X1 U4 ( .A(A), .ZN(n4) );
  INV_X1 U5 ( .A(n11), .ZN(n5) );
  NAND2_X1 U6 ( .A1(n8), .A2(n7), .ZN(Co) );
  OR2_X1 U7 ( .A1(n4), .A2(n5), .ZN(n7) );
  NAND2_X1 U8 ( .A1(Ci), .A2(n9), .ZN(n8) );
  CLKBUF_X1 U9 ( .A(Ci), .Z(n10) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n5), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
  CLKBUF_X1 U5 ( .A(Ci), .Z(n5) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(n4), .B(n9), .Z(S) );
  INV_X1 U1 ( .A(n6), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n8), .B(B), .ZN(n9) );
  OAI22_X1 U4 ( .A1(n5), .A2(n8), .B1(n6), .B2(n7), .ZN(Co) );
  INV_X1 U5 ( .A(B), .ZN(n5) );
  INV_X1 U6 ( .A(Ci), .ZN(n6) );
  INV_X1 U7 ( .A(n9), .ZN(n7) );
  INV_X1 U8 ( .A(A), .ZN(n8) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n6) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  CLKBUF_X1 U2 ( .A(n6), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(B), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(n8), .B(n9), .Z(S) );
  INV_X1 U1 ( .A(n4), .ZN(n9) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  OAI22_X1 U4 ( .A1(n5), .A2(n6), .B1(n4), .B2(n7), .ZN(Co) );
  INV_X1 U5 ( .A(B), .ZN(n5) );
  INV_X1 U6 ( .A(A), .ZN(n6) );
  INV_X1 U7 ( .A(Ci), .ZN(n7) );
  CLKBUF_X1 U8 ( .A(Ci), .Z(n8) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9, n10;

  XOR2_X1 U3 ( .A(n4), .B(n9), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n10) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n6), .B1(n7), .B2(n8), .ZN(Co) );
  INV_X1 U5 ( .A(B), .ZN(n5) );
  INV_X1 U6 ( .A(A), .ZN(n6) );
  INV_X1 U7 ( .A(n10), .ZN(n7) );
  INV_X1 U8 ( .A(Ci), .ZN(n8) );
  CLKBUF_X1 U9 ( .A(n10), .Z(n9) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(n4), .B(n9), .Z(S) );
  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(n9) );
  INV_X1 U4 ( .A(n8), .ZN(n4) );
  OAI22_X1 U5 ( .A1(n6), .A2(n7), .B1(n5), .B2(n8), .ZN(Co) );
  INV_X1 U6 ( .A(B), .ZN(n6) );
  INV_X1 U7 ( .A(A), .ZN(n7) );
  INV_X1 U8 ( .A(Ci), .ZN(n8) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(n5), .B(n6), .Z(S) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n8), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(Co) );
  INV_X1 U4 ( .A(A), .ZN(n7) );
  CLKBUF_X1 U5 ( .A(Ci), .Z(n5) );
  CLKBUF_X1 U6 ( .A(n8), .Z(n6) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_1 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_28 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_27 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_26 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_25 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_24 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_23 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_22 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_21 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_20 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_19 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_18 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_17 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16])
         );
  FA_16 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17])
         );
  FA_15 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18])
         );
  FA_14 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19])
         );
  FA_13 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20])
         );
  FA_12 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21])
         );
  FA_11 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22])
         );
  FA_10 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23])
         );
  FA_9 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24])
         );
  FA_8 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25])
         );
  FA_7 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26])
         );
  FA_6 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27])
         );
  FA_5 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28])
         );
  FA_4 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29])
         );
  FA_3 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30])
         );
  FA_2 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31])
         );
  FA_1 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net39907, net39900, n4, n6, n7, n8, n9;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  OR2_X1 U2 ( .A1(net39900), .A2(n6), .ZN(Co) );
  AND2_X1 U3 ( .A1(A), .A2(n9), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(n8), .Z(n7) );
  XNOR2_X1 U5 ( .A(Ci), .B(n8), .ZN(S) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n8) );
  NOR2_X1 U7 ( .A1(net39907), .A2(n7), .ZN(net39900) );
  CLKBUF_X1 U8 ( .A(B), .Z(n9) );
  INV_X1 U9 ( .A(n4), .ZN(net39907) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n5), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(n7), .A2(A), .B1(n5), .B2(Ci), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n7) );
  XNOR2_X1 U6 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n5), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(n7), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n7) );
  XNOR2_X1 U6 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n9) );
  NAND2_X1 U2 ( .A1(n8), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(Co) );
  CLKBUF_X1 U6 ( .A(B), .Z(n8) );
  XNOR2_X1 U7 ( .A(B), .B(n9), .ZN(n7) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  XOR2_X1 U1 ( .A(B), .B(n8), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n8), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n8) );
  XNOR2_X1 U7 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  AOI22_X1 U1 ( .A1(n5), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n5) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  XOR2_X1 U2 ( .A(B), .B(A), .Z(n5) );
  AOI22_X1 U4 ( .A1(n4), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  OAI22_X1 U1 ( .A1(n4), .A2(n7), .B1(n5), .B2(n6), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n8), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  XOR2_X1 U1 ( .A(B), .B(n7), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n5), .B(Ci), .Z(S) );
  XNOR2_X1 U1 ( .A(B), .B(n4), .ZN(n5) );
  INV_X32 U2 ( .A(A), .ZN(n4) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  XOR2_X1 U1 ( .A(B), .B(n7), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  OAI22_X1 U1 ( .A1(n4), .A2(n7), .B1(n6), .B2(n5), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n8), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(n4), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  CLKBUF_X1 U2 ( .A(n7), .Z(n4) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n7) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(n7), .B2(Ci), .ZN(n8) );
  INV_X1 U7 ( .A(n8), .ZN(Co) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_64 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_2 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_64 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_60 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_59 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_58 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_57 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_56 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_55 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_54 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_53 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_52 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_51 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_50 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_49 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16])
         );
  FA_48 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17])
         );
  FA_47 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18])
         );
  FA_46 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19])
         );
  FA_45 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20])
         );
  FA_44 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21])
         );
  FA_43 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22])
         );
  FA_42 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23])
         );
  FA_41 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24])
         );
  FA_40 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25])
         );
  FA_39 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26])
         );
  FA_38 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27])
         );
  FA_37 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28])
         );
  FA_36 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29])
         );
  FA_35 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30])
         );
  FA_34 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31])
         );
  FA_33 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module FA_65 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n4) );
  CLKBUF_X1 U4 ( .A(n8), .Z(n5) );
  CLKBUF_X1 U5 ( .A(B), .Z(n6) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
  INV_X1 U7 ( .A(n9), .ZN(Co) );
  AOI22_X1 U8 ( .A1(n6), .A2(A), .B1(n5), .B2(n4), .ZN(n9) );
endmodule


module FA_66 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n6), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_67 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_68 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n9), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  INV_X1 U2 ( .A(A), .ZN(n8) );
  NAND2_X1 U4 ( .A1(n4), .A2(A), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n9), .A2(Ci), .ZN(n6) );
  NAND2_X1 U6 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U7 ( .A(B), .B(n8), .ZN(n9) );
endmodule


module FA_69 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_70 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_71 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(n5), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  XNOR2_X1 U4 ( .A(B), .B(n6), .ZN(n4) );
  CLKBUF_X1 U5 ( .A(B), .Z(n5) );
  INV_X1 U6 ( .A(n2), .ZN(Co) );
endmodule


module FA_72 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(n5), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  INV_X1 U4 ( .A(n2), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n5) );
  XNOR2_X1 U6 ( .A(B), .B(n6), .ZN(n4) );
endmodule


module FA_73 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_74 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  NOR2_X1 U1 ( .A1(n7), .A2(n9), .ZN(n5) );
  OR2_X2 U2 ( .A1(n4), .A2(n5), .ZN(Co) );
  AND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n4) );
  INV_X1 U5 ( .A(B), .ZN(n7) );
  INV_X1 U6 ( .A(A), .ZN(n9) );
  XNOR2_X1 U7 ( .A(B), .B(n9), .ZN(n8) );
endmodule


module FA_75 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  OAI22_X1 U1 ( .A1(n4), .A2(n8), .B1(n5), .B2(n6), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n7), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n8) );
  XNOR2_X1 U7 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_76 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_77 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_78 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_79 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  INV_X1 U2 ( .A(A), .ZN(n7) );
  AOI22_X1 U4 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n5) );
  INV_X1 U5 ( .A(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n6) );
endmodule


module FA_80 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n9), .B1(n6), .B2(n7), .ZN(Co) );
  INV_X1 U4 ( .A(n4), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(n8), .ZN(n7) );
  INV_X1 U7 ( .A(A), .ZN(n9) );
  XNOR2_X1 U8 ( .A(B), .B(n9), .ZN(n8) );
endmodule


module FA_81 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(n7), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n7) );
  XNOR2_X1 U6 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_82 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(n7), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_83 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_84 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(n8), .A2(Ci), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_85 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  CLKBUF_X1 U2 ( .A(n7), .Z(n4) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n7) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(n7), .B2(Ci), .ZN(n8) );
  INV_X1 U7 ( .A(n8), .ZN(Co) );
endmodule


module FA_86 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_87 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_88 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_89 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_90 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_91 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_92 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_93 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_94 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_95 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_96 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_3 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_96 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_95 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_94 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_93 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_92 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_91 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_90 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_89 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_88 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_87 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_86 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_85 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_84 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_83 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_82 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_81 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16])
         );
  FA_80 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17])
         );
  FA_79 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18])
         );
  FA_78 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19])
         );
  FA_77 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20])
         );
  FA_76 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21])
         );
  FA_75 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22])
         );
  FA_74 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23])
         );
  FA_73 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24])
         );
  FA_72 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25])
         );
  FA_71 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26])
         );
  FA_70 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27])
         );
  FA_69 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28])
         );
  FA_68 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29])
         );
  FA_67 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30])
         );
  FA_66 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31])
         );
  FA_65 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module FA_97 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  CLKBUF_X1 U2 ( .A(n7), .Z(n4) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n8), .ZN(Co) );
  AOI22_X1 U7 ( .A1(n5), .A2(A), .B1(n4), .B2(Ci), .ZN(n8) );
endmodule


module FA_98 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n6), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_99 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_100 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n9), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  INV_X1 U2 ( .A(A), .ZN(n8) );
  NAND2_X1 U4 ( .A1(n4), .A2(A), .ZN(n5) );
  NAND2_X1 U5 ( .A1(Ci), .A2(n9), .ZN(n6) );
  NAND2_X1 U6 ( .A1(n5), .A2(n6), .ZN(Co) );
  XNOR2_X1 U7 ( .A(B), .B(n8), .ZN(n9) );
endmodule


module FA_101 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_102 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_103 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_104 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  AOI22_X1 U2 ( .A1(n6), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  XNOR2_X1 U4 ( .A(n5), .B(B), .ZN(n4) );
  CLKBUF_X1 U5 ( .A(B), .Z(n6) );
  INV_X1 U6 ( .A(n2), .ZN(Co) );
endmodule


module FA_105 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  XNOR2_X1 U5 ( .A(n6), .B(B), .ZN(n5) );
endmodule


module FA_106 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  AOI22_X1 U5 ( .A1(n5), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_107 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U1 ( .A(B), .B(n7), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  XNOR2_X1 U3 ( .A(Ci), .B(n4), .ZN(S) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
endmodule


module FA_108 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  AOI22_X1 U2 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n5) );
  INV_X1 U4 ( .A(n5), .ZN(Co) );
  INV_X1 U5 ( .A(A), .ZN(n7) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n6) );
endmodule


module FA_109 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  BUF_X1 U1 ( .A(B), .Z(n4) );
  XOR2_X1 U2 ( .A(n9), .B(B), .Z(n5) );
  OAI22_X1 U4 ( .A1(n6), .A2(n9), .B1(n7), .B2(n5), .ZN(Co) );
  INV_X1 U5 ( .A(n4), .ZN(n6) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
  INV_X1 U7 ( .A(A), .ZN(n9) );
  XNOR2_X1 U8 ( .A(n9), .B(B), .ZN(n8) );
endmodule


module FA_110 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(n7), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n7) );
  XNOR2_X1 U6 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_111 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_112 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9;

  XOR2_X1 U3 ( .A(n8), .B(Ci), .Z(S) );
  NOR2_X1 U1 ( .A1(n7), .A2(n9), .ZN(n5) );
  OR2_X2 U2 ( .A1(n4), .A2(n5), .ZN(Co) );
  AND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n4) );
  INV_X1 U5 ( .A(B), .ZN(n7) );
  INV_X1 U6 ( .A(A), .ZN(n9) );
  XNOR2_X1 U7 ( .A(B), .B(n9), .ZN(n8) );
endmodule


module FA_113 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_114 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5;

  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  AOI22_X1 U1 ( .A1(n5), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  CLKBUF_X1 U2 ( .A(B), .Z(n5) );
  INV_X1 U5 ( .A(n2), .ZN(Co) );
endmodule


module FA_115 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  AOI22_X1 U5 ( .A1(n5), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_116 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(n8), .A2(Ci), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(n7), .B(B), .ZN(n8) );
endmodule


module FA_117 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_118 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(n7), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  CLKBUF_X1 U4 ( .A(Ci), .Z(n5) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n7) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(n7), .B2(Ci), .ZN(n8) );
  INV_X1 U7 ( .A(n8), .ZN(Co) );
endmodule


module FA_119 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  CLKBUF_X1 U4 ( .A(n7), .Z(n5) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n8), .ZN(Co) );
  AOI22_X1 U7 ( .A1(n4), .A2(A), .B1(n7), .B2(Ci), .ZN(n8) );
endmodule


module FA_120 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_121 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_122 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_123 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_124 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_125 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_126 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_127 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_128 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_4 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_128 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_127 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_126 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_125 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_124 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_123 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_122 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_121 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_120 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_119 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_118 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11]) );
  FA_117 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12]) );
  FA_116 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13]) );
  FA_115 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14]) );
  FA_114 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15]) );
  FA_113 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16]) );
  FA_112 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17]) );
  FA_111 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18]) );
  FA_110 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19]) );
  FA_109 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20]) );
  FA_108 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21]) );
  FA_107 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22]) );
  FA_106 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23]) );
  FA_105 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24]) );
  FA_104 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25]) );
  FA_103 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26]) );
  FA_102 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27]) );
  FA_101 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28]) );
  FA_100 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29]) );
  FA_99 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30])
         );
  FA_98 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31])
         );
  FA_97 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module FA_129 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n5) );
  INV_X1 U4 ( .A(n8), .ZN(Co) );
  INV_X1 U5 ( .A(A), .ZN(n6) );
  XNOR2_X1 U6 ( .A(B), .B(n6), .ZN(n7) );
  AOI22_X1 U7 ( .A1(n5), .A2(A), .B1(n7), .B2(n4), .ZN(n8) );
endmodule


module FA_130 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_131 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_132 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  OAI22_X1 U1 ( .A1(n4), .A2(n7), .B1(n5), .B2(n6), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n8), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_133 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_134 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(n5), .B(B), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_135 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_136 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(n5), .B(B), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_137 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(n5), .B(B), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_138 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_139 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_140 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_141 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  OAI22_X1 U1 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  XNOR2_X1 U3 ( .A(Ci), .B(n4), .ZN(S) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
endmodule


module FA_142 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  AOI22_X1 U5 ( .A1(n5), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_143 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  OAI22_X1 U1 ( .A1(n4), .A2(n7), .B1(n5), .B2(n6), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n8), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_144 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_145 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(B), .Z(n4) );
  XNOR2_X1 U4 ( .A(n5), .B(B), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_146 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U1 ( .A(B), .B(n7), .Z(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  OAI22_X1 U3 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
endmodule


module FA_147 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n6) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Co) );
  XNOR2_X1 U5 ( .A(B), .B(n6), .ZN(n5) );
endmodule


module FA_148 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_149 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  INV_X1 U2 ( .A(A), .ZN(n5) );
  XNOR2_X1 U4 ( .A(B), .B(n5), .ZN(n6) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_150 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  AOI22_X1 U5 ( .A1(n5), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_151 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n6), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(Ci), .B2(n6), .ZN(n7) );
endmodule


module FA_152 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  XOR2_X1 U1 ( .A(B), .B(n7), .Z(n4) );
  OAI22_X1 U2 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_153 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n7) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  CLKBUF_X1 U5 ( .A(n7), .Z(n6) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(n7), .B2(Ci), .ZN(n8) );
  INV_X1 U7 ( .A(n8), .ZN(Co) );
endmodule


module FA_154 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_155 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_156 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_157 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_158 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_159 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_160 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_5 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_160 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_159 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_158 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_157 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_156 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_155 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_154 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_153 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_152 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_151 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_150 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11]) );
  FA_149 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12]) );
  FA_148 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13]) );
  FA_147 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14]) );
  FA_146 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15]) );
  FA_145 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16]) );
  FA_144 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17]) );
  FA_143 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18]) );
  FA_142 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19]) );
  FA_141 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20]) );
  FA_140 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21]) );
  FA_139 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22]) );
  FA_138 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23]) );
  FA_137 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24]) );
  FA_136 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25]) );
  FA_135 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26]) );
  FA_134 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27]) );
  FA_133 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28]) );
  FA_132 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29]) );
  FA_131 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30]) );
  FA_130 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31]) );
  FA_129 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module FA_161 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n5) );
  CLKBUF_X1 U2 ( .A(n6), .Z(n4) );
  XNOR2_X1 U4 ( .A(n5), .B(B), .ZN(n6) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n7) );
endmodule


module FA_162 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(n6), .B(Ci), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n6) );
  CLKBUF_X1 U4 ( .A(B), .Z(n5) );
  AOI22_X1 U5 ( .A1(n5), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module FA_163 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_164 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_165 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_166 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_167 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  OAI22_X1 U1 ( .A1(n4), .A2(n7), .B1(n5), .B2(n6), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n8), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
  XNOR2_X1 U7 ( .A(n7), .B(B), .ZN(n8) );
endmodule


module FA_168 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_169 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_170 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_171 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(B), .B(n4), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_172 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_173 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_174 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n7) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n7), .ZN(n8) );
endmodule


module FA_175 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U1 ( .A(B), .B(n6), .Z(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  OAI22_X1 U3 ( .A1(n5), .A2(n6), .B1(n7), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(A), .ZN(n6) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
endmodule


module FA_176 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U1 ( .A(B), .B(n7), .Z(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  OAI22_X1 U3 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
endmodule


module FA_177 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n4), .B(B), .ZN(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_178 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n6), .Z(S) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(Co) );
  INV_X1 U4 ( .A(A), .ZN(n5) );
  XNOR2_X1 U5 ( .A(B), .B(n5), .ZN(n6) );
endmodule


module FA_179 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(Ci), .B(n4), .ZN(S) );
  OAI22_X1 U3 ( .A1(n5), .A2(n7), .B1(n6), .B2(n4), .ZN(Co) );
  INV_X1 U4 ( .A(B), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(A), .ZN(n7) );
endmodule


module FA_180 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n5), .A2(n4), .ZN(Co) );
  XNOR2_X1 U6 ( .A(n8), .B(B), .ZN(n7) );
endmodule


module FA_181 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U1 ( .A(A), .ZN(n8) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n4) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n7), .ZN(n5) );
  NAND2_X1 U5 ( .A1(n4), .A2(n5), .ZN(Co) );
  XNOR2_X1 U6 ( .A(B), .B(n8), .ZN(n7) );
endmodule


module FA_182 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  AOI22_X1 U1 ( .A1(n5), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n5) );
endmodule


module FA_183 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  AOI22_X1 U1 ( .A1(n5), .A2(A), .B1(Ci), .B2(n4), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(B), .Z(n5) );
endmodule


module FA_184 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  AOI21_X1 U1 ( .B1(n4), .B2(n5), .A(n7), .ZN(Co) );
  INV_X1 U2 ( .A(Ci), .ZN(n4) );
  INV_X1 U3 ( .A(n6), .ZN(n5) );
  NOR2_X1 U4 ( .A1(B), .A2(A), .ZN(n7) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(n8) );
  AND2_X1 U6 ( .A1(B), .A2(A), .ZN(n6) );
  XNOR2_X1 U7 ( .A(Ci), .B(n8), .ZN(S) );
endmodule


module FA_185 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9, n10, n11;

  OR2_X1 U1 ( .A1(B), .A2(n7), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n5), .B(Ci), .ZN(S) );
  AND2_X1 U3 ( .A1(n4), .A2(n9), .ZN(n5) );
  CLKBUF_X1 U4 ( .A(B), .Z(n6) );
  OR2_X1 U5 ( .A1(B), .A2(n7), .ZN(n8) );
  NAND2_X1 U6 ( .A1(B), .A2(n7), .ZN(n9) );
  NAND2_X1 U7 ( .A1(n8), .A2(n9), .ZN(n10) );
  INV_X1 U8 ( .A(A), .ZN(n7) );
  AOI22_X1 U9 ( .A1(n6), .A2(A), .B1(Ci), .B2(n10), .ZN(n11) );
  INV_X1 U10 ( .A(n11), .ZN(Co) );
endmodule


module FA_186 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, net38765, n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(net38765), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  AOI22_X1 U1 ( .A1(n5), .A2(A), .B1(n4), .B2(Ci), .ZN(n2) );
  CLKBUF_X1 U2 ( .A(n4), .Z(net38765) );
  CLKBUF_X1 U5 ( .A(B), .Z(n5) );
  INV_X1 U6 ( .A(n2), .ZN(Co) );
endmodule


module FA_187 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net38640, n4, n6, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(net38640), .Z(S) );
  NAND2_X1 U1 ( .A1(n4), .A2(n8), .ZN(Co) );
  OR2_X1 U2 ( .A1(n7), .A2(n6), .ZN(n4) );
  NAND2_X1 U4 ( .A1(B), .A2(A), .ZN(n8) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(n7) );
  INV_X1 U6 ( .A(n9), .ZN(net38640) );
  INV_X1 U7 ( .A(Ci), .ZN(n6) );
  CLKBUF_X1 U8 ( .A(n7), .Z(n9) );
endmodule


module FA_188 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_189 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_190 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_191 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_192 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT32_6 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;

  wire   [31:1] CTMP;

  FA_192 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_191 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_190 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_189 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_188 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_187 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_186 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_185 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_184 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_183 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_182 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11]) );
  FA_181 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12]) );
  FA_180 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13]) );
  FA_179 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14]) );
  FA_178 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15]) );
  FA_177 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16]) );
  FA_176 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17]) );
  FA_175 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18]) );
  FA_174 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19]) );
  FA_173 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20]) );
  FA_172 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21]) );
  FA_171 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22]) );
  FA_170 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23]) );
  FA_169 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24]) );
  FA_168 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25]) );
  FA_167 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26]) );
  FA_166 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27]) );
  FA_165 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28]) );
  FA_164 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29]) );
  FA_163 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30]) );
  FA_162 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31]) );
  FA_161 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(Co) );
endmodule


module BOOTHMUL ( A, B, P );
  input [15:0] A;
  input [15:0] B;
  output [31:0] P;
  wire   \selVector[7][2] , \selVector[7][1] , \selVector[7][0] ,
         \selVector[6][2] , \selVector[6][1] , \selVector[6][0] ,
         \selVector[5][2] , \selVector[5][1] , \selVector[5][0] ,
         \selVector[4][2] , \selVector[4][1] , \selVector[4][0] ,
         \selVector[3][2] , \selVector[3][1] , \selVector[3][0] ,
         \selVector[2][2] , \selVector[2][1] , \selVector[2][0] ,
         \selVector[1][2] , \selVector[1][1] , \selVector[1][0] ,
         \selVector[0][2] , \selVector[0][1] , \selVector[0][0] ,
         \muxOutVector[7][31] , \muxOutVector[7][30] , \muxOutVector[7][29] ,
         \muxOutVector[7][28] , \muxOutVector[7][27] , \muxOutVector[7][26] ,
         \muxOutVector[7][25] , \muxOutVector[7][24] , \muxOutVector[7][23] ,
         \muxOutVector[7][22] , \muxOutVector[7][21] , \muxOutVector[7][20] ,
         \muxOutVector[7][19] , \muxOutVector[7][18] , \muxOutVector[7][17] ,
         \muxOutVector[7][16] , \muxOutVector[7][15] , \muxOutVector[7][14] ,
         \muxOutVector[7][13] , \muxOutVector[7][12] , \muxOutVector[7][11] ,
         \muxOutVector[7][10] , \muxOutVector[7][9] , \muxOutVector[7][8] ,
         \muxOutVector[7][7] , \muxOutVector[7][6] , \muxOutVector[7][5] ,
         \muxOutVector[7][4] , \muxOutVector[7][3] , \muxOutVector[7][2] ,
         \muxOutVector[7][1] , \muxOutVector[7][0] , \muxOutVector[6][31] ,
         \muxOutVector[6][30] , \muxOutVector[6][29] , \muxOutVector[6][28] ,
         \muxOutVector[6][27] , \muxOutVector[6][26] , \muxOutVector[6][25] ,
         \muxOutVector[6][24] , \muxOutVector[6][23] , \muxOutVector[6][22] ,
         \muxOutVector[6][21] , \muxOutVector[6][20] , \muxOutVector[6][19] ,
         \muxOutVector[6][18] , \muxOutVector[6][17] , \muxOutVector[6][16] ,
         \muxOutVector[6][15] , \muxOutVector[6][14] , \muxOutVector[6][13] ,
         \muxOutVector[6][12] , \muxOutVector[6][11] , \muxOutVector[6][10] ,
         \muxOutVector[6][9] , \muxOutVector[6][8] , \muxOutVector[6][7] ,
         \muxOutVector[6][6] , \muxOutVector[6][5] , \muxOutVector[6][4] ,
         \muxOutVector[6][3] , \muxOutVector[6][2] , \muxOutVector[6][1] ,
         \muxOutVector[6][0] , \muxOutVector[5][31] , \muxOutVector[5][30] ,
         \muxOutVector[5][29] , \muxOutVector[5][28] , \muxOutVector[5][27] ,
         \muxOutVector[5][26] , \muxOutVector[5][25] , \muxOutVector[5][24] ,
         \muxOutVector[5][23] , \muxOutVector[5][22] , \muxOutVector[5][21] ,
         \muxOutVector[5][20] , \muxOutVector[5][19] , \muxOutVector[5][18] ,
         \muxOutVector[5][17] , \muxOutVector[5][16] , \muxOutVector[5][15] ,
         \muxOutVector[5][14] , \muxOutVector[5][13] , \muxOutVector[5][12] ,
         \muxOutVector[5][11] , \muxOutVector[5][10] , \muxOutVector[5][9] ,
         \muxOutVector[5][8] , \muxOutVector[5][7] , \muxOutVector[5][6] ,
         \muxOutVector[5][5] , \muxOutVector[5][4] , \muxOutVector[5][3] ,
         \muxOutVector[5][2] , \muxOutVector[5][1] , \muxOutVector[5][0] ,
         \muxOutVector[4][31] , \muxOutVector[4][30] , \muxOutVector[4][29] ,
         \muxOutVector[4][28] , \muxOutVector[4][27] , \muxOutVector[4][26] ,
         \muxOutVector[4][25] , \muxOutVector[4][24] , \muxOutVector[4][23] ,
         \muxOutVector[4][22] , \muxOutVector[4][21] , \muxOutVector[4][20] ,
         \muxOutVector[4][19] , \muxOutVector[4][18] , \muxOutVector[4][17] ,
         \muxOutVector[4][16] , \muxOutVector[4][15] , \muxOutVector[4][14] ,
         \muxOutVector[4][13] , \muxOutVector[4][12] , \muxOutVector[4][11] ,
         \muxOutVector[4][10] , \muxOutVector[4][9] , \muxOutVector[4][8] ,
         \muxOutVector[4][7] , \muxOutVector[4][6] , \muxOutVector[4][5] ,
         \muxOutVector[4][4] , \muxOutVector[4][3] , \muxOutVector[4][2] ,
         \muxOutVector[4][1] , \muxOutVector[4][0] , \muxOutVector[3][31] ,
         \muxOutVector[3][30] , \muxOutVector[3][29] , \muxOutVector[3][28] ,
         \muxOutVector[3][27] , \muxOutVector[3][26] , \muxOutVector[3][25] ,
         \muxOutVector[3][24] , \muxOutVector[3][23] , \muxOutVector[3][22] ,
         \muxOutVector[3][21] , \muxOutVector[3][20] , \muxOutVector[3][19] ,
         \muxOutVector[3][18] , \muxOutVector[3][17] , \muxOutVector[3][16] ,
         \muxOutVector[3][15] , \muxOutVector[3][14] , \muxOutVector[3][13] ,
         \muxOutVector[3][12] , \muxOutVector[3][11] , \muxOutVector[3][10] ,
         \muxOutVector[3][9] , \muxOutVector[3][8] , \muxOutVector[3][7] ,
         \muxOutVector[3][6] , \muxOutVector[3][5] , \muxOutVector[3][4] ,
         \muxOutVector[3][3] , \muxOutVector[3][2] , \muxOutVector[3][1] ,
         \muxOutVector[3][0] , \muxOutVector[2][31] , \muxOutVector[2][30] ,
         \muxOutVector[2][29] , \muxOutVector[2][28] , \muxOutVector[2][27] ,
         \muxOutVector[2][26] , \muxOutVector[2][25] , \muxOutVector[2][24] ,
         \muxOutVector[2][23] , \muxOutVector[2][22] , \muxOutVector[2][21] ,
         \muxOutVector[2][20] , \muxOutVector[2][19] , \muxOutVector[2][18] ,
         \muxOutVector[2][17] , \muxOutVector[2][16] , \muxOutVector[2][15] ,
         \muxOutVector[2][14] , \muxOutVector[2][13] , \muxOutVector[2][12] ,
         \muxOutVector[2][11] , \muxOutVector[2][10] , \muxOutVector[2][9] ,
         \muxOutVector[2][8] , \muxOutVector[2][7] , \muxOutVector[2][6] ,
         \muxOutVector[2][5] , \muxOutVector[2][4] , \muxOutVector[2][3] ,
         \muxOutVector[2][2] , \muxOutVector[2][1] , \muxOutVector[2][0] ,
         \muxOutVector[1][31] , \muxOutVector[1][30] , \muxOutVector[1][29] ,
         \muxOutVector[1][28] , \muxOutVector[1][27] , \muxOutVector[1][26] ,
         \muxOutVector[1][25] , \muxOutVector[1][24] , \muxOutVector[1][23] ,
         \muxOutVector[1][22] , \muxOutVector[1][21] , \muxOutVector[1][20] ,
         \muxOutVector[1][19] , \muxOutVector[1][18] , \muxOutVector[1][17] ,
         \muxOutVector[1][16] , \muxOutVector[1][15] , \muxOutVector[1][14] ,
         \muxOutVector[1][13] , \muxOutVector[1][12] , \muxOutVector[1][11] ,
         \muxOutVector[1][10] , \muxOutVector[1][9] , \muxOutVector[1][8] ,
         \muxOutVector[1][7] , \muxOutVector[1][6] , \muxOutVector[1][5] ,
         \muxOutVector[1][4] , \muxOutVector[1][3] , \muxOutVector[1][2] ,
         \muxOutVector[1][1] , \muxOutVector[1][0] , \muxOutVector[0][31] ,
         \muxOutVector[0][30] , \muxOutVector[0][29] , \muxOutVector[0][28] ,
         \muxOutVector[0][27] , \muxOutVector[0][26] , \muxOutVector[0][25] ,
         \muxOutVector[0][24] , \muxOutVector[0][23] , \muxOutVector[0][22] ,
         \muxOutVector[0][21] , \muxOutVector[0][20] , \muxOutVector[0][19] ,
         \muxOutVector[0][18] , \muxOutVector[0][17] , \muxOutVector[0][16] ,
         \muxOutVector[0][15] , \muxOutVector[0][14] , \muxOutVector[0][13] ,
         \muxOutVector[0][12] , \muxOutVector[0][11] , \muxOutVector[0][10] ,
         \muxOutVector[0][9] , \muxOutVector[0][8] , \muxOutVector[0][7] ,
         \muxOutVector[0][6] , \muxOutVector[0][5] , \muxOutVector[0][4] ,
         \muxOutVector[0][3] , \muxOutVector[0][2] , \muxOutVector[0][1] ,
         \muxOutVector[0][0] , \sumVector[6][31] , \sumVector[6][30] ,
         \sumVector[6][29] , \sumVector[6][28] , \sumVector[6][27] ,
         \sumVector[6][26] , \sumVector[6][25] , \sumVector[6][24] ,
         \sumVector[6][23] , \sumVector[6][22] , \sumVector[6][21] ,
         \sumVector[6][20] , \sumVector[6][19] , \sumVector[6][18] ,
         \sumVector[6][17] , \sumVector[6][16] , \sumVector[6][15] ,
         \sumVector[6][14] , \sumVector[6][13] , \sumVector[6][12] ,
         \sumVector[6][11] , \sumVector[6][10] , \sumVector[6][9] ,
         \sumVector[6][8] , \sumVector[6][7] , \sumVector[6][6] ,
         \sumVector[6][5] , \sumVector[6][4] , \sumVector[6][3] ,
         \sumVector[6][2] , \sumVector[6][1] , \sumVector[6][0] ,
         \sumVector[5][31] , \sumVector[5][30] , \sumVector[5][29] ,
         \sumVector[5][28] , \sumVector[5][27] , \sumVector[5][26] ,
         \sumVector[5][25] , \sumVector[5][24] , \sumVector[5][23] ,
         \sumVector[5][22] , \sumVector[5][21] , \sumVector[5][20] ,
         \sumVector[5][19] , \sumVector[5][18] , \sumVector[5][17] ,
         \sumVector[5][16] , \sumVector[5][15] , \sumVector[5][14] ,
         \sumVector[5][13] , \sumVector[5][12] , \sumVector[5][11] ,
         \sumVector[5][10] , \sumVector[5][9] , \sumVector[5][8] ,
         \sumVector[5][7] , \sumVector[5][6] , \sumVector[5][5] ,
         \sumVector[5][4] , \sumVector[5][3] , \sumVector[5][2] ,
         \sumVector[5][1] , \sumVector[5][0] , \sumVector[4][31] ,
         \sumVector[4][30] , \sumVector[4][29] , \sumVector[4][28] ,
         \sumVector[4][27] , \sumVector[4][26] , \sumVector[4][25] ,
         \sumVector[4][24] , \sumVector[4][23] , \sumVector[4][22] ,
         \sumVector[4][21] , \sumVector[4][20] , \sumVector[4][19] ,
         \sumVector[4][18] , \sumVector[4][17] , \sumVector[4][16] ,
         \sumVector[4][15] , \sumVector[4][14] , \sumVector[4][13] ,
         \sumVector[4][12] , \sumVector[4][11] , \sumVector[4][10] ,
         \sumVector[4][9] , \sumVector[4][8] , \sumVector[4][7] ,
         \sumVector[4][6] , \sumVector[4][5] , \sumVector[4][4] ,
         \sumVector[4][3] , \sumVector[4][2] , \sumVector[4][1] ,
         \sumVector[4][0] , \sumVector[3][31] , \sumVector[3][30] ,
         \sumVector[3][29] , \sumVector[3][28] , \sumVector[3][27] ,
         \sumVector[3][26] , \sumVector[3][25] , \sumVector[3][24] ,
         \sumVector[3][23] , \sumVector[3][22] , \sumVector[3][21] ,
         \sumVector[3][20] , \sumVector[3][19] , \sumVector[3][18] ,
         \sumVector[3][17] , \sumVector[3][16] , \sumVector[3][15] ,
         \sumVector[3][14] , \sumVector[3][13] , \sumVector[3][12] ,
         \sumVector[3][11] , \sumVector[3][10] , \sumVector[3][9] ,
         \sumVector[3][8] , \sumVector[3][7] , \sumVector[3][6] ,
         \sumVector[3][5] , \sumVector[3][4] , \sumVector[3][3] ,
         \sumVector[3][2] , \sumVector[3][1] , \sumVector[3][0] ,
         \sumVector[2][31] , \sumVector[2][30] , \sumVector[2][29] ,
         \sumVector[2][28] , \sumVector[2][27] , \sumVector[2][26] ,
         \sumVector[2][25] , \sumVector[2][24] , \sumVector[2][23] ,
         \sumVector[2][22] , \sumVector[2][21] , \sumVector[2][20] ,
         \sumVector[2][19] , \sumVector[2][18] , \sumVector[2][17] ,
         \sumVector[2][16] , \sumVector[2][15] , \sumVector[2][14] ,
         \sumVector[2][13] , \sumVector[2][12] , \sumVector[2][11] ,
         \sumVector[2][10] , \sumVector[2][9] , \sumVector[2][8] ,
         \sumVector[2][7] , \sumVector[2][6] , \sumVector[2][5] ,
         \sumVector[2][4] , \sumVector[2][3] , \sumVector[2][2] ,
         \sumVector[2][1] , \sumVector[2][0] , \sumVector[1][31] ,
         \sumVector[1][30] , \sumVector[1][29] , \sumVector[1][28] ,
         \sumVector[1][27] , \sumVector[1][26] , \sumVector[1][25] ,
         \sumVector[1][24] , \sumVector[1][23] , \sumVector[1][22] ,
         \sumVector[1][21] , \sumVector[1][20] , \sumVector[1][19] ,
         \sumVector[1][18] , \sumVector[1][17] , \sumVector[1][16] ,
         \sumVector[1][15] , \sumVector[1][14] , \sumVector[1][13] ,
         \sumVector[1][12] , \sumVector[1][11] , \sumVector[1][10] ,
         \sumVector[1][9] , \sumVector[1][8] , \sumVector[1][7] ,
         \sumVector[1][6] , \sumVector[1][5] , \sumVector[1][4] ,
         \sumVector[1][3] , \sumVector[1][2] , \sumVector[1][1] ,
         \sumVector[1][0] , \r113/DIFF[1] , \r113/DIFF[2] , \r113/DIFF[3] ,
         \r113/DIFF[4] , \r113/DIFF[5] , \r113/DIFF[6] , \r113/DIFF[7] ,
         \r113/DIFF[8] , \r113/DIFF[9] , \r113/DIFF[10] , \r113/DIFF[11] ,
         \r113/DIFF[12] , \r113/DIFF[13] , \r113/DIFF[14] , \r113/DIFF[15] ,
         n68, n70, n71, n72, n73, n74, n76, n77, n78, n79, n80, n81, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145;

  BE_BLOCK_0 eb_0 ( .b({B[1:0], 1'b0}), .sel({\selVector[0][2] , 
        \selVector[0][1] , \selVector[0][0] }) );
  MUX_5TO1_NBIT32_0 mux_0 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n134, n137, n137, n136, n137, n136, n137, n136, n136, 
        n135, n136, n137, n136, n135, n135, n135, n135, A[14:2], n98, n129}), 
        .A2({n124, n111, n114, n123, n118, n121, n118, n124, n113, n111, n119, 
        n124, n116, n115, n126, n112, \r113/DIFF[15] , \r113/DIFF[14] , 
        \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , 
        \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , \r113/DIFF[6] , 
        \r113/DIFF[5] , \r113/DIFF[4] , \r113/DIFF[3] , \r113/DIFF[2] , 
        \r113/DIFF[1] , n128}), .A3({n138, n138, n139, n137, n139, n137, n138, 
        n137, n138, n137, n138, n138, n138, n138, n138, n138, A[14:1], n128, 
        1'b0}), .A4({n127, n110, n122, n117, n111, n117, n119, n125, n127, 
        n123, n68, n110, n127, n121, n68, \r113/DIFF[15] , \r113/DIFF[14] , 
        \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , 
        \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , \r113/DIFF[6] , 
        \r113/DIFF[5] , \r113/DIFF[4] , \r113/DIFF[3] , \r113/DIFF[2] , 
        \r113/DIFF[1] , n128, 1'b0}), .sel({\selVector[0][2] , 
        \selVector[0][1] , \selVector[0][0] }), .O({\muxOutVector[0][31] , 
        \muxOutVector[0][30] , \muxOutVector[0][29] , \muxOutVector[0][28] , 
        \muxOutVector[0][27] , \muxOutVector[0][26] , \muxOutVector[0][25] , 
        \muxOutVector[0][24] , \muxOutVector[0][23] , \muxOutVector[0][22] , 
        \muxOutVector[0][21] , \muxOutVector[0][20] , \muxOutVector[0][19] , 
        \muxOutVector[0][18] , \muxOutVector[0][17] , \muxOutVector[0][16] , 
        \muxOutVector[0][15] , \muxOutVector[0][14] , \muxOutVector[0][13] , 
        \muxOutVector[0][12] , \muxOutVector[0][11] , \muxOutVector[0][10] , 
        \muxOutVector[0][9] , \muxOutVector[0][8] , \muxOutVector[0][7] , 
        \muxOutVector[0][6] , \muxOutVector[0][5] , \muxOutVector[0][4] , 
        \muxOutVector[0][3] , \muxOutVector[0][2] , \muxOutVector[0][1] , 
        \muxOutVector[0][0] }) );
  BE_BLOCK_7 eb_1 ( .b(B[3:1]), .sel({\selVector[1][2] , \selVector[1][1] , 
        \selVector[1][0] }) );
  RCA_NBIT32_0 sum_1 ( .A({\muxOutVector[0][31] , \muxOutVector[0][30] , 
        \muxOutVector[0][29] , \muxOutVector[0][28] , \muxOutVector[0][27] , 
        \muxOutVector[0][26] , \muxOutVector[0][25] , \muxOutVector[0][24] , 
        \muxOutVector[0][23] , \muxOutVector[0][22] , \muxOutVector[0][21] , 
        \muxOutVector[0][20] , \muxOutVector[0][19] , \muxOutVector[0][18] , 
        \muxOutVector[0][17] , \muxOutVector[0][16] , \muxOutVector[0][15] , 
        \muxOutVector[0][14] , \muxOutVector[0][13] , \muxOutVector[0][12] , 
        \muxOutVector[0][11] , \muxOutVector[0][10] , \muxOutVector[0][9] , 
        \muxOutVector[0][8] , \muxOutVector[0][7] , \muxOutVector[0][6] , 
        \muxOutVector[0][5] , \muxOutVector[0][4] , \muxOutVector[0][3] , 
        \muxOutVector[0][2] , \muxOutVector[0][1] , \muxOutVector[0][0] }), 
        .B({\muxOutVector[1][31] , \muxOutVector[1][30] , 
        \muxOutVector[1][29] , \muxOutVector[1][28] , \muxOutVector[1][27] , 
        \muxOutVector[1][26] , \muxOutVector[1][25] , \muxOutVector[1][24] , 
        \muxOutVector[1][23] , \muxOutVector[1][22] , \muxOutVector[1][21] , 
        \muxOutVector[1][20] , \muxOutVector[1][19] , \muxOutVector[1][18] , 
        \muxOutVector[1][17] , \muxOutVector[1][16] , \muxOutVector[1][15] , 
        \muxOutVector[1][14] , \muxOutVector[1][13] , \muxOutVector[1][12] , 
        \muxOutVector[1][11] , \muxOutVector[1][10] , \muxOutVector[1][9] , 
        \muxOutVector[1][8] , \muxOutVector[1][7] , \muxOutVector[1][6] , 
        \muxOutVector[1][5] , \muxOutVector[1][4] , \muxOutVector[1][3] , 
        \muxOutVector[1][2] , \muxOutVector[1][1] , \muxOutVector[1][0] }), 
        .Ci(1'b0), .S({\sumVector[1][31] , \sumVector[1][30] , 
        \sumVector[1][29] , \sumVector[1][28] , \sumVector[1][27] , 
        \sumVector[1][26] , \sumVector[1][25] , \sumVector[1][24] , 
        \sumVector[1][23] , \sumVector[1][22] , \sumVector[1][21] , 
        \sumVector[1][20] , \sumVector[1][19] , \sumVector[1][18] , 
        \sumVector[1][17] , \sumVector[1][16] , \sumVector[1][15] , 
        \sumVector[1][14] , \sumVector[1][13] , \sumVector[1][12] , 
        \sumVector[1][11] , \sumVector[1][10] , \sumVector[1][9] , 
        \sumVector[1][8] , \sumVector[1][7] , \sumVector[1][6] , 
        \sumVector[1][5] , \sumVector[1][4] , \sumVector[1][3] , 
        \sumVector[1][2] , \sumVector[1][1] , \sumVector[1][0] }) );
  MUX_5TO1_NBIT32_7 mux_1 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n135, n135, n136, n135, n136, n135, n136, n135, n135, 
        n136, n137, n136, n137, n136, n137, A[14:1], n104, 1'b0, 1'b0}), .A2({
        n122, n126, n68, n116, n125, n118, n113, n110, n117, n124, n122, n126, 
        n118, n114, \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , 
        \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , 
        \r113/DIFF[8] , \r113/DIFF[7] , \r113/DIFF[6] , \r113/DIFF[5] , 
        \r113/DIFF[4] , \r113/DIFF[3] , n105, \r113/DIFF[1] , n93, 1'b0, 1'b0}), .A3({n140, n140, n140, n140, n136, n139, n136, n139, n136, n136, n139, n136, 
        n139, n139, A[14:1], n130, 1'b0, 1'b0, 1'b0}), .A4({n125, n110, n109, 
        n120, n109, n120, n112, n109, n120, n113, n123, n125, n120, 
        \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , 
        \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , 
        \r113/DIFF[7] , n92, \r113/DIFF[5] , \r113/DIFF[4] , \r113/DIFF[3] , 
        n105, \r113/DIFF[1] , n94, 1'b0, 1'b0, 1'b0}), .sel({\selVector[1][2] , 
        \selVector[1][1] , \selVector[1][0] }), .O({\muxOutVector[1][31] , 
        \muxOutVector[1][30] , \muxOutVector[1][29] , \muxOutVector[1][28] , 
        \muxOutVector[1][27] , \muxOutVector[1][26] , \muxOutVector[1][25] , 
        \muxOutVector[1][24] , \muxOutVector[1][23] , \muxOutVector[1][22] , 
        \muxOutVector[1][21] , \muxOutVector[1][20] , \muxOutVector[1][19] , 
        \muxOutVector[1][18] , \muxOutVector[1][17] , \muxOutVector[1][16] , 
        \muxOutVector[1][15] , \muxOutVector[1][14] , \muxOutVector[1][13] , 
        \muxOutVector[1][12] , \muxOutVector[1][11] , \muxOutVector[1][10] , 
        \muxOutVector[1][9] , \muxOutVector[1][8] , \muxOutVector[1][7] , 
        \muxOutVector[1][6] , \muxOutVector[1][5] , \muxOutVector[1][4] , 
        \muxOutVector[1][3] , \muxOutVector[1][2] , \muxOutVector[1][1] , 
        \muxOutVector[1][0] }) );
  BE_BLOCK_6 eb_2 ( .b(B[5:3]), .sel({\selVector[2][2] , \selVector[2][1] , 
        \selVector[2][0] }) );
  RCA_NBIT32_6 sum_2 ( .A({\muxOutVector[2][31] , \muxOutVector[2][30] , 
        \muxOutVector[2][29] , \muxOutVector[2][28] , \muxOutVector[2][27] , 
        \muxOutVector[2][26] , \muxOutVector[2][25] , \muxOutVector[2][24] , 
        \muxOutVector[2][23] , \muxOutVector[2][22] , \muxOutVector[2][21] , 
        \muxOutVector[2][20] , \muxOutVector[2][19] , \muxOutVector[2][18] , 
        \muxOutVector[2][17] , \muxOutVector[2][16] , \muxOutVector[2][15] , 
        \muxOutVector[2][14] , \muxOutVector[2][13] , \muxOutVector[2][12] , 
        \muxOutVector[2][11] , \muxOutVector[2][10] , \muxOutVector[2][9] , 
        \muxOutVector[2][8] , \muxOutVector[2][7] , \muxOutVector[2][6] , 
        \muxOutVector[2][5] , \muxOutVector[2][4] , \muxOutVector[2][3] , 
        \muxOutVector[2][2] , \muxOutVector[2][1] , \muxOutVector[2][0] }), 
        .B({\sumVector[1][31] , \sumVector[1][30] , \sumVector[1][29] , 
        \sumVector[1][28] , \sumVector[1][27] , \sumVector[1][26] , 
        \sumVector[1][25] , \sumVector[1][24] , \sumVector[1][23] , 
        \sumVector[1][22] , \sumVector[1][21] , \sumVector[1][20] , 
        \sumVector[1][19] , \sumVector[1][18] , \sumVector[1][17] , 
        \sumVector[1][16] , \sumVector[1][15] , \sumVector[1][14] , 
        \sumVector[1][13] , \sumVector[1][12] , \sumVector[1][11] , 
        \sumVector[1][10] , \sumVector[1][9] , \sumVector[1][8] , 
        \sumVector[1][7] , \sumVector[1][6] , \sumVector[1][5] , 
        \sumVector[1][4] , \sumVector[1][3] , \sumVector[1][2] , 
        \sumVector[1][1] , \sumVector[1][0] }), .Ci(1'b0), .S({
        \sumVector[2][31] , \sumVector[2][30] , \sumVector[2][29] , 
        \sumVector[2][28] , \sumVector[2][27] , \sumVector[2][26] , 
        \sumVector[2][25] , \sumVector[2][24] , \sumVector[2][23] , 
        \sumVector[2][22] , \sumVector[2][21] , \sumVector[2][20] , 
        \sumVector[2][19] , \sumVector[2][18] , \sumVector[2][17] , 
        \sumVector[2][16] , \sumVector[2][15] , \sumVector[2][14] , 
        \sumVector[2][13] , \sumVector[2][12] , \sumVector[2][11] , 
        \sumVector[2][10] , \sumVector[2][9] , \sumVector[2][8] , 
        \sumVector[2][7] , \sumVector[2][6] , \sumVector[2][5] , 
        \sumVector[2][4] , \sumVector[2][3] , \sumVector[2][2] , 
        \sumVector[2][1] , \sumVector[2][0] }) );
  MUX_5TO1_NBIT32_6 mux_2 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n133, n134, n134, n134, n134, n134, n134, n134, n134, 
        n134, n134, n134, n135, A[14:1], n129, 1'b0, 1'b0, 1'b0, 1'b0}), .A2({
        n122, n117, n126, n126, n120, n122, n121, n111, n119, n115, n127, n109, 
        \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , 
        \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , 
        \r113/DIFF[7] , n92, \r113/DIFF[5] , n95, \r113/DIFF[3] , n105, 
        \r113/DIFF[1] , n129, 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n136, n133, n133, 
        n139, n140, n140, n140, n140, n140, n140, n140, n140, A[14:1], n128, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A4({n117, n113, n119, n121, n115, 
        n111, n68, n116, n117, n111, n116, \r113/DIFF[15] , \r113/DIFF[14] , 
        \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , 
        \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , n92, n96, n95, n107, 
        n105, \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \selVector[2][2] , \selVector[2][1] , \selVector[2][0] }), .O({
        \muxOutVector[2][31] , \muxOutVector[2][30] , \muxOutVector[2][29] , 
        \muxOutVector[2][28] , \muxOutVector[2][27] , \muxOutVector[2][26] , 
        \muxOutVector[2][25] , \muxOutVector[2][24] , \muxOutVector[2][23] , 
        \muxOutVector[2][22] , \muxOutVector[2][21] , \muxOutVector[2][20] , 
        \muxOutVector[2][19] , \muxOutVector[2][18] , \muxOutVector[2][17] , 
        \muxOutVector[2][16] , \muxOutVector[2][15] , \muxOutVector[2][14] , 
        \muxOutVector[2][13] , \muxOutVector[2][12] , \muxOutVector[2][11] , 
        \muxOutVector[2][10] , \muxOutVector[2][9] , \muxOutVector[2][8] , 
        \muxOutVector[2][7] , \muxOutVector[2][6] , \muxOutVector[2][5] , 
        \muxOutVector[2][4] , \muxOutVector[2][3] , \muxOutVector[2][2] , 
        \muxOutVector[2][1] , \muxOutVector[2][0] }) );
  BE_BLOCK_5 eb_3 ( .b(B[7:5]), .sel({\selVector[3][2] , \selVector[3][1] , 
        \selVector[3][0] }) );
  RCA_NBIT32_5 sum_3 ( .A({\muxOutVector[3][31] , \muxOutVector[3][30] , 
        \muxOutVector[3][29] , \muxOutVector[3][28] , \muxOutVector[3][27] , 
        \muxOutVector[3][26] , \muxOutVector[3][25] , \muxOutVector[3][24] , 
        \muxOutVector[3][23] , \muxOutVector[3][22] , \muxOutVector[3][21] , 
        \muxOutVector[3][20] , \muxOutVector[3][19] , \muxOutVector[3][18] , 
        \muxOutVector[3][17] , \muxOutVector[3][16] , \muxOutVector[3][15] , 
        \muxOutVector[3][14] , \muxOutVector[3][13] , \muxOutVector[3][12] , 
        \muxOutVector[3][11] , \muxOutVector[3][10] , \muxOutVector[3][9] , 
        \muxOutVector[3][8] , \muxOutVector[3][7] , \muxOutVector[3][6] , 
        \muxOutVector[3][5] , \muxOutVector[3][4] , \muxOutVector[3][3] , 
        \muxOutVector[3][2] , \muxOutVector[3][1] , \muxOutVector[3][0] }), 
        .B({\sumVector[2][31] , \sumVector[2][30] , \sumVector[2][29] , 
        \sumVector[2][28] , \sumVector[2][27] , \sumVector[2][26] , 
        \sumVector[2][25] , \sumVector[2][24] , \sumVector[2][23] , 
        \sumVector[2][22] , \sumVector[2][21] , \sumVector[2][20] , 
        \sumVector[2][19] , \sumVector[2][18] , \sumVector[2][17] , 
        \sumVector[2][16] , \sumVector[2][15] , \sumVector[2][14] , 
        \sumVector[2][13] , \sumVector[2][12] , \sumVector[2][11] , 
        \sumVector[2][10] , \sumVector[2][9] , \sumVector[2][8] , 
        \sumVector[2][7] , \sumVector[2][6] , \sumVector[2][5] , 
        \sumVector[2][4] , \sumVector[2][3] , \sumVector[2][2] , 
        \sumVector[2][1] , \sumVector[2][0] }), .Ci(1'b0), .S({
        \sumVector[3][31] , \sumVector[3][30] , \sumVector[3][29] , 
        \sumVector[3][28] , \sumVector[3][27] , \sumVector[3][26] , 
        \sumVector[3][25] , \sumVector[3][24] , \sumVector[3][23] , 
        \sumVector[3][22] , \sumVector[3][21] , \sumVector[3][20] , 
        \sumVector[3][19] , \sumVector[3][18] , \sumVector[3][17] , 
        \sumVector[3][16] , \sumVector[3][15] , \sumVector[3][14] , 
        \sumVector[3][13] , \sumVector[3][12] , \sumVector[3][11] , 
        \sumVector[3][10] , \sumVector[3][9] , \sumVector[3][8] , 
        \sumVector[3][7] , \sumVector[3][6] , \sumVector[3][5] , 
        \sumVector[3][4] , \sumVector[3][3] , \sumVector[3][2] , 
        \sumVector[3][1] , \sumVector[3][0] }) );
  MUX_5TO1_NBIT32_5 mux_3 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n133, n136, n133, n133, n133, n133, n133, n133, n133, 
        n133, n133, A[14:1], n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A2({
        n125, n125, n112, n112, n110, n125, n109, n119, n122, n118, 
        \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , 
        \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , 
        \r113/DIFF[7] , n92, n96, n95, n107, n105, \r113/DIFF[1] , n128, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n133, n136, n133, n139, n133, 
        n139, n133, n139, n133, n133, A[14:1], n128, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .A4({n127, n126, n115, n114, n127, n124, n123, 
        n121, n114, \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , 
        \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , 
        \r113/DIFF[8] , \r113/DIFF[7] , n92, n96, n102, n107, n105, 
        \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .sel({\selVector[3][2] , \selVector[3][1] , \selVector[3][0] }), .O({
        \muxOutVector[3][31] , \muxOutVector[3][30] , \muxOutVector[3][29] , 
        \muxOutVector[3][28] , \muxOutVector[3][27] , \muxOutVector[3][26] , 
        \muxOutVector[3][25] , \muxOutVector[3][24] , \muxOutVector[3][23] , 
        \muxOutVector[3][22] , \muxOutVector[3][21] , \muxOutVector[3][20] , 
        \muxOutVector[3][19] , \muxOutVector[3][18] , \muxOutVector[3][17] , 
        \muxOutVector[3][16] , \muxOutVector[3][15] , \muxOutVector[3][14] , 
        \muxOutVector[3][13] , \muxOutVector[3][12] , \muxOutVector[3][11] , 
        \muxOutVector[3][10] , \muxOutVector[3][9] , \muxOutVector[3][8] , 
        \muxOutVector[3][7] , \muxOutVector[3][6] , \muxOutVector[3][5] , 
        \muxOutVector[3][4] , \muxOutVector[3][3] , \muxOutVector[3][2] , 
        \muxOutVector[3][1] , \muxOutVector[3][0] }) );
  BE_BLOCK_4 eb_4 ( .b(B[9:7]), .sel({\selVector[4][2] , \selVector[4][1] , 
        \selVector[4][0] }) );
  RCA_NBIT32_4 sum_4 ( .A({\muxOutVector[4][31] , \muxOutVector[4][30] , 
        \muxOutVector[4][29] , \muxOutVector[4][28] , \muxOutVector[4][27] , 
        \muxOutVector[4][26] , \muxOutVector[4][25] , \muxOutVector[4][24] , 
        \muxOutVector[4][23] , \muxOutVector[4][22] , \muxOutVector[4][21] , 
        \muxOutVector[4][20] , \muxOutVector[4][19] , \muxOutVector[4][18] , 
        \muxOutVector[4][17] , \muxOutVector[4][16] , \muxOutVector[4][15] , 
        \muxOutVector[4][14] , \muxOutVector[4][13] , \muxOutVector[4][12] , 
        \muxOutVector[4][11] , \muxOutVector[4][10] , \muxOutVector[4][9] , 
        \muxOutVector[4][8] , \muxOutVector[4][7] , \muxOutVector[4][6] , 
        \muxOutVector[4][5] , \muxOutVector[4][4] , \muxOutVector[4][3] , 
        \muxOutVector[4][2] , \muxOutVector[4][1] , \muxOutVector[4][0] }), 
        .B({\sumVector[3][31] , \sumVector[3][30] , \sumVector[3][29] , 
        \sumVector[3][28] , \sumVector[3][27] , \sumVector[3][26] , 
        \sumVector[3][25] , \sumVector[3][24] , \sumVector[3][23] , 
        \sumVector[3][22] , \sumVector[3][21] , \sumVector[3][20] , 
        \sumVector[3][19] , \sumVector[3][18] , \sumVector[3][17] , 
        \sumVector[3][16] , \sumVector[3][15] , \sumVector[3][14] , 
        \sumVector[3][13] , \sumVector[3][12] , \sumVector[3][11] , 
        \sumVector[3][10] , \sumVector[3][9] , \sumVector[3][8] , 
        \sumVector[3][7] , \sumVector[3][6] , \sumVector[3][5] , 
        \sumVector[3][4] , \sumVector[3][3] , \sumVector[3][2] , 
        \sumVector[3][1] , \sumVector[3][0] }), .Ci(1'b0), .S({
        \sumVector[4][31] , \sumVector[4][30] , \sumVector[4][29] , 
        \sumVector[4][28] , \sumVector[4][27] , \sumVector[4][26] , 
        \sumVector[4][25] , \sumVector[4][24] , \sumVector[4][23] , 
        \sumVector[4][22] , \sumVector[4][21] , \sumVector[4][20] , 
        \sumVector[4][19] , \sumVector[4][18] , \sumVector[4][17] , 
        \sumVector[4][16] , \sumVector[4][15] , \sumVector[4][14] , 
        \sumVector[4][13] , \sumVector[4][12] , \sumVector[4][11] , 
        \sumVector[4][10] , \sumVector[4][9] , \sumVector[4][8] , 
        \sumVector[4][7] , \sumVector[4][6] , \sumVector[4][5] , 
        \sumVector[4][4] , \sumVector[4][3] , \sumVector[4][2] , 
        \sumVector[4][1] , \sumVector[4][0] }) );
  MUX_5TO1_NBIT32_4 mux_4 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n133, n133, n134, n137, n133, n133, n137, n136, n137, 
        A[14:1], n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A2({
        n123, n109, n115, n123, n124, n115, n116, n68, \r113/DIFF[15] , 
        \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , 
        \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , n92, 
        n96, n95, n107, n105, \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .A3({n138, n139, n138, n139, n139, n139, 
        n139, n139, A[14:2], n98, n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .A4({n116, n110, n112, n118, n122, n112, n116, 
        \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , 
        \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , 
        \r113/DIFF[7] , n92, n96, n102, n108, n105, \r113/DIFF[1] , n128, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \selVector[4][2] , \selVector[4][1] , \selVector[4][0] }), .O({
        \muxOutVector[4][31] , \muxOutVector[4][30] , \muxOutVector[4][29] , 
        \muxOutVector[4][28] , \muxOutVector[4][27] , \muxOutVector[4][26] , 
        \muxOutVector[4][25] , \muxOutVector[4][24] , \muxOutVector[4][23] , 
        \muxOutVector[4][22] , \muxOutVector[4][21] , \muxOutVector[4][20] , 
        \muxOutVector[4][19] , \muxOutVector[4][18] , \muxOutVector[4][17] , 
        \muxOutVector[4][16] , \muxOutVector[4][15] , \muxOutVector[4][14] , 
        \muxOutVector[4][13] , \muxOutVector[4][12] , \muxOutVector[4][11] , 
        \muxOutVector[4][10] , \muxOutVector[4][9] , \muxOutVector[4][8] , 
        \muxOutVector[4][7] , \muxOutVector[4][6] , \muxOutVector[4][5] , 
        \muxOutVector[4][4] , \muxOutVector[4][3] , \muxOutVector[4][2] , 
        \muxOutVector[4][1] , \muxOutVector[4][0] }) );
  BE_BLOCK_3 eb_5 ( .b(B[11:9]), .sel({\selVector[5][2] , \selVector[5][1] , 
        \selVector[5][0] }) );
  RCA_NBIT32_3 sum_5 ( .A({\muxOutVector[5][31] , \muxOutVector[5][30] , 
        \muxOutVector[5][29] , \muxOutVector[5][28] , \muxOutVector[5][27] , 
        \muxOutVector[5][26] , \muxOutVector[5][25] , \muxOutVector[5][24] , 
        \muxOutVector[5][23] , \muxOutVector[5][22] , \muxOutVector[5][21] , 
        \muxOutVector[5][20] , \muxOutVector[5][19] , \muxOutVector[5][18] , 
        \muxOutVector[5][17] , \muxOutVector[5][16] , \muxOutVector[5][15] , 
        \muxOutVector[5][14] , \muxOutVector[5][13] , \muxOutVector[5][12] , 
        \muxOutVector[5][11] , \muxOutVector[5][10] , \muxOutVector[5][9] , 
        \muxOutVector[5][8] , \muxOutVector[5][7] , \muxOutVector[5][6] , 
        \muxOutVector[5][5] , \muxOutVector[5][4] , \muxOutVector[5][3] , 
        \muxOutVector[5][2] , \muxOutVector[5][1] , \muxOutVector[5][0] }), 
        .B({\sumVector[4][31] , \sumVector[4][30] , \sumVector[4][29] , 
        \sumVector[4][28] , \sumVector[4][27] , \sumVector[4][26] , 
        \sumVector[4][25] , \sumVector[4][24] , \sumVector[4][23] , 
        \sumVector[4][22] , \sumVector[4][21] , \sumVector[4][20] , 
        \sumVector[4][19] , \sumVector[4][18] , \sumVector[4][17] , 
        \sumVector[4][16] , \sumVector[4][15] , \sumVector[4][14] , 
        \sumVector[4][13] , \sumVector[4][12] , \sumVector[4][11] , 
        \sumVector[4][10] , \sumVector[4][9] , \sumVector[4][8] , 
        \sumVector[4][7] , \sumVector[4][6] , \sumVector[4][5] , 
        \sumVector[4][4] , \sumVector[4][3] , \sumVector[4][2] , 
        \sumVector[4][1] , \sumVector[4][0] }), .Ci(1'b0), .S({
        \sumVector[5][31] , \sumVector[5][30] , \sumVector[5][29] , 
        \sumVector[5][28] , \sumVector[5][27] , \sumVector[5][26] , 
        \sumVector[5][25] , \sumVector[5][24] , \sumVector[5][23] , 
        \sumVector[5][22] , \sumVector[5][21] , \sumVector[5][20] , 
        \sumVector[5][19] , \sumVector[5][18] , \sumVector[5][17] , 
        \sumVector[5][16] , \sumVector[5][15] , \sumVector[5][14] , 
        \sumVector[5][13] , \sumVector[5][12] , \sumVector[5][11] , 
        \sumVector[5][10] , \sumVector[5][9] , \sumVector[5][8] , 
        \sumVector[5][7] , \sumVector[5][6] , \sumVector[5][5] , 
        \sumVector[5][4] , \sumVector[5][3] , \sumVector[5][2] , 
        \sumVector[5][1] , \sumVector[5][0] }) );
  MUX_5TO1_NBIT32_3 mux_5 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n139, n136, n133, n137, n137, n137, n137, A[14:2], n98, 
        n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .A2({n118, n123, n121, n68, n114, n120, \r113/DIFF[15] , 
        \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , 
        \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , n92, 
        n96, n102, n108, n105, \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n139, n139, n137, n136, 
        n133, n139, A[14:2], n98, n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A4({n111, n119, n115, n119, n113, 
        \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , 
        \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , 
        \r113/DIFF[7] , n92, n96, n102, n108, n105, \r113/DIFF[1] , n128, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \selVector[5][2] , \selVector[5][1] , \selVector[5][0] }), .O({
        \muxOutVector[5][31] , \muxOutVector[5][30] , \muxOutVector[5][29] , 
        \muxOutVector[5][28] , \muxOutVector[5][27] , \muxOutVector[5][26] , 
        \muxOutVector[5][25] , \muxOutVector[5][24] , \muxOutVector[5][23] , 
        \muxOutVector[5][22] , \muxOutVector[5][21] , \muxOutVector[5][20] , 
        \muxOutVector[5][19] , \muxOutVector[5][18] , \muxOutVector[5][17] , 
        \muxOutVector[5][16] , \muxOutVector[5][15] , \muxOutVector[5][14] , 
        \muxOutVector[5][13] , \muxOutVector[5][12] , \muxOutVector[5][11] , 
        \muxOutVector[5][10] , \muxOutVector[5][9] , \muxOutVector[5][8] , 
        \muxOutVector[5][7] , \muxOutVector[5][6] , \muxOutVector[5][5] , 
        \muxOutVector[5][4] , \muxOutVector[5][3] , \muxOutVector[5][2] , 
        \muxOutVector[5][1] , \muxOutVector[5][0] }) );
  BE_BLOCK_2 eb_6 ( .b(B[13:11]), .sel({\selVector[6][2] , \selVector[6][1] , 
        \selVector[6][0] }) );
  RCA_NBIT32_2 sum_6 ( .A({\muxOutVector[6][31] , \muxOutVector[6][30] , 
        \muxOutVector[6][29] , \muxOutVector[6][28] , \muxOutVector[6][27] , 
        \muxOutVector[6][26] , \muxOutVector[6][25] , \muxOutVector[6][24] , 
        \muxOutVector[6][23] , \muxOutVector[6][22] , \muxOutVector[6][21] , 
        \muxOutVector[6][20] , \muxOutVector[6][19] , \muxOutVector[6][18] , 
        \muxOutVector[6][17] , \muxOutVector[6][16] , \muxOutVector[6][15] , 
        \muxOutVector[6][14] , \muxOutVector[6][13] , \muxOutVector[6][12] , 
        \muxOutVector[6][11] , \muxOutVector[6][10] , \muxOutVector[6][9] , 
        \muxOutVector[6][8] , \muxOutVector[6][7] , \muxOutVector[6][6] , 
        \muxOutVector[6][5] , \muxOutVector[6][4] , \muxOutVector[6][3] , 
        \muxOutVector[6][2] , \muxOutVector[6][1] , \muxOutVector[6][0] }), 
        .B({\sumVector[5][31] , \sumVector[5][30] , \sumVector[5][29] , 
        \sumVector[5][28] , \sumVector[5][27] , \sumVector[5][26] , 
        \sumVector[5][25] , \sumVector[5][24] , \sumVector[5][23] , 
        \sumVector[5][22] , \sumVector[5][21] , \sumVector[5][20] , 
        \sumVector[5][19] , \sumVector[5][18] , \sumVector[5][17] , 
        \sumVector[5][16] , \sumVector[5][15] , \sumVector[5][14] , 
        \sumVector[5][13] , \sumVector[5][12] , \sumVector[5][11] , 
        \sumVector[5][10] , \sumVector[5][9] , \sumVector[5][8] , 
        \sumVector[5][7] , \sumVector[5][6] , \sumVector[5][5] , 
        \sumVector[5][4] , \sumVector[5][3] , \sumVector[5][2] , 
        \sumVector[5][1] , \sumVector[5][0] }), .Ci(1'b0), .S({
        \sumVector[6][31] , \sumVector[6][30] , \sumVector[6][29] , 
        \sumVector[6][28] , \sumVector[6][27] , \sumVector[6][26] , 
        \sumVector[6][25] , \sumVector[6][24] , \sumVector[6][23] , 
        \sumVector[6][22] , \sumVector[6][21] , \sumVector[6][20] , 
        \sumVector[6][19] , \sumVector[6][18] , \sumVector[6][17] , 
        \sumVector[6][16] , \sumVector[6][15] , \sumVector[6][14] , 
        \sumVector[6][13] , \sumVector[6][12] , \sumVector[6][11] , 
        \sumVector[6][10] , \sumVector[6][9] , \sumVector[6][8] , 
        \sumVector[6][7] , \sumVector[6][6] , \sumVector[6][5] , 
        \sumVector[6][4] , \sumVector[6][3] , \sumVector[6][2] , 
        \sumVector[6][1] , \sumVector[6][0] }) );
  MUX_5TO1_NBIT32_2 mux_6 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n140, n137, n136, n137, n136, A[14:2], n98, n128, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .A2({n114, n126, n124, n121, \r113/DIFF[15] , \r113/DIFF[14] , 
        \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , 
        \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , n92, n96, n102, n108, 
        n105, \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n139, n139, n139, n133, A[14:2], 
        n98, n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .A4({n68, n113, n109, \r113/DIFF[15] , 
        \r113/DIFF[14] , \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , 
        \r113/DIFF[10] , \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , n92, 
        n96, n102, n108, n105, \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \selVector[6][2] , \selVector[6][1] , \selVector[6][0] }), .O({
        \muxOutVector[6][31] , \muxOutVector[6][30] , \muxOutVector[6][29] , 
        \muxOutVector[6][28] , \muxOutVector[6][27] , \muxOutVector[6][26] , 
        \muxOutVector[6][25] , \muxOutVector[6][24] , \muxOutVector[6][23] , 
        \muxOutVector[6][22] , \muxOutVector[6][21] , \muxOutVector[6][20] , 
        \muxOutVector[6][19] , \muxOutVector[6][18] , \muxOutVector[6][17] , 
        \muxOutVector[6][16] , \muxOutVector[6][15] , \muxOutVector[6][14] , 
        \muxOutVector[6][13] , \muxOutVector[6][12] , \muxOutVector[6][11] , 
        \muxOutVector[6][10] , \muxOutVector[6][9] , \muxOutVector[6][8] , 
        \muxOutVector[6][7] , \muxOutVector[6][6] , \muxOutVector[6][5] , 
        \muxOutVector[6][4] , \muxOutVector[6][3] , \muxOutVector[6][2] , 
        \muxOutVector[6][1] , \muxOutVector[6][0] }) );
  BE_BLOCK_1 eb_7 ( .b(B[15:13]), .sel({\selVector[7][2] , \selVector[7][1] , 
        \selVector[7][0] }) );
  RCA_NBIT32_1 sum_7 ( .A({\muxOutVector[7][31] , \muxOutVector[7][30] , 
        \muxOutVector[7][29] , \muxOutVector[7][28] , \muxOutVector[7][27] , 
        \muxOutVector[7][26] , \muxOutVector[7][25] , \muxOutVector[7][24] , 
        \muxOutVector[7][23] , \muxOutVector[7][22] , \muxOutVector[7][21] , 
        \muxOutVector[7][20] , \muxOutVector[7][19] , \muxOutVector[7][18] , 
        \muxOutVector[7][17] , \muxOutVector[7][16] , \muxOutVector[7][15] , 
        \muxOutVector[7][14] , \muxOutVector[7][13] , \muxOutVector[7][12] , 
        \muxOutVector[7][11] , \muxOutVector[7][10] , \muxOutVector[7][9] , 
        \muxOutVector[7][8] , \muxOutVector[7][7] , \muxOutVector[7][6] , 
        \muxOutVector[7][5] , \muxOutVector[7][4] , \muxOutVector[7][3] , 
        \muxOutVector[7][2] , \muxOutVector[7][1] , \muxOutVector[7][0] }), 
        .B({\sumVector[6][31] , \sumVector[6][30] , \sumVector[6][29] , 
        \sumVector[6][28] , \sumVector[6][27] , \sumVector[6][26] , 
        \sumVector[6][25] , \sumVector[6][24] , \sumVector[6][23] , 
        \sumVector[6][22] , \sumVector[6][21] , \sumVector[6][20] , 
        \sumVector[6][19] , \sumVector[6][18] , \sumVector[6][17] , 
        \sumVector[6][16] , \sumVector[6][15] , \sumVector[6][14] , 
        \sumVector[6][13] , \sumVector[6][12] , \sumVector[6][11] , 
        \sumVector[6][10] , \sumVector[6][9] , \sumVector[6][8] , 
        \sumVector[6][7] , \sumVector[6][6] , \sumVector[6][5] , 
        \sumVector[6][4] , \sumVector[6][3] , \sumVector[6][2] , 
        \sumVector[6][1] , \sumVector[6][0] }), .Ci(1'b0), .S(P) );
  MUX_5TO1_NBIT32_1 mux_7 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .A1({n137, n134, n136, A[14:2], n98, n128, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .A2({n120, n110, \r113/DIFF[15] , \r113/DIFF[14] , \r113/DIFF[13] , 
        \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , \r113/DIFF[9] , 
        \r113/DIFF[8] , \r113/DIFF[7] , n92, n96, n102, n108, n105, 
        \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n139, n139, A[14:2], n98, 
        n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .A4({n127, \r113/DIFF[15] , \r113/DIFF[14] , 
        \r113/DIFF[13] , \r113/DIFF[12] , \r113/DIFF[11] , \r113/DIFF[10] , 
        \r113/DIFF[9] , \r113/DIFF[8] , \r113/DIFF[7] , n92, n96, n102, n108, 
        n105, \r113/DIFF[1] , n128, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \selVector[7][2] , \selVector[7][1] , \selVector[7][0] }), .O({
        \muxOutVector[7][31] , \muxOutVector[7][30] , \muxOutVector[7][29] , 
        \muxOutVector[7][28] , \muxOutVector[7][27] , \muxOutVector[7][26] , 
        \muxOutVector[7][25] , \muxOutVector[7][24] , \muxOutVector[7][23] , 
        \muxOutVector[7][22] , \muxOutVector[7][21] , \muxOutVector[7][20] , 
        \muxOutVector[7][19] , \muxOutVector[7][18] , \muxOutVector[7][17] , 
        \muxOutVector[7][16] , \muxOutVector[7][15] , \muxOutVector[7][14] , 
        \muxOutVector[7][13] , \muxOutVector[7][12] , \muxOutVector[7][11] , 
        \muxOutVector[7][10] , \muxOutVector[7][9] , \muxOutVector[7][8] , 
        \muxOutVector[7][7] , \muxOutVector[7][6] , \muxOutVector[7][5] , 
        \muxOutVector[7][4] , \muxOutVector[7][3] , \muxOutVector[7][2] , 
        \muxOutVector[7][1] , \muxOutVector[7][0] }) );
  OAI21_X2 U5 ( .B1(n84), .B2(n145), .A(n85), .ZN(\r113/DIFF[15] ) );
  XNOR2_X2 U6 ( .A(A[14]), .B(n86), .ZN(\r113/DIFF[14] ) );
  XNOR2_X1 U43 ( .A(n97), .B(A[3]), .ZN(\r113/DIFF[3] ) );
  NOR2_X1 U44 ( .A1(n80), .A2(A[5]), .ZN(n79) );
  NOR2_X1 U45 ( .A1(n76), .A2(A[9]), .ZN(n90) );
  BUF_X1 U46 ( .A(n109), .Z(n124) );
  XNOR2_X1 U47 ( .A(A[1]), .B(A[0]), .ZN(n91) );
  INV_X2 U48 ( .A(n91), .ZN(\r113/DIFF[1] ) );
  NOR2_X1 U49 ( .A1(A[3]), .A2(A[2]), .ZN(n101) );
  BUF_X1 U50 ( .A(\r113/DIFF[5] ), .Z(n96) );
  BUF_X2 U51 ( .A(\r113/DIFF[6] ), .Z(n92) );
  XNOR2_X1 U52 ( .A(n79), .B(A[6]), .ZN(\r113/DIFF[6] ) );
  BUF_X1 U53 ( .A(A[0]), .Z(n93) );
  BUF_X1 U54 ( .A(A[0]), .Z(n94) );
  BUF_X1 U55 ( .A(A[0]), .Z(n129) );
  CLKBUF_X1 U56 ( .A(\r113/DIFF[4] ), .Z(n95) );
  XOR2_X1 U57 ( .A(n81), .B(n74), .Z(\r113/DIFF[4] ) );
  BUF_X2 U58 ( .A(\r113/DIFF[2] ), .Z(n105) );
  XOR2_X1 U59 ( .A(n80), .B(A[5]), .Z(\r113/DIFF[5] ) );
  XNOR2_X1 U60 ( .A(n106), .B(A[2]), .ZN(\r113/DIFF[2] ) );
  AND2_X1 U61 ( .A1(n83), .A2(n99), .ZN(n97) );
  BUF_X1 U62 ( .A(A[1]), .Z(n98) );
  INV_X1 U63 ( .A(A[2]), .ZN(n99) );
  NOR2_X1 U64 ( .A1(A[1]), .A2(A[0]), .ZN(n100) );
  AND2_X1 U65 ( .A1(n100), .A2(n101), .ZN(n81) );
  BUF_X2 U66 ( .A(n111), .Z(n109) );
  CLKBUF_X1 U67 ( .A(n95), .Z(n102) );
  BUF_X1 U68 ( .A(A[0]), .Z(n103) );
  BUF_X1 U69 ( .A(A[0]), .Z(n104) );
  BUF_X1 U70 ( .A(A[0]), .Z(n130) );
  BUF_X4 U71 ( .A(A[0]), .Z(n128) );
  BUF_X2 U72 ( .A(n110), .Z(n127) );
  BUF_X2 U73 ( .A(n68), .Z(n111) );
  INV_X1 U74 ( .A(n131), .ZN(n142) );
  INV_X1 U75 ( .A(n131), .ZN(n143) );
  INV_X1 U76 ( .A(n132), .ZN(n144) );
  INV_X1 U77 ( .A(n131), .ZN(n141) );
  BUF_X1 U78 ( .A(A[15]), .Z(n132) );
  BUF_X1 U79 ( .A(A[15]), .Z(n131) );
  BUF_X1 U80 ( .A(n127), .Z(n112) );
  CLKBUF_X1 U81 ( .A(n126), .Z(n115) );
  BUF_X1 U82 ( .A(n124), .Z(n121) );
  BUF_X1 U83 ( .A(n125), .Z(n118) );
  CLKBUF_X1 U84 ( .A(n126), .Z(n116) );
  CLKBUF_X1 U85 ( .A(n125), .Z(n120) );
  CLKBUF_X1 U86 ( .A(n125), .Z(n119) );
  CLKBUF_X1 U87 ( .A(n124), .Z(n122) );
  CLKBUF_X1 U88 ( .A(n124), .Z(n123) );
  BUF_X1 U89 ( .A(n111), .Z(n110) );
  INV_X1 U90 ( .A(n85), .ZN(n68) );
  INV_X1 U91 ( .A(n142), .ZN(n135) );
  INV_X1 U92 ( .A(n143), .ZN(n138) );
  INV_X1 U93 ( .A(n143), .ZN(n137) );
  INV_X1 U94 ( .A(n142), .ZN(n136) );
  INV_X1 U95 ( .A(n144), .ZN(n139) );
  INV_X1 U96 ( .A(n142), .ZN(n134) );
  INV_X1 U97 ( .A(n145), .ZN(n140) );
  INV_X1 U98 ( .A(n141), .ZN(n133) );
  NAND2_X1 U99 ( .A1(n81), .A2(n74), .ZN(n80) );
  NAND2_X1 U100 ( .A1(n79), .A2(n73), .ZN(n78) );
  NAND2_X1 U101 ( .A1(n90), .A2(n71), .ZN(n89) );
  INV_X1 U102 ( .A(n132), .ZN(n145) );
  NOR2_X1 U103 ( .A1(n78), .A2(A[7]), .ZN(n77) );
  INV_X1 U104 ( .A(A[4]), .ZN(n74) );
  NOR2_X1 U105 ( .A1(n89), .A2(A[11]), .ZN(n88) );
  INV_X1 U106 ( .A(A[6]), .ZN(n73) );
  INV_X1 U107 ( .A(A[8]), .ZN(n72) );
  INV_X1 U108 ( .A(A[10]), .ZN(n71) );
  INV_X1 U109 ( .A(A[12]), .ZN(n70) );
  BUF_X2 U110 ( .A(n109), .Z(n125) );
  BUF_X2 U111 ( .A(n109), .Z(n126) );
  BUF_X1 U112 ( .A(n126), .Z(n117) );
  CLKBUF_X1 U113 ( .A(n127), .Z(n113) );
  CLKBUF_X1 U114 ( .A(n127), .Z(n114) );
  NOR2_X1 U115 ( .A1(A[1]), .A2(A[0]), .ZN(n106) );
  CLKBUF_X1 U116 ( .A(\r113/DIFF[3] ), .Z(n107) );
  CLKBUF_X1 U117 ( .A(n107), .Z(n108) );
  NAND2_X1 U118 ( .A1(n77), .A2(n72), .ZN(n76) );
  NOR2_X1 U119 ( .A1(A[1]), .A2(n103), .ZN(n83) );
  NAND2_X1 U120 ( .A1(n145), .A2(n84), .ZN(n85) );
  NOR2_X1 U121 ( .A1(A[13]), .A2(n87), .ZN(n86) );
  OR3_X2 U122 ( .A1(A[13]), .A2(A[14]), .A3(n87), .ZN(n84) );
  NAND2_X1 U123 ( .A1(n88), .A2(n70), .ZN(n87) );
  XOR2_X2 U124 ( .A(n90), .B(n71), .Z(\r113/DIFF[10] ) );
  XOR2_X2 U125 ( .A(n89), .B(A[11]), .Z(\r113/DIFF[11] ) );
  XOR2_X2 U126 ( .A(n88), .B(n70), .Z(\r113/DIFF[12] ) );
  XOR2_X2 U127 ( .A(n87), .B(A[13]), .Z(\r113/DIFF[13] ) );
  XOR2_X2 U128 ( .A(n78), .B(A[7]), .Z(\r113/DIFF[7] ) );
  XOR2_X2 U129 ( .A(n77), .B(n72), .Z(\r113/DIFF[8] ) );
  XOR2_X2 U130 ( .A(n76), .B(A[9]), .Z(\r113/DIFF[9] ) );
endmodule

