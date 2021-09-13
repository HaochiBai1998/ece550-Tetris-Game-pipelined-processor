module CSA_8(a,b,cin,cout,sum);
	input[7:0] a,b;
	input cin;
	output cout;
	output[7:0] sum;
	wire[3:0] out1,out2;
	wire w1,w2,w3;
	CSA_4 CSA_4_1(a[3:0],b[3:0],cin,w1,sum[3:0]);
	CSA_4 CSA_4_2(a[7:4],b[7:4],1'b0,w2,out1);
	CSA_4 CSA_4_3(a[7:4],b[7:4],1'b1,w3,out2);
	mux_2_4bit mux_2_4bit_1(w1,out1,out2,sum[7:4]);
	assign cout=w1?w3:w2;

endmodule
