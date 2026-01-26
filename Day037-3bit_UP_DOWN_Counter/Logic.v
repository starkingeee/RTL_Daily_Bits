`timescale 1ns / 1ps

// 3 bit up and Down counter 
// mode M when M=1 then up counter 
// when M=0 then down counter 
module logic(clk,rst,M,Q );
 input clk,rst,M;
 output reg [2:0] Q;
 wire J2,K2,J1,K1;
  reg J0,K0;
  assign J2 =( Q[1] & M & Q[0] ) | ((~Q[1]) & (~Q[0]) & (~M));
  assign K2 =( Q[1] & M & Q[0] ) | ((~Q[1]) & (~Q[0]) & (~M));
  
  assign J1 = ~(Q[0] ^ M);
  assign K1 = ~(Q[0] ^ M);
 
 always @(posedge clk or posedge rst)
  begin
   if(rst) Q[2] <= 0;
   else 
   begin 
    case({J2,K2})
    2'b00: Q[2] <= Q[2];
    2'b01: Q[2] <= 0;
    2'b10: Q[2] <= 1;
    2'b11: Q[2] <= ~Q[2];
    endcase
   end 
    
  end 
  
   always @(posedge clk or posedge rst)
  begin
   if(rst) Q[1] <= 0;
   else 
   begin 
    case({J1,K1})
    2'b00: Q[1] <= Q[1];
    2'b01: Q[1] <= 0;
    2'b10: Q[1] <= 1;
    2'b11: Q[1] <= ~Q[1];
    endcase
   end 
    
  end 
  
   always @(posedge clk or posedge rst)
  begin
   if(rst) begin Q[0] <= 0; J0 <= 1; K0 <= 1;   end
   else 
   begin 
    case({J0,K0})
    2'b00: Q[0] <= Q[0];
    2'b01: Q[0] <= 0;
    2'b10: Q[0] <= 1;
    2'b11: Q[0] <= ~Q[0];
    endcase
   end 
    
  end 
endmodule
