`timescale 1ns / 1ps
module jk_flipflop(J,K,Q,Qbar,clk);
 input J,K,clk;
 output reg  Q;
 output Qbar;
 assign Qbar = ~Q;
 always @(posedge clk)
 begin 
   case ({J,K})      // concatenate the value of j and k 
   2'b00: Q <= Q;    // Q(n+1) = Q(n)
  2'b01: Q <= 0;
  2'b10: Q <= 1;
  2'b11: Q <= ~Q;     // Q(n+1) = ~Q(n)
  default: Q <= 0;
  endcase
 end 
endmodule
