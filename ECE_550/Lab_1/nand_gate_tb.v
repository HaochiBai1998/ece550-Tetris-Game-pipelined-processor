module nand_gate_tb();
	reg in1;
	reg in2;
	reg clock;
	wire out;
	integer num_errors;
	nand_gate test_nand_gate(in1, in2, out);
	initial begin
		$display($time,"simulation start");
		clock=1'b0;
		num_errors=0;
		
		@(negedge clock);
		in1=1'b0;
		in2=1'b0;
		@(negedge clock);
		if (out!=1'b1) begin
			$display("in1 %b in2 %b Error: expected 1 got %b",in1,in2,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		in1=1'b0;
		in2=1'b1;
		@(negedge clock);
		if (out!=1'b1) begin
			$display("in1 %b in2 %b Error: expected 1 got %b",in1,in2,out);
			num_errors=num_errors +1;
		end

		@(negedge clock);
		in1=1'b1;
		in2=1'b0;
		@(negedge clock);
		if (out!=1'b1) begin
			$display("in1 %b in2 %b Error: expected 1 got %b",in1,in2,out);
			num_errors=num_errors +1;
		end

		@(negedge clock);
		in1=1'b1;
		in2=1'b1;
		@(negedge clock);
		if (out!=1'b0) begin
			$display("in1 %b in2 %b Error: expected 1 got %b",in1,in2,out);
			num_errors=num_errors +1;
		end		
			
		if (num_errors==0)	begin
			$display("succeeded");
		end else begin
			$display("failed %d",num_errors);
		end
	end
	
	always
		#10 clock=~clock;
		
endmodule

	

		