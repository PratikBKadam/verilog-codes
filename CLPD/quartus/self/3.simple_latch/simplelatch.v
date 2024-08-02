module simplelatch(q,qbar);
output reg q,qbar;
always 
begin
qbar<=~q;
q=~qbar;
end
endmodule 