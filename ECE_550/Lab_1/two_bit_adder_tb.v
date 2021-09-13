module two_bit_adder_tb();
	reg[0:1] a,b;
	reg cin;
	wire[0:2] out;
	reg clock;
	integer num_errors;
	two_bit_adder test_two_bit_adder(a,b,cin,out);
	initial begin
		$display($time,"\nsimulation start");
		clock=1'b0;
		num_errors=0;
		
		@(negedge clock);
		a=2'b00;
		b=2'b00;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b000) begin
			$display("a %b b %b Error: expected out=000 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		@(negedge clock);
		a=2'b00;
		b=2'b00;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b100) begin
			$display("a %b b %b Error: expected out=100 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b00;
		b=2'b01;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b010) begin
			$display("a %b b %b Error: expected out=010 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b00;
		b=2'b01;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=010 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b00;
		b=2'b10;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b100) begin
			$display("a %b b %b Error: expected out=100 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b00;
		b=2'b10;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b010) begin
			$display("a %b b %b Error: expected out=010 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b00;
		b=2'b11;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=110 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b00;
		b=2'b11;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=2'b00;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b010) begin
			$display("a %b b %b Error: expected out=010 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=2'b00;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=110 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=1'b01;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=1'b01;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b101) begin
			$display("a %b b %b Error: expected out=101 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=2'b10;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=110 got %b",a,b,out);
			num_errors=num_errors +1;
		end
				
		@(negedge clock);
		a=2'b01;
		b=2'b10;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=2'b11;
		cin=1'b0;
		
		@(negedge clock);
		if (out!=3'b101) begin
			$display("a %b b %b Error: expected out=101 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b01;
		b=2'b11;
		cin=1'b1;
		
		@(negedge clock);
		if (out!=3'b011) begin
			$display("a %b b %b Error: expected out=011 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b10;
		b=2'b00;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b100) begin
			$display("a %b b %b Error: expected out=100 got %b",a,b,out);
			num_errors=num_errors +1;
		end

		@(negedge clock);
		a=2'b10;
		b=2'b00;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b010) begin
			$display("a %b b %b Error: expected out=010 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b10;
		b=2'b01;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=110 got %b",a,b,out);
			num_errors=num_errors +1;
		end

		@(negedge clock);
		a=2'b10;
		b=2'b01;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b10;
		b=2'b10;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b010) begin
			$display("a %b b %b Error: expected out=010 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b10;
		b=2'b10;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=110 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b10;
		b=2'b11;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b10;
		b=2'b11;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b101) begin
			$display("a %b b %b Error: expected out=101 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b00;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b110) begin
			$display("a %b b %b Error: expected out=110 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b00;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b01;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b101) begin
			$display("a %b b %b Error: expected out=101 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b01;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b011) begin
			$display("a %b b %b Error: expected out=011 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b10;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b001) begin
			$display("a %b b %b Error: expected out=001 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b10;
		cin=1'b1;
		@(negedge clock);
		if (out!=3'b101) begin
			$display("a %b b %b Error: expected out=101 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b11;
		cin=1'b0;
		@(negedge clock);
		if (out!=3'b011) begin
			$display("a %b b %b Error: expected out=011 got %b",a,b,out);
			num_errors=num_errors +1;
		end
		
		@(negedge clock);
		a=2'b11;
		b=2'b11;
		cin=1'b01;
		@(negedge clock);
		if (out!=3'b111) begin
			$display("a %b b %b Error: expected out=111 got %b",a,b,out);
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
