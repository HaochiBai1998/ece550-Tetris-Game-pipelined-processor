module FSM_counter(clock,Light);
	input clock;
	output Light;
	
	parameter[2:0] S0=3'b000;
	parameter[2:0] S1=3'b001;
	parameter[2:0] S2=3'b010;
	parameter[2:0] S3=3'b011;
	parameter[2:0] S4=3'b100;
	parameter light_ON=1'b1;
	parameter light_OFF=1'b0;
	
	reg[2:0] state_C;
	reg[2:0] state_N;
	reg out;
	
	initial begin 
		state_C=S0;
	end
	
	always @(posedge clock) begin
		if (state_C==S0)	begin
			state_N=S1;
			out<=light_OFF;
		end
		else if (state_C==S1) begin
			state_N=S2;
			out<=light_OFF;
		end
		else if (state_C==S2) begin
			state_N=S3;
			out<=light_OFF;
		end
		else if (state_C==S3) begin
			state_N=S4;
			out<=light_OFF;
		end
		else if (state_C==S4) begin
			state_N=S0;
			out<=light_ON;
		end
	end 
	
	assign Light = out;
endmodule
	