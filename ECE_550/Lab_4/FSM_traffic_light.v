module FSM_traffic_light(walk,clock,light);
	input clock;
	input walk;
	reg[1:0] state_C;
	reg[1:0] state_N;
	reg in;
	reg[1:0] out;
	output[1:0] light;

	parameter S1=2'b01;
	parameter out1=2'b01;
	parameter S2=2'b00;
	parameter out2=2'b10;
	parameter S3=2'b11;
	parameter out3=2'b00;
	parameter S4=2'b10;
	parameter out4=2'b00;
	
	initial begin 
		state_C= S2;
	end
	
	always @(posedge clock or negedge walk) begin
		if (!walk)begin
			in<=1;
		end
		
		else begin
			if (state_C==S1 && in==1) begin 
				state_N=S3;
				out<=out3;
			end
			else if (state_C==S1 && in==0) begin
				state_N=S2;
				out<=out2;
			end
			else if (state_C==S2 && in==0) begin 
				state_N=S1;
				out<=out1;
				end
			else if (state_C==S2 && in==1) begin 
				state_N=S4;
				out<=out4;
			end
			else if (state_C==S3) begin 
				state_N=S2;
				out<=out2;
			end
			else if (state_C==S4) begin
				state_N=S1; 
				out<=out1;
			end
			state_C=state_N;
			in<=0;
		end
	end
	assign light= out;
endmodule 

