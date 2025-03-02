module modthirteen(clk,rst,out);
input clk,rst;
output [3:0] out;
reg [3:0] count;
assign out=count;
always @(posedge(clk),negedge(rst))
begin
	if(!rst) count<=4'b0000;
	else
		begin
		if(count==4'b1100) count<=4'b0000;
		else count<=count+1'b1;
		end
end
endmodule
