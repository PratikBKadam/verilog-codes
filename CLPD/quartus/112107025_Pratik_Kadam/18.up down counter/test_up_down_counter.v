module test_up_down_counter;
	reg clk,rst,mode;
	wire [3:0]y;
	
	Up_Down_Counter dut(.clk(clk),.rst(rst),.mode(mode),.y(y));
	
	initial begin
	clk=1'b0;
	#10;
	forever begin
	clk=~clk;
	#10;
	end 
	end
	
	initial begin
	rst=0;
	#7;
	rst=1;
	repeat(4)
		begin
			mode = $random;
			#200;
		end
	$stop;
	end
endmodule