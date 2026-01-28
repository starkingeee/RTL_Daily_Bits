`timescale 1ns / 1ps
// 3 bit Ripple up asynchronous Counter 
module logic(clk,rst,Q );
 input clk,rst;
 output reg [2:0] Q;
 
 reg J0,K0,J1,K1,J2,K2;
 always @(negedge clk or posedge rst) 
 begin 
  if(rst) begin  Q[0] <= 0; J0 <= 1; K0<=1; end 
  else 
  begin 
    if(J0 == 1 && K0 == 1)  Q[0] <= ~Q[0];           // Q0 output frequency is f/2
  end 
 end 
 
  always @(negedge Q[0] or posedge rst) 
 begin 
  if(rst) begin  Q[1] <= 0; J1 <= 1; K1<=1; end 
  else 
  begin 
    if(J1 == 1 && K1 == 1)  Q[1] <= ~Q[1];        // Q1 output frequency is f/4
  end 
 end 
 
  always @(negedge Q[1] or posedge rst) 
 begin 
  if(rst) begin  Q[2] <= 0; J2 <= 1; K2<=1; end 
  else 
  begin 
    if(J2 == 1 && K2 == 1)  Q[2] <= ~Q[2];        // Q2 output frequency is f/8
  end 
 end 
 
 
endmodule
