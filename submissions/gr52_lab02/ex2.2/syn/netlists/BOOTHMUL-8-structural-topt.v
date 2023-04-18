/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Apr 18 18:47:53 2023
/////////////////////////////////////////////////////////////


module BE_BLOCK_0 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   net15409, n4, n5, n6, n7, n8;
  assign sel[0] = net15409;

  AOI21_X2 U3 ( .B1(n5), .B2(n6), .A(n7), .ZN(sel[1]) );
  XNOR2_X1 U4 ( .A(n8), .B(b[2]), .ZN(n7) );
  AND2_X1 U5 ( .A1(b[0]), .A2(b[1]), .ZN(n8) );
  INV_X1 U6 ( .A(b[0]), .ZN(n6) );
  AOI21_X1 U7 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(net15409) );
  INV_X1 U8 ( .A(b[1]), .ZN(n5) );
  INV_X1 U9 ( .A(b[2]), .ZN(n4) );
  NOR3_X4 U10 ( .A1(n4), .A2(b[0]), .A3(b[1]), .ZN(sel[2]) );
endmodule


module MUX_5TO1_NBIT16_0 ( A0, A1, A2, A3, A4, sel, O );
  input [15:0] A0;
  input [15:0] A1;
  input [15:0] A2;
  input [15:0] A3;
  input [15:0] A4;
  input [2:0] sel;
  output [15:0] O;
  wire   net17738, net17739, net17845, net17864, net17881, net17884, net17927,
         net17943, net17742, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76;

  CLKBUF_X1 U1 ( .A(sel[1]), .Z(n38) );
  OAI211_X1 U2 ( .C1(n40), .C2(net17738), .A(net17742), .B(n41), .ZN(O[2]) );
  NAND3_X1 U3 ( .A1(n43), .A2(net17738), .A3(A2[2]), .ZN(n41) );
  INV_X1 U4 ( .A(sel[0]), .ZN(net17738) );
  BUF_X1 U5 ( .A(sel[1]), .Z(n43) );
  AOI22_X1 U6 ( .A1(n43), .A2(A3[2]), .B1(n39), .B2(A1[2]), .ZN(n40) );
  AOI22_X1 U7 ( .A1(A0[2]), .A2(net17864), .B1(sel[2]), .B2(A4[2]), .ZN(
        net17742) );
  INV_X1 U8 ( .A(sel[1]), .ZN(n39) );
  BUF_X1 U9 ( .A(n39), .Z(net17943) );
  AND2_X2 U10 ( .A1(sel[0]), .A2(net17943), .ZN(net17884) );
  AND2_X1 U11 ( .A1(sel[0]), .A2(n38), .ZN(net17881) );
  CLKBUF_X1 U12 ( .A(sel[1]), .Z(net17845) );
  AND3_X1 U13 ( .A1(net17738), .A2(net17943), .A3(n42), .ZN(net17864) );
  INV_X1 U14 ( .A(net17927), .ZN(n42) );
  BUF_X2 U15 ( .A(sel[2]), .Z(net17927) );
  NOR2_X1 U16 ( .A1(net17943), .A2(net17738), .ZN(net17739) );
  AND2_X2 U17 ( .A1(net17845), .A2(net17738), .ZN(n44) );
  AOI222_X1 U18 ( .A1(A1[0]), .A2(net17884), .B1(A2[0]), .B2(n44), .C1(A3[0]), 
        .C2(net17881), .ZN(n46) );
  AOI22_X1 U19 ( .A1(A0[0]), .A2(net17864), .B1(A4[0]), .B2(sel[2]), .ZN(n45)
         );
  NAND2_X1 U20 ( .A1(n46), .A2(n45), .ZN(O[0]) );
  AOI222_X1 U21 ( .A1(A1[1]), .A2(net17884), .B1(A2[1]), .B2(n44), .C1(A3[1]), 
        .C2(net17881), .ZN(n48) );
  AOI22_X1 U22 ( .A1(A0[1]), .A2(net17864), .B1(A4[1]), .B2(sel[2]), .ZN(n47)
         );
  NAND2_X1 U23 ( .A1(n48), .A2(n47), .ZN(O[1]) );
  AOI22_X1 U24 ( .A1(A0[3]), .A2(net17864), .B1(net17739), .B2(A3[3]), .ZN(n52) );
  NAND3_X1 U25 ( .A1(net17845), .A2(net17738), .A3(A2[3]), .ZN(n51) );
  NOR2_X1 U26 ( .A1(net17845), .A2(net17738), .ZN(n49) );
  AOI22_X1 U27 ( .A1(n49), .A2(A1[3]), .B1(A4[3]), .B2(net17927), .ZN(n50) );
  NAND3_X1 U28 ( .A1(n52), .A2(n51), .A3(n50), .ZN(O[3]) );
  AOI222_X1 U29 ( .A1(A1[4]), .A2(net17884), .B1(A0[4]), .B2(net17864), .C1(
        A4[4]), .C2(net17927), .ZN(n54) );
  AOI22_X1 U30 ( .A1(A3[4]), .A2(net17881), .B1(A2[4]), .B2(n44), .ZN(n53) );
  NAND2_X1 U31 ( .A1(n53), .A2(n54), .ZN(O[4]) );
  AOI222_X1 U32 ( .A1(A1[5]), .A2(net17884), .B1(A2[5]), .B2(n44), .C1(A3[5]), 
        .C2(net17881), .ZN(n56) );
  AOI22_X1 U33 ( .A1(A0[5]), .A2(net17864), .B1(A4[5]), .B2(net17927), .ZN(n55) );
  NAND2_X1 U34 ( .A1(n56), .A2(n55), .ZN(O[5]) );
  AOI222_X1 U35 ( .A1(A4[6]), .A2(net17927), .B1(A2[6]), .B2(n44), .C1(A3[6]), 
        .C2(net17881), .ZN(n58) );
  AOI22_X1 U36 ( .A1(A1[6]), .A2(net17884), .B1(A0[6]), .B2(net17864), .ZN(n57) );
  NAND2_X1 U37 ( .A1(n58), .A2(n57), .ZN(O[6]) );
  AOI222_X1 U38 ( .A1(A1[7]), .A2(net17884), .B1(A2[7]), .B2(n44), .C1(A3[7]), 
        .C2(net17881), .ZN(n60) );
  AOI22_X1 U39 ( .A1(A0[7]), .A2(net17864), .B1(A4[7]), .B2(net17927), .ZN(n59) );
  NAND2_X1 U40 ( .A1(n60), .A2(n59), .ZN(O[7]) );
  AOI222_X1 U41 ( .A1(A1[8]), .A2(net17884), .B1(A2[8]), .B2(n44), .C1(A3[8]), 
        .C2(net17881), .ZN(n62) );
  AOI22_X1 U42 ( .A1(A0[8]), .A2(net17864), .B1(A4[8]), .B2(net17927), .ZN(n61) );
  NAND2_X1 U43 ( .A1(n62), .A2(n61), .ZN(O[8]) );
  AOI222_X1 U44 ( .A1(A1[9]), .A2(net17884), .B1(A2[9]), .B2(n44), .C1(A3[9]), 
        .C2(net17881), .ZN(n64) );
  AOI22_X1 U45 ( .A1(A0[9]), .A2(net17864), .B1(A4[9]), .B2(sel[2]), .ZN(n63)
         );
  NAND2_X1 U46 ( .A1(n64), .A2(n63), .ZN(O[9]) );
  AOI222_X1 U47 ( .A1(A1[10]), .A2(net17884), .B1(A2[10]), .B2(n44), .C1(
        A3[10]), .C2(net17881), .ZN(n66) );
  AOI22_X1 U48 ( .A1(A0[10]), .A2(net17864), .B1(A4[10]), .B2(sel[2]), .ZN(n65) );
  NAND2_X1 U49 ( .A1(n66), .A2(n65), .ZN(O[10]) );
  AOI222_X1 U50 ( .A1(A1[11]), .A2(net17884), .B1(A2[11]), .B2(n44), .C1(
        A3[11]), .C2(net17881), .ZN(n68) );
  AOI22_X1 U51 ( .A1(A0[11]), .A2(net17864), .B1(A4[11]), .B2(sel[2]), .ZN(n67) );
  NAND2_X1 U52 ( .A1(n68), .A2(n67), .ZN(O[11]) );
  AOI222_X1 U53 ( .A1(A1[12]), .A2(net17884), .B1(A2[12]), .B2(n44), .C1(
        A3[12]), .C2(net17881), .ZN(n70) );
  AOI22_X1 U54 ( .A1(A0[12]), .A2(net17864), .B1(A4[12]), .B2(sel[2]), .ZN(n69) );
  NAND2_X1 U55 ( .A1(n70), .A2(n69), .ZN(O[12]) );
  AOI222_X1 U56 ( .A1(A1[13]), .A2(net17884), .B1(A2[13]), .B2(n44), .C1(
        A3[13]), .C2(net17881), .ZN(n72) );
  AOI22_X1 U57 ( .A1(A0[13]), .A2(net17864), .B1(A4[13]), .B2(sel[2]), .ZN(n71) );
  NAND2_X1 U58 ( .A1(n72), .A2(n71), .ZN(O[13]) );
  AOI222_X1 U59 ( .A1(A1[14]), .A2(net17884), .B1(A2[14]), .B2(n44), .C1(
        A3[14]), .C2(net17881), .ZN(n74) );
  AOI22_X1 U60 ( .A1(A0[14]), .A2(net17864), .B1(A4[14]), .B2(sel[2]), .ZN(n73) );
  NAND2_X1 U61 ( .A1(n74), .A2(n73), .ZN(O[14]) );
  AOI222_X1 U62 ( .A1(A1[15]), .A2(net17884), .B1(A2[15]), .B2(n44), .C1(
        A3[15]), .C2(net17881), .ZN(n76) );
  AOI22_X1 U63 ( .A1(A0[15]), .A2(net17864), .B1(A4[15]), .B2(sel[2]), .ZN(n75) );
  NAND2_X1 U64 ( .A1(n76), .A2(n75), .ZN(O[15]) );
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


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  XOR2_X1 U3 ( .A(A), .B(B), .Z(n5) );
  AOI22_X1 U4 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
  XOR2_X1 U5 ( .A(Ci), .B(n5), .Z(S) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  XNOR2_X1 U2 ( .A(n6), .B(B), .ZN(n5) );
  INV_X1 U3 ( .A(A), .ZN(n6) );
  OAI22_X1 U4 ( .A1(Ci), .A2(n4), .B1(n4), .B2(n5), .ZN(n7) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  XOR2_X1 U6 ( .A(Ci), .B(n5), .Z(S) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(n4) );
  XOR2_X1 U2 ( .A(A), .B(B), .Z(n5) );
  OAI22_X1 U3 ( .A1(Ci), .A2(n4), .B1(n4), .B2(n5), .ZN(n6) );
  INV_X1 U4 ( .A(n6), .ZN(Co) );
  XOR2_X1 U5 ( .A(Ci), .B(n5), .Z(S) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15565, net17641, n4, n5;
  assign Co = net15565;

  XOR2_X1 U1 ( .A(Ci), .B(n4), .Z(S) );
  OAI22_X1 U2 ( .A1(Ci), .A2(n5), .B1(n5), .B2(n4), .ZN(net17641) );
  XOR2_X1 U3 ( .A(A), .B(B), .Z(n4) );
  AND2_X1 U4 ( .A1(B), .A2(A), .ZN(n5) );
  INV_X1 U5 ( .A(net17641), .ZN(net15565) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15560, n4, n5, n6;
  assign Co = net15560;

  AOI21_X1 U1 ( .B1(Ci), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15560) );
  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  AND2_X1 U4 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U5 ( .A(A), .B(B), .Z(n5) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15555, n4, n5, n6;
  assign Co = net15555;

  OAI22_X1 U1 ( .A1(Ci), .A2(n6), .B1(n6), .B2(n5), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15555) );
  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  AND2_X1 U4 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U5 ( .A(A), .B(B), .Z(n5) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15550, n4, n5, n6;
  assign Co = net15550;

  AOI21_X1 U1 ( .B1(Ci), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15550) );
  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  AND2_X1 U4 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U5 ( .A(A), .B(B), .Z(n5) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15545, n4, n5, n6;
  assign Co = net15545;

  AOI21_X1 U1 ( .B1(Ci), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15545) );
  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  AND2_X1 U4 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U5 ( .A(A), .B(B), .Z(n5) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15540, n4, n5, n6;
  assign Co = net15540;

  AOI21_X1 U1 ( .B1(Ci), .B2(n5), .A(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15540) );
  AND2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  XOR2_X1 U5 ( .A(Ci), .B(n5), .Z(S) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15535, n4, n5, n6;
  assign Co = net15535;

  OAI22_X1 U1 ( .A1(n6), .A2(n5), .B1(Ci), .B2(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15535) );
  AND2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  XOR2_X1 U5 ( .A(Ci), .B(n5), .Z(S) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15217, n4, n5, n6, n7;
  assign Co = net15217;

  OAI22_X1 U1 ( .A1(n7), .A2(n6), .B1(Ci), .B2(n6), .ZN(n4) );
  INV_X1 U2 ( .A(n4), .ZN(net15217) );
  XNOR2_X1 U3 ( .A(B), .B(n5), .ZN(n7) );
  XOR2_X1 U4 ( .A(Ci), .B(n7), .Z(S) );
  INV_X1 U5 ( .A(A), .ZN(n5) );
  AND2_X1 U6 ( .A1(B), .A2(A), .ZN(n6) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15212, n4, n5, n6, n7;
  assign Co = net15212;

  AOI21_X1 U1 ( .B1(n6), .B2(n5), .A(n7), .ZN(net15212) );
  NOR2_X1 U2 ( .A1(B), .A2(A), .ZN(n7) );
  NAND2_X1 U3 ( .A1(B), .A2(A), .ZN(n5) );
  INV_X1 U4 ( .A(Ci), .ZN(n6) );
  XNOR2_X1 U5 ( .A(n4), .B(B), .ZN(S) );
  XNOR2_X1 U6 ( .A(Ci), .B(A), .ZN(n4) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15267, n4, n5, n6, n7;
  assign Co = net15267;

  AOI21_X1 U1 ( .B1(B), .B2(A), .A(Ci), .ZN(n5) );
  NOR2_X1 U2 ( .A1(n5), .A2(n6), .ZN(net15267) );
  NOR2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  XOR2_X1 U4 ( .A(B), .B(n4), .Z(S) );
  XOR2_X1 U5 ( .A(n7), .B(A), .Z(n4) );
  CLKBUF_X1 U6 ( .A(Ci), .Z(n7) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  OAI22_X1 U1 ( .A1(n4), .A2(n5), .B1(n6), .B2(n7), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n7) );
  INV_X1 U3 ( .A(A), .ZN(n6) );
  XOR2_X1 U4 ( .A(n6), .B(n8), .Z(n4) );
  INV_X1 U5 ( .A(Ci), .ZN(n5) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
  CLKBUF_X1 U7 ( .A(B), .Z(n8) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT16_0 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  wire   [15:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_44 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_43 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_42 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_41 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_40 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_39 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_38 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_37 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_36 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_35 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_34 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_33 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(Co) );
endmodule


module BE_BLOCK_1 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(b[2]), .ZN(sel[0]) );
  AND3_X2 U4 ( .A1(b[2]), .A2(n6), .A3(n5), .ZN(sel[2]) );
  OAI21_X1 U5 ( .B1(b[1]), .B2(b[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U6 ( .A1(b[1]), .A2(b[0]), .ZN(n6) );
  OAI22_X1 U7 ( .A1(n7), .A2(n5), .B1(b[2]), .B2(n6), .ZN(sel[1]) );
  INV_X1 U8 ( .A(b[2]), .ZN(n7) );
endmodule


module BE_BLOCK_2 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n4, n5, n6, n7, n8;

  NOR3_X4 U3 ( .A1(n8), .A2(n7), .A3(n6), .ZN(sel[2]) );
  NAND2_X1 U4 ( .A1(b[0]), .A2(b[1]), .ZN(n4) );
  OAI21_X1 U5 ( .B1(b[0]), .B2(b[1]), .A(n4), .ZN(n5) );
  AOI21_X1 U6 ( .B1(n5), .B2(n4), .A(b[2]), .ZN(sel[0]) );
  INV_X1 U7 ( .A(n4), .ZN(n7) );
  INV_X1 U8 ( .A(n5), .ZN(n8) );
  MUX2_X1 U9 ( .A(n7), .B(n8), .S(b[2]), .Z(sel[1]) );
  INV_X1 U10 ( .A(b[2]), .ZN(n6) );
endmodule


module BE_BLOCK_3 ( b, sel );
  input [2:0] b;
  output [2:0] sel;
  wire   n4, n5, n6, n7, n8, n9, n10;

  NOR2_X2 U3 ( .A1(n4), .A2(b[2]), .ZN(sel[0]) );
  INV_X1 U4 ( .A(n4), .ZN(n10) );
  NOR2_X1 U5 ( .A1(b[0]), .A2(b[1]), .ZN(n4) );
  INV_X1 U6 ( .A(b[0]), .ZN(n6) );
  INV_X1 U7 ( .A(b[1]), .ZN(n5) );
  INV_X1 U8 ( .A(b[2]), .ZN(n9) );
  NAND3_X1 U9 ( .A1(b[1]), .A2(b[0]), .A3(n9), .ZN(n8) );
  OAI221_X1 U10 ( .B1(b[1]), .B2(b[0]), .C1(n6), .C2(n5), .A(b[2]), .ZN(n7) );
  NAND2_X1 U11 ( .A1(n8), .A2(n7), .ZN(sel[1]) );
  NOR2_X1 U12 ( .A1(n10), .A2(n9), .ZN(sel[2]) );
endmodule


module MUX_5TO1_NBIT16_1 ( A0, A1, A2, A3, A4, sel, O );
  input [15:0] A0;
  input [15:0] A1;
  input [15:0] A2;
  input [15:0] A3;
  input [15:0] A4;
  input [2:0] sel;
  output [15:0] O;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74;

  NOR3_X4 U1 ( .A1(sel[1]), .A2(sel[2]), .A3(sel[0]), .ZN(n68) );
  NOR2_X4 U2 ( .A1(n74), .A2(sel[1]), .ZN(n71) );
  INV_X1 U3 ( .A(sel[0]), .ZN(n74) );
  AND2_X2 U4 ( .A1(sel[1]), .A2(sel[0]), .ZN(n70) );
  NAND2_X1 U5 ( .A1(n63), .A2(n62), .ZN(O[6]) );
  AOI22_X1 U6 ( .A1(A0[6]), .A2(n68), .B1(A4[6]), .B2(sel[2]), .ZN(n63) );
  AOI222_X1 U7 ( .A1(A1[6]), .A2(n71), .B1(A3[6]), .B2(n70), .C1(A2[6]), .C2(
        n69), .ZN(n62) );
  NAND2_X1 U8 ( .A1(n65), .A2(n64), .ZN(O[7]) );
  AOI22_X1 U9 ( .A1(A0[7]), .A2(n68), .B1(A4[7]), .B2(sel[2]), .ZN(n65) );
  NAND2_X1 U10 ( .A1(n67), .A2(n66), .ZN(O[8]) );
  AOI222_X1 U11 ( .A1(A1[8]), .A2(n71), .B1(A3[8]), .B2(n70), .C1(A2[8]), .C2(
        n69), .ZN(n66) );
  NAND2_X1 U12 ( .A1(n73), .A2(n72), .ZN(O[9]) );
  AOI22_X1 U13 ( .A1(A0[9]), .A2(n68), .B1(sel[2]), .B2(A4[9]), .ZN(n73) );
  AOI222_X1 U14 ( .A1(A1[9]), .A2(n71), .B1(A3[9]), .B2(n70), .C1(A2[9]), .C2(
        n69), .ZN(n72) );
  NAND2_X1 U15 ( .A1(n41), .A2(n40), .ZN(O[10]) );
  AOI22_X1 U16 ( .A1(A0[10]), .A2(n68), .B1(A4[10]), .B2(sel[2]), .ZN(n41) );
  AOI222_X1 U17 ( .A1(A1[10]), .A2(n71), .B1(A3[10]), .B2(n70), .C1(A2[10]), 
        .C2(n69), .ZN(n40) );
  NAND2_X1 U18 ( .A1(n43), .A2(n42), .ZN(O[11]) );
  AOI22_X1 U19 ( .A1(A0[11]), .A2(n68), .B1(A4[11]), .B2(sel[2]), .ZN(n43) );
  AOI222_X1 U20 ( .A1(A1[11]), .A2(n71), .B1(A3[11]), .B2(n70), .C1(A2[11]), 
        .C2(n69), .ZN(n42) );
  NAND2_X1 U21 ( .A1(n45), .A2(n44), .ZN(O[12]) );
  AOI22_X1 U22 ( .A1(A0[12]), .A2(n68), .B1(A4[12]), .B2(sel[2]), .ZN(n45) );
  AOI222_X1 U23 ( .A1(A1[12]), .A2(n71), .B1(A3[12]), .B2(n70), .C1(A2[12]), 
        .C2(n69), .ZN(n44) );
  NAND2_X1 U24 ( .A1(n49), .A2(n48), .ZN(O[14]) );
  AOI22_X1 U25 ( .A1(A0[14]), .A2(n68), .B1(A4[14]), .B2(sel[2]), .ZN(n49) );
  AOI222_X1 U26 ( .A1(A1[14]), .A2(n71), .B1(A3[14]), .B2(n70), .C1(A2[14]), 
        .C2(n69), .ZN(n48) );
  NAND2_X1 U27 ( .A1(n47), .A2(n46), .ZN(O[13]) );
  AOI22_X1 U28 ( .A1(A0[13]), .A2(n68), .B1(A4[13]), .B2(sel[2]), .ZN(n47) );
  AOI222_X1 U29 ( .A1(A1[13]), .A2(n71), .B1(A3[13]), .B2(n70), .C1(A2[13]), 
        .C2(n69), .ZN(n46) );
  NAND2_X1 U30 ( .A1(n51), .A2(n50), .ZN(O[15]) );
  AOI22_X1 U31 ( .A1(A0[15]), .A2(n68), .B1(A4[15]), .B2(sel[2]), .ZN(n51) );
  AOI222_X1 U32 ( .A1(A1[15]), .A2(n71), .B1(A3[15]), .B2(n70), .C1(A2[15]), 
        .C2(n69), .ZN(n50) );
  NAND2_X1 U33 ( .A1(n39), .A2(n38), .ZN(O[0]) );
  AOI22_X1 U34 ( .A1(A0[0]), .A2(n68), .B1(A4[0]), .B2(sel[2]), .ZN(n39) );
  AOI222_X1 U35 ( .A1(A1[0]), .A2(n71), .B1(A3[0]), .B2(n70), .C1(A2[0]), .C2(
        n69), .ZN(n38) );
  NAND2_X1 U36 ( .A1(n53), .A2(n52), .ZN(O[1]) );
  AOI22_X1 U37 ( .A1(A0[1]), .A2(n68), .B1(A4[1]), .B2(sel[2]), .ZN(n53) );
  AOI222_X1 U38 ( .A1(A1[1]), .A2(n71), .B1(A3[1]), .B2(n70), .C1(A2[1]), .C2(
        n69), .ZN(n52) );
  NAND2_X1 U39 ( .A1(n55), .A2(n54), .ZN(O[2]) );
  AOI22_X1 U40 ( .A1(A0[2]), .A2(n68), .B1(A4[2]), .B2(sel[2]), .ZN(n55) );
  AOI222_X1 U41 ( .A1(A1[2]), .A2(n71), .B1(A3[2]), .B2(n70), .C1(A2[2]), .C2(
        n69), .ZN(n54) );
  NAND2_X1 U42 ( .A1(n57), .A2(n56), .ZN(O[3]) );
  AOI22_X1 U43 ( .A1(A0[3]), .A2(n68), .B1(A4[3]), .B2(sel[2]), .ZN(n57) );
  AOI222_X1 U44 ( .A1(A1[3]), .A2(n71), .B1(A3[3]), .B2(n70), .C1(A2[3]), .C2(
        n69), .ZN(n56) );
  NAND2_X1 U45 ( .A1(n59), .A2(n58), .ZN(O[4]) );
  AOI22_X1 U46 ( .A1(A0[4]), .A2(n68), .B1(A4[4]), .B2(sel[2]), .ZN(n59) );
  AOI222_X1 U47 ( .A1(A1[4]), .A2(n71), .B1(A3[4]), .B2(n70), .C1(A2[4]), .C2(
        n69), .ZN(n58) );
  NAND2_X1 U48 ( .A1(n61), .A2(n60), .ZN(O[5]) );
  AOI22_X1 U49 ( .A1(A0[5]), .A2(n68), .B1(A4[5]), .B2(sel[2]), .ZN(n61) );
  AOI222_X1 U50 ( .A1(A1[5]), .A2(n71), .B1(A3[5]), .B2(n70), .C1(A2[5]), .C2(
        n69), .ZN(n60) );
  AOI22_X1 U51 ( .A1(A0[8]), .A2(n68), .B1(A4[8]), .B2(sel[2]), .ZN(n67) );
  AOI222_X1 U52 ( .A1(A1[7]), .A2(n71), .B1(A3[7]), .B2(n70), .C1(A2[7]), .C2(
        n69), .ZN(n64) );
  AND2_X4 U53 ( .A1(sel[1]), .A2(n74), .ZN(n69) );
endmodule


module MUX_5TO1_NBIT16_2 ( A0, A1, A2, A3, A4, sel, O );
  input [15:0] A0;
  input [15:0] A1;
  input [15:0] A2;
  input [15:0] A3;
  input [15:0] A4;
  input [2:0] sel;
  output [15:0] O;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76;

  AND2_X2 U1 ( .A1(sel[0]), .A2(n43), .ZN(n38) );
  AND2_X2 U2 ( .A1(sel[1]), .A2(n44), .ZN(n39) );
  AND2_X2 U3 ( .A1(sel[0]), .A2(sel[1]), .ZN(n40) );
  AND3_X1 U4 ( .A1(n44), .A2(n43), .A3(n42), .ZN(n41) );
  INV_X1 U5 ( .A(sel[1]), .ZN(n43) );
  INV_X1 U6 ( .A(sel[0]), .ZN(n44) );
  AOI222_X1 U7 ( .A1(A1[0]), .A2(n38), .B1(A2[0]), .B2(n39), .C1(A3[0]), .C2(
        n40), .ZN(n46) );
  INV_X1 U8 ( .A(sel[2]), .ZN(n42) );
  AOI22_X1 U9 ( .A1(A0[0]), .A2(n41), .B1(A4[0]), .B2(sel[2]), .ZN(n45) );
  NAND2_X1 U10 ( .A1(n46), .A2(n45), .ZN(O[0]) );
  AOI222_X1 U11 ( .A1(A1[1]), .A2(n38), .B1(A2[1]), .B2(n39), .C1(A3[1]), .C2(
        n40), .ZN(n48) );
  AOI22_X1 U12 ( .A1(A0[1]), .A2(n41), .B1(A4[1]), .B2(sel[2]), .ZN(n47) );
  NAND2_X1 U13 ( .A1(n48), .A2(n47), .ZN(O[1]) );
  AOI222_X1 U14 ( .A1(A1[2]), .A2(n38), .B1(A2[2]), .B2(n39), .C1(A3[2]), .C2(
        n40), .ZN(n50) );
  AOI22_X1 U15 ( .A1(A0[2]), .A2(n41), .B1(A4[2]), .B2(sel[2]), .ZN(n49) );
  NAND2_X1 U16 ( .A1(n50), .A2(n49), .ZN(O[2]) );
  AOI222_X1 U17 ( .A1(A1[3]), .A2(n38), .B1(A2[3]), .B2(n39), .C1(A3[3]), .C2(
        n40), .ZN(n52) );
  AOI22_X1 U18 ( .A1(A0[3]), .A2(n41), .B1(A4[3]), .B2(sel[2]), .ZN(n51) );
  NAND2_X1 U19 ( .A1(n52), .A2(n51), .ZN(O[3]) );
  AOI222_X1 U20 ( .A1(A1[4]), .A2(n38), .B1(A2[4]), .B2(n39), .C1(A3[4]), .C2(
        n40), .ZN(n54) );
  AOI22_X1 U21 ( .A1(A0[4]), .A2(n41), .B1(A4[4]), .B2(sel[2]), .ZN(n53) );
  NAND2_X1 U22 ( .A1(n54), .A2(n53), .ZN(O[4]) );
  AOI222_X1 U23 ( .A1(A1[5]), .A2(n38), .B1(A2[5]), .B2(n39), .C1(A3[5]), .C2(
        n40), .ZN(n56) );
  AOI22_X1 U24 ( .A1(A0[5]), .A2(n41), .B1(A4[5]), .B2(sel[2]), .ZN(n55) );
  NAND2_X1 U25 ( .A1(n56), .A2(n55), .ZN(O[5]) );
  AOI222_X1 U26 ( .A1(A1[6]), .A2(n38), .B1(A2[6]), .B2(n39), .C1(A3[6]), .C2(
        n40), .ZN(n58) );
  AOI22_X1 U27 ( .A1(A0[6]), .A2(n41), .B1(A4[6]), .B2(sel[2]), .ZN(n57) );
  NAND2_X1 U28 ( .A1(n58), .A2(n57), .ZN(O[6]) );
  AOI222_X1 U29 ( .A1(A1[7]), .A2(n38), .B1(A2[7]), .B2(n39), .C1(A3[7]), .C2(
        n40), .ZN(n60) );
  AOI22_X1 U30 ( .A1(A0[7]), .A2(n41), .B1(A4[7]), .B2(sel[2]), .ZN(n59) );
  NAND2_X1 U31 ( .A1(n60), .A2(n59), .ZN(O[7]) );
  AOI222_X1 U32 ( .A1(A1[8]), .A2(n38), .B1(A2[8]), .B2(n39), .C1(A3[8]), .C2(
        n40), .ZN(n62) );
  AOI22_X1 U33 ( .A1(A0[8]), .A2(n41), .B1(A4[8]), .B2(sel[2]), .ZN(n61) );
  NAND2_X1 U34 ( .A1(n62), .A2(n61), .ZN(O[8]) );
  AOI222_X1 U35 ( .A1(A1[9]), .A2(n38), .B1(A2[9]), .B2(n39), .C1(A3[9]), .C2(
        n40), .ZN(n64) );
  AOI22_X1 U36 ( .A1(A0[9]), .A2(n41), .B1(A4[9]), .B2(sel[2]), .ZN(n63) );
  NAND2_X1 U37 ( .A1(n64), .A2(n63), .ZN(O[9]) );
  AOI222_X1 U38 ( .A1(A1[10]), .A2(n38), .B1(A2[10]), .B2(n39), .C1(A3[10]), 
        .C2(n40), .ZN(n66) );
  AOI22_X1 U39 ( .A1(A0[10]), .A2(n41), .B1(A4[10]), .B2(sel[2]), .ZN(n65) );
  NAND2_X1 U40 ( .A1(n66), .A2(n65), .ZN(O[10]) );
  AOI222_X1 U41 ( .A1(A1[11]), .A2(n38), .B1(A2[11]), .B2(n39), .C1(A3[11]), 
        .C2(n40), .ZN(n68) );
  AOI22_X1 U42 ( .A1(A0[11]), .A2(n41), .B1(A4[11]), .B2(sel[2]), .ZN(n67) );
  NAND2_X1 U43 ( .A1(n68), .A2(n67), .ZN(O[11]) );
  AOI222_X1 U44 ( .A1(A1[12]), .A2(n38), .B1(A2[12]), .B2(n39), .C1(A3[12]), 
        .C2(n40), .ZN(n70) );
  AOI22_X1 U45 ( .A1(A0[12]), .A2(n41), .B1(A4[12]), .B2(sel[2]), .ZN(n69) );
  NAND2_X1 U46 ( .A1(n70), .A2(n69), .ZN(O[12]) );
  AOI222_X1 U47 ( .A1(A1[13]), .A2(n38), .B1(A2[13]), .B2(n39), .C1(A3[13]), 
        .C2(n40), .ZN(n72) );
  AOI22_X1 U48 ( .A1(A0[13]), .A2(n41), .B1(A4[13]), .B2(sel[2]), .ZN(n71) );
  NAND2_X1 U49 ( .A1(n72), .A2(n71), .ZN(O[13]) );
  AOI222_X1 U50 ( .A1(A1[14]), .A2(n38), .B1(A2[14]), .B2(n39), .C1(A3[14]), 
        .C2(n40), .ZN(n74) );
  AOI22_X1 U51 ( .A1(A0[14]), .A2(n41), .B1(A4[14]), .B2(sel[2]), .ZN(n73) );
  NAND2_X1 U52 ( .A1(n74), .A2(n73), .ZN(O[14]) );
  AOI222_X1 U53 ( .A1(A1[15]), .A2(n38), .B1(A2[15]), .B2(n39), .C1(A3[15]), 
        .C2(n40), .ZN(n76) );
  AOI22_X1 U54 ( .A1(A0[15]), .A2(n41), .B1(A4[15]), .B2(sel[2]), .ZN(n75) );
  NAND2_X1 U55 ( .A1(n76), .A2(n75), .ZN(O[15]) );
endmodule


module MUX_5TO1_NBIT16_3 ( A0, A1, A2, A3, A4, sel, O );
  input [15:0] A0;
  input [15:0] A1;
  input [15:0] A2;
  input [15:0] A3;
  input [15:0] A4;
  input [2:0] sel;
  output [15:0] O;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88;

  INV_X1 U1 ( .A(sel[1]), .ZN(n38) );
  INV_X1 U2 ( .A(n38), .ZN(n39) );
  CLKBUF_X1 U3 ( .A(n42), .Z(n43) );
  AND2_X2 U4 ( .A1(sel[0]), .A2(n42), .ZN(n46) );
  BUF_X1 U5 ( .A(sel[1]), .Z(n42) );
  CLKBUF_X1 U6 ( .A(n45), .Z(n40) );
  INV_X1 U7 ( .A(sel[0]), .ZN(n41) );
  AND2_X2 U8 ( .A1(n39), .A2(n41), .ZN(n45) );
  AND2_X1 U9 ( .A1(sel[0]), .A2(n38), .ZN(n47) );
  OAI221_X1 U10 ( .B1(A3[4]), .B2(n41), .C1(A2[4]), .C2(sel[0]), .A(n43), .ZN(
        n65) );
  AND3_X1 U11 ( .A1(n41), .A2(n38), .A3(n49), .ZN(n44) );
  AOI22_X1 U12 ( .A1(A0[2]), .A2(n44), .B1(A3[2]), .B2(n46), .ZN(n55) );
  NAND4_X1 U13 ( .A1(n57), .A2(n55), .A3(n56), .A4(n54), .ZN(O[2]) );
  INV_X2 U14 ( .A(n49), .ZN(n48) );
  NAND2_X1 U15 ( .A1(A4[2]), .A2(n48), .ZN(n54) );
  INV_X1 U16 ( .A(sel[1]), .ZN(n58) );
  INV_X1 U17 ( .A(sel[0]), .ZN(n63) );
  AOI222_X1 U18 ( .A1(A1[0]), .A2(n47), .B1(A2[0]), .B2(n40), .C1(A3[0]), .C2(
        n46), .ZN(n51) );
  INV_X1 U19 ( .A(sel[2]), .ZN(n49) );
  AOI22_X1 U20 ( .A1(A0[0]), .A2(n44), .B1(A4[0]), .B2(n48), .ZN(n50) );
  NAND2_X1 U21 ( .A1(n51), .A2(n50), .ZN(O[0]) );
  AOI222_X1 U22 ( .A1(A1[1]), .A2(n47), .B1(A2[1]), .B2(n40), .C1(A3[1]), .C2(
        n46), .ZN(n53) );
  AOI22_X1 U23 ( .A1(A0[1]), .A2(n44), .B1(A4[1]), .B2(n48), .ZN(n52) );
  NAND2_X1 U24 ( .A1(n53), .A2(n52), .ZN(O[1]) );
  NAND3_X1 U25 ( .A1(n42), .A2(n63), .A3(A2[2]), .ZN(n57) );
  NAND3_X1 U26 ( .A1(sel[0]), .A2(n58), .A3(A1[2]), .ZN(n56) );
  NAND2_X1 U27 ( .A1(A0[3]), .A2(n44), .ZN(n62) );
  NAND3_X1 U28 ( .A1(A1[3]), .A2(sel[0]), .A3(n38), .ZN(n61) );
  OAI221_X1 U29 ( .B1(A3[3]), .B2(n41), .C1(A2[3]), .C2(sel[0]), .A(n43), .ZN(
        n60) );
  NAND2_X1 U30 ( .A1(A4[3]), .A2(sel[2]), .ZN(n59) );
  NAND4_X1 U31 ( .A1(n62), .A2(n61), .A3(n60), .A4(n59), .ZN(O[3]) );
  NAND2_X1 U32 ( .A1(A1[4]), .A2(n47), .ZN(n66) );
  AOI22_X1 U33 ( .A1(A0[4]), .A2(n44), .B1(A4[4]), .B2(n48), .ZN(n64) );
  NAND3_X1 U34 ( .A1(n66), .A2(n65), .A3(n64), .ZN(O[4]) );
  AOI222_X1 U35 ( .A1(A1[5]), .A2(n47), .B1(A2[5]), .B2(n45), .C1(A3[5]), .C2(
        n46), .ZN(n68) );
  AOI22_X1 U36 ( .A1(A0[5]), .A2(n44), .B1(A4[5]), .B2(n48), .ZN(n67) );
  NAND2_X1 U37 ( .A1(n68), .A2(n67), .ZN(O[5]) );
  AOI222_X1 U38 ( .A1(A1[6]), .A2(n47), .B1(A2[6]), .B2(n45), .C1(A3[6]), .C2(
        n46), .ZN(n70) );
  AOI22_X1 U39 ( .A1(A0[6]), .A2(n44), .B1(A4[6]), .B2(n48), .ZN(n69) );
  NAND2_X1 U40 ( .A1(n70), .A2(n69), .ZN(O[6]) );
  AOI222_X1 U41 ( .A1(A1[7]), .A2(n47), .B1(A2[7]), .B2(n45), .C1(A3[7]), .C2(
        n46), .ZN(n72) );
  AOI22_X1 U42 ( .A1(A0[7]), .A2(n44), .B1(A4[7]), .B2(n48), .ZN(n71) );
  NAND2_X1 U43 ( .A1(n72), .A2(n71), .ZN(O[7]) );
  AOI222_X1 U44 ( .A1(A1[8]), .A2(n47), .B1(A2[8]), .B2(n45), .C1(A3[8]), .C2(
        n46), .ZN(n74) );
  AOI22_X1 U45 ( .A1(A0[8]), .A2(n44), .B1(A4[8]), .B2(n48), .ZN(n73) );
  NAND2_X1 U46 ( .A1(n74), .A2(n73), .ZN(O[8]) );
  AOI222_X1 U47 ( .A1(A1[9]), .A2(n47), .B1(A2[9]), .B2(n45), .C1(A3[9]), .C2(
        n46), .ZN(n76) );
  AOI22_X1 U48 ( .A1(A0[9]), .A2(n44), .B1(A4[9]), .B2(n48), .ZN(n75) );
  NAND2_X1 U49 ( .A1(n76), .A2(n75), .ZN(O[9]) );
  AOI222_X1 U50 ( .A1(A1[10]), .A2(n47), .B1(A2[10]), .B2(n45), .C1(A3[10]), 
        .C2(n46), .ZN(n78) );
  AOI22_X1 U51 ( .A1(A0[10]), .A2(n44), .B1(A4[10]), .B2(n48), .ZN(n77) );
  NAND2_X1 U52 ( .A1(n78), .A2(n77), .ZN(O[10]) );
  AOI222_X1 U53 ( .A1(A1[11]), .A2(n47), .B1(A2[11]), .B2(n45), .C1(A3[11]), 
        .C2(n46), .ZN(n80) );
  AOI22_X1 U54 ( .A1(A0[11]), .A2(n44), .B1(A4[11]), .B2(n48), .ZN(n79) );
  NAND2_X1 U55 ( .A1(n80), .A2(n79), .ZN(O[11]) );
  AOI222_X1 U56 ( .A1(A1[12]), .A2(n47), .B1(A2[12]), .B2(n45), .C1(A3[12]), 
        .C2(n46), .ZN(n82) );
  AOI22_X1 U57 ( .A1(A0[12]), .A2(n44), .B1(A4[12]), .B2(n48), .ZN(n81) );
  NAND2_X1 U58 ( .A1(n82), .A2(n81), .ZN(O[12]) );
  AOI222_X1 U59 ( .A1(A1[13]), .A2(n47), .B1(A2[13]), .B2(n45), .C1(A3[13]), 
        .C2(n46), .ZN(n84) );
  AOI22_X1 U60 ( .A1(A0[13]), .A2(n44), .B1(A4[13]), .B2(n48), .ZN(n83) );
  NAND2_X1 U61 ( .A1(n84), .A2(n83), .ZN(O[13]) );
  AOI222_X1 U62 ( .A1(A1[14]), .A2(n47), .B1(A2[14]), .B2(n45), .C1(A3[14]), 
        .C2(n46), .ZN(n86) );
  AOI22_X1 U63 ( .A1(A0[14]), .A2(n44), .B1(A4[14]), .B2(n48), .ZN(n85) );
  NAND2_X1 U64 ( .A1(n86), .A2(n85), .ZN(O[14]) );
  AOI222_X1 U65 ( .A1(A1[15]), .A2(n47), .B1(A2[15]), .B2(n40), .C1(A3[15]), 
        .C2(n46), .ZN(n88) );
  AOI22_X1 U66 ( .A1(A0[15]), .A2(n44), .B1(A4[15]), .B2(n48), .ZN(n87) );
  NAND2_X1 U67 ( .A1(n88), .A2(n87), .ZN(O[15]) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net17448, net17449, net17450, net17911, net17816, n4;

  XNOR2_X1 U1 ( .A(Ci), .B(n4), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(net17816) );
  CLKBUF_X1 U4 ( .A(B), .Z(net17911) );
  OAI21_X1 U5 ( .B1(net17911), .B2(A), .A(net17816), .ZN(net17450) );
  INV_X1 U6 ( .A(A), .ZN(net17448) );
  INV_X1 U7 ( .A(net17911), .ZN(net17449) );
  OAI21_X1 U8 ( .B1(net17448), .B2(net17449), .A(net17450), .ZN(Co) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(n4), .B(n5), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  INV_X1 U3 ( .A(n7), .ZN(n5) );
  NAND2_X1 U4 ( .A1(B), .A2(A), .ZN(n8) );
  NOR2_X1 U5 ( .A1(B), .A2(A), .ZN(n6) );
  AOI21_X1 U6 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  INV_X1 U7 ( .A(Ci), .ZN(n7) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(B), .B(n4), .ZN(S) );
  XNOR2_X1 U2 ( .A(n5), .B(A), .ZN(n4) );
  INV_X1 U3 ( .A(n7), .ZN(n5) );
  NAND2_X1 U4 ( .A1(B), .A2(A), .ZN(n8) );
  NOR2_X1 U5 ( .A1(B), .A2(A), .ZN(n6) );
  AOI21_X1 U6 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  INV_X1 U7 ( .A(Ci), .ZN(n7) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  XNOR2_X1 U1 ( .A(n7), .B(n4), .ZN(n9) );
  INV_X32 U2 ( .A(n5), .ZN(n4) );
  INV_X1 U3 ( .A(A), .ZN(n5) );
  AOI21_X1 U4 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  NAND2_X1 U5 ( .A1(B), .A2(A), .ZN(n8) );
  NOR2_X1 U6 ( .A1(B), .A2(A), .ZN(n6) );
  INV_X1 U7 ( .A(Ci), .ZN(n7) );
  XOR2_X1 U8 ( .A(n9), .B(B), .Z(S) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  BUF_X1 U1 ( .A(B), .Z(n4) );
  XNOR2_X1 U2 ( .A(n5), .B(n4), .ZN(S) );
  XOR2_X1 U3 ( .A(n6), .B(A), .Z(n5) );
  CLKBUF_X1 U4 ( .A(n8), .Z(n6) );
  NAND2_X1 U5 ( .A1(B), .A2(A), .ZN(n9) );
  NOR2_X1 U6 ( .A1(B), .A2(A), .ZN(n7) );
  AOI21_X1 U7 ( .B1(n8), .B2(n9), .A(n7), .ZN(Co) );
  INV_X1 U8 ( .A(Ci), .ZN(n8) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  INV_X1 U1 ( .A(n6), .ZN(n4) );
  NAND2_X1 U2 ( .A1(B), .A2(A), .ZN(n7) );
  AOI21_X1 U3 ( .B1(n6), .B2(n7), .A(n5), .ZN(Co) );
  NOR2_X1 U4 ( .A1(B), .A2(A), .ZN(n5) );
  INV_X1 U5 ( .A(Ci), .ZN(n6) );
  XOR2_X1 U6 ( .A(A), .B(n4), .Z(n8) );
  XOR2_X1 U7 ( .A(B), .B(n8), .Z(S) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  CLKBUF_X1 U1 ( .A(n7), .Z(n4) );
  INV_X1 U2 ( .A(n4), .ZN(n5) );
  NOR2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(B), .A2(A), .ZN(n8) );
  AOI21_X1 U5 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
  XOR2_X1 U7 ( .A(A), .B(n5), .Z(n9) );
  XOR2_X1 U8 ( .A(B), .B(n9), .Z(S) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9, n10;

  CLKBUF_X1 U1 ( .A(n8), .Z(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n5) );
  INV_X1 U3 ( .A(n4), .ZN(n6) );
  AOI21_X1 U4 ( .B1(n8), .B2(n9), .A(n7), .ZN(Co) );
  INV_X1 U5 ( .A(Ci), .ZN(n8) );
  NAND2_X1 U6 ( .A1(B), .A2(A), .ZN(n9) );
  NOR2_X1 U7 ( .A1(B), .A2(A), .ZN(n7) );
  XOR2_X1 U8 ( .A(A), .B(n6), .Z(n10) );
  XOR2_X1 U9 ( .A(n5), .B(n10), .Z(S) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  BUF_X1 U1 ( .A(B), .Z(n4) );
  OR2_X1 U2 ( .A1(B), .A2(A), .ZN(n5) );
  NAND2_X1 U3 ( .A1(Ci), .A2(n5), .ZN(n8) );
  CLKBUF_X1 U4 ( .A(Ci), .Z(n6) );
  NAND2_X1 U5 ( .A1(n8), .A2(n7), .ZN(Co) );
  NAND2_X1 U6 ( .A1(A), .A2(B), .ZN(n7) );
  XOR2_X1 U7 ( .A(n6), .B(A), .Z(n9) );
  XOR2_X1 U8 ( .A(n4), .B(n9), .Z(S) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XNOR2_X1 U1 ( .A(Ci), .B(n7), .ZN(S) );
  INV_X1 U2 ( .A(A), .ZN(n5) );
  XOR2_X1 U3 ( .A(B), .B(n5), .Z(n7) );
  INV_X1 U4 ( .A(Ci), .ZN(n6) );
  INV_X1 U5 ( .A(B), .ZN(n4) );
  OAI22_X1 U6 ( .A1(n7), .A2(n6), .B1(n5), .B2(n4), .ZN(Co) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_NBIT16_1 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  wire   [15:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_12 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_11 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_10 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_9 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_8 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_7 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_6 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11])
         );
  FA_5 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12])
         );
  FA_4 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13])
         );
  FA_3 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14])
         );
  FA_2 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15])
         );
  FA_1 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(Co) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net17530, net17531, net17532, net18100, n4, n5;

  XNOR2_X1 U1 ( .A(n4), .B(Ci), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(n5) );
  CLKBUF_X1 U4 ( .A(B), .Z(net18100) );
  INV_X1 U5 ( .A(A), .ZN(net17530) );
  OAI21_X1 U6 ( .B1(net18100), .B2(A), .A(n5), .ZN(net17532) );
  INV_X1 U7 ( .A(net18100), .ZN(net17531) );
  OAI21_X1 U8 ( .B1(net17530), .B2(net17531), .A(net17532), .ZN(Co) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15450, net18070, net18150, n4, n5, n6;
  assign Co = net15450;

  CLKBUF_X1 U1 ( .A(Ci), .Z(net18150) );
  AOI21_X1 U2 ( .B1(n5), .B2(n4), .A(n6), .ZN(net15450) );
  NOR2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(B), .A2(A), .ZN(n4) );
  INV_X1 U5 ( .A(Ci), .ZN(n5) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(net18070) );
  XNOR2_X1 U7 ( .A(net18150), .B(net18070), .ZN(S) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15456, n4, n5, n6, n7;
  assign Co = net15456;

  AOI21_X1 U1 ( .B1(n5), .B2(n4), .A(n6), .ZN(net15456) );
  NOR2_X1 U2 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U3 ( .A1(B), .A2(A), .ZN(n4) );
  INV_X1 U4 ( .A(Ci), .ZN(n5) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(n7) );
  XNOR2_X1 U6 ( .A(Ci), .B(n7), .ZN(S) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   net15389, net18148, net18153, n4, n5, n6;
  assign Co = net15389;

  OR2_X1 U1 ( .A1(A), .A2(B), .ZN(n4) );
  OAI21_X1 U2 ( .B1(Ci), .B2(n6), .A(n4), .ZN(n5) );
  INV_X1 U3 ( .A(n5), .ZN(net15389) );
  AND2_X1 U4 ( .A1(A), .A2(B), .ZN(n6) );
  XNOR2_X1 U5 ( .A(B), .B(A), .ZN(net18153) );
  CLKBUF_X1 U6 ( .A(Ci), .Z(net18148) );
  XNOR2_X1 U7 ( .A(net18148), .B(net18153), .ZN(S) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  NOR2_X1 U2 ( .A1(n8), .A2(n7), .ZN(Co) );
  AND2_X1 U3 ( .A1(A), .A2(B), .ZN(n5) );
  NOR2_X1 U4 ( .A1(Ci), .A2(n5), .ZN(n8) );
  XNOR2_X1 U5 ( .A(n4), .B(n6), .ZN(S) );
  XNOR2_X1 U6 ( .A(B), .B(A), .ZN(n6) );
  NOR2_X1 U7 ( .A1(B), .A2(A), .ZN(n7) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(n7), .B(n4), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n5), .A2(n6), .ZN(Co) );
  NOR2_X1 U4 ( .A1(Ci), .A2(n8), .ZN(n5) );
  NOR2_X1 U5 ( .A1(B), .A2(A), .ZN(n6) );
  BUF_X1 U6 ( .A(Ci), .Z(n7) );
  AND2_X1 U7 ( .A1(B), .A2(A), .ZN(n8) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(n5), .B(n4), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  INV_X1 U3 ( .A(n7), .ZN(n5) );
  NAND2_X1 U4 ( .A1(B), .A2(A), .ZN(n8) );
  NOR2_X1 U5 ( .A1(B), .A2(A), .ZN(n6) );
  AOI21_X1 U6 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  INV_X1 U7 ( .A(Ci), .ZN(n7) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(n5), .B(n4), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  CLKBUF_X1 U3 ( .A(Ci), .Z(n5) );
  AOI21_X1 U4 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  NAND2_X1 U5 ( .A1(B), .A2(A), .ZN(n8) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
  NOR2_X1 U7 ( .A1(B), .A2(A), .ZN(n6) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(n5), .B(n4), .ZN(S) );
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n4) );
  INV_X1 U3 ( .A(n7), .ZN(n5) );
  AOI21_X1 U4 ( .B1(n7), .B2(n8), .A(n6), .ZN(Co) );
  INV_X1 U5 ( .A(Ci), .ZN(n7) );
  NOR2_X1 U6 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U7 ( .A1(B), .A2(A), .ZN(n8) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XNOR2_X1 U1 ( .A(n4), .B(B), .ZN(S) );
  XNOR2_X1 U2 ( .A(Ci), .B(A), .ZN(n4) );
  AOI21_X1 U3 ( .B1(n6), .B2(n7), .A(n5), .ZN(Co) );
  NOR2_X1 U4 ( .A1(B), .A2(A), .ZN(n5) );
  NAND2_X1 U5 ( .A1(B), .A2(A), .ZN(n7) );
  INV_X1 U6 ( .A(Ci), .ZN(n6) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8, n9;

  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n5) );
  OR2_X1 U3 ( .A1(B), .A2(A), .ZN(n6) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n6), .ZN(n8) );
  NAND2_X1 U5 ( .A1(A), .A2(B), .ZN(n7) );
  NAND2_X1 U6 ( .A1(n8), .A2(n7), .ZN(Co) );
  XOR2_X1 U7 ( .A(n5), .B(A), .Z(n9) );
  XOR2_X1 U8 ( .A(n4), .B(n9), .Z(S) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  OAI22_X1 U2 ( .A1(n8), .A2(n7), .B1(n6), .B2(n5), .ZN(Co) );
  XNOR2_X1 U3 ( .A(Ci), .B(n8), .ZN(S) );
  INV_X1 U4 ( .A(A), .ZN(n6) );
  XOR2_X1 U5 ( .A(n6), .B(n4), .Z(n8) );
  INV_X1 U6 ( .A(Ci), .ZN(n7) );
  INV_X1 U7 ( .A(B), .ZN(n5) );
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


module RCA_NBIT16_2 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Ci;
  output Co;

  wire   [15:1] CTMP;

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
  FA_17 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(Co) );
endmodule


module BOOTHMUL ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   \selVector[3][2] , \selVector[3][1] , \selVector[3][0] ,
         \selVector[2][2] , \selVector[2][1] , \selVector[2][0] ,
         \selVector[1][2] , \selVector[1][1] , \selVector[1][0] ,
         \selVector[0][2] , \selVector[0][1] , \selVector[0][0] ,
         \muxOutVector[3][15] , \muxOutVector[3][14] , \muxOutVector[3][13] ,
         \muxOutVector[3][12] , \muxOutVector[3][11] , \muxOutVector[3][10] ,
         \muxOutVector[3][9] , \muxOutVector[3][8] , \muxOutVector[3][7] ,
         \muxOutVector[3][6] , \muxOutVector[3][5] , \muxOutVector[3][4] ,
         \muxOutVector[3][3] , \muxOutVector[3][2] , \muxOutVector[3][1] ,
         \muxOutVector[3][0] , \muxOutVector[2][15] , \muxOutVector[2][14] ,
         \muxOutVector[2][13] , \muxOutVector[2][12] , \muxOutVector[2][11] ,
         \muxOutVector[2][10] , \muxOutVector[2][9] , \muxOutVector[2][8] ,
         \muxOutVector[2][7] , \muxOutVector[2][6] , \muxOutVector[2][5] ,
         \muxOutVector[2][4] , \muxOutVector[2][3] , \muxOutVector[2][2] ,
         \muxOutVector[2][1] , \muxOutVector[2][0] , \muxOutVector[1][15] ,
         \muxOutVector[1][14] , \muxOutVector[1][13] , \muxOutVector[1][12] ,
         \muxOutVector[1][11] , \muxOutVector[1][10] , \muxOutVector[1][9] ,
         \muxOutVector[1][8] , \muxOutVector[1][7] , \muxOutVector[1][6] ,
         \muxOutVector[1][5] , \muxOutVector[1][4] , \muxOutVector[1][3] ,
         \muxOutVector[1][2] , \muxOutVector[1][1] , \muxOutVector[1][0] ,
         \muxOutVector[0][15] , \muxOutVector[0][14] , \muxOutVector[0][13] ,
         \muxOutVector[0][12] , \muxOutVector[0][11] , \muxOutVector[0][10] ,
         \muxOutVector[0][9] , \muxOutVector[0][8] , \muxOutVector[0][7] ,
         \muxOutVector[0][6] , \muxOutVector[0][5] , \muxOutVector[0][4] ,
         \muxOutVector[0][3] , \muxOutVector[0][2] , \muxOutVector[0][1] ,
         \muxOutVector[0][0] , \sumVector[2][15] , \sumVector[2][14] ,
         \sumVector[2][13] , \sumVector[2][12] , \sumVector[2][11] ,
         \sumVector[2][10] , \sumVector[2][9] , \sumVector[2][8] ,
         \sumVector[2][7] , \sumVector[2][6] , \sumVector[2][5] ,
         \sumVector[2][4] , \sumVector[2][3] , \sumVector[2][2] ,
         \sumVector[2][1] , \sumVector[2][0] , \sumVector[1][15] ,
         \sumVector[1][14] , \sumVector[1][13] , \sumVector[1][12] ,
         \sumVector[1][11] , \sumVector[1][10] , \sumVector[1][9] ,
         \sumVector[1][8] , \sumVector[1][7] , \sumVector[1][6] ,
         \sumVector[1][5] , \sumVector[1][4] , \sumVector[1][3] ,
         \sumVector[1][2] , \sumVector[1][1] , \sumVector[1][0] ,
         \r81/DIFF[2] , \r81/DIFF[3] , \r81/DIFF[4] , \r81/DIFF[5] ,
         \r81/DIFF[6] , \r81/DIFF[7] , n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59;

  BE_BLOCK_0 eb_0 ( .b({B[1:0], 1'b0}), .sel({\selVector[0][2] , 
        \selVector[0][1] , \selVector[0][0] }) );
  MUX_5TO1_NBIT16_0 mux_0 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A1({n41, n41, 
        n41, n41, n41, n41, n41, n41, n41, A[6:0]}), .A2({n39, n39, n32, n32, 
        n38, n38, n38, n38, \r81/DIFF[7] , \r81/DIFF[6] , \r81/DIFF[5] , 
        \r81/DIFF[4] , \r81/DIFF[3] , \r81/DIFF[2] , n35, A[0]}), .A3({n43, 
        n43, n42, n43, n42, n42, n42, n42, A[6:0], 1'b0}), .A4({n32, n32, n37, 
        n37, n37, n37, n37, \r81/DIFF[7] , \r81/DIFF[6] , \r81/DIFF[5] , 
        \r81/DIFF[4] , \r81/DIFF[3] , n57, n36, A[0], 1'b0}), .sel({
        \selVector[0][2] , \selVector[0][1] , \selVector[0][0] }), .O({
        \muxOutVector[0][15] , \muxOutVector[0][14] , \muxOutVector[0][13] , 
        \muxOutVector[0][12] , \muxOutVector[0][11] , \muxOutVector[0][10] , 
        \muxOutVector[0][9] , \muxOutVector[0][8] , \muxOutVector[0][7] , 
        \muxOutVector[0][6] , \muxOutVector[0][5] , \muxOutVector[0][4] , 
        \muxOutVector[0][3] , \muxOutVector[0][2] , \muxOutVector[0][1] , 
        \muxOutVector[0][0] }) );
  BE_BLOCK_3 eb_1 ( .b(B[3:1]), .sel({\selVector[1][2] , \selVector[1][1] , 
        \selVector[1][0] }) );
  RCA_NBIT16_0 sum_1 ( .A({\muxOutVector[0][15] , \muxOutVector[0][14] , 
        \muxOutVector[0][13] , \muxOutVector[0][12] , \muxOutVector[0][11] , 
        \muxOutVector[0][10] , \muxOutVector[0][9] , \muxOutVector[0][8] , 
        \muxOutVector[0][7] , \muxOutVector[0][6] , \muxOutVector[0][5] , 
        \muxOutVector[0][4] , \muxOutVector[0][3] , \muxOutVector[0][2] , 
        \muxOutVector[0][1] , \muxOutVector[0][0] }), .B({
        \muxOutVector[1][15] , \muxOutVector[1][14] , \muxOutVector[1][13] , 
        \muxOutVector[1][12] , \muxOutVector[1][11] , \muxOutVector[1][10] , 
        \muxOutVector[1][9] , \muxOutVector[1][8] , \muxOutVector[1][7] , 
        \muxOutVector[1][6] , \muxOutVector[1][5] , \muxOutVector[1][4] , 
        \muxOutVector[1][3] , \muxOutVector[1][2] , \muxOutVector[1][1] , 
        \muxOutVector[1][0] }), .Ci(1'b0), .S({\sumVector[1][15] , 
        \sumVector[1][14] , \sumVector[1][13] , \sumVector[1][12] , 
        \sumVector[1][11] , \sumVector[1][10] , \sumVector[1][9] , 
        \sumVector[1][8] , \sumVector[1][7] , \sumVector[1][6] , 
        \sumVector[1][5] , \sumVector[1][4] , \sumVector[1][3] , 
        \sumVector[1][2] , \sumVector[1][1] , \sumVector[1][0] }) );
  MUX_5TO1_NBIT16_3 mux_1 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A1({n42, n42, 
        n42, n42, n42, n42, n42, A[6:0], 1'b0, 1'b0}), .A2({n32, n32, n32, n38, 
        n38, n38, \r81/DIFF[7] , \r81/DIFF[6] , \r81/DIFF[5] , \r81/DIFF[4] , 
        n58, n57, n35, A[0], 1'b0, 1'b0}), .A3({n43, n43, n43, n43, n43, n43, 
        A[6:0], 1'b0, 1'b0, 1'b0}), .A4({n37, n37, n37, n37, n37, 
        \r81/DIFF[7] , \r81/DIFF[6] , \r81/DIFF[5] , \r81/DIFF[4] , n58, n57, 
        n36, A[0], 1'b0, 1'b0, 1'b0}), .sel({\selVector[1][2] , 
        \selVector[1][1] , \selVector[1][0] }), .O({\muxOutVector[1][15] , 
        \muxOutVector[1][14] , \muxOutVector[1][13] , \muxOutVector[1][12] , 
        \muxOutVector[1][11] , \muxOutVector[1][10] , \muxOutVector[1][9] , 
        \muxOutVector[1][8] , \muxOutVector[1][7] , \muxOutVector[1][6] , 
        \muxOutVector[1][5] , \muxOutVector[1][4] , \muxOutVector[1][3] , 
        \muxOutVector[1][2] , \muxOutVector[1][1] , \muxOutVector[1][0] }) );
  BE_BLOCK_2 eb_2 ( .b(B[5:3]), .sel({\selVector[2][2] , \selVector[2][1] , 
        \selVector[2][0] }) );
  RCA_NBIT16_2 sum_2 ( .A({\muxOutVector[2][15] , \muxOutVector[2][14] , 
        \muxOutVector[2][13] , \muxOutVector[2][12] , \muxOutVector[2][11] , 
        \muxOutVector[2][10] , \muxOutVector[2][9] , \muxOutVector[2][8] , 
        \muxOutVector[2][7] , \muxOutVector[2][6] , \muxOutVector[2][5] , 
        \muxOutVector[2][4] , \muxOutVector[2][3] , \muxOutVector[2][2] , 
        \muxOutVector[2][1] , \muxOutVector[2][0] }), .B({\sumVector[1][15] , 
        \sumVector[1][14] , \sumVector[1][13] , \sumVector[1][12] , 
        \sumVector[1][11] , \sumVector[1][10] , \sumVector[1][9] , 
        \sumVector[1][8] , \sumVector[1][7] , \sumVector[1][6] , 
        \sumVector[1][5] , \sumVector[1][4] , \sumVector[1][3] , 
        \sumVector[1][2] , \sumVector[1][1] , \sumVector[1][0] }), .Ci(1'b0), 
        .S({\sumVector[2][15] , \sumVector[2][14] , \sumVector[2][13] , 
        \sumVector[2][12] , \sumVector[2][11] , \sumVector[2][10] , 
        \sumVector[2][9] , \sumVector[2][8] , \sumVector[2][7] , 
        \sumVector[2][6] , \sumVector[2][5] , \sumVector[2][4] , 
        \sumVector[2][3] , \sumVector[2][2] , \sumVector[2][1] , 
        \sumVector[2][0] }) );
  MUX_5TO1_NBIT16_2 mux_2 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A1({n42, n41, 
        n41, n42, n42, A[6:0], 1'b0, 1'b0, 1'b0, 1'b0}), .A2({n32, n32, n32, 
        n32, \r81/DIFF[7] , \r81/DIFF[6] , \r81/DIFF[5] , \r81/DIFF[4] , n58, 
        n57, n35, A[0], 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n42, n42, n42, n42, 
        A[6:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A4({n37, n37, n37, 
        \r81/DIFF[7] , \r81/DIFF[6] , n33, \r81/DIFF[4] , n58, n57, n36, A[0], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({\selVector[2][2] , 
        \selVector[2][1] , \selVector[2][0] }), .O({\muxOutVector[2][15] , 
        \muxOutVector[2][14] , \muxOutVector[2][13] , \muxOutVector[2][12] , 
        \muxOutVector[2][11] , \muxOutVector[2][10] , \muxOutVector[2][9] , 
        \muxOutVector[2][8] , \muxOutVector[2][7] , \muxOutVector[2][6] , 
        \muxOutVector[2][5] , \muxOutVector[2][4] , \muxOutVector[2][3] , 
        \muxOutVector[2][2] , \muxOutVector[2][1] , \muxOutVector[2][0] }) );
  BE_BLOCK_1 eb_3 ( .b(B[7:5]), .sel({\selVector[3][2] , \selVector[3][1] , 
        \selVector[3][0] }) );
  RCA_NBIT16_1 sum_3 ( .A({\muxOutVector[3][15] , \muxOutVector[3][14] , 
        \muxOutVector[3][13] , \muxOutVector[3][12] , \muxOutVector[3][11] , 
        \muxOutVector[3][10] , \muxOutVector[3][9] , \muxOutVector[3][8] , 
        \muxOutVector[3][7] , \muxOutVector[3][6] , \muxOutVector[3][5] , 
        \muxOutVector[3][4] , \muxOutVector[3][3] , \muxOutVector[3][2] , 
        \muxOutVector[3][1] , \muxOutVector[3][0] }), .B({\sumVector[2][15] , 
        \sumVector[2][14] , \sumVector[2][13] , \sumVector[2][12] , 
        \sumVector[2][11] , \sumVector[2][10] , \sumVector[2][9] , 
        \sumVector[2][8] , \sumVector[2][7] , \sumVector[2][6] , 
        \sumVector[2][5] , \sumVector[2][4] , \sumVector[2][3] , 
        \sumVector[2][2] , \sumVector[2][1] , \sumVector[2][0] }), .Ci(1'b0), 
        .S(P) );
  MUX_5TO1_NBIT16_1 mux_3 ( .A0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A1({n41, n41, 
        n41, A[6:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A2({n37, n37, 
        \r81/DIFF[7] , \r81/DIFF[6] , n33, \r81/DIFF[4] , n58, n57, n35, A[0], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A3({n41, n41, A[6:0], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .A4({n37, \r81/DIFF[7] , 
        \r81/DIFF[6] , n33, \r81/DIFF[4] , n58, n57, n36, A[0], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({\selVector[3][2] , 
        \selVector[3][1] , \selVector[3][0] }), .O({\muxOutVector[3][15] , 
        \muxOutVector[3][14] , \muxOutVector[3][13] , \muxOutVector[3][12] , 
        \muxOutVector[3][11] , \muxOutVector[3][10] , \muxOutVector[3][9] , 
        \muxOutVector[3][8] , \muxOutVector[3][7] , \muxOutVector[3][6] , 
        \muxOutVector[3][5] , \muxOutVector[3][4] , \muxOutVector[3][3] , 
        \muxOutVector[3][2] , \muxOutVector[3][1] , \muxOutVector[3][0] }) );
  OR2_X1 U23 ( .A1(A[1]), .A2(A[0]), .ZN(n55) );
  INV_X1 U24 ( .A(n54), .ZN(n32) );
  BUF_X2 U25 ( .A(n40), .Z(n38) );
  CLKBUF_X1 U26 ( .A(\r81/DIFF[5] ), .Z(n33) );
  NAND4_X1 U27 ( .A1(n49), .A2(n48), .A3(n47), .A4(n46), .ZN(n34) );
  XOR2_X2 U28 ( .A(n55), .B(A[2]), .Z(n57) );
  XOR2_X1 U29 ( .A(A[1]), .B(A[0]), .Z(n35) );
  XOR2_X1 U30 ( .A(A[1]), .B(A[0]), .Z(n36) );
  BUF_X1 U31 ( .A(n59), .Z(n40) );
  INV_X2 U32 ( .A(n44), .ZN(n41) );
  BUF_X1 U33 ( .A(n40), .Z(n37) );
  BUF_X1 U34 ( .A(n40), .Z(n39) );
  INV_X1 U35 ( .A(n44), .ZN(n42) );
  OR2_X1 U36 ( .A1(n50), .A2(A[4]), .ZN(n51) );
  OR2_X1 U37 ( .A1(n51), .A2(A[5]), .ZN(n52) );
  OR2_X1 U38 ( .A1(n52), .A2(A[6]), .ZN(n53) );
  INV_X1 U39 ( .A(A[7]), .ZN(n44) );
  OAI21_X2 U40 ( .B1(n53), .B2(n45), .A(n54), .ZN(\r81/DIFF[7] ) );
  INV_X1 U41 ( .A(A[7]), .ZN(n45) );
  INV_X1 U42 ( .A(n44), .ZN(n43) );
  INV_X1 U43 ( .A(A[1]), .ZN(n47) );
  INV_X1 U44 ( .A(A[0]), .ZN(n46) );
  INV_X1 U45 ( .A(A[2]), .ZN(n49) );
  NAND3_X1 U46 ( .A1(n47), .A2(n46), .A3(n49), .ZN(n56) );
  XOR2_X1 U47 ( .A(n56), .B(A[3]), .Z(n58) );
  INV_X1 U48 ( .A(A[3]), .ZN(n48) );
  NAND4_X1 U49 ( .A1(n49), .A2(n48), .A3(n47), .A4(n46), .ZN(n50) );
  XOR2_X1 U50 ( .A(n34), .B(A[4]), .Z(\r81/DIFF[4] ) );
  XOR2_X1 U51 ( .A(n51), .B(A[5]), .Z(\r81/DIFF[5] ) );
  XOR2_X1 U52 ( .A(n52), .B(A[6]), .Z(\r81/DIFF[6] ) );
  NAND2_X1 U53 ( .A1(n53), .A2(n45), .ZN(n54) );
  INV_X1 U54 ( .A(n54), .ZN(n59) );
  XOR2_X1 U55 ( .A(n55), .B(A[2]), .Z(\r81/DIFF[2] ) );
  XOR2_X1 U56 ( .A(n56), .B(A[3]), .Z(\r81/DIFF[3] ) );
endmodule

