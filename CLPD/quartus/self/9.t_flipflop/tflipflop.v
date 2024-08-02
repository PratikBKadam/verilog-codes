module tflipflop(t,clk,clr,q,qbar);
input t,clk,clr;
output reg q;
output qbar;
assign qbar=~q;
always @(negedge(clk),negedge(clr))
begin
if (!clr) q<=0;
else begin
if (t) q<=q;
else q<=qbar;
end
end
endmodule
