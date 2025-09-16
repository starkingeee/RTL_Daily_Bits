`timescale 1ns / 1ps
// this is for 8 bit
module tb( );
reg [7:0] in;
wire [7:0] result;
Bto2s_converter C(in,result );
initial begin 
 #5 in=8'h58;
 #5 in=8'h08;
 #5 in=8'h59;
 #5 in=8'hA0;
 #5 in=8'hAB;
 #5 in=8'h12;
 #5 in=8'h01;
 #5 $finish;
end 
endmodule
