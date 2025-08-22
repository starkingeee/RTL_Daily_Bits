`timescale 1ns / 1ps

module tb( );
reg D,clk,rst;
wire Q,Qbar;
D_flipflop d1(D,Q,Qbar,clk,rst);
initial begin 
 clk=0;
 forever #5 clk = ~clk;
end 
initial begin 
 rst=1;
 #5 rst =0; D=0;
 #10 D=1;
 #10 D=0;
 #10 $finish;
end 
endmodule
