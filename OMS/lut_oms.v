module lut_oms(w,a,reset,lut_product);
 input [8:0] w;
 input [4:0] a;
 input reset;
 output reg [8:0] lut_product;
 reg [31:0] lut_prod;

 always@(w,a,reset)
 begin
 case(w)
 9'b000000001:lut_prod=1*a;
 9'b000000010:lut_prod=3*a;
 9'b000000100:lut_prod=5*a;
 9'b000001000:lut_prod=7*a;
 9'b000010000:lut_prod=9*a;
 9'b000100000:lut_prod=11*a;
 9'b001000000:lut_prod=13*a;
 9'b010000000:lut_prod=15*a;
 9'b100000001:lut_prod=2*a;
 endcase 
 lut_product=lut_prod[8:0];
 if (reset==1)
	lut_product=0;
 end 	
endmodule  