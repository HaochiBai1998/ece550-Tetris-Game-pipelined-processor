module f_state_out(in,state_C,state_N,out);
	input in;
	input[2:0] state_C;
	wire[2:0] S1,S2,S3,S4;
	wire[4:0] out1,out2,out3,out4;
	output[2:0] state_N;
	output[4:0] out;
	integer o,s;
	
	assign S1=3'b001;
	assign out1=5'b00110;
	assign S2=3'b010;
	assign out2=5'b01001;
	assign S3=3'b101;
	assign out3=5'b10000;
	assign S4=3'b110;
	assign out4=5'b10000;
	
	always @* begin
		if (state_C==S1 && in==1) begin 
			s=S3;
			o=out3;
		end
		else if (state_C==S1 && in==0) begin
			s=S2;
			o=out2;
		end
		else if (state_C==S2 && in==0) begin 
			s=S1;
			o=out1;
		end
		else if (state_C==S2 && in==1) begin 
			 s=S4;
			 o=out4;
		end
		else if (state_C==S3) begin 
			 s=S2;
			 o=out2;
		end
		else if (state_C==S4) begin
			 s=S1; 
			 o=out1;
		end
	end
	assign state_N=s;
	assign out=o;
endmodule 

