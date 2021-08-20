module address_mapping_oms(x4,x3,x2,x1,x0,d);
 input x4,x3,x2,x1,x0;
 output reg [3:0] d;
 reg t1,t2,t3,t4,t5,x4_bar;
 reg [3:0] x_dash,x_2dash;
 reg [3:0] x_dash_temp;
integer i;
 
 always @(*)
 begin
 x_dash[0]=x0;
 x4_bar=~x4;
 t1=x4_bar & x0;
 x_dash[1]=t1 ^ x1;
 t2=x0 | x1;
 t3=t2 & x4_bar;
 x_dash[2]=x2 ^ t3;
 t4=x2|t2;
 t5=t4 & x4_bar;
 x_dash[3]=t5^x3;
 //end 
 
 //always @(*)
  //begin 
  //x_dash_temp=x_dash;
  // if ((x_dash[0])==0)
  //	begin 
  //	  while ((x_dash_temp)%2==0 )
  // 		 begin 
  //		 x_dash_temp=x_dash_temp/2;
  //		 x_dash=x_dash_temp[3:0];
  // 		 end 
  //	  x_2dash=x_dash;	 
  //	end 
if(x_dash[0]==0) 
begin    
 for (i=0;i<4;i=i+1)
  begin 
   if (x_dash[0]==0) 
	begin	
     x_dash_temp=x_dash>>1;
	  x_dash=x_dash_temp;
	 end 
  end 
  x_2dash=x_dash;
end

// if ((x_dash[0])!=0)
 else
	begin 
	    x_2dash=x_dash;
	end
  //end

 //always @(*) 
	//begin 
	 d=x_2dash>>1;
	 if ({x4,x3,x2,x1,x0}==0)
	    d=4'b1000;
	end 	 
endmodule 