module shift_register(clk,in,out,rst,ld);
input [7:0]in;
input clk,rst,ld;
output reg [7:0]out;

always@(posedge clk, negedge rst)
begin
if(!rst)
out <= 0;

else
begin
if (ld)
out <= in;
else
out <= out;
end
end
endmodule

