`timescale 1ns / 1ps

module tb( );
 reg J,K,clk,clr;
 wire Q,Qbar;
 
 logic Sr_to_jk (J,K,clk,Q,Qbar,clr);
 initial begin 
   clk=0; clr=1;
   forever #5 clk = ~clk;
   
 end 
 initial begin 
 #12 clr = 0;
 #2  J = 0; K=0; 
 #10  J = 1; K=0; 
 #10  J = 0; K=1; 
 #10  J = 1; K=1;
 #10  J = 1; K=0;
 #10  J = 0; K=1;
  
 
 #30 $finish;
 end 
endmodule
