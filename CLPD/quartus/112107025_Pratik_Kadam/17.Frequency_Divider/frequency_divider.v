module frequency_divider(clk,rst,out);
input clk,rst;
output reg out;
always @(posedge clk or negedge rst)
begin
if(!rst) out=1'b0;
else out=~out;
end
endmodule
