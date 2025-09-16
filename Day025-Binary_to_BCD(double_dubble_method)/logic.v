`timescale 1ns / 1ps
// this is for 16 bit binary number 
// double dubble method to convert binary to BCD
module logic( in,result_BCD );
 input [15:0] in;
 output reg [19:0] result_BCD;
 reg [35:0] out;         // takin enough space for BCD + input 16 bit 
 integer i;
 always @(*)
  begin 
  out=36'h00000000;
  out[15:0]= in;
   for(i=0;i<16;i=i+1)     // shift binary bit in BCD place 
    begin 
      if(out[19:16] >= 4'b0101) out[19:16] = out[19:16] + 4'b0011;   // if ones(4 bit ) is greter than or equal to 5 then add 3
      if(out[23:20] >= 4'b0101) out[23:20] = out[23:20] + 4'b0011;    // if tens(4 bit ) is greter than or equal to 5 then add 3
      if(out[27:24] >= 4'b0101) out[27:24]= out[27:24] + 4'b0011;     // if  hundred(4 bit ) is greter than or equal to 5 then add 3
      if(out[31:28] >= 4'b0101)out[31:28] = out[31:28] + 4'b0011;     // if thousands(4 bit ) is greter than or equal to 5 then add 3
      if(out[35:32] >= 4'b0101) out[35:32] = out[35:32] + 4'b0011;    // if  tenthousands(4 bit ) is greter than or equal to 5 then add 3
      out = (out << 1); 
    end 
    result_BCD = out[35:16];
  end 
endmodule
