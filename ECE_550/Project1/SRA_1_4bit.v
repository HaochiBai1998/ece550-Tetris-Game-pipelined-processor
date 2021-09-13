module SRA_1_4bit(out,cin,cout,a);//select=0 leftshift, select=1 rightshift
	input[3:0] a;
	input cin;
	output[3:0] out;
	output cout;	
	Shift_1_4bit S(out,cin,cout,a,1'b1);
endmodule
