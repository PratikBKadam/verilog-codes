module tbsr;
	reg clk,rst;
	reg [3:0]in;
	reg mode;
	wire q;
	
	piso dut(.clk(clk),.rst(rst),.in(in),.mode(mode),.q(q));
	
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
	#10;
	rst=1;
	mode=0;
	in=4'b1010;
	#10;
	mode=1;
	#78;
	mode=0;
	#5;
	in=4'b1100;
	#10;
	mode=1;
	#98;
	$stop;
	end	
endmodule