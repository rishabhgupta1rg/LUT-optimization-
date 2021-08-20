module mem_mult_apc(x,a,product);
 input [4:0] x;
 input [4:0] a;
 output [9:0] product;
 wire [3:0] x_dash;
 wire [8:0] apc_prod;
 
 address_mapping add_map(x[4],x[3],x[2],x[1],x[0],x_dash);
 lut lu(x_dash,a,apc_prod);
 add_sub add(x[4],apc_prod,a,product);
 
endmodule 