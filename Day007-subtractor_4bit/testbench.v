

module subtractor_tb();
reg [3:0] A,B;
reg bin;
wire bout;
wire [3:0] out;

subtractor S(A,B,bin,bout,out);
 initial begin
  $dumpfile("subtractor.vcd");
  $dumpvars(0,subtractor_tb);
  $monitor($time,"A=%b,B=%b,bin=%b,out=%b,bout=%b",A,B,bin,out,bout);
  #5 A=4'b1101; B=4'b0011; bin=0;
  #5 A=4'b1001; B=4'b0111; bin=1;
  #5 A=4'b1001; B=4'b0001; bin=0;

  #5 $finish;
  end

endmodule;
