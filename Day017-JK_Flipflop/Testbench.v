`timescale 1ns / 1ps
module tb( );
 reg J,K,clk;
 wire Q,Qbar;
 jk_flipflop JK(J,K,Q,Qbar,clk);
 initial begin 
 clk=0;
 forever #5 clk=~clk;
 end
  initial begin 
  J=0; K=0;
  #10 J=0; K=1;
  #10 J=1; K=0;
  #10 J=1; K=1;
  #10 $finish;
  end
endmodule
