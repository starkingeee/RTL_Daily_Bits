`timescale 1ns / 1ps

module tb();
 reg [3:0] a,b;
 wire [3:0] sum;
 wire cout;
 adder_4bit add(sum,cout,a,b);
 initial begin
  #10  a=4'b1001; b=4'b1100;
  #10  a=4'b1100; b=4'b0001;
  #10  a=4'b1110; b=4'b0101;
  #10  a=4'b1100; b=4'b1101;
  #10  a=4'b1001; b=4'b1001;

  #20 $finish;
  end
  
endmodule
