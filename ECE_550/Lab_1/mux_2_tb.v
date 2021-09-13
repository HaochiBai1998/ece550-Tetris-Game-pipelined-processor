module mux_2_tb();

	reg[31:0] in0;
	reg[31:0] in1;
	reg select;
	reg clock;
	wire[31:0] out;
	integer num_errors;
	initial begin
		$display($time, "simulation start");
		clock=1'b0;
		num_errors=0;
		
		@(negedge clock);
		select=1'b0;
		@(negedge clock);
		if (out!=in0 && out==in1 ) begin
			$display("Error: Expected in0 got in1");
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=1'b1;
		@(negedge clock);
		if (out!=in1 && out==in0) begin
				$display("Error: Expected in1 got in0");
				num_errors=num_errors+1;
		end
		
		if (num_errors==0) begin
			$display("Simulation succeeded with no errors");
		end else begin 
			$display("Simulation failed with $d errors",num_errors);
		end
	end
	always 
			#10 clock=~clock；
endmodule
