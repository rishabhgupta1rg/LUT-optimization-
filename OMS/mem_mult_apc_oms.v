module mem_mult_apc_oms(x,clear,a,mult);
 input [4:0] x;
 input [4:0] a;
 input clear;
 output [9:0] mult;
 wire [3:0] d;
 wire s0,s1,reset;
 wire [8:0] w,lut_product,shift_product; 
 
 address_mapping_oms  addr(x[4],x[3],x[2],x[1],x[0],d);
 control_signal_oms  con(x,d,s0,s1,reset);
 decoder4x9  de(d,clear,w);
 lut_oms  lu(w,a,reset,lut_product);
 shifter_oms  shif1(lut_product,s1,s0,shift_product);
 adder_sub_oms adde(x[4],shift_product,a,mult);
 
endmodule 
 