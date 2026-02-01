`timescale 1ns / 1ps
module logic(data_in,data_out,clk,rd_en,wr_en,rst );
 parameter n=4;
 input [n-1:0] data_in;
 input clk,rd_en,wr_en,rst;
 output reg [n-1:0] data_out;
 reg [3:0] rd_ptr,wr_ptr;
 wire full,empty;
 
 reg  [n-1:0] mem [0:15];
 assign full = ((wr_ptr+1) == rd_ptr);
 assign empty = (wr_ptr == rd_ptr);  
 
 
 always @(posedge clk or posedge rst)
 begin
   if(rst) begin wr_ptr <= 0; rd_ptr <= 0; end 
   else 
   begin
    if(wr_en && !full) begin mem[wr_ptr] <= data_in; 
                             wr_ptr <= wr_ptr + 1; 
                       end 
   if(rd_en && !empty) begin
                                data_out <= mem[rd_ptr];
                                rd_ptr <= rd_ptr+1; 
                            end
    else data_out <= 4'b0;
   end
 end 
endmodule
