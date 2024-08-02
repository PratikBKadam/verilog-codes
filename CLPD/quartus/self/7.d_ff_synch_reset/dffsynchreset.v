module dffsynchreset(d,clk,clr,q,qbar);
input d,clk,clr;
output reg q;
output qbar;
assign qbar=~q;
always @(posedge(clk))
begin if (clr) q<=0;
else q<=d;
end
endmodule
