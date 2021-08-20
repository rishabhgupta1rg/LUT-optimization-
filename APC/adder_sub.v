module add_sub(x4,apc_prod,a,product);
	input [8:0] apc_prod;
	input [4:0] a;
	input x4;
	output reg [9:0] product;
	reg [8:0] temp1;
	reg [31:0] temp;
	
	always @(*)
	begin 
	   temp=16*a;	
		temp1=temp[8:0];
		if (x4==1)
			product=apc_prod+temp1;
		else 
			product=temp1-apc_prod;
	end		
endmodule			