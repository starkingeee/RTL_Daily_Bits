`timescale 1ns / 1ps
// cmos inverter code 
module cmos_inverter(x,f);
 input x;
 output f;
 supply1 vdd;
 supply0 gnd;
 pmos p1(f,vdd,x);
 nmos n1(f,gnd,x);
endmodule 
