`timescale 1ns / 1ps

module logic_gate(a,b,c1,c2,c3,c4,c5,c6);
 input a,b;
 output reg c1,c2,c3,c4,c5,c6;
 
 always @(*)
 begin
  c1 =  a&b;   // and
  c2 =  a|b;   // or
  c3 =  ~(a&b); // nand
  c4 =  ~(a|b); // nor
  c5 =  (a^b);  //xor
  c6 =  ~(a^b); // nor

 end
endmodule
