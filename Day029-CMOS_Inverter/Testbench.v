`timescale 1ns / 1ps
module cmos_inverter_tb();
 reg x;
 wire f;
 integer k;
 cmos_inverter notgate (x,f);
 initial begin 
  $dumpfile("cmos_inverter.vcd");
  $dumpvars(0,cmos_inverter_tb);
  #5 for (k=0;k<5; k=k+1)
      begin
          x=k;
          $display("x=%b,f=%b",k,f);
        end
 end 
endmodule 
