module One_bit_adder_NAND_imple_tb();
	reg a,b,cin,clock;
	wire cout,S;
	integer num_errors;
	One_bit_adder_NAND_imple O1(a,b,cin,S,cout);
	initial begin
		$display($time,"simulation start");
		clock=1'b0;
		num_errors=0;
		
		@(negedge clock);
		a=1'b0;
		b=1'b0;
		cin=1'b0;
		@(negedge clock);
		if (S!=1'b0) begin
			$display("a %b b %b Error: expected S=0 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b0) begin
			$display("a %b b %b Error: expected cout=0 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b0;
		b=1'b0;
		cin=1'b1;
		@(negedge clock);
		if (S!=1'b1) begin
			$display("a %b b %b Error: expected S=1 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b0) begin
			$display("a %b b %b Error: expected cout=0 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b0;
		b=1'b1;
		cin=1'b0;
		@(negedge clock);
		if (S!=1'b1) begin
			$display("a %b b %b Error: expected S=1 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b0) begin
			$display("a %b b %b Error: expected cout=0 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b0;
		b=1'b1;
		cin=1'b1;
		@(negedge clock);
		if (S!=1'b0) begin
			$display("a %b b %b Error: expected S=0 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b1) begin
			$display("a %b b %b Error: expected cout=1 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b1;
		b=1'b0;
		cin=1'b0;
		@(negedge clock);
		if (S!=1'b1) begin
			$display("a %b b %b Error: expected S=1 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b0) begin
			$display("a %b b %b Error: expected cout=0 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b1;
		b=1'b0;
		cin=1'b1;
		@(negedge clock);
		if (S!=1'b0) begin
			$display("a %b b %b Error: expected S=0 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b1) begin
			$display("a %b b %b Error: expected cout=1 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b1;
		b=1'b1;
		cin=1'b0;
		@(negedge clock);
		if (S!=1'b0) begin
			$display("a %b b %b Error: expected S=0 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b1) begin
			$display("a %b b %b Error: expected cout=1 got %b",a,b,cout);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=1'b1;
		b=1'b1;
		cin=1'b1;
		@(negedge clock);
		if (S!=1'b1) begin
			$display("a %b b %b Error: expected S=1 got %b",a,b,S);
			num_errors=num_errors +1;
		end
		if (cout!=1'b1) begin
			$display("a %b b %b Error: expected cout=1 got %b",a,b,cout);
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
