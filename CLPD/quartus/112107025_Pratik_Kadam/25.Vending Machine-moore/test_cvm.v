module test_cvm;
	reg rst,clk;
	reg [1:0]in;
	wire q;
	
	Chocolate_Vending_Machine dut(.clk(clk),.rst(rst),.in(in),.q(q));
	
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