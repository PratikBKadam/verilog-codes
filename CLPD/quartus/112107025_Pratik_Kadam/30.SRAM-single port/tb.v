module tb;
reg [7:0] din;
reg wre,clk,ce;
reg [4:0] addr;
wire [7:0]out;
sram dut(.din(din),.wre(wre),.clk(clk),.ce(ce),.addr(addr),.out(out));
initial 
begin
clk=0;
forever #5 clk=~clk;
end
initial 
begin
ce=1'b0;
din=8'b00000000;
addr=5'b00000;
wre=1'b0;
#10;
ce=1'b1;
wre=1'b1;
din=8'b10101011;
#10;
wre=1'b0;
addr=5'b10010;
#10;
din=8'b11111111;
#20;
wre=1'b1;
#10;
wre=1'b0;
end
endmodule
