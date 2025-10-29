
module tb();
  reg [3:0] a,b;
  wire [3:0] sum;
  wire cout;
  
  logic cld(a,b,cout,sum);
   
   initial
    begin
     $dumpfile("logic.vcd");
     $dumpvars(0,tb);
     $monitor($time,"a=%b,b=%b,cout=%b,sum=%b",a,b,cout,sum);

    #5 a = 4'b1111; b = 4'b0000;
    #5 a = 4'b1010; b = 4'b0110;
    #5 a = 4'b1011; b = 4'b0010;
    #5 a = 4'b0111; b = 4'b1010;
    #5 $finish;

    end

endmodule

