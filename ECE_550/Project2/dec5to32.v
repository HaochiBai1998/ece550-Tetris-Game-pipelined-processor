module dec5to32(out,in);
	input[4:0] in;
	output[31:0] out;
	wire[3:0] w1;
	wire[7:0] w2;
	dec2to4 d1(w1,in[4:3]);
	dec3to8 d2(w2,in[2:0]);
	
	genvar i,j;
	generate 
		for (i=0;i<4;i=i+1)	begin: dec2to4
			for (j=0;j<8;j=j+1) begin: dec3to8
				and a_n(out[j+8*i],w2[j],w1[i]);
			end
		end
	endgenerate
	
endmodule
	
			
	
	