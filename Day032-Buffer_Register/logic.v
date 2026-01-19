`timescale 1ns / 1ps

//  Buffer Register 
module logic(data_in,data_out,enable,clk );
   input [3:0] data_in;
   input clk,enable;
   output reg [3:0] data_out;
   
   always @(posedge clk)
   begin
    if(enable)
     data_out <= data_in;
   end 
endmodule
