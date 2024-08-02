module Chocolate_Vending_Machine_Mealy(clk,rst,in,o);
	input clk,rst;
	input [1:0]in;
	output reg o;
	reg q;
	reg [1:0]Y,y;
	parameter A=2'b00,B=2'b01,C=2'b11;
	
	always@(in,y)
		begin
			case(y)
				A:begin
						if(in==2'b00)
							begin
								Y<=B;
								q<=0;
							end
						else if(in==2'b01)
							begin
								Y<=C;
								q<=0;
							end
						else
							begin
								Y<=A;
								q<=0;
							end
					end
				B:begin
						if(in==2'b00)
							begin
								Y<=C;
								q<=0;
							end
						else if(in==2'b01)
							begin
								Y<=A;
								q<=1;
							end
						else
							begin
								Y<=B;
								q<=0;
							end
					end
				C:begin
						if(in==2'b00)
							begin
								Y<=A;
								q<=1;
							end
						else if(in==2'b01)
							begin
								Y<=B;
								q<=1;
							end
						else
							begin
								Y<=C;
								q<=0;
							end
					end
				
				default:Y<=2'bxx;
			endcase
		end
	
	always@(posedge clk,negedge rst)
		begin
			if(!rst)
				begin
					y<=A;
					o<=1'b0;
				end
			else
				begin
					y<=Y;
					o<=q;
				end
		end
endmodule