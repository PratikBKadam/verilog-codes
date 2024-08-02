module d_latch(en,rst,in,q,qbar);
input en,rst,in;
output reg q,qbar;
always @(en,rst,in)
begin
qbar=~q;
if(!rst) q=0;
else begin
if(en) q<=in;
else q<=q;
end
end
endmodule
