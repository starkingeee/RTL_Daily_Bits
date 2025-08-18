module gerate_tb();
 reg [15:0] in1,in2;
 reg cin;
 wire [15:0] sum;
 wire cout;
 genrate G1(in1,in2,sum,cout,cin);
 initial begin 
  #5 16'h1221; in2=16'h2213; en=0;
  #5 16'hab12; in2=16'h34ab; en=1;
  #5 16'ha112; in2=16'h340b; en=0;
  #5 $finish;
 end 

endmodule
