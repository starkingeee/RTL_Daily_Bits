`timescale 1ns / 1ps
module tb( );
 reg serial_in,clk;
 wire serial_out;
 
 logic SISO(serial_in, serial_out,clk);
  initial begin 
   clk = 0;
   forever #5 clk = ~clk;
  end 
  
  initial begin 
   #13 serial_in = 1'b1;
   #10 serial_in = 1'b0;
   #10 serial_in = 1'b1;
   #10 serial_in = 1'b1;
   #10 serial_in = 1'b0;
   #10 serial_in = 1'b0;
   #10 serial_in = 1'b1;
   #10 serial_in = 1'b1;
   #100 $finish;
   
  end 
 
endmodule
