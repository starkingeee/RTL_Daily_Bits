`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

primitive udp_adder(sum,a,b,cin);
 input a,b,cin;
 output sum;
 table
   // logic is that more than 2 or  equal 2 zero then sum is 1;
 // a  b cin  sum
    0  0 0   :  1;
    0  0 1   :  1;
    0  1 0   :  1;
    0  1 1   :  0;
    1  0 0   :  1;
    1  0 1   :  0;
    1  1 0   :  0;
    1  1 1   :  0;
 endtable
endprimitive

primitive udp_carry(cout,a,b,cin);
 input a,b,cin;
 output cout;
 table
   // logic is that more than 2 or  equal 2  one  then  carry is 1;
  //a  b      cout
    0  0 0   :  0;
    0  0 1   :  0;
    0  1 0   :  0;
    0  1 1   :  1;
    1  0 0   :  0;
    1  0 1   :  1;
    1  1 0   :  1;
    1  1 1   :  1;
  endtable
endprimitive

module adder_4bit(sum,cout,a,b);
 input [3:0] a,b;
 output [3:0] sum;
 output cout;
 wire [3:0] c;
 reg cin = 0;
 assign cout = c[3];
 udp_adder add0(sum[0],a[0],b[0],cin);
 udp_carry carry0(c[0],a[0],b[0],cin);
 udp_adder add1(sum[1],a[1],b[1],c[0]);
 udp_carry carry1(c[1],a[1],b[1],c[0]);
 udp_adder add2(sum[2],a[2],b[2],c[1]);
 udp_carry carry2(c[2],a[2],b[2],c[1]);
 udp_adder add3(sum[3],a[3],b[3],c[2]);
 udp_carry carry3(c[3],a[3],b[3],c[2]);

endmodule
