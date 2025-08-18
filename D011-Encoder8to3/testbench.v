`timescale 1ns / 1ps

module tb( );
 reg [7:0] in;
 reg en;
 wire [2:0] out;
 encoder E1(in,en,out);
 initial begin
 en=0;
 #5 en=1; in=8'b00000001;
 #5 in=8'b00000010;
 #5 in=8'b00000100;
 #5 in=8'b00001000;
 #5 in=8'b00100000;
 #5 in=8'b01000000;
 #5 in=8'b10000000;

 #5 $finish;
 end
endmodule
