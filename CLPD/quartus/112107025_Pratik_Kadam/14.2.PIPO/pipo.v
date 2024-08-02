module pipo(clk,rst,S,out);
input [3:0]S;
input rst,clk;
reg [3:0]R;
output [3:0]out;
always@(posedge clk or negedge rst)
begin
if(!rst) R=4'b0000;
else R=S;
end
assign out=R;
endmodule
