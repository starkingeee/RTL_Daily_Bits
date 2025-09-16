`timescale 1ns / 1ps


module tb();
reg [15:0] in;
wire [15:0] result_excess3;
logic L(in,result_excess3);
initial begin
 #5 in=16'h5638;
 #5 in=16'h5030;
 #5 in=16'h0638;
 #5 in=16'h5038;
 #5 in=16'hA738;
 #5 in=16'hAB38;
 #5 in=16'h0938;
 #5 $finish;
end 
endmodule
