`timescale 1ns / 1ps

module BtoG(in,result );
 parameter n=8;
 input [n:1] in;
 output reg [n : 1] result;
  reg [n-1 : 1] reg1,reg2,reg3;   // temporary register
 always @(*)
  begin 
    reg1 = in[n-1:1];  //  starting  to n-1 bit 
    reg2 = in[n:2];    //  omitted one bit from starting
    reg3 = (reg1 ^ reg2);   
   result = {in[n],reg3};
  end 
endmodule
