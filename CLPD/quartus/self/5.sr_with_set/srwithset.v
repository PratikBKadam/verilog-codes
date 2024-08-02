module srwithset(s,r,reset,preset,clk,q,qbar);
input s,r,clk,reset,preset;
output reg q,qbar;
always @(posedge(reset) or posedge(preset) or posedge(clk))
begin
if(reset) q<=0;
else
if(preset) q<=1;
else begin
qbar=~q;
q<=~(r|qbar);
qbar<=~(s|q);
end 
end
endmodule
