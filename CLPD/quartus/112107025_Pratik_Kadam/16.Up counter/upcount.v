module upcount(rst,clk,out);
input rst,clk;
reg[7:0] count;
output [7:0] out;
always@(posedge(clk))
begin
if(!rst) count<=8'b0000000;
else count<=count+1'b1;
end
assign out=count;
endmodule
