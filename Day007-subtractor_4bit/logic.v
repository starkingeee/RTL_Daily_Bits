// 4 bit subtractor using logic gate
module subtractor(A,B,Bin,Bout,out);
input [3:0] A,B;
input Bin;
output [3:0] out;
output Bout;
wire t1,t2,t3;

  bit1_subtractor S1(A[0],B[0],Bin,t1,out[0]);
  bit1_subtractor S2(A[1],B[1],t1,t2,out[1]);
  bit1_subtractor S3(A[2],B[2],t2,t3,out[2]);
  bit1_subtractor S4(A[3],B[3],t3,Bout,out[3]);

endmodule

module bit1_subtractor(a,b,bin,bout,out);
input a,b,bin;
output bout,out;
wire out;
wire [4:0] t;
xor G1(t[0],a,b);
xor G2(out,t[0],bin); //this will given subtraction of 1 bit
not G3(t[3],a);
and G4(t[1],t[3],b);
not G5(t[4],t[0]);
and G6(t[2],t[4],bin);
or G7(bout,t[1],t[2]); //this will given b out

endmodule




