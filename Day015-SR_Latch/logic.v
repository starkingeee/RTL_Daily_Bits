`timescale 1ns / 1ps
//Sr latch using nand 
module latch_SR_nand(S,R,Q,Qbar);
 input S,R;
 output Q,Qbar;
 nand G1(Q,S,Qbar);
 nand G2(Qbar,Q,R);
endmodule

// SR latch using nor
module latch_SR_nor(S,R,Q1,Q1bar);
  input S,R;
 output Q1,Q1bar;
 nor G3(Q1,R,Q1bar);
 nor G4(Q1bar,S,Q1);

endmodule

