module test_sequence_detector_mealy;
	reg clk,rst,in;
	wire q;
	
	Sequence_Detector_Mealy dut(.clk(clk),.rst(rst),.in(in),.q(q));
	
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
	#12;
	rst=1;
	repeat(20)
		begin
			in=$random;
			#20;
		end
	$stop;
	end
	
endmodule
		