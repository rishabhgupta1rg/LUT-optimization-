module test_mult_apc;
 reg [4:0] x,a; 
 wire [9:0] product;
 
 mem_mult_apc m1(x,a,product);
 
 initial 
 begin
 x=5'b00101;a=5'b00101;
 #10 x=5'b00111;a=5'b00101;
 #10 x=5'b00101;a=5'b00111;
 #10 x=5'b10001;a=5'b00111;
 #5 $finish ;
 end
endmodule 