/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Jun 15 18:20:35 2023
/////////////////////////////////////////////////////////////


module PG_NETWORK_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Cin, g, p );
  input [31:0] A;
  input [31:0] B;
  output [32:1] g;
  output [32:1] p;
  input Cin;
  wire   n2, n3, n4;

  XOR2_X1 U37 ( .A(B[8]), .B(A[8]), .Z(p[9]) );
  XOR2_X1 U38 ( .A(B[7]), .B(A[7]), .Z(p[8]) );
  XOR2_X1 U39 ( .A(B[6]), .B(A[6]), .Z(p[7]) );
  XOR2_X1 U40 ( .A(B[5]), .B(A[5]), .Z(p[6]) );
  XOR2_X1 U41 ( .A(B[4]), .B(A[4]), .Z(p[5]) );
  XOR2_X1 U42 ( .A(B[3]), .B(A[3]), .Z(p[4]) );
  XOR2_X1 U43 ( .A(B[2]), .B(A[2]), .Z(p[3]) );
  XOR2_X1 U44 ( .A(B[31]), .B(A[31]), .Z(p[32]) );
  XOR2_X1 U45 ( .A(B[30]), .B(A[30]), .Z(p[31]) );
  XOR2_X1 U46 ( .A(B[29]), .B(A[29]), .Z(p[30]) );
  XOR2_X1 U47 ( .A(B[1]), .B(A[1]), .Z(p[2]) );
  XOR2_X1 U48 ( .A(B[28]), .B(A[28]), .Z(p[29]) );
  XOR2_X1 U49 ( .A(B[27]), .B(A[27]), .Z(p[28]) );
  XOR2_X1 U50 ( .A(B[26]), .B(A[26]), .Z(p[27]) );
  XOR2_X1 U51 ( .A(B[25]), .B(A[25]), .Z(p[26]) );
  XOR2_X1 U52 ( .A(B[24]), .B(A[24]), .Z(p[25]) );
  XOR2_X1 U53 ( .A(B[23]), .B(A[23]), .Z(p[24]) );
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
  XOR2_X1 U65 ( .A(B[11]), .B(A[11]), .Z(p[12]) );
  XOR2_X1 U66 ( .A(B[10]), .B(A[10]), .Z(p[11]) );
  XOR2_X1 U67 ( .A(B[9]), .B(A[9]), .Z(p[10]) );
  XOR2_X1 U61 ( .A(B[15]), .B(A[15]), .Z(p[16]) );
  NAND2_X1 U1 ( .A1(n3), .A2(n4), .ZN(g[1]) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[0]), .ZN(n4) );
  AND2_X1 U3 ( .A1(B[15]), .A2(A[15]), .ZN(g[16]) );
  XNOR2_X1 U4 ( .A(n2), .B(A[0]), .ZN(p[1]) );
  AND2_X1 U5 ( .A1(B[14]), .A2(A[14]), .ZN(g[15]) );
  AND2_X1 U6 ( .A1(B[10]), .A2(A[10]), .ZN(g[11]) );
  AND2_X1 U7 ( .A1(B[11]), .A2(A[11]), .ZN(g[12]) );
  AND2_X1 U8 ( .A1(B[12]), .A2(A[12]), .ZN(g[13]) );
  AND2_X1 U9 ( .A1(B[13]), .A2(A[13]), .ZN(g[14]) );
  AND2_X1 U10 ( .A1(B[22]), .A2(A[22]), .ZN(g[23]) );
  AND2_X1 U11 ( .A1(B[23]), .A2(A[23]), .ZN(g[24]) );
  AND2_X1 U12 ( .A1(B[6]), .A2(A[6]), .ZN(g[7]) );
  AND2_X1 U13 ( .A1(B[7]), .A2(A[7]), .ZN(g[8]) );
  AND2_X1 U14 ( .A1(B[18]), .A2(A[18]), .ZN(g[19]) );
  AND2_X1 U15 ( .A1(B[19]), .A2(A[19]), .ZN(g[20]) );
  AND2_X1 U16 ( .A1(B[20]), .A2(A[20]), .ZN(g[21]) );
  AND2_X1 U17 ( .A1(B[21]), .A2(A[21]), .ZN(g[22]) );
  AND2_X1 U18 ( .A1(B[8]), .A2(A[8]), .ZN(g[9]) );
  AND2_X1 U19 ( .A1(B[9]), .A2(A[9]), .ZN(g[10]) );
  AND2_X1 U20 ( .A1(B[16]), .A2(A[16]), .ZN(g[17]) );
  AND2_X1 U21 ( .A1(B[17]), .A2(A[17]), .ZN(g[18]) );
  AND2_X1 U22 ( .A1(B[2]), .A2(A[2]), .ZN(g[3]) );
  AND2_X1 U23 ( .A1(B[1]), .A2(A[1]), .ZN(g[2]) );
  INV_X1 U24 ( .A(B[0]), .ZN(n2) );
  AND2_X1 U25 ( .A1(B[30]), .A2(A[30]), .ZN(g[31]) );
  AND2_X1 U26 ( .A1(B[31]), .A2(A[31]), .ZN(g[32]) );
  AND2_X1 U27 ( .A1(B[26]), .A2(A[26]), .ZN(g[27]) );
  AND2_X1 U28 ( .A1(B[27]), .A2(A[27]), .ZN(g[28]) );
  AND2_X1 U29 ( .A1(B[5]), .A2(A[5]), .ZN(g[6]) );
  AND2_X1 U30 ( .A1(B[24]), .A2(A[24]), .ZN(g[25]) );
  AND2_X1 U31 ( .A1(B[25]), .A2(A[25]), .ZN(g[26]) );
  AND2_X1 U32 ( .A1(B[4]), .A2(A[4]), .ZN(g[5]) );
  AND2_X1 U33 ( .A1(B[29]), .A2(A[29]), .ZN(g[30]) );
  AND2_X1 U34 ( .A1(B[28]), .A2(A[28]), .ZN(g[29]) );
  AND2_X1 U35 ( .A1(B[3]), .A2(A[3]), .ZN(g[4]) );
  OAI21_X1 U36 ( .B1(A[0]), .B2(B[0]), .A(Cin), .ZN(n3) );
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
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G_out) );
  AND2_X1 U2 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n2) );
endmodule


module G_BLOCK_1 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n1) );
endmodule


module G_BLOCK_2 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1, n2, n3;

  OAI21_X1 U1 ( .B1(n2), .B2(n1), .A(n3), .ZN(G_out) );
  INV_X1 U2 ( .A(P_left), .ZN(n1) );
  INV_X1 U3 ( .A(G_right), .ZN(n2) );
  INV_X1 U4 ( .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_3 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1;

  AOI21_X1 U1 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
endmodule


module G_BLOCK_4 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
endmodule


module G_BLOCK_5 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1, n2, n3;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(G_out) );
  INV_X1 U2 ( .A(G_right), .ZN(n1) );
  INV_X1 U3 ( .A(P_left), .ZN(n2) );
  INV_X1 U4 ( .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_6 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1, n2, n3;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(G_out) );
  INV_X1 U2 ( .A(G_right), .ZN(n1) );
  INV_X1 U3 ( .A(P_left), .ZN(n2) );
  INV_X1 U4 ( .A(G_left), .ZN(n3) );
endmodule


module G_BLOCK_7 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
endmodule


module G_BLOCK_8 ( G_left, P_left, G_right, G_out );
  input G_left, P_left, G_right;
  output G_out;
  wire   n1;

  AOI21_X1 U1 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
endmodule


module PG_BLOCK_1 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_2 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  INV_X1 U3 ( .A(n1), .ZN(G_out) );
endmodule


module PG_BLOCK_3 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_4 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AOI21_X1 U1 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n1), .ZN(G_out) );
endmodule


module PG_BLOCK_5 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n2, n3;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  NOR2_X1 U2 ( .A1(G_right), .A2(G_left), .ZN(n3) );
  NOR2_X1 U3 ( .A1(n3), .A2(n2), .ZN(G_out) );
  NOR2_X1 U4 ( .A1(G_left), .A2(P_left), .ZN(n2) );
endmodule


module PG_BLOCK_6 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_7 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_8 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_9 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_10 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AOI21_X1 U1 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_11 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AOI21_X1 U1 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U3 ( .A(n1), .ZN(G_out) );
endmodule


module PG_BLOCK_12 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_13 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_14 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_15 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_16 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_17 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AND2_X1 U2 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_18 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  AOI21_X1 U3 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_19 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AND2_X1 U2 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_20 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_21 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1, n2;

  NOR2_X1 U1 ( .A1(G_right), .A2(G_left), .ZN(n2) );
  NOR2_X1 U2 ( .A1(n1), .A2(n2), .ZN(G_out) );
  NOR2_X1 U3 ( .A1(P_left), .A2(G_left), .ZN(n1) );
  AND2_X1 U4 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
endmodule


module PG_BLOCK_22 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AOI21_X1 U1 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U2 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
  INV_X1 U3 ( .A(n1), .ZN(G_out) );
endmodule


module PG_BLOCK_23 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  AND2_X1 U1 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
  INV_X1 U2 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P_left), .B2(G_right), .A(G_left), .ZN(n1) );
endmodule


module PG_BLOCK_24 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1;

  INV_X1 U1 ( .A(n1), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(G_right), .B2(P_left), .A(G_left), .ZN(n1) );
  AND2_X1 U3 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module PG_BLOCK_25 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1, n2, n3;

  OAI21_X1 U1 ( .B1(n1), .B2(n2), .A(n3), .ZN(G_out) );
  INV_X1 U2 ( .A(P_left), .ZN(n1) );
  INV_X1 U3 ( .A(G_right), .ZN(n2) );
  INV_X1 U4 ( .A(G_left), .ZN(n3) );
  AND2_X1 U5 ( .A1(P_left), .A2(P_right), .ZN(P_out) );
endmodule


module PG_BLOCK_26 ( G_left, P_left, G_right, P_right, P_out, G_out );
  input G_left, P_left, G_right, P_right;
  output P_out, G_out;
  wire   n1, n2;

  NOR2_X1 U1 ( .A1(P_left), .A2(G_left), .ZN(n1) );
  NOR2_X1 U2 ( .A1(G_right), .A2(G_left), .ZN(n2) );
  NOR2_X1 U3 ( .A1(n1), .A2(n2), .ZN(G_out) );
  AND2_X1 U4 ( .A1(P_right), .A2(P_left), .ZN(P_out) );
endmodule


module CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [7:0] Co;
  input Cin;
  wire   n6, n7, n8, \pg_outputs[1][32] , \pg_outputs[1][31] ,
         \pg_outputs[1][30] , \pg_outputs[1][29] , \pg_outputs[1][28] ,
         \pg_outputs[1][27] , \pg_outputs[1][26] , \pg_outputs[1][25] ,
         \pg_outputs[1][24] , \pg_outputs[1][23] , \pg_outputs[1][22] ,
         \pg_outputs[1][21] , \pg_outputs[1][20] , \pg_outputs[1][19] ,
         \pg_outputs[1][18] , \pg_outputs[1][17] , \pg_outputs[1][16] ,
         \pg_outputs[1][15] , \pg_outputs[1][14] , \pg_outputs[1][13] ,
         \pg_outputs[1][12] , \pg_outputs[1][11] , \pg_outputs[1][10] ,
         \pg_outputs[1][9] , \pg_outputs[1][8] , \pg_outputs[1][7] ,
         \pg_outputs[1][6] , \pg_outputs[1][5] , \pg_outputs[1][4] ,
         \pg_outputs[1][3] , \pg_outputs[1][2] , \pg_outputs[1][1] ,
         \pg_outputs[0][32] , \pg_outputs[0][31] , \pg_outputs[0][30] ,
         \pg_outputs[0][29] , \pg_outputs[0][28] , \pg_outputs[0][27] ,
         \pg_outputs[0][26] , \pg_outputs[0][25] , \pg_outputs[0][24] ,
         \pg_outputs[0][23] , \pg_outputs[0][22] , \pg_outputs[0][21] ,
         \pg_outputs[0][20] , \pg_outputs[0][19] , \pg_outputs[0][18] ,
         \pg_outputs[0][17] , \pg_outputs[0][16] , \pg_outputs[0][15] ,
         \pg_outputs[0][14] , \pg_outputs[0][13] , \pg_outputs[0][12] ,
         \pg_outputs[0][11] , \pg_outputs[0][10] , \pg_outputs[0][9] ,
         \pg_outputs[0][8] , \pg_outputs[0][7] , \pg_outputs[0][6] ,
         \pg_outputs[0][5] , \pg_outputs[0][4] , \pg_outputs[0][3] ,
         \pg_outputs[0][2] , \internal_g_outputs[1][16] ,
         \internal_g_outputs[1][15] , \internal_g_outputs[1][14] ,
         \internal_g_outputs[1][13] , \internal_g_outputs[1][12] ,
         \internal_g_outputs[1][11] , \internal_g_outputs[1][10] ,
         \internal_g_outputs[1][9] , \internal_g_outputs[1][8] ,
         \internal_g_outputs[1][7] , \internal_g_outputs[1][6] ,
         \internal_g_outputs[1][5] , \internal_g_outputs[1][4] ,
         \internal_g_outputs[1][3] , \internal_g_outputs[1][2] ,
         \internal_g_outputs[1][1] , \internal_g_outputs[2][16] ,
         \internal_g_outputs[2][14] , \internal_g_outputs[2][12] ,
         \internal_g_outputs[2][10] , \internal_g_outputs[2][8] ,
         \internal_g_outputs[2][6] , \internal_g_outputs[2][4] ,
         \internal_g_outputs[3][16] , \internal_g_outputs[3][12] ,
         \internal_g_outputs[3][8] , \internal_g_outputs[4][16] ,
         \internal_g_outputs[4][14] , \internal_p_outputs[1][16] ,
         \internal_p_outputs[1][15] , \internal_p_outputs[1][14] ,
         \internal_p_outputs[1][13] , \internal_p_outputs[1][12] ,
         \internal_p_outputs[1][11] , \internal_p_outputs[1][10] ,
         \internal_p_outputs[1][9] , \internal_p_outputs[1][8] ,
         \internal_p_outputs[1][7] , \internal_p_outputs[1][6] ,
         \internal_p_outputs[1][5] , \internal_p_outputs[1][4] ,
         \internal_p_outputs[1][3] , \internal_p_outputs[1][2] ,
         \internal_p_outputs[2][16] , \internal_p_outputs[2][14] ,
         \internal_p_outputs[2][12] , \internal_p_outputs[2][10] ,
         \internal_p_outputs[2][8] , \internal_p_outputs[2][6] ,
         \internal_p_outputs[2][4] , \internal_p_outputs[3][16] ,
         \internal_p_outputs[3][12] , \internal_p_outputs[3][8] ,
         \internal_p_outputs[4][16] , \internal_p_outputs[4][14] , n1, n2;
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
        .G_out(n8) );
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
        \internal_p_outputs[2][4] ), .G_right(n8), .G_out(n7) );
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
  G_BLOCK_6 g_4_1 ( .G_left(\internal_g_outputs[2][6] ), .P_left(
        \internal_p_outputs[2][6] ), .G_right(Co[1]), .G_out(Co[2]) );
  G_BLOCK_5 g_4_2 ( .G_left(\internal_g_outputs[3][8] ), .P_left(
        \internal_p_outputs[3][8] ), .G_right(n7), .G_out(n6) );
  PG_BLOCK_2 p_4_3 ( .G_left(\internal_g_outputs[2][14] ), .P_left(
        \internal_p_outputs[2][14] ), .G_right(\internal_g_outputs[3][12] ), 
        .P_right(\internal_p_outputs[3][12] ), .P_out(
        \internal_p_outputs[4][14] ), .G_out(\internal_g_outputs[4][14] ) );
  PG_BLOCK_1 p_4_4 ( .G_left(\internal_g_outputs[3][16] ), .P_left(
        \internal_p_outputs[3][16] ), .G_right(n1), .P_right(
        \internal_p_outputs[3][12] ), .P_out(\internal_p_outputs[4][16] ), 
        .G_out(\internal_g_outputs[4][16] ) );
  G_BLOCK_4 g_5_1 ( .G_left(\internal_g_outputs[2][10] ), .P_left(
        \internal_p_outputs[2][10] ), .G_right(n6), .G_out(Co[4]) );
  G_BLOCK_3 g_5_2 ( .G_left(n1), .P_left(\internal_p_outputs[3][12] ), 
        .G_right(n6), .G_out(Co[5]) );
  G_BLOCK_2 g_5_3 ( .G_left(\internal_g_outputs[4][14] ), .P_left(
        \internal_p_outputs[4][14] ), .G_right(n6), .G_out(Co[6]) );
  G_BLOCK_1 g_5_4 ( .G_left(\internal_g_outputs[4][16] ), .P_left(
        \internal_p_outputs[4][16] ), .G_right(Co[3]), .G_out(Co[7]) );
  BUF_X1 U1 ( .A(n7), .Z(Co[1]) );
  CLKBUF_X1 U2 ( .A(\internal_g_outputs[3][12] ), .Z(n1) );
  BUF_X1 U3 ( .A(n6), .Z(Co[3]) );
  INV_X1 U4 ( .A(n8), .ZN(n2) );
  INV_X1 U5 ( .A(n2), .ZN(Co[0]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n2), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n2) );
  INV_X1 U1 ( .A(n3), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n2), .B2(Ci), .ZN(n3) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_0 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_0 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_85 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_86 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_87 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_88 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_89 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_90 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_91 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_92 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_93 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_94 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_95 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_0 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_0 UIV ( .A(SEL), .Y(SB) );
  ND2_0 UND1_0 ( .A(A[0]), .B(SEL), .Y(Y1[0]) );
  ND2_95 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_94 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_93 UND1_1 ( .A(A[1]), .B(SEL), .Y(Y1[1]) );
  ND2_92 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_91 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_90 UND1_2 ( .A(A[2]), .B(SEL), .Y(Y1[2]) );
  ND2_89 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_88 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_87 UND1_3 ( .A(A[3]), .B(SEL), .Y(Y1[3]) );
  ND2_86 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_85 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_15 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_60 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_59 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_58 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_57 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SELECT_NBIT4_0 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_0 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_15 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_0 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_4 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_3 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_2 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_1 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_8 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_1 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_1 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_2 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_3 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_4 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_5 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_6 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_7 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_8 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_9 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_10 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_11 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_12 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_1 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB, n1, n2;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_1 UIV ( .A(SEL), .Y(SB) );
  ND2_12 UND1_0 ( .A(A[0]), .B(n1), .Y(Y1[0]) );
  ND2_11 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_10 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_9 UND1_1 ( .A(A[1]), .B(n2), .Y(Y1[1]) );
  ND2_8 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_7 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_6 UND1_2 ( .A(A[2]), .B(n2), .Y(Y1[2]) );
  ND2_5 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_4 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_3 UND1_3 ( .A(A[3]), .B(n1), .Y(Y1[3]) );
  ND2_2 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_1 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
  BUF_X1 U1 ( .A(SEL), .Z(n1) );
  BUF_X1 U2 ( .A(SEL), .Z(n2) );
endmodule


module CARRY_SELECT_NBIT4_1 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_2 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_1 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_1 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_12 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_11 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_10 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_9 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_2 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_13 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_14 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_15 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_16 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_17 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_18 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_19 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_20 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_21 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_22 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_23 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_24 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_2 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB, n1, n2;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_2 UIV ( .A(SEL), .Y(SB) );
  ND2_24 UND1_0 ( .A(A[0]), .B(n1), .Y(Y1[0]) );
  ND2_23 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_22 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_21 UND1_1 ( .A(A[1]), .B(n2), .Y(Y1[1]) );
  ND2_20 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_19 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_18 UND1_2 ( .A(A[2]), .B(n1), .Y(Y1[2]) );
  ND2_17 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_16 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_15 UND1_3 ( .A(A[3]), .B(n2), .Y(Y1[3]) );
  ND2_14 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_13 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
  CLKBUF_X1 U1 ( .A(SEL), .Z(n1) );
  CLKBUF_X1 U2 ( .A(SEL), .Z(n2) );
endmodule


module CARRY_SELECT_NBIT4_2 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_4 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_3 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_2 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_20 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_19 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_18 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_17 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_24 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_23 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_22 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_21 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_3 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_25 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_26 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_27 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_28 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_29 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_30 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_31 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_32 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_33 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_34 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_35 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_36 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_3 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB, n1;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_3 UIV ( .A(SEL), .Y(SB) );
  ND2_36 UND1_0 ( .A(A[0]), .B(n1), .Y(Y1[0]) );
  ND2_35 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_34 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_33 UND1_1 ( .A(A[1]), .B(n1), .Y(Y1[1]) );
  ND2_32 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_31 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_30 UND1_2 ( .A(A[2]), .B(n1), .Y(Y1[2]) );
  ND2_29 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_28 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_27 UND1_3 ( .A(A[3]), .B(n1), .Y(Y1[3]) );
  ND2_26 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_25 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
  BUF_X2 U1 ( .A(SEL), .Z(n1) );
endmodule


module CARRY_SELECT_NBIT4_3 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_6 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_5 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_3 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_28 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_27 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_26 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_25 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_4 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_37 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_38 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_39 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_40 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_41 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_42 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_43 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_44 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_45 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_46 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_47 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_48 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_4 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_4 UIV ( .A(SEL), .Y(SB) );
  ND2_48 UND1_0 ( .A(A[0]), .B(SEL), .Y(Y1[0]) );
  ND2_47 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_46 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_45 UND1_1 ( .A(A[1]), .B(SEL), .Y(Y1[1]) );
  ND2_44 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_43 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_42 UND1_2 ( .A(A[2]), .B(SEL), .Y(Y1[2]) );
  ND2_41 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_40 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_39 UND1_3 ( .A(A[3]), .B(SEL), .Y(Y1[3]) );
  ND2_38 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_37 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
endmodule


module CARRY_SELECT_NBIT4_4 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_8 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_7 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_4 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_36 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_35 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_34 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_33 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_40 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_39 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_38 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_37 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_5 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_49 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_50 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_51 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_52 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_53 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_54 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_55 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_56 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_57 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_58 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_59 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_60 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_5 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB, n1;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_5 UIV ( .A(SEL), .Y(SB) );
  ND2_60 UND1_0 ( .A(A[0]), .B(n1), .Y(Y1[0]) );
  ND2_59 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_58 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_57 UND1_1 ( .A(A[1]), .B(n1), .Y(Y1[1]) );
  ND2_56 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_55 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_54 UND1_2 ( .A(A[2]), .B(n1), .Y(Y1[2]) );
  ND2_53 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_52 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_51 UND1_3 ( .A(A[3]), .B(n1), .Y(Y1[3]) );
  ND2_50 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_49 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
  BUF_X2 U1 ( .A(SEL), .Z(n1) );
endmodule


module CARRY_SELECT_NBIT4_5 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_10 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_9 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_5 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_44 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_43 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_42 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_41 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_48 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_6 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_61 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_62 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_63 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_64 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_65 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_66 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_67 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_68 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_69 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_70 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_71 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_72 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_6 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_6 UIV ( .A(SEL), .Y(SB) );
  ND2_72 UND1_0 ( .A(A[0]), .B(SEL), .Y(Y1[0]) );
  ND2_71 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_70 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_69 UND1_1 ( .A(A[1]), .B(SEL), .Y(Y1[1]) );
  ND2_68 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_67 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_66 UND1_2 ( .A(A[2]), .B(SEL), .Y(Y1[2]) );
  ND2_65 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_64 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_63 UND1_3 ( .A(A[3]), .B(SEL), .Y(Y1[3]) );
  ND2_62 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_61 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
endmodule


module CARRY_SELECT_NBIT4_6 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_12 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_11 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_6 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_52 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_51 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_50 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_49 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n1), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n1) );
endmodule


module RCA_NBIT4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_56 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_55 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_54 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_53 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module IV_7 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_73 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_74 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_75 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_76 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_77 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_78 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_79 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_80 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_81 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_82 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_83 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_84 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_GENERIC_NBIT4_7 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   SB;
  wire   [3:0] Y1;
  wire   [3:0] Y2;

  IV_7 UIV ( .A(SEL), .Y(SB) );
  ND2_84 UND1_0 ( .A(A[0]), .B(SEL), .Y(Y1[0]) );
  ND2_83 UND2_0 ( .A(B[0]), .B(SB), .Y(Y2[0]) );
  ND2_82 UND3_0 ( .A(Y1[0]), .B(Y2[0]), .Y(Y[0]) );
  ND2_81 UND1_1 ( .A(A[1]), .B(SEL), .Y(Y1[1]) );
  ND2_80 UND2_1 ( .A(B[1]), .B(SB), .Y(Y2[1]) );
  ND2_79 UND3_1 ( .A(Y1[1]), .B(Y2[1]), .Y(Y[1]) );
  ND2_78 UND1_2 ( .A(A[2]), .B(SEL), .Y(Y1[2]) );
  ND2_77 UND2_2 ( .A(B[2]), .B(SB), .Y(Y2[2]) );
  ND2_76 UND3_2 ( .A(Y1[2]), .B(Y2[2]), .Y(Y[2]) );
  ND2_75 UND1_3 ( .A(A[3]), .B(SEL), .Y(Y1[3]) );
  ND2_74 UND2_3 ( .A(B[3]), .B(SB), .Y(Y2[3]) );
  ND2_73 UND3_3 ( .A(Y1[3]), .B(Y2[3]), .Y(Y[3]) );
endmodule


module CARRY_SELECT_NBIT4_7 ( ci, A, B, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input ci;

  wire   [3:0] sum0;
  wire   [3:0] sum1;

  RCA_NBIT4_14 rca0 ( .A(A), .B(B), .Ci(1'b0), .S(sum0) );
  RCA_NBIT4_13 rca1 ( .A(A), .B(B), .Ci(1'b1), .S(sum1) );
  MUX21_GENERIC_NBIT4_7 mux0 ( .A(sum1), .B(sum0), .SEL(ci), .Y(sum) );
endmodule


module SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;


  CARRY_SELECT_NBIT4_0 cs_0 ( .ci(Ci[0]), .A(A[3:0]), .B(B[3:0]), .sum(S[3:0])
         );
  CARRY_SELECT_NBIT4_7 cs_1 ( .ci(Ci[1]), .A(A[7:4]), .B(B[7:4]), .sum(S[7:4])
         );
  CARRY_SELECT_NBIT4_6 cs_2 ( .ci(Ci[2]), .A(A[11:8]), .B(B[11:8]), .sum(
        S[11:8]) );
  CARRY_SELECT_NBIT4_5 cs_3 ( .ci(Ci[3]), .A(A[15:12]), .B(B[15:12]), .sum(
        S[15:12]) );
  CARRY_SELECT_NBIT4_4 cs_4 ( .ci(Ci[4]), .A(A[19:16]), .B(B[19:16]), .sum(
        S[19:16]) );
  CARRY_SELECT_NBIT4_3 cs_5 ( .ci(Ci[5]), .A(A[23:20]), .B(B[23:20]), .sum(
        S[23:20]) );
  CARRY_SELECT_NBIT4_2 cs_6 ( .ci(Ci[6]), .A(A[27:24]), .B(B[27:24]), .sum(
        S[27:24]) );
  CARRY_SELECT_NBIT4_1 cs_7 ( .ci(Ci[7]), .A(A[31:28]), .B(B[31:28]), .sum(
        S[31:28]) );
endmodule


module P4_ADDER ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [6:0] cg_out;

  CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 carry_net ( .A(A), .B(B), .Cin(Cin), 
        .Co({Cout, cg_out}) );
  SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 sum_gen ( .A({A[31:24], n1, A[22:16], 
        n5, A[14:12], n4, A[10:8], n2, A[6:4], n7, A[2:0]}), .B({B[31:16], n3, 
        B[14:4], n6, B[2:0]}), .Ci({cg_out, Cin}), .S(S) );
  BUF_X1 U1 ( .A(A[23]), .Z(n1) );
  BUF_X1 U2 ( .A(A[7]), .Z(n2) );
  BUF_X1 U3 ( .A(B[15]), .Z(n3) );
  BUF_X1 U4 ( .A(A[11]), .Z(n4) );
  BUF_X1 U5 ( .A(A[15]), .Z(n5) );
  BUF_X1 U6 ( .A(B[3]), .Z(n6) );
  BUF_X1 U7 ( .A(A[3]), .Z(n7) );
endmodule

