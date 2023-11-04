/* Generated by Yosys 0.34+43 (git sha1 d21c464ae, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module barrel_shifter(x, y, z);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire \mul0:543 ;
  wire [6:0] mul0v;
  wire \mul1:549 ;
  wire [6:0] mul1v;
  wire \mul2:555 ;
  wire [6:0] mul2v;
  wire \mul3:561 ;
  wire [6:0] mul3v;
  input [3:0] x;
  wire [3:0] x;
  input [2:0] y;
  wire [2:0] y;
  output [3:0] z;
  wire [3:0] z;
  multiplexer mul0 (
    .a(mul0v),
    .d(y[2]),
    .s0(y[0]),
    .s1(y[1]),
    .y(_0_)
  );
  multiplexer mul1 (
    .a(mul1v),
    .d(y[2]),
    .s0(y[0]),
    .s1(y[1]),
    .y(_1_)
  );
  multiplexer mul2 (
    .a(mul2v),
    .d(y[2]),
    .s0(y[0]),
    .s1(y[1]),
    .y(_2_)
  );
  multiplexer mul3 (
    .a(mul3v),
    .d(y[2]),
    .s0(y[0]),
    .s1(y[1]),
    .y(_3_)
  );
  assign mul0v = { 3'h0, x };
  assign mul1v = { 2'h0, x[0], 1'h0, x[3:1] };
  assign mul2v = { 1'h0, x[0], x[1], 2'h0, x[3:2] };
  assign mul3v = { x[0], x[1], x[2], 3'h0, x[3] };
  assign \mul0:543  = _0_;
  assign \mul1:549  = _1_;
  assign \mul2:555  = _2_;
  assign \mul3:561  = _3_;
  assign z = { \mul3:561 , \mul2:555 , \mul1:549 , \mul0:543  };
endmodule

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
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire _44_;
  wire _45_;
  wire _46_;
  wire _47_;
  wire [3:0] c;
  input [3:0] x;
  wire [3:0] x;
  input [3:0] y;
  wire [3:0] y;
  output [4:0] z;
  wire [4:0] z;
  assign _15_ = x[1] ^ y[1];
  assign _16_ = x[0] & y[0];
  assign _17_ = x[0] ^ y[0];
  assign _18_ = _17_ & 1'h0;
  assign _19_ = _16_ | _18_;
  assign _20_ = _15_ & _19_;
  assign _21_ = _14_ | _20_;
  assign _22_ = _13_ & _21_;
  assign _23_ = _12_ | _22_;
  assign _24_ = x[3] & y[3];
  assign _25_ = x[3] ^ y[3];
  assign _26_ = x[2] & y[2];
  assign _27_ = x[2] ^ y[2];
  assign _28_ = x[1] & y[1];
  assign _29_ = x[1] ^ y[1];
  assign _30_ = x[0] & y[0];
  assign _31_ = x[0] ^ y[0];
  assign _32_ = _31_ & 1'h0;
  assign _33_ = _30_ | _32_;
  assign _34_ = _29_ & _33_;
  assign _35_ = _28_ | _34_;
  assign _36_ = _27_ & _35_;
  assign _37_ = _26_ | _36_;
  assign _38_ = _25_ & _37_;
  assign _39_ = _24_ | _38_;
  assign _40_ = x[0] ^ y[0];
  assign _41_ = _40_ ^ 1'h0;
  assign _42_ = x[1] ^ y[1];
  assign _43_ = _42_ ^ c[0];
  assign _44_ = x[2] ^ y[2];
  assign _45_ = _44_ ^ c[1];
  assign _46_ = x[3] ^ y[3];
  assign _47_ = _46_ ^ c[2];
  assign _00_ = x[0] & y[0];
  assign _01_ = x[0] ^ y[0];
  assign _02_ = _01_ & 1'h0;
  assign _03_ = _00_ | _02_;
  assign _04_ = x[1] & y[1];
  assign _05_ = x[1] ^ y[1];
  assign _06_ = x[0] & y[0];
  assign _07_ = x[0] ^ y[0];
  assign _08_ = _07_ & 1'h0;
  assign _09_ = _06_ | _08_;
  assign _10_ = _05_ & _09_;
  assign _11_ = _04_ | _10_;
  assign _12_ = x[2] & y[2];
  assign _13_ = x[2] ^ y[2];
  assign _14_ = x[1] & y[1];
  assign c = { _39_, _23_, _11_, _03_ };
  assign z = { c[3], _47_, _45_, _43_, _41_ };
endmodule

module four_bit_comparator(x, y, z);
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
  wire equal;
  wire [2:0] equalv;
  wire greater;
  wire [3:0] greaterv;
  wire \onebitkomparator_1:433 ;
  wire \onebitkomparator_1:434 ;
  wire \onebitkomparator_1:435 ;
  wire \onebitkomparator_2:445 ;
  wire \onebitkomparator_2:446 ;
  wire \onebitkomparator_2:447 ;
  wire \onebitkomparator_3:457 ;
  wire \onebitkomparator_3:458 ;
  wire \onebitkomparator_3:459 ;
  wire \onebitkomparator_4:469 ;
  wire \onebitkomparator_4:470 ;
  wire \onebitkomparator_4:471 ;
  wire smaller;
  wire [3:0] smallerv;
  input [3:0] x;
  wire [3:0] x;
  input [3:0] y;
  wire [3:0] y;
  output [7:0] z;
  wire [7:0] z;
  assign _12_ = greaterv[0] | greaterv[1];
  assign _13_ = _12_ | greaterv[2];
  assign _14_ = _13_ | greaterv[3];
  assign _15_ = smallerv[0] | smallerv[1];
  assign _16_ = _15_ | smallerv[2];
  assign _17_ = _16_ | smallerv[3];
  onebitkomparator onebitkomparator_1 (
    .e(1'h1),
    .equal(_01_),
    .greater(_00_),
    .smaller(_02_),
    .x0(x[3]),
    .y0(y[3])
  );
  onebitkomparator onebitkomparator_2 (
    .e(equalv[2]),
    .equal(_04_),
    .greater(_03_),
    .smaller(_05_),
    .x0(x[2]),
    .y0(y[2])
  );
  onebitkomparator onebitkomparator_3 (
    .e(equalv[1]),
    .equal(_07_),
    .greater(_06_),
    .smaller(_08_),
    .x0(x[1]),
    .y0(y[1])
  );
  onebitkomparator onebitkomparator_4 (
    .e(equalv[0]),
    .equal(_10_),
    .greater(_09_),
    .smaller(_11_),
    .x0(x[0]),
    .y0(y[0])
  );
  assign greaterv = { \onebitkomparator_1:433 , \onebitkomparator_2:445 , \onebitkomparator_3:457 , \onebitkomparator_4:469  };
  assign smallerv = { \onebitkomparator_1:435 , \onebitkomparator_2:447 , \onebitkomparator_3:459 , \onebitkomparator_4:471  };
  assign equalv = { \onebitkomparator_1:434 , \onebitkomparator_2:446 , \onebitkomparator_3:458  };
  assign greater = _14_;
  assign smaller = _17_;
  assign equal = \onebitkomparator_4:470 ;
  assign \onebitkomparator_1:433  = _00_;
  assign \onebitkomparator_1:434  = _01_;
  assign \onebitkomparator_1:435  = _02_;
  assign \onebitkomparator_2:445  = _03_;
  assign \onebitkomparator_2:446  = _04_;
  assign \onebitkomparator_2:447  = _05_;
  assign \onebitkomparator_3:457  = _06_;
  assign \onebitkomparator_3:458  = _07_;
  assign \onebitkomparator_3:459  = _08_;
  assign \onebitkomparator_4:469  = _09_;
  assign \onebitkomparator_4:470  = _10_;
  assign \onebitkomparator_4:471  = _11_;
  assign z = { 5'h00, equal, smaller, greater };
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
  assign _15_ = x[0] & y[0];
  assign _16_ = x[1] & y[0];
  assign _17_ = x[2] & y[0];
  assign _18_ = x[3] & y[0];
  assign _19_ = x[0] & y[1];
  assign _20_ = x[1] & y[1];
  assign _21_ = x[2] & y[1];
  assign _22_ = x[3] & y[1];
  assign _31_ = x[0] & y[2];
  assign _32_ = x[1] & y[2];
  assign _33_ = x[2] & y[2];
  assign _34_ = x[3] & y[2];
  assign _03_ = x[0] & y[3];
  assign _04_ = x[1] & y[3];
  assign _05_ = x[2] & y[3];
  assign _06_ = x[3] & y[3];
  half_adder stage1_ha1 (
    .a(stage1[1]),
    .b(stage2[0]),
    .co(_24_),
    .s(_23_)
  );
  half_adder stage1_ha2 (
    .a(stage2[3]),
    .b(stage1_co[2]),
    .co(_30_),
    .s(_29_)
  );
  full_adder stage1_va1 (
    .a(stage1[2]),
    .b(stage2[1]),
    .ci(stage1_co[0]),
    .co(_26_),
    .s(_25_)
  );
  full_adder stage1_va2 (
    .a(stage1[3]),
    .b(stage2[2]),
    .ci(stage1_co[1]),
    .co(_28_),
    .s(_27_)
  );
  half_adder stage2_ha1 (
    .a(stage3[0]),
    .b(stage1_s[0]),
    .co(_36_),
    .s(_35_)
  );
  full_adder stage2_va1 (
    .a(stage3[1]),
    .b(stage1_s[1]),
    .ci(stage2_co[0]),
    .co(_38_),
    .s(_37_)
  );
  full_adder stage2_va2 (
    .a(stage3[2]),
    .b(stage1_s[2]),
    .ci(stage2_co[1]),
    .co(_00_),
    .s(_39_)
  );
  full_adder stage2_va3 (
    .a(stage3[3]),
    .b(stage1_co[3]),
    .ci(stage2_co[2]),
    .co(_02_),
    .s(_01_)
  );
  half_adder stage3_ha1 (
    .a(stage4[0]),
    .b(stage2_s[0]),
    .co(_08_),
    .s(_07_)
  );
  full_adder stage3_va1 (
    .a(stage4[1]),
    .b(stage2_s[1]),
    .ci(stage3_co[0]),
    .co(_10_),
    .s(_09_)
  );
  full_adder stage3_va2 (
    .a(stage4[2]),
    .b(stage2_s[2]),
    .ci(stage3_co[1]),
    .co(_12_),
    .s(_11_)
  );
  full_adder stage3_va3 (
    .a(stage4[3]),
    .b(stage2_co[3]),
    .ci(stage3_co[2]),
    .co(_14_),
    .s(_13_)
  );
  assign stage1 = { _18_, _17_, _16_, _15_ };
  assign stage2 = { _22_, _21_, _20_, _19_ };
  assign stage3 = { _34_, _33_, _32_, _31_ };
  assign stage4 = { _06_, _05_, _04_, _03_ };
  assign stage1_s = { _29_, _27_, _25_ };
  assign stage1_co = { _30_, _28_, _26_, _24_ };
  assign stage2_s = { _01_, _39_, _37_ };
  assign stage2_co = { _02_, _00_, _38_, _36_ };
  assign stage3_co = { _12_, _10_, _08_ };
  assign z = { _14_, _13_, _11_, _09_, _07_, _35_, _23_, stage1[0] };
endmodule

module multiplexer(a, s0, s1, d, y);
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
  input [6:0] a;
  wire [6:0] a;
  input d;
  wire d;
  input s0;
  wire s0;
  input s1;
  wire s1;
  output y;
  wire y;
  assign _00_ = ~ s0;
  assign _01_ = ~ s1;
  assign _02_ = _01_ & _00_;
  assign _03_ = _02_ ? a[0] : _08_;
  assign _04_ = ~ s1;
  assign _05_ = _04_ & s0;
  assign _06_ = ~ d;
  assign _07_ = _06_ & _05_;
  assign _08_ = _07_ ? a[1] : _13_;
  assign _09_ = ~ s0;
  assign _10_ = s1 & _09_;
  assign _11_ = ~ d;
  assign _12_ = _11_ & _10_;
  assign _13_ = _12_ ? a[2] : _17_;
  assign _14_ = s1 & s0;
  assign _15_ = ~ d;
  assign _16_ = _15_ & _14_;
  assign _17_ = _16_ ? a[3] : _21_;
  assign _18_ = ~ s1;
  assign _19_ = _18_ & s0;
  assign _20_ = d & _19_;
  assign _21_ = _20_ ? a[4] : _25_;
  assign _22_ = ~ s0;
  assign _23_ = s1 & _22_;
  assign _24_ = d & _23_;
  assign _25_ = _24_ ? a[5] : a[6];
  assign y = _03_;
endmodule

module onebitkomparator(e, x0, y0, greater, equal, smaller);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  wire _7_;
  input e;
  wire e;
  output equal;
  wire equal;
  output greater;
  wire greater;
  output smaller;
  wire smaller;
  input x0;
  wire x0;
  input y0;
  wire y0;
  assign _0_ = ~ y0;
  assign _1_ = x0 & _0_;
  assign _2_ = _1_ & e;
  assign _3_ = x0 ~^ y0;
  assign _4_ = _3_ & e;
  assign _5_ = ~ x0;
  assign _6_ = _5_ & y0;
  assign _7_ = _6_ & e;
  assign greater = _2_;
  assign equal = _4_;
  assign smaller = _7_;
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
  wire [4:0] _00_;
  wire [7:0] _01_;
  wire _02_;
  wire [7:0] _03_;
  wire _04_;
  wire [7:0] _05_;
  wire _06_;
  wire [7:0] _07_;
  wire _08_;
  wire [7:0] _09_;
  wire [4:0] _10_;
  wire [7:0] _11_;
  wire [7:0] _12_;
  wire [7:0] _13_;
  wire [3:0] _14_;
  wire _15_;
  wire [7:0] _16_;
  wire _17_;
  wire [7:0] barrel_shifter_out;
  wire [7:0] cla_out;
  input clk;
  wire clk;
  wire [7:0] comparator_out;
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
  assign _15_ = uio_in[2:0] == 3'h0;
  assign _16_ = _15_ ? ripple_out : _01_;
  assign _17_ = uio_in[2:0] == 3'h1;
  assign _01_ = _17_ ? cla_out : _03_;
  assign _02_ = uio_in[2:0] == 3'h2;
  assign _03_ = _02_ ? matrix_out : _05_;
  assign _04_ = uio_in[2:0] == 3'h3;
  assign _05_ = _04_ ? wallace_out : _07_;
  assign _06_ = uio_in[2:0] == 3'h4;
  assign _07_ = _06_ ? comparator_out : _09_;
  assign _08_ = uio_in[2:0] == 3'h5;
  assign _09_ = _08_ ? barrel_shifter_out : 8'h00;
  ripple_carry adder (
    .a(ui_in[3:0]),
    .b(ui_in[7:4]),
    .s(_00_)
  );
  barrel_shifter barrel_shifter (
    .x(ui_in[3:0]),
    .y(ui_in[6:4]),
    .z(_14_)
  );
  cla cla (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_10_)
  );
  four_bit_comparator four_bit_comparator (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_13_)
  );
  matrix_mul matrix (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_11_)
  );
  wallace_tree wallace (
    .x(ui_in[3:0]),
    .y(ui_in[7:4]),
    .z(_12_)
  );
  assign ripple_out = { 3'h0, _00_ };
  assign cla_out = { 3'h0, _10_ };
  assign matrix_out = _11_;
  assign wallace_out = _12_;
  assign comparator_out = _13_;
  assign barrel_shifter_out = { 4'h0, _14_ };
  assign uo_out = _16_;
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
  wire [4:0] _32_;
  wire \f1:338 ;
  wire \f1:339 ;
  wire \f2:347 ;
  wire \f2:348 ;
  wire \f3:356 ;
  wire \f3:357 ;
  wire \f4:365 ;
  wire \f4:366 ;
  wire \f5:374 ;
  wire \f5:375 ;
  wire \h1:382 ;
  wire \h1:383 ;
  wire \h2:390 ;
  wire \h2:391 ;
  wire \h3:398 ;
  wire \h3:399 ;
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
  assign _00_ = x[0] & y[0];
  assign _01_ = x[1] & y[0];
  assign _02_ = x[2] & y[0];
  assign _03_ = x[3] & y[0];
  assign _04_ = x[0] & y[1];
  assign _05_ = x[1] & y[1];
  assign _06_ = x[2] & y[1];
  assign _07_ = x[3] & y[1];
  assign _08_ = x[0] & y[2];
  assign _09_ = x[1] & y[2];
  assign _10_ = x[2] & y[2];
  assign _11_ = x[3] & y[2];
  assign _12_ = x[0] & y[3];
  assign _13_ = x[1] & y[3];
  assign _14_ = x[2] & y[3];
  assign _15_ = x[3] & y[3];
  cla cla_adder (
    .x(vec_1),
    .y(vec_2),
    .z(_32_)
  );
  full_adder f1 (
    .a(stage_1[2]),
    .b(stage_2[1]),
    .ci(stage_3[0]),
    .co(_17_),
    .s(_16_)
  );
  full_adder f2 (
    .a(stage_1[3]),
    .b(stage_2[2]),
    .ci(stage_3[1]),
    .co(_19_),
    .s(_18_)
  );
  full_adder f3 (
    .a(stage_5[3]),
    .b(stage_5[4]),
    .ci(stage_4[0]),
    .co(_21_),
    .s(_20_)
  );
  full_adder f4 (
    .a(stage_5[5]),
    .b(stage_5[6]),
    .ci(stage_4[1]),
    .co(_23_),
    .s(_22_)
  );
  full_adder f5 (
    .a(stage_5[7]),
    .b(stage_3[3]),
    .ci(stage_4[2]),
    .co(_25_),
    .s(_24_)
  );
  half_adder h1 (
    .a(stage_1[1]),
    .b(stage_2[0]),
    .co(_27_),
    .s(_26_)
  );
  half_adder h2 (
    .a(stage_2[3]),
    .b(stage_3[2]),
    .co(_29_),
    .s(_28_)
  );
  half_adder h3 (
    .a(stage_5[1]),
    .b(stage_5[2]),
    .co(_31_),
    .s(_30_)
  );
  assign stage_1 = { _03_, _02_, _01_, _00_ };
  assign stage_2 = { _07_, _06_, _05_, _04_ };
  assign stage_3 = { _11_, _10_, _09_, _08_ };
  assign stage_4 = { _15_, _14_, _13_, _12_ };
  assign stage_5 = { \h2:391 , \h2:390 , \f2:348 , \f2:347 , \f1:339 , \f1:338 , \h1:383 , \h1:382  };
  assign stage_6 = { stage_4[3], \f5:375 , \f5:374 , \f4:366 , \f4:365 , \f3:357 , \f3:356 , \h3:399  };
  assign vec_1 = { stage_6[7], stage_6[5], stage_6[3], stage_6[1] };
  assign vec_2 = { stage_6[6], stage_6[4], stage_6[2], stage_6[0] };
  assign \f1:338  = _16_;
  assign \f1:339  = _17_;
  assign \f2:347  = _18_;
  assign \f2:348  = _19_;
  assign \f3:356  = _20_;
  assign \f3:357  = _21_;
  assign \f4:365  = _22_;
  assign \f4:366  = _23_;
  assign \f5:374  = _24_;
  assign \f5:375  = _25_;
  assign \h1:382  = _26_;
  assign \h1:383  = _27_;
  assign \h2:390  = _28_;
  assign \h2:391  = _29_;
  assign \h3:398  = _30_;
  assign \h3:399  = _31_;
  assign z = { _32_, \h3:398 , stage_5[0], stage_1[0] };
endmodule
