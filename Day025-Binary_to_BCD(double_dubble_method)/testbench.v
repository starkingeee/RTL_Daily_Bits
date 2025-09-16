`timescale 1ns / 1ps

module tb();
reg [15:0] in;
wire [19:0] result_BCD;
logic L( in,result_BCD );
initial begin
 #5 in=16'h5600;
 #5 in= 16'h1004;
 #5 in= 16'h50030;
 #5 in=16'h7680;
 #5 in=16'h5670;
 #5 in=16'h9603;
 #5 $finish;
end
endmodule
