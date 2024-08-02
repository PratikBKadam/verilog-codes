module testreg;
wire so;
reg rst,clk,si;
siso_nb uut(.si(si),.rst(rst),.clk(clk),.so(so));
initial begin
clk=0;
si=0;
forever #10 clk=~clk;
end
initial 
begin
rst=1;
#5;
rst=0;
#20;
rst=1;
#20;
si=1;
#20;
si=0;
#20;
si=1;
#20;
si=0;
#20;
#100;
$stop;
end
endmodule
