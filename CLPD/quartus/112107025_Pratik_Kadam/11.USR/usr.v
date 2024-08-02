module usr(clk,rst,in,sel,y);
	input clk,rst;
	input [3:0] in;
	input [0:1]sel;
	output reg [3:0]y;
	
	always @(posedge clk,negedge rst)
		begin
			if(!rst)
				y<=4'b0000;
			else if(sel==2'b00)	//No Change
				y<=y;				
			else if(sel==2'b01)	//Left Shift
				begin
					y[3]<=y[2];
					y[2]<=y[1];
					y[1]<=y[0];
					y[0]<=1'b0;
				end
			else if(sel==2'b10)	//Right Shift
				begin
					y[0]<=y[1];
					y[1]<=y[2];
					y[2]<=y[3];
					y[3]<=1'b0;
				end
			else if(sel==2'b11)	//Parallel Loading
				y<=in;
		end
endmodule
					
				