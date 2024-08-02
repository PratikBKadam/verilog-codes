module testsrlatch;
reg s,r;
wire q,qbar;
srlatch dut(.s(s),.r(r),.q(q),.qbar(qbar));
initial begin
#10;
s=0;
r=0;
#10;
s=0;
r=1;
#10;
s=1;
r=0;
#10;
s=1;
r=1;
#100;
end
endmodule
