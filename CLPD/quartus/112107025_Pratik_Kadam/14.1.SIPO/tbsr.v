module tbsr;
reg S;
reg rst,clk;
wire [3:0]out;
sipo dut(.S(S),.rst(rst),.clk(clk),.out(out));
initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial 
begin
rst=1'b0;
#2;
rst=1;
S=1'b0;
#10;
S=1'b1;
#10;
S=1'b0;
#10;
S=1'b1;
#10;
end
endmodule
