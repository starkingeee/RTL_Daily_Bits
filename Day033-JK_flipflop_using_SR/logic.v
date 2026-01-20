`timescale 1ns / 1ps
module logic(J,K,clk,Q,Qbar,clr);
 input J,K,clk,clr;
 output reg Q,Qbar;
  wire S,R;
 assign S = J & Qbar;
 assign R = K & Q;
 always @(posedge clk or posedge clr)
 begin 
  if(clr) begin Q <= 0; Qbar <= 1; end
  else
  begin 
    if( S == 0 && R == 0) begin Q <= Q; Qbar <= Qbar; end 
    else if( S == 0 && R == 1 ) begin Q <= 0; Qbar <= 1;  end 
    else if(S == 1 && R == 0) begin Q <= 1; Qbar <= 0; end 
    else begin Q <= 1'bx; Qbar <= 1'bx; end 
   end  
 end 
 
endmodule
