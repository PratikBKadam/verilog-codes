module Sequence_Detector_Moore(clk,rst,in,q);
	input clk,rst,in;
	output reg q;
	reg[2:0]Y,y;
	parameter A=3'b000,B=3'b001,C=3'b011,D=3'b010,E=3'b110,F=3'b111,G=3'b101;
	
	always@(in,y)
			begin
					case(y)
						A:begin
								if(in)
									Y<=A;
								else
									Y<=B;
							end
						B:begin
								if(in)
									Y<=C;
								else
									Y<=B;
							end
						C:begin
								if(in)
									Y<=D;
								else
									Y<=B;
							end
						D:begin
								if(in)
									Y<=A;
								else
									Y<=E;
							end
						E:begin
								if(in)
									Y<=F;
								else
									Y<=B;
							end
						F:begin
								if(in)
									Y<=D;
								else
									Y<=G;
							end
						G:begin
								if(in)
									Y<=A;
								else
									Y<=B;
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
				if(y==G)
					q=1;
				else
					q=0;
			end
	
endmodule
				
	
		