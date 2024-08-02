module testjkff;
reg j,k,preset,clk,clr;
wire q,qbar;
jkflipflop dut(.j(j),.k(k),.preset(preset),.clr(clr),.clk(clk),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
#25;
clr=1;
preset=0;
j=0;
k=0;
#20;
clr=0;
preset=1;
#20;
clr=0;
preset=0;
#20;
j=0;
k=1;
#20;
j=1;
k=0;
#20;
j=1;
k=1;
#20;
j=0;
k=0;
#20;
end
endmodule
