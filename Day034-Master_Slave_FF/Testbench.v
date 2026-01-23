`timescale 1ns / 1ps


module tb( );
 reg J,K,clk,rst;
 wire Q,q,Qbar;
 master_slave M(J,K,clk,Q,Qbar,q,rst);
 initial begin
  clk=0; rst=1;
  J=0;K=0;
  forever #5 clk =~clk;
  
 end 
 initial begin 
  #12 rst=0;
  #2 J=1; K=1;
 
 
  #150 $finish;
  
  
 end 
endmodule
