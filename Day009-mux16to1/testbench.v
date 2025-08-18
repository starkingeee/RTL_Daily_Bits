
module tb();
 reg [15:0] inp;
 reg [3:0] sel;
 wire out;

 mux m1(inp,sel,out);

 initial begin
  #5 inp=16'ha101; sel=4'b0000;
  #5 sel=4'b0010;
  #5 sel=4'b0011;
  #5 sel=4'b0100;
  #5 sel=4'b0101;
  #5 sel=4'b0110;
  #5 sel=4'b1000;
    #5 sel=4'b1111;
  #5 $finish;
 end

endmodule 
