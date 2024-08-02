module sipo(clk,rst,S,out);
input S;
input rst,clk;
reg [3:0]R;
output [3:0]out;
always@(posedge clk or negedge rst)
begin
if(!rst) R=4'b0000;
else 
begin R[3]<=R[2];
		R[2]<=R[1];
		R[1]<=R[0];
		R[0]<=S;
end
end
assign out=R;
endmodule