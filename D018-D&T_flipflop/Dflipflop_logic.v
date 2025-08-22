`timescale 1ns / 1ps

module D_flipflop(D,Q,Qbar,clk,rst);
 input D;
 input clk,rst;
 output reg Q;
 output Qbar;
 assign Qbar = ~Q;
 
 always @(posedge clk)
 begin 
  if(rst) Q <= 0;
  else 
  begin 
   if(D==0 | D==1)  Q <= D;
   else  Q <= 1'bx;
     
  end 
 end 
endmodule

