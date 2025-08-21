
`timescale 1ns / 1ps

module tb(  );
 reg S,R;
 wire Q,Qbar,Q1,Q1bar;
 latch_SR_nand L1(S,R,Q,Qbar);
 latch_SR_nor L2(S,R,Q1,Q1bar);
 initial begin
     S=0;R=0; 
 #10 S=0;R=1; 
 #10 S=1;R=0; 
 #10 S=1;R=1;  
 #10 $finish;
 end 
 
endmodule
