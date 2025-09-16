`timescale 1ns / 1ps
module logic(in,result_excess3);
 // for 16 bit BCD input
 parameter n=16;
 input [n-1:0] in;
 output [n-1:0] result_excess3;
 
 assign result_excess3= in+4'b0011;
endmodule
