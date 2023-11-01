/* Generated by Yosys 0.34+43 (git sha1 d21c464ae, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module cla(x, y, z);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire [4:0] c;
  wire [3:0] gen;
  wire [3:0] pro;
  wire [3:0] s;
  input [3:0] x;
  wire [3:0] x;
  input [3:0] y;
  wire [3:0] y;
  output [4:0] z;
  wire [4:0] z;
  assign _19_ = pro[3] ^ c[3];
  assign _00_ = x[0] & y[0];
  assign _01_ = x[1] & y[1];
  assign _02_ = x[2] & y[2];
  assign _03_ = x[3] & y[3];
  assign _04_ = x[0] ^ y[0];
  assign _05_ = x[1] ^ y[1];
  assign _06_ = x[2] ^ y[2];
  assign _07_ = x[3] ^ y[3];
  assign _08_ = pro[0] & c[0];
  assign _09_ = gen[0] | _08_;
  assign _10_ = pro[1] & c[1];
  assign _11_ = gen[1] | _10_;
  assign _12_ = pro[2] & c[2];
  assign _13_ = gen[2] | _12_;
  assign _14_ = pro[3] & c[3];
  assign _15_ = gen[3] | _14_;
  assign _16_ = pro[0] ^ c[0];
  assign _17_ = pro[1] ^ c[1];
  assign _18_ = pro[2] ^ c[2];
  assign gen = { _03_, _02_, _01_, _00_ };
  assign pro = { _07_, _06_, _05_, _04_ };
  assign c = { _15_, _13_, _11_, _09_, 1'h0 };
  assign s = { _19_, _18_, _17_, _16_ };
  assign z = { c[4], s };
endmodule

module full_adder(a, b, ci, s, co);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  input a;
  wire a;
  input b;
  wire b;
  input ci;
  wire ci;
  output co;
  wire co;
  output s;
  wire s;
  assign _00_ = a & b;
  assign _01_ = a & ci;
  assign _02_ = _00_ | _01_;
  assign _03_ = b & ci;
  assign _04_ = _02_ | _03_;
  assign _05_ = ~ b;
  assign _06_ = a & _05_;
  assign _07_ = ~ ci;
  assign _08_ = _06_ & _07_;
  assign _09_ = ~ a;
  assign _10_ = ~ b;
  assign _11_ = _09_ & _10_;
  assign _12_ = _11_ & ci;
  assign _13_ = _08_ | _12_;
  assign _14_ = ~ a;
  assign _15_ = _14_ & b;
  assign _16_ = ~ ci;
  assign _17_ = _15_ & _16_;
  assign _18_ = _13_ | _17_;
  assign _19_ = a & b;
  assign _20_ = _19_ & ci;
  assign _21_ = _18_ | _20_;
  assign s = _21_;
  assign co = _04_;
endmodule

module half_adder(a, b, s, co);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  input a;
  wire a;
  input b;
  wire b;
  output co;
  wire co;
  output s;
  wire s;
  assign _0_ = a & b;
  assign _1_ = ~ b;
  assign _2_ = a & _1_;
  assign _3_ = ~ a;
  assign _4_ = _3_ & b;
  assign _5_ = _2_ | _4_;
  assign s = _5_;
  assign co = _0_;
endmodule

module matrix_mul(x, y, z);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire [3:0] stage1;
  wire [3:0] stage1_co;
  wire [2:0] stage1_s;
  wire [3:0] stage2;
  wire [3:0] stage2_co;
  wire [2:0] stage2_s;
  wire [3:0] stage3;
  wire [2:0] stage3_co;
  wire [3:0] stage4;
  input [3:0] x;
  wire [3:0] x;
  input [3:0] y;
  wire [3:0] y;
  output [7:0] z;
  wire [7:0] z;
  assign _00_ = x[0] & y[0];
  assign _01_ = x[1] & y[0];
  assign _02_ = x[2] & y[0];
  assign _03_ = x[3] & y[0];
  assign _04_ = x[0] & y[1];
  assign _05_ = x[1] & y[1];
  assign _06_ = x[2] & y[1];
  assign _07_ = x[3] & y[1];
  assign _16_ = x[0] & y[2];
  assign _17_ = x[1] & y[2];
  assign _18_ = x[2] & y[2];
  assign _19_ = x[3] & y[2];
  assign _28_ = x[0] & y[3];
  assign _29_ = x[1] & y[3];
  assign _30_ = x[2] & y[3];
  assign _31_ = x[3] & y[3];
  half_adder stage1_ha1 (
    .a(stage1[1]),
    .b(stage2[0]),
    .co(_09_),
    .s(_08_)
  );
  half_adder stage1_ha2 (
    .a(stage2[3]),
    .b(stage1_co[2]),
    .co(_15_),
    .s(_14_)
  );
  full_adder stage1_va1 (
    .a(stage1[2]),
    .b(stage2[1]),
    .ci(stage1_co[0]),
    .co(_11_),
    .s(_10_)
  );
  full_adder stage1_va2 (
    .a(stage1[3]),
    .b(stage2[2]),
    .ci(stage1_co[1]),
    .co(_13_),
    .s(_12_)
  );
  half_adder stage2_ha1 (
    .a(stage3[0]),
    .b(stage1_s[0]),
    .co(_21_),
    .s(_20_)
  );
  full_adder stage2_va1 (
    .a(stage3[1]),
    .b(stage1_s[1]),
    .ci(stage2_co[0]),
    .co(_23_),
    .s(_22_)
  );
  full_adder stage2_va2 (
    .a(stage3[2]),
    .b(stage1_s[2]),
    .ci(stage2_co[1]),
    .co(_25_),
    .s(_24_)
  );
  full_adder stage2_va3 (
    .a(stage3[3]),
    .b(stage1_co[3]),
    .ci(stage2_co[2]),
    .co(_27_),
    .s(_26_)
  );
  half_adder stage3_ha1 (
    .a(stage4[0]),
    .b(stage2_s[0]),
    .co(_33_),
    .s(_32_)
  );
  full_adder stage3_va1 (
    .a(stage4[1]),
    .b(stage2_s[1]),
    .ci(stage3_co[0]),
    .co(_35_),
    .s(_34_)
  );
  full_adder stage3_va2 (
    .a(stage4[2]),
    .b(stage2_s[2]),
    .ci(stage3_co[1]),
    .co(_37_),
    .s(_36_)
  );
  full_adder stage3_va3 (
    .a(stage4[3]),
    .b(stage2_co[3]),
    .ci(stage3_co[2]),
    .co(_39_),
    .s(_38_)
  );
  assign stage1 = { _03_, _02_, _01_, _00_ };
  assign stage2 = { _07_, _06_, _05_, _04_ };
  assign stage3 = { _19_, _18_, _17_, _16_ };
  assign stage4 = { _31_, _30_, _29_, _28_ };
  assign stage1_s = { _14_, _12_, _10_ };
  assign stage1_co = { _15_, _13_, _11_, _09_ };
  assign stage2_s = { _26_, _24_, _22_ };
  assign stage2_co = { _27_, _25_, _23_, _21_ };
  assign stage3_co = { _37_, _35_, _33_ };
  assign z = { _39_, _38_, _36_, _34_, _32_, _20_, _08_, stage1[0] };
endmodule

module ripple_carry(a, b, s);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  wire _7_;
  input [3:0] a;
  wire [3:0] a;
  input [3:0] b;
  wire [3:0] b;
  wire co0;
  wire co1;
  wire co2;
  output [4:0] s;
  wire [4:0] s;
  half_adder ad0 (
    .a(a[0]),
    .b(b[0]),
    .co(_1_),
    .s(_0_)
  );
  full_adder ad1 (
    .a(a[1]),
    .b(b[1]),
    .ci(co0),
    .co(_3_),
    .s(_2_)
  );
  full_adder ad2 (
    .a(a[2]),
    .b(b[2]),
    .ci(co1),
    .co(_5_),
    .s(_4_)
  );
  full_adder ad3 (
    .a(a[3]),
    .b(b[3]),
    .ci(co2),
    .co(_7_),
    .s(_6_)
  );
  assign co0 = _1_;
  assign co1 = _3_;
  assign co2 = _5_;
  assign s = { _7_, _6_, _4_, _2_, _0_ };
endmodule

module tt_um_cejmu(ui_in, uio_in, ena, clk, rst_n, uo_out, uio_out, uio_oe);
  wire [4:0] _0_;
  wire [7:0] _1_;
  wire [4:0] _2_;
  wire [7:0] _3_;
  wire [7:0] _4_;
  wire _5_;
  wire [7:0] _6_;
  wire _7_;
  wire [7:0] _8_;
  wire _9_;
  wire [7:0] cla_out;
  input clk;
  wire clk;
  input ena;
  wire ena;
  wire [7:0] matrix_out;
  wire [7:0] ripple_out;
  input rst_n;
  wire rst_n;
  input [7:0] ui_in;
  wire [7:0] ui_in;
  input [7:0] uio_in;
  wire [7:0] uio_in;
  output [7:0] uio_oe;
  wire [7:0] uio_oe;
  output [7:0] uio_out;
  wire [7:0] uio_out;
  output [7:0] uo_out;
  wire [7:0] uo_out;
  wire [7:0] wallace_out;
  assign _5_ = uio_in[1:0] == 2'h0;
  assign _6_ = _5_ ? ripple_out : _8_;
  assign _7_ = uio_in[1:0] == 2'h1;
  assign _8_ = _7_ ? cla_out : _1_;
  assign _9_ = uio_in[1:0] == 2'h2;
  assign _1_ = _9_ ? matrix_out : wallace_out;
  ripple_carry adder (
    .a(ui_in[3:0]),
    .b(ui_in[7:4]),
    .s(_0_)
  );
  cla cla (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_2_)
  );
  matrix_mul matrix (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_3_)
  );
  wallace_tree wallace (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_4_)
  );
  assign ripple_out = { 3'h0, _0_ };
  assign cla_out = { 3'h0, _2_ };
  assign matrix_out = _3_;
  assign wallace_out = _4_;
  assign uo_out = _6_;
  assign uio_out = 8'h00;
  assign uio_oe = 8'h00;
endmodule

module wallace_tree(x, y, z);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire [4:0] _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire \f1:279 ;
  wire \f1:280 ;
  wire \f2:288 ;
  wire \f2:289 ;
  wire \f3:297 ;
  wire \f3:298 ;
  wire \f4:306 ;
  wire \f4:307 ;
  wire \f5:315 ;
  wire \f5:316 ;
  wire \h1:323 ;
  wire \h1:324 ;
  wire \h2:331 ;
  wire \h2:332 ;
  wire \h3:339 ;
  wire \h3:340 ;
  wire [3:0] stage_1;
  wire [3:0] stage_2;
  wire [3:0] stage_3;
  wire [3:0] stage_4;
  wire [7:0] stage_5;
  wire [7:0] stage_6;
  wire [3:0] vec_1;
  wire [3:0] vec_2;
  input [3:0] x;
  wire [3:0] x;
  input [3:0] y;
  wire [3:0] y;
  output [7:0] z;
  wire [7:0] z;
  assign _12_ = x[0] & y[0];
  assign _13_ = x[1] & y[0];
  assign _14_ = x[2] & y[0];
  assign _15_ = x[3] & y[0];
  assign _16_ = x[0] & y[1];
  assign _17_ = x[1] & y[1];
  assign _18_ = x[2] & y[1];
  assign _19_ = x[3] & y[1];
  assign _20_ = x[0] & y[2];
  assign _21_ = x[1] & y[2];
  assign _22_ = x[2] & y[2];
  assign _23_ = x[3] & y[2];
  assign _24_ = x[0] & y[3];
  assign _25_ = x[1] & y[3];
  assign _26_ = x[2] & y[3];
  assign _27_ = x[3] & y[3];
  ripple_carry cla_adder (
    .a(vec_1),
    .b(vec_2),
    .s(_11_)
  );
  full_adder f1 (
    .a(stage_1[2]),
    .b(stage_2[1]),
    .ci(stage_3[0]),
    .co(_29_),
    .s(_28_)
  );
  full_adder f2 (
    .a(stage_1[3]),
    .b(stage_2[2]),
    .ci(stage_3[1]),
    .co(_31_),
    .s(_30_)
  );
  full_adder f3 (
    .a(stage_5[3]),
    .b(stage_5[4]),
    .ci(stage_4[0]),
    .co(_00_),
    .s(_32_)
  );
  full_adder f4 (
    .a(stage_5[5]),
    .b(stage_5[6]),
    .ci(stage_4[1]),
    .co(_02_),
    .s(_01_)
  );
  full_adder f5 (
    .a(stage_5[7]),
    .b(stage_3[3]),
    .ci(stage_4[2]),
    .co(_04_),
    .s(_03_)
  );
  half_adder h1 (
    .a(stage_1[1]),
    .b(stage_2[0]),
    .co(_06_),
    .s(_05_)
  );
  half_adder h2 (
    .a(stage_2[3]),
    .b(stage_3[2]),
    .co(_08_),
    .s(_07_)
  );
  half_adder h3 (
    .a(stage_5[1]),
    .b(stage_5[2]),
    .co(_10_),
    .s(_09_)
  );
  assign stage_1 = { _15_, _14_, _13_, _12_ };
  assign stage_2 = { _19_, _18_, _17_, _16_ };
  assign stage_3 = { _23_, _22_, _21_, _20_ };
  assign stage_4 = { _27_, _26_, _25_, _24_ };
  assign stage_5 = { \h2:332 , \h2:331 , \f2:289 , \f2:288 , \f1:280 , \f1:279 , \h1:324 , \h1:323  };
  assign stage_6 = { stage_4[3], \f5:316 , \f5:315 , \f4:307 , \f4:306 , \f3:298 , \f3:297 , \h3:340  };
  assign vec_1 = { stage_6[7], stage_6[5], stage_6[3], stage_6[1] };
  assign vec_2 = { stage_6[6], stage_6[4], stage_6[2], stage_6[0] };
  assign \f1:279  = _28_;
  assign \f1:280  = _29_;
  assign \f2:288  = _30_;
  assign \f2:289  = _31_;
  assign \f3:297  = _32_;
  assign \f3:298  = _00_;
  assign \f4:306  = _01_;
  assign \f4:307  = _02_;
  assign \f5:315  = _03_;
  assign \f5:316  = _04_;
  assign \h1:323  = _05_;
  assign \h1:324  = _06_;
  assign \h2:331  = _07_;
  assign \h2:332  = _08_;
  assign \h3:339  = _09_;
  assign \h3:340  = _10_;
  assign z = { _11_, \h3:339 , stage_5[0], stage_1[0] };
endmodule
