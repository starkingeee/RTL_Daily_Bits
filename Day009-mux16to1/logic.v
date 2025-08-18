// mux 16to1 using 4to1 mux via instantiation method
module mux(inp,sel,out);
  input [15:0] inp;
  input [3:0] sel;
  output out;
  wire [3:0] t;
  mux4to1 M1(inp[3:0],sel[1:0],t[0]); // call mux4to1
  mux4to1 M2(inp[7:4],sel[1:0],t[1]); // call mux4to1
  mux4to1 M3(inp[11:8],sel[1:0],t[2]); // call mux4to1
  mux4to1 M4(inp[15:12],sel[1:0],t[3]); // call mux4to1
  mux4to1 M5(t[3:0],sel[3:2],out);  // call mux4to1  and here input is befor 4 mux output  

endmodule 

module mux4to1(inp,sel,out);  
 input [3:0]inp;
 input [1:0] sel;
 output wire out;
    
  assign out = inp[sel];
endmodule
