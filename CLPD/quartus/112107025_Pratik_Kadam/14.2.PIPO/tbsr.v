module tbsr;
reg [3:0]S;
reg rst,clk;
wire [3:0]out;
pipo dut(.S(S),.rst(rst),.clk(clk),.out(out));
initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial 
begin
rst=1'b0;
#2;
rst=1'b1;
S=4'b0000;
#10;
S=4'b0001;
#10;
S=4'b0010;
#10;
S=4'b0011;
#10;
S=4'b0100;
#10;
S=4'b0101;
#10;
S=4'b0110;
#10;
S=4'b0111;
#10;
S=4'b1000;
#10;
S=4'b1001;
#10;
S=4'b1010;
#10;
S=4'b1011;
#10;
S=4'b1100;
#10;
S=4'b1101;
#10;
S=4'b1110;
#10;
S=4'b1111;
#10;
end
endmodule
