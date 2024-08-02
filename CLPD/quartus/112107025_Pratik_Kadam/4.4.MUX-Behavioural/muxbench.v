module muxbench;
reg [3:0]X;
reg [1:0]S;
wire y;
muxif dut(.y(y),.S(S),.X(X));
initial begin
#10;
X=4'b0001;
S=2'b00;
#10;
X=4'b0010;
S=2'b01;
#10;
X=4'b0100;
S=2'b10;
#10;
X=4'b1000;
S=2'b11;
#10;
X=4'b0101;
S=2'b01;
#10;
X=4'b1010;
S=2'b10;
#10;
end
endmodule
