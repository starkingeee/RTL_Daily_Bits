`timescale 1ns / 1ps

// 8 bit up and down counter 
// if mode 1 then up counter else mode 0 then down counter 
module counter(mode,count,clk,rst);
 input mode,clk,rst;
 output reg [7:0] count;
 parameter up=1'b1,down=1'b0;
 always @(posedge clk)
 begin 
 if(rst) count <= 0;
 else
 begin 
  case(mode)
  up:   count <= count+1;   // this is count when mode select 1
  down: count <= count-1;     // this is decrement in count by 1 when mode select 0
  default:count<=0;
  endcase
 end
 end
endmodule
