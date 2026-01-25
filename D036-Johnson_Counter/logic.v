`timescale 1ns / 1ps
//johnson counter 
module logic(clk,rst,Q );

 input clk,rst;
 output reg [3:0] Q;
 wire Qbar;
 assign Qbar = ~Q[0];
 always @(posedge clk or posedge rst) // asynchrnous rst
  begin 
   if(rst) Q <= 4'b0000; 
   else Q <= {Qbar,Q[3:1]};
  end 
 
endmodule
