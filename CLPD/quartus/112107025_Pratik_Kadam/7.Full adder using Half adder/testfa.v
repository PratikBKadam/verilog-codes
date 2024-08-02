module testfa;
reg [3:0] A,B;
wire [3:0] S;
wire cout;
reg cin;
fullhalfadder dut(.A(A),.B(B),.cout(cout),.S(S),.cin(cin));
initial begin
A=4'b0000;
B=4'b0000;
cin=1'b0;
#10;
A=4'b0110;
B=4'b1011;
cin=1'b1;
#10;
A=4'b1010;
B=4'b1011;
cin=1'b0;
#10;
end
endmodule