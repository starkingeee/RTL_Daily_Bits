// logic for half adder
module half_adder (a,b,sum,cout);
 input a,b;
 output wire sum,cout;
 assign sum=a^b;
 assign cout= a*b;
endmodule

// this is testbench for half adder
 module tb();
reg a,b;
wire sum,cout;
half_adder adder(a,b,sum,cout);
initial begin 
 #2 a=0; b=0;
 #2 a=0; b=1;
 #2 a=1; b=0;
 #2 a=1; b=1;
 #2 $stop;
end
endmodule 
