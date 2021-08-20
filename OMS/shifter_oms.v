module shifter_oms(lut_product,s1,s0,shift_product);
 input [8:0] lut_product ;
 input s1,s0;
 output reg [8:0] shift_product;
 integer i;
 
 always @(*)
 begin 
  i={s1,s0};
  shift_product=lut_product<<i;
 end 
endmodule  