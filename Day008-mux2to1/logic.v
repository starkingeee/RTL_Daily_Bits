`timescale 1ns / 1ps


// 2to1 mux using ternary operator 
module mux1(in,sel,out );
 input [1:0] in;
 input sel;
 output out;
 assign out = (sel)?in[1]:in[0];
endmodule

// umux2to1 using gate modeling
module mux2(in,sel,out);
 input [1:0] in;
 input sel;
 output out;
 wire t1,t2;
 and g1(t1,in[0],~sel);
 and g2(t2,in[1],sel);
 or g3(out,t1,t2);
endmodule

//mux2t01 using behavioural modeling
module mux3(in,sel,out);
 input [1:0] in;
 input sel;
 output reg out;
 always @(*)
 begin 
  if(sel) out = in[1];
  else if(!sel) out=in[0];
  else  out=1'bz; 
 end 
endmodule

//mux2to1 dataflow method
module mux4(in,sel,out);
 input [1:0] in;
 input sel;
 output out;
 assign out = in[sel];
endmodule

