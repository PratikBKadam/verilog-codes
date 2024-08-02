module testtask;
reg in1,in2,in3,in4;
wire out;
task2 dut(.a(in1),.b(in2),.c(in3),.d(in4),.y(out));
initial begin
{in1,in2,in3,in4}=4'b0000;
#10;
{in1,in2,in3,in4}=4'b0001;
#10;
{in1,in2,in3,in4}=4'b0010;
#10;
{in1,in2,in3,in4}=4'b0011;
#10;
{in1,in2,in3,in4}=4'b0100;
#10;
{in1,in2,in3,in4}=4'b0101;
#10;
{in1,in2,in3,in4}=4'b0110;
#10;
{in1,in2,in3,in4}=4'b0111;
#10;
{in1,in2,in3,in4}=4'b1000;
#10;
{in1,in2,in3,in4}=4'b1001;
#10;
{in1,in2,in3,in4}=4'b1010;
#10;
{in1,in2,in3,in4}=4'b1011;
#10;
{in1,in2,in3,in4}=4'b1100;
#10;
{in1,in2,in3,in4}=4'b1101;
#10;
{in1,in2,in3,in4}=4'b1110;
#10;
{in1,in2,in3,in4}=4'b1111;
end
endmodule
