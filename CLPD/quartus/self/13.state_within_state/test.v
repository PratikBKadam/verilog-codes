module test(clk,rst,in,out);
input clk,rst,in;
output reg out;
reg state;
wire state_select_in,state_out1,state_out2,out1,out2;
assign state_select_in=state;
always @(*)
begin
if(!rst)
begin
state=1'b0;
out=1'b0;
end
else
begin
if(state)
begin
state=state_out2;
out=out2;
end
else
begin
state=state_out1;
out=out1;
end
end
end
state1 u1(clk,state_select_in,state_out1,in,out1);
state2 u2(clk,state_select_in,state_out2,in,out2);
endmodule

