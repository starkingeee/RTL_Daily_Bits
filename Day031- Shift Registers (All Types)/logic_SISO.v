`timescale 1ns / 1ps

module logic( serial_in, serial_out,clk );
  parameter N = 4;
 input serial_in;
 output serial_out;
 input clk;
 
 reg [N-1:0] shift_reg;
 
 always @(posedge clk)
 begin 
  shift_reg <= {shift_reg[N-2:0], serial_in};
 end 
 
 assign serial_out = shift_reg[N-1];
endmodule


