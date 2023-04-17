/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Apr 17 19:02:36 2023
/////////////////////////////////////////////////////////////


module BE_BLOCK_0 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n1, n2, n3, n4;

  NAND2_X1 U3 ( .A1(b[1]), .A2(b[0]), .ZN(n2) );
  OAI21_X1 U4 ( .B1(b[1]), .B2(b[0]), .A(n2), .ZN(n4) );
  OAI21_X1 U5 ( .B1(b[1]), .B2(b[0]), .A(n2), .ZN(n3) );
  INV_X1 U6 ( .A(b[2]), .ZN(n1) );
  AND3_X1 U7 ( .A1(n4), .A2(n2), .A3(b[2]), .ZN(sel[2]) );
  OAI22_X1 U8 ( .A1(n1), .A2(n4), .B1(b[2]), .B2(n2), .ZN(sel[1]) );
  AOI21_X1 U9 ( .B1(n3), .B2(n2), .A(b[2]), .ZN(sel[0]) );
endmodule


module MUX_5TO1_NBIT8_0 ( A0, A1, A2, A3, A4, sel, O );
  input [7:0] A0;
  input [7:0] A1;
  input [7:0] A2;
  input [7:0] A3;
  input [7:0] A4;
  input [2:0] sel;
  output [7:0] O;
  wire   n2, n3, n4, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n19, n20,
         n21, net58800, net58817, net58836, net58860, net58859, net58882,
         net59046, net59260, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37;
  assign net59260 = sel[1];

  INV_X1 U1 ( .A(A3[2]), .ZN(n28) );
  AND2_X1 U2 ( .A1(n34), .A2(n27), .ZN(n4) );
  AND2_X1 U3 ( .A1(n32), .A2(n33), .ZN(n22) );
  INV_X1 U4 ( .A(net58882), .ZN(n33) );
  NOR2_X1 U5 ( .A1(net58859), .A2(n23), .ZN(net58836) );
  NOR2_X1 U6 ( .A1(n28), .A2(n29), .ZN(n30) );
  INV_X1 U7 ( .A(n29), .ZN(net59046) );
  NOR2_X1 U8 ( .A1(n34), .A2(n35), .ZN(n32) );
  NAND2_X1 U9 ( .A1(net59260), .A2(sel[0]), .ZN(n29) );
  INV_X1 U10 ( .A(sel[0]), .ZN(n24) );
  INV_X1 U11 ( .A(net59260), .ZN(n27) );
  NAND2_X1 U12 ( .A1(net59260), .A2(n24), .ZN(net58859) );
  INV_X1 U13 ( .A(n24), .ZN(n34) );
  CLKBUF_X3 U14 ( .A(sel[2]), .Z(n35) );
  INV_X1 U15 ( .A(n16), .ZN(n31) );
  AOI21_X1 U16 ( .B1(n4), .B2(A1[2]), .A(n31), .ZN(n25) );
  NAND2_X1 U17 ( .A1(n25), .A2(n26), .ZN(O[2]) );
  AOI21_X1 U18 ( .B1(A2[2]), .B2(net58860), .A(n30), .ZN(n26) );
  INV_X1 U19 ( .A(A2[3]), .ZN(n23) );
  CLKBUF_X1 U20 ( .A(net59046), .Z(net58817) );
  CLKBUF_X1 U21 ( .A(net59260), .Z(net58882) );
  INV_X1 U22 ( .A(net58859), .ZN(net58860) );
  AND2_X1 U23 ( .A1(A1[3]), .A2(n4), .ZN(n36) );
  AND2_X1 U24 ( .A1(A3[3]), .A2(net59046), .ZN(n37) );
  NOR3_X1 U25 ( .A1(n36), .A2(net58836), .A3(n37), .ZN(n15) );
  CLKBUF_X1 U26 ( .A(n4), .Z(net58800) );
  AOI22_X1 U27 ( .A1(A0[3]), .A2(n22), .B1(A4[3]), .B2(n35), .ZN(n14) );
  NAND2_X1 U28 ( .A1(n12), .A2(n13), .ZN(O[4]) );
  AOI22_X1 U29 ( .A1(A0[4]), .A2(n22), .B1(A4[4]), .B2(n35), .ZN(n12) );
  AOI222_X1 U30 ( .A1(A1[4]), .A2(n4), .B1(A3[4]), .B2(net59046), .C1(A2[4]), 
        .C2(net58860), .ZN(n13) );
  NAND2_X1 U31 ( .A1(n10), .A2(n11), .ZN(O[5]) );
  AOI22_X1 U32 ( .A1(A0[5]), .A2(n22), .B1(A4[5]), .B2(n35), .ZN(n10) );
  AOI222_X1 U33 ( .A1(A1[5]), .A2(n4), .B1(A3[5]), .B2(net58817), .C1(A2[5]), 
        .C2(net58860), .ZN(n11) );
  NAND2_X1 U34 ( .A1(n8), .A2(n9), .ZN(O[6]) );
  AOI22_X1 U35 ( .A1(A0[6]), .A2(n22), .B1(A4[6]), .B2(n35), .ZN(n8) );
  AOI222_X1 U36 ( .A1(A1[6]), .A2(net58800), .B1(A3[6]), .B2(net58817), .C1(
        A2[6]), .C2(net58860), .ZN(n9) );
  NAND2_X1 U37 ( .A1(n18), .A2(n19), .ZN(O[1]) );
  AOI22_X1 U38 ( .A1(A0[1]), .A2(n22), .B1(A4[1]), .B2(n35), .ZN(n18) );
  AOI222_X1 U39 ( .A1(A1[1]), .A2(net58800), .B1(A3[1]), .B2(net58817), .C1(
        A2[1]), .C2(net58860), .ZN(n19) );
  NAND2_X1 U40 ( .A1(n20), .A2(n21), .ZN(O[0]) );
  AOI22_X1 U41 ( .A1(A0[0]), .A2(n22), .B1(A4[0]), .B2(n35), .ZN(n20) );
  AOI222_X1 U42 ( .A1(A1[0]), .A2(net58800), .B1(A3[0]), .B2(net58817), .C1(
        A2[0]), .C2(net58860), .ZN(n21) );
  NAND2_X1 U43 ( .A1(n2), .A2(n3), .ZN(O[7]) );
  AOI22_X1 U44 ( .A1(A0[7]), .A2(n22), .B1(n35), .B2(A4[7]), .ZN(n2) );
  AOI222_X1 U45 ( .A1(A1[7]), .A2(net58800), .B1(A3[7]), .B2(net58817), .C1(
        A2[7]), .C2(net58860), .ZN(n3) );
  NAND2_X1 U46 ( .A1(n14), .A2(n15), .ZN(O[3]) );
  AOI22_X1 U47 ( .A1(A0[2]), .A2(n22), .B1(A4[2]), .B2(sel[2]), .ZN(n16) );
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


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net59552, n4, n5, n6;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n4) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n5) );
  XNOR2_X1 U3 ( .A(net59552), .B(n4), .ZN(S) );
  OAI21_X1 U4 ( .B1(n6), .B2(n4), .A(n5), .ZN(Co) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  INV_X1 U6 ( .A(n6), .ZN(net59552) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(B), .B(A), .ZN(n4) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n6) );
  XNOR2_X1 U3 ( .A(n7), .B(n4), .ZN(S) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  INV_X1 U5 ( .A(n8), .ZN(n7) );
  OAI21_X1 U6 ( .B1(n5), .B2(n4), .A(n6), .ZN(Co) );
  CLKBUF_X1 U7 ( .A(n5), .Z(n8) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n6), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(Co) );
  CLKBUF_X1 U5 ( .A(Ci), .Z(n6) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net59241, net59238, n4, n5, n6, n7;

  INV_X1 U1 ( .A(Ci), .ZN(net59241) );
  NAND2_X1 U2 ( .A1(A), .A2(n7), .ZN(n5) );
  XNOR2_X1 U3 ( .A(A), .B(B), .ZN(n4) );
  XNOR2_X1 U4 ( .A(net59238), .B(n6), .ZN(S) );
  OAI21_X1 U5 ( .B1(n4), .B2(net59241), .A(n5), .ZN(Co) );
  CLKBUF_X1 U6 ( .A(n4), .Z(n6) );
  CLKBUF_X1 U7 ( .A(B), .Z(n7) );
  INV_X1 U8 ( .A(net59241), .ZN(net59238) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module RCA_NBIT8 ( A, B, Ci, S, Co );
  input [7:0] A;
  input [7:0] B;
  output [7:0] S;
  input Ci;
  output Co;

  wire   [7:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_4 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_3 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_2 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_1 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(Co) );
endmodule


module BE_BLOCK_1 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11;

  OR2_X1 U3 ( .A1(b[1]), .A2(b[0]), .ZN(n4) );
  NAND2_X1 U4 ( .A1(n4), .A2(n6), .ZN(n8) );
  OAI22_X1 U5 ( .A1(n8), .A2(n5), .B1(b[2]), .B2(n7), .ZN(sel[1]) );
  INV_X1 U6 ( .A(b[2]), .ZN(n5) );
  CLKBUF_X1 U7 ( .A(n8), .Z(n9) );
  NAND2_X1 U8 ( .A1(b[0]), .A2(b[1]), .ZN(n6) );
  AOI21_X1 U9 ( .B1(n3), .B2(n7), .A(b[2]), .ZN(sel[0]) );
  AND3_X1 U10 ( .A1(b[2]), .A2(n7), .A3(n9), .ZN(sel[2]) );
  NAND2_X1 U11 ( .A1(b[1]), .A2(b[0]), .ZN(n7) );
  NAND2_X1 U12 ( .A1(b[0]), .A2(b[1]), .ZN(n10) );
  OR2_X1 U13 ( .A1(b[0]), .A2(b[1]), .ZN(n11) );
  NAND2_X1 U14 ( .A1(n11), .A2(n10), .ZN(n3) );
endmodule


module MUX_5TO1_NBIT8_1 ( A0, A1, A2, A3, A4, sel, O );
  input [7:0] A0;
  input [7:0] A1;
  input [7:0] A2;
  input [7:0] A3;
  input [7:0] A4;
  input [2:0] sel;
  output [7:0] O;
  wire   n13, n15, n16, net58778, net58793, net58796, net58795, net58802,
         net58804, net58827, net58864, net58872, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;

  INV_X1 U1 ( .A(A3[2]), .ZN(n30) );
  INV_X1 U2 ( .A(A3[4]), .ZN(n29) );
  AND2_X1 U3 ( .A1(n33), .A2(net58778), .ZN(n22) );
  NOR2_X1 U4 ( .A1(n23), .A2(n24), .ZN(n13) );
  NOR2_X1 U5 ( .A1(n28), .A2(n29), .ZN(n23) );
  NAND2_X1 U6 ( .A1(n34), .A2(n35), .ZN(n24) );
  MUX2_X1 U7 ( .A(n39), .B(n38), .S(sel[0]), .Z(n36) );
  AND2_X1 U8 ( .A1(sel[1]), .A2(net58778), .ZN(net58804) );
  CLKBUF_X1 U9 ( .A(net58802), .Z(net58872) );
  NAND2_X1 U10 ( .A1(A1[4]), .A2(net58802), .ZN(n34) );
  INV_X1 U11 ( .A(n28), .ZN(net58864) );
  NAND2_X1 U12 ( .A1(net58804), .A2(A2[4]), .ZN(n35) );
  BUF_X1 U13 ( .A(sel[1]), .Z(n40) );
  NAND3_X1 U14 ( .A1(A1[3]), .A2(n27), .A3(net58827), .ZN(n37) );
  NAND2_X1 U15 ( .A1(n40), .A2(A2[3]), .ZN(n39) );
  NAND2_X1 U16 ( .A1(n40), .A2(A3[3]), .ZN(n38) );
  NOR2_X1 U17 ( .A1(n41), .A2(sel[2]), .ZN(n33) );
  NAND2_X1 U18 ( .A1(n41), .A2(net58827), .ZN(n28) );
  INV_X1 U19 ( .A(sel[1]), .ZN(n27) );
  INV_X1 U20 ( .A(sel[0]), .ZN(net58778) );
  INV_X1 U21 ( .A(n27), .ZN(n41) );
  NOR2_X1 U22 ( .A1(n28), .A2(n30), .ZN(n31) );
  AOI21_X1 U23 ( .B1(A2[2]), .B2(net58804), .A(n31), .ZN(n26) );
  NAND2_X1 U24 ( .A1(n26), .A2(n25), .ZN(O[2]) );
  AND2_X1 U25 ( .A1(n36), .A2(n37), .ZN(n15) );
  INV_X1 U26 ( .A(n16), .ZN(n32) );
  AOI21_X1 U27 ( .B1(A1[2]), .B2(net58802), .A(n32), .ZN(n25) );
  AND2_X1 U28 ( .A1(n27), .A2(sel[0]), .ZN(net58802) );
  INV_X1 U29 ( .A(net58778), .ZN(net58827) );
  INV_X1 U30 ( .A(net58804), .ZN(net58795) );
  INV_X1 U31 ( .A(net58795), .ZN(net58796) );
  CLKBUF_X1 U32 ( .A(net58872), .Z(net58793) );
  AOI22_X1 U33 ( .A1(A0[2]), .A2(n22), .B1(A4[2]), .B2(sel[2]), .ZN(n16) );
  NAND2_X1 U34 ( .A1(n47), .A2(n13), .ZN(O[4]) );
  AOI22_X1 U35 ( .A1(A0[4]), .A2(n22), .B1(A4[4]), .B2(sel[2]), .ZN(n47) );
  NAND2_X1 U36 ( .A1(n49), .A2(n48), .ZN(O[5]) );
  AOI22_X1 U37 ( .A1(A0[5]), .A2(n22), .B1(A4[5]), .B2(sel[2]), .ZN(n49) );
  NAND2_X1 U38 ( .A1(n51), .A2(n50), .ZN(O[6]) );
  AOI22_X1 U39 ( .A1(A0[6]), .A2(n22), .B1(A4[6]), .B2(sel[2]), .ZN(n51) );
  NAND2_X1 U40 ( .A1(n53), .A2(n52), .ZN(O[7]) );
  AOI22_X1 U41 ( .A1(A0[7]), .A2(n22), .B1(sel[2]), .B2(A4[7]), .ZN(n53) );
  NAND2_X1 U42 ( .A1(n43), .A2(n42), .ZN(O[0]) );
  AOI22_X1 U43 ( .A1(A0[0]), .A2(n22), .B1(A4[0]), .B2(sel[2]), .ZN(n43) );
  NAND2_X1 U44 ( .A1(n45), .A2(n44), .ZN(O[1]) );
  AOI22_X1 U45 ( .A1(A0[1]), .A2(n22), .B1(A4[1]), .B2(sel[2]), .ZN(n45) );
  AOI222_X1 U46 ( .A1(A1[7]), .A2(net58872), .B1(A3[7]), .B2(net58864), .C1(
        A2[7]), .C2(net58796), .ZN(n52) );
  AOI222_X1 U47 ( .A1(A1[6]), .A2(net58872), .B1(A3[6]), .B2(net58864), .C1(
        A2[6]), .C2(net58796), .ZN(n50) );
  AOI222_X1 U48 ( .A1(A1[5]), .A2(net58872), .B1(A3[5]), .B2(net58864), .C1(
        A2[5]), .C2(net58796), .ZN(n48) );
  AOI222_X1 U49 ( .A1(A1[1]), .A2(net58793), .B1(A3[1]), .B2(net58864), .C1(
        A2[1]), .C2(net58796), .ZN(n44) );
  AOI222_X1 U50 ( .A1(A1[0]), .A2(net58793), .B1(A3[0]), .B2(net58864), .C1(
        A2[0]), .C2(net58796), .ZN(n42) );
  AOI22_X1 U51 ( .A1(A0[3]), .A2(n22), .B1(A4[3]), .B2(sel[2]), .ZN(n46) );
  NAND2_X1 U52 ( .A1(n46), .A2(n15), .ZN(O[3]) );
endmodule


module BOOTHMUL ( A, B, P );
  input [3:0] A;
  input [3:0] B;
  output [7:0] P;
  wire   \selVector[1][2] , \selVector[1][1] , \selVector[1][0] ,
         \selVector[0][2] , \selVector[0][1] , \selVector[0][0] ,
         \muxOutVector[1][7] , \muxOutVector[1][6] , \muxOutVector[1][5] ,
         \muxOutVector[1][4] , \muxOutVector[1][3] , \muxOutVector[1][2] ,
         \muxOutVector[1][1] , \muxOutVector[1][0] , \muxOutVector[0][7] ,
         \muxOutVector[0][6] , \muxOutVector[0][5] , \muxOutVector[0][4] ,
         \muxOutVector[0][3] , \muxOutVector[0][2] , \muxOutVector[0][1] ,
         \muxOutVector[0][0] , \muxInputs[0][1][3] , \muxInputs[0][1][2] ,
         \muxInputs[0][1][1] , \muxInputs[0][1][0] , n8, n9, n10, n11, n12,
         n13;
  assign \muxInputs[0][1][0]  = A[0];

  BE_BLOCK_0 eb_0 ( .b({B[1:0], 1'b0}), .sel({\selVector[0][2] , 
        \selVector[0][1] , \selVector[0][0] }) );
  MUX_5TO1_NBIT8_0 mux_0 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A1({A[3], A[3], A[3], A[3], A[3:1], \muxInputs[0][1][0] }), .A2({n8, n8, 
        n8, n8, \muxInputs[0][1][3] , \muxInputs[0][1][2] , 
        \muxInputs[0][1][1] , \muxInputs[0][1][0] }), .A3({A[3], A[3], A[3], 
        A[3:1], \muxInputs[0][1][0] , 1'b0}), .A4({n8, n8, n8, n13, 
        \muxInputs[0][1][2] , \muxInputs[0][1][1] , \muxInputs[0][1][0] , 1'b0}), .sel({\selVector[0][2] , \selVector[0][1] , \selVector[0][0] }), .O({
        \muxOutVector[0][7] , \muxOutVector[0][6] , \muxOutVector[0][5] , 
        \muxOutVector[0][4] , \muxOutVector[0][3] , \muxOutVector[0][2] , 
        \muxOutVector[0][1] , \muxOutVector[0][0] }) );
  BE_BLOCK_1 eb_1 ( .b(B[3:1]), .sel({\selVector[1][2] , \selVector[1][1] , 
        \selVector[1][0] }) );
  RCA_NBIT8 sum_1 ( .A({\muxOutVector[0][7] , \muxOutVector[0][6] , 
        \muxOutVector[0][5] , \muxOutVector[0][4] , \muxOutVector[0][3] , 
        \muxOutVector[0][2] , \muxOutVector[0][1] , \muxOutVector[0][0] }), 
        .B({\muxOutVector[1][7] , \muxOutVector[1][6] , \muxOutVector[1][5] , 
        \muxOutVector[1][4] , \muxOutVector[1][3] , \muxOutVector[1][2] , 
        \muxOutVector[1][1] , \muxOutVector[1][0] }), .Ci(1'b0), .S(P) );
  MUX_5TO1_NBIT8_1 mux_1 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A1({A[3], A[3], A[3:1], \muxInputs[0][1][0] , 1'b0, 1'b0}), .A2({n8, n8, 
        n13, \muxInputs[0][1][2] , \muxInputs[0][1][1] , \muxInputs[0][1][0] , 
        1'b0, 1'b0}), .A3({A[3], A[3:1], \muxInputs[0][1][0] , 1'b0, 1'b0, 
        1'b0}), .A4({n8, n13, \muxInputs[0][1][2] , \muxInputs[0][1][1] , 
        \muxInputs[0][1][0] , 1'b0, 1'b0, 1'b0}), .sel({\selVector[1][2] , 
        \selVector[1][1] , \selVector[1][0] }), .O({\muxOutVector[1][7] , 
        \muxOutVector[1][6] , \muxOutVector[1][5] , \muxOutVector[1][4] , 
        \muxOutVector[1][3] , \muxOutVector[1][2] , \muxOutVector[1][1] , 
        \muxOutVector[1][0] }) );
  XOR2_X1 U12 ( .A(\muxInputs[0][1][0] ), .B(A[1]), .Z(\muxInputs[0][1][1] )
         );
  CLKBUF_X1 U13 ( .A(\muxInputs[0][1][3] ), .Z(n13) );
  INV_X1 U14 ( .A(n10), .ZN(n8) );
  OAI21_X1 U15 ( .B1(n11), .B2(n9), .A(n10), .ZN(\muxInputs[0][1][3] ) );
  NAND2_X1 U16 ( .A1(n9), .A2(n11), .ZN(n10) );
  OR3_X2 U17 ( .A1(A[2]), .A2(\muxInputs[0][1][0] ), .A3(A[1]), .ZN(n11) );
  INV_X1 U18 ( .A(A[3]), .ZN(n9) );
  NOR2_X1 U19 ( .A1(A[1]), .A2(\muxInputs[0][1][0] ), .ZN(n12) );
  XNOR2_X1 U20 ( .A(A[2]), .B(n12), .ZN(\muxInputs[0][1][2] ) );
endmodule

