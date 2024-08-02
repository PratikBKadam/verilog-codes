module fulladder(a,b,s,c,c0);
input a,b,c0;
output s,c;
assign s=a^b^c0;
assign c=(a&b)|(c0&b)|(a&c0);
endmodule