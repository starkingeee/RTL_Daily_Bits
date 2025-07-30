`timescale 1ns / 1ps

module test_bench();
 reg a,b;
 wire c1,c2,c3,c4,c5,c6;
 
 logic_gate G(a,b,c1,c2,c3,c4,c5,c6);
 initial
 begin
   #5 a=0; b=0;
   #5 a=0; b=1;
   #5 a=1; b=0;
   #5 a=1; b=1;
   #5 $display("T=%2d,a=%b,b=%b,c1=%b,c2=%b,c3=%b,c4=%b,c5=%b,c6=%b",$time,a,b,c1,c2,c3,c4,c5,c6);
   #5 $stop; 
   
 end
endmodule

