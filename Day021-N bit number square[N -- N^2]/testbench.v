`timescale 1ns / 1ps


module tb();
 reg [3:0] in;
 wire [7:0] result;
  square s( in,result );
  initial begin 
  #5 in=4'b0101;
  #5 in =4'b0011;
  #5 in =4'b0111;
  #5 in =4'b0001;
  #5 $finish;
  end 
endmodule
