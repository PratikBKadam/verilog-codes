module piso(clk,rst,in,mode,q);
	input clk,rst;
	input [3:0]in;
	input mode;
	reg [3:0]y;
	output reg q;
	
	always @(posedge clk,negedge rst)
		begin
			if(!rst)
				begin
					y<=4'b0000;
				end
			else if(mode==0)
				begin
					y[3]<=in[3];
					y[2]<=in[2];
					y[1]<=in[1];
					y[0]<=in[0];
				end
			else
				begin
					y[3]<=y[2];
					y[2]<=y[1];
					y[1]<=y[0];
					q<=y[3];
				end
		end
endmodule
					