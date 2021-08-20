module adder_sub_oms(x4,shift_product,a,product);
 input x4;
 input [8:0] shift_product;
 input [4:0] a;
 output reg [9:0] product;
 
 reg [8:0] temp1;
 reg [31:0] temp;
	
	always @(*)
	begin 
	   temp=16*a;	
		temp1=temp[8:0];
		if (x4==1)
			product=shift_product+temp1;
		else 
			product=temp1-shift_product;
	end		
endmodule			