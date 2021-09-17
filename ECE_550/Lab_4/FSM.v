module FSM(clock,init_state,out,state);
	input clock;
	input[2:0] init_state;
	wire[2:0] state_C;
	output[4:0] out;
	output[2:0] state;
	
	assign state_C=init_state;
	//3 D-Flip-Flop
	f_state_out f1(clock,state_C,state,out);
endmodule 

