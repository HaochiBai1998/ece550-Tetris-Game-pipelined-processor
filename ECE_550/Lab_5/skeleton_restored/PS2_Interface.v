module PS2_Interface(inclock, resetn, ps2_clock, ps2_data, ps2_key_data, ps2_key_pressed, last_data_received);

	input 			inclock, resetn;
	inout 			ps2_clock, ps2_data;
	output 			ps2_key_pressed;
	output 	[7:0] 	ps2_key_data;
	output 	[7:0] 	last_data_received;

	// Internal Registers
	reg			[7:0]	last_data_received;	
	//reg 			[7:0] my_ps2_key_data;

	always @(posedge inclock)
	begin
		if (resetn == 1'b0)
			last_data_received <= 8'h00;
		else if (ps2_key_pressed == 1'b1) begin
		if(ps2_key_data==8'h15)
				last_data_received<=8'h71;
		else if(ps2_key_data==8'h1D)
				last_data_received<=8'h77;
		else if(ps2_key_data==8'h24)
				last_data_received<=8'h65;
		else if(ps2_key_data==8'h2D)
				last_data_received<=8'h72;
		else
				last_data_received <= ps2_key_data;
		end

	end
	
	
	PS2_Controller PS2 (.CLOCK_50 			(inclock),
						.reset 				(~resetn),
						.PS2_CLK			(ps2_clock),
						.PS2_DAT			(ps2_data),		
						.received_data		(ps2_key_data),
						.received_data_en	(ps2_key_pressed)
						);

endmodule
