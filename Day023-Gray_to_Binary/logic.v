`timescale 1ns / 1ps

module GtoB(in, result  );
 parameter n=8;
 input [n:1] in;
 output reg [n:1] result;
 reg [n:1] out; 
 integer i;
  always @(*)
  begin 
    out[n]=in[n];      // initally take bit n  in out[n]
    for(i=n; i>1; i=i-1)   // loop run n to 2 
    begin 
       out[i-1] = (out[i] ^ in[i-1]);
    end 
    result = out;
    
  end
endmodule
