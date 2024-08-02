//Up Down Counter
module Up_Down_Counter(clk,rst,mode,y);
	input clk,rst,mode;
	output reg[3:0]y;
	
	always @(posedge clk,negedge rst)
		begin
			if(!rst)
				y=4'b0000;	
			else if(mode==0)
				begin
					y=y+1'b1;
				end
			else
				begin
					y=y-1'b1;
				end
		end
endmodule