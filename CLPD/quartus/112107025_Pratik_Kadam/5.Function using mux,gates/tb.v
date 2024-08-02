module tb;
reg A,B,C,D;
wire out;
func dut(.A(A),.B(B),.C(C),.D(D),.out(out));
initial begin
{A,B,C,D}=4'b0000;
#10;
{A,B,C,D}=4'b0001;#10;
{A,B,C,D}=4'b0010;#10;
{A,B,C,D}=4'b0011;#10;
{A,B,C,D}=4'b0100;#10;
{A,B,C,D}=4'b0101;#10;
{A,B,C,D}=4'b0110;#10;
{A,B,C,D}=4'b1011;#10;
{A,B,C,D}=4'b1000;#10;
{A,B,C,D}=4'b1001;#10;
{A,B,C,D}=4'b1010;#10;
{A,B,C,D}=4'b1011;#10;
{A,B,C,D}=4'b1100;#10;
{A,B,C,D}=4'b1101;#10;
{A,B,C,D}=4'b1110;#10;
{A,B,C,D}=4'b1111;
end
endmodule
