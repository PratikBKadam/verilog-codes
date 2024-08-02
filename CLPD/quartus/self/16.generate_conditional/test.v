module state1(rst,clk,state_out,in,out1);
input rst,in,clk;
output reg state_out;
output out1;
reg out;
reg [1:0] pres1,nxt1;
assign out1=out;
always @(*) 
begin
case(pres1)
2'b00:
begin
if(in)
begin
state_out=1'b0;
nxt1<=2'b00;
out<=1'b0;
end
else 
begin
state_out=1'b0;
nxt1<=2'b01;
out<=1'b0;
end
end
2'b01:
begin
if(in)
begin
state_out=1'b0;
nxt1<=2'b00;
out<=1'b0;
end
else 
begin
state_out=1'b0;
nxt1<=2'b11;
out<=1'b0;
end
end
2'b11:
begin
if(in) 
begin
state_out=1'b1;
nxt1<=2'b00;
out<=1'b1;
end
else 
begin
state_out=1'b0;
nxt1<=2'b01;
out<=1'b1;
end
end
default:
begin
state_out=1'b0;
nxt1<=2'b00;
out<=1'b0;
end
endcase
end
always@(posedge clk or negedge rst)
begin
if(!rst) pres1<=2'b00;
else  pres1<=nxt1;
end
endmodule

module state2(rst,clk,state_out,in,out2);
input rst,in,clk;
output reg state_out;
output out2;
reg out;
reg [1:0] pres2,nxt2;
assign out2=out;
always @(*) 
begin
case(pres2)
2'b00:
begin
if(in)
begin
state_out=1'b0;
nxt2<=2'b01;
out<=1'b0;
end
else 
begin
state_out=1'b0;
nxt2<=2'b00;
out<=1'b0;
end
end
2'b01:
begin
if(in)
begin
state_out=1'b0;
nxt2<=2'b11;
out<=1'b0;
end
else 
begin
state_out=1'b0;
nxt2<=2'b00;
out<=1'b0;
end
end
2'b11:
begin
if(in) 
begin
state_out=1'b0;
nxt2<=2'b01;
out<=1'b1;
end
else 
begin
state_out=1'b1;
nxt2<=2'b00;
out<=1'b0;
end
end
default:
begin
state_out=1'b0;
nxt2<=2'b00;
out<=1'b0;
end
endcase
end
always@(posedge clk or negedge rst)
begin
if(!rst) pres2<=2'b00;
else  pres2<=nxt2;
end
endmodule

module test(input rst,clk,in, output out, output state_out);
parameter state=1'b1;
generate 
if(!state)
begin
state1 u1 (rst,clk,state_out,in,out);
end
else 
begin
state2 u2 (rst,clk,state_out,in,out);
end
endgenerate 

endmodule
