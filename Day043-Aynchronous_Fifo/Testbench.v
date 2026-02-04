`timescale 1ns / 1ps

module tb( );
 reg [3:0] data_in;
 reg wr_clk,rd_clk,wr_en,rd_en,wr_rst,rd_rst;
 wire [3:0] data_out;
 wire  full,empty;
 logic ansyc_f( data_in, data_out,wr_clk,rd_clk,wr_en,rd_en,wr_rst,rd_rst,full,empty  );
 initial begin
   wr_clk=0;  wr_rst=1; wr_en=0; 
  forever #5 wr_clk = ~wr_clk;
 end 
 initial begin
 rd_rst =1; rd_clk =0; rd_en=0;
  forever #10 rd_clk = ~rd_clk;
 end 
 initial begin
  #12 wr_rst = 0;
  #10 wr_en =1; data_in=4'b0001;
  #10 data_in =4'b0010;
  #10 data_in =4'b0011;
  #10 data_in =4'b0100;
  #10 data_in =4'b0101;
  #10 data_in =4'b0110;
  #10 data_in =4'b0111;
  #10 data_in =4'b1000;
  #10 data_in =4'b1001;
  #10 data_in =4'b1010;
  #10 data_in =4'b1011;
  #10 data_in =4'b1100;
  #10 data_in =4'b1101;
  #10 data_in =4'b1110;
  #10 data_in =4'b1111;
  #10 data_in =4'b0000;
  #10 data_in =4'b1000;
  #10 data_in =4'b1010;
  #10 data_in =4'b1001;
  #10 data_in =4'b1011;
  #10 rd_rst = 0; wr_en=0;
  #10 rd_en=1;
  
  #500 rd_en=0;
  #50 $finish; 
 end
endmodule
