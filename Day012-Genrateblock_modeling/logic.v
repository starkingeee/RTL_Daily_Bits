
// 16 bit adder  
//instantiate the one module inside the genrate block and call the 16 times 
module genrate(in1,in2,sum,cout,cin);
 input [15:0] in1,in2;
 input cin;
 output [15:0] sum;
 output cout;
 wire [16:0] w; 
  assign w[0] = cin;      // cin value transfer the wire[0]
  
 genvar i;
 generate
  for(i=0;i<16;i=i+1)
  begin
   adder1_bit add(in1[i],in2[i],w[i],sum[i],w[i+1]) ;
  end 
 endgenerate
  // assign the final carry 
 assign cout = w[16];

endmodule

module adder1_bit(in1,in2,cin,sum,cout);
 input in1,in2,cin;
 output sum,cout;
 assign {cout,sum}=in1+in2+cin;
endmodule
