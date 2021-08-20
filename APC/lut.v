module lut(x_dash,a,apc_prod);
 input [3:0] x_dash;
 input [4:0] a;
 output reg [8:0] apc_prod;
 reg [31:0] apc_prod1;
 always @(*)
 begin
  case(x_dash)
		4'b0000:begin
		apc_prod1=16*a;	
		end	
		4'b0001:begin
		apc_prod1=1*a;
		end
		4'b0010:begin
		apc_prod1=2*a;
		end
		4'b0011:begin
		apc_prod1=3*a;
		end
		4'b0100:begin
		apc_prod1=4*a;
		end
		4'b0101:begin
		apc_prod1=5*a;
		end
		4'b0110:begin
		apc_prod1=6*a;
		end
		4'b0111:begin
		apc_prod1=7*a;
		end
		4'b1000:begin
		apc_prod1=8*a;
		end
		4'b1001:begin
		apc_prod1=9*a;
		end
		4'b1010:begin
		apc_prod1=10*a;
		end
		4'b1011:begin
		apc_prod1=11*a;
		end
		4'b1100:begin
		apc_prod1=12*a;
		end
		4'b1101:begin
		apc_prod1=13*a;
		end
		4'b1110:begin
		apc_prod1=14*a;
		end
		4'b1111:begin
		apc_prod1=15*a;
		end
   endcase 	
	apc_prod=apc_prod1[8:0];
 end	
endmodule