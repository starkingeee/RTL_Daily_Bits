
`timescale 1ns / 1ps
// 4bit ring counter 
module ring_counter (Q,clk,rst);

 input clk,rst;
 output reg [3:0] Q;

always @(posedge clk or posedge rst) begin
    if (rst)
        Q <= 4'b1000;          
    else
        Q <= {Q[2:0], Q[3]};    // circular shift
end

endmodule
