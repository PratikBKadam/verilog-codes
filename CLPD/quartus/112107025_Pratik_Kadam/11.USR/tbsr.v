module tbsr;
	reg clk,rst;
	reg [3:0]in;
	reg [0:1]sel;
	wire [3:0]y;
	
	usr dut(.clk(clk),.rst(rst),.in(in),.sel(sel),.y(y));
	
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
	in=4'b1011;
	sel=2'b01;
	#40;
	in=4'b1011;
	sel=2'b10;
	#40;
	in=4'b1011;
	sel=2'b11;
	#40;
	in=4'b1011;
	sel=2'b01;
	#40;
	in=4'b1011;
	sel=2'b10;
	#40;
	$stop;
	end
endmodule
	