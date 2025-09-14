`timescale 1ns / 1ps

module square( in,result );
 parameter n=4;
 input [n-1:0] in;
 output reg [2*n - 1: 0] result;
 reg [2*n - 1 :0] out;
 integer i;
 always @(*)
  begin
   out = 0; 
   for(i=0;i<n;i=i+1)
    begin
     if(in[i] == 1'b1) out = out + (in << i);
     else out = out;   
    end 
    result = out;
  end 
endmodule
