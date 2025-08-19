`timescale 1ns / 1ps
module tb();
 reg [3:0] in; 
 reg en;
 wire [6:0] out;
 display D(in,en,out);
 initial begin
  en=0; 
  #5 en=1; in=4'h0;
  #5 in=4'h5;
  #5 in=4'h7;
  #5 in=4'h9;
  #5 $finish();
 end
endmodule
