module Chocolate_Vending_Machine(clk,rst,in,q);
	input clk,rst;
	input [1:0]in;
	output q;
	reg [2:0]Y,y;
	parameter A=3'b000,B=3'b001,C=3'b011,D=3'b010,E=3'b110;
	
	always@(in,y)
		begin
			case(y)
				A:begin
						if(in==2'b00)
							Y<=B;
						else if(in==2'b01)
							Y<=C;
						else
							Y<=A;
					end
				B:begin
						if(in==2'b00)
							Y<=C;
						else if(in==2'b01)
							Y<=D;
						else
							Y<=B;
					end
				C:begin
						if(in==2'b00)
							Y<=D;
						else if(in==2'b01)
							Y<=E;
						else
							Y<=C;
					end
				D:begin
						if(in==2'b00)
							Y<=B;
						else if(in==2'b01)
							Y<=C;
						else
							Y<=A;
					end
				E:begin
						if(in==2'b00)
							Y<=C;
						else if(in==2'b01)
							Y<=D;
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
	
	assign q=(y==D) | (y==E);
endmodule