`timescale 1ns / 1ps
module logic(M,Q,ans );  // M is multiplicand  and Q is multiplier 
 input [3:0] M,Q;        // here multiplicand is signed bit number always  and multiplier may or may not
 output [7:0] ans;
 reg [8:0] result;       // result is 9 bit 
 reg [3:0] A;            // register A assign 0 initially 
 reg q ;                 // q = Q-
 wire [3:0] m;           
 assign m = (~M)+1;  // 2's complement of M
 integer i;
 always @(*)
  begin 
   A=4'b0000;
   q=1'b0;
   result[8:5] = A; 
   result[4:1] = Q;
   result[0] = q;
   for (i=0;i<4;i=i+1)
    begin 
    if((result[1]==0 && result[0]==0) || (result[1]==1 && result[0]==1)) 
       result = {result[8],result[8:1]} ;
    else if(result[1]== 0 && result[0]==1)  
    begin result[8:5] = result[8:5] + m;
          result = {result[8],result[8:1]} ;
     end 
     else
     begin result[8:5] = result[8:5] - m;
          result = {result[8],result[8:1]} ;
     end 
     
         
    end 
   
   
  end 
  assign ans = (~result[8:1]) +1;
endmodule
