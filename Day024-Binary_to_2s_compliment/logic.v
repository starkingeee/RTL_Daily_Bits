`timescale 1ns / 1ps
module Bto2s_converter(in,result );
 parameter n=8;
 input [n-1:0] in;
 output reg [n-1:0] result;
 reg [n-1:0] out;
 integer i;
 always @(*)
  begin
   for(i=0;i<8;i=i+1)
   begin 
    if(in[i]==1'b0) out[i]=1'b1;
    else out[i]=1'b0;
   end 
   result = out + 1'b1;
  end
endmodule
