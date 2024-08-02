module srlatch(s,r,q,qbar);
input s,r;
output reg q,qbar;
always @(s,r)
begin
qbar=~q;
q<=~(s|qbar);
qbar<=~(r|q);
end
endmodule
