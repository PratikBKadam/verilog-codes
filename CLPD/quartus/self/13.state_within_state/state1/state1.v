module state1(clk,state_select_in,state_out,in,out1);
input in,clk;
input state_select_in;
output state_out;
output out1;
reg out,state_select_out;
reg [1:0] pres1,nxt1;
assign state_out=state_select_out;
assign out1=out;
always @(*) 
begin
if(!state_select_in)
begin
case(pres1)
2'b00:
begin
if(in)
begin
state_select_out=1'b0;
nxt1<=2'b00;
out<=1'b0;
end
else 
begin
state_select_out=1'b0;
nxt1<=2'b01;
out<=1'b0;
end
end
2'b01:
begin
if(in)
begin
state_select_out=1'b0;
nxt1<=2'b00;
out<=1'b0;
end
else 
begin
state_select_out=1'b0;
nxt1<=2'b11;
out<=1'b0;
end
end
2'b11:
begin
if(in) 
begin
state_select_out=1'b1;
nxt1<=2'b00;
out<=1'b1;
end
else 
begin
state_select_out=1'b0;
nxt1<=2'b01;
out<=1'b1;
end
end
default:
begin
state_select_out=1'b0;
nxt1<=2'b00;
out<=1'b0;
end
endcase
end
else
begin
state_select_out=1'bx;
out<=1'bx;
nxt1<=2'bxx;
end
end
always@(posedge clk or posedge state_select_in)
begin
if(state_select_in) pres1<=2'b00;
else  pres1<=nxt1;
end
endmodule
