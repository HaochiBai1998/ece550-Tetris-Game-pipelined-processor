module Wallace_tree_multiplier_5_tb();
	reg[9:0] x,y,clock;
	wire[9:0] out;
	integer i;
	integer j;
	integer num_errors;
	Wallace_tree_multiplier_5 Wallace_tree_multiplier_5_1(x,y,out);
	integer a;
		initial begin
		$display($time,"simulation start");
		clock=1'b0;
		num_errors=0;
		for(i=0;i<31;i=i+1)
		begin
			assign x=i;
			for (j=0;j<31;j=j+1)
			begin
				assign y=j;
				@(negedge clock);
				if (out!=(x*y))
				begin
					num_errors=num_errors+1;
					$display("error occur when x=%d, y=%d, expected out=%d, get out=%d\n",x,y,x*y,out);
				end
			end
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