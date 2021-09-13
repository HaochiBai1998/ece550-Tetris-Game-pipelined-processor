module RCA_2(a,b,cin,cout,sum);
	input[1:0] a,b;
	input cin;
	output cout;
	output[1:0] sum;
	wire w1;
	full_adder full_adder1(a[0],b[0],cin,w1,sum[0]);
	full_adder full_adder2(a[1],b[1],w1,cout,sum[1]);
endmodule
	
	