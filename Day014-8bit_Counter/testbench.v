`timescale 1ns / 1ps

module counter_tb( );
 reg rst,clk,mode;
 wire [7:0] count;
 counter c(mode,count,clk,rst);
 initial begin 
  clk=0;
  forever #5 clk=~clk;
 end
 initial begin 
 rst=1;     // initial give reset =1 so count =0
 #10 rst=0;  // at delay of 10 second we reset the delay 
 #2 mode=1;  // at 12  give mode 1 and start the counting 
 #80 mode=0; // and now stop the counte=ing and decrement 
 #30 mode=1;  // again start the counting
 
 #150 mode=0;
 #5 $finish;
 
 end
endmodule
