`timescale 1ns / 1ps


module tb(  );
 reg [3:0] data_in;
 reg clk, rst,wr_en,rd_en;
 wire [3:0] data_out;
 
 logic sync_fifo (data_in,data_out,clk,rd_en,wr_en,rst );
 initial begin
  clk=0; rst = 1; wr_en=0; rd_en=0;
  forever #5 clk =~clk;
 end 
 
 initial begin
  #12 rst=0;
  #10 wr_en=1; data_in=4'b0011;
  #10  data_in=4'b1011;
  #10  data_in=4'b0010;
  #10  data_in=4'b1111;
  #10  data_in=4'b0001;
  #10  data_in=4'b1011;
  #10 rd_en=1; data_in=4'b1010;   // rd_enable=1;  simultaneously wr_enable =1 ;
  #10 data_in=4'b0000;
  #10 data_in=4'b0001;
  #10 data_in=4'b0010;
  #10 data_in=4'b0011;
  #10 data_in=4'b0100;
  #10 data_in=4'b0101;
  #10 data_in=4'b0110;
  #10 data_in=4'b0111;
  #10 data_in=4'b1000;
  #110 rd_en=0; wr_en=0;
  
  #50 $finish;
  
  
 end 
endmodule
