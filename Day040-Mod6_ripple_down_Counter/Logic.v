`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// mod6 ripple down counter 
module logic(clk,rst,Q);
 input clk,rst;
 output reg [2:0] Q;
 reg T0,T1,T2;
 wire pre;
 assign pre = (~Q[2]) & Q[1] & (~Q[0]);
 always @(posedge clk or posedge rst or (pre==1))
 begin 
  if((pre) || rst) begin Q[0] <= 1; T0<=1; end 
  else 
  begin
   if(T0==0) Q[0] <= Q[0];
   else Q[0] <= ~Q[0];
  end 
 end 
 
 always @(posedge Q[0] or posedge rst or (pre==1))
 begin 
  if(pre || rst) begin Q[1] <= 1; T1<=1; end 
  else 
  begin
   if(T0==0) Q[1] <= Q[1];
   else Q[1] <= ~Q[1];
  end 
 end
 
 always @(posedge Q[1] or posedge rst or (pre==1))
 begin 
  if(pre || rst) begin Q[2] <= 1; T2<=1; end 
  else 
  begin
   if(T0==0) Q[2] <= Q[2];
   else Q[2] <= ~Q[2];
  end 
 end  
endmodule
