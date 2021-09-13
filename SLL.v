module SLL(out,a,shiftamt);
	input[31:0] a;
	input[4:0] shiftamt;
	wire[31:0] w1,w2,w3,w4;
	output[31:0] out;
	genvar i;
	//shift 1
	assign w1[0]=shiftamt[0]?1'b0:a[0];
	
	generate
		for (i=1;i<32;i=i+1)
		begin: bit_1shift
			assign w1[i]=shiftamt[0]?a[i-1]:a[i];
		end
	endgenerate
	//shift 2
	assign w2[0]=shiftamt[1]?1'b0:w1[0];
	assign w2[1]=shiftamt[1]?1'b0:w1[1];

	generate
	for (i=2;i<32;i=i+1)
		begin: bit_2shift
			assign w2[i]=shiftamt[1]?w1[i-2]:w1[i];
		end
	endgenerate
	
	//shift 4	
	assign w3[0]=shiftamt[2]?1'b0:w2[0];
	assign w3[1]=shiftamt[2]?1'b0:w2[1];
	assign w3[2]=shiftamt[2]?1'b0:w2[2];
	assign w3[3]=shiftamt[2]?1'b0:w2[3];

	generate
	for (i=4;i<32;i=i+1)
		begin: bit_4shift
			assign w3[i]=shiftamt[2]?w2[i-4]:w2[i];
		end
	endgenerate
	
	//shift 8
	generate
	for (i=0;i<8;i=i+1)
		begin: bit_8shift_0_8
			assign w4[i]=shiftamt[3]?1'b0:w3[i];
		end
	endgenerate
	
	generate
	for (i=8;i<32;i=i+1)
		begin: bit_8shift_9_32
			assign w4[i]=shiftamt[3]?w3[i-8]:w3[i];
		end
	endgenerate
	
	//shift 16
	generate
	for (i=0;i<16;i=i+1)
		begin: bit_8shift_0_16
			assign out[i]=shiftamt[4]?1'b0:w4[i];
		end
	endgenerate
	
	generate
	for (i=16;i<32;i=i+1)
		begin: bit_8shift_16_32
			assign out[i]=shiftamt[4]?w4[i-16]:w4[i];
		end
	endgenerate
	
	
endmodule

/*module SLL(out,a,shiftamt);
	input[31:0] a;
	input[4:0] shiftamt;
	output[31:0] out;
	wire[31:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	wire[15:0] cout_16;
	wire[7:0]cout_8;
	wire[3:0]cout_4;
	wire[1:0]cout_2;
	wire cout_1;
	SLL_16_32bit S1(w1,16'b0,cout_16,a);
	assign w2=shiftamt[4]?w1:a;
	SLL_8_32bit S2(w3,8'b0,cout_8,w2);
	assign w4=shiftamt[3]?w3:w2;
	SLL_4_32bit S3(w5,4'b0,cout_4,w4);
	assign w6=shiftamt[2]?w5:w4;
	SLL_2_32bit S4(w7,2'b0,cout_2,w6);
	assign w8=shiftamt[1]?w7:w6;
	SLL_1_32bit S5(w9,1'b0,cout_1,w8);
	assign out=shiftamt[0]?w9:w8;
endmodule
*/