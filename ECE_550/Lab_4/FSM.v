module FSM(clock,clr,LED,Segment_7);
	input clock;
	input clr;
	output LED;
	output[6:0] Segment_7;
	parameter[2:0] S0=3'b000;
	parameter[2:0] S1=3'b001;
	parameter[2:0] S2=3'b010;
	parameter[2:0] S3=3'b011;
	parameter[2:0] S4=3'b100;
	parameter light_ON=1'b1;
	parameter light_OFF=1'b0;
	parameter zero=7'b1000000;
	parameter one=7'b1111001;
	parameter two=7'b0100100;
	parameter three=7'b0110000;
	parameter four=7'b0011001;
	reg[2:0] state_C;
	reg[2:0] state_N;
	reg out;
	reg[6:0]	Seg_7_B;
	
	initial begin 
		state_C<=S0;
	end
	
	always @(posedge clock or posedge clr) begin
		
		if(clr==1'b1)begin
				state_N<=S0;
				out<=light_OFF;
				Seg_7_B<=zero;
		end else begin
		if(clock==1'b1) begin
			if (state_C==S0)	begin
				state_N<=S1;
				out<=light_OFF;
				Seg_7_B<=one;
			end
			else if (state_C==S1) begin
				state_N<=S2;
				out<=light_OFF;
				Seg_7_B<=two;
			end
			else if (state_C==S2) begin
				state_N<=S3;
				out<=light_OFF;
				Seg_7_B<=three;
			end
			else if (state_C==S3) begin
				state_N<=S4;
				out<=light_OFF;
				Seg_7_B<=four;
			end
			else if (state_C==S4) begin
				state_N<=S0;
				out<=light_ON;
				Seg_7_B<=zero;
			end
		end
		end
		state_C=state_N;
	end
	assign LED = out;
	assign Segment_7=Seg_7_B;
endmodule
	