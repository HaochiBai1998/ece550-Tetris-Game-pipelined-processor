module mux_32_tb();

	reg[5:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,
		in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31;
	reg[4:0] select;

	wire[5:0] out;
	mux_32 test_mux_32(select,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,
					in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,out);
	reg clock;
	integer num_errors;
	initial begin
		$display($time, "simulation start");
		clock=1'b0;
		num_errors=0;
		
		in0=5'b00000;
		in1=5'b00001;
		in2=5'b00010;
		in3=5'b00011;
		in4=5'b00100;
		in5=5'b00101;
		in6=5'b00110;
		in7=5'b00111;
		in8=5'b01000;
		in9=5'b01001;
		in10=5'b01010;
		in11=5'b01011;
		in12=5'b01100;
		in13=5'b01101;
		in14=5'b01110;
		in15=5'b01111;
		in16=5'b10000;
		in17=5'b10001;
		in18=5'b10010;
		in19=5'b10011;
		in20=5'b10100;
		in21=5'b10101;
		in22=5'b10110;
		in23=5'b10111;
		in24=5'b11000;
		in25=5'b11001;
		in26=5'b11010;
		in27=5'b11011;
		in28=5'b11100;
		in29=5'b11101;
		in30=5'b11110;
		in31=5'b11111;
		@(negedge clock);
		select=5'b00000;
		@(negedge clock);
		if (out!=in0) begin
			$display("select in%d Error: Expected select in0 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b00001;
		@(negedge clock);
		if (out!=in16) begin
			$display("select in%d Error: Expected select in16 got in%d",out,out);
			num_errors=num_errors+1;
		end

		@(negedge clock);
		select=5'b00010;
		@(negedge clock);
		if (out!=in8) begin
			$display("select in%d Error: Expected select in8 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b00011;
		@(negedge clock);
		if (out!=in24) begin
			$display("select in%d Error: Expected select in24 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b00100;
		@(negedge clock);
		if (out!=in4) begin
			$display("select in%d Error: Expected select in4 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b00101;
		@(negedge clock);
		if (out!=in20) begin
			$display("select in%d Error: Expected select in20 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b00110;
		@(negedge clock);
		if (out!=in12) begin
			$display("select in%d Error: Expected select in12 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b00111;
		@(negedge clock);
		if (out!=in28) begin
			$display("select in%d Error: Expected select in28 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01000;
		@(negedge clock);
		if (out!=in1) begin
			$display("select in%d Error: Expected select in1 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01001;
		@(negedge clock);
		if (out!=in17) begin
			$display("select in%d Error: Expected select in17 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01010;
		@(negedge clock);
		if (out!=in9) begin
			$display("select in%d Error: Expected select in9 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01011;
		@(negedge clock);
		if (out!=in25) begin
			$display("select in%d Error: Expected select in25 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01100;
		@(negedge clock);
		if (out!=in5) begin
			$display("select in%d Error: Expected select in5 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01101;
		@(negedge clock);
		if (out!=in21) begin
			$display("select in%d Error: Expected select in21 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01110;
		@(negedge clock);
		if (out!=in13) begin
			$display("select in%d Error: Expected select in13 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b01111;
		@(negedge clock);
		if (out!=in29) begin
			$display("select in%d Error: Expected select in29 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10000;
		@(negedge clock);
		if (out!=in2) begin
			$display("select in%d Error: Expected select in2 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10001;
		@(negedge clock);
		if (out!=in18) begin
			$display("select in%d Error: Expected select in18 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10010;
		@(negedge clock);
		if (out!=in10) begin
			$display("select in%d Error: Expected select in10 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10011;
		@(negedge clock);
		if (out!=in26) begin
			$display("select in%d Error: Expected select in26 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10100;
		@(negedge clock);
		if (out!=in6) begin
			$display("select in%d Error: Expected select in6 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10101;
		@(negedge clock);
		if (out!=in22) begin
			$display("select in%d Error: Expected select in22 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10110;
		@(negedge clock);
		if (out!=in14) begin
			$display("select in%d Error: Expected select in14 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b10111;
		@(negedge clock);
		if (out!=in30) begin
			$display("select in%d Error: Expected select in30 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11000;
		@(negedge clock);
		if (out!=in3) begin
			$display("select in%d Error: Expected select in3 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11001;
		@(negedge clock);
		if (out!=in19) begin
			$display("select in%d Error: Expected select in19 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11010;
		@(negedge clock);
		if (out!=in11) begin
			$display("select in%d Error: Expected select in11 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11011;
		@(negedge clock);
		if (out!=in27) begin
			$display("select in%d Error: Expected select in27 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11100;
		@(negedge clock);
		if (out!=in7) begin
			$display("select in%d Error: Expected select in7 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11101;
		@(negedge clock);
		if (out!=in23) begin
			$display("select in%d Error: Expected select in23 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11110;
		@(negedge clock);
		if (out!=in15) begin
			$display("select in%d Error: Expected select in15 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		@(negedge clock);
		select=5'b11111;
		@(negedge clock);
		if (out!=in31) begin
			$display("select in%d Error: Expected select in31 got in%d",out,out);
			num_errors=num_errors+1;
		end
		
		if (num_errors==0) begin
			$display("Simulation succeeded with no errors");
		end else begin 
			$display("Simulation failed with $d errors",num_errors);
		end
	end
	always 
			#10 clock=~clock;
endmodule
