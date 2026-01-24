`timescale 1ns / 1ps

module tb();
 reg clk,rst;
 wire [3:0] Q;
 ring_counter Ring(Q,clk,rst);
 initial begin 
  clk=0; rst = 1;
  forever #5 clk=~clk;
 end 
  initial begin
   #12 rst = 0;
   
   #100 $finish;
  end 
 
endmodule
