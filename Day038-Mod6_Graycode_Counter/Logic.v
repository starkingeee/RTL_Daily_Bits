`timescale 1ns / 1ps

// Modulo six gray code counter using T flipflop
// for module 6 : we are using 3 T flipflop
module logic(clk,rst,Q );
 input clk,rst;
 output reg [2:0] Q;
 wire T2,T1,T0;
 assign T2 =(Q[2] & Q[0]) | ((~Q[2]) & Q[1] & (~Q[0]));   // T2 = Q2Q0 +Q2Q1Q0' ;
 assign T1 = ((~Q[1]) & Q[0]) | (Q[2] & Q[0]) ;
 assign T0 = Q[2] | (Q[1] & Q[0]) | ((~Q[1]) & (~Q[0])) ;
 
 // this is for Q2
 always @(posedge clk or posedge rst)    // asychrnous reset
  begin 
   if(rst) Q[2] <= 0;
   else
   begin
    case(T2)
    1'b0: Q[2] <= Q[2];
    1'b1: Q[2] <= ~Q[2];
    endcase
   end 
  end
   // this is for Q1
   always @(posedge clk or posedge rst)    // asychrnous reset
  begin 
   if(rst) Q[1] <= 0;
   else
   begin
    case(T1)
    1'b0: Q[1] <= Q[1];
    1'b1: Q[1] <= ~Q[1];
    endcase
   end 
  end 
  
  // this is for Q0
   always @(posedge clk or posedge rst)    // asychrnous reset
  begin 
   if(rst) Q[0] <= 0;
   else
   begin
    case(T0)
    1'b0: Q[0] <= Q[0];
    1'b1: Q[0] <= ~Q[0];
    endcase
   end 
  end
endmodule
