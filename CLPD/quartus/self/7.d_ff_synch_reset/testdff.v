module testdff;
reg d,clk,clr;
wire q,qbar;
dffsynchreset dut(.d(d),.clr(clr),.clk(clk),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
#25;
clr=0;
d=1;
#20;
clr=1;
#20;
clr=0;
#20;
d=0;
#20;
d=1;
#20;
d=0;
#20;
d=1;
#20;
end
endmodule
