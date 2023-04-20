/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Apr 20 19:05:17 2023
/////////////////////////////////////////////////////////////


module PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Cin, g, p );
  input [31:0] A;
  input [31:0] B;
  output [32:1] g;
  output [32:1] p;
  input Cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;

  XOR2_X1 U37 ( .A(B[8]), .B(A[8]), .Z(p[9]) );
  XOR2_X1 U39 ( .A(B[6]), .B(A[6]), .Z(p[7]) );
  XOR2_X1 U40 ( .A(B[5]), .B(A[5]), .Z(p[6]) );
  XOR2_X1 U41 ( .A(B[4]), .B(A[4]), .Z(p[5]) );
  XOR2_X1 U43 ( .A(B[2]), .B(A[2]), .Z(p[3]) );
  XOR2_X1 U45 ( .A(B[30]), .B(A[30]), .Z(p[31]) );
  XOR2_X1 U46 ( .A(B[29]), .B(A[29]), .Z(p[30]) );
  XOR2_X1 U47 ( .A(B[1]), .B(A[1]), .Z(p[2]) );
  XOR2_X1 U48 ( .A(B[28]), .B(A[28]), .Z(p[29]) );
  XOR2_X1 U49 ( .A(B[27]), .B(A[27]), .Z(p[28]) );
  XOR2_X1 U50 ( .A(B[26]), .B(A[26]), .Z(p[27]) );
  XOR2_X1 U51 ( .A(B[25]), .B(A[25]), .Z(p[26]) );
  XOR2_X1 U52 ( .A(B[24]), .B(A[24]), .Z(p[25]) );
  XOR2_X1 U54 ( .A(B[22]), .B(A[22]), .Z(p[23]) );
  XOR2_X1 U55 ( .A(B[21]), .B(A[21]), .Z(p[22]) );
  XOR2_X1 U56 ( .A(B[20]), .B(A[20]), .Z(p[21]) );
  XOR2_X1 U57 ( .A(B[19]), .B(A[19]), .Z(p[20]) );
  XOR2_X1 U58 ( .A(B[18]), .B(A[18]), .Z(p[19]) );
  XOR2_X1 U59 ( .A(B[17]), .B(A[17]), .Z(p[18]) );
  XOR2_X1 U60 ( .A(B[16]), .B(A[16]), .Z(p[17]) );
  XOR2_X1 U62 ( .A(B[14]), .B(A[14]), .Z(p[15]) );
  XOR2_X1 U63 ( .A(B[13]), .B(A[13]), .Z(p[14]) );
  XOR2_X1 U64 ( .A(B[12]), .B(A[12]), .Z(p[13]) );
  XOR2_X1 U66 ( .A(B[10]), .B(A[10]), .Z(p[11]) );
  XOR2_X1 U67 ( .A(B[9]), .B(A[9]), .Z(p[10]) );
  XOR2_X1 U1 ( .A(A[15]), .B(B[15]), .Z(p[16]) );
  XOR2_X1 U2 ( .A(A[3]), .B(B[3]), .Z(p[4]) );
  AND2_X1 U3 ( .A1(B[3]), .A2(A[3]), .ZN(g[4]) );
  NAND2_X1 U4 ( .A1(n5), .A2(B[11]), .ZN(n6) );
  NAND2_X1 U5 ( .A1(n4), .A2(A[11]), .ZN(n7) );
  NAND2_X1 U6 ( .A1(n6), .A2(n7), .ZN(p[12]) );
  INV_X1 U7 ( .A(B[11]), .ZN(n4) );
  INV_X1 U8 ( .A(A[11]), .ZN(n5) );
  NAND2_X1 U9 ( .A1(n9), .A2(B[7]), .ZN(n10) );
  NAND2_X1 U10 ( .A1(n8), .A2(A[7]), .ZN(n11) );
  NAND2_X1 U11 ( .A1(n10), .A2(n11), .ZN(p[8]) );
  INV_X1 U12 ( .A(B[7]), .ZN(n8) );
  INV_X1 U13 ( .A(A[7]), .ZN(n9) );
  NAND2_X1 U14 ( .A1(n13), .A2(B[31]), .ZN(n14) );
  NAND2_X1 U15 ( .A1(n12), .A2(A[31]), .ZN(n15) );
  NAND2_X1 U16 ( .A1(n14), .A2(n15), .ZN(p[32]) );
  INV_X1 U17 ( .A(B[31]), .ZN(n12) );
  INV_X1 U18 ( .A(A[31]), .ZN(n13) );
  NAND2_X1 U19 ( .A1(n17), .A2(B[23]), .ZN(n18) );
  NAND2_X1 U20 ( .A1(n16), .A2(A[23]), .ZN(n19) );
  NAND2_X1 U21 ( .A1(n18), .A2(n19), .ZN(p[24]) );
  INV_X1 U22 ( .A(B[23]), .ZN(n16) );
  INV_X1 U23 ( .A(A[23]), .ZN(n17) );
  XNOR2_X1 U24 ( .A(n2), .B(A[0]), .ZN(p[1]) );
  AND2_X1 U25 ( .A1(B[14]), .A2(A[14]), .ZN(g[15]) );
  AND2_X1 U26 ( .A1(B[6]), .A2(A[6]), .ZN(g[7]) );
  AND2_X1 U27 ( .A1(B[7]), .A2(A[7]), .ZN(g[8]) );
  AND2_X1 U28 ( .A1(B[10]), .A2(A[10]), .ZN(g[11]) );
  AND2_X1 U29 ( .A1(B[11]), .A2(A[11]), .ZN(g[12]) );
  AND2_X1 U30 ( .A1(B[30]), .A2(A[30]), .ZN(g[31]) );
  AND2_X1 U31 ( .A1(B[31]), .A2(A[31]), .ZN(g[32]) );
  AND2_X1 U32 ( .A1(B[12]), .A2(A[12]), .ZN(g[13]) );
  AND2_X1 U33 ( .A1(B[13]), .A2(A[13]), .ZN(g[14]) );
  AND2_X1 U34 ( .A1(B[26]), .A2(A[26]), .ZN(g[27]) );
  AND2_X1 U35 ( .A1(B[27]), .A2(A[27]), .ZN(g[28]) );
  AND2_X1 U36 ( .A1(B[8]), .A2(A[8]), .ZN(g[9]) );
  AND2_X1 U38 ( .A1(B[9]), .A2(A[9]), .ZN(g[10]) );
  AND2_X1 U42 ( .A1(B[22]), .A2(A[22]), .ZN(g[23]) );
  AND2_X1 U44 ( .A1(B[23]), .A2(A[23]), .ZN(g[24]) );
  AND2_X1 U53 ( .A1(B[1]), .A2(A[1]), .ZN(g[2]) );
  OAI21_X1 U61 ( .B1(A[0]), .B2(B[0]), .A(Cin), .ZN(n3) );
  AND2_X1 U65 ( .A1(B[2]), .A2(A[2]), .ZN(g[3]) );
  AND2_X1 U68 ( .A1(B[18]), .A2(A[18]), .ZN(g[19]) );
  AND2_X1 U69 ( .A1(B[19]), .A2(A[19]), .ZN(g[20]) );
  AND2_X1 U70 ( .A1(B[20]), .A2(A[20]), .ZN(g[21]) );
  AND2_X1 U71 ( .A1(B[21]), .A2(A[21]), .ZN(g[22]) );
  AND2_X1 U72 ( .A1(B[16]), .A2(A[16]), .ZN(g[17]) );
  AND2_X1 U73 ( .A1(B[17]), .A2(A[17]), .ZN(g[18]) );
  AND2_X1 U74 ( .A1(B[24]), .A2(A[24]), .ZN(g[25]) );
  AND2_X1 U75 ( .A1(B[25]), .A2(A[25]), .ZN(g[26]) );
  INV_X1 U76 ( .A(B[0]), .ZN(n2) );
  INV_X1 U77 ( .A(A[0]), .ZN(n1) );
  AND2_X1 U78 ( .A1(B[5]), .A2(A[5]), .ZN(g[6]) );
  AND2_X1 U79 ( .A1(B[29]), .A2(A[29]), .ZN(g[30]) );
  AND2_X1 U80 ( .A1(B[4]), .A2(A[4]), .ZN(g[5]) );
  AND2_X1 U81 ( .A1(B[28]), .A2(A[28]), .ZN(g[29]) );
  AND2_X1 U82 ( .A1(B[15]), .A2(A[15]), .ZN(g[16]) );
  OAI21_X1 U83 ( .B1(n2), .B2(n1), .A(n3), .ZN(g[1]) );
endmodule


module G_BLOCK_0 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n2;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(G_out) );
endmodule


module PG_BLOCK_0 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   net1896, n2;
  assign net1896 = P_left;

  AOI21_X1 U1 ( .B1(net1896), .B2(G_right), .A(G_left), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P_right), .A2(net1896), .ZN(P_out) );
endmodule


module PG_BLOCK_26 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n2;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module G_BLOCK_8 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n3, n4, n5;

  OAI21_X1 U1 ( .B1(n3), .B2(n4), .A(n5), .ZN(G_out) );
  INV_X1 U2 ( .A(P_left), .ZN(n3) );
  INV_X1 U3 ( .A(G_right), .ZN(n4) );
  INV_X1 U4 ( .A(G_left), .ZN(n5) );
endmodule


module G_BLOCK_1 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(n3), .A2(n4), .ZN(G_out) );
  NOR2_X1 U2 ( .A1(G_left), .A2(P_left), .ZN(n4) );
  NOR2_X1 U3 ( .A1(G_right), .A2(G_left), .ZN(n3) );
endmodule


module G_BLOCK_2 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_3 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_4 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_5 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(n4), .A2(n5), .ZN(G_out) );
  NAND2_X1 U2 ( .A1(G_right), .A2(P_left), .ZN(n4) );
  INV_X1 U3 ( .A(G_left), .ZN(n5) );
endmodule


module G_BLOCK_6 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_7 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(n4), .A2(n5), .ZN(G_out) );
  NAND2_X1 U2 ( .A1(G_right), .A2(P_left), .ZN(n4) );
  INV_X1 U3 ( .A(G_left), .ZN(n5) );
endmodule


module PG_BLOCK_1 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n4, n5;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(G_left), .ZN(n4) );
  NAND2_X1 U3 ( .A1(G_right), .A2(P_left), .ZN(n5) );
  NAND2_X1 U4 ( .A1(n4), .A2(n5), .ZN(G_out) );
endmodule


module PG_BLOCK_2 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module PG_BLOCK_3 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  NAND2_X1 U2 ( .A1(n3), .A2(n4), .ZN(G_out) );
  INV_X1 U3 ( .A(G_left), .ZN(n3) );
  NAND2_X1 U4 ( .A1(G_right), .A2(P_left), .ZN(n4) );
endmodule


module PG_BLOCK_4 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  NAND2_X1 U2 ( .A1(n3), .A2(n4), .ZN(G_out) );
  INV_X1 U3 ( .A(G_left), .ZN(n3) );
  NAND2_X1 U4 ( .A1(G_right), .A2(P_left), .ZN(n4) );
endmodule


module PG_BLOCK_5 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n4, n5;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(G_left), .ZN(n4) );
  NAND2_X1 U3 ( .A1(G_right), .A2(P_left), .ZN(n5) );
  NAND2_X1 U4 ( .A1(n5), .A2(n4), .ZN(G_out) );
endmodule


module PG_BLOCK_6 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AND2_X1 U1 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
  INV_X1 U2 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module PG_BLOCK_7 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4, n5;

  OAI21_X1 U1 ( .B1(n3), .B2(n4), .A(n5), .ZN(G_out) );
  INV_X1 U2 ( .A(P_left), .ZN(n3) );
  INV_X1 U3 ( .A(G_right), .ZN(n4) );
  INV_X1 U4 ( .A(G_left), .ZN(n5) );
  AND2_X1 U5 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_8 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(G_right), .A2(G_left), .ZN(n3) );
  NOR2_X1 U2 ( .A1(P_left), .A2(G_left), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n3), .A2(n4), .ZN(G_out) );
  AND2_X1 U4 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_9 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(n4), .A2(n5), .ZN(G_out) );
  NAND2_X1 U2 ( .A1(P_left), .A2(G_right), .ZN(n4) );
  INV_X1 U3 ( .A(G_left), .ZN(n5) );
  AND2_X1 U4 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_10 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_11 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_12 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_13 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4;

  CLKBUF_X1 U1 ( .A(P_left), .Z(n3) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n4) );
  AND2_X1 U3 ( .A1(n3), .A2(P_right), .ZN(P_out) );
  INV_X1 U4 ( .A(n4), .ZN(G_out) );
endmodule


module PG_BLOCK_14 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_15 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_16 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_17 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n5;

  NAND2_X1 U1 ( .A1(P_left), .A2(G_right), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n3), .A2(n5), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
  INV_X1 U4 ( .A(G_left), .ZN(n5) );
endmodule


module PG_BLOCK_18 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4, n5;

  AOI21_X1 U1 ( .B1(n3), .B2(n4), .A(n5), .ZN(G_out) );
  INV_X1 U2 ( .A(P_left), .ZN(n3) );
  INV_X1 U3 ( .A(G_left), .ZN(n4) );
  NOR2_X1 U4 ( .A1(G_right), .A2(G_left), .ZN(n5) );
  AND2_X1 U5 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_19 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module PG_BLOCK_20 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_21 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AND2_X1 U1 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
  INV_X1 U2 ( .A(n3), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
endmodule


module PG_BLOCK_22 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_23 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   net1921, n3, n4, n5;
  assign net1921 = P_left;

  NOR2_X1 U1 ( .A1(G_right), .A2(G_left), .ZN(n5) );
  AOI21_X1 U2 ( .B1(n3), .B2(n4), .A(n5), .ZN(G_out) );
  INV_X1 U3 ( .A(net1921), .ZN(n3) );
  INV_X1 U4 ( .A(G_left), .ZN(n4) );
  AND2_X1 U5 ( .A1(net1921), .A2(P_right), .ZN(P_out) );
endmodule


module PG_BLOCK_24 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n3), .ZN(G_out) );
endmodule


module PG_BLOCK_25 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n3, n4, n5;

  NOR2_X1 U1 ( .A1(G_right), .A2(G_left), .ZN(n5) );
  AOI21_X1 U2 ( .B1(n3), .B2(n4), .A(n5), .ZN(G_out) );
  INV_X1 U3 ( .A(P_left), .ZN(n3) );
  INV_X1 U4 ( .A(G_left), .ZN(n4) );
  AND2_X1 U5 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
endmodule


module CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [7:0] Co;
  input Cin;
  wire   n6, n7, \pg_outputs[1][32] , \pg_outputs[1][31] , \pg_outputs[1][30] ,
         \pg_outputs[1][29] , \pg_outputs[1][28] , \pg_outputs[1][27] ,
         \pg_outputs[1][26] , \pg_outputs[1][25] , \pg_outputs[1][24] ,
         \pg_outputs[1][23] , \pg_outputs[1][22] , \pg_outputs[1][21] ,
         \pg_outputs[1][20] , \pg_outputs[1][19] , \pg_outputs[1][18] ,
         \pg_outputs[1][17] , \pg_outputs[1][16] , \pg_outputs[1][15] ,
         \pg_outputs[1][14] , \pg_outputs[1][13] , \pg_outputs[1][12] ,
         \pg_outputs[1][11] , \pg_outputs[1][10] , \pg_outputs[1][9] ,
         \pg_outputs[1][8] , \pg_outputs[1][7] , \pg_outputs[1][6] ,
         \pg_outputs[1][5] , \pg_outputs[1][4] , \pg_outputs[1][3] ,
         \pg_outputs[1][2] , \pg_outputs[1][1] , \pg_outputs[0][32] ,
         \pg_outputs[0][31] , \pg_outputs[0][30] , \pg_outputs[0][29] ,
         \pg_outputs[0][28] , \pg_outputs[0][27] , \pg_outputs[0][26] ,
         \pg_outputs[0][25] , \pg_outputs[0][24] , \pg_outputs[0][23] ,
         \pg_outputs[0][22] , \pg_outputs[0][21] , \pg_outputs[0][20] ,
         \pg_outputs[0][19] , \pg_outputs[0][18] , \pg_outputs[0][17] ,
         \pg_outputs[0][16] , \pg_outputs[0][15] , \pg_outputs[0][14] ,
         \pg_outputs[0][13] , \pg_outputs[0][12] , \pg_outputs[0][11] ,
         \pg_outputs[0][10] , \pg_outputs[0][9] , \pg_outputs[0][8] ,
         \pg_outputs[0][7] , \pg_outputs[0][6] , \pg_outputs[0][5] ,
         \pg_outputs[0][4] , \pg_outputs[0][3] , \pg_outputs[0][2] ,
         \internal_g_outputs[1][16] , \internal_g_outputs[1][15] ,
         \internal_g_outputs[1][14] , \internal_g_outputs[1][13] ,
         \internal_g_outputs[1][12] , \internal_g_outputs[1][11] ,
         \internal_g_outputs[1][10] , \internal_g_outputs[1][9] ,
         \internal_g_outputs[1][8] , \internal_g_outputs[1][7] ,
         \internal_g_outputs[1][6] , \internal_g_outputs[1][5] ,
         \internal_g_outputs[1][4] , \internal_g_outputs[1][3] ,
         \internal_g_outputs[1][2] , \internal_g_outputs[1][1] ,
         \internal_g_outputs[2][16] , \internal_g_outputs[2][14] ,
         \internal_g_outputs[2][12] , \internal_g_outputs[2][10] ,
         \internal_g_outputs[2][8] , \internal_g_outputs[2][6] ,
         \internal_g_outputs[2][4] , \internal_g_outputs[3][16] ,
         \internal_g_outputs[3][12] , \internal_g_outputs[3][8] ,
         \internal_g_outputs[4][16] , \internal_g_outputs[4][14] ,
         \internal_p_outputs[1][16] , \internal_p_outputs[1][15] ,
         \internal_p_outputs[1][14] , \internal_p_outputs[1][13] ,
         \internal_p_outputs[1][12] , \internal_p_outputs[1][11] ,
         \internal_p_outputs[1][10] , \internal_p_outputs[1][9] ,
         \internal_p_outputs[1][8] , \internal_p_outputs[1][7] ,
         \internal_p_outputs[1][6] , \internal_p_outputs[1][5] ,
         \internal_p_outputs[1][4] , \internal_p_outputs[1][3] ,
         \internal_p_outputs[1][2] , \internal_p_outputs[2][16] ,
         \internal_p_outputs[2][14] , \internal_p_outputs[2][12] ,
         \internal_p_outputs[2][10] , \internal_p_outputs[2][8] ,
         \internal_p_outputs[2][6] , \internal_p_outputs[2][4] ,
         \internal_p_outputs[3][16] , \internal_p_outputs[3][12] ,
         \internal_p_outputs[3][8] , \internal_p_outputs[4][16] ,
         \internal_p_outputs[4][14] , n1, n2, n4;
  wire   SYNOPSYS_UNCONNECTED__0;

  PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8 pgn ( .A(A), .B(B), .Cin(Cin), .g({
        \pg_outputs[1][32] , \pg_outputs[1][31] , \pg_outputs[1][30] , 
        \pg_outputs[1][29] , \pg_outputs[1][28] , \pg_outputs[1][27] , 
        \pg_outputs[1][26] , \pg_outputs[1][25] , \pg_outputs[1][24] , 
        \pg_outputs[1][23] , \pg_outputs[1][22] , \pg_outputs[1][21] , 
        \pg_outputs[1][20] , \pg_outputs[1][19] , \pg_outputs[1][18] , 
        \pg_outputs[1][17] , \pg_outputs[1][16] , \pg_outputs[1][15] , 
        \pg_outputs[1][14] , \pg_outputs[1][13] , \pg_outputs[1][12] , 
        \pg_outputs[1][11] , \pg_outputs[1][10] , \pg_outputs[1][9] , 
        \pg_outputs[1][8] , \pg_outputs[1][7] , \pg_outputs[1][6] , 
        \pg_outputs[1][5] , \pg_outputs[1][4] , \pg_outputs[1][3] , 
        \pg_outputs[1][2] , \pg_outputs[1][1] }), .p({\pg_outputs[0][32] , 
        \pg_outputs[0][31] , \pg_outputs[0][30] , \pg_outputs[0][29] , 
        \pg_outputs[0][28] , \pg_outputs[0][27] , \pg_outputs[0][26] , 
        \pg_outputs[0][25] , \pg_outputs[0][24] , \pg_outputs[0][23] , 
        \pg_outputs[0][22] , \pg_outputs[0][21] , \pg_outputs[0][20] , 
        \pg_outputs[0][19] , \pg_outputs[0][18] , \pg_outputs[0][17] , 
        \pg_outputs[0][16] , \pg_outputs[0][15] , \pg_outputs[0][14] , 
        \pg_outputs[0][13] , \pg_outputs[0][12] , \pg_outputs[0][11] , 
        \pg_outputs[0][10] , \pg_outputs[0][9] , \pg_outputs[0][8] , 
        \pg_outputs[0][7] , \pg_outputs[0][6] , \pg_outputs[0][5] , 
        \pg_outputs[0][4] , \pg_outputs[0][3] , \pg_outputs[0][2] , 
        SYNOPSYS_UNCONNECTED__0}) );
  G_BLOCK_0 g1_1 ( .G_left(\pg_outputs[1][2] ), .P_left(\pg_outputs[0][2] ), 
        .G_right(\pg_outputs[1][1] ), .G_out(\internal_g_outputs[1][1] ) );
  PG_BLOCK_0 p1_2 ( .G_left(\pg_outputs[1][4] ), .P_left(\pg_outputs[0][4] ), 
        .G_right(\pg_outputs[1][3] ), .P_right(\pg_outputs[0][3] ), .P_out(
        \internal_p_outputs[1][2] ), .G_out(\internal_g_outputs[1][2] ) );
  PG_BLOCK_26 p1_3 ( .G_left(\pg_outputs[1][6] ), .P_left(\pg_outputs[0][6] ), 
        .G_right(\pg_outputs[1][5] ), .P_right(\pg_outputs[0][5] ), .P_out(
        \internal_p_outputs[1][3] ), .G_out(\internal_g_outputs[1][3] ) );
  PG_BLOCK_25 p1_4 ( .G_left(\pg_outputs[1][8] ), .P_left(\pg_outputs[0][8] ), 
        .G_right(\pg_outputs[1][7] ), .P_right(\pg_outputs[0][7] ), .P_out(
        \internal_p_outputs[1][4] ), .G_out(\internal_g_outputs[1][4] ) );
  PG_BLOCK_24 p1_5 ( .G_left(\pg_outputs[1][10] ), .P_left(\pg_outputs[0][10] ), .G_right(\pg_outputs[1][9] ), .P_right(\pg_outputs[0][9] ), .P_out(
        \internal_p_outputs[1][5] ), .G_out(\internal_g_outputs[1][5] ) );
  PG_BLOCK_23 p1_6 ( .G_left(\pg_outputs[1][12] ), .P_left(\pg_outputs[0][12] ), .G_right(\pg_outputs[1][11] ), .P_right(\pg_outputs[0][11] ), .P_out(
        \internal_p_outputs[1][6] ), .G_out(\internal_g_outputs[1][6] ) );
  PG_BLOCK_22 p1_7 ( .G_left(\pg_outputs[1][14] ), .P_left(\pg_outputs[0][14] ), .G_right(\pg_outputs[1][13] ), .P_right(\pg_outputs[0][13] ), .P_out(
        \internal_p_outputs[1][7] ), .G_out(\internal_g_outputs[1][7] ) );
  PG_BLOCK_21 p1_8 ( .G_left(\pg_outputs[1][16] ), .P_left(\pg_outputs[0][16] ), .G_right(\pg_outputs[1][15] ), .P_right(\pg_outputs[0][15] ), .P_out(
        \internal_p_outputs[1][8] ), .G_out(\internal_g_outputs[1][8] ) );
  PG_BLOCK_20 p1_9 ( .G_left(\pg_outputs[1][18] ), .P_left(\pg_outputs[0][18] ), .G_right(\pg_outputs[1][17] ), .P_right(\pg_outputs[0][17] ), .P_out(
        \internal_p_outputs[1][9] ), .G_out(\internal_g_outputs[1][9] ) );
  PG_BLOCK_19 p1_10 ( .G_left(\pg_outputs[1][20] ), .P_left(
        \pg_outputs[0][20] ), .G_right(\pg_outputs[1][19] ), .P_right(
        \pg_outputs[0][19] ), .P_out(\internal_p_outputs[1][10] ), .G_out(
        \internal_g_outputs[1][10] ) );
  PG_BLOCK_18 p1_11 ( .G_left(\pg_outputs[1][22] ), .P_left(
        \pg_outputs[0][22] ), .G_right(\pg_outputs[1][21] ), .P_right(
        \pg_outputs[0][21] ), .P_out(\internal_p_outputs[1][11] ), .G_out(
        \internal_g_outputs[1][11] ) );
  PG_BLOCK_17 p1_12 ( .G_left(\pg_outputs[1][24] ), .P_left(
        \pg_outputs[0][24] ), .G_right(\pg_outputs[1][23] ), .P_right(
        \pg_outputs[0][23] ), .P_out(\internal_p_outputs[1][12] ), .G_out(
        \internal_g_outputs[1][12] ) );
  PG_BLOCK_16 p1_13 ( .G_left(\pg_outputs[1][26] ), .P_left(
        \pg_outputs[0][26] ), .G_right(\pg_outputs[1][25] ), .P_right(
        \pg_outputs[0][25] ), .P_out(\internal_p_outputs[1][13] ), .G_out(
        \internal_g_outputs[1][13] ) );
  PG_BLOCK_15 p1_14 ( .G_left(\pg_outputs[1][28] ), .P_left(
        \pg_outputs[0][28] ), .G_right(\pg_outputs[1][27] ), .P_right(
        \pg_outputs[0][27] ), .P_out(\internal_p_outputs[1][14] ), .G_out(
        \internal_g_outputs[1][14] ) );
  PG_BLOCK_14 p1_15 ( .G_left(\pg_outputs[1][30] ), .P_left(
        \pg_outputs[0][30] ), .G_right(\pg_outputs[1][29] ), .P_right(
        \pg_outputs[0][29] ), .P_out(\internal_p_outputs[1][15] ), .G_out(
        \internal_g_outputs[1][15] ) );
  PG_BLOCK_13 p1_16 ( .G_left(\pg_outputs[1][32] ), .P_left(
        \pg_outputs[0][32] ), .G_right(\pg_outputs[1][31] ), .P_right(
        \pg_outputs[0][31] ), .P_out(\internal_p_outputs[1][16] ), .G_out(
        \internal_g_outputs[1][16] ) );
  G_BLOCK_8 g2_1 ( .G_left(\internal_g_outputs[1][2] ), .P_left(
        \internal_p_outputs[1][2] ), .G_right(\internal_g_outputs[1][1] ), 
        .G_out(Co[0]) );
  PG_BLOCK_12 p2_2 ( .G_left(\internal_g_outputs[1][4] ), .P_left(
        \internal_p_outputs[1][4] ), .G_right(\internal_g_outputs[1][3] ), 
        .P_right(\internal_p_outputs[1][3] ), .P_out(
        \internal_p_outputs[2][4] ), .G_out(\internal_g_outputs[2][4] ) );
  PG_BLOCK_11 p2_3 ( .G_left(\internal_g_outputs[1][6] ), .P_left(
        \internal_p_outputs[1][6] ), .G_right(\internal_g_outputs[1][5] ), 
        .P_right(\internal_p_outputs[1][5] ), .P_out(
        \internal_p_outputs[2][6] ), .G_out(\internal_g_outputs[2][6] ) );
  PG_BLOCK_10 p2_4 ( .G_left(\internal_g_outputs[1][8] ), .P_left(
        \internal_p_outputs[1][8] ), .G_right(\internal_g_outputs[1][7] ), 
        .P_right(\internal_p_outputs[1][7] ), .P_out(
        \internal_p_outputs[2][8] ), .G_out(\internal_g_outputs[2][8] ) );
  PG_BLOCK_9 p2_5 ( .G_left(\internal_g_outputs[1][10] ), .P_left(
        \internal_p_outputs[1][10] ), .G_right(\internal_g_outputs[1][9] ), 
        .P_right(\internal_p_outputs[1][9] ), .P_out(
        \internal_p_outputs[2][10] ), .G_out(\internal_g_outputs[2][10] ) );
  PG_BLOCK_8 p2_6 ( .G_left(\internal_g_outputs[1][12] ), .P_left(
        \internal_p_outputs[1][12] ), .G_right(\internal_g_outputs[1][11] ), 
        .P_right(\internal_p_outputs[1][11] ), .P_out(
        \internal_p_outputs[2][12] ), .G_out(\internal_g_outputs[2][12] ) );
  PG_BLOCK_7 p2_7 ( .G_left(\internal_g_outputs[1][14] ), .P_left(
        \internal_p_outputs[1][14] ), .G_right(\internal_g_outputs[1][13] ), 
        .P_right(\internal_p_outputs[1][13] ), .P_out(
        \internal_p_outputs[2][14] ), .G_out(\internal_g_outputs[2][14] ) );
  PG_BLOCK_6 p2_8 ( .G_left(\internal_g_outputs[1][16] ), .P_left(
        \internal_p_outputs[1][16] ), .G_right(\internal_g_outputs[1][15] ), 
        .P_right(\internal_p_outputs[1][15] ), .P_out(
        \internal_p_outputs[2][16] ), .G_out(\internal_g_outputs[2][16] ) );
  G_BLOCK_7 g_3_1 ( .G_left(\internal_g_outputs[2][4] ), .P_left(
        \internal_p_outputs[2][4] ), .G_right(Co[0]), .G_out(n7) );
  PG_BLOCK_5 p_3_2 ( .G_left(\internal_g_outputs[2][8] ), .P_left(
        \internal_p_outputs[2][8] ), .G_right(\internal_g_outputs[2][6] ), 
        .P_right(\internal_p_outputs[2][6] ), .P_out(
        \internal_p_outputs[3][8] ), .G_out(\internal_g_outputs[3][8] ) );
  PG_BLOCK_4 p_3_3 ( .G_left(\internal_g_outputs[2][12] ), .P_left(
        \internal_p_outputs[2][12] ), .G_right(\internal_g_outputs[2][10] ), 
        .P_right(\internal_p_outputs[2][10] ), .P_out(
        \internal_p_outputs[3][12] ), .G_out(\internal_g_outputs[3][12] ) );
  PG_BLOCK_3 p_3_4 ( .G_left(\internal_g_outputs[2][16] ), .P_left(
        \internal_p_outputs[2][16] ), .G_right(\internal_g_outputs[2][14] ), 
        .P_right(\internal_p_outputs[2][14] ), .P_out(
        \internal_p_outputs[3][16] ), .G_out(\internal_g_outputs[3][16] ) );
  G_BLOCK_6 g_4_1 ( .G_left(n2), .P_left(\internal_p_outputs[2][6] ), 
        .G_right(Co[1]), .G_out(Co[2]) );
  G_BLOCK_5 g_4_2 ( .G_left(\internal_g_outputs[3][8] ), .P_left(
        \internal_p_outputs[3][8] ), .G_right(n7), .G_out(n6) );
  PG_BLOCK_2 p_4_3 ( .G_left(\internal_g_outputs[2][14] ), .P_left(
        \internal_p_outputs[2][14] ), .G_right(n4), .P_right(
        \internal_p_outputs[3][12] ), .P_out(\internal_p_outputs[4][14] ), 
        .G_out(\internal_g_outputs[4][14] ) );
  PG_BLOCK_1 p_4_4 ( .G_left(\internal_g_outputs[3][16] ), .P_left(
        \internal_p_outputs[3][16] ), .G_right(\internal_g_outputs[3][12] ), 
        .P_right(\internal_p_outputs[3][12] ), .P_out(
        \internal_p_outputs[4][16] ), .G_out(\internal_g_outputs[4][16] ) );
  G_BLOCK_4 g_5_1 ( .G_left(n1), .P_left(\internal_p_outputs[2][10] ), 
        .G_right(Co[3]), .G_out(Co[4]) );
  G_BLOCK_3 g_5_2 ( .G_left(n4), .P_left(\internal_p_outputs[3][12] ), 
        .G_right(Co[3]), .G_out(Co[5]) );
  G_BLOCK_2 g_5_3 ( .G_left(\internal_g_outputs[4][14] ), .P_left(
        \internal_p_outputs[4][14] ), .G_right(Co[3]), .G_out(Co[6]) );
  G_BLOCK_1 g_5_4 ( .G_left(\internal_g_outputs[4][16] ), .P_left(
        \internal_p_outputs[4][16] ), .G_right(n6), .G_out(Co[7]) );
  CLKBUF_X1 U1 ( .A(\internal_g_outputs[2][10] ), .Z(n1) );
  CLKBUF_X1 U2 ( .A(\internal_g_outputs[2][6] ), .Z(n2) );
  CLKBUF_X1 U3 ( .A(n7), .Z(Co[1]) );
  CLKBUF_X1 U4 ( .A(\internal_g_outputs[3][12] ), .Z(n4) );
  CLKBUF_X1 U5 ( .A(n6), .Z(Co[3]) );
endmodule


module SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;


  CARRY_SELECT cs_0 ( .ci(Ci[0]), .A(A[3:0]), .B(B[3:0]), .sum(S[3:0]) );
  CARRY_SELECT cs_1 ( .ci(Ci[1]), .A(A[7:4]), .B(B[7:4]), .sum(S[7:4]) );
  CARRY_SELECT cs_2 ( .ci(Ci[2]), .A(A[11:8]), .B(B[11:8]), .sum(S[11:8]) );
  CARRY_SELECT cs_3 ( .ci(Ci[3]), .A(A[15:12]), .B(B[15:12]), .sum(S[15:12])
         );
  CARRY_SELECT cs_4 ( .ci(Ci[4]), .A(A[19:16]), .B(B[19:16]), .sum(S[19:16])
         );
  CARRY_SELECT cs_5 ( .ci(Ci[5]), .A(A[23:20]), .B(B[23:20]), .sum(S[23:20])
         );
  CARRY_SELECT cs_6 ( .ci(Ci[6]), .A(A[27:24]), .B(B[27:24]), .sum(S[27:24])
         );
  CARRY_SELECT cs_7 ( .ci(Ci[7]), .A(A[31:28]), .B(B[31:28]), .sum(S[31:28])
         );
endmodule


module P4_ADDER ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;

  wire   [6:0] cg_out;

  CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 carry_net ( .A(A), .B(B), .Cin(Cin), 
        .Co({Cout, cg_out}) );
  SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 sum_gen ( .A(A), .B(B), .Ci({cg_out, 
        Cin}), .S(S) );
endmodule

