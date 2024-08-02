module test;
	reg [0:3] in;
	reg [1:0]sel;
	wire y;
	
	muxstruct dut(.in(in),.sel(sel),.y(y));
	
	initial begin
	#10;
	repeat(8)
		begin
			in=$random;
			sel=$random;
			#10;
		end
	end
endmodule
			