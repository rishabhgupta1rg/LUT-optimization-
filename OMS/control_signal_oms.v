module control_signal_oms(x,d,s0,s1,reset);
 input [4:0] x;
 input [3:0] d;
 output s0,s1,reset;
 wire t0;
 not(x2_bar,x[2]);
 nor n1 (t0,x[1],x2_bar);
 nor n2 (s1,x[0],x[1]);
 nor n3 (s0,x[0],t0);
 and a5 (reset,x[4],d[3]);
endmodule 