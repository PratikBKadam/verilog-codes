module Sequence_Detector_Mealy(clk,rst,in,out);
	input clk,rst,in;
	output out;
	reg q;
	reg [2:0]Y,y;
	parameter A=3'b000,B=3'b001,C=3'b011,D=3'b010,E=3'b110,F=3'b111;
	
	always@(in,y)
	begin
		case(y)
			A:begin
					if(in)
						Y<=B;
					else
						Y<=A;
					q<=0;
				end
			B:begin
					if(in)
						Y<=B;
					else
						Y<=C;
					q<=0;
				end
			C:begin
					if(in)
						Y<=D;
					else
						Y<=A;
					q<=0;
				end
			D:begin
					if(in)
						Y<=B;
					else
						Y<=E;
					q<=0;
				end
			E:begin
					if(in)
						Y<=F;
					else
						Y<=A;
					q<=0;
				end
			F:begin
					if(in)
						begin
							Y<=A;
							q<=1;
						end
					else
						begin
							Y<=E;
							q<=0;
						end
				end
		endcase
	end
	
	always@(posedge clk)
		begin
			if(!rst)
				y<=A;
			else
				y<=Y;
		end
	assign out=q;
endmodule
		