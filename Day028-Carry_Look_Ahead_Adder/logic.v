`timescale 1ns / 1ps
// this is for 4 bit 
module logic(a,b,cout,sum);
   input [3:0] a,b;
   output [3:0] sum;
   output cout;
   wire [3:0] p,g;
   wire c1,c2,c3;
   parameter cin=1'b0;

    /* this is pi and gi genrator*/
   assign p[0]=a[0] ^ b[0] , g[0]=a[0] & b[0];
   assign p[1]=a[1] ^ b[1] , g[1]=a[1] & b[1];
   assign p[2]=a[2] ^ b[2] , g[2]=a[2] & b[2];
   assign p[3]=a[3] ^ b[3] , g[3]=a[3] & b[3];

   /* this is for carry genration*/
   assign c1=g[0] | ( p[0] & cin ) ;
   assign c2=g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
   assign c3=g[2] | (p[2]&g[1]) | (p[1] & p[2] & g[0]) | (p[1] & p[2] & p[0] & cin);
   assign cout=g[3] | (p[3] & g[2]) | (p[3]&p[2]&g[1]) | (p[1] & p[2] &p[3] & g[0]) | (p[1] & p[2] & p[0] &p[3] & cin);

   /* sum of the four bit*/
   assign sum[0]=cin ^ p[0];
   assign sum[1]=c1 ^ p[1];
   assign sum[2]=c2 ^ p[2];
   assign sum[3]=c3 ^ p[3];


endmodule
