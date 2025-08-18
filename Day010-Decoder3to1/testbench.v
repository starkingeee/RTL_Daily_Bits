`timescale 1ns / 1ps

module tb( );
 reg [2:0] in;
 reg en;
 wire [7:0] out;
 decoder d1(in,en,out);
 initial begin
 en=0;
 #5 en=1; in=3'b000;
 #5 in=3'b001;
 #5 in=3'b010;
 #5 in=3'b011;
 #5 in=3'b101;
 #5 in=3'b110;
 #5 $finish;
 end
endmodule
