module testadder;
reg a1,a2,c0;
wire sum,carry;
fulladder designundertest(
.s(sum),
.c(carry),
.a(a1),
.b(a2),
.c0(c0)
);
initial begin
#6;
a1=0;
a2=0;
c0=0;
#6;
a1=0;
a2=0;
c0=1;
#6;
a1=0;
a2=1;
c0=0;
#6;
a1=0;
a2=1;
c0=1;
#6;
a1=1;
a2=0;
c0=0;
#6;
a1=1;
a2=0;
c0=1;
#6;
a1=1;
a2=1;
c0=0;
#6;
a1=1;
a2=1;
c0=1;
#6;
end
endmodule
