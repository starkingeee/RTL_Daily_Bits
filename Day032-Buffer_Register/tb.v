`timescale 1ns / 1ps

module tb_logic;
    reg [3:0] data_in;
    reg clk;
    reg enable;
    wire [3:0] data_out;

    logic dut (data_in,data_out,enable,clk  );
     initial begin 
      clk=0;
      forever #5 clk = ~clk;
     end 
    
    initial begin
        // Initialize signals
        clk = 0;
        enable = 0;
        data_in = 4'b0000;

        // Apply test cases
        #10;
        data_in = 4'b1010;   

        #10;
        enable = 1;          

        #10;
        data_in = 4'b1100;   

        #10;
        data_in = 4'b0111;   

        #10;
        enable = 0;       

        #10;
        data_in = 4'b0001;   // output should HOLD previous value

        #20;
        $finish;
    end

endmodule

