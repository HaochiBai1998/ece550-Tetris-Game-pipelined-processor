module FSM_tb();
// FSM(clock,Light);

		reg clock;
		wire Light;
		integer num_errors;
		
		FSM F1(clock,Light);
		initial begin 
		  $display("simulation starts\n");
		  clock=1'b0;
		  num_errors=0;
		 end
		always@(posedge Light) begin
				if($time%100!=90)	begin
					$display("expected Light on but not when time:",$time,"\n");
					num_errors=num_errors+1;
				end
		end
		always@(negedge Light) begin
				if($time%100!=10)	begin
					$display("expected Light on but not when time:",$time,"\n");
					num_errors=num_errors+1;
				end
		end	
		

		always 
			#10 clock=~clock;
			
		always begin
			#100;
			if ($time >= 1000)  $finish ;
		end
		always begin 
		#900;
			if (num_errors==0)	begin
				$display("succeeded");
			end else begin
				$display("failed %d",num_errors);
			end
		end
endmodule 