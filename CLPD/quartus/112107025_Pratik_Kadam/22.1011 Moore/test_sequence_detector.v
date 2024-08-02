module test_sequence_detector;
	reg clk,rst,in;
	wire q;
	
	Sequence_Detector dut(.clk(clk),.rst(rst),.in(in),.q(q));
	
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
	#2;
	rst=1;
	repeat(20)
		begin
			in=$random;
			#20;
		end
	$stop;
	end
	
endmodule
		