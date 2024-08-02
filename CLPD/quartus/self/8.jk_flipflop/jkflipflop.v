module jkflipflop(j,k,clr,preset,clk,q,qbar);
input j,k,clr,preset,clk;
output reg q;
output qbar;
assign qbar=~q;
always @(posedge(clk))
begin
case({clr,preset})
2'b01:q<=1;
2'b10:q<=0;
2'b00:begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
default:q<=0;
endcase
end
endmodule
