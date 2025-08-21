`timescale 1ns / 1ps
module tb( );
 reg S,R,clk;
 wire Q,Qbar;
 SR_flipflop S1(S,R,Q,Qbar,clk );
 initial begin 
  clk=0;
  forever #5 clk = ~clk;
 end
 initial begin 
  S=0;R=1;     // initialy we give the 0 1 to set the value 
 #10 S=1;R=0;   
 #10 S=0;R=0;   // this is hold the value 
 #10 S=1;R=1;
 #10 $finish;
 end 
endmodule
