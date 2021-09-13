module SRA(out,a,shiftamt);
	input[31:0] a;
	input[4:0] shiftamt;
	wire[31:0] w1,w2,w3,w4;
	output[31:0] out;
	genvar i;
	//shift 1
	assign w1[31]=a[31];
	
	generate
		for (i=0;i<31;i=i+1)
		begin: bit_1shift
			assign w1[i]=shiftamt[0]?a[i+1]:a[i];
		end
	endgenerate
	//shift 2
	assign w2[31]=shiftamt[1]?w1[31]:w1[31];
	assign w2[30]=shiftamt[1]?w1[31]:w1[30];

	generate
	for (i=0;i<30;i=i+1)
		begin: bit_2shift
			assign w2[i]=shiftamt[1]?w1[i+2]:w1[i];
		end
	endgenerate
	
	//shift 4	
	assign w3[31]=shiftamt[2]?w2[31]:w2[31];
	assign w3[30]=shiftamt[2]?w2[31]:w2[30];
	assign w3[29]=shiftamt[2]?w2[31]:w2[29];
	assign w3[28]=shiftamt[2]?w2[31]:w2[28];

	generate
	for (i=0;i<28;i=i+1)
		begin: bit_4shift_0_27
			assign w3[i]=shiftamt[2]?w2[i+4]:w2[i];
		end
	endgenerate
	
	//shift 8
	generate
	for (i=24;i<32;i=i+1)
		begin: bit_8shift_24_31
			assign w4[i]=shiftamt[3]?w3[31]:w3[i];
		end
	endgenerate
	
	generate
	for (i=0;i<24;i=i+1)
		begin: bit_8shift_0_23
			assign w4[i]=shiftamt[3]?w3[i+8]:w3[i];
		end
	endgenerate
	
	//shift 16
	generate
	for (i=16;i<32;i=i+1)
		begin: bit_16shift_16_31
			assign out[i]=shiftamt[4]?w4[31]:w4[i];
		end
	endgenerate
	
	generate
	for (i=0;i<16;i=i+1)
		begin: bit_16shift_0_15
			assign out[i]=shiftamt[4]?w4[i+16]:w4[i];
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
*//*module SRA(out,a,shiftamt);
	input[31:0] a;
	input[4:0] shiftamt;
	output[31:0] out;
	wire[31:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	wire[15:0] w11;
	wire[7:0] w12;
	wire[3:0] w13;
	wire[1:0] w14;
	wire w15;
	wire[15:0] cout_16;
	wire[7:0]cout_8;
	wire[3:0]cout_4;
	wire[1:0]cout_2;
	wire cout_1;
	assign w11=a[31]?16'b1111111111111111:16'b0;
	assign w12=a[31]?8'b11111111:8'b0;
	assign w13=a[31]?4'b1111:4'b0;
	assign w14=a[31]?2'b11:2'b0;
	assign w15=a[31]?1'b1:1'b0;
	SRA_16_32bit S1(w1,w11,cout_16,a);
	assign w2=shiftamt[4]?w1:a;
	SRA_8_32bit S2(w3,w12,cout_8,w2);
	assign w4=shiftamt[3]?w3:w2;
	SRA_4_32bit S3(w5,w13,cout_4,w4);
	assign w6=shiftamt[2]?w5:w4;
	SRA_2_32bit S4(w7,w14,cout_2,w6);
	assign w8=shiftamt[1]?w7:w6;
	SRA_1_32bit S5(w9,w15,cout_1,w8);
	assign out=shiftamt[0]?w9:w8;
endmodule*/
