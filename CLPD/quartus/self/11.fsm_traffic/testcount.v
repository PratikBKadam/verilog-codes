module testcount;
reg clk;
wire [3:0] timer;
wire [1:0] current_state;
fsm2 dut(.clk(clk),.timer(timer),.current_state(current_state));
initial 
	begin
		clk=1;
		forever 
			begin
				clk=~clk;
				#1;
				$monitor("time %t timer is %b, signal is %b",$time,timer,current_state);
			end
	end
initial #1000 $stop;

endmodule

