`timescale 1ns / 1ps

module detector_101010_tb();
 reg clock,x;
 wire z;
 detector_101010 detector(clock,x,z);
 initial begin
 clock=1'b0;
 forever #5 clock = ~clock;
 end
 initial begin
  $dumpfile("detector_101010.vcd");
  $dumpvars(0,detector_101010_tb);
  $monitor("T=%2d,z=%b",$time,z);

  end
  initial begin
   #2 x=1'b0; 
   #10 x=1'b0;
   #10 x=1'b1; 
   #10 x=1'b0;
   #10 x=1'b1;
   #10 x=1'b0; 
   #10 x=1'b1; 
   #10 x=1'b0;
   #10 x=1'b1;
   #10 x=1'b0;
   #10 x=1'b1;
   #10 x=1'b0;

   #10 $finish;
  end
endmodule
