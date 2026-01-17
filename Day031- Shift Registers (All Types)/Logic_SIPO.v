`timescale 1ns / 1ps
// SIPO
module logic( serial_in, parallel_out,clk );
  parameter N = 4;
 input serial_in;
 output reg [N-1:0] parallel_out;
 input clk;
 
 always @(posedge clk)
 begin 
   parallel_out <= {parallel_out[N-2:0], serial_in};
 end 

endmodule
