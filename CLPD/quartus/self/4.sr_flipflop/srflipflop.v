module srflipflop(s,r,clk,q,qbar);
input s,r,clk;
output reg q,qbar;
always @(posedge(clk))
begin
qbar=~q;
q<=~(r|qbar);
qbar<=~(s|q);
end 
endmodule
