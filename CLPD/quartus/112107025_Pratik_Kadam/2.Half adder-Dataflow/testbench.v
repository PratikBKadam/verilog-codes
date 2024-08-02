module testbench;
reg a1,a2;
wire sum,carry;
halfadder designundertest(
.sum(s),
.carry(c),
.a1(a),
.a2(b),
);
initial
begin
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
