module testcount;
reg rst,clk;
wire [7:0] out;
upcount dut(.rst(rst),.clk(clk),.out(out));
initial begin
clk=0;
rst=1;
forever
begin
clk=~clk;
#5;
end
end
initial 
begin
#7;
rst=0;
#20;
rst=1;
#500;
$stop;
end
endmodule
