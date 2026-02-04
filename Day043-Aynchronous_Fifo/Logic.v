`timescale 1ns / 1ps

module logic( data_in, data_out,wr_clk,rd_clk,wr_en,rd_en,wr_rst,rd_rst,full,empty  );
 parameter width_data = 4, length_data = 16;
 input [width_data-1 : 0] data_in;
 input wr_clk,rd_clk,wr_en,rd_en,wr_rst,rd_rst;
 output reg [width_data-1 :0] data_out;
 output full,empty;
 reg [width_data :0] wr_ptr,rd_ptr;
 
 wire [width_data:0] wr_gray,rd_gray;  // wb = wr_btog,wg= wr_gtob, rb=rd_btog,rg=rd_gtob 
 reg [width_data:0] wflops,rflops;  // wflops = wr_flop1,rflops = rd_flop1
 reg [width_data :0] wr_gray_synch1,wr_gray_synch2,rd_gray_synch1,rd_gray_synch2;


 
 reg [width_data-1 :0] mem [0: length_data-1];
 
 always @(posedge wr_clk or posedge wr_rst)
 begin
  if(wr_rst) begin wr_ptr <= 0; wflops <= 0; rd_gray_synch1 <=0;rd_gray_synch2<=0; end
       
  else 
  begin
  
   rd_gray_synch1 <= rd_gray;
   rd_gray_synch2 <= rd_gray_synch1;
   if(wr_en && !full) begin mem[wr_ptr]=data_in;
                             wr_ptr<= wr_ptr+1;
                       end 
  end 
 end 
 
 always @(posedge rd_clk or posedge rd_rst)
 begin
  if(rd_rst) begin rd_ptr <=0; rflops <=0; wr_gray_synch1<=0;wr_gray_synch2<=0; end 
  else 
  begin
  // rflops <= rd_gray;
   wr_gray_synch1<= wr_gray;
   wr_gray_synch2 <= wr_gray_synch1;
   if(rd_en && !empty) begin  data_out <= mem[rd_ptr];
                              rd_ptr <= rd_ptr+1;
                       end 
  end 
 end 
 
 

 // binary to gray code converter
  
  
   assign wr_gray = wr_ptr  ^ (wr_ptr >>1) ;
   assign rd_gray = rd_ptr  ^ (rd_ptr >>1);
 
  assign empty = (rd_gray == wr_gray_synch2);
//  assign full =  {(~wr_gray_synch2[4:3]),wr_gray_synch2[2:0]} == rd_gray_synch2;
 assign full =(wr_gray == {~rd_gray_synch2[width_data:width_data-1],rd_gray_synch2[width_data-2:0]});
endmodule





