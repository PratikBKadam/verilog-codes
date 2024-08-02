module Sequence_Detector(clk,rst,in,q);
	input clk,rst,in;
	output reg q;
	reg[2:0]Y,y;
	parameter A=3'b000,B=3'b001,C=3'b011,D=3'b010,E=3'b110;
	
	always@(in,y)
			begin
					case(y)
						A:begin
								if(in)
									Y<=B;
								else
									Y<=A;
							end
						B:begin
								if(in)
									Y<=B;
								else
									Y<=C;
							end
						C:begin
								if(in)
									Y<=D;
								else
									Y<=A;
							end
						D:begin
								if(in)
									Y<=E;
								else
									Y<=C;
							end
						E:begin
								if(in)
									Y<=B;
								else
									Y<=A;
							end
						default:Y<=3'bxxx;
					endcase

			end
		
		always@(posedge clk,negedge rst)
			begin
				if(!rst)
					y<=A;
				else
					y<=Y;
			end
		
		always@(y)
			begin
				if(y==E)
					q=1;
				else
					q=0;
			end
	
endmodule
				
	
		