module testtff;
reg t,clk,clr;
wire q,qbar;
tflipflop dut(.t(t),.clr(clr),.clk(clk),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
#25;
clr=1;
t=1;
#20;
clr=0;
#20;
clr=1;
#20;
t=0;
#20;
t=1;
#20;
t=0;
#20;
t=1;
#20;
end
endmodule
