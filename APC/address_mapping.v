module address_mapping(x4,x3,x2,x1,x0,x_dash);
 input x4,x3,x2,x1,x0;
 output [3:0] x_dash;
 wire t1,t2,t3,t4,t5,x4_bar;
 
 assign x_dash[0]=x0;
 not n1(x4_bar,x4);
 and a1(t1,x4_bar,x0);
 xor xo1(x_dash[1],t1,x1);
 or o1(t2,x0,x1);
 and a2(t3,t2,x4_bar);
 xor xo2(x_dash[2],x2,t3);
 or o2(t4,x2,t2);
 and a3(t5,t4,x4_bar);
 xor xo3(x_dash[3],t5,x3);
endmodule 