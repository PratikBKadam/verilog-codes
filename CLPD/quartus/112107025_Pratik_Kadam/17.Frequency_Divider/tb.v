module tb;
wire out;
reg clk,rst;
frequency_divider utt(.out(out),.clk(clk),.rst(rst));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=0;
#2;
rst=1;
end
endmodule
