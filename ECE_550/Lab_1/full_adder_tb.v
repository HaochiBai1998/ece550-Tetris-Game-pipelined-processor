module full_adder_tb();
	reg a,b,cin,clock;
	wire cout,sum;
	integer num_errors;
	initial begin
		$display($time,"\nsimulation start");
		clock=1'b0;
		num_errors=0;
		
		@(negedge clock);
		a=1'b0;
		b=1'b0;
		cin=1'b0;
		@(negedge clock);
		if (sum!=1'b0) begin
			$display("a %b b %b Error: expected sum=0 got %b",a,b,sum);
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
		if (sum!=1'b1) begin
			$display("a %b b %b Error: expected sum=1 got %b",a,b,sum);
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
		if (sum!=1'b1) begin
			$display("a %b b %b Error: expected sum=1 got %b",a,b,sum);
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
		if (sum!=1'b0) begin
			$display("a %b b %b Error: expected sum=0 got %b",a,b,sum);
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
		if (sum!=1'b1) begin
			$display("a %b b %b Error: expected sum=1 got %b",a,b,sum);
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
		if (sum!=1'b0) begin
			$display("a %b b %b Error: expected sum=0 got %b",a,b,sum);
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
		if (sum!=1'b0) begin
			$display("a %b b %b Error: expected sum=0 got %b",a,b,sum);
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
		if (sum!=1'b1) begin
			$display("a %b b %b Error: expected sum=1 got %b",a,b,sum);
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
