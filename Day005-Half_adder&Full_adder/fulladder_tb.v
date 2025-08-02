

module tb();
reg [4:0] a,b;
reg cin;
wire [4:0] sum;
wire cout;
full_adder add (a,b,cin,sum,cout);
initial begin 
 #2 a=5'b11000; b=5'b00000; cin=0;
 #2 a=5'b01011; b=5'b01100; cin=1;
 #2 a=5'b000110; b=5'b00100; cin=1;
 #2 a=5'b10110; b=5'b01010; cin=0;
 #2 a=5'b01100; b=5'b10001; cin=0;
 #2 $stop;
end
endmodule
