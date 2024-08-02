module Mux2_1(in0,in1,sel,y);
	input in0,in1,sel;
	output reg y;
	
	always @(sel,in0,in1)
	begin
		case(sel)
			1'b0:y=in0;
			1'b1:y=in1;
			default:y=0;
		endcase
	end
endmodule
