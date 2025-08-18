`timescale 1ns / 1ps


module tb( );
 reg [1:0] in;
 reg sel;
 wire out1,out2,out3,out4;
 mux1 m1(in,sel,out1);
 mux2 m2(in,sel,out2);
 mux3 m3(in,sel,out3);
 mux4 m4(in,sel,out4);
 initial begin
    in=2'b10; sel = 1'b0;
  #2 sel = 1'b1;
  #2 in = 2'b01; sel =1'b0;
  #2 sel =1'b1;
  #2 $finish;
 end
endmodule
