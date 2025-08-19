`timescale 1ns / 1ps
// 7 segment display 
// output 7 bit a,b,c,d,e,f,g; 
module display(in,en,out);
 input [3:0] in;
 input en;
 output  reg [6:0] out;
 always @(*)
  begin 
  if(en) begin 
   case(in)
   4'h0: out <= 7'b0111111;    // this is for 0  only g will not glow and a,b,c,d,e,f will glow
   4'h1: out <= 7'b0000110;    // this is for 1, b and c will glow and other will off
   4'h2: out <= 7'b1011011;    
   4'h4: out <= 7'b1100110;
   4'h5: out <= 7'b1101101;
   4'h6: out <= 7'b1111101;
   4'h7: out <= 7'b0000111;
   4'h8: out <= 7'b1111111;
   4'h9: out <= 7'b1101111;
     default: out <=7'b1000000;  // in default output showing only das (--) only g will glow other will off
   endcase
  end
    else out <= 7'b1000000;  // if not enable then output will show (--) 
  end 
endmodule
