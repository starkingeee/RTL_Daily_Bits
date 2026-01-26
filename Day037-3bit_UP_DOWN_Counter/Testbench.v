`timescale 1ns / 1ps

module tb( );
 reg clk,rst,M;
 wire [2:0] Q;
 
 logic up_down_counter (clk,rst,M,Q );
  initial begin 
   clk=0; rst=1;
   forever #5 clk = ~clk;
   
  end 
   initial begin
    #12 rst = 0; M = 1;   //  M=1 up counter  when M=0 down counter 
    
    #100 M=0;
    #250 $finish;
   end 
endmodule
