module multiplication(a,b,out);
 parameter n=5;
 input [n-1:0]a,b;
 output [n*2:1]out;
 integer adder;
 integer i;
 always @(*)
 begin
 adder = 0;
 for (i=0;i<n;i=i+1)
  begin
  if(b[i]) adder = adder+(a<<i);
  end  
 end
 assign  out = adder;
endmodule
