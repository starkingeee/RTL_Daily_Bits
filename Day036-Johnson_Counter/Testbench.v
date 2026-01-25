`timescale 1ns / 1ps


module tb( );
 reg clk,rst;
 wire [3:0] Q;
 logic johnson_counter(clk,rst,Q);
 initial begin
  clk=0; rst=1;
  forever #5 clk = ~clk;
  
 end 
  initial begin
  #12 rst=0;
  
  #250 $finish;
  end 
 
endmodule
