`include "devision_controller.v"
//`include "devision_datapath.v"
module devision_tb();
 reg [4:0] data_in;
 reg start,clk;
 wire done;
 devision_datapath  path (lda,ldb,clrp,incp,selin,lt,gt,eq,clk,data_in);
 devision_controller controll (lda,ldb,clrp,incp,selin,lt,gt,eq,clk,data_in,start,done);
 initial begin 
  clk=1'b0;
  forever #5 clk = ~clk;
 end 

 initial begin 
  data_in = 2;
  #2 start = 1;  
  #10 data_in = 15; // dividend
  #500 $finish; 
 end
 initial begin 
  $dumpfile("devision_tb.vcd");
  $dumpvars(0,devision_tb);
  $monitor("T=%2d,output=%d,%b",$time,path.p,done);
 end 
endmodule 
