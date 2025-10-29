`timescale 1ns / 1ps
module detector_101010(clock,x,z);
 input clock,x;
 output reg z;
 parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
 reg [2:0] state;
 always @(posedge clock)
  begin
    case(state)
     s0:begin 
      z=x?0:0;
      state=x?s1:s0;
     end
     s1:begin
      z=x?0:0;
      state=x?s1:s2;
     end
      s2:begin
      z=x?0:0;
      state=x?s3:s0;
     end
      s3:begin
      z=x?0:0;
      state=x?s1:s4;
     end
      s4:begin
      z=x?0:0;
      state=x?s5:s0;
     end
      s5:begin
      z=x?0:1;
      state=x?s1:s4;
     end
     default: state=s0;
     endcase
  end
endmodule

