`timescale 1ns / 1ps

module logic_gate(a,b,c1,c2,c3,c4,c5,c6);
 input a,b;
 output c1,c2,c3,c4,c5,c6;
 and M1 (c1,a,b);
 or M2 (c2,a,b);
 nand M3 (c3,a,b);
 nor M4 (c4,a,b);
 xor M5 (c5,a,b);
 xnor M6 (c6,a,b);

endmodule
