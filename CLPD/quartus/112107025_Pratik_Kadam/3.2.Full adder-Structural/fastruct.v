module fastruct(a,b,cin,s,c);
input a,b,cin;
output s,c;
wire t1,t2,t3;
xor(s,a,b,cin);
and(t1,a,b);
and(t2,cin,b);
and(t3,a,cin);
or(c,t1,t2,t3);
endmodule
