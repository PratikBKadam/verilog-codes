module testadder;
reg a1,a2;
wire sum,carry;
halfadder designundertest(
.s(sum),
.c(carry),
.a(a1),
.b(a2)
);
initial begin
#6;
a1=0;
a2=0;
#6;
a1=0;
a2=1;
#6;
a1=1;
a2=0;
#6;
a1=1;
a2=1;
#6;
end
endmodule
