`timescale 1ns / 1ps

module tb();
 reg [7:0] in;
 wire [7:0] result;
 GtoB b(in,result);
 initial begin 
 #5 in = 8'h01;
 #5 in = 8'h06;
 #5 in = 8'h16;
 #5 in = 8'h20;
 #5 in = 8'h40;
 #5 in = 8'h68;
 #5 in = 8'h50;
 #5 in = 8'h90;
 #5 $finish;
 end 
 
endmodule
