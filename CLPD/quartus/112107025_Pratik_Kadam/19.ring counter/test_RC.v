module test_RC;
	reg clk,rst,preset;
	wire [3:0] out;
	
	Ring_Counter dut(.clk(clk),.rst(rst),.preset(preset),.out(out));
	
	initial begin
	clk= 1'b0;
	#10;
	forever begin
	clk=~clk;
	#10;
	end
	end
	
	initial begin
	rst = 0;
	#7;
	rst = 1;
	preset = 0;
	#10;
	preset = 1;
	#500;
	end
endmodule