`timescale 1ns / 1ps

module tb();
 reg [3:0] M,Q;
 wire [7:0] ans;
 logic L(M,Q,ans );
 initial begin 
  #5 M=4'b1100; Q=4'b1110;    // -4*-2
  #5 M=4'b1100; Q=4'b0010;   // -4*2
  #5 M=4'b1011; Q=4'b0010;  // -5*2
  #5 M=4'b1001; Q=4'b1110;   //  -7*-2
  #5 M=4'b1001; Q=4'b0011;  // -7*3
  #5 M=4'b1001; Q=4'b1100;  //  -7*-4
  #5 M=4'b1100; Q=4'b1011;  // -4 * -5
  #5 M=4'b1100; Q=4'b0011;  //  -4*3  
  #5 $finish;
 end 
 
endmodule
