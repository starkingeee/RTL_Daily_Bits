// this is logic for full adder 
module full_adder (a,b,cin,sum,cout);
 parameter n=5;
 input [n-1:0] a,b;
 input cin;
 output [n-1:0] sum;
 output cout;
 wire [4:1] c;
 // instentiate the module 
 adder B1 (a[0],b[0],cin,sum[0],c[1]);
 adder B2 (a[1],b[1],c[1],sum[1],c[2]);
 adder B3 (a[2],b[2],c[2],sum[2],c[3]);
 adder B4 (a[3],b[3],c[3],sum[3],c[4]);
 adder B5 (a[4],b[4],c[4],sum[4],cout);
  
endmodule

module adder (a,b,cin,sum,cout);
 input a,b,cin;  
 output wire sum,cout;
 assign sum=(a^b^cin);
 assign cout=(a&b)|((a^b)&cin);
endmodule 

