`timescale 1ns / 1ps

module master_slave( J,K,clk,Q,Qbar,q,rst);
 input J,K,clk,rst;  // en is enable
 output reg Q,q,Qbar;   // Q is Slave output(final), q is master output 
 wire w1,w2;
 reg qbar;
 assign w1 = J & Qbar;
 assign w2 = K & Q;
 
 // this is for master  and here q is master output 
 always @(posedge clk or rst)
 begin 
  if(rst) begin q = 0; qbar = 1;end 
  else
  begin
  if(w1==0 && w2 == 0) begin  q <= q; qbar <= qbar; end 
  else if(w1 == 0 && w2 == 1) begin  q<= 0; qbar <= 1;end
  else if(w1 == 1 && w2 == 0) begin  q<= 1; qbar <= 0;end
  else begin q <= 1'bx; qbar = 1'bx; end
  end
 end 
 
 // this is for Slave   here Q is Slave output 
  always @(negedge clk or rst )
 begin 
 if(rst) begin Q = 0; Qbar = 1; end 
 else
 begin
  if(q==0 && qbar == 0) begin  Q <= Q; Qbar <= Qbar; end 
  else if(q == 0 && qbar == 1) begin  Q<= 0; Qbar <= 1;end
  else if(q == 1 && qbar == 0) begin  Q<= 1; Qbar <= 0;end
  else begin Q <= 1'bx; Qbar = 1'bx; end
  end
 end 
 
 
endmodule
