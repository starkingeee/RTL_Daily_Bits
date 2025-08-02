module tb( );
 reg [4:0] a,b;
 wire [10:1] out;
 multiplication mult(a,b,out);
 initial begin 
  #2 a=5'b00101; b=5'b00101;
  #2 a=5'b00100; b=5'b00100;
  #2 a=5'b00111; b=5'b00111;
  #2 a=5'b11111; b=5'b00100;
  #2 $stop;
 end

endmodule
